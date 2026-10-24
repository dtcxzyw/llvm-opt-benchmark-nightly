Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_quantize:bb.a
  store i8 %i.kz, ptr %i.le, align 1, !tbaa !26
  %i.lf = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kx
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !26
  %i.li = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ks
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !26
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ll
  store i8 %i.lh, ptr %i.lm, align 1, !tbaa !26
  %i.ln = trunc i32 %i.kr to i8
  %i.lo = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ks
  store i8 %i.ln, ptr %i.lp, align 1, !tbaa !26
  %i.lq = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.kx
  store i8 %.446.us.us, ptr %i.lr, align 1, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us.us, %bb.ak, %.preheader463.us
  %.3372.us.us = phi i32 [ %i.kr, %.preheader.us.us ], [ %.2371515.us.us, %bb.ak ], [ %.2371515.us.us, %.preheader463.us ] ; 4 uses
  %.not431.us.us = icmp sgt i32 %.3372.us.us, %3
  br i1 %.not431.us.us, label %bb.am, label %.thread457

bb.am:                                            ; preds = %bb.al
  %i.ls = load ptr, ptr %.0366516.us.us, align 8, !tbaa !132 ; 2 uses
  %.not429.us.us = icmp eq ptr %i.ls, null
  br i1 %.not429.us.us, label %.split.us.us.split.thread, label %.preheader463.us, !llvm.loop !116

.split.us.us.split.thread:                        ; preds = %bb.am, %.preheader464.split.us.split
  %.5374.us = phi i32 [ %.1370518.us, %.preheader464.split.us.split ], [ %.3372.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %indvars.iv632
  br i1 %exitcond617.not, label %.thread457, label %.preheader464.split.us.split, !llvm.loop !117

.preheader464.split:                              ; preds = %.preheader464, %.split.thread
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %.split.thread ], [ 0, %.preheader464 ] ; 2 uses
  %.1370518 = phi i32 [ %.5374, %.split.thread ], [ %.0369528, %.preheader464 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv606
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !130 ; 2 uses
  %.not428 = icmp eq ptr %i.lu, null
  br i1 %.not428, label %.split.thread, label %.preheader463

.preheader463:                                    ; preds = %.preheader464.split, %bb.aq
  %.0366516 = phi ptr [ %i.nm, %bb.aq ], [ %i.lu, %.preheader464.split ] ; 3 uses
  %.2371515 = phi i32 [ %.3372, %bb.aq ], [ %.1370518, %.preheader464.split ] ; 6 uses
  %i.lv = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0366516, i64 8
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !133 ; 2 uses
  %i.ly = zext i8 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !26
  %i.mb = zext i8 %i.ma to i32
  %i.mc = icmp sgt i32 %.2371515, %i.mb
  br i1 %i.mc, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.preheader463
  %i.md = getelementptr inbounds nuw i8, ptr %.0366516, i64 9
  %i.me = load i8, ptr %i.md, align 1, !tbaa !134 ; 2 uses
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !26
  %i.mi = zext i8 %i.mh to i32
  %i.mj = icmp samesign ugt i32 %.2371515, %i.mi
  br i1 %i.mj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mk = and i32 %.2371515, 1
  %.not430 = icmp eq i32 %i.mk, 0
  %.446 = select i1 %.not430, i8 %i.me, i8 %i.lx  ; 2 uses
  %i.ml = add nsw i32 %.2371515, -1               ; 3 uses
  %i.mm = zext i8 %.446 to i64                    ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !26
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mp
  %i.mr = zext nneg i32 %i.ml to i64              ; 4 uses
  %i.ms = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mq, ptr noundef nonnull align 1 dereferenceable(3) %i.ms, i64 3, i1 false), !tbaa.struct !126
  %i.mt = load i8, ptr %i.mn, align 1, !tbaa !26
  %i.mu = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mr
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !26
  %i.mx = zext i8 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mx
  store i8 %i.mt, ptr %i.my, align 1, !tbaa !26
  %i.mz = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !26
  %i.nc = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mm
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !26
  %i.nf = zext i8 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nf
  store i8 %i.nb, ptr %i.ng, align 1, !tbaa !26
  %i.nh = trunc i32 %i.ml to i8
  %i.ni = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.mm
  store i8 %i.nh, ptr %i.nj, align 1, !tbaa !26
  %i.nk = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.mr
  store i8 %.446, ptr %i.nl, align 1, !tbaa !26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.preheader463
  %.3372 = phi i32 [ %i.ml, %bb.ao ], [ %.2371515, %bb.an ], [ %.2371515, %.preheader463 ] ; 4 uses
  %.not431 = icmp sgt i32 %.3372, %3
  br i1 %.not431, label %bb.aq, label %.thread457

bb.aq:                                            ; preds = %bb.ap
  %i.nm = load ptr, ptr %.0366516, align 8, !tbaa !132 ; 2 uses
  %.not429 = icmp eq ptr %i.nm, null
  br i1 %.not429, label %.split.thread, label %.preheader463, !llvm.loop !116

.split.thread:                                    ; preds = %bb.aq, %.preheader464.split
  %.5374 = phi i32 [ %.1370518, %.preheader464.split ], [ %.3372, %bb.aq ] ; 2 uses
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next607, %indvars.iv632
  br i1 %exitcond612.not, label %.thread457, label %.preheader464.split, !llvm.loop !117

.thread457:                                       ; preds = %._crit_edge511, %.split.thread, %.split.us.us.split.thread, %.split.us.us.split.us.us.thread, %bb.z, %bb.ap, %bb.al, %bb.ai, %._crit_edge708
  %.6460 = phi ptr [ %.1.lcssa, %.split.thread ], [ %.1.lcssa, %bb.ai ], [ null, %._crit_edge708 ], [ %.1.lcssa, %.split.us.us.split.us.us.thread ], [ %.1.lcssa, %.split.us.us.split.thread ], [ %.1.lcssa, %bb.al ], [ %.1.lcssa, %bb.ap ], [ null, %bb.z ], [ null, %._crit_edge511 ]
  %.6375 = phi i32 [ %.5374, %.split.thread ], [ %.3372.us.us.us.us, %bb.ai ], [ %.0369528, %._crit_edge708 ], [ %.5374.us.us, %.split.us.us.split.us.us.thread ], [ %.5374.us, %.split.us.us.split.thread ], [ %.3372.us.us, %bb.al ], [ %.3372, %bb.ap ], [ %.0369528, %bb.z ], [ %.0369528, %._crit_edge511 ] ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread457, %.loopexit462
  %indvars.iv628 = phi i64 [ 0, %.thread457 ], [ %indvars.iv.next629, %.loopexit462 ] ; 2 uses
  %.7523 = phi ptr [ %.6460, %.thread457 ], [ %.9, %.loopexit462 ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv628 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !130 ; 2 uses
  %.not433 = icmp eq ptr %i.no, null
  br i1 %.not433, label %.loopexit462, label %.preheader461

.preheader461:                                    ; preds = %bb.ar, %.preheader461
  %.0362521 = phi ptr [ %i.np, %.preheader461 ], [ %i.no, %bb.ar ] ; 2 uses
  %i.np = load ptr, ptr %.0362521, align 8, !tbaa !132 ; 2 uses
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %.0362521) #11
  %.not434 = icmp eq ptr %i.np, null
  br i1 %.not434, label %.loopexit462, label %.preheader461, !llvm.loop !118

.loopexit462:                                     ; preds = %.preheader461, %bb.ar
  %.9 = phi ptr [ %.7523, %bb.ar ], [ null, %.preheader461 ] ; 2 uses
  store ptr null, ptr %i.nn, align 8, !tbaa !130
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next629, 769
  br i1 %exitcond631.not, label %bb.as, label %bb.ar, !llvm.loop !119

bb.as:                                            ; preds = %.loopexit462
  %i.nq = add nuw nsw i32 %.0376524, 96
  %i.nr = icmp sgt i32 %.6375, %3
  %indvars.iv.next633 = add nuw i64 %indvars.iv632, 96
  br i1 %i.nr, label %.preheader466, label %._crit_edge530, !llvm.loop !120

._crit_edge530:                                   ; preds = %bb.as
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.fu) #11
  %i.ns = load ptr, ptr %i.fc, align 8, !tbaa !128
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.ns) #11
  %i.nt = load ptr, ptr %i.fa, align 8, !tbaa !127
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.nt) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %.loopexit469, %._crit_edge530, %.loopexit476
  %.0390 = phi i32 [ %2, %.loopexit476 ], [ %3, %._crit_edge530 ], [ %3, %.loopexit469 ] ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !43
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nx = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 768) #11 ; 2 uses
  store ptr %i.nx, ptr %i.nu, align 8, !tbaa !43
  %i.ny = zext i32 %.0390 to i64
  %i.nz = mul nuw nsw i64 %i.ny, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nx, ptr nonnull align 1 %1, i64 %i.nz, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.oa = trunc i32 %.0390 to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 %i.oa, ptr %i.ob, align 8, !tbaa !44
  br i1 %i.i, label %png_rtran_ok.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oc = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 32768) #11
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !45
  %i.oe = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 32768) #11 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32768) %i.oe, i8 -1, i64 32768, i1 false)
  %i.of = icmp sgt i32 %.0390, 0
  br i1 %i.of, label %.lr.ph536.preheader, label %._crit_edge537

.lr.ph536.preheader:                              ; preds = %bb.aw
  %wide.trip.count650 = zext nneg i32 %.0390 to i64
  br label %.lr.ph536

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %bb.be
  %indvars.iv647 = phi i64 [ 0, %.lr.ph536.preheader ], [ %indvars.iv.next648, %bb.be ] ; 3 uses
  %i.og = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv647 ; 3 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !40
  %i.oi = lshr i8 %i.oh, 3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !41
  %i.ol = lshr i8 %i.ok, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 2
  %i.on = load i8, ptr %i.om, align 1, !tbaa !42
  %i.oo = lshr i8 %i.on, 3
  %i.op = trunc i64 %indvars.iv647 to i8
  %i.oq = zext nneg i8 %i.oo to i64
  %i.or = zext nneg i8 %i.ol to i64
  %i.os = zext nneg i8 %i.oi to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph536, %bb.bd
  %indvars.iv643 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next644, %bb.bd ] ; 3 uses
  %i.ot = sub nsw i64 %indvars.iv643, %i.os
  %i.ou = trunc nsw i64 %i.ot to i32
  %6 = tail call i32 @llvm.abs.i32(i32 %i.ou, i1 true) ; 2 uses
  %i.ov = shl nuw nsw i64 %indvars.iv643, 10
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.bc
  %indvars.iv639 = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next640, %bb.bc ] ; 3 uses
  %i.ow = sub nsw i64 %indvars.iv639, %i.or
  %i.ox = trunc nsw i64 %i.ow to i32
  %7 = tail call i32 @llvm.abs.i32(i32 %i.ox, i1 true) ; 2 uses
  %i.oy = add nuw nsw i32 %7, %6
  %i.oz = tail call i32 @llvm.umax.i32(i32 %6, i32 %7)
  %i.pa = shl nuw nsw i64 %indvars.iv639, 5
  %i.pb = add nuw nsw i64 %i.pa, %i.ov
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.bb
  %indvars.iv635 = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next636, %bb.bb ] ; 3 uses
  %i.pc = add nuw nsw i64 %indvars.iv635, %i.pb   ; 2 uses
  %i.pd = sub nsw i64 %indvars.iv635, %i.oq
  %i.pe = trunc nsw i64 %i.pd to i32
  %8 = tail call i32 @llvm.abs.i32(i32 %i.pe, i1 true) ; 2 uses
  %i.pf = tail call i32 @llvm.umax.i32(i32 %i.oz, i32 %8)
  %i.pg = add nuw nsw i32 %i.oy, %8
  %i.ph = add nuw nsw i32 %i.pg, %i.pf            ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !26
  %i.pk = zext i8 %i.pj to i32
  %i.pl = icmp samesign ult i32 %i.ph, %i.pk
  br i1 %i.pl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pm = trunc nuw i32 %i.ph to i8
  store i8 %i.pm, ptr %i.pi, align 1, !tbaa !26
  %i.pn = load ptr, ptr %i.od, align 8, !tbaa !45
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pc
  store i8 %i.op, ptr %i.po, align 1, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond638.not = icmp eq i64 %indvars.iv.next636, 32
  br i1 %exitcond638.not, label %bb.bc, label %bb.az, !llvm.loop !121

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next640, 32
  br i1 %exitcond642.not, label %bb.bd, label %bb.ay, !llvm.loop !122

bb.bd:                                            ; preds = %bb.bc
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next644, 32
  br i1 %exitcond646.not, label %bb.be, label %bb.ax, !llvm.loop !123

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 2 uses
  %exitcond651.not = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not, label %._crit_edge537, label %.lr.ph536, !llvm.loop !124

._crit_edge537:                                   ; preds = %bb.be, %bb.aw
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.oe) #11
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %png_rtran_ok.exit, %._crit_edge537, %bb.av
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_gamma_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24, !alias.scope !137 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !24, !alias.scope !137
  switch i32 %1, label %translate_gamma_flags.exit [
    i32 -1, label %bb.e
    i32 -100000, label %bb.e
    i32 -2, label %bb.f
    i32 -50000, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %translate_gamma_flags.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %translate_gamma_flags.exit

translate_gamma_flags.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i15 = phi i32 [ 220000, %bb.e ], [ %1, %bb.d ], [ 151724, %bb.f ] ; 3 uses
  switch i32 %2, label %translate_gamma_flags.exit17 [
    i32 -1, label %translate_gamma_flags.exit17.thread
    i32 -100000, label %translate_gamma_flags.exit17.thread
    i32 -2, label %bb.g
    i32 -50000, label %bb.g
  ]

bb.g:                                             ; preds = %translate_gamma_flags.exit, %translate_gamma_flags.exit
  br label %translate_gamma_flags.exit17.thread

translate_gamma_flags.exit17:                     ; preds = %translate_gamma_flags.exit
  %i.e = icmp slt i32 %2, 1
  br i1 %i.e, label %bb.h, label %translate_gamma_flags.exit17.thread

bb.h:                                             ; preds = %translate_gamma_flags.exit17
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #11
  br label %translate_gamma_flags.exit17.thread

translate_gamma_flags.exit17.thread:              ; preds = %translate_gamma_flags.exit, %translate_gamma_flags.exit, %bb.g, %bb.h, %translate_gamma_flags.exit17
  %.0.i1624 = phi i32 [ %2, %translate_gamma_flags.exit17 ], [ %2, %bb.h ], [ 65909, %bb.g ], [ 45455, %translate_gamma_flags.exit ], [ 45455, %translate_gamma_flags.exit ] ; 2 uses
  %i.f = icmp slt i32 %.0.i15, 1
  br i1 %i.f, label %bb.i, label %bb.j

bb.i:                                             ; preds = %translate_gamma_flags.exit17.thread
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %translate_gamma_flags.exit17.thread
  %i.g = add i32 %.0.i1624, -10000001
  %or.cond.i = icmp ult i32 %i.g, -9999001
  br i1 %or.cond.i, label %unsupported_gamma.exit, label %bb.k

unsupported_gamma.exit:                           ; preds = %bb.j
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  br label %png_rtran_ok.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.h = add i32 %.0.i15, -10000001
  %or.cond.i19 = icmp ult i32 %i.h, -9999001
  br i1 %or.cond.i19, label %unsupported_gamma.exit21, label %bb.l

unsupported_gamma.exit21:                         ; preds = %bb.k
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  br label %png_rtran_ok.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i32 %.0.i1624, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i32 %.0.i15, ptr %i.j, align 4, !tbaa !33
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %unsupported_gamma.exit21, %unsupported_gamma.exit, %bb.l
  ret void
}

declare void @png_app_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_gamma(ptr noalias noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt double %1, 0.000000e+00
  %i.b = fcmp olt double %1, 1.280000e+02
  %or.cond.i = and i1 %i.a, %i.b
  %i.c = fmul nnan double %1, 1.000000e+05
  %.0.i = select i1 %or.cond.i, double %i.c, double %1
  %i.d = fadd double %.0.i, 5.000000e-01
  %i.e = tail call double @llvm.floor.f64(double %i.d) ; 2 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e)
  %or.cond3.i = fcmp ogt double %i.f, f0x41DFFFFFFFC00000
  br i1 %or.cond3.i, label %bb.b, label %convert_gamma_value.exit

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  unreachable

convert_gamma_value.exit:                         ; preds = %bb.a
  %i.g = fcmp ogt double %2, 0.000000e+00
  %i.h = fcmp olt double %2, 1.280000e+02
  %or.cond.i5 = and i1 %i.g, %i.h
  %i.i = fmul nnan double %2, 1.000000e+05
  %.0.i6 = select i1 %or.cond.i5, double %i.i, double %2
  %i.j = fadd double %.0.i6, 5.000000e-01
  %i.k = tail call double @llvm.floor.f64(double %i.j) ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %or.cond3.i7 = fcmp ogt double %i.l, f0x41DFFFFFFFC00000
  br i1 %or.cond3.i7, label %bb.c, label %convert_gamma_value.exit8

bb.c:                                             ; preds = %convert_gamma_value.exit
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  unreachable

convert_gamma_value.exit8:                        ; preds = %convert_gamma_value.exit
  %i.m = fptosi double %i.e to i32
  %i.n = fptosi double %i.k to i32
  tail call void @png_set_gamma_fixed(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n)
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_expand(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24, !alias.scope !140 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c
end_hunk_0
