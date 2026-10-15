Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCommandBackup:bb.a
  br i1 %.not90.i, label %hi_sdslen.exit98.thread.i, label %bb.ba

bb.ba:                                            ; preds = %hi_sdslen.exit98.i
  %i.fx = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.277.i, ptr noundef nonnull @.str.499, ptr noundef nonnull %.0.lcssa.i) #32
  br label %hi_sdslen.exit98.thread.i

hi_sdslen.exit98.thread.i:                        ; preds = %bb.ba, %hi_sdslen.exit98.i, %._crit_edge117.i
  %.3.i = phi ptr [ %i.fx, %bb.ba ], [ %.277.i, %hi_sdslen.exit98.i ], [ %.277.i, %._crit_edge117.i ]
  call void @hi_sdsfree(ptr noundef nonnull %.0.lcssa.i) #32
  br label %clusterManagerNodeGetJSON.exit

clusterManagerNodeGetJSON.exit:                   ; preds = %bb.ak, %bb.al, %hi_sdslen.exit98.thread.i
  %.4.i = phi ptr [ %.3.i, %hi_sdslen.exit98.thread.i ], [ %.277.i, %bb.al ], [ %.277.i, %bb.ak ]
  %i.fy = call ptr @hi_sdscat(ptr noundef %.4.i, ptr noundef nonnull @.str.500) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %.074.i) #32
  call void @hi_sdsfree(ptr noundef nonnull %i.ay) #32
  call void @hi_sdsfree(ptr noundef %i.az) #32
  %i.fz = call ptr @hi_sdscat(ptr noundef %.140, ptr noundef %i.fy) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %i.fy) #32
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !102
  %.not52 = icmp eq ptr %i.ga, null
  br i1 %.not52, label %bb.bb, label %bb.bc, !llvm.loop !283

bb.bb:                                            ; preds = %clusterManagerNodeGetJSON.exit
  %i.gb = load ptr, ptr %i.bg, align 8, !tbaa !81
  %i.gc = load i32, ptr %i.bi, align 8, !tbaa !82
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.483, ptr noundef %i.gb, i32 noundef %i.gc)
  %i.gd = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.ge = call i32 @fflush(ptr noundef %i.gd)     ; 0 uses
  call fastcc void @getRDB(ptr noundef nonnull %i.ar)
  br label %bb.bc

bb.bc:                                            ; preds = %clusterManagerNodeGetJSON.exit, %bb.bb
  %i.gf = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not48 = icmp eq ptr %i.gf, null
  br i1 %.not48, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.bc, %bb.l
  %.039.lcssa = phi ptr [ %i.al, %bb.l ], [ %i.fz, %bb.bc ]
  %i.gg = call ptr @hi_sdscat(ptr noundef %.039.lcssa, ptr noundef nonnull @.str.484) #32 ; 3 uses
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 656), align 8, !tbaa !136
  %i.gi = call ptr @hi_sdsnew(ptr noundef %i.gh) #32 ; 8 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !73
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = and i32 %i.gl, 7
  switch i32 %i.gm, label %hi_sdslen.exit [
    i32 0, label %bb.bd
    i32 1, label %bb.be
    i32 2, label %bb.bf
    i32 3, label %bb.bg
    i32 4, label %bb.bh
  ]

bb.bd:                                            ; preds = %._crit_edge
  %i.gn = lshr i32 %i.gl, 3
  %i.go = zext nneg i32 %i.gn to i64
  br label %hi_sdslen.exit

bb.be:                                            ; preds = %._crit_edge
  %i.gp = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !73
  %i.gr = zext i8 %i.gq to i64
  br label %hi_sdslen.exit

bb.bf:                                            ; preds = %._crit_edge
  %i.gs = getelementptr inbounds i8, ptr %i.gi, i64 -5
  %i.gt = load i16, ptr %i.gs, align 1, !tbaa !75
  %i.gu = zext i16 %i.gt to i64
  br label %hi_sdslen.exit

bb.bg:                                            ; preds = %._crit_edge
  %i.gv = getelementptr inbounds i8, ptr %i.gi, i64 -9
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !24
  %i.gx = zext i32 %i.gw to i64
  br label %hi_sdslen.exit

bb.bh:                                            ; preds = %._crit_edge
  %i.gy = getelementptr inbounds i8, ptr %i.gi, i64 -17
  %i.gz = load i64, ptr %i.gy, align 1, !tbaa !38
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %._crit_edge, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.0.i = phi i64 [ %i.gz, %bb.bh ], [ %i.go, %bb.bd ], [ %i.gr, %bb.be ], [ %i.gu, %bb.bf ], [ %i.gx, %bb.bg ], [ 0, %._crit_edge ]
  %i.ha = getelementptr i8, ptr %i.gi, i64 %.0.i
  %i.hb = getelementptr i8, ptr %i.ha, i64 -1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !73
  %.not49 = icmp eq i8 %i.hc, 47
  br i1 %.not49, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %hi_sdslen.exit
  %i.hd = call ptr @hi_sdscat(ptr noundef nonnull %i.gi, ptr noundef nonnull @.str.485) #32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %hi_sdslen.exit
  %.041 = phi ptr [ %i.hd, %bb.bi ], [ %i.gi, %hi_sdslen.exit ]
  %i.he = call ptr @hi_sdscat(ptr noundef %.041, ptr noundef nonnull @.str.486) #32 ; 5 uses
  %i.hf = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.hg = call i32 @fflush(ptr noundef %i.hf)     ; 0 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.487, ptr noundef %i.he)
  %i.hh = call noalias ptr @fopen64(ptr noundef %i.he, ptr noundef nonnull @.str.488) ; 3 uses
  %.not50 = icmp eq ptr %i.hh, null
  br i1 %.not50, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.489, ptr noundef %i.he)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.hi = call i32 @fputs(ptr noundef %i.gg, ptr noundef nonnull %i.hh) ; 0 uses
  %i.hj = call i32 @fclose(ptr noundef nonnull %i.hh) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.h, %bb.i, %bb.bl, %bb.bk, %bb.k
  %.142 = phi ptr [ null, %bb.k ], [ %i.he, %bb.bl ], [ %i.he, %bb.bk ], [ null, %bb.i ], [ null, %bb.h ]
  %.2 = phi ptr [ null, %bb.k ], [ %i.gg, %bb.bl ], [ %i.gg, %bb.bk ], [ null, %bb.i ], [ null, %bb.h ]
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
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 656), align 8, !tbaa !136
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.491, ptr noundef %i.hk)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bm
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.492)
  br label %bb.bs

bb.br:                                            ; preds = %parseClusterNodeAddress.exit.i, %bb.c
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.hl) #33 ; 0 uses
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
  %.04970 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc69 = call i32 @fputc(i32 32, ptr %i.k)    ; 0 uses
  %i.l = add nuw nsw i32 %.04970, 1               ; 2 uses
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
  %i.t = shl i64 %i.s, 32
  %i.u = ashr exact i64 %i.t, 32
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.048 = phi ptr [ %i.r, %bb.c ], [ %i.au, %bb.e ] ; 4 uses
  %i.w = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.048, i32 noundef 44) #34 ; 3 uses
  %.not62 = icmp eq ptr %i.w, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.048 to i64
  %i.z = sub i64 %i.x, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.aa = shl i64 %i.z, 32
  %i.ab = ashr exact i64 %i.aa, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.048, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !73
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67 = call i32 @fputc(i32 32, ptr %i.ad)   ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.1 = call i32 @fputc(i32 32, ptr %i.ae) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.2 = call i32 @fputc(i32 32, ptr %i.af) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.3 = call i32 @fputc(i32 32, ptr %i.ag) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.4 = call i32 @fputc(i32 32, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.5 = call i32 @fputc(i32 32, ptr %i.ai) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.6 = call i32 @fputc(i32 32, ptr %i.aj) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.7 = call i32 @fputc(i32 32, ptr %i.ak) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.8 = call i32 @fputc(i32 32, ptr %i.al) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.9 = call i32 @fputc(i32 32, ptr %i.am) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.10 = call i32 @fputc(i32 32, ptr %i.an) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.11 = call i32 @fputc(i32 32, ptr %i.ao) ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.12 = call i32 @fputc(i32 32, ptr %i.ap) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.13 = call i32 @fputc(i32 32, ptr %i.aq) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc67.14 = call i32 @fputc(i32 32, ptr %i.ar) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.503, ptr noundef nonnull %i.a) #32 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %.not63 = icmp ult ptr %i.au, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %.not63, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi ptr [ %i.au, %bb.e ], [ %.048, %bb.d ] ; 2 uses
  %i.av = icmp ult ptr %.1, %i.v
  br i1 %i.av, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.f
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65 = call i32 @fputc(i32 32, ptr %i.aw)   ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.1 = call i32 @fputc(i32 32, ptr %i.ax) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.2 = call i32 @fputc(i32 32, ptr %i.ay) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.3 = call i32 @fputc(i32 32, ptr %i.az) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.4 = call i32 @fputc(i32 32, ptr %i.ba) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.5 = call i32 @fputc(i32 32, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.6 = call i32 @fputc(i32 32, ptr %i.bc) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.7 = call i32 @fputc(i32 32, ptr %i.bd) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.8 = call i32 @fputc(i32 32, ptr %i.be) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.9 = call i32 @fputc(i32 32, ptr %i.bf) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.10 = call i32 @fputc(i32 32, ptr %i.bg) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.11 = call i32 @fputc(i32 32, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.12 = call i32 @fputc(i32 32, ptr %i.bi) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.13 = call i32 @fputc(i32 32, ptr %i.bj) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc65.14 = call i32 @fputc(i32 32, ptr %i.bk) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.503, ptr noundef nonnull %.1) #32 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.preheader, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond81.not, label %bb.h, label %bb.b, !llvm.loop !288

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite56 = call i64 @fwrite(ptr nonnull @.str.504, i64 157, i64 1, ptr %i.bn) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite57 = call i64 @fwrite(ptr nonnull @.str.505, i64 26, i64 1, ptr %i.bo) ; 0 uses
  %i.bp = load ptr, ptr @clusterManagerOptions, align 16, !tbaa !295 ; 2 uses
  %i.bq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #34
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.502, ptr noundef nonnull %i.bp) #32 ; 0 uses
  %i.bu = icmp slt i32 %i.br, 15
  br i1 %i.bu, label %.lr.ph76.preheader, label %._crit_edge77

.lr.ph76.preheader:                               ; preds = %bb.h
  %i.bv = sub i32 15, %i.br
  %smax82 = call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %.374 = phi i32 [ %i.bx, %.lr.ph76 ], [ 0, %.lr.ph76.preheader ]
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc60 = call i32 @fputc(i32 32, ptr %i.bw)   ; 0 uses
  %i.bx = add nuw nsw i32 %.374, 1                ; 2 uses
  %exitcond83.not = icmp eq i32 %i.bx, %smax82
  br i1 %exitcond83.not, label %._crit_edge77, label %.lr.ph76, !llvm.loop !289

._crit_edge77:                                    ; preds = %.lr.ph76, %bb.h
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @clusterManagerOptions, i64 8), align 8, !tbaa !296
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.4, ptr noundef %i.bz) #32 ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !27
  %fputc = call i32 @fputc(i32 10, ptr %i.cb)     ; 0 uses
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
