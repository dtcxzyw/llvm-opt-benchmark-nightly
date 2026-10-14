Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_read_coll?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ADIOI_Calc_my_off_len:bb.a
  %.0200 = phi i64 [ %i.cl, %.loopexit ], [ %i.bl, %.thread.loopexit ], [ %i.bl, %bb.m ], [ %i.bl, %bb.p ]
  %i.di = add i64 %.0199.sink, %i.bb
  %i.dj = add i64 %i.di, %.sink324                ; 3 uses
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !30
  %i.dl = sext i32 %1 to i64
  %i.dm = mul nsw i64 %i.dk, %i.dl                ; 6 uses
  %i.dn = call i64 @llvm.smin.i64(i64 %.4, i64 %i.dm) ; 2 uses
  %i.do = icmp sgt i64 %i.dm, 0                   ; 2 uses
  br i1 %i.do, label %.lr.ph265, label %._crit_edge

.lr.ph265:                                        ; preds = %.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph265, %bb.w
  %.0196264 = phi i32 [ 0, %.lr.ph265 ], [ %spec.select, %bb.w ]
  %.5263 = phi i64 [ %i.dn, %.lr.ph265 ], [ %i.ea, %bb.w ] ; 2 uses
  %.0208262 = phi i64 [ 0, %.lr.ph265 ], [ %i.ds, %bb.w ]
  %.0212261 = phi i32 [ %.1203, %.lr.ph265 ], [ %i.dw, %bb.w ]
  %.not240 = icmp ne i64 %.5263, 0
  %i.dr = zext i1 %.not240 to i32
  %spec.select = add nuw nsw i32 %.0196264, %i.dr ; 2 uses
  %i.ds = add nsw i64 %.5263, %.0208262           ; 3 uses
  %i.dt = add nsw i32 %.0212261, 1
  %i.du = sext i32 %i.dt to i64
  %i.dv = srem i64 %i.du, %i.dh                   ; 2 uses
  %i.dw = trunc nsw i64 %i.dv to i32
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !30
  %i.dz = sub nsw i64 %i.dm, %i.ds
  %i.ea = call i64 @llvm.smin.i64(i64 %i.dy, i64 %i.dz)
  %i.eb = icmp slt i64 %i.ds, %i.dm
  br i1 %i.eb, label %bb.w, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.w, %.thread
  %.0196.lcssa = phi i32 [ 0, %.thread ], [ %spec.select, %bb.w ] ; 2 uses
  %i.ec = add nuw nsw i32 %.0196.lcssa, 1         ; 2 uses
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ef, i32 noundef 424, ptr noundef nonnull @.str) #6 ; 2 uses
  store ptr %i.eg, ptr %5, align 8, !tbaa !11
  %i.eh = zext nneg i32 %i.ec to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  store ptr %i.ei, ptr %6, align 8, !tbaa !11
  %i.ej = load ptr, ptr %5, align 8, !tbaa !11
  store i64 %i.dj, ptr %7, align 8, !tbaa !30
  br i1 %i.do, label %.lr.ph282, label %bb.ac

.lr.ph282:                                        ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !44 ; 3 uses
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph282, %bb.ab
  %.0195280 = phi i64 [ %i.dj, %.lr.ph282 ], [ %.1, %bb.ab ] ; 2 uses
  %.1201279 = phi i64 [ %.0200, %.lr.ph282 ], [ %.3, %bb.ab ] ; 3 uses
  %.6278 = phi i64 [ %i.dn, %.lr.ph282 ], [ %.7, %bb.ab ] ; 5 uses
  %.1209277 = phi i64 [ 0, %.lr.ph282 ], [ %i.eu, %bb.ab ]
  %.0210276 = phi i32 [ 0, %.lr.ph282 ], [ %.1211, %bb.ab ] ; 3 uses
  %.1213275 = phi i32 [ %.1203, %.lr.ph282 ], [ %.3215, %bb.ab ] ; 3 uses
  %.not239 = icmp eq i64 %.6278, 0
  br i1 %.not239, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = sext i32 %.0210276 to i64               ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.eq
  store i64 %.0195280, ptr %i.er, align 8, !tbaa !30
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.eq
  store i64 %.6278, ptr %i.es, align 8, !tbaa !30
  %i.et = add nsw i32 %.0210276, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1211 = phi i32 [ %i.et, %bb.y ], [ %.0210276, %bb.x ]
  %i.eu = add nsw i64 %.6278, %.1209277           ; 3 uses
  %i.ev = add nsw i64 %.0195280, %.6278           ; 3 uses
  %i.ew = sext i32 %.1213275 to i64               ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !30
  %i.ez = add nsw i64 %i.ey, %i.bb
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.ew
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !30
  %i.fc = add nsw i64 %i.ez, %i.fb
  %i.fd = mul nsw i64 %i.eo, %.1201279
  %i.fe = add nsw i64 %i.fc, %i.fd
  %i.ff = icmp slt i64 %i.ev, %i.fe
  br i1 %i.ff, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = add nsw i32 %.1213275, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = load i64, ptr %i.ep, align 8, !tbaa !43 ; 2 uses
  %i.fj = srem i64 %i.fh, %i.fi                   ; 4 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = zext i1 %i.fk to i64
  %i.fm = add nsw i64 %.1201279, %i.fl            ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fj
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !30 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %bb.aa, %.lr.ph270
  %.2268 = phi i64 [ %i.fv, %.lr.ph270 ], [ %i.fm, %bb.aa ]
  %.2214.in267 = phi i64 [ %i.fs, %.lr.ph270 ], [ %i.fj, %bb.aa ]
  %i.fq = shl nsw i64 %.2214.in267, 32
  %sext = add i64 %i.fq, 4294967296
  %i.fr = ashr exact i64 %sext, 32
  %i.fs = srem i64 %i.fr, %i.fi                   ; 4 uses
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = zext i1 %i.ft to i64
  %i.fv = add nsw i64 %.2268, %i.fu               ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fs
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !30 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.lr.ph270, label %._crit_edge271, !llvm.loop !80

._crit_edge271:                                   ; preds = %.lr.ph270, %bb.aa
  %.2214.in.lcssa = phi i64 [ %i.fj, %bb.aa ], [ %i.fs, %.lr.ph270 ] ; 2 uses
  %.2.lcssa = phi i64 [ %i.fm, %bb.aa ], [ %i.fv, %.lr.ph270 ] ; 2 uses
  %.lcssa = phi i64 [ %i.fo, %bb.aa ], [ %i.fx, %.lr.ph270 ]
  %.2214 = trunc nsw i64 %.2214.in.lcssa to i32
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.el, i64 %.2214.in.lcssa
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !30
  %i.gb = mul nsw i64 %.2.lcssa, %i.eo
  %i.gc = add i64 %i.gb, %i.bb
  %i.gd = add i64 %i.gc, %i.ga
  %i.ge = sub nsw i64 %i.dm, %i.eu
  %.241 = call i64 @llvm.smin.i64(i64 %.lcssa, i64 %i.ge)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %._crit_edge271
  %.3215 = phi i32 [ %.2214, %._crit_edge271 ], [ %.1213275, %bb.z ]
  %.7 = phi i64 [ %.241, %._crit_edge271 ], [ %.6278, %bb.z ]
  %.3 = phi i64 [ %.2.lcssa, %._crit_edge271 ], [ %.1201279, %bb.z ]
  %.1 = phi i64 [ %i.gd, %._crit_edge271 ], [ %i.ev, %bb.z ] ; 2 uses
  %i.gf = icmp slt i64 %i.eu, %i.dm
  br i1 %i.gf, label %bb.x, label %._crit_edge283, !llvm.loop !81

._crit_edge283:                                   ; preds = %bb.ab
  %i.gg = add nsw i64 %i.ev, -1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge283, %._crit_edge
  %.0195.lcssa = phi i64 [ %.1, %._crit_edge283 ], [ %i.dj, %._crit_edge ]
  %.0194.lcssa = phi i64 [ %i.gg, %._crit_edge283 ], [ 0, %._crit_edge ]
  br i1 %i.bc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0195.lcssa, ptr %i.gh, align 8, !tbaa !29
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 %.0196.lcssa, ptr %9, align 4, !tbaa !8
  store i64 %.0194.lcssa, ptr %8, align 8, !tbaa !30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Allgather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Datatype_iscontig(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Free_fn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Calc_file_domains(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ADIOI_Calc_my_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ADIOI_Calc_others_req(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_size_x(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_io_romio_dist_MPIR_Status_set_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @PMPI_Type_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Flatten_and_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ADIOI_Fill_user_buffer(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %9 to i64                  ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = mul nsw i32 %10, 3
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.e, i32 noundef 980, ptr noundef nonnull @.str) #6 ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = sext i32 %10 to i64                      ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.h ; 5 uses
  %i.k = icmp sgt i32 %10, 0                      ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %10 to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %10, 44
  br i1 %min.iters.check, label %.lr.ph.preheader560, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = shl nuw nsw i64 %i.h, 3
  %i.m = shl nuw nsw i64 %i.h, 2
  %i.n = sub i64 %i.a, %i.g                       ; 2 uses
  %17 = add i64 %i.n, -1
  %diff.check556 = icmp ult i64 %17, 31
  %i.o = sub i64 %i.l, %i.n
  %diff.check551 = icmp ugt i64 %i.o, -32
  %conflict.rdx552 = or i1 %diff.check556, %diff.check551
  %i.p = add i64 %i.m, %i.g
  %i.q = sub i64 %i.a, %i.p
  %diff.check553 = icmp ugt i64 %i.q, -32
  %conflict.rdx554 = or i1 %conflict.rdx552, %diff.check553
  br i1 %conflict.rdx554, label %.lr.ph.preheader560, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> zeroinitializer, ptr %i.r, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.s, align 4, !tbaa !8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> zeroinitializer, ptr %i.t, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.u, align 4, !tbaa !8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %wide.load555 = load <4 x i32>, ptr %i.w, align 4, !tbaa !8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %wide.load, ptr %i.x, align 4, !tbaa !8
  store <4 x i32> %wide.load555, ptr %i.y, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader560

.lr.ph.preheader560:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader560
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  store i32 0, ptr %i.aa, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.ph
  store i32 0, ptr %i.ab, align 4, !tbaa !8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.ph
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !8
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader560
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader560 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 0, ptr %i.ah, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 0, ptr %i.ai, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store i32 0, ptr %i.am, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 0, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.at = icmp sgt i32 %11, 0
  br i1 %i.at, label %.lr.ph492, label %.preheader

.lr.ph492:                                        ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.av = load i64, ptr %i.au, align 8, !tbaa !30
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %wide.trip.count504 = zext nneg i32 %11 to i64
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge481, %._crit_edge
  br i1 %i.k, label %.lr.ph494.preheader, label %._crit_edge495

.lr.ph494.preheader:                              ; preds = %.preheader
  %wide.trip.count509 = zext nneg i32 %10 to i64  ; 2 uses
  %xtraiter561 = and i64 %wide.trip.count509, 1
  %i.az = icmp eq i32 %10, 1
  br i1 %i.az, label %.lr.ph494.epil.preheader, label %.lr.ph494.preheader.new

.lr.ph494.preheader.new:                          ; preds = %.lr.ph494.preheader
  %unroll_iter = and i64 %wide.trip.count509, 2147483646
  br label %.lr.ph494

bb.b:                                             ; preds = %.lr.ph492, %._crit_edge481
  %indvars.iv501 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next502, %._crit_edge481 ] ; 3 uses
  %.0490 = phi i64 [ %i.ax, %.lr.ph492 ], [ %.1.lcssa, %._crit_edge481 ] ; 2 uses
  %.0278489 = phi i32 [ 0, %.lr.ph492 ], [ %.1279.lcssa, %._crit_edge481 ] ; 2 uses
  %.0304488 = phi i64 [ %i.av, %.lr.ph492 ], [ %.1305.lcssa, %._crit_edge481 ] ; 2 uses
  %.0321487 = phi i32 [ 0, %.lr.ph492 ], [ %.1322.lcssa, %._crit_edge481 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv501
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %.not364472 = icmp eq i64 %i.bb, 0
  br i1 %.not364472, label %._crit_edge481, label %.lr.ph480.preheader

.lr.ph480.preheader:                              ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv501
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  br label %.lr.ph480

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %.loopexit
  %.1478 = phi i64 [ %.16, %.loopexit ], [ %.0490, %.lr.ph480.preheader ] ; 7 uses
  %.0276477 = phi i64 [ %i.iq, %.loopexit ], [ %i.bb, %.lr.ph480.preheader ] ; 2 uses
  %.0277476 = phi i64 [ %i.ip, %.loopexit ], [ %i.bd, %.lr.ph480.preheader ] ; 2 uses
  %.1279475 = phi i32 [ %.23, %.loopexit ], [ %.0278489, %.lr.ph480.preheader ] ; 7 uses
  %.1305474 = phi i64 [ %.16320, %.loopexit ], [ %.0304488, %.lr.ph480.preheader ] ; 7 uses
  %.1322473 = phi i32 [ %.23344, %.loopexit ], [ %.0321487, %.lr.ph480.preheader ] ; 7 uses
  store i64 %.0276477, ptr %i.b, align 8, !tbaa !30
  %i.be = call i32 @ADIOI_Calc_aggregator(ptr noundef %0, i64 noundef %.0277476, i64 noundef %12, ptr noundef nonnull %i.b, i64 noundef %13, ptr noundef %14, ptr noundef %15) #6
  %i.bf = sext i32 %i.be to i64                   ; 6 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bf ; 7 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8  ; 3 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 3 uses
  %i.bk = icmp ult i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph480
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bf ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 5 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !30  ; 12 uses
  %i.bp = add nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bf
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 4 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = icmp sgt i64 %i.bp, %i.bs
  br i1 %i.bt, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.bu = icmp ugt i32 %i.br, %i.bm
  br i1 %i.bu, label %.lr.ph441.preheader, label %bb.l

.lr.ph441.preheader:                              ; preds = %bb.d
  %i.bv = sub nuw nsw i64 %i.bp, %i.bs            ; 3 uses
  %i.bw = sub nuw i32 %i.bj, %i.bh
  %i.bx = zext i32 %i.bw to i64
  %i.by = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bx) ; 3 uses
  %i.bz = sub nuw i32 %i.br, %i.bm
  %i.ca = zext i32 %i.bz to i64
  br label %.lr.ph441

.lr.ph441:                                        ; preds = %.lr.ph441.preheader, %bb.f
  %.2439 = phi i64 [ %.3, %bb.f ], [ %.1478, %.lr.ph441.preheader ]
  %.2280438 = phi i32 [ %.4282, %bb.f ], [ %.1279475, %.lr.ph441.preheader ] ; 2 uses
  %.0297437 = phi i64 [ %i.cu, %bb.f ], [ %i.ca, %.lr.ph441.preheader ] ; 2 uses
  %.2306436 = phi i64 [ %.3307, %bb.f ], [ %.1305474, %.lr.ph441.preheader ] ; 2 uses
  %.2323435 = phi i32 [ %.4325, %bb.f ], [ %.1322473, %.lr.ph441.preheader ] ; 3 uses
  %i.cb = call i64 @llvm.smin.i64(i64 %.0297437, i64 %.2306436) ; 3 uses
  %i.cc = add nsw i64 %.2439, %i.cb
  %i.cd = sub nsw i64 %.2306436, %i.cb            ; 2 uses
  %.not378 = icmp eq i64 %i.cd, 0
  br i1 %.not378, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph441
  %i.ce = sext i32 %.2323435 to i64
  %i.cf = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = icmp sle i64 %i.cg, %i.ce               ; 2 uses
  %i.ci = add nsw i32 %.2323435, 1
  %.3324 = select i1 %i.ch, i32 0, i32 %i.ci      ; 2 uses
  %i.cj = zext i1 %i.ch to i32
  %.3281 = add nsw i32 %.2280438, %i.cj           ; 2 uses
  %i.ck = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.cl = sext i32 %.3324 to i64                  ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = sext i32 %.3281 to i64
  %i.cp = mul nsw i64 %16, %i.co
  %i.cq = add nsw i64 %i.cp, %i.cn
  %i.cr = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cl
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !30
end_hunk_0
