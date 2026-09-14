Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_read?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0_@mca_common_ompio_file_read:bb.a
  store i32 5, ptr %i.fb, align 8, !tbaa !71
  br label %opal_convertor_cleanup.exit.i

opal_convertor_cleanup.exit.i:                    ; preds = %bb.ab, %.split.loop.exit145.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.fh, align 8, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 0, ptr %i.fi, align 8, !tbaa !75
  store i32 134217760, ptr %i.be, align 4, !tbaa !63
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.bx) #7
  br i1 %.not144.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %opal_convertor_cleanup.exit.i
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef %.095128182.i) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %opal_convertor_cleanup.exit.i
  call void @free(ptr noundef %i.bz) #7
  %.not118.i = icmp eq ptr %4, null
  br i1 %.not118.i, label %mca_common_ompio_file_read_pipelined.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.099.lcssa.i, ptr %i.fj, align 8, !tbaa !35
  br label %mca_common_ompio_file_read_pipelined.exit

mca_common_ompio_file_read_pipelined.exit:        ; preds = %bb.l, %bb.n, %bb.q, %bb.ad, %bb.ae
  %.0.i = phi i32 [ -2, %bb.l ], [ -2, %bb.n ], [ -2, %bb.q ], [ %.4.i, %bb.ae ], [ %.4.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %bb.ak

bb.af:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i64 0, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i64 0, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77
  %i.fm = call i32 @mca_common_ompio_decode_datatype(ptr noundef nonnull %0, ptr noundef %3, i32 noundef range(i32 1, 0) %2, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %i.fl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !95
  %i.fp = call i32 %i.fo(ptr noundef nonnull @.str.2, i32 noundef 18) #7, !inline_history !93
  %i.fq = sext i32 %i.fp to i64                   ; 2 uses
  %i.fr = load i64, ptr %i.d, align 8, !tbaa !38
  %i.fs = uitofp i64 %i.fr to double
  %i.ft = uitofp i64 %i.fq to double
  %i.fu = fdiv double %i.fs, %i.ft
  %i.fv = call double @llvm.ceil.f64(double %i.fu)
  %i.fw = fptosi double %i.fv to i32              ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !68
  store i32 %i.fy, ptr %i.g, align 4, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.not43.i = icmp eq i32 %i.fw, 0
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i
  %.02935.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gn, %bb.ai ] ; 3 uses
  %.03034.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gp, %bb.ai ] ; 2 uses
  %i.gc = load i64, ptr %i.d, align 8, !tbaa !38
  %i.gd = load i32, ptr %i.b, align 4, !tbaa !36
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.gf = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef %.03034.i, i32 noundef %i.fw, i64 noundef %i.fq, i64 noundef %i.gc, i32 noundef %i.gd, ptr noundef %i.ge, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gb) #7 ; 0 uses
  %i.gg = load i32, ptr %i.gb, align 8, !tbaa !69
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %._crit_edge.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !41
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !96
  %i.gl = call i64 %i.gk(ptr noundef nonnull %0) #7, !inline_history !93 ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  br i1 %i.gm, label %bb.ai, label %._crit_edge.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  %i.gn = add i64 %i.gl, %.02935.i                ; 2 uses
  store i32 0, ptr %i.gb, align 8, !tbaa !69
  %i.go = load ptr, ptr %i.ga, align 8, !tbaa !70
  call void @free(ptr noundef %i.go) #7
  store ptr null, ptr %i.ga, align 8, !tbaa !70
  %i.gp = add nuw nsw i32 %.03034.i, 1            ; 2 uses
  %exitcond.not.i33 = icmp eq i32 %i.gp, %i.fw
  br i1 %exitcond.not.i33, label %._crit_edge.loopexit.i, label %bb.ag, !llvm.loop !94

._crit_edge.loopexit.i:                           ; preds = %bb.ai, %bb.ah, %bb.ag
  %.029.lcssa.ph.i = phi i64 [ %.02935.i, %bb.ah ], [ %i.gn, %bb.ai ], [ %.02935.i, %bb.ag ]
  %.1.ph.i = phi i64 [ %i.gl, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.ag ]
  %i.gq = trunc i64 %.1.ph.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %.029.lcssa.i = phi i64 [ 0, %bb.af ], [ %.029.lcssa.ph.i, %._crit_edge.loopexit.i ]
  %.1.i = phi i32 [ 0, %bb.af ], [ %i.gq, %._crit_edge.loopexit.i ]
  %i.gr = load ptr, ptr %i.c, align 8, !tbaa !76
  call void @free(ptr noundef %i.gr) #7
  %.not.i32 = icmp eq ptr %4, null
  br i1 %.not.i32, label %mca_common_ompio_file_read_default.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.029.lcssa.i, ptr %i.gs, align 8, !tbaa !35
  br label %mca_common_ompio_file_read_default.exit

mca_common_ompio_file_read_default.exit:          ; preds = %._crit_edge.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.d, %bb.e, %bb.a, %mca_common_ompio_file_read_default.exit, %mca_common_ompio_file_read_pipelined.exit
  %.026 = phi i32 [ %.1.i, %mca_common_ompio_file_read_default.exit ], [ 20, %bb.a ], [ %.0.i, %mca_common_ompio_file_read_pipelined.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  ret i32 %.026
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @mca_common_ompio_check_gpu_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_read_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mca_common_ompio_set_explicit_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = udiv i64 %i.i, %i.d
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = urem i64 %i.i, %i.d                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not2425.i = icmp ult i64 %i.p, %i.w
  br i1 %.not2425.i, label %mca_common_ompio_set_explicit_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = add i64 %i.z, %.026.i                   ; 2 uses
  %.not24.i = icmp ult i64 %i.p, %i.aa
  br i1 %.not24.i, label %..loopexit_crit_edge.i, label %.lr.ph.i, !llvm.loop !1

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i64 %.026.i, ptr %i.s, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit

mca_common_ompio_set_explicit_offset.exit:        ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ac = call i32 @mca_common_ompio_file_read(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %.not.i9 = icmp eq i64 %i.ad, 0
  br i1 %.not.i9, label %mca_common_ompio_set_explicit_offset.exit17, label %bb.c

bb.c:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.aj = mul i64 %i.ai, %i.ae                    ; 2 uses
  %i.ak = udiv i64 %i.aj, %i.ad
  %i.al = mul i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !82
  %i.aq = urem i64 %i.aj, %i.ad                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %.not2425.i10 = icmp ult i64 %i.aq, %i.ax
  br i1 %.not2425.i10, label %mca_common_ompio_set_explicit_offset.exit17, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %.lr.ph.i11 ], [ 0, %bb.c ]
  %.026.i13 = phi i64 [ %i.bb, %.lr.ph.i11 ], [ %i.ax, %bb.c ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next.i14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bb = add i64 %i.ba, %.026.i13                ; 2 uses
  %.not24.i15 = icmp ult i64 %i.aq, %i.bb
  br i1 %.not24.i15, label %..loopexit_crit_edge.i16, label %.lr.ph.i11, !llvm.loop !1

..loopexit_crit_edge.i16:                         ; preds = %.lr.ph.i11
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i14 to i32
  store i64 %.026.i13, ptr %i.at, align 8, !tbaa !84
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit17

mca_common_ompio_set_explicit_offset.exit17:      ; preds = %mca_common_ompio_set_explicit_offset.exit, %bb.c, %..loopexit_crit_edge.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ac
}

declare i32 @mca_common_ompio_file_get_position(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @mca_common_ompio_set_explicit_offset(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = mul i64 %i.f, %1                         ; 2 uses
  %i.h = udiv i64 %i.g, %i.b
  %i.i = mul i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = add i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !82
  %i.n = urem i64 %i.g, %i.b                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.n, ptr %i.o, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %.not2425 = icmp ult i64 %i.n, %i.u
  br i1 %.not2425, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ]
  %.026 = phi i64 [ %i.y, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67
  %i.y = add i64 %i.x, %.026                      ; 2 uses
  %.not24 = icmp ult i64 %i.n, %i.y
  br i1 %.not24, label %..loopexit_crit_edge, label %.lr.ph, !llvm.loop !1

..loopexit_crit_edge:                             ; preds = %.lr.ph
  %i.z = trunc nsw i64 %indvars.iv.next to i32
  store i64 %.026, ptr %i.q, align 8, !tbaa !84
  store i32 %i.z, ptr %i.p, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_iread(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.ompi_status_public_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32
  %i.m = and i32 %i.l, 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @mca_common_ompio_request_alloc(ptr noundef nonnull %i.a, i32 noundef 1) #7
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 0, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 0, ptr %i.q, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.r, align 8, !tbaa !109
  %i.t = call i32 %i.s(ptr noundef nonnull %i.o) #7, !inline_history !100
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !110
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.d, %.critedge.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.w, ptr %4, align 8, !tbaa !111
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %.not63 = icmp eq ptr %i.aa, null
  br i1 %.not63, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr null, ptr %i.e, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i64 0, ptr %i.f, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i32 0, ptr %i.g, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @mca_common_ompio_check_gpu_buf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #7
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !36
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = load i32, ptr %i.j, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond.not = select i1 %i.ac, i1 %i.ae, i1 false
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !37
  %i.ah = and i32 %i.ag, 1024
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = icmp ne ptr %3, @ompi_mpi_byte
  %or.cond4.not88 = and i1 %i.aj, %i.ai
  %i.ak = icmp ne ptr %3, @ompi_mpi_char
  %or.cond6.not85 = and i1 %i.ak, %or.cond4.not88
  %brmerge = select i1 %or.cond6.not85, i1 true, i1 %or.cond.not
  br i1 %brmerge, label %.critedge, label %bb.p

.critedge:                                        ; preds = %bb.f
  %i.al = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !36
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !47
  %.not66 = icmp eq i32 %i.al, %i.am
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 232 ; 2 uses
  store ptr @opal_convertor_t_class, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  store volatile i32 1, ptr %i.ap, align 8, !tbaa !50
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %.not6.i = icmp eq ptr %i.ar, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.as = phi ptr [ %i.au, %.lr.ph.i ], [ %i.ar, %bb.h ]
  %.07.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.aq, %bb.h ]
  call void %i.as(ptr noundef nonnull %i.ao) #7, !inline_history !2
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52 ; 2 uses
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %opal_obj_run_constructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

opal_obj_run_constructors.exit.loopexit:          ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %opal_obj_run_constructors.exit

opal_obj_run_constructors.exit:                   ; preds = %opal_obj_run_constructors.exit.loopexit, %bb.h
  %i.av = phi ptr [ %.pre, %opal_obj_run_constructors.exit.loopexit ], [ %i.an, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
end_hunk_0
begin_hunk_1_@mca_common_ompio_file_iread:bb.a
bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.co, align 8, !tbaa !109
  %i.cq = call i32 %i.cp(ptr noundef nonnull %i.cl) #7, !inline_history !100
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.critedge.i77, label %ompi_request_complete.exit78

.critedge.i77:                                    ; preds = %bb.t, %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !tbaa !110
  br label %ompi_request_complete.exit78

ompi_request_complete.exit78:                     ; preds = %bb.t, %.critedge.i77
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.ct, ptr %4, align 8, !tbaa !111
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %.not71 = icmp eq ptr %i.cu, null
  br i1 %.not71, label %.critedge73.thread, label %bb.u

bb.u:                                             ; preds = %ompi_request_complete.exit78
  call void @free(ptr noundef nonnull %i.cu) #7
  br label %.critedge73.thread

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !68
  store i32 %i.cw, ptr %i.h, align 4, !tbaa !36
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !36
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.db = call i32 @mca_common_ompio_build_io_array(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ch, i64 noundef %i.ch, i32 noundef %i.cx, ptr noundef %i.cy, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da) #7 ; 0 uses
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !69
  %.not68 = icmp eq i32 %i.dc, 0
  br i1 %.not68, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.dh = call i64 %i.df(ptr noundef nonnull %0, ptr noundef %i.dg) #7 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @mca_common_ompio_register_progress() #7
  store i32 0, ptr %i.da, align 8, !tbaa !69
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !70 ; 2 uses
  %.not69 = icmp eq ptr %i.di, null
  br i1 %.not69, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.di) #7
  store ptr null, ptr %i.cz, align 8, !tbaa !70
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %.not70 = icmp eq ptr %i.dj, null
  br i1 %.not70, label %.critedge73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.dj) #7
  br label %.critedge73

.critedge73.thread:                               ; preds = %ompi_request_complete.exit78, %bb.u, %bb.n, %bb.l
  %.2.ph = phi i32 [ -2, %bb.l ], [ -2, %bb.n ], [ 0, %bb.u ], [ 0, %ompi_request_complete.exit78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ae

.critedge73:                                      ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ad

bb.ab:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.dk = call i32 @mca_common_ompio_file_read(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5) ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !40  ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !107
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !108
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 136 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !109 ; 2 uses
  %.not.i79 = icmp eq ptr %i.dr, null
  br i1 %.not.i79, label %.critedge.i80, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.dq, align 8, !tbaa !109
  %i.ds = call i32 %i.dr(ptr noundef nonnull %i.dl) #7, !inline_history !100
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.critedge.i80, label %ompi_request_complete.exit81

.critedge.i80:                                    ; preds = %bb.ac, %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %i.du, align 8, !tbaa !110
  br label %ompi_request_complete.exit81

ompi_request_complete.exit81:                     ; preds = %bb.ac, %.critedge.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge73, %ompi_request_complete.exit81
  %.054 = phi i32 [ 0, %.critedge73 ], [ %i.dk, %ompi_request_complete.exit81 ]
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.dv, ptr %4, align 8, !tbaa !111
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge73.thread, %bb.a, %bb.ad, %ompi_request_complete.exit
  %.3 = phi i32 [ %.2.ph, %.critedge73.thread ], [ 0, %ompi_request_complete.exit ], [ %.054, %bb.ad ], [ 20, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

declare void @mca_common_ompio_request_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

declare ptr @mca_common_ompio_alloc_buf(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @mca_common_ompio_decode_datatype(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @mca_common_ompio_build_io_array(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mca_common_ompio_register_progress() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_iread_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mca_common_ompio_set_explicit_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = udiv i64 %i.i, %i.d
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = urem i64 %i.i, %i.d                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not2425.i = icmp ult i64 %i.p, %i.w
  br i1 %.not2425.i, label %mca_common_ompio_set_explicit_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = add i64 %i.z, %.026.i                   ; 2 uses
  %.not24.i = icmp ult i64 %i.p, %i.aa
  br i1 %.not24.i, label %..loopexit_crit_edge.i, label %.lr.ph.i, !llvm.loop !1

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i64 %.026.i, ptr %i.s, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit

mca_common_ompio_set_explicit_offset.exit:        ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ac = call i32 @mca_common_ompio_file_iread(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %.not.i9 = icmp eq i64 %i.ad, 0
  br i1 %.not.i9, label %mca_common_ompio_set_explicit_offset.exit17, label %bb.c

bb.c:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.aj = mul i64 %i.ai, %i.ae                    ; 2 uses
  %i.ak = udiv i64 %i.aj, %i.ad
  %i.al = mul i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !82
  %i.aq = urem i64 %i.aj, %i.ad                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %.not2425.i10 = icmp ult i64 %i.aq, %i.ax
  br i1 %.not2425.i10, label %mca_common_ompio_set_explicit_offset.exit17, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %.lr.ph.i11 ], [ 0, %bb.c ]
  %.026.i13 = phi i64 [ %i.bb, %.lr.ph.i11 ], [ %i.ax, %bb.c ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next.i14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bb = add i64 %i.ba, %.026.i13                ; 2 uses
  %.not24.i15 = icmp ult i64 %i.aq, %i.bb
  br i1 %.not24.i15, label %..loopexit_crit_edge.i16, label %.lr.ph.i11, !llvm.loop !1

..loopexit_crit_edge.i16:                         ; preds = %.lr.ph.i11
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i14 to i32
  store i64 %.026.i13, ptr %i.at, align 8, !tbaa !84
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit17

mca_common_ompio_set_explicit_offset.exit17:      ; preds = %mca_common_ompio_set_explicit_offset.exit, %bb.c, %..loopexit_crit_edge.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_read_all(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.opal_convertor_t, align 8   ; 19 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %i.e = and i32 %i.d, 1024
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp eq ptr %3, @ompi_mpi_byte
  %or.cond = or i1 %i.g, %i.f
  %i.h = icmp eq ptr %3, @ompi_mpi_char
  %or.cond3 = or i1 %i.h, %or.cond
  br i1 %or.cond3, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.i = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !36
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 32), align 8, !tbaa !47
  %.not = icmp eq i32 %i.i, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_convertor_t_class) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @opal_convertor_t_class, ptr %5, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store volatile i32 1, ptr %i.k, align 8, !tbaa !50
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_convertor_t_class, i64 40), align 8, !tbaa !51 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %.not6.i = icmp eq ptr %i.m, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.n = phi ptr [ %i.p, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.07.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.l, %bb.d ]
  call void %i.n(ptr noundef nonnull %5) #7, !inline_history !2
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !0

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.t, align 8, !tbaa !36
  store <2 x i32> %i.w, ptr %i.u, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = call i32 @opal_convertor_prepare_for_recv(ptr noundef nonnull %5, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.s, ptr noundef %1) #7 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !63  ; 4 uses
  %i.ae = and i32 %i.ad, 524288
  %.not.i40 = icmp ne i32 %i.ae, 0
  %i.af = and i32 %i.ad, 327680
  %or.cond.i = icmp eq i32 %i.af, 262144
  %or.cond16.i = or i1 %.not.i40, %or.cond.i
  %i.ag = and i32 %i.ad, 196608
  %or.cond15.not.i = icmp eq i32 %i.ag, 196608
  %or.cond17.i = or i1 %or.cond15.not.i, %or.cond16.i
  br i1 %or.cond17.i, label %opal_convertor_get_packed_size.exit, label %bb.e

bb.e:                                             ; preds = %opal_obj_run_constructors.exit
  %i.ah = and i32 %i.ad, 536870912
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %5) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64
  br label %opal_convertor_get_packed_size.exit

opal_convertor_get_packed_size.exit:              ; preds = %opal_obj_run_constructors.exit, %bb.g
  %.0 = phi i64 [ %i.ac, %opal_obj_run_constructors.exit ], [ %i.al, %bb.g ] ; 3 uses
  %i.am = call ptr @mca_common_ompio_alloc_buf(ptr noundef nonnull %0, i64 noundef %.0) #7 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge, label %bb.h

bb.h:                                             ; preds = %opal_convertor_get_packed_size.exit
  %i.ao = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #8 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.0, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.b, align 4, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = trunc i64 %.0 to i32
  %i.aw = call i32 %i.au(ptr noundef nonnull %0, ptr noundef nonnull %i.am, i32 noundef %i.av, ptr noundef nonnull @ompi_mpi_byte, ptr noundef %4) #7
  %i.ax = call i32 @opal_convertor_unpack(ptr noundef nonnull %5, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !71
  %i.ba = icmp ugt i32 %i.az, 5
  br i1 %i.ba, label %bb.j, label %opal_convertor_cleanup.exit, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !73
  call void @free(ptr noundef %i.bc) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !73
  store i32 5, ptr %i.ay, align 8, !tbaa !71
  br label %opal_convertor_cleanup.exit

opal_convertor_cleanup.exit:                      ; preds = %bb.i, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.be, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 0, ptr %i.bf, align 8, !tbaa !75
  store i32 134217760, ptr %i.v, align 4, !tbaa !63
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !66
  call void @mca_common_ompio_release_buf(ptr noundef nonnull %0, ptr noundef %i.bg) #7
  call void @free(ptr noundef nonnull %i.ao) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !114
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #7
  br label %bb.l

.critedge:                                        ; preds = %bb.h, %opal_convertor_get_packed_size.exit
  %.str.1.sink = phi ptr [ @.str, %opal_convertor_get_packed_size.exit ], [ @.str.1, %bb.h ]
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull %.str.1.sink) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %opal_convertor_cleanup.exit, %.critedge
  %.136 = phi i32 [ -2, %.critedge ], [ %i.bl, %bb.k ], [ %i.aw, %opal_convertor_cleanup.exit ]
  ret i32 %.136
}

declare i32 @opal_convertor_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mca_common_ompio_release_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_read_at_all(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mca_common_ompio_set_explicit_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = udiv i64 %i.i, %i.d
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = urem i64 %i.i, %i.d                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not2425.i = icmp ult i64 %i.p, %i.w
  br i1 %.not2425.i, label %mca_common_ompio_set_explicit_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = add i64 %i.z, %.026.i                   ; 2 uses
  %.not24.i = icmp ult i64 %i.p, %i.aa
  br i1 %.not24.i, label %..loopexit_crit_edge.i, label %.lr.ph.i, !llvm.loop !1

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i64 %.026.i, ptr %i.s, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit

mca_common_ompio_set_explicit_offset.exit:        ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ac = call i32 @mca_common_ompio_file_read_all(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %.not.i9 = icmp eq i64 %i.ad, 0
  br i1 %.not.i9, label %mca_common_ompio_set_explicit_offset.exit17, label %bb.c

bb.c:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.aj = mul i64 %i.ai, %i.ae                    ; 2 uses
  %i.ak = udiv i64 %i.aj, %i.ad
  %i.al = mul i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !82
  %i.aq = urem i64 %i.aj, %i.ad                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !84
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %.not2425.i10 = icmp ult i64 %i.aq, %i.ax
  br i1 %.not2425.i10, label %mca_common_ompio_set_explicit_offset.exit17, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %.lr.ph.i11 ], [ 0, %bb.c ]
  %.026.i13 = phi i64 [ %i.bb, %.lr.ph.i11 ], [ %i.ax, %bb.c ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next.i14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bb = add i64 %i.ba, %.026.i13                ; 2 uses
  %.not24.i15 = icmp ult i64 %i.aq, %i.bb
  br i1 %.not24.i15, label %..loopexit_crit_edge.i16, label %.lr.ph.i11, !llvm.loop !1

..loopexit_crit_edge.i16:                         ; preds = %.lr.ph.i11
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i14 to i32
  store i64 %.026.i13, ptr %i.at, align 8, !tbaa !84
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit17

mca_common_ompio_set_explicit_offset.exit17:      ; preds = %mca_common_ompio_set_explicit_offset.exit, %bb.c, %..loopexit_crit_edge.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_iread_all(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @mca_common_ompio_file_iread(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_file_iread_at_all(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @mca_common_ompio_file_get_position(ptr noundef %0, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mca_common_ompio_set_explicit_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = udiv i64 %i.i, %i.d
  %i.k = mul i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !82
  %i.p = urem i64 %i.i, %i.d                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.p, ptr %i.q, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not2425.i = icmp ult i64 %i.p, %i.w
  br i1 %.not2425.i, label %mca_common_ompio_set_explicit_offset.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67
  %i.aa = add i64 %i.z, %.026.i                   ; 2 uses
  %.not24.i = icmp ult i64 %i.p, %i.aa
  br i1 %.not24.i, label %..loopexit_crit_edge.i, label %.lr.ph.i, !llvm.loop !1

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i64 %.026.i, ptr %i.s, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit

mca_common_ompio_set_explicit_offset.exit:        ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !89 ; 2 uses
  %.not.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ag = call i32 %i.af(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #7, !inline_history !115
  br label %mca_common_ompio_file_iread_all.exit

bb.d:                                             ; preds = %mca_common_ompio_set_explicit_offset.exit
  %i.ah = call i32 @mca_common_ompio_file_iread(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %mca_common_ompio_file_iread_all.exit

mca_common_ompio_file_iread_all.exit:             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.ag, %bb.c ], [ %i.ah, %bb.d ]
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %.not.i10 = icmp eq i64 %i.ai, 0
  br i1 %.not.i10, label %mca_common_ompio_set_explicit_offset.exit18, label %bb.e

bb.e:                                             ; preds = %mca_common_ompio_file_iread_all.exit
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = mul i64 %i.an, %i.aj                    ; 2 uses
  %i.ap = udiv i64 %i.ao, %i.ai
  %i.aq = mul i64 %i.ap, %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.at = add i64 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !82
  %i.av = urem i64 %i.ao, %i.ai                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !67 ; 2 uses
  %.not2425.i11 = icmp ult i64 %i.av, %i.bc
  br i1 %.not2425.i11, label %mca_common_ompio_set_explicit_offset.exit18, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.e, %.lr.ph.i12
  %indvars.iv.i13 = phi i64 [ %indvars.iv.next.i15, %.lr.ph.i12 ], [ 0, %bb.e ]
  %.026.i14 = phi i64 [ %i.bg, %.lr.ph.i12 ], [ %i.bc, %bb.e ] ; 2 uses
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i13, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.next.i15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !67
  %i.bg = add i64 %i.bf, %.026.i14                ; 2 uses
  %.not24.i16 = icmp ult i64 %i.av, %i.bg
  br i1 %.not24.i16, label %..loopexit_crit_edge.i17, label %.lr.ph.i12, !llvm.loop !1

..loopexit_crit_edge.i17:                         ; preds = %.lr.ph.i12
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.i15 to i32
  store i64 %.026.i14, ptr %i.ay, align 8, !tbaa !84
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !68
  br label %mca_common_ompio_set_explicit_offset.exit18

mca_common_ompio_set_explicit_offset.exit18:      ; preds = %mca_common_ompio_file_iread_all.exit, %bb.e, %..loopexit_crit_edge.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

declare i32 @opal_convertor_prepare_for_recv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @opal_convertor_compute_remote_size(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11ompi_file_t", !11, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS16opal_convertor_t", !11, i64 0}
!17 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"p1 _ZTS5iovec", !11, i64 0}
!22 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!23 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !11, i64 0}
!24 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !11, i64 0}
!25 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !11, i64 0}
!26 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !11, i64 0}
!27 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !11, i64 0}
!28 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !11, i64 0}
!29 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !11, i64 0}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"ompio_file_t", !8, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !14, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 88, !17, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !8, i64 124, !18, i64 128, !8, i64 136, !18, i64 144, !18, i64 152, !8, i64 160, !8, i64 164, !19, i64 168, !20, i64 176, !11, i64 184, !21, i64 192, !8, i64 200, !22, i64 208, !18, i64 216, !18, i64 224, !8, i64 232, !18, i64 240, !18, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !18, i64 280, !23, i64 288, !8, i64 296, !24, i64 304, !24, i64 312, !24, i64 320, !24, i64 328, !25, i64 336, !26, i64 344, !27, i64 352, !28, i64 360, !29, i64 368, !29, i64 376, !30, i64 384, !8, i64 392, !8, i64 396, !30, i64 400, !30, i64 408, !8, i64 416, !30, i64 424, !8, i64 432, !11, i64 440, !11, i64 448}
!32 = !{!31, !8, i64 40}
!33 = !{!31, !8, i64 200}
!34 = !{!"ompi_status_public_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !18, i64 16}
!35 = !{!34, !18, i64 16}
!36 = !{!8, !8, i64 0}
!37 = !{!31, !8, i64 104}
!38 = !{!18, !18, i64 0}
!39 = !{!"p1 _ZTS19mca_ompio_request_t", !11, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!31, !27, i64 352}
!42 = !{!"mca_fbtl_base_module_1_0_0_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!43 = !{!42, !11, i64 24}
!44 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!45 = !{!"any p2 pointer", !11, i64 0}
!46 = !{!"opal_class_t", !15, i64 0, !44, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !45, i64 40, !45, i64 48, !18, i64 56}
!47 = !{!46, !8, i64 32}
!48 = !{!"opal_object_t", !44, i64 0, !8, i64 8}
!49 = !{!48, !44, i64 0}
!50 = !{!48, !8, i64 8}
!51 = !{!46, !45, i64 40}
!52 = !{!11, !11, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!31, !16, i64 88}
!55 = !{!"p1 _ZTS15opal_datatype_t", !11, i64 0}
!56 = !{!"p1 _ZTS14dt_type_desc_t", !11, i64 0}
!57 = !{!"p1 _ZTS10dt_stack_t", !11, i64 0}
!58 = !{!"p1 _ZTS23opal_convertor_master_t", !11, i64 0}
!59 = !{!"p1 _ZTS25opal_accelerator_stream_t", !11, i64 0}
!60 = !{!"opal_convertor_t", !48, i64 0, !8, i64 16, !8, i64 20, !18, i64 24, !18, i64 32, !55, i64 40, !56, i64 48, !18, i64 56, !8, i64 64, !15, i64 72, !57, i64 80, !11, i64 88, !58, i64 96, !8, i64 104, !18, i64 112, !18, i64 120, !8, i64 128, !8, i64 132, !18, i64 136, !7, i64 144, !11, i64 264, !59, i64 272}
!61 = !{!60, !58, i64 96}
!62 = !{!60, !18, i64 24}
!63 = !{!60, !8, i64 20}
!64 = !{!60, !18, i64 32}
!65 = !{!"iovec", !11, i64 0, !18, i64 8}
!66 = !{!65, !11, i64 0}
!67 = !{!65, !18, i64 8}
!68 = !{!31, !8, i64 232}
!69 = !{!31, !8, i64 296}
!70 = !{!31, !23, i64 288}
!71 = !{!60, !8, i64 64}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!60, !57, i64 80}
!74 = !{!60, !55, i64 40}
!75 = !{!60, !8, i64 104}
!76 = !{!21, !21, i64 0}
!77 = !{!31, !16, i64 80}
!78 = !{!31, !18, i64 248}
!79 = !{!31, !18, i64 240}
!80 = !{!31, !18, i64 280}
!81 = !{!31, !13, i64 24}
!82 = !{!31, !13, i64 16}
!83 = !{!31, !18, i64 224}
!84 = !{!31, !18, i64 216}
!85 = !{!31, !21, i64 192}
!86 = !{!13, !13, i64 0}
!87 = !{!31, !26, i64 344}
!88 = !{!"mca_fcoll_base_module_1_0_0_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!89 = !{!88, !11, i64 24}
!90 = distinct !{null}
!91 = distinct !{null, null}
!92 = distinct !{!92, !53, !99}
!93 = distinct !{null}
!94 = distinct !{!94, !53}
!95 = !{!31, !11, i64 448}
!96 = !{!42, !11, i64 16}
!97 = !{!"ompi_request_fns_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!98 = !{!97, !11, i64 32}
!99 = !{!"llvm.loop.peeled.count", i32 1}
!100 = distinct !{null}
!101 = !{!"p1 _ZTS16opal_list_item_t", !11, i64 0}
!102 = !{!"opal_list_item_t", !48, i64 0, !101, i64 16, !101, i64 24, !8, i64 32}
!103 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !11, i64 0}
!104 = !{!"opal_free_list_item_t", !102, i64 0, !103, i64 40, !11, i64 48}
!105 = !{!"ompi_request_t", !104, i64 0, !8, i64 56, !34, i64 64, !11, i64 88, !8, i64 96, !20, i64 100, !8, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !7, i64 152}
!106 = !{!"mca_ompio_request_t", !105, i64 0, !8, i64 160, !11, i64 168, !102, i64 176, !11, i64 216, !18, i64 224, !60, i64 232, !11, i64 512, !11, i64 520}
!107 = !{!106, !8, i64 72}
!108 = !{!106, !18, i64 80}
!109 = !{!105, !11, i64 136}
!110 = !{!105, !11, i64 88}
!111 = !{!19, !19, i64 0}
!112 = !{!106, !11, i64 216}
!113 = !{!106, !18, i64 224}
!114 = !{!88, !11, i64 16}
!115 = !{ptr @mca_common_ompio_file_iread_all}
end_hunk_1
