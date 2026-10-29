Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/builtin-check?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@copy_file:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.n = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not28 = icmp eq ptr %i.n, null                ; 2 uses
  %..str.41 = select i1 %.not28, ptr @.str.4, ptr %i.n
  %i.o = select i1 %.not28, ptr @.str.4, ptr @.str.5
  %i.p = tail call ptr @__errno_location() #22
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #18
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.90, ptr noundef nonnull %..str.41, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.6, ptr noundef nonnull %1, ptr noundef %i.r) #23 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.t = call i32 @fstat(i32 noundef %i.b, ptr noundef nonnull %2) #18
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.w = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not27 = icmp eq ptr %i.w, null                ; 2 uses
  %..str.42 = select i1 %.not27, ptr @.str.4, ptr %i.w
  %i.x = select i1 %.not27, ptr @.str.4, ptr @.str.5
  %i.y = tail call ptr @__errno_location() #22
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = tail call ptr @strerror(i32 noundef %i.z) #18
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.91, ptr noundef nonnull %..str.42, ptr noundef nonnull %i.x, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 226, ptr noundef nonnull @__func__.copy_file, ptr noundef %i.aa) #23 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !34
  %i.ae = tail call i32 @fchmod(i32 noundef %i.k, i32 noundef %i.ad) #18
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ah = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not26 = icmp eq ptr %i.ah, null               ; 2 uses
  %..str.43 = select i1 %.not26, ptr @.str.4, ptr %i.ah
  %i.ai = select i1 %.not26, ptr @.str.4, ptr @.str.5
  %i.aj = tail call ptr @__errno_location() #22
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.al = tail call ptr @strerror(i32 noundef %i.ak) #18
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.92, ptr noundef nonnull %..str.43, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 231, ptr noundef nonnull @__func__.copy_file, ptr noundef %i.al) #23 ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not30 = icmp eq i64 %i.ao, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.ap = sub i64 %.031, %i.aq                    ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.031 = phi i64 [ %i.ap, %bb.j ], [ %i.ao, %bb.i ] ; 2 uses
  %i.aq = call i64 @sendfile(i32 noundef %i.k, i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef %.031) #18 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.at = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not25 = icmp eq ptr %i.at, null               ; 2 uses
  %..str.44 = select i1 %.not25, ptr @.str.4, ptr %i.at
  %i.au = select i1 %.not25, ptr @.str.4, ptr @.str.5
  %i.av = tail call ptr @__errno_location() #22
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19
  %i.ax = call ptr @strerror(i32 noundef %i.aw) #18
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.93, ptr noundef nonnull %..str.44, ptr noundef nonnull %i.au, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 238, ptr noundef nonnull @__func__.copy_file, ptr noundef %i.ax) #23 ; 0 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.az = call i32 @close(i32 noundef %i.k) #18   ; 0 uses
  %i.ba = call i32 @close(i32 noundef %i.b) #18   ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.021 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define dso_local i32 @objtool_run(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr @orig_argc, align 4, !tbaa !19
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 8) #25 ; 3 uses
  store ptr %i.b, ptr @orig_argv, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %save_argv.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.e = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null              ; 2 uses
  %..str.4.i = select i1 %.not10.i, ptr @.str.4, ptr %i.e
  %i.f = select i1 %.not10.i, ptr @.str.4, ptr @.str.5
  %i.g = tail call ptr @__errno_location() #22
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #18
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.94, ptr noundef nonnull %..str.4.i, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 252, ptr noundef nonnull @__func__.save_argv, ptr noundef %i.i) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %save_argv.exit, label %.lr.ph.i, !llvm.loop !36

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = tail call noalias ptr @strdup(ptr noundef %i.l) #18 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !14
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.p = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not12.i = icmp eq ptr %i.p, null              ; 2 uses
  %..str.41.i = select i1 %.not12.i, ptr @.str.4, ptr %i.p
  %i.q = select i1 %.not12.i, ptr @.str.4, ptr @.str.5
  %i.r = tail call ptr @__errno_location() #22
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = tail call ptr @strerror(i32 noundef %i.s) #18
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.95, ptr noundef nonnull %..str.41.i, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 259, ptr noundef nonnull @__func__.save_argv, ptr noundef %i.l, ptr noundef %i.t) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable

save_argv.exit:                                   ; preds = %bb.c, %.preheader.i
  %i.v = tail call i32 @cmd_parse_options(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @check_usage) ; 0 uses
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 59), align 1, !tbaa !37, !range !38, !noundef !39
  %i.x = trunc nuw i8 %i.w to i1
  %.not.i23 = xor i1 %i.x, true
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 21), align 1, !range !38
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %or.cond.i = select i1 %.not.i23, i1 true, i1 %i.z
  br i1 %or.cond.i, label %bb.e, label %opts_valid.exit

bb.e:                                             ; preds = %save_argv.exit
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 23), align 1, !tbaa !40, !range !38, !noundef !39 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  %.not2.i = xor i1 %i.ab, true
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 58), align 2, !range !38
  %i.ad = trunc nuw i8 %i.ac to i1                ; 3 uses
  %or.cond4.i = select i1 %.not2.i, i1 true, i1 %i.ad
  br i1 %or.cond4.i, label %bb.f, label %opts_valid.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 20), align 4, !tbaa !41, !range !38, !noundef !39 ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1
  %.not6.i = xor i1 %i.af, true
  %or.cond8.i = select i1 %.not6.i, i1 true, i1 %i.ad
  br i1 %or.cond8.i, label %bb.g, label %opts_valid.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 34), align 2, !tbaa !42, !range !38, !noundef !39
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not10.i24 = xor i1 %i.ah, true
  %or.cond12.i = select i1 %.not10.i24, i1 true, i1 %i.ad
  br i1 %or.cond12.i, label %bb.h, label %opts_valid.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 41), align 1, !tbaa !43, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 28), align 4
  %i.al = icmp eq i32 %i.ak, 0
  %or.cond16.not.i = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond16.not.i, label %opts_valid.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 57), align 1, !tbaa !44, !range !38, !noundef !39
  %i.an = trunc nuw i8 %i.am to i1
  %.not18.i = xor i1 %i.an, true
  %or.cond20.i = or i1 %i.aj, %.not18.i
  br i1 %or.cond20.i, label %bb.j, label %opts_valid.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 8), align 8, !tbaa !45
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 17), align 1, !range !38
  %.fr46 = freeze i8 %i.aq
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 18), align 2, !range !38
  %.fr49 = freeze i8 %i.ar
  %i.as = or i8 %.fr49, %i.ae
  %i.at = icmp ne i8 %i.as, 0
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 22), align 2, !range !38
  %i.av = or i8 %i.au, %i.aa
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 24), align 8, !range !38
  %.fr43 = freeze i8 %i.ax
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 32), align 8, !range !38
  %.fr51 = freeze i8 %i.ay
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 33), align 1, !range !38
  %.fr44 = freeze i8 %i.az
  %i.ba = trunc i8 %.fr44 to i1
  %i.bb = load <4 x i8>, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 35), align 1
  %.fr = freeze <4 x i8> %i.bb
  %i.bc = trunc <4 x i8> %.fr to <4 x i1>
  %i.bd = bitcast <4 x i1> %i.bc to i4
  %i.be = icmp ne i4 %i.bd, 0
  %op.rdx37 = or i1 %i.at, %i.ba
  %2 = or i8 %.fr43, %.fr46
  %3 = or i8 %.fr51, %2
  %4 = trunc i8 %3 to i1
  %op.rdx39 = or i1 %i.be, %4
  %5 = or i1 %op.rdx39, %op.rdx37
  %i.bf = select i1 %5, i1 true, i1 %i.ap
  %op.rdx41.a = select i1 %i.bf, i1 true, i1 %i.aw
  %6 = freeze i1 %op.rdx41.a
  %op.rdx42 = select i1 %6, i1 true, i1 %i.z
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 16), align 8, !tbaa !26, !range !38, !noundef !39
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  br i1 %op.rdx42, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.bh, label %opts_valid.exit, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.bh, label %bb.m, label %opts_valid.exit

opts_valid.exit:                                  ; preds = %save_argv.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l
  %.str.104.sink.i = phi ptr [ @.str.103, %bb.k ], [ @.str.102, %bb.i ], [ @.str.101, %bb.h ], [ @.str.100, %bb.g ], [ @.str.99, %bb.f ], [ @.str.98, %bb.e ], [ @.str.97, %save_argv.exit ], [ @.str.104, %bb.l ]
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bj = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not57.i = icmp eq ptr %i.bj, null             ; 2 uses
  %..str.449.i = select i1 %.not57.i, ptr @.str.4, ptr %i.bj
  %i.bk = select i1 %.not57.i, ptr @.str.4, ptr @.str.5
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull %.str.104.sink.i, ptr noundef nonnull %..str.449.i, ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.6) #23 ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  store ptr %i.bm, ptr @objname, align 8, !tbaa !14
  %i.bn = tail call i32 @orc_dump(ptr noundef %i.bm) #18
  br label %bb.z

bb.n:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  store ptr %i.bo, ptr @objname, align 8, !tbaa !14
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 56), align 8, !tbaa !46, !range !38, !noundef !39
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 64), align 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  %or.cond.not = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %or.cond.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call fastcc i32 @copy_file(ptr noundef %i.bo, ptr noundef %i.br)
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 64), align 8, !tbaa !23 ; 2 uses
  store ptr %i.bu, ptr @objname, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bv = phi ptr [ %i.bu, %bb.p ], [ %i.bo, %bb.n ]
  %i.bw = tail call ptr @objtool_open_read(ptr noundef %i.bv) #18 ; 5 uses
  %.not19 = icmp eq ptr %i.bw, null
  br i1 %.not19, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 58), align 2, !tbaa !47, !range !38, !noundef !39
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !53
  %i.ca = getelementptr i8, ptr %i.bz, i64 96
  %.val = load i32, ptr %i.ca, align 8, !tbaa !61
  %i.cb = icmp ugt i32 %.val, 1
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cd = load ptr, ptr @objname, align 8, !tbaa !14 ; 2 uses
  %.not20 = icmp eq ptr %i.cd, null               ; 2 uses
  %..str.4 = select i1 %.not20, ptr @.str.4, ptr %i.cd
  %i.ce = select i1 %.not20, ptr @.str.4, ptr @.str.5
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.13, ptr noundef nonnull %..str.4, ptr noundef nonnull %i.ce, ptr noundef nonnull @.str.6) #23 ; 0 uses
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cg = tail call i32 @check(ptr noundef nonnull %i.bw) #18 ; 2 uses
  %.not21 = icmp eq i32 %i.cg, 0
  br i1 %.not21, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 56), align 8, !tbaa !46, !range !38, !noundef !39
  %i.ci = trunc nuw i8 %i.ch to i1
  %.pre28 = load ptr, ptr %i.bw, align 8, !tbaa !53 ; 4 uses
  br i1 %i.ci, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre28, i64 76
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !62, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call i32 @elf_write(ptr noundef nonnull %.pre28) #18
  %.not22 = icmp eq i32 %i.cm, 0
  br i1 %.not22, label %._crit_edge, label %bb.z

._crit_edge:                                      ; preds = %bb.x
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w, %bb.v
  %i.cn = phi ptr [ %.pre, %._crit_edge ], [ %.pre28, %bb.w ], [ %.pre28, %bb.v ]
  %i.co = tail call i32 @elf_close(ptr noundef %i.cn) #18
  br label %bb.z

bb.z:                                             ; preds = %opts_valid.exit, %bb.x, %bb.u, %bb.q, %bb.o, %bb.y, %bb.t, %bb.m
  %.0 = phi i32 [ %i.bn, %bb.m ], [ 1, %opts_valid.exit ], [ 1, %bb.q ], [ %i.co, %bb.y ], [ %i.cg, %bb.u ], [ 1, %bb.t ], [ 1, %bb.o ], [ 1, %bb.x ]
  ret i32 %.0
}

declare i32 @orc_dump(ptr noundef) local_unnamed_addr #5

declare ptr @objtool_open_read(ptr noundef) local_unnamed_addr #5

declare i32 @check(ptr noundef) local_unnamed_addr #5

declare i32 @elf_write(ptr noundef) local_unnamed_addr #5

declare i32 @elf_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @parse_hacks(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly %1, i32 %2) #12 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread18, label %bb.b

.thread18:                                        ; preds = %bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 17), align 1, !tbaa !63
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 18), align 2, !tbaa !64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.86) #19
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 17), align 1, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.013 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ]
  %i.b = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.28) #19
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.thread15, label %bb.d

bb.d:                                             ; preds = %.thread
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 18), align 2, !tbaa !64
  br label %.thread15

.thread15:                                        ; preds = %.thread, %bb.d
  %.117 = phi i32 [ -1, %bb.d ], [ %.013, %.thread ]
  %i.c = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.87) #19
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread18, %.thread15
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 19), align 1, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread15
  %.2 = phi i32 [ -1, %bb.e ], [ %.117, %.thread15 ]
  %not..2 = xor i32 %.2, -1
  ret i32 %not..2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @parse_dump(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 %2) #12 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.30) #19
  %.not3 = icmp eq i32 %i.a, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 16), align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @sendfile(i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

end_hunk_0
