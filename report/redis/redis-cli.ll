Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCommandBackup:bb.a
  br i1 %.not90.i, label %hi_sdslen.exit98.thread.i, label %bb.ba

bb.ba:                                            ; preds = %hi_sdslen.exit98.i
  %i.fw = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.277.i, ptr noundef nonnull @.str.499, ptr noundef nonnull %.0.lcssa.i) #32
  br label %hi_sdslen.exit98.thread.i

hi_sdslen.exit98.thread.i:                        ; preds = %bb.ba, %hi_sdslen.exit98.i, %._crit_edge117.i
  %.3.i = phi ptr [ %i.fw, %bb.ba ], [ %.277.i, %hi_sdslen.exit98.i ], [ %.277.i, %._crit_edge117.i ]
  call void @hi_sdsfree(ptr noundef nonnull %.0.lcssa.i) #32
  br label %clusterManagerNodeGetJSON.exit

clusterManagerNodeGetJSON.exit:                   ; preds = %bb.ak, %bb.al, %hi_sdslen.exit98.thread.i
  %.4.i = phi ptr [ %.3.i, %hi_sdslen.exit98.thread.i ], [ %.277.i, %bb.al ], [ %.277.i, %bb.ak ]
  %i.fx = call ptr @hi_sdscat(ptr noundef %.4.i, ptr noundef nonnull @.str.500) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %.074.i) #32
  call void @hi_sdsfree(ptr noundef nonnull %i.ax) #32
  call void @hi_sdsfree(ptr noundef %i.ay) #32
  %i.fy = call ptr @hi_sdscat(ptr noundef %.140, ptr noundef %i.fx) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %i.fx) #32
  %i.fz = load ptr, ptr %i.at, align 8, !tbaa !102
  %.not52 = icmp eq ptr %i.fz, null
  br i1 %.not52, label %bb.bb, label %bb.bc, !llvm.loop !283

bb.bb:                                            ; preds = %clusterManagerNodeGetJSON.exit
  %i.ga = load ptr, ptr %i.bf, align 8, !tbaa !81
  %i.gb = load i32, ptr %i.bh, align 8, !tbaa !82
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.483, ptr noundef %i.ga, i32 noundef %i.gb)
  %i.gc = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.gd = call i32 @fflush(ptr noundef %i.gc)     ; 0 uses
  call fastcc void @getRDB(ptr noundef nonnull %i.aq)
  br label %bb.bc

bb.bc:                                            ; preds = %clusterManagerNodeGetJSON.exit, %bb.bb
  %i.ge = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not48 = icmp eq ptr %i.ge, null
  br i1 %.not48, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.bc, %bb.l
  %.039.lcssa = phi ptr [ %i.ak, %bb.l ], [ %i.fy, %bb.bc ]
  %i.gf = call ptr @hi_sdscat(ptr noundef %.039.lcssa, ptr noundef nonnull @.str.484) #32 ; 3 uses
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 656), align 8, !tbaa !136
  %i.gh = call ptr @hi_sdsnew(ptr noundef %i.gg) #32 ; 8 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !73
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = and i32 %i.gk, 7
  switch i32 %i.gl, label %hi_sdslen.exit [
    i32 0, label %bb.bd
    i32 1, label %bb.be
    i32 2, label %bb.bf
    i32 3, label %bb.bg
    i32 4, label %bb.bh
  ]

bb.bd:                                            ; preds = %._crit_edge
  %i.gm = lshr i32 %i.gk, 3
  %i.gn = zext nneg i32 %i.gm to i64
  br label %hi_sdslen.exit

bb.be:                                            ; preds = %._crit_edge
  %i.go = getelementptr inbounds i8, ptr %i.gh, i64 -3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !73
  %i.gq = zext i8 %i.gp to i64
  br label %hi_sdslen.exit

bb.bf:                                            ; preds = %._crit_edge
  %i.gr = getelementptr inbounds i8, ptr %i.gh, i64 -5
  %i.gs = load i16, ptr %i.gr, align 1, !tbaa !75
  %i.gt = zext i16 %i.gs to i64
  br label %hi_sdslen.exit

bb.bg:                                            ; preds = %._crit_edge
  %i.gu = getelementptr inbounds i8, ptr %i.gh, i64 -9
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !24
  %i.gw = zext i32 %i.gv to i64
  br label %hi_sdslen.exit

bb.bh:                                            ; preds = %._crit_edge
  %i.gx = getelementptr inbounds i8, ptr %i.gh, i64 -17
  %i.gy = load i64, ptr %i.gx, align 1, !tbaa !38
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %._crit_edge, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.0.i = phi i64 [ %i.gy, %bb.bh ], [ %i.gn, %bb.bd ], [ %i.gq, %bb.be ], [ %i.gt, %bb.bf ], [ %i.gw, %bb.bg ], [ 0, %._crit_edge ]
  %i.gz = getelementptr i8, ptr %i.gh, i64 %.0.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 -1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !73
  %.not49 = icmp eq i8 %i.hb, 47
  br i1 %.not49, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %hi_sdslen.exit
  %i.hc = call ptr @hi_sdscat(ptr noundef nonnull %i.gh, ptr noundef nonnull @.str.485) #32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %hi_sdslen.exit
  %.041 = phi ptr [ %i.hc, %bb.bi ], [ %i.gh, %hi_sdslen.exit ]
  %i.hd = call ptr @hi_sdscat(ptr noundef %.041, ptr noundef nonnull @.str.486) #32 ; 5 uses
  %i.he = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.hf = call i32 @fflush(ptr noundef %i.he)     ; 0 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.487, ptr noundef %i.hd)
  %i.hg = call noalias ptr @fopen64(ptr noundef %i.hd, ptr noundef nonnull @.str.488) ; 3 uses
  %.not50 = icmp eq ptr %i.hg, null
  br i1 %.not50, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.489, ptr noundef %i.hd)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.hh = call i32 @fputs(ptr noundef %i.gf, ptr noundef nonnull %i.hg) ; 0 uses
  %i.hi = call i32 @fclose(ptr noundef nonnull %i.hg) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.h, %bb.i, %bb.bl, %bb.bk, %bb.k
  %.142 = phi ptr [ null, %bb.k ], [ %i.hd, %bb.bl ], [ %i.hd, %bb.bk ], [ null, %bb.i ], [ null, %bb.h ]
  %.2 = phi ptr [ null, %bb.k ], [ %i.gf, %bb.bl ], [ %i.gf, %bb.bk ], [ null, %bb.i ], [ null, %bb.h ]
  %.not53 = phi i1 [ true, %bb.k ], [ false, %bb.bl ], [ true, %bb.bk ], [ true, %bb.i ], [ true, %bb.h ]
  %.037 = phi i32 [ 0, %bb.k ], [ 1, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call void @hi_sdsfree(ptr noundef %.2) #32
  call void @hi_sdsfree(ptr noundef %.142) #32
  br i1 %.not53, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not47, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.490)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 656), align 8, !tbaa !136
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.491, ptr noundef %i.hj)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bm
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.492)
  br label %bb.bs

bb.br:                                            ; preds = %parseClusterNodeAddress.exit.i, %bb.c
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.hk) #33 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.bq, %getClusterHostFromCmdArgs.exit, %bb.br
  %.0 = phi i32 [ 0, %getClusterHostFromCmdArgs.exit ], [ 0, %bb.br ], [ %.037, %bb.bq ], [ %.037, %bb.bp ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @clusterManagerCommandHelp(i32 %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.501, i64 26, i64 1, ptr %i.b) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @clusterManagerCommands, i64 %indvars.iv ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291  ; 2 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #34
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.h = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.502, ptr noundef nonnull %i.d) #32 ; 0 uses
  %i.i = icmp slt i32 %i.f, 15
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = sub i32 15, %i.f
  %smax = call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04971 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc70 = call i32 @fputc(i32 32, ptr %i.k)    ; 0 uses
  %i.l = add nuw nsw i32 %.04971, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !287

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !292  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not, ptr @.str.34, ptr %i.o
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.4, ptr noundef nonnull %spec.select) #32 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !293  ; 4 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #34
  %sext = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext, 32
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.048 = phi ptr [ %i.r, %bb.c ], [ %i.as, %bb.e ] ; 4 uses
  %i.v = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.048, i32 noundef 44) #34 ; 3 uses
  %.not62 = icmp eq ptr %i.v, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %.048 to i64
  %i.y = sub i64 %i.w, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %sext63 = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext63, 32               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.048, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !73
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68 = call i32 @fputc(i32 32, ptr %i.ab)   ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.1 = call i32 @fputc(i32 32, ptr %i.ac) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.2 = call i32 @fputc(i32 32, ptr %i.ad) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.3 = call i32 @fputc(i32 32, ptr %i.ae) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.4 = call i32 @fputc(i32 32, ptr %i.af) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.5 = call i32 @fputc(i32 32, ptr %i.ag) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.6 = call i32 @fputc(i32 32, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.7 = call i32 @fputc(i32 32, ptr %i.ai) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.8 = call i32 @fputc(i32 32, ptr %i.aj) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.9 = call i32 @fputc(i32 32, ptr %i.ak) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.10 = call i32 @fputc(i32 32, ptr %i.al) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.11 = call i32 @fputc(i32 32, ptr %i.am) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.12 = call i32 @fputc(i32 32, ptr %i.an) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.13 = call i32 @fputc(i32 32, ptr %i.ao) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc68.14 = call i32 @fputc(i32 32, ptr %i.ap) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.503, ptr noundef nonnull %i.a) #32 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  %.not64 = icmp ult ptr %i.as, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %.not64, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi ptr [ %i.as, %bb.e ], [ %.048, %bb.d ] ; 2 uses
  %i.at = icmp ult ptr %.1, %i.u
  br i1 %i.at, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.f
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66 = call i32 @fputc(i32 32, ptr %i.au)   ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.1 = call i32 @fputc(i32 32, ptr %i.av) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.2 = call i32 @fputc(i32 32, ptr %i.aw) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.3 = call i32 @fputc(i32 32, ptr %i.ax) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.4 = call i32 @fputc(i32 32, ptr %i.ay) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.5 = call i32 @fputc(i32 32, ptr %i.az) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.6 = call i32 @fputc(i32 32, ptr %i.ba) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.7 = call i32 @fputc(i32 32, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.8 = call i32 @fputc(i32 32, ptr %i.bc) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.9 = call i32 @fputc(i32 32, ptr %i.bd) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.10 = call i32 @fputc(i32 32, ptr %i.be) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.11 = call i32 @fputc(i32 32, ptr %i.bf) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.12 = call i32 @fputc(i32 32, ptr %i.bg) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.13 = call i32 @fputc(i32 32, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc66.14 = call i32 @fputc(i32 32, ptr %i.bi) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.503, ptr noundef nonnull %.1) #32 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.preheader, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond82.not, label %bb.h, label %bb.b, !llvm.loop !288

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite56 = call i64 @fwrite(ptr nonnull @.str.504, i64 157, i64 1, ptr %i.bl) ; 0 uses
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite57 = call i64 @fwrite(ptr nonnull @.str.505, i64 26, i64 1, ptr %i.bm) ; 0 uses
  %i.bn = load ptr, ptr @clusterManagerOptions, align 16, !tbaa !295 ; 2 uses
  %i.bo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #34
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.br = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.502, ptr noundef nonnull %i.bn) #32 ; 0 uses
  %i.bs = icmp slt i32 %i.bp, 15
  br i1 %i.bs, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %bb.h
  %i.bt = sub i32 15, %i.bp
  %smax83 = call i32 @llvm.smax.i32(i32 %i.bt, i32 1)
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.375 = phi i32 [ %i.bv, %.lr.ph77 ], [ 0, %.lr.ph77.preheader ]
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc60 = call i32 @fputc(i32 32, ptr %i.bu)   ; 0 uses
  %i.bv = add nuw nsw i32 %.375, 1                ; 2 uses
  %exitcond84.not = icmp eq i32 %i.bv, %smax83
  br i1 %exitcond84.not, label %._crit_edge78, label %.lr.ph77, !llvm.loop !289

._crit_edge78:                                    ; preds = %.lr.ph77, %bb.h
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @clusterManagerOptions, i64 8), align 8, !tbaa !296
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.4, ptr noundef %i.bx) #32 ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc = call i32 @fputc(i32 10, ptr %i.bz)     ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clusterManagerSlotCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #34
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clusterManagerSlotCountCompareDesc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = load ptr, ptr %1, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16468
  %i.d = load i32, ptr %i.c, align 4, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16468
  %i.f = load i32, ptr %i.e, align 4, !tbaa !100
  %i.g = sub nsw i32 %i.d, %i.f
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clusterManagerCompareNodeBalance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = load ptr, ptr %1, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16516
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16516
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86
  %i.g = sub nsw i32 %i.d, %i.f
  ret i32 %i.g
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @showLatencyDistSamples(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71) ; 0 uses
  %i.b = sitofp i64 %1 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !143
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, %i.b
  %i.h = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.i = add nsw i32 %i.h, -1
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul double %i.g, %i.j
  %i.l = tail call double @llvm.ceil.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  %i.n = load ptr, ptr @spectrum_palette, align 8, !tbaa !145
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !146
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.q, i32 noundef %i.s) ; 0 uses
  store i64 0, ptr %i.d, align 8, !tbaa !143
  %i.u = load i64, ptr %i.c, align 8, !tbaa !147
  %i.v = icmp eq i64 %i.u, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.v, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.x = tail call i32 @fflush(ptr noundef %i.w)  ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @showLatencyDistLegend() local_unnamed_addr #14 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80) ; 0 uses
  %i.b = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @spectrum_palette, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local range(i32 0, 2) i32 @sendReplconf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.82, ptr noundef %0, ptr noundef %1) #39 ; 0 uses
  %i.c = load ptr, ptr @context, align 8, !tbaa !148
  %i.d = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.c, ptr noundef nonnull @.str.83, ptr noundef %0, ptr noundef %1) #32 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.f) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !50
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.85, ptr noundef %0, ptr noundef %i.k) #39 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  tail call void @freeReplyObject(ptr noundef nonnull %i.d) #32
  ret i32 %.0
}

declare ptr @redisCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #18

declare void @freeReplyObject(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local void @sendCapa() local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @sendReplconf(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) ; 0 uses
  ret void
}

end_hunk_0
