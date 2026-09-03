Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_reduce?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ompi_coll_base_reduce_intra_redscat_gather:bb.a
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cl
  store i32 %i.ck, ptr %i.cs, align 4, !tbaa !10
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  store i32 %i.cm, ptr %i.ct, align 4, !tbaa !10
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cl
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10 ; 2 uses
  %i.cw = add nsw i32 %i.cv, %i.ck                ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink642 = phi ptr [ %i.bu, %bb.u ], [ %i.bv, %bb.t ]
  %.sink = phi i32 [ %i.cw, %bb.u ], [ %i.cr, %bb.t ]
  %i.cx = phi i32 [ %i.cm, %bb.u ], [ %i.ck, %bb.t ] ; 3 uses
  %i.cy = phi i32 [ %i.cw, %bb.u ], [ %i.cq, %bb.t ] ; 3 uses
  %i.cz = phi i32 [ %i.ck, %bb.u ], [ %i.cm, %bb.t ] ; 2 uses
  %i.da = phi i32 [ %i.cv, %bb.u ], [ %i.cr, %bb.t ]
  %i.db = getelementptr inbounds [4 x i8], ptr %.sink642, i64 %i.cl
  store i32 %.sink, ptr %i.db, align 4, !tbaa !10
  %i.dc = sext i32 %i.da to i64
  %i.dd = mul nsw i64 %i.v, %i.dc
  %i.de = getelementptr inbounds i8, ptr %.0323427, i64 %i.dd ; 2 uses
  %i.df = sext i32 %i.cy to i64
  %i.dg = mul nsw i64 %i.v, %i.df                 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.al, i64 %i.dg ; 3 uses
  %i.di = sext i32 %i.cx to i64                   ; 2 uses
  %i.dj = icmp eq i32 %i.ci, %.val
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.de, i32 noundef %i.cz, ptr noundef %3, ptr noundef nonnull %i.dh, i32 noundef %i.cx, ptr noundef %3) #9
  br label %ompi_coll_base_sendrecv.exit

bb.x:                                             ; preds = %bb.v
  %i.dl = sext i32 %i.cz to i64
  %i.dm = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.de, i64 noundef range(i64 -2147483648, 2147483648) %i.dl, ptr noundef %3, i32 noundef %i.ci, i32 noundef -21, ptr noundef nonnull %i.dh, i64 noundef range(i64 -2147483648, 2147483648) %i.di, ptr noundef %3, i32 noundef %i.ci, i32 noundef -21, ptr noundef %6, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.w, %bb.x
  %.0.i410 = phi i32 [ %i.dk, %bb.w ], [ %i.dm, %bb.x ] ; 2 uses
  %.not386 = icmp eq i32 %.0.i410, 0
  br i1 %.not386, label %bb.y, label %ompi_datatype_copy_content_same_ddt.exit.thread479

bb.y:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.dn = getelementptr inbounds i8, ptr %.0323427, i64 %i.dg
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.dh, ptr noundef %i.dn, i64 noundef %i.di, ptr noundef %3)
  %i.do = add nsw i32 %.0315555, 1                ; 3 uses
  %i.dp = icmp slt i32 %i.do, %.0.i
  br i1 %i.dp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dq = sext i32 %i.do to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.dq
  store i32 %i.cy, ptr %i.dr, align 4, !tbaa !10
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dq
  store i32 %i.cy, ptr %i.ds, align 4, !tbaa !10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.2317.ph = phi i32 [ %.0315555, %bb.y ], [ %i.do, %bb.z ]
  %.2314.ph = phi i32 [ %.0312556, %bb.y ], [ %i.cx, %bb.z ]
  %i.dt = shl i32 %.0310557, 1                    ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.l
  br i1 %i.du, label %.lr.ph, label %.thread443, !llvm.loop !116

.thread443:                                       ; preds = %bb.aa, %bb.s
  %i.dv = icmp sge i32 %5, %i.av                  ; 2 uses
  br i1 %i.dv, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.thread443
  %i.dw = and i32 %5, 1
  %.not387 = icmp eq i32 %i.dw, 0
  br i1 %.not387, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not549, label %.lr.ph561.preheader, label %bb.ad

.lr.ph561.preheader:                              ; preds = %bb.ac
  store i32 0, ptr %i.bu, align 4, !tbaa !10
  br label %.lr.ph561

._crit_edge:                                      ; preds = %.lr.ph561
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !67
  %i.dy = getelementptr [4 x i8], ptr %i.bw, i64 %i.bs
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.eb = sext i32 %i.ea to i64
  %i.ec = tail call i32 %i.dx(ptr noundef %.0323427, i64 noundef %i.eb, ptr noundef %3, i32 noundef 0, i32 noundef -21, ptr noundef %6, ptr noundef null) #9 ; 2 uses
  %.not389 = icmp eq i32 %i.ec, 0
  br i1 %.not389, label %.thread451, label %ompi_datatype_copy_content_same_ddt.exit.thread479

.lr.ph561:                                        ; preds = %.lr.ph561.preheader, %.lr.ph561
  %indvars.iv = phi i64 [ 0, %.lr.ph561.preheader ], [ %indvars.iv.next, %.lr.ph561 ] ; 5 uses
  %.0308560 = phi i32 [ 1, %.lr.ph561.preheader ], [ %i.ej, %.lr.ph561 ]
  %.3559 = phi i32 [ %2, %.lr.ph561.preheader ], [ %i.ed, %.lr.ph561 ] ; 2 uses
  %i.ed = lshr i32 %.3559, 1                      ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !10
  %i.ef = sub nsw i32 %.3559, %i.ed
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !10
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 0, ptr %i.eh, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  store i32 %i.ed, ptr %i.ei, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ej = shl nsw i32 %.0308560, 1                ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %i.l
  br i1 %i.ek, label %.lr.ph561, label %._crit_edge, !llvm.loop !117

bb.ad:                                            ; preds = %bb.ac
  %i.el = icmp eq i32 %.2321, 0
  br i1 %i.el, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.en = getelementptr [4 x i8], ptr %i.bw, i64 %i.bs
  %i.eo = getelementptr i8, ptr %i.en, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !10
  %i.eq = sext i32 %i.ep to i64
  %i.er = tail call i32 %i.em(ptr noundef %.0323427, i64 noundef %i.eq, ptr noundef %3, i32 noundef %5, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread479

bb.af:                                            ; preds = %bb.ab
  %i.es = ashr exact i32 %5, 1
  br label %bb.ah

bb.ag:                                            ; preds = %.thread443
  %i.et = sub nsw i32 %5, %i.au
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ag
  %.0309 = phi i32 [ %i.et, %bb.ag ], [ %i.es, %bb.af ], [ 0, %bb.ad ]
  br i1 %.not385, label %ompi_datatype_copy_content_same_ddt.exit.thread479, label %..thread451_crit_edge

..thread451_crit_edge:                            ; preds = %bb.ah
  %.pre = and i32 %5, 1
  %i.eu = icmp eq i32 %.pre, 0
  %i.ev = or i1 %i.eu, %i.dv
  br label %.thread451

.thread451:                                       ; preds = %..thread451_crit_edge, %._crit_edge
  %.pre-phi571 = phi i1 [ %i.ev, %..thread451_crit_edge ], [ false, %._crit_edge ]
  %.0309458 = phi i32 [ %.0309, %..thread451_crit_edge ], [ 0, %._crit_edge ]
  %.3322457 = phi i32 [ %.2321, %..thread451_crit_edge ], [ 0, %._crit_edge ] ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.thread451
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %bb.al ], [ %i.bs, %.thread451 ]
  %.0307.in = phi i32 [ %.0307, %bb.al ], [ %i.l, %.thread451 ]
  %indvars.iv.next569 = add nsw i64 %indvars.iv568, -1 ; 6 uses
  %.0307 = lshr i32 %.0307.in, 1                  ; 4 uses
  %.not391 = icmp eq i32 %.0307, 0
  br i1 %.not391, label %ompi_datatype_copy_content_same_ddt.exit.thread479, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = xor i32 %.0307, %.3322457               ; 4 uses
  %i.ex = icmp slt i32 %i.ew, %i.au
  %i.ey = shl nsw i32 %i.ew, 1
  %i.ez = add nsw i32 %i.ew, %i.au
  %i.fa = select i1 %i.ex, i32 %i.ey, i32 %i.ez
  %i.fb = icmp ne i32 %.3322457, %.0307
  %or.cond404.reass.reass = or i1 %i.fb, %.pre-phi571
  %.0 = select i1 %or.cond404.reass.reass, i32 %i.fa, i32 %5 ; 2 uses
  %i.fc = xor i32 %i.ew, %.0309458
  %i.fd = trunc nsw i64 %indvars.iv.next569 to i32
  %i.fe = lshr i32 %i.fc, %i.fd
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv.next569
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !10
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul nsw i64 %i.v, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %.0323427, i64 %i.fk
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %indvars.iv.next569
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !10
  %i.fo = sext i32 %i.fn to i64
  %i.fp = tail call i32 %i.fg(ptr noundef %i.fl, i64 noundef %i.fo, ptr noundef %3, i32 noundef %.0, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread479

bb.al:                                            ; preds = %bb.aj
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !67
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %indvars.iv.next569
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !10
  %i.ft = sext i32 %i.fs to i64
  %i.fu = mul nsw i64 %i.v, %i.ft
  %i.fv = getelementptr inbounds i8, ptr %.0323427, i64 %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next569
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !10
  %i.fy = sext i32 %i.fx to i64
  %i.fz = tail call i32 %i.fq(ptr noundef %i.fv, i64 noundef %i.fy, ptr noundef %3, i32 noundef %.0, i32 noundef -21, ptr noundef %6, ptr noundef null) #9 ; 2 uses
  %.not393 = icmp eq i32 %i.fz, 0
  br i1 %.not393, label %bb.ai, label %ompi_datatype_copy_content_same_ddt.exit.thread479, !llvm.loop !118

ompi_datatype_copy_content_same_ddt.exit.thread479: ; preds = %.lr.ph.i, %ompi_coll_base_sendrecv.exit, %bb.ai, %bb.al, %._crit_edge, %bb.ah, %bb.r, %bb.ak, %bb.ae, %bb.m, %bb.o, %bb.l, %bb.n
  %.1325496 = phi ptr [ %.0324426, %bb.m ], [ %.0324426, %ompi_coll_base_sendrecv.exit ], [ %.0324426, %bb.ai ], [ %.0324426, %bb.n ], [ %.0324426, %bb.l ], [ %.0324426, %bb.o ], [ %.0324426, %bb.ah ], [ %.0324426, %bb.ak ], [ %.0324426, %bb.r ], [ %.0324426, %bb.ae ], [ %.0324426, %._crit_edge ], [ %.0324426, %bb.al ], [ %.0324425, %.lr.ph.i ] ; 2 uses
  %.0326494 = phi ptr [ null, %bb.m ], [ %i.bx, %ompi_coll_base_sendrecv.exit ], [ %i.bx, %bb.ai ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.o ], [ %i.bx, %bb.ah ], [ %i.bx, %bb.ak ], [ %i.bx, %bb.r ], [ %i.bx, %bb.ae ], [ %i.bx, %._crit_edge ], [ %i.bx, %bb.al ], [ null, %.lr.ph.i ] ; 2 uses
  %.0327492 = phi ptr [ null, %bb.m ], [ %i.bv, %ompi_coll_base_sendrecv.exit ], [ %i.bv, %bb.ai ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.o ], [ %i.bv, %bb.ah ], [ %i.bv, %bb.ak ], [ %i.bv, %bb.r ], [ %i.bv, %bb.ae ], [ %i.bv, %._crit_edge ], [ %i.bv, %bb.al ], [ null, %.lr.ph.i ] ; 2 uses
  %.0328490 = phi ptr [ null, %bb.m ], [ %i.bw, %ompi_coll_base_sendrecv.exit ], [ %i.bw, %bb.ai ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.o ], [ %i.bw, %bb.ah ], [ %i.bw, %bb.ak ], [ %i.bw, %bb.r ], [ %i.bw, %bb.ae ], [ %i.bw, %._crit_edge ], [ %i.bw, %bb.al ], [ null, %.lr.ph.i ] ; 2 uses
  %.0329488 = phi ptr [ null, %bb.m ], [ %i.bu, %ompi_coll_base_sendrecv.exit ], [ %i.bu, %bb.ai ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.o ], [ %i.bu, %bb.ah ], [ %i.bu, %bb.ak ], [ %i.bu, %bb.r ], [ %i.bu, %bb.ae ], [ %i.bu, %._crit_edge ], [ %i.bu, %bb.al ], [ null, %.lr.ph.i ] ; 2 uses
  %.11486 = phi i32 [ %i.bi, %bb.m ], [ %.0.i410, %ompi_coll_base_sendrecv.exit ], [ 0, %bb.ai ], [ %i.bn, %bb.n ], [ %i.bf, %bb.l ], [ %i.bp, %bb.o ], [ 0, %bb.ah ], [ %i.fp, %bb.ak ], [ -2, %bb.r ], [ %i.er, %bb.ae ], [ %i.ec, %._crit_edge ], [ %i.fz, %bb.al ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.ai) #9
  %.not396 = icmp eq ptr %.1325496, null
  br i1 %.not396, label %bb.an, label %bb.am

bb.am:                                            ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread479
  tail call void @free(ptr noundef nonnull %.1325496) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %ompi_datatype_copy_content_same_ddt.exit.thread479
  %.not397 = icmp eq ptr %.0329488, null
  br i1 %.not397, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @free(ptr noundef nonnull %.0329488) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not398 = icmp eq ptr %.0327492, null
  br i1 %.not398, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %.0327492) #9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.not399 = icmp eq ptr %.0328490, null
  br i1 %.not399, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %.0328490) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not400 = icmp eq ptr %.0326494, null
  br i1 %.not400, label %.thread545, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %.0326494) #9
  br label %.thread545

.thread545:                                       ; preds = %.thread632, %opal_datatype_span.exit, %bb.au, %bb.at, %bb.d, %bb.a
  %.2 = phi i32 [ 13, %bb.a ], [ %i.q, %bb.d ], [ %.11486, %bb.at ], [ %.11486, %bb.au ], [ -2, %opal_datatype_span.exit ], [ -2, %.thread632 ]
  ret i32 %.2
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_coll_base_sendrecv(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4, i64 noundef range(i64 -2147483648, 2147483648) %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %3, %7
  %i.b = icmp eq i32 %7, %9
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nsw i64 %1 to i32
  %i.d = trunc nsw i64 %5 to i32
  %i.e = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %i.d, ptr noundef %6) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef -21, ptr noundef nonnull %4, i64 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef -21, ptr noundef %8, ptr noundef null) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

declare ptr @ompi_datatype_get_single_predefined_type_from_args(ptr noundef) local_unnamed_addr #6

declare i32 @opal_datatype_copy_content_same_ddt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare i32 @ompi_datatype_sndrcv(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ompi_coll_base_sendrecv_actual(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !22}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"p1 _ZTS12opal_class_t", !9, i64 0}
!13 = !{!"opal_object_t", !12, i64 0, !6, i64 8}
!14 = !{!"short", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS12dt_elem_desc", !9, i64 0}
!17 = !{!"dt_type_desc_t", !15, i64 0, !15, i64 8, !16, i64 16}
!18 = !{!"p1 long", !9, i64 0}
!19 = !{!"opal_datatype_t", !13, i64 0, !14, i64 16, !14, i64 18, !6, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !6, i64 72, !6, i64 76, !5, i64 80, !17, i64 144, !17, i64 168, !18, i64 192}
!20 = !{!19, !15, i64 48}
!21 = !{!19, !15, i64 56}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"ompi_op_base_op_3buff_fns_1_0_0_t", !5, i64 0, !5, i64 344}
!24 = !{!"ompi_op_t", !13, i64 0, !5, i64 16, !6, i64 80, !6, i64 84, !6, i64 88, !5, i64 96, !23, i64 784}
!25 = !{!24, !6, i64 84}
!26 = !{!"p1 _ZTS17opal_hash_table_t", !9, i64 0}
!27 = !{!"p1 _ZTS19opal_hash_element_t", !9, i64 0}
!28 = !{!"p1 _ZTS24opal_hash_type_methods_t", !9, i64 0}
!29 = !{!"opal_hash_table_t", !13, i64 0, !27, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !28, i64 64}
!30 = !{!"p1 _ZTS11opal_info_t", !9, i64 0}
!31 = !{!"opal_infosubscriber_t", !13, i64 0, !29, i64 16, !30, i64 88}
!32 = !{!"opal_mutex_t", !13, i64 0, !5, i64 16, !6, i64 56}
!33 = !{!"p1 omnipotent char", !9, i64 0}
!34 = !{!"ompi_comm_extended_cid_t", !15, i64 0, !5, i64 8}
!35 = !{!"ompi_comm_extended_cid_block_t", !34, i64 0, !15, i64 16, !5, i64 24, !5, i64 25}
!36 = !{!"p1 int", !9, i64 0}
!37 = !{!"p1 _ZTS12ompi_group_t", !9, i64 0}
!38 = !{!"p1 _ZTS19ompi_communicator_t", !9, i64 0}
!39 = !{!"p1 _ZTS22mca_topo_base_module_t", !9, i64 0}
!40 = !{!"any p2 pointer", !9, i64 0}
!41 = !{!"p2 _ZTS20ompi_peruse_handle_t", !40, i64 0}
!42 = !{!"p1 _ZTS17ompi_errhandler_t", !9, i64 0}
!43 = !{!"p1 _ZTS14mca_pml_comm_t", !9, i64 0}
!44 = !{!"p1 _ZTS14mca_mtl_comm_t", !9, i64 0}
!45 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !9, i64 0}
!46 = !{!"p1 _ZTS15ompi_instance_t", !9, i64 0}
!47 = !{!"p1 _ZTS13opal_object_t", !9, i64 0}
!48 = !{!"_Bool", !5, i64 0}
!49 = !{!"ompi_communicator_t", !31, i64 0, !32, i64 96, !33, i64 160, !34, i64 168, !35, i64 184, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !36, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !37, i64 264, !37, i64 272, !38, i64 280, !26, i64 288, !39, i64 296, !41, i64 304, !42, i64 312, !6, i64 320, !43, i64 328, !44, i64 336, !45, i64 344, !46, i64 352, !47, i64 360, !6, i64 368, !6, i64 372, !48, i64 376, !48, i64 377, !48, i64 378}
!50 = !{!49, !6, i64 220}
!51 = !{!19, !15, i64 24}
!52 = !{!"branch_weights", i32 2002, i32 2000}
!53 = !{!19, !15, i64 32}
!54 = !{!19, !15, i64 40}
!55 = !{!"mca_pml_base_module_2_1_0_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184}
!56 = !{!55, !9, i64 96}
!57 = !{!"p1 _ZTS20mca_coll_base_comm_t", !9, i64 0}
!58 = !{!"mca_coll_base_module_2_4_0_t", !13, i64 0, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !9, i64 536, !9, i64 544, !9, i64 552, !9, i64 560, !9, i64 568, !9, i64 576, !9, i64 584, !57, i64 592}
!59 = !{!58, !57, i64 592}
!60 = !{!"p2 _ZTS14ompi_request_t", !40, i64 0}
!61 = !{!"p1 _ZTS16ompi_coll_tree_t", !9, i64 0}
!62 = !{!"mca_coll_base_comm_t", !13, i64 0, !60, i64 16, !6, i64 24, !61, i64 32, !6, i64 40, !6, i64 44, !61, i64 48, !6, i64 56, !61, i64 64, !6, i64 72, !61, i64 80, !6, i64 88, !61, i64 96, !6, i64 104, !6, i64 108, !61, i64 112, !6, i64 120, !6, i64 124, !61, i64 128, !6, i64 136, !61, i64 144}
!63 = !{!49, !37, i64 264}
!64 = !{!"p2 _ZTS11ompi_proc_t", !40, i64 0}
!65 = !{!"ompi_group_t", !13, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !64, i64 32, !6, i64 40, !37, i64 48, !5, i64 56, !46, i64 72}
!66 = !{!65, !6, i64 16}
!67 = !{!55, !9, i64 72}
!68 = distinct !{!68, !22}
!69 = !{!"p1 _ZTS15ompi_datatype_t", !9, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"ompi_datatype_t", !19, i64 0, !6, i64 200, !6, i64 204, !26, i64 208, !9, i64 216, !15, i64 224, !15, i64 232, !5, i64 240}
!72 = !{!71, !14, i64 16}
!73 = !{!71, !6, i64 200}
!74 = !{!5, !5, i64 0}
!75 = !{!71, !6, i64 204}
!76 = distinct !{!76, !22, !90}
!77 = distinct !{!77, !22, !91}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{null, null}
!82 = distinct !{null}
!83 = distinct !{null, null}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = !{!33, !33, i64 0}
!87 = !{!55, !9, i64 64}
!88 = !{!"ompi_request_fns_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!89 = !{!88, !9, i64 32}
!90 = !{!"llvm.loop.peeled.count", i32 1}
!91 = !{!"llvm.loop.unswitch.partial.disable"}
!92 = !{!55, !9, i64 88}
!93 = !{!88, !9, i64 48}
!94 = !{!"p1 _ZTS14ompi_request_t", !9, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTS16opal_list_item_t", !9, i64 0}
!97 = !{!"opal_list_item_t", !13, i64 0, !96, i64 16, !96, i64 24, !6, i64 32}
!98 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !9, i64 0}
!99 = !{!"opal_free_list_item_t", !97, i64 0, !98, i64 40, !9, i64 48}
!100 = !{!"ompi_status_public_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !15, i64 16}
!101 = !{!"ompi_request_t", !99, i64 0, !6, i64 56, !100, i64 64, !9, i64 88, !6, i64 96, !48, i64 100, !6, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !5, i64 152}
!102 = !{!101, !6, i64 72}
!103 = !{!101, !9, i64 128}
!104 = !{!101, !9, i64 120}
!105 = !{!62, !61, i64 112}
!106 = !{!62, !6, i64 120}
!107 = !{!62, !6, i64 124}
!108 = !{!62, !61, i64 128}
!109 = !{!62, !6, i64 136}
!110 = !{!62, !61, i64 48}
!111 = !{!62, !6, i64 56}
!112 = !{!62, !61, i64 80}
!113 = !{!62, !6, i64 88}
!114 = !{!62, !61, i64 144}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = !{!49, !6, i64 252}
end_hunk_0
