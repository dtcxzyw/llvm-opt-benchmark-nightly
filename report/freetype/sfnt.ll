Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@reconstruct_font:bb.a
  %i.rf = load i64, ptr %i.i, align 8, !tbaa !121
  %i.rg = sub i64 %i.rf, %.0257428
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv487.i
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !121
  %i.ri = call fastcc i32 @write_buf(ptr noundef %i.h, ptr noundef nonnull %6, ptr noundef %i.i, ptr noundef %.5.i, i64 noundef %i.re, ptr noundef %7)
  %.not383.i = icmp eq i32 %i.ri, 0
  br i1 %.not383.i, label %bb.cn, label %.thread406.i

bb.cn:                                            ; preds = %bb.cm
  %i.rj = call fastcc i32 @pad4(ptr noundef %i.h, ptr noundef nonnull %6, ptr noundef %i.i, ptr noundef %7)
  %.not384.i = icmp eq i32 %i.rj, 0
  br i1 %.not384.i, label %bb.co, label %.thread406.i

.thread406.i:                                     ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ap, %bb.ao, %bb.an, %bb.am, %.thread397.i, %.thread391.i
  %.3298.ph.i = phi ptr [ null, %.thread391.i ], [ %.1296.ph.i, %.thread397.i ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.cl ], [ null, %bb.cm ], [ null, %bb.cn ]
  %.6.ph.i = phi ptr [ %.2292.ph.i, %.thread391.i ], [ %.4294.ph.i, %.thread397.i ], [ %.5.i, %bb.cn ], [ %.5.i, %bb.cm ], [ %.0290461.i, %bb.cl ], [ %.0290461.i, %bb.ap ], [ %.0290461.i, %bb.ao ], [ %.0290461.i, %bb.an ], [ %.0290461.i, %bb.am ]
  %.3289.ph.i = phi ptr [ null, %.thread391.i ], [ %.1287.ph.i, %.thread397.i ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.cl ], [ null, %bb.cm ], [ null, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  br label %.thread.i

bb.co:                                            ; preds = %bb.cn
  %i.rk = call fastcc i64 @compute_ULong_sum(ptr noundef %.5.i, i64 noundef %i.re)
  %i.rl = add i64 %i.rk, %.3256                   ; 2 uses
  %i.rm = load i16, ptr %i.k, align 2, !tbaa !154
  %i.rn = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv487.i
  store i16 %i.rm, ptr %i.ro, align 2, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %indvars.iv.next488.i = add nuw nsw i64 %indvars.iv487.i, 1 ; 2 uses
  %exitcond491.not.i = icmp eq i64 %indvars.iv.next488.i, %i.fc
  br i1 %exitcond491.not.i, label %._crit_edge463.loopexit.i, label %bb.am, !llvm.loop !678

._crit_edge463.loopexit.i:                        ; preds = %bb.co
  %.pre497.i = load i64, ptr %i.i, align 8, !tbaa !121
  br label %._crit_edge463.i

._crit_edge463.i:                                 ; preds = %._crit_edge463.loopexit.i, %.preheader433.i
  %.4 = phi i64 [ 0, %.preheader433.i ], [ %i.rl, %._crit_edge463.loopexit.i ] ; 2 uses
  %i.rp = phi i64 [ %.0257428, %.preheader433.i ], [ %.pre497.i, %._crit_edge463.loopexit.i ] ; 2 uses
  %.0290.lcssa.i = phi ptr [ %i.jx, %.preheader433.i ], [ %.5.i, %._crit_edge463.loopexit.i ] ; 2 uses
  %i.rq = load ptr, ptr %i.ay, align 8, !tbaa !692 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 48
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !151
  %i.rt = sub i64 %i.rp, %i.rs                    ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %i.rt, ptr %i.ru, align 8, !tbaa !147
  %i.rv = load ptr, ptr %i.az, align 8, !tbaa !693
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 48
  store i64 %i.rp, ptr %i.rw, align 8, !tbaa !151
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.fc
  store i64 %i.rt, ptr %i.rx, align 8, !tbaa !121
  %i.ry = call fastcc i32 @store_loca(ptr noundef %i.jp, i64 noundef %i.jo, i16 noundef zeroext %i.fa, ptr noundef nonnull %i.u, ptr noundef %i.h, ptr noundef nonnull %6, ptr noundef %i.i, ptr noundef %7)
  %.not340.i = icmp eq i32 %i.ry, 0
  br i1 %.not340.i, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %._crit_edge463.i
  %i.rz = load i64, ptr %i.i, align 8, !tbaa !121 ; 2 uses
  %i.sa = load ptr, ptr %i.az, align 8, !tbaa !693 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !151
  %i.sd = sub i64 %i.rz, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !147
  br label %reconstruct_glyf.exit

.thread.i:                                        ; preds = %._crit_edge463.i, %.thread406.i, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.2255 = phi i64 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ], [ %.4, %._crit_edge463.i ], [ %.3256, %.thread406.i ], [ 0, %bb.ah ], [ 0, %bb.x ] ; 2 uses
  %.0300.ph.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ %i.jp, %._crit_edge463.i ], [ %i.jp, %.thread406.i ], [ null, %bb.ah ], [ null, %bb.x ] ; 2 uses
  %.4299.ph.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ null, %._crit_edge463.i ], [ %.3298.ph.i, %.thread406.i ], [ null, %bb.ah ], [ null, %bb.x ] ; 2 uses
  %.7.ph.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ %.0290.lcssa.i, %._crit_edge463.i ], [ %.6.ph.i, %.thread406.i ], [ null, %bb.ah ], [ null, %bb.x ] ; 2 uses
  %.4.ph.ph.i = phi ptr [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ null, %._crit_edge463.i ], [ %.3289.ph.i, %.thread406.i ], [ null, %bb.ah ], [ null, %bb.x ] ; 2 uses
  %.pr.pr.i = load i32, ptr %i.g, align 4, !tbaa !30
  %.not386.i = icmp eq i32 %.pr.pr.i, 0
  br i1 %.not386.i, label %bb.cq, label %reconstruct_glyf.exit

bb.cq:                                            ; preds = %.thread.i
  store i32 8, ptr %i.g, align 4, !tbaa !30
  br label %reconstruct_glyf.exit

reconstruct_glyf.exit:                            ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %.preheader435.preheader.i, %.preheader435.1.i, %.preheader435.2.i, %.preheader435.3.i, %.preheader435.4.i, %.preheader435.5.i, %.preheader435.6.i, %bb.aj, %bb.ak, %bb.al, %.thread.i, %bb.cq, %bb.cp
  %.4261 = phi i64 [ %i.rz, %bb.cp ], [ %.0257428, %bb.cq ], [ %.0257428, %.thread.i ], [ %.0257428, %bb.al ], [ %.0257428, %bb.ak ], [ %.0257428, %bb.aj ], [ %.0257428, %.preheader435.6.i ], [ %.0257428, %.preheader435.5.i ], [ %.0257428, %.preheader435.4.i ], [ %.0257428, %.preheader435.3.i ], [ %.0257428, %.preheader435.2.i ], [ %.0257428, %.preheader435.1.i ], [ %.0257428, %.preheader435.preheader.i ], [ %.0257428, %bb.w ], [ %.0257428, %bb.v ], [ %.0257428, %bb.u ], [ %.0257428, %bb.t ], [ %.0257428, %bb.s ]
  %.5 = phi i64 [ %.4, %bb.cp ], [ %.2255, %bb.cq ], [ %.2255, %.thread.i ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %.preheader435.6.i ], [ 0, %.preheader435.5.i ], [ 0, %.preheader435.4.i ], [ 0, %.preheader435.3.i ], [ 0, %.preheader435.2.i ], [ 0, %.preheader435.1.i ], [ 0, %.preheader435.preheader.i ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ]
  %.0300422.sink.i = phi ptr [ %i.jp, %bb.cp ], [ %.0300.ph.ph.i, %bb.cq ], [ %.0300.ph.ph.i, %.thread.i ], [ %i.jp, %bb.al ], [ %i.jp, %bb.ak ], [ %i.jp, %bb.aj ], [ null, %.preheader435.6.i ], [ null, %.preheader435.5.i ], [ null, %.preheader435.4.i ], [ null, %.preheader435.3.i ], [ null, %.preheader435.2.i ], [ null, %.preheader435.1.i ], [ null, %.preheader435.preheader.i ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ]
  %.4299423.sink.i = phi ptr [ null, %bb.cp ], [ %.4299.ph.ph.i, %bb.cq ], [ %.4299.ph.ph.i, %.thread.i ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %.preheader435.6.i ], [ null, %.preheader435.5.i ], [ null, %.preheader435.4.i ], [ null, %.preheader435.3.i ], [ null, %.preheader435.2.i ], [ null, %.preheader435.1.i ], [ null, %.preheader435.preheader.i ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ]
  %.7424.sink.i = phi ptr [ %.0290.lcssa.i, %bb.cp ], [ %.7.ph.ph.i, %bb.cq ], [ %.7.ph.ph.i, %.thread.i ], [ %i.jx, %bb.al ], [ %i.jx, %bb.ak ], [ null, %bb.aj ], [ null, %.preheader435.6.i ], [ null, %.preheader435.5.i ], [ null, %.preheader435.4.i ], [ null, %.preheader435.3.i ], [ null, %.preheader435.2.i ], [ null, %.preheader435.1.i ], [ null, %.preheader435.preheader.i ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ]
  %.4425.sink.i = phi ptr [ null, %bb.cp ], [ %.4.ph.ph.i, %bb.cq ], [ %.4.ph.ph.i, %.thread.i ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %.preheader435.6.i ], [ null, %.preheader435.5.i ], [ null, %.preheader435.4.i ], [ null, %.preheader435.3.i ], [ null, %.preheader435.2.i ], [ null, %.preheader435.1.i ], [ null, %.preheader435.preheader.i ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ]
  %.5269 = load ptr, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  call void @ft_mem_free(ptr noundef %7, ptr noundef %i.et) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.0300422.sink.i) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.4299423.sink.i) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.7424.sink.i) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.4425.sink.i) #27
  %.0317.i = load i32, ptr %i.g, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %.not140 = icmp eq i32 %.0317.i, 0
  br i1 %.not140, label %bb.dz, label %.thread313thread-pre-split

bb.cr:                                            ; preds = %bb.r
  %i.sf = load i64, ptr %i.u, align 8, !tbaa !121
  br label %bb.dz

bb.cs:                                            ; preds = %bb.r
  %.not137 = icmp eq i8 %.0124433, 0
  br i1 %.not137, label %.lr.ph.i.i.preheader, label %._crit_edge519

._crit_edge519:                                   ; preds = %bb.cs
  %.pre520 = load ptr, ptr %i.be, align 8, !tbaa !159
  br label %bb.do

.lr.ph.i.i.preheader:                             ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  br label %.lr.ph.i.i

bb.ct:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.y
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i72.i, label %.lr.ph.i.i, !llvm.loop !672

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ct
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ct ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !153 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !146
  %i.sk = icmp eq i32 %i.sj, 1835104368
  br i1 %i.sk, label %.lr.ph.preheader.i72.i, label %bb.ct

.lr.ph.preheader.i72.i:                           ; preds = %.lr.ph.i.i, %bb.ct
  %.08.i.i = phi ptr [ %i.sh, %.lr.ph.i.i ], [ null, %bb.ct ] ; 2 uses
  br label %.lr.ph.i74.i

bb.cu:                                            ; preds = %.lr.ph.i74.i
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i75.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %i.y
  br i1 %exitcond.not.i77.i, label %get_x_mins.exit.thread, label %.lr.ph.i74.i, !llvm.loop !672

.lr.ph.i74.i:                                     ; preds = %bb.cu, %.lr.ph.preheader.i72.i
  %indvars.iv.i75.i = phi i64 [ 0, %.lr.ph.preheader.i72.i ], [ %indvars.iv.next.i76.i, %bb.cu ] ; 2 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i75.i
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !153 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !146
  %i.sp = icmp eq i32 %i.so, 1751474532
  br i1 %i.sp, label %find_table.exit79.i, label %bb.cu

find_table.exit79.i:                              ; preds = %.lr.ph.i74.i
  %.not.i168 = icmp eq ptr %.08.i.i, null
  br i1 %.not.i168, label %get_x_mins.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %find_table.exit79.i
  %i.sq = load ptr, ptr %i.az, align 8, !tbaa !693
  %.not55.i = icmp eq ptr %i.sq, null
  br i1 %.not55.i, label %get_x_mins.exit.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sr = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !150
  %i.st = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %i.ss) #27
  %.not56.i = icmp eq i32 %i.st, 0
  br i1 %.not56.i, label %bb.cx, label %get_x_mins.exit.thread

bb.cx:                                            ; preds = %bb.cw
  %i.su = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 8) #27 ; 2 uses
  store i32 %i.su, ptr %i.f, align 4, !tbaa !30
  %.not57.i = icmp eq i32 %i.su, 0
  br i1 %.not57.i, label %bb.cy, label %get_x_mins.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.sv = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27 ; 3 uses
  %i.sw = load i32, ptr %i.f, align 4, !tbaa !30
  %.not58.i = icmp eq i32 %i.sw, 0
  br i1 %.not58.i, label %bb.cz, label %get_x_mins.exit.thread

bb.cz:                                            ; preds = %bb.cy
  store i16 %i.sv, ptr %i.bd, align 8, !tbaa !695
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !150
  %i.sz = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %i.sy) #27 ; 2 uses
  store i32 %i.sz, ptr %i.f, align 4, !tbaa !30
  %.not59.i = icmp eq i32 %i.sz, 0
  br i1 %.not59.i, label %bb.da, label %get_x_mins.exit.thread

bb.da:                                            ; preds = %bb.cz
  %i.ta = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 50) #27 ; 2 uses
  store i32 %i.ta, ptr %i.f, align 4, !tbaa !30
  %.not60.i = icmp eq i32 %i.ta, 0
  br i1 %.not60.i, label %bb.db, label %get_x_mins.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.tb = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27
  %i.tc = load i32, ptr %i.f, align 4, !tbaa !30
  %.not61.i = icmp eq i32 %i.tc, 0
  br i1 %.not61.i, label %bb.dc, label %get_x_mins.exit.thread

bb.dc:                                            ; preds = %bb.db
  %.fr.i = freeze i16 %i.tb
  %.not62.i = icmp eq i16 %.fr.i, 0               ; 2 uses
  %8 = select i1 %.not62.i, i64 2, i64 4          ; 2 uses
  %i.td = zext i16 %i.sv to i64                   ; 3 uses
  %i.te = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 2, i64 noundef 0, i64 noundef %i.td, ptr noundef null, ptr noundef nonnull %i.f) #27 ; 2 uses
  store ptr %i.te, ptr %i.be, align 8, !tbaa !159
  %i.tf = load i32, ptr %i.f, align 4, !tbaa !30
  %.not63.i = icmp eq i32 %i.tf, 0
  br i1 %.not63.i, label %bb.dd, label %get_x_mins.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %.not91.i = icmp eq i16 %i.sv, 0
  br i1 %.not91.i, label %get_x_mins.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.dd
  %i.tg = load ptr, ptr %i.az, align 8, !tbaa !693
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !150 ; 2 uses
  br i1 %.not62.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i169, %bb.de
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %bb.de ], [ 0, %.lr.ph.i169 ] ; 2 uses
  %.04289.us.i = phi i64 [ %i.tk, %bb.de ], [ %i.ti, %.lr.ph.i169 ] ; 2 uses
  %i.tj = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %.04289.us.i) #27 ; 2 uses
  store i32 %i.tj, ptr %i.f, align 4, !tbaa !30
  %.not64.us.i = icmp eq i32 %i.tj, 0
  br i1 %.not64.us.i, label %bb.df, label %get_x_mins.exit.thread

bb.de:                                            ; preds = %bb.di
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %i.td
  br i1 %exitcond103.not.i, label %get_x_mins.exit, label %.lr.ph.split.us.i, !llvm.loop !679

bb.df:                                            ; preds = %.lr.ph.split.us.i
  %i.tk = add i64 %.04289.us.i, %8
  %i.tl = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27
  %i.tm = load i32, ptr %i.f, align 4, !tbaa !30
  %.not66.us.i = icmp eq i32 %i.tm, 0
  br i1 %.not66.us.i, label %bb.dg, label %get_x_mins.exit.thread

bb.dg:                                            ; preds = %bb.df
  %i.tn = zext i16 %i.tl to i64
  %i.to = shl nuw nsw i64 %i.tn, 1
  %i.tp = load ptr, ptr %i.ay, align 8, !tbaa !692
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !150
  %i.ts = add i64 %i.tr, %i.to
  %i.tt = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %i.ts) #27 ; 2 uses
  store i32 %i.tt, ptr %i.f, align 4, !tbaa !30
  %.not68.us.i = icmp eq i32 %i.tt, 0
  br i1 %.not68.us.i, label %bb.dh, label %get_x_mins.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.tu = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 2) #27 ; 2 uses
  store i32 %i.tu, ptr %i.f, align 4, !tbaa !30
  %.not69.us.i = icmp eq i32 %i.tu, 0
  br i1 %.not69.us.i, label %bb.di, label %get_x_mins.exit.thread

bb.di:                                            ; preds = %bb.dh
  %i.tv = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27
  %i.tw = load ptr, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %indvars.iv99.i
  store i16 %i.tv, ptr %i.tx, align 2, !tbaa !154
  %i.ty = load i32, ptr %i.f, align 4, !tbaa !30
  %.not70.us.i = icmp eq i32 %i.ty, 0
  br i1 %.not70.us.i, label %bb.de, label %get_x_mins.exit.thread

bb.dj:                                            ; preds = %bb.dn
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %i.td
  br i1 %exitcond.not.i172, label %get_x_mins.exit, label %.lr.ph.split.i, !llvm.loop !679

.lr.ph.split.i:                                   ; preds = %.lr.ph.i169, %bb.dj
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i171, %bb.dj ], [ 0, %.lr.ph.i169 ] ; 2 uses
  %.04289.i = phi i64 [ %i.ua, %bb.dj ], [ %i.ti, %.lr.ph.i169 ] ; 2 uses
  %i.tz = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %.04289.i) #27 ; 2 uses
  store i32 %i.tz, ptr %i.f, align 4, !tbaa !30
  %.not64.i = icmp eq i32 %i.tz, 0
  br i1 %.not64.i, label %bb.dk, label %get_x_mins.exit.thread

bb.dk:                                            ; preds = %.lr.ph.split.i
  %i.ua = add i64 %.04289.i, %8
  %i.ub = call i32 @FT_Stream_ReadULong(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27
  %i.uc = load i32, ptr %i.f, align 4, !tbaa !30
  %.not67.i = icmp eq i32 %i.uc, 0
  br i1 %.not67.i, label %bb.dl, label %get_x_mins.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.ud = zext i32 %i.ub to i64
  %i.ue = load ptr, ptr %i.ay, align 8, !tbaa !692
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !150
  %i.uh = add i64 %i.ug, %i.ud
  %i.ui = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %i.uh) #27 ; 2 uses
  store i32 %i.ui, ptr %i.f, align 4, !tbaa !30
  %.not68.i = icmp eq i32 %i.ui, 0
  br i1 %.not68.i, label %bb.dm, label %get_x_mins.exit.thread

bb.dm:                                            ; preds = %bb.dl
  %i.uj = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 2) #27 ; 2 uses
  store i32 %i.uj, ptr %i.f, align 4, !tbaa !30
  %.not69.i = icmp eq i32 %i.uj, 0
  br i1 %.not69.i, label %bb.dn, label %get_x_mins.exit.thread

bb.dn:                                            ; preds = %bb.dm
  %i.uk = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.f) #27
  %i.ul = load ptr, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %indvars.iv.i170
  store i16 %i.uk, ptr %i.um, align 2, !tbaa !154
  %i.un = load i32, ptr %i.f, align 4, !tbaa !30
  %.not70.i = icmp eq i32 %i.un, 0
  br i1 %.not70.i, label %bb.dj, label %get_x_mins.exit.thread

get_x_mins.exit.thread:                           ; preds = %bb.da, %bb.cv, %bb.cw, %bb.cy, %bb.db, %bb.dc, %bb.cz, %find_table.exit79.i, %bb.cx, %bb.cu, %.lr.ph.split.i, %bb.dm, %bb.dn, %bb.dk, %bb.dl, %bb.df, %bb.di, %.lr.ph.split.us.i, %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %.thread313thread-pre-split

get_x_mins.exit:                                  ; preds = %bb.dj, %bb.de, %bb.dd
  %i.uo = phi ptr [ %i.tw, %bb.de ], [ %i.te, %bb.dd ], [ %i.ul, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %.pre = load i16, ptr %i.bc, align 2, !tbaa !694
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge519, %get_x_mins.exit
  %i.up = phi ptr [ %i.uo, %get_x_mins.exit ], [ %.pre520, %._crit_edge519 ] ; 15 uses
  %i.uq = phi i16 [ %.pre, %get_x_mins.exit ], [ %.0250429, %._crit_edge519 ] ; 5 uses
  %i.ur = ptrtoaddr ptr %i.up to i64              ; 2 uses
  %i.us = load i16, ptr %i.bd, align 8, !tbaa !695 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr %.0264427, ptr %i.d, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %.0257428, ptr %i.e, align 8, !tbaa !121
  %i.ut = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %i.ba, ptr noundef nonnull %i.c) #27 ; 4 uses
  %i.uu = load i32, ptr %i.c, align 4, !tbaa !30
  %.not.i173 = icmp eq i32 %i.uu, 0
  %.not111.i = icmp ult i8 %i.ut, 4
  %or.cond129.i = select i1 %.not.i173, i1 %.not111.i, i1 false
  br i1 %or.cond129.i, label %bb.dp, label %.loopexit.i

bb.dp:                                            ; preds = %bb.do
  %i.uv = and i8 %i.ut, 1
  %i.uw = icmp eq i8 %i.uv, 0
  %i.ux = icmp samesign ult i8 %i.ut, 2
  %or.cond.i = icmp eq i8 %i.ut, 0
  br i1 %or.cond.i, label %.loopexit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uy = zext i16 %i.uq to i64                   ; 20 uses
  %i.uz = zext i16 %i.us to i64                   ; 8 uses
  %i.va = add i16 %i.uq, -1
  %or.cond5.not.i = icmp ult i16 %i.va, %i.us
  br i1 %or.cond5.not.i, label %bb.dr, label %.loopexit.i

bb.dr:                                            ; preds = %bb.dq
  %i.vb = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 2, i64 noundef 0, i64 noundef %i.uy, ptr noundef null, ptr noundef nonnull %i.c) #27 ; 10 uses
  %i.vc = load i32, ptr %i.c, align 4, !tbaa !30
  %.not112.i = icmp eq i32 %i.vc, 0
  br i1 %.not112.i, label %bb.ds, label %.loopexit.i

bb.ds:                                            ; preds = %bb.dr
  %i.vd = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 2, i64 noundef 0, i64 noundef %i.uz, ptr noundef null, ptr noundef nonnull %i.c) #27 ; 25 uses
  %i.ve = ptrtoaddr ptr %i.vd to i64              ; 2 uses
  %i.vf = load i32, ptr %i.c, align 4, !tbaa !30
  %.not113.i = icmp eq i32 %i.vf, 0
  br i1 %.not113.i, label %.lr.ph.i177, label %.loopexit.i

.lr.ph137.i:                                      ; preds = %bb.du
  br i1 %i.uw, label %.lr.ph137.split.us.i, label %iter.check729

iter.check729:                                    ; preds = %.lr.ph137.i
  %min.iters.check716 = icmp ult i16 %i.uq, 4
  %i.vg = sub i64 %i.ur, %i.ve
  %diff.check715 = icmp ugt i64 %i.vg, -32
  %or.cond741 = select i1 %min.iters.check716, i1 true, i1 %diff.check715
  br i1 %or.cond741, label %.lr.ph137.split.i.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %iter.check729
  %min.iters.check718 = icmp ult i16 %i.uq, 16
  br i1 %min.iters.check718, label %vec.epilog.ph733, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.vh = and i64 %i.uy, 12
  %n.vec720 = and i64 %i.uy, 65520                ; 4 uses
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next725, %vector.body721 ] ; 3 uses
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.up, i64 %index722 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load723 = load <8 x i16>, ptr %i.vi, align 2, !tbaa !154
  %wide.load724 = load <8 x i16>, ptr %i.vj, align 2, !tbaa !154
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %index722 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  store <8 x i16> %wide.load723, ptr %i.vk, align 2, !tbaa !154
  store <8 x i16> %wide.load724, ptr %i.vl, align 2, !tbaa !154
  %index.next725 = add nuw i64 %index722, 16      ; 2 uses
  %i.vm = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.vm, label %middle.block726, label %vector.body721, !llvm.loop !680

middle.block726:                                  ; preds = %vector.body721
  %cmp.n727 = icmp eq i64 %n.vec720, %i.uy
  br i1 %cmp.n727, label %.preheader130.i, label %vec.epilog.iter.check731

vec.epilog.iter.check731:                         ; preds = %middle.block726
  %min.epilog.iters.check732 = icmp eq i64 %i.vh, 0
  br i1 %min.epilog.iters.check732, label %.lr.ph137.split.i.preheader, label %vec.epilog.ph733, !prof !700

vec.epilog.ph733:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check731
  %vec.epilog.resume.val728 = phi i64 [ %n.vec720, %vec.epilog.iter.check731 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec734 = and i64 %i.uy, 65532                ; 3 uses
  br label %vec.epilog.vector.body735

vec.epilog.vector.body735:                        ; preds = %vec.epilog.vector.body735, %vec.epilog.ph733
  %index736 = phi i64 [ %vec.epilog.resume.val728, %vec.epilog.ph733 ], [ %index.next738, %vec.epilog.vector.body735 ] ; 3 uses
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.up, i64 %index736
  %wide.load737 = load <4 x i16>, ptr %i.vn, align 2, !tbaa !154
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %index736
  store <4 x i16> %wide.load737, ptr %i.vo, align 2, !tbaa !154
  %index.next738 = add nuw i64 %index736, 4       ; 2 uses
  %i.vp = icmp eq i64 %index.next738, %n.vec734
  br i1 %i.vp, label %vec.epilog.middle.block739, label %vec.epilog.vector.body735, !llvm.loop !681

vec.epilog.middle.block739:                       ; preds = %vec.epilog.vector.body735
  %cmp.n740 = icmp eq i64 %n.vec734, %i.uy
  br i1 %cmp.n740, label %.preheader130.i, label %.lr.ph137.split.i.preheader

.lr.ph137.split.i.preheader:                      ; preds = %iter.check729, %vec.epilog.iter.check731, %vec.epilog.middle.block739
  %indvars.iv149.i.ph = phi i64 [ 0, %iter.check729 ], [ %n.vec720, %vec.epilog.iter.check731 ], [ %n.vec734, %vec.epilog.middle.block739 ] ; 3 uses
  %xtraiter = and i64 %i.uy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph137.split.i.prol.loopexit, label %.lr.ph137.split.i.prol

.lr.ph137.split.i.prol:                           ; preds = %.lr.ph137.split.i.preheader, %.lr.ph137.split.i.prol
  %indvars.iv149.i.prol = phi i64 [ %indvars.iv.next150.i.prol, %.lr.ph137.split.i.prol ], [ %indvars.iv149.i.ph, %.lr.ph137.split.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph137.split.i.prol ], [ 0, %.lr.ph137.split.i.preheader ]
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.up, i64 %indvars.iv149.i.prol
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !154
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %indvars.iv149.i.prol
  store i16 %i.vr, ptr %i.vs, align 2, !tbaa !154
  %indvars.iv.next150.i.prol = add nuw nsw i64 %indvars.iv149.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph137.split.i.prol.loopexit, label %.lr.ph137.split.i.prol, !llvm.loop !682

.lr.ph137.split.i.prol.loopexit:                  ; preds = %.lr.ph137.split.i.prol, %.lr.ph137.split.i.preheader
  %indvars.iv149.i.unr = phi i64 [ %indvars.iv149.i.ph, %.lr.ph137.split.i.preheader ], [ %indvars.iv.next150.i.prol, %.lr.ph137.split.i.prol ]
  %i.vt = sub nsw i64 %indvars.iv149.i.ph, %i.uy
  %i.vu = icmp ugt i64 %i.vt, -4
  br i1 %i.vu, label %.preheader130.i, label %.lr.ph137.split.i

.lr.ph137.split.us.i:                             ; preds = %.lr.ph137.i, %bb.dt
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %bb.dt ], [ 0, %.lr.ph137.i ] ; 2 uses
  %i.vv = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.c) #27
  %i.vw = load i32, ptr %i.c, align 4, !tbaa !30
  %.not119.us.i = icmp eq i32 %i.vw, 0
  br i1 %.not119.us.i, label %bb.dt, label %.loopexit.i

bb.dt:                                            ; preds = %.lr.ph137.split.us.i
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %indvars.iv154.i
  store i16 %i.vv, ptr %i.vx, align 2, !tbaa !154
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %i.uy
  br i1 %exitcond158.not.i, label %.preheader130.i, label %.lr.ph137.split.us.i, !llvm.loop !683

.lr.ph.i177:                                      ; preds = %bb.ds, %bb.du
  %indvars.iv.i178 = phi i64 [ %indvars.iv.next.i179, %bb.du ], [ 0, %bb.ds ] ; 2 uses
  %i.vy = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.c) #27
  %i.vz = load i32, ptr %i.c, align 4, !tbaa !30
  %.not120.i = icmp eq i32 %i.vz, 0
  br i1 %.not120.i, label %bb.du, label %.loopexit.i

bb.du:                                            ; preds = %.lr.ph.i177
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %indvars.iv.i178
  store i16 %i.vy, ptr %i.wa, align 2, !tbaa !154
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i178, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, %i.uy
  br i1 %exitcond.not.i180, label %.lr.ph137.i, label %.lr.ph.i177, !llvm.loop !684

.preheader130.i:                                  ; preds = %.lr.ph137.split.i.prol.loopexit, %.lr.ph137.split.i, %bb.dt, %middle.block726, %vec.epilog.middle.block739
  %i.wb = icmp ult i16 %i.uq, %i.us
end_hunk_0
