Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/trees?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zng_tr_flush_block:bb.a
  %i.av = load i16, ptr %i.at, align 8, !tbaa !31
  %.not22.i = icmp eq i16 %i.av, 0
  br i1 %.not22.i, label %bb.ag, label %detect_data_type.exit

bb.ag:                                            ; preds = %.critedge31.i
  br i1 %i.e, label %bb.ai, label %bb.ah, !prof !14, !nosanitize !13

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @789, i64 %i.b) #5, !nosanitize !13
  br label %bb.ai, !nosanitize !13

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.not23.i = icmp ugt ptr %i.ac, inttoptr (i64 -41 to ptr)
  br i1 %.not23.i, label %bb.aj, label %.critedge33.i, !prof !30, !nosanitize !13

bb.aj:                                            ; preds = %bb.ai
  %i.ax = add i64 %i.ad, 40, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @790, i64 %i.ad, i64 %i.ax) #5, !nosanitize !13
  br label %.critedge33.i, !nosanitize !13

.critedge33.i:                                    ; preds = %bb.aj, %bb.ai
  %i.ay = load i16, ptr %i.aw, align 4, !tbaa !31
  %.not24.i = icmp eq i16 %i.ay, 0
  br i1 %.not24.i, label %bb.ak, label %detect_data_type.exit

bb.ak:                                            ; preds = %.critedge33.i
  br i1 %i.e, label %bb.am, label %bb.al, !prof !14, !nosanitize !13

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @791, i64 %i.b) #5, !nosanitize !13
  br label %bb.am, !nosanitize !13

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.not25.i = icmp ugt ptr %i.ac, inttoptr (i64 -53 to ptr)
  br i1 %.not25.i, label %bb.an, label %.critedge35.i, !prof !30, !nosanitize !13

bb.an:                                            ; preds = %bb.am
  %i.ba = add i64 %i.ad, 52, !nosanitize !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @792, i64 %i.ad, i64 %i.ba) #5, !nosanitize !13
  br label %.critedge35.i, !nosanitize !13

.critedge35.i:                                    ; preds = %bb.an, %bb.am
  %i.bb = load i16, ptr %i.az, align 8, !tbaa !31
  %.not26.i = icmp eq i16 %i.bb, 0
  br i1 %.not26.i, label %.preheader.i, label %detect_data_type.exit

.preheader.i:                                     ; preds = %.critedge35.i
  br i1 %i.e, label %.preheader.split.us.i, label %.preheader.split.i, !prof !14, !nosanitize !13

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.ao
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.ao ], [ 32, %.preheader.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv62.i
  %i.bd = shl nuw nsw i64 %indvars.iv62.i, 2
  %i.be = add i64 %i.bd, %i.ad, !nosanitize !13   ; 2 uses
  %.not38.us.i = icmp ult i64 %i.be, %i.ad, !nosanitize !13
  br i1 %.not38.us.i, label %bb.ap, label %.critedge37.us.i, !prof !30, !nosanitize !13

bb.ao:                                            ; preds = %.critedge37.us.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next63.i, 256
  br i1 %exitcond65.not.i, label %detect_data_type.exit, label %.preheader.split.us.i, !llvm.loop !58

bb.ap:                                            ; preds = %.preheader.split.us.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @794, i64 %i.ad, i64 %i.be) #5, !nosanitize !13
  br label %.critedge37.us.i, !nosanitize !13

.critedge37.us.i:                                 ; preds = %.preheader.split.us.i, %bb.ap
  %i.bf = load i16, ptr %i.bc, align 4, !tbaa !31
  %.not27.us.i = icmp eq i16 %i.bf, 0
  br i1 %.not27.us.i, label %bb.ao, label %detect_data_type.exit

bb.aq:                                            ; preds = %.critedge37.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next59.i, 256
  br i1 %exitcond61.not.i, label %detect_data_type.exit, label %.preheader.split.i, !llvm.loop !58

.preheader.split.i:                               ; preds = %.preheader.i, %bb.aq
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.aq ], [ 32, %.preheader.i ] ; 3 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @793, i64 %i.b) #5, !nosanitize !13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv58.i ; 2 uses
  %i.bh = shl nuw nsw i64 %indvars.iv58.i, 2
  %i.bi = add i64 %i.bh, %i.ad, !nosanitize !13   ; 2 uses
  %.not38.i = icmp ult i64 %i.bi, %i.ad, !nosanitize !13
  br i1 %.not38.i, label %bb.ar, label %bb.as, !prof !30, !nosanitize !13

bb.ar:                                            ; preds = %.preheader.split.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @794, i64 %i.ad, i64 %i.bi) #5, !nosanitize !13
  br label %bb.as, !nosanitize !13

bb.as:                                            ; preds = %bb.ar, %.preheader.split.i
  %i.bj = ptrtoint ptr %i.bg to i64, !nosanitize !13 ; 4 uses
  %i.bk = and i64 %i.bj, 3, !nosanitize !13
  %i.bl = icmp eq i64 %i.bk, 0, !nosanitize !13
  br i1 %i.bl, label %.critedge37.i, label %bb.at, !prof !14, !nosanitize !13

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @795, i64 %i.bj) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @796, i64 %i.bj) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @797, i64 %i.bj) #5, !nosanitize !13
  br label %.critedge37.i, !nosanitize !13

.critedge37.i:                                    ; preds = %bb.as, %bb.at
  %i.bm = load i16, ptr %i.bg, align 4, !tbaa !31
  %.not27.i = icmp eq i16 %i.bm, 0
  br i1 %.not27.i, label %bb.aq, label %detect_data_type.exit

detect_data_type.exit:                            ; preds = %.critedge.i, %.critedge.us.i, %bb.aq, %.critedge37.i, %bb.ao, %.critedge37.us.i, %.critedge31.i, %.critedge33.i, %.critedge35.i
  %.014.i = phi i32 [ 1, %.critedge33.i ], [ 0, %bb.aq ], [ 1, %.critedge31.i ], [ 1, %.critedge35.i ], [ 0, %.critedge.us.i ], [ 1, %.critedge37.us.i ], [ 0, %bb.ao ], [ 1, %.critedge37.i ], [ 0, %.critedge.i ]
  br i1 %i.d, label %.critedge104, label %bb.au, !prof !14, !nosanitize !13

bb.au:                                            ; preds = %detect_data_type.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @69, i64 %i.b) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @70, i64 %i.b) #5, !nosanitize !13
  br label %.critedge104, !nosanitize !13

.critedge104:                                     ; preds = %detect_data_type.exit, %bb.au
  %i.bn = load ptr, ptr %0, align 64, !tbaa !63   ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null, !nosanitize !13
  %i.bp = ptrtoint ptr %i.bn to i64, !nosanitize !13 ; 2 uses
  %i.bq = and i64 %i.bp, 7, !nosanitize !13
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !13
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !13
  br i1 %i.bs, label %bb.aw, label %bb.av, !prof !14, !nosanitize !13

bb.av:                                            ; preds = %.critedge104
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @71, i64 %i.bp) #5, !nosanitize !13
  br label %bb.aw, !nosanitize !13

bb.aw:                                            ; preds = %bb.av, %.critedge104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 88 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64, !nosanitize !13 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !13
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !13
  br i1 %i.bw, label %bb.ay, label %bb.ax, !prof !14, !nosanitize !13

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @72, i64 %i.bu) #5, !nosanitize !13
  br label %bb.ay, !nosanitize !13

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  store i32 %.014.i, ptr %i.bt, align 8, !tbaa !66
  br i1 %i.d, label %.critedge, label %bb.az, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %._crit_edge, %bb.ay
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #5, !nosanitize !13
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2952
  call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bx)
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #5, !nosanitize !13
  br label %bb.ba, !nosanitize !13

.critedge:                                        ; preds = %._crit_edge, %bb.ay
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2952
  call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.by)
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge, %bb.az
  %.pre-phi88 = phi i1 [ true, %.critedge ], [ false, %bb.az ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2976
  call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bz)
  br i1 %i.e, label %.thread19.i.critedge, label %.thread.i, !prof !14, !nosanitize !13

.thread.i:                                        ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @534, i64 %i.b) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @535, i64 %i.b) #5, !nosanitize !13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !67
  call fastcc void @scan_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, i32 noundef %i.cc)
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @536, i64 %i.b) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @537, i64 %i.b) #5, !nosanitize !13
  br label %.thread19.i, !nosanitize !13

.thread19.i.critedge:                             ; preds = %bb.ba
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.cf = load i32, ptr %i.ce, align 16, !tbaa !67
  call fastcc void @scan_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.cd, i32 noundef %i.cf)
  br label %.thread19.i

.thread19.i:                                      ; preds = %.thread19.i.critedge, %.thread.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !68
  call fastcc void @scan_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.cg, i32 noundef %i.ci)
  br i1 %i.e, label %bb.bc, label %bb.bb, !prof !14, !nosanitize !13

bb.bb:                                            ; preds = %.thread19.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @538, i64 %i.b) #5, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.bb, %.thread19.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3000
  call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2796 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 3 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bn, %bb.bc
  %indvars.iv.i52 = phi i64 [ 18, %bb.bc ], [ %indvars.iv.next.i55, %bb.bn ] ; 5 uses
  br i1 %i.e, label %bb.bf, label %bb.be, !prof !14, !nosanitize !13

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @539, i64 %i.b) #5, !nosanitize !13
  br label %bb.bf, !nosanitize !13

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cm = getelementptr inbounds nuw i8, ptr @bl_order, i64 %indvars.iv.i52
  %i.cn = add i64 %indvars.iv.i52, ptrtoint (ptr @bl_order to i64), !nosanitize !13 ; 2 uses
  %.not.i52 = icmp ult i64 %i.cn, ptrtoint (ptr @bl_order to i64), !nosanitize !13
  br i1 %.not.i52, label %bb.bg, label %bb.bh, !prof !30, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @541, i64 ptrtoint (ptr @bl_order to i64), i64 %i.cn) #5, !nosanitize !13
  br label %bb.bh, !nosanitize !13

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !31
  %i.cp = zext i8 %i.co to i64, !nosanitize !13   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cp ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cp, 2
  %i.cs = add i64 %i.cr, %i.cl, !nosanitize !13   ; 2 uses
  %.not17.i = icmp ult i64 %i.cs, %i.cl, !nosanitize !13
  br i1 %.not17.i, label %bb.bi, label %bb.bj, !prof !30, !nosanitize !13

bb.bi:                                            ; preds = %bb.bh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @542, i64 %i.cl, i64 %i.cs) #5, !nosanitize !13
  br label %bb.bj, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ct = ptrtoint ptr %i.cq to i64, !nosanitize !13 ; 2 uses
  %i.cu = and i64 %i.ct, 3, !nosanitize !13
  %i.cv = icmp eq i64 %i.cu, 0, !nosanitize !13
  br i1 %i.cv, label %bb.bl, label %bb.bk, !prof !14, !nosanitize !13

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @543, i64 %i.ct) #5, !nosanitize !13
  br label %bb.bl, !nosanitize !13

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 2 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64, !nosanitize !13 ; 3 uses
  %i.cy = and i64 %i.cx, 1, !nosanitize !13
  %i.cz = icmp eq i64 %i.cy, 0, !nosanitize !13
  br i1 %i.cz, label %.critedge.i53, label %bb.bm, !prof !14, !nosanitize !13

bb.bm:                                            ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @544, i64 %i.cx) #5, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @545, i64 %i.cx) #5, !nosanitize !13
  br label %.critedge.i53, !nosanitize !13

.critedge.i53:                                    ; preds = %bb.bm, %bb.bl
  %i.da = load i16, ptr %i.cw, align 2, !tbaa !31
  %.not18.i = icmp eq i16 %i.da, 0
  br i1 %.not18.i, label %bb.bn, label %.split.loop.exit.i

bb.bn:                                            ; preds = %.critedge.i53
  %indvars.iv.next.i55 = add nsw i64 %indvars.iv.i52, -1
  %i.db = icmp samesign ugt i64 %indvars.iv.i52, 3
  br i1 %i.db, label %bb.bd, label %bb.bo, !llvm.loop !59

.split.loop.exit.i:                               ; preds = %.critedge.i53
  %4 = trunc nuw nsw i64 %indvars.iv.i52 to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %4, %.split.loop.exit.i ], [ 2, %bb.bn ] ; 3 uses
  %i.dc = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.dd = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dc, i64 1), !nosanitize !13 ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 0, !nosanitize !13 ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.dd, 1, !nosanitize !13
  br i1 %i.df, label %bb.bp, label %bb.bq, !prof !30, !nosanitize !13

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_add_overflow(ptr nonnull @546, i64 %i.dc, i64 1) #6, !nosanitize !13
  br label %bb.bq, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.dg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.de, i64 3), !nosanitize !13 ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 0, !nosanitize !13 ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dg, 1, !nosanitize !13
  br i1 %i.di, label %bb.br, label %bb.bs, !prof !30, !nosanitize !13

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_mul_overflow(ptr nonnull @547, i64 3, i64 %i.de) #6, !nosanitize !13
  br label %bb.bs, !nosanitize !13

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.dj = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 5), !nosanitize !13 ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 0, !nosanitize !13 ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dj, 1, !nosanitize !13
  br i1 %i.dl, label %bb.bt, label %bb.bu, !prof !30, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_add_overflow(ptr nonnull @548, i64 %i.dh, i64 5) #6, !nosanitize !13
  br label %bb.bu, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.dm = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dk, i64 5), !nosanitize !13 ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 0, !nosanitize !13 ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dm, 1, !nosanitize !13
  br i1 %i.do, label %bb.bv, label %bb.bw, !prof !30, !nosanitize !13

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_add_overflow(ptr nonnull @549, i64 %i.dk, i64 5) #6, !nosanitize !13
  br label %bb.bw, !nosanitize !13

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.dp = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dn, i64 4), !nosanitize !13 ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0, !nosanitize !13 ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dp, 1, !nosanitize !13
  br i1 %i.dr, label %bb.bx, label %bb.by, !prof !30, !nosanitize !13

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_add_overflow(ptr nonnull @550, i64 %i.dn, i64 4) #6, !nosanitize !13
  br label %bb.by, !nosanitize !13

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %i.e, label %bb.ca, label %bb.bz, !prof !14, !nosanitize !13

bb.bz:                                            ; preds = %bb.by
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @551, i64 %i.b) #5, !nosanitize !13
  br label %bb.ca, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 5960 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !34 ; 2 uses
  %i.du = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dt, i64 %i.dq), !nosanitize !13 ; 2 uses
  %i.dv = extractvalue { i64, i1 } %i.du, 1, !nosanitize !13
  br i1 %i.dv, label %bb.cb, label %build_bl_tree.exit, !prof !30, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_add_overflow(ptr nonnull @552, i64 %i.dt, i64 %i.dq) #6, !nosanitize !13
  br label %build_bl_tree.exit, !nosanitize !13

build_bl_tree.exit:                               ; preds = %bb.ca, %bb.cb
  %i.dw = extractvalue { i64, i1 } %i.du, 0, !nosanitize !13
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !34
  br i1 %.pre-phi88, label %bb.cd, label %bb.cc, !prof !14, !nosanitize !13

bb.cc:                                            ; preds = %build_bl_tree.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #5, !nosanitize !13
  br label %bb.cd, !nosanitize !13

bb.cd:                                            ; preds = %build_bl_tree.exit, %bb.cc
  %i.dx = load i64, ptr %i.ds, align 8, !tbaa !34 ; 2 uses
  %i.dy = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dx, i64 3), !nosanitize !13 ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 0, !nosanitize !13 ; 2 uses
  %i.ea = extractvalue { i64, i1 } %i.dy, 1, !nosanitize !13
  br i1 %i.ea, label %bb.ce, label %bb.cf, !prof !30, !nosanitize !13

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_add_overflow(ptr nonnull @76, i64 %i.dx, i64 3) #6, !nosanitize !13
  br label %bb.cf, !nosanitize !13

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.eb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dz, i64 7), !nosanitize !13 ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 0, !nosanitize !13
  %i.ed = extractvalue { i64, i1 } %i.eb, 1, !nosanitize !13
  br i1 %i.ed, label %bb.cg, label %bb.ch, !prof !30, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_add_overflow(ptr nonnull @77, i64 %i.dz, i64 7) #6, !nosanitize !13
  br label %bb.ch, !nosanitize !13

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.ee = lshr i64 %i.ec, 3                       ; 2 uses
  br i1 %.pre-phi88, label %bb.cj, label %bb.ci, !prof !14, !nosanitize !13

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.b) #5, !nosanitize !13
  br label %bb.cj, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.eg = load i64, ptr %i.ef, align 16, !tbaa !33 ; 2 uses
  %i.eh = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eg, i64 3), !nosanitize !13 ; 2 uses
  %i.ei = extractvalue { i64, i1 } %i.eh, 0, !nosanitize !13 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.eh, 1, !nosanitize !13
  br i1 %i.ej, label %bb.ck, label %bb.cl, !prof !30, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_add_overflow(ptr nonnull @79, i64 %i.eg, i64 3) #6, !nosanitize !13
  br label %bb.cl, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ek = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ei, i64 7), !nosanitize !13 ; 2 uses
  %i.el = extractvalue { i64, i1 } %i.ek, 0, !nosanitize !13
  %i.em = extractvalue { i64, i1 } %i.ek, 1, !nosanitize !13
  br i1 %i.em, label %bb.cm, label %bb.cn, !prof !30, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_add_overflow(ptr nonnull @80, i64 %i.ei, i64 7) #6, !nosanitize !13
  br label %bb.cn, !nosanitize !13

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.en = lshr i64 %i.el, 3                       ; 4 uses
  %.not = icmp samesign ugt i64 %i.en, %i.ee
  br i1 %.not, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  br i1 %.pre-phi88, label %bb.cq, label %bb.cp, !prof !14, !nosanitize !13

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @81, i64 %i.b) #5, !nosanitize !13
  br label %bb.cq, !nosanitize !13

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !69
  %i.eq = icmp eq i32 %i.ep, 4
  br i1 %i.eq, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq, %bb.cn
  br label %bb.cv

bb.cs:                                            ; preds = %bb.k
  %i.er = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 5), !nosanitize !13 ; 2 uses
  %i.es = extractvalue { i32, i1 } %i.er, 0, !nosanitize !13
  %i.et = extractvalue { i32, i1 } %i.er, 1, !nosanitize !13
  br i1 %i.et, label %bb.ct, label %bb.cu, !prof !30, !nosanitize !13

bb.ct:                                            ; preds = %bb.cs
  %i.eu = zext i32 %2 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @82, i64 %i.eu, i64 5) #6, !nosanitize !13
  br label %bb.cu, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ev = zext i32 %i.es to i64                   ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cr, %bb.cq, %bb.h
  %.045 = phi i64 [ 0, %bb.h ], [ %i.en, %bb.cr ], [ %i.ee, %bb.cq ], [ %i.ev, %bb.cu ] ; 2 uses
  %.044 = phi i64 [ 0, %bb.h ], [ %i.en, %bb.cr ], [ %i.en, %bb.cq ], [ %i.ev, %bb.cu ]
  %.0 = phi i32 [ 0, %bb.h ], [ %.0.lcssa.i, %bb.cr ], [ %.0.lcssa.i, %bb.cq ], [ 0, %bb.cu ] ; 2 uses
  %i.ew = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 4), !nosanitize !13 ; 2 uses
  %i.ex = extractvalue { i32, i1 } %i.ew, 0, !nosanitize !13
  %i.ey = extractvalue { i32, i1 } %i.ew, 1, !nosanitize !13
  br i1 %i.ey, label %bb.cw, label %bb.cx, !prof !30, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv
  %i.ez = zext i32 %2 to i64, !nosanitize !13
  call void @__ubsan_handle_add_overflow(ptr nonnull @83, i64 %i.ez, i64 4) #6, !nosanitize !13
  br label %bb.cx, !nosanitize !13

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.fa = zext i32 %i.ex to i64
  %i.fb = icmp samesign uge i64 %.045, %i.fa
  %i.fc = icmp ne ptr %1, null
  %or.cond = and i1 %i.fc, %i.fb
  br i1 %or.cond, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @zng_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.gx

bb.cz:                                            ; preds = %bb.cx
  %i.fd = icmp eq i64 %.044, %.045
  br i1 %i.fd, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  call fastcc void @zng_tr_emit_tree(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %3)
  call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br i1 %i.e, label %bb.gx, label %bb.db, !prof !14, !nosanitize !13

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @84, i64 %i.b) #5, !nosanitize !13
end_hunk_0
