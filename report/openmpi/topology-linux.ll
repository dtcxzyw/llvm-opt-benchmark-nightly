Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-linux?download=true
inline.NumInlined: 369
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hwloc_linuxfs_look_cpu:bb.a

.preheader.i.i.i.i.i.i232:                        ; preds = %.lr.ph344.i, %.preheader.i.i.i.i.i.i232
  %.0.i.i.i.i.i.i233 = phi ptr [ %i.ayh, %.preheader.i.i.i.i.i.i232 ], [ %i.w, %.lr.ph344.i ] ; 3 uses
  %i.ayf = load i8, ptr %.0.i.i.i.i.i.i233, align 1, !tbaa !19
  %i.ayg = icmp eq i8 %i.ayf, 47
  %i.ayh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i233, i64 1
  br i1 %i.ayg, label %.preheader.i.i.i.i.i.i232, label %hwloc_open.exit.i.i.i215, !llvm.loop !0

hwloc_open.exit.i.i.i215:                         ; preds = %.preheader.i.i.i.i.i.i232, %.lr.ph344.i
  %.1.i8.i.i.i.i.i216 = phi ptr [ %i.w, %.lr.ph344.i ], [ %.0.i.i.i.i.i.i233, %.preheader.i.i.i.i.i.i232 ]
  %i.ayi = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.ayd, ptr noundef nonnull %.1.i8.i.i.i.i.i216, i32 noundef 0) #29 ; 3 uses
  %i.ayj = icmp slt i32 %i.ayi, 0
  br i1 %i.ayj, label %hwloc_read_path_as_int.exit.thread.i231, label %bb.kw

bb.kw:                                            ; preds = %hwloc_open.exit.i.i.i215
  %i.ayk = call i64 @read(i32 noundef %i.ayi, ptr noundef nonnull %i.o, i64 noundef 10) #29 ; 2 uses
  %i.ayl = call i32 @close(i32 noundef %i.ayi) #29 ; 0 uses
  %i.aym = icmp slt i64 %i.ayk, 1
  br i1 %i.aym, label %hwloc_read_path_as_int.exit.thread.i231, label %bb.kx

hwloc_read_path_as_int.exit.thread.i231:          ; preds = %bb.kw, %hwloc_open.exit.i.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  br label %.loopexit322.i

bb.kx:                                            ; preds = %bb.kw
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ayk
  store i8 0, ptr %i.ayn, align 1, !tbaa !19
  %i.ayo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.ayp = trunc i64 %i.ayo to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  %i.ayq = load i32, ptr %i.q, align 4, !tbaa !18 ; 2 uses
  %.not387.i = icmp eq i32 %i.ayq, 0
  br i1 %.not387.i, label %.loopexit322.i, label %.lr.ph342.preheader.i

.lr.ph342.preheader.i:                            ; preds = %bb.kx
  %wide.trip.count419.i = zext i32 %i.ayq to i64
  br label %.lr.ph342.i

.lr.ph342.i:                                      ; preds = %bb.la, %.lr.ph342.preheader.i
  %indvars.iv416.i = phi i64 [ 0, %.lr.ph342.preheader.i ], [ %indvars.iv.next417.i, %bb.la ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.aue, i64 %indvars.iv416.i
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !50 ; 3 uses
  %.not268.i = icmp eq ptr %i.ays, null
  br i1 %.not268.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.lr.ph342.i
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %i.ayu = load i32, ptr %i.ayt, align 8, !tbaa !114
  %i.ayv = icmp eq i32 %i.ayu, %i.ayp
  br i1 %i.ayv, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.ayw = call i32 @hwloc_obj_add_info(ptr noundef nonnull %i.ays, ptr noundef nonnull @.str.273, ptr noundef nonnull %i.ayb) #29 ; 0 uses
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %.lr.ph342.i
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond420.not.i = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count419.i
  br i1 %exitcond420.not.i, label %.loopexit322.i, label %.lr.ph342.i, !llvm.loop !237

.loopexit322.i:                                   ; preds = %bb.la, %bb.kx, %hwloc_read_path_as_int.exit.thread.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #29
  %i.ayx = call ptr @readdir(ptr noundef nonnull %i.axy) #29 ; 2 uses
  %.not248.i = icmp eq ptr %i.ayx, null
  br i1 %.not248.i, label %._crit_edge345.i, label %.lr.ph344.i, !llvm.loop !238

._crit_edge345.i:                                 ; preds = %.loopexit322.i, %.preheader323.i
  %i.ayy = call i32 @closedir(ptr noundef nonnull %i.axy) ; 0 uses
  br label %hwloc_opendir.exit284.thread.i

hwloc_opendir.exit284.thread.i:                   ; preds = %._crit_edge345.i, %hwloc_opendir.exit284.i, %hwloc_opendir.exit.thread.i214
  %i.ayz = load ptr, ptr %i.aur, align 8, !tbaa !264 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1
  store i8 1, ptr %i.aza, align 1, !tbaa !270
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 2
  store i8 1, ptr %i.azb, align 1, !tbaa !271
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 4
  store i8 1, ptr %i.azc, align 1, !tbaa !272
  call void @hwloc_bitmap_free(ptr noundef %i.auk) #29
  %i.azd = load i32, ptr %i.q, align 4, !tbaa !18 ; 29 uses
  %i.aze = icmp ult i32 %i.azd, 2
  %i.azf = getelementptr inbounds nuw i8, ptr %i.bu, i64 36 ; 2 uses
  br i1 %i.aze, label %.thread.i230, label %bb.lb

.thread.i230:                                     ; preds = %hwloc_opendir.exit284.thread.i
  store i32 0, ptr %i.azf, align 4, !tbaa !81
  br label %.sink.split.i229

bb.lb:                                            ; preds = %hwloc_opendir.exit284.thread.i
  %.pre.i217 = load i32, ptr %i.azf, align 4, !tbaa !81
  %i.azg = icmp eq i32 %.pre.i217, 0
  br i1 %i.azg, label %.sink.split.i229, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.azh = load i32, ptr %i.bv, align 8, !tbaa !79
  %i.azi = call fastcc i32 @hwloc_parse_nodes_distances(ptr noundef nonnull %.1.i121, i32 noundef %i.azd, ptr noundef %i.aub, ptr noundef %i.auj, i32 noundef %i.azh)
  %i.azj = icmp slt i32 %i.azi, 0
  br i1 %i.azj, label %.sink.split.i229, label %bb.ld

.sink.split.i229:                                 ; preds = %bb.lc, %bb.lb, %.thread.i230
  call void @free(ptr noundef %i.auj) #29
  br label %bb.ld

bb.ld:                                            ; preds = %.sink.split.i229, %bb.lc
  %.1217.i = phi ptr [ %i.auj, %bb.lc ], [ null, %.sink.split.i229 ] ; 13 uses
  call void @free(ptr noundef %i.aub) #29
  %i.azk = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !75
  %.not251.i = icmp eq i32 %i.azl, 0
  br i1 %.not251.i, label %.thread316.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.azm = call ptr @getenv(ptr noundef nonnull @.str.274) #29 ; 2 uses
  %.not252.i = icmp eq ptr %i.azm, null
  br i1 %.not252.i, label %.critedge275.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.azn = call i64 @__isoc23_strtol(ptr noundef nonnull %i.azm, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.azo = and i64 %i.azn, 4294967295
  %.not253.i = icmp eq i64 %i.azo, 0
  br i1 %.not253.i, label %.thread316.i, label %.critedge275.i

.critedge275.i:                                   ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.azp = call ptr @getenv(ptr noundef nonnull @.str.277) #29 ; 2 uses
  %.not.i286.i = icmp eq ptr %i.azp, null
  br i1 %.not.i286.i, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %.critedge275.i
  %i.azq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.azp, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.azr = trunc i64 %i.azq to i32
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %.critedge275.i
  %i.azs = phi i32 [ %i.azr, %bb.lg ], [ -1, %.critedge275.i ] ; 2 uses
  %i.azt = call ptr @getenv(ptr noundef nonnull @.str.278) #29 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.azt, null
  br i1 %.not112.i.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.azu = call i64 @__isoc23_strtol(ptr noundef nonnull %i.azt, ptr noundef null, i32 noundef 10) #29, !inline_history !6
  %i.azv = trunc i64 %i.azu to i32
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.azw = phi i32 [ %i.azv, %bb.li ], [ 1, %bb.lh ] ; 15 uses
  %i.azx = load i32, ptr %i.r, align 4, !tbaa !18
  %.not113.i.i = icmp eq i32 %i.azx, 0
  br i1 %.not113.i.i, label %bb.lk, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lk:                                            ; preds = %bb.lj
  store i32 1, ptr %4, align 8, !tbaa !119
  %i.azy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 10, ptr %i.azz, align 8, !tbaa !121
  store i32 %i.azd, ptr %i.azy, align 8, !tbaa !122
  %i.baa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.azd)
  %i.bab = icmp eq i32 %i.baa, 1
  br i1 %i.bab, label %.split.i.i.i, label %bb.ll

.split.i.i.i:                                     ; preds = %bb.lk
  %i.bac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.azd, i1 true) ; 2 uses
  switch i32 %i.bac, label %bb.ll [
    i32 0, label %hwloc_linux_knl_parse_numa_distances.exit.i.i
    i32 3, label %bb.ln
    i32 2, label %bb.ln
    i32 1, label %bb.ln
  ]

bb.ll:                                            ; preds = %.split.i.i.i, %bb.lk
  %i.bad = call i32 @hwloc_hide_errors() #29
  %i.bae = icmp slt i32 %i.bad, 2
  br i1 %i.bae, label %bb.lm, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lm:                                            ; preds = %bb.ll
  %i.baf = load ptr, ptr @stderr, align 8, !tbaa !87
  %i.bag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.baf, ptr noundef nonnull @.str.299, i32 noundef %i.azd) #37 ; 0 uses
  br label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.ln:                                            ; preds = %.split.i.i.i, %.split.i.i.i, %.split.i.i.i
  %.not.i.i.i = icmp eq ptr %.1217.i, null
  br i1 %.not.i.i.i, label %bb.lo, label %.lr.ph101.preheader.i.i.i

.lr.ph101.preheader.i.i.i:                        ; preds = %bb.ln
  %i.bah = zext i32 %i.azd to i64                 ; 2 uses
  br label %.lr.ph101.i.i.i

bb.lo:                                            ; preds = %bb.ln
  %i.bai = call i32 @hwloc_hide_errors() #29
  %i.baj = icmp slt i32 %i.bai, 2
  br i1 %i.baj, label %bb.lp, label %.lr.ph.preheader.i.i

bb.lp:                                            ; preds = %bb.lo
  %i.bak = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.300, i64 63, i64 1, ptr %i.bak) #36 ; 0 uses
  br label %.lr.ph.preheader.i.i

.loopexit90.i.i.i:                                ; preds = %bb.mb, %bb.ls
  %i.bal = phi i32 [ %i.bam, %bb.ls ], [ %i.bcc, %bb.mb ] ; 2 uses
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i.a, 1
  %exitcond118.not.i.i.i = icmp eq i64 %indvars.iv.next115.i.i.i, %i.bah
  br i1 %exitcond118.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph101.i.i.i, !llvm.loop !239

.lr.ph101.i.i.i:                                  ; preds = %.loopexit90.i.i.i, %.lr.ph101.preheader.i.i.i
  %i.bam = phi i32 [ 1, %.lr.ph101.preheader.i.i.i ], [ %i.bal, %.loopexit90.i.i.i ] ; 2 uses
  %indvars.iv114.i.i.i = phi i64 [ 0, %.lr.ph101.preheader.i.i.i ], [ %indvars.iv.next115.i.i.i, %.loopexit90.i.i.i ] ; 2 uses
  %indvars.iv108.i.i.i.a = phi i64 [ 1, %.lr.ph101.preheader.i.i.i ], [ %indvars.iv.next109.i.i.i, %.loopexit90.i.i.i ] ; 2 uses
  %i.ban = trunc nuw i64 %indvars.iv114.i.i.i to i32 ; 3 uses
  %i.bao = mul i32 %i.azd, %i.ban                 ; 2 uses
  %i.bap = add i32 %i.bao, %i.ban
  %i.baq = zext i32 %i.bap to i64
  %i.bar = getelementptr inbounds nuw [8 x i8], ptr %.1217.i, i64 %i.baq
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !22
  %.not84.i.i.i = icmp eq i64 %i.bas, 10
  br i1 %.not84.i.i.i, label %bb.ls, label %bb.lq

bb.lq:                                            ; preds = %.lr.ph101.i.i.i
  %i.bat = call i32 @hwloc_hide_errors() #29
  %i.bau = icmp slt i32 %i.bat, 2
  br i1 %i.bau, label %bb.lr, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lr:                                            ; preds = %bb.lq
  %i.bav = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite89.i.i.i = call i64 @fwrite(ptr nonnull @.str.301, i64 104, i64 1, ptr %i.bav) #36 ; 0 uses
  br label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.ls:                                            ; preds = %.lr.ph101.i.i.i
  %indvars.iv.next115.i.i.i = add nuw nsw i64 %indvars.iv114.i.i.i, 1 ; 3 uses
  %i.baw = icmp samesign ult i64 %indvars.iv.next115.i.i.i, %i.bah
  br i1 %i.baw, label %.lr.ph99.i.i.i, label %.loopexit90.i.i.i

.lr.ph99.i.i.i:                                   ; preds = %bb.ls, %bb.mb
  %i.bax = phi i32 [ %i.bcc, %bb.mb ], [ %i.bam, %bb.ls ] ; 5 uses
  %indvars.iv110.i.i.i = phi i64 [ %indvars.iv.next111.i.i.i, %bb.mb ], [ %indvars.iv108.i.i.i.a, %bb.ls ] ; 2 uses
  %i.bay = trunc nuw i64 %indvars.iv110.i.i.i to i32 ; 2 uses
  %i.baz = add i32 %i.bao, %i.bay
  %i.bba = zext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %.1217.i, i64 %i.bba
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !22 ; 4 uses
  %i.bbd = mul i32 %i.azd, %i.bay
  %i.bbe = add i32 %i.bbd, %i.ban
  %i.bbf = zext i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %.1217.i, i64 %i.bbf
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !22
  %.not85.i.i.i = icmp eq i64 %i.bbc, %i.bbh
  br i1 %.not85.i.i.i, label %bb.lv, label %bb.lt

bb.lt:                                            ; preds = %.lr.ph99.i.i.i
  %i.bbi = call i32 @hwloc_hide_errors() #29
  %i.bbj = icmp slt i32 %i.bbi, 2
  br i1 %i.bbj, label %bb.lu, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lu:                                            ; preds = %bb.lt
  %i.bbk = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite88.i.i.i = call i64 @fwrite(ptr nonnull @.str.302, i64 71, i64 1, ptr %i.bbk) #36 ; 0 uses
  br label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lv:                                            ; preds = %.lr.ph99.i.i.i
  %i.bbl = icmp ult i64 %i.bbc, 11
  br i1 %i.bbl, label %bb.lw, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.lv
  %.not103.i.i.i = icmp eq i32 %i.bax, 0
  br i1 %.not103.i.i.i, label %.loopexit.thread.thread.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext i32 %i.bax to i64 ; 2 uses
  br label %.lr.ph.i.i.i

bb.lw:                                            ; preds = %bb.lv
  %i.bbm = call i32 @hwloc_hide_errors() #29
  %i.bbn = icmp slt i32 %i.bbm, 2
  br i1 %i.bbn, label %bb.lx, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.lx:                                            ; preds = %bb.lw
  %i.bbo = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite87.i.i.i = call i64 @fwrite(ptr nonnull @.str.303, i64 77, i64 1, ptr %i.bbo) #36 ; 0 uses
  br label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ly, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ly ] ; 2 uses
  %i.bbp = getelementptr inbounds nuw [16 x i8], ptr %i.azy, i64 %indvars.iv.i.i.i ; 3 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 8
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !121
  %i.bbs = icmp eq i64 %i.bbc, %i.bbr
  br i1 %i.bbs, label %.loopexit.i.i.i, label %bb.ly

bb.ly:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.thread.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !240

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.bbt = load i32, ptr %i.bbp, align 8, !tbaa !122
  %i.bbu = add i32 %i.bbt, 1
  store i32 %i.bbu, ptr %i.bbp, align 8, !tbaa !122
  br label %bb.mb

.loopexit.thread.i.loopexit.i.i:                  ; preds = %bb.ly
  %i.bbv = icmp eq i32 %i.bax, 4
  br i1 %i.bbv, label %bb.lz, label %.loopexit.thread.thread.i.i.i

bb.lz:                                            ; preds = %.loopexit.thread.i.loopexit.i.i
  %i.bbw = call i32 @hwloc_hide_errors() #29
  %i.bbx = icmp slt i32 %i.bbw, 2
  br i1 %i.bbx, label %bb.ma, label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

bb.ma:                                            ; preds = %bb.lz
  %i.bby = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite86.i.i.i = call i64 @fwrite(ptr nonnull @.str.304, i64 93, i64 1, ptr %i.bby) #36 ; 0 uses
  br label %hwloc_linux_knl_parse_numa_distances.exit.thread.i.i

.loopexit.thread.thread.i.i.i:                    ; preds = %.loopexit.thread.i.loopexit.i.i, %.preheader.i.i.i
  %.pre-phi.i.i = phi i64 [ %wide.trip.count.i.i.i, %.loopexit.thread.i.loopexit.i.i ], [ 0, %.preheader.i.i.i ]
  %i.bbz = getelementptr inbounds nuw [16 x i8], ptr %i.azy, i64 %.pre-phi.i.i ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 8
  store i64 %i.bbc, ptr %i.bca, align 8, !tbaa !121
  store i32 1, ptr %i.bbz, align 8, !tbaa !122
  %i.bcb = add nuw i32 %i.bax, 1                  ; 2 uses
  store i32 %i.bcb, ptr %4, align 8, !tbaa !119
  br label %bb.mb

bb.mb:                                            ; preds = %.loopexit.thread.thread.i.i.i, %.loopexit.i.i.i
  %i.bcc = phi i32 [ %i.bcb, %.loopexit.thread.thread.i.i.i ], [ %i.bax, %.loopexit.i.i.i ] ; 2 uses
  %indvars.iv.next111.i.i.i = add nuw i64 %indvars.iv110.i.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111.i.i.i to i32
  %exitcond372 = icmp eq i32 %i.azd, %lftr.wideiv
  br i1 %exitcond372, label %.loopexit90.i.i.i, label %.lr.ph99.i.i.i, !llvm.loop !241

._crit_edge.i.i.i:                                ; preds = %.loopexit90.i.i.i
  %i.bcd = zext i32 %i.bal to i64
  call void @qsort(ptr noundef nonnull %i.azy, i64 noundef %i.bcd, i64 noundef 16, ptr noundef nonnull @hwloc_knl_distances_value_compar) #29
  switch i32 %i.azd, label %bb.ml [
    i32 2, label %bb.mc
    i32 4, label %bb.mf
    i32 8, label %bb.mi
  ]

bb.mc:                                            ; preds = %._crit_edge.i.i.i
  %i.bce = load i32, ptr %4, align 8, !tbaa !119
  %.not83.i.i.i = icmp eq i32 %i.bce, 2
  br i1 %.not83.i.i.i, label %hwloc_linux_knl_parse_numa_distances.exit.i.i, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bcf = call i32 @hwloc_hide_errors() #29
  %i.bcg = icmp slt i32 %i.bcf, 2
  br i1 %i.bcg, label %bb.me, label %.lr.ph.preheader.i.i

bb.me:                                            ; preds = %bb.md
  %i.bch = load ptr, ptr @stderr, align 8, !tbaa !87
  %i.bci = load i32, ptr %4, align 8, !tbaa !119
  %i.bcj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bch, ptr noundef nonnull @.str.305, i32 noundef %i.bci) #37 ; 0 uses
  br label %.lr.ph.preheader.i.i

bb.mf:                                            ; preds = %._crit_edge.i.i.i
  %i.bck = load i32, ptr %4, align 8, !tbaa !119  ; 3 uses
  switch i32 %i.bck, label %bb.mg [
    i32 2, label %hwloc_linux_knl_parse_numa_distances.exit.i.i
    i32 4, label %hwloc_linux_knl_parse_numa_distances.exit.i.i
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.bcl = call i32 @hwloc_hide_errors() #29
  %i.bcm = icmp slt i32 %i.bcl, 2
  br i1 %i.bcm, label %bb.mh, label %.lr.ph.preheader.i.i

bb.mh:                                            ; preds = %bb.mg
  %i.bcn = load ptr, ptr @stderr, align 8, !tbaa !87
  %i.bco = load i32, ptr %4, align 8, !tbaa !119
  %i.bcp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bcn, ptr noundef nonnull @.str.306, i32 noundef %i.bco) #37 ; 0 uses
  br label %.lr.ph.preheader.i.i

bb.mi:                                            ; preds = %._crit_edge.i.i.i
  %i.bcq = load i32, ptr %4, align 8, !tbaa !119
  %.not80.i.i.i = icmp eq i32 %i.bcq, 4
  br i1 %.not80.i.i.i, label %hwloc_linux_knl_parse_numa_distances.exit.i.i, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bcr = call i32 @hwloc_hide_errors() #29
  %i.bcs = icmp slt i32 %i.bcr, 2
  br i1 %i.bcs, label %bb.mk, label %.lr.ph.preheader.i.i

bb.mk:                                            ; preds = %bb.mj
  %i.bct = load ptr, ptr @stderr, align 8, !tbaa !87
  %i.bcu = load i32, ptr %4, align 8, !tbaa !119
  %i.bcv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bct, ptr noundef nonnull @.str.307, i32 noundef %i.bcu) #37 ; 0 uses
  br label %.lr.ph.preheader.i.i

bb.ml:                                            ; preds = %._crit_edge.i.i.i
  call void @abort() #34
  unreachable

hwloc_linux_knl_parse_numa_distances.exit.i.i:    ; preds = %bb.mi, %bb.mf, %bb.mf, %bb.mc, %.split.i.i.i
  %.val219.i.i = phi i32 [ 4, %bb.mi ], [ %i.bck, %bb.mf ], [ %i.bck, %bb.mf ], [ 2, %bb.mc ], [ 1, %.split.i.i.i ]
  store i8 0, ptr %3, align 8, !tbaa !19
  %i.bcw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 41 uses
  store i8 0, ptr %i.bcw, align 8, !tbaa !19
  %i.bcx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 18 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 4 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.bdb = icmp eq i32 %i.azs, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bcx, i8 -1, i64 20, i1 false)
  br i1 %i.bdb, label %.thread.thread.i.i, label %bb.mm

.thread.thread.i.i:                               ; preds = %hwloc_linux_knl_parse_numa_distances.exit.i.i
  store i32 1, ptr %i.bcy, align 8, !tbaa !125
  store i32 1, ptr %i.bcz, align 4, !tbaa !126
  store i32 64, ptr %i.bda, align 8, !tbaa !127
  br label %.split.i172.i.i

bb.mm:                                            ; preds = %hwloc_linux_knl_parse_numa_distances.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store i32 0, ptr %i.i, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.j, i8 0, i64 512, i1 false)
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !80
  %i.bde = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.310, ptr noundef %i.bdd) #29
  %i.bdf = icmp slt i32 %i.bde, 0
  br i1 %i.bdf, label %bb.ne, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bdg = load ptr, ptr %i.h, align 8, !tbaa !66 ; 3 uses
  %i.bdh = load i32, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %i.bdi = icmp sgt i32 %i.bdh, -1
  br i1 %i.bdi, label %.preheader.i.i.i.i.i.i.i, label %hwloc_checkat.exit.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.mn, %.preheader.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bdl, %.preheader.i.i.i.i.i.i.i ], [ %i.bdg, %bb.mn ] ; 3 uses
  %i.bdj = load i8, ptr %.0.i.i.i.i.i.i.i, align 1, !tbaa !19
  %i.bdk = icmp eq i8 %i.bdj, 47
  %i.bdl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 1
  br i1 %i.bdk, label %.preheader.i.i.i.i.i.i.i, label %hwloc_open.exit.i.i.i.i, !llvm.loop !0

hwloc_checkat.exit.i.i.i.i.i.i:                   ; preds = %bb.mn
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bdg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.mp, label %hwloc_open.exit.i.i.i.i

hwloc_open.exit.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i.i, %hwloc_checkat.exit.i.i.i.i.i.i
  %.1.i8.i.i.i.i.i.i = phi ptr [ %i.bdg, %hwloc_checkat.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %i.bdm = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.bdh, ptr noundef nonnull %.1.i8.i.i.i.i.i.i, i32 noundef 0) #29 ; 3 uses
  %i.bdn = icmp slt i32 %i.bdm, 0
  br i1 %i.bdn, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %hwloc_open.exit.i.i.i.i
  %i.bdo = call i64 @read(i32 noundef %i.bdm, ptr noundef nonnull %i.j, i64 noundef 511) #29 ; 2 uses
  %i.bdp = call i32 @close(i32 noundef %i.bdm) #29 ; 0 uses
  %i.bdq = icmp slt i64 %i.bdo, 1
  br i1 %i.bdq, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo, %hwloc_open.exit.i.i.i.i, %hwloc_checkat.exit.i.i.i.i.i.i
  %i.bdr = tail call ptr @__errno_location() #33
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !18
  %i.bdt = call ptr @strerror(i32 noundef %i.bds) #29 ; 0 uses
  %i.bdu = load ptr, ptr %i.h, align 8, !tbaa !66
  call void @free(ptr noundef %i.bdu) #29
  br label %bb.ne

bb.mq:                                            ; preds = %bb.mo
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bdo
  store i8 0, ptr %i.bdv, align 1, !tbaa !19
  %i.bdw = load ptr, ptr %i.h, align 8, !tbaa !66
  call void @free(ptr noundef %i.bdw) #29
  %i.bdx = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.313, ptr noundef nonnull %i.i) #29
  %.not.i167.i.i = icmp eq i32 %i.bdx, 1
  br i1 %.not.i167.i.i, label %.preheader.i169.i.i, label %bb.mr

.preheader.i169.i.i:                              ; preds = %bb.mq
  %strchr69.i.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.j, i32 10) ; 3 uses
  %.not5870.i.i.i = icmp eq ptr %strchr69.i.i.i, null
  br i1 %.not5870.i.i.i, label %._crit_edge.i171.i.i, label %.lr.ph.i170.i.i

.lr.ph.i170.i.i:                                  ; preds = %.preheader.i169.i.i
  %i.bdy = load i32, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.bdz = icmp sgt i32 %i.bdy, 0
  br i1 %i.bdz, label %.lr.ph.split.i.i.i, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %.lr.ph.i170.i.i, %.thread.us.i.i.i
  %strchr72.us.i.i.i = phi ptr [ %strchr.us.i.i.i, %.thread.us.i.i.i ], [ %strchr69.i.i.i, %.lr.ph.i170.i.i ]
  %i.bea = getelementptr inbounds nuw i8, ptr %strchr72.us.i.i.i, i64 1
  %strchr.us.i.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.bea, i32 10) ; 2 uses
  %.not58.us.i.i.i = icmp eq ptr %strchr.us.i.i.i, null
  br i1 %.not58.us.i.i.i, label %._crit_edge.i171.i.i, label %.thread.us.i.i.i

bb.mr:                                            ; preds = %bb.mq
  %i.beb = load ptr, ptr @stderr, align 8, !tbaa !87
  %fwrite.i168.i.i = call i64 @fwrite(ptr nonnull @.str.314, i64 64, i64 1, ptr %i.beb) #36 ; 0 uses
  br label %bb.ne

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i170.i.i, %.thread.i.i.i
  %i.bec = phi i32 [ %i.beu, %.thread.i.i.i ], [ %i.bdy, %.lr.ph.i170.i.i ] ; 2 uses
  %strchr72.i.i.i = phi ptr [ %strchr.i.i.i, %.thread.i.i.i ], [ %strchr69.i.i.i, %.lr.ph.i170.i.i ] ; 2 uses
  %.05571.i.i.i = phi ptr [ %i.bev, %.thread.i.i.i ], [ %i.j, %.lr.ph.i170.i.i ] ; 11 uses
  %i.bed = icmp sgt i32 %i.bec, 0
  br i1 %i.bed, label %bb.ms, label %.thread.i.i.i

bb.ms:                                            ; preds = %.lr.ph.split.i.i.i
  %i.bee = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.316, ptr noundef nonnull dereferenceable(1) %.05571.i.i.i, i64 noundef 10) #32
  %.not59.i.i.i = icmp eq i32 %i.bee, 0
  br i1 %.not59.i.i.i, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.bef = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.05571.i.i.i, ptr noundef nonnull @.str.317, ptr noundef nonnull %i.bcx) #29 ; 0 uses
  br label %bb.na

bb.mu:                                            ; preds = %bb.ms
  %i.beg = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.319, ptr noundef nonnull dereferenceable(1) %.05571.i.i.i, i64 noundef 10) #32
  %.not60.i.i.i = icmp eq i32 %i.beg, 0
  br i1 %.not60.i.i.i, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.beh = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.05571.i.i.i, ptr noundef nonnull @.str.320, ptr noundef nonnull %i.bda) #29 ; 0 uses
  br label %bb.na

bb.mw:                                            ; preds = %bb.mu
  %i.bei = call i32 @strncmp(ptr noundef nonnull dereferenceable(15) @.str.322, ptr noundef nonnull dereferenceable(1) %.05571.i.i.i, i64 noundef 14) #32
  %.not61.i.i.i = icmp eq i32 %i.bei, 0
  br i1 %.not61.i.i.i, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.bej = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.05571.i.i.i, ptr noundef nonnull @.str.323, ptr noundef nonnull %i.bcz) #29 ; 0 uses
  br label %bb.na

end_hunk_0
