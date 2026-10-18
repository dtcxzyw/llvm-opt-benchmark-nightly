Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_iso9660?download=true
inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@write_directory_descriptors:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !78 ; 2 uses
  store ptr %i.cu, ptr %i.at, align 8, !tbaa !76
  %.not84.i = icmp eq ptr %i.cu, null
  br i1 %.not84.i, label %bb.s, label %bb.h, !llvm.loop !335

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cv = load i32, ptr %i.t, align 8, !tbaa !118
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next.i, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !336

._crit_edge.i:                                    ; preds = %bb.s
  %i.cy = ptrtoint ptr %i.cr to i64
  %i.cz = ptrtoint ptr %.2.i to i64
  %reass.sub.i = add i64 %i.cz, 2048
  %i.da = sub i64 %reass.sub.i, %i.cy
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cr, i8 0, i64 %i.da, i1 false)
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 66272 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !50 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 2048
  br i1 %i.de, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.df = add i64 %i.dd, -2048                    ; 2 uses
  store i64 %i.df, ptr %i.dc, align 8, !tbaa !50
  %i.dg = icmp ult i64 %i.df, 2048
  br i1 %i.dg, label %_write_directory_descriptors.exit, label %_write_directory_descriptors.exit.thread60

_write_directory_descriptors.exit:                ; preds = %bb.t, %bb.g
  %i.dh = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %.thread, label %_write_directory_descriptors.exit.thread60

_write_directory_descriptors.exit.thread60:       ; preds = %bb.t, %bb.g, %_write_directory_descriptors.exit
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !169
  %.not = icmp eq i32 %i.dj, 1
  br i1 %.not, label %.loopexit75, label %bb.u

bb.u:                                             ; preds = %_write_directory_descriptors.exit.thread60
  %i.dk = getelementptr inbounds nuw i8, ptr %.039, i64 208
  %.03685 = load ptr, ptr %i.dk, align 8, !tbaa !176 ; 2 uses
  %.not5286 = icmp eq ptr %.03685, null
  br i1 %.not5286, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %wb_consume.exit.thread
  %.03687 = phi ptr [ %.036, %wb_consume.exit.thread ], [ %.03685, %bb.u ] ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 732
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 66272
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !50
  %i.do = sub i64 65536, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.03687, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.03687, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !173
  %i.dt = sext i32 %i.ds to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 8 %i.dq, i64 %i.dt, i1 false)
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !173 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dp, i64 %i.dv
  %i.dx = sub nsw i32 2048, %i.du
  %i.dy = sext i32 %i.dx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dw, i8 0, i64 %i.dy, i1 false)
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 66272 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !50 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 2048
  br i1 %i.ec, label %.thread.sink.split, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.ed = add i64 %i.eb, -2048                    ; 2 uses
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !50
  %i.ee = icmp ult i64 %i.ed, 2048
  br i1 %i.ee, label %wb_consume.exit, label %wb_consume.exit.thread

wb_consume.exit:                                  ; preds = %bb.v
  %i.ef = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %wb_consume.exit.thread, label %.thread

wb_consume.exit.thread:                           ; preds = %bb.v, %wb_consume.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %.03687, i64 2056
  %.036 = load ptr, ptr %i.eh, align 8, !tbaa !176 ; 2 uses
  %.not52 = icmp eq ptr %.036, null
  br i1 %.not52, label %.loopexit75, label %.lr.ph, !llvm.loop !337

.loopexit75:                                      ; preds = %wb_consume.exit.thread, %bb.u, %_write_directory_descriptors.exit.thread60
  %i.ei = getelementptr inbounds nuw i8, ptr %.039, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !84 ; 2 uses
  %.not53 = icmp eq ptr %i.ej, null
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit75
  %i.ek = add nsw i32 %.037, 1                    ; 2 uses
  %i.el = load i32, ptr %i.d, align 8, !tbaa !124
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit75
  %i.en = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65 ; 2 uses
  %.not5488 = icmp eq ptr %.039, %i.eo
  br i1 %.not5488, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.x, %bb.y
  %i.ep = phi ptr [ %i.ev, %bb.y ], [ %i.eo, %bb.x ] ; 4 uses
  %.13890 = phi i32 [ %i.et, %bb.y ], [ %.037, %bb.x ] ; 2 uses
  %.14089 = phi ptr [ %i.ep, %bb.y ], [ %.039, %bb.x ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.14089, i64 120
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !119 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph91
  %i.et = add nsw i32 %.13890, -1                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65 ; 2 uses
  %.not54 = icmp eq ptr %i.ep, %i.ev
  br i1 %.not54, label %.loopexit, label %.lr.ph91, !llvm.loop !338

.loopexit:                                        ; preds = %bb.y, %.lr.ph91, %bb.x, %bb.w
  %.3 = phi ptr [ %i.ej, %bb.w ], [ %.039, %bb.x ], [ %i.ep, %bb.y ], [ %i.er, %.lr.ph91 ] ; 3 uses
  %.2 = phi i32 [ %i.ek, %bb.w ], [ %.037, %bb.x ], [ %i.et, %bb.y ], [ %.13890, %.lr.ph91 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  %.not55 = icmp eq ptr %.3, %i.ex
  br i1 %.not55, label %.thread, label %bb.b, !llvm.loop !339

.thread.sink.split:                               ; preds = %._crit_edge.i, %bb.f, %.lr.ph, %bb.i
  %.lcssa.sink = phi i64 [ %i.bc, %bb.i ], [ %i.eb, %.lr.ph ], [ %i.dd, %._crit_edge.i ], [ %i.ag, %bb.f ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef 2048, i64 noundef %.lcssa.sink) #23
  br label %.thread

.thread:                                          ; preds = %_write_directory_descriptors.exit, %.loopexit, %wb_consume.exit, %wb_write_out.exit, %.thread.sink.split
  %.5 = phi i32 [ -30, %.thread.sink.split ], [ %.0.i56, %wb_write_out.exit ], [ %i.ef, %wb_consume.exit ], [ 0, %.loopexit ], [ %i.dh, %_write_directory_descriptors.exit ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_rr_ER(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 732
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 66272
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %i.e = sub i64 65536, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1811) %i.g, i8 0, i64 1811, i1 false)
  store <8 x i8> <i8 69, i8 82, i8 -19, i8 1, i8 10, i8 84, i8 -121, i8 1>, ptr %i.f, align 1, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) @rrip_identifier, i64 10, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(84) %i.i, ptr noundef nonnull align 16 dereferenceable(84) @rrip_descriptor, i64 84, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(135) %i.j, ptr noundef nonnull align 16 dereferenceable(135) @rrip_source, i64 135, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 66272 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50   ; 3 uses
  %i.n = icmp ult i64 %i.m, 2048
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef 2048, i64 noundef %i.m) #23
  br label %wb_consume.exit

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.m, -2048                      ; 2 uses
  store i64 %i.o, ptr %i.l, align 8, !tbaa !50
  %i.p = icmp ult i64 %i.o, 2048
  br i1 %i.p, label %bb.d, label %wb_consume.exit

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  br label %wb_consume.exit

wb_consume.exit:                                  ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ -30, %bb.b ], [ %i.q, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @write_file_descriptors(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %make_boot_catalog.exit.thread61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 66272
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  %i.h = sub i64 65536, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2047) %i.j, i8 0, i64 2047, i1 false)
  store i8 1, ptr %i.i, align 1, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 66376
  %i.l = load i8, ptr %i.k, align 8, !tbaa !342
  store i8 %i.l, ptr %i.j, align 1, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 0, ptr %i.m, align 1, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.n, align 1, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 66392
  %i.p = load i64, ptr %i.o, align 8, !tbaa !116
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 66384
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !343
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 23) #23 ; 0 uses
  %1 = load <11 x i16>, ptr %i.r, align 1
  %2 = shufflevector <11 x i16> %1, <11 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %3 = phi <16 x i16> [ %2, %bb.c ], [ <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 27
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 30
  store <4 x i8> <i8 0, i8 0, i8 0, i8 85>, ptr %i.u, align 1, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 31
  store i8 -86, ptr %i.x, align 1, !tbaa !68
  %.0.ptr.13.i = getelementptr inbounds nuw i8, ptr %i.i, i64 26
  %4 = load <2 x i16>, ptr %i.i, align 1
  %5 = load <2 x i16>, ptr %.0.ptr.13.i, align 1
  %.0.ptr.val.13.i = load i16, ptr %i.w, align 1
  %6 = shufflevector <2 x i16> %4, <2 x i16> %5, <5 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison>
  %7 = insertelement <5 x i16> %6, i16 %.0.ptr.val.13.i, i64 4
  %8 = shufflevector <5 x i16> %7, <5 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <16 x i16> %3, <16 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 20>
  %10 = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %9)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.z = sub i16 0, %10
  store i16 %i.z, ptr %i.v, align 1
  store i8 -120, ptr %i.y, align 1, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 66408 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !68
  %i.ad = icmp eq i8 %i.ab, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 66410
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i16 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 34
  store i16 %.sink.i, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 66409
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 37
  store i8 0, ptr %i.ak, align 1, !tbaa !68
  %i.al = load i8, ptr %i.aa, align 8, !tbaa !114
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 66412
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink47.i = phi i16 [ %i.ao, %bb.g ], [ 1, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  store i16 %.sink47.i, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 66368
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 164
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !145
  store i32 %i.aw, ptr %i.aq, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 66272 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 2048
  br i1 %i.bb, label %make_boot_catalog.exit.thread, label %bb.i

make_boot_catalog.exit.thread:                    ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef 2048, i64 noundef %i.ba) #23
  br label %.loopexit63

bb.i:                                             ; preds = %bb.h
  %i.bc = add i64 %i.ba, -2048                    ; 2 uses
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !50
  %i.bd = icmp ult i64 %i.bc, 2048
  br i1 %i.bd, label %make_boot_catalog.exit, label %make_boot_catalog.exit.thread61

make_boot_catalog.exit:                           ; preds = %bb.i
  %i.be = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit63, label %make_boot_catalog.exit.thread61

make_boot_catalog.exit.thread61:                  ; preds = %bb.i, %make_boot_catalog.exit, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 66368
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !108 ; 2 uses
  %.not55 = icmp eq ptr %i.bh, null
  br i1 %.not55, label %bb.l, label %bb.j

bb.j:                                             ; preds = %make_boot_catalog.exit.thread61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !146
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !99 ; 2 uses
  %.not56 = icmp eq i64 %i.bo, 0
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = shl nsw i64 %i.bn, 11
  %i.bq = tail call fastcc i32 @write_file_contents(ptr noundef nonnull %0, i64 noundef %i.bo, i64 noundef %i.bp) ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.loopexit63, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %make_boot_catalog.exit.thread61
  %.042 = phi i64 [ 0, %make_boot_catalog.exit.thread61 ], [ %i.bn, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.04668 = load ptr, ptr %i.bs, align 8, !tbaa !81 ; 2 uses
  %.not5769 = icmp eq ptr %.04668, null
  br i1 %.not5769, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.r
  %.04672 = phi ptr [ %.046, %bb.r ], [ %.04668, %bb.l ] ; 4 uses
  %.171 = phi i64 [ %.3, %bb.r ], [ 0, %bb.l ]    ; 4 uses
  %.14370 = phi i64 [ %.4, %bb.r ], [ %.042, %bb.l ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04672, i64 184
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !148
  %.not58 = icmp eq i32 %i.bu, 0
  br i1 %.not58, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bv = shl i64 %.14370, 11                     ; 2 uses
  %i.bw = add nsw i64 %.171, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.04672, i64 144 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !99 ; 2 uses
  %i.bz = icmp slt i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ca = icmp sgt i64 %.14370, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = tail call fastcc i32 @write_file_contents(ptr noundef %0, i64 noundef %.171, i64 noundef %i.bv) ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit63, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.o
  %.pre = load i64, ptr %i.bx, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge76, %bb.m
  %.244 = phi i64 [ %.14370, %bb.m ], [ 0, %._crit_edge76 ], [ 0, %bb.n ]
  %.2 = phi i64 [ %.171, %bb.m ], [ %.pre, %._crit_edge76 ], [ %i.by, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.04672, i64 176
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.ce = phi ptr [ %i.bx, %bb.p ], [ %i.ck, %bb.q ] ; 2 uses
  %.345 = phi i64 [ %.244, %bb.p ], [ %i.ci, %bb.q ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !106
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %.345, %i.ch                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !78 ; 2 uses
  %.not59 = icmp eq ptr %i.ck, null
  br i1 %.not59, label %.loopexit, label %bb.q, !llvm.loop !340

.loopexit:                                        ; preds = %bb.q
  store ptr null, ptr %i.cd, align 8, !tbaa !76
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.lr.ph
  %.4 = phi i64 [ %.14370, %.lr.ph ], [ %i.ci, %.loopexit ] ; 2 uses
  %.3 = phi i64 [ %.171, %.lr.ph ], [ %.2, %.loopexit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.04672, i64 8
  %.046 = load ptr, ptr %i.cl, align 8, !tbaa !81 ; 2 uses
  %.not57 = icmp eq ptr %.046, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph, !llvm.loop !341

._crit_edge:                                      ; preds = %bb.r, %bb.l
  %.143.lcssa = phi i64 [ %.042, %bb.l ], [ %.4, %bb.r ] ; 2 uses
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.3, %bb.r ]
  %i.cm = icmp sgt i64 %.143.lcssa, 0
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cn = shl i64 %.143.lcssa, 11
  %i.co = tail call fastcc i32 @write_file_contents(ptr noundef %0, i64 noundef %.1.lcssa, i64 noundef %i.cn) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.loopexit63, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  br label %.loopexit63

.loopexit63:                                      ; preds = %bb.o, %make_boot_catalog.exit.thread, %bb.s, %bb.k, %make_boot_catalog.exit, %bb.t
  %.047 = phi i32 [ 0, %bb.t ], [ %i.be, %make_boot_catalog.exit ], [ %i.bq, %bb.k ], [ -30, %make_boot_catalog.exit.thread ], [ %i.co, %bb.s ], [ %i.cb, %bb.o ]
  ret i32 %.047
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare i32 @cm_zlib_inflateEnd(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_pathname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@write_file_contents:bb.a
  %.not = icmp eq i64 %.023, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 732
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 66272
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = sub i64 65536, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %.023)
  %i.k = load i32, ptr %i.c, align 8, !tbaa !45
  %i.l = tail call i64 @read(i32 noundef %i.k, ptr noundef nonnull %i.j, i64 noundef %spec.select) #23 ; 6 uses
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.n = tail call ptr @__errno_location() #26
  %i.o = load i32, ptr %i.n, align 4, !tbaa !90
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.o, ptr noundef nonnull @.str.64, i64 noundef %i.l) #23
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 %.023, %i.l
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 66272 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50   ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %.thread33, label %bb.e

.thread33:                                        ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef %i.l, i64 noundef %i.s) #23
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %i.s, %i.l                   ; 2 uses
  store i64 %i.u, ptr %i.r, align 8, !tbaa !50
  %i.v = icmp ult i64 %i.u, 2048
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.w, %bb.f ]   ; 2 uses
  %i.x = icmp sgt i32 %.0.i, -1
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !388

.loopexit:                                        ; preds = %bb.b, %bb.g, %.thread33, %.thread
  %.2 = phi i32 [ -30, %.thread ], [ -30, %.thread33 ], [ 0, %bb.b ], [ %.0.i, %bb.g ]
  ret i32 %.2
}

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @isoent_free_all(ptr noundef captures(address) %0) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0 = phi ptr [ %.0.be, %.preheader.backedge ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 232
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.preheader37, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %.preheader37, label %.preheader.backedge

.preheader37:                                     ; preds = %bb.b, %.preheader
  br label %bb.c

bb.c:                                             ; preds = %.preheader37, %_isoent_free.exit
  %.1 = phi ptr [ %i.k, %_isoent_free.exit ], [ %.0, %.preheader37 ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147
  tail call void @free(ptr noundef %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.o) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 208
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 2 uses
  %.not8.i = icmp eq ptr %i.q, null
  br i1 %.not8.i, label %_isoent_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i, i64 2056
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !161  ; 2 uses
  tail call void @free(ptr noundef nonnull %.09.i) #23
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_isoent_free.exit, label %.lr.ph.i, !llvm.loop !5

_isoent_free.exit:                                ; preds = %.lr.ph.i, %bb.d
  tail call void @free(ptr noundef nonnull %.1) #23
  %i.t = icmp eq ptr %i.k, %.1
  br i1 %i.t, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !147
  tail call void @free(ptr noundef %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86   ; 2 uses
  %.not8.i18 = icmp eq ptr %i.z, null
  br i1 %.not8.i18, label %_isoent_free.exit22, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.e, %.lr.ph.i19
  %.09.i20 = phi ptr [ %i.ab, %.lr.ph.i19 ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i20, i64 2056
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161 ; 2 uses
  tail call void @free(ptr noundef nonnull %.09.i20) #23
  %.not.i21 = icmp eq ptr %i.ab, null
  br i1 %.not.i21, label %_isoent_free.exit22, label %.lr.ph.i19, !llvm.loop !5

_isoent_free.exit22:                              ; preds = %.lr.ph.i19, %bb.e
  tail call void @free(ptr noundef nonnull %.1) #23
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %_isoent_free.exit22, %bb.b
  %.0.be = phi ptr [ %i.f, %bb.b ], [ %i.h, %_isoent_free.exit22 ]
  br label %.preheader

.loopexit:                                        ; preds = %_isoent_free.exit, %bb.a
  ret void
}

declare i32 @cm_zlib_deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @isofile_hd_cmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = tail call ptr @archive_entry_pathname(ptr noundef %i.d) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = tail call ptr @archive_entry_pathname(ptr noundef %i.i) #23
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.j) #25
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @isofile_hd_cmp_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = tail call ptr @archive_entry_pathname(ptr noundef %i.d) #23
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %1) #25
  ret i32 %i.f
}

declare void @archive_entry_unset_mtime(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_unset_atime(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_unset_ctime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v16i16(<16 x i16>) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(1) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !79}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{!3, !79}
!4 = distinct !{!4, !79}
!5 = distinct !{!5, !79}
!6 = distinct !{!6, !79}
!7 = distinct !{!7, !79}
!8 = distinct !{!8, !79}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS14archive_vtable", !18, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!"long", !14, i64 0}
!22 = !{!"archive_string", !20, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"p1 _ZTS19archive_string_conv", !18, i64 0}
!24 = !{!"archive", !15, i64 0, !15, i64 4, !19, i64 8, !15, i64 16, !20, i64 24, !15, i64 32, !15, i64 36, !20, i64 40, !22, i64 48, !20, i64 72, !15, i64 80, !15, i64 84, !23, i64 88, !20, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !14, i64 128, !21, i64 136}
!25 = !{!"p1 _ZTS20archive_write_filter", !18, i64 0}
!26 = !{!"archive_write", !24, i64 0, !15, i64 144, !21, i64 152, !21, i64 160, !20, i64 168, !21, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !15, i64 224, !15, i64 228, !25, i64 232, !25, i64 240, !18, i64 248, !20, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !20, i64 320, !18, i64 328, !18, i64 336}
!27 = !{!"p1 _ZTS7isofile", !18, i64 0}
!28 = !{!"p1 _ZTS6isoent", !18, i64 0}
!29 = !{!"any p2 pointer", !18, i64 0}
!30 = !{!"p2 _ZTS7isofile", !29, i64 0}
!31 = !{!"", !27, i64 0, !30, i64 8}
!32 = !{!"p1 _ZTS15archive_rb_node", !18, i64 0}
!33 = !{!"p1 _ZTS19archive_rb_tree_ops", !18, i64 0}
!34 = !{!"archive_rb_tree", !32, i64 0, !33, i64 8}
!35 = !{!"p1 _ZTS10path_table", !18, i64 0}
!36 = !{!"vdd", !28, i64 0, !15, i64 8, !35, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!37 = !{!"p1 int", !18, i64 0}
!38 = !{!"p1 _ZTS14internal_state", !18, i64 0}
!39 = !{!"z_stream_s", !20, i64 0, !15, i64 8, !21, i64 16, !20, i64 24, !15, i64 32, !21, i64 40, !20, i64 48, !38, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !15, i64 88, !21, i64 96, !21, i64 104}
!40 = !{!"", !15, i64 0, !15, i64 0, !15, i64 0, !14, i64 1, !15, i64 68, !37, i64 72, !21, i64 80, !15, i64 88, !15, i64 92, !21, i64 96, !21, i64 104, !39, i64 112, !15, i64 224, !21, i64 232, !15, i64 240}
!41 = !{!"short", !14, i64 0}
!42 = !{!"", !22, i64 0, !28, i64 24, !22, i64 32, !28, i64 56, !14, i64 64, !22, i64 72, !14, i64 96, !14, i64 97, !41, i64 98, !41, i64 100}
!43 = !{!"iso_option", !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 3, !15, i64 3}
!44 = !{!"iso9660", !21, i64 0, !15, i64 8, !27, i64 16, !28, i64 24, !22, i64 32, !21, i64 56, !15, i64 64, !22, i64 72, !22, i64 96, !23, i64 120, !23, i64 128, !31, i64 136, !31, i64 152, !34, i64 168, !36, i64 184, !36, i64 232, !15, i64 280, !15, i64 284, !15, i64 288, !22, i64 296, !22, i64 320, !22, i64 344, !22, i64 368, !22, i64 392, !22, i64 416, !22, i64 440, !15, i64 464, !40, i64 472, !28, i64 720, !15, i64 728, !14, i64 732, !21, i64 66272, !15, i64 66280, !21, i64 66288, !21, i64 66296, !21, i64 66304, !42, i64 66312, !43, i64 66416}
!45 = !{!44, !15, i64 8}
!46 = !{!44, !30, i64 144}
!47 = !{!44, !30, i64 160}
!48 = !{!44, !28, i64 720}
!49 = !{!44, !15, i64 728}
!50 = !{!44, !21, i64 66272}
!51 = !{!44, !15, i64 66280}
!52 = !{!44, !41, i64 66410}
!53 = !{!44, !41, i64 66412}
!54 = !{!44, !15, i64 696}
!55 = !{!44, !15, i64 712}
!56 = !{!44, !28, i64 184}
!57 = !{!"archive_rb_node", !14, i64 0, !21, i64 16}
!58 = !{!"p2 _ZTS6isoent", !29, i64 0}
!59 = !{!"", !28, i64 0, !58, i64 8, !15, i64 16}
!60 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!61 = !{!"p1 _ZTS8extr_rec", !18, i64 0}
!62 = !{!"p2 _ZTS8extr_rec", !29, i64 0}
!63 = !{!"", !61, i64 0, !62, i64 8, !61, i64 16}
!64 = !{!"isoent", !57, i64 0, !27, i64 24, !28, i64 32, !59, i64 40, !34, i64 64, !59, i64 80, !58, i64 104, !28, i64 112, !28, i64 120, !28, i64 128, !15, i64 136, !60, i64 140, !15, i64 156, !15, i64 160, !20, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !28, i64 192, !28, i64 200, !63, i64 208, !15, i64 232, !15, i64 232}
!65 = !{!64, !28, i64 32}
!66 = !{!44, !28, i64 24}
!67 = !{!44, !20, i64 32}
!68 = !{!14, !14, i64 0}
!69 = !{!26, !18, i64 248}
!70 = !{!"p1 _ZTS13archive_entry", !18, i64 0}
!71 = !{!"p1 _ZTS7content", !18, i64 0}
!72 = !{!"content", !21, i64 0, !21, i64 8, !15, i64 16, !15, i64 20, !71, i64 24}
!73 = !{!"", !14, i64 0, !14, i64 1, !15, i64 4}
!74 = !{!"isofile", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !70, i64 32, !22, i64 40, !22, i64 64, !22, i64 88, !22, i64 112, !15, i64 136, !72, i64 144, !71, i64 176, !15, i64 184, !15, i64 188, !73, i64 192}
!75 = !{!74, !70, i64 32}
!76 = !{!74, !71, i64 176}
!77 = !{!74, !71, i64 168}
!78 = !{!72, !71, i64 24}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!74, !27, i64 0}
!81 = !{!27, !27, i64 0}
!82 = !{!64, !27, i64 24}
!83 = !{!64, !58, i64 48}
!84 = !{!64, !28, i64 80}
!85 = !{!64, !58, i64 88}
!86 = !{!64, !61, i64 208}
!87 = !{!64, !62, i64 216}
!88 = !{!64, !61, i64 224}
!89 = !{!22, !21, i64 8}
!90 = !{!15, !15, i64 0}
!91 = !{!44, !27, i64 16}
!92 = !{!44, !21, i64 56}
!93 = !{!44, !15, i64 64}
!94 = !{!74, !21, i64 48}
!95 = !{!74, !21, i64 72}
!96 = !{!28, !28, i64 0}
!97 = !{!74, !15, i64 136}
!98 = !{!44, !21, i64 66288}
!99 = !{!74, !21, i64 144}
!100 = !{!74, !21, i64 152}
!101 = !{!44, !21, i64 568}
!102 = !{!74, !15, i64 196}
!103 = !{!44, !15, i64 560}
!104 = !{!44, !37, i64 544}
!105 = !{!72, !21, i64 8}
!106 = !{!72, !15, i64 16}
!107 = !{!44, !20, i64 66344}
!108 = !{!44, !28, i64 66368}
!109 = !{!74, !14, i64 192}
!110 = !{!74, !14, i64 193}
!111 = !{!44, !20, i64 66312}
!112 = !{!44, !21, i64 0}
!113 = !{!44, !28, i64 66336}
!114 = !{!44, !14, i64 66408}
!115 = !{!44, !14, i64 66409}
!116 = !{!44, !21, i64 66392}
!117 = !{!64, !28, i64 112}
!118 = !{!64, !15, i64 56}
!119 = !{!64, !28, i64 120}
!120 = !{!64, !15, i64 96}
!121 = !{!64, !28, i64 40}
!122 = !{!44, !23, i64 120}
!123 = !{!44, !23, i64 128}
!124 = !{!36, !15, i64 24}
!125 = !{!36, !35, i64 16}
!126 = !{!"path_table", !28, i64 0, !58, i64 8, !58, i64 16, !15, i64 24}
!127 = !{!126, !58, i64 16}
!128 = !{!126, !15, i64 24}
!129 = !{!36, !28, i64 0}
!130 = !{!44, !35, i64 200}
!131 = !{!64, !28, i64 192}
!132 = !{!64, !28, i64 200}
!133 = !{!"hardlink", !57, i64 0, !15, i64 24, !31, i64 32}
!134 = !{!133, !27, i64 32}
!135 = !{!133, !15, i64 24}
!136 = !{!74, !27, i64 16}
!137 = !{!74, !27, i64 24}
!138 = !{!44, !15, i64 208}
!139 = !{!44, !15, i64 256}
!140 = !{!64, !20, i64 168}
!141 = !{!64, !15, i64 184}
!142 = !{!36, !15, i64 32}
!143 = !{!36, !15, i64 28}
!144 = !{!44, !15, i64 464}
!145 = !{!74, !15, i64 164}
!146 = !{!74, !15, i64 160}
!147 = !{!64, !58, i64 104}
!148 = !{!74, !15, i64 184}
!149 = !{!72, !15, i64 20}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!44, !15, i64 280}
!153 = !{!44, !15, i64 284}
!154 = !{!74, !21, i64 96}
!155 = !{!21, !21, i64 0}
!156 = !{!20, !20, i64 0}
!157 = !{!74, !20, i64 88}
!158 = !{!74, !20, i64 40}
!159 = !{!74, !20, i64 64}
!160 = !{!"extr_rec", !15, i64 0, !15, i64 4, !14, i64 8, !61, i64 2056}
!161 = !{!160, !61, i64 2056}
!162 = !{!22, !20, i64 0}
!163 = !{!44, !15, i64 540}
!164 = !{!44, !15, i64 564}
!165 = !{!44, !21, i64 704}
end_hunk_1
