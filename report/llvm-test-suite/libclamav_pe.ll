Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_pe?download=true
inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a

bb.o:                                             ; preds = %bb.m
  %i.y = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %2, i32 noundef 24) #13
  %.not2670 = icmp eq i32 %i.y, 24
  br i1 %.not2670, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #13
  br label %.critedge3020

bb.q:                                             ; preds = %bb.o
  %i.z = load i32, ptr %2, align 4, !tbaa !12
  %.not2671 = icmp eq i32 %i.z, 17744
  br i1 %.not2671, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #13
  br label %.critedge3020

bb.s:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !65
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 8192
  %.not2672 = icmp eq i32 %i.ad, 0                ; 4 uses
  br i1 %.not2672, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.ae = and i32 %i.ac, 1
  %.not2673 = icmp eq i32 %i.ae, 0
  br i1 %.not2673, label %bb.u, label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s
  %.str.11.sink = phi ptr [ @.str.10, %bb.s ], [ @.str.11, %bb.t ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.11.sink) #13
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !66 ; 2 uses
  switch i16 %i.ag, label %bb.az [
    i16 0, label %bb.v
    i16 332, label %bb.w
    i16 333, label %bb.x
    i16 334, label %bb.y
    i16 352, label %bb.z
    i16 354, label %bb.aa
    i16 358, label %bb.ab
    i16 360, label %bb.ac
    i16 388, label %bb.ad
    i16 644, label %bb.ae
    i16 496, label %bb.af
    i16 512, label %bb.ag
    i16 616, label %bb.ah
    i16 614, label %bb.ai
    i16 870, label %bb.aj
    i16 1126, label %bb.ak
    i16 418, label %bb.al
    i16 419, label %bb.am
    i16 420, label %bb.an
    i16 422, label %bb.ao
    i16 424, label %bb.ap
    i16 448, label %bb.aq
    i16 450, label %bb.ar
    i16 467, label %bb.as
    i16 1312, label %bb.at
    i16 3311, label %bb.au
    i16 3772, label %bb.av
    i16 -28607, label %bb.aw
    i16 -16146, label %bb.ax
    i16 -31132, label %bb.ay
  ]

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #13
  br label %bb.ba

bb.w:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #13
  br label %bb.ba

bb.x:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #13
  br label %bb.ba

bb.y:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #13
  br label %bb.ba

bb.z:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #13
  br label %bb.ba

bb.aa:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #13
  br label %bb.ba

bb.ab:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #13
  br label %bb.ba

bb.ac:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #13
  br label %bb.ba

bb.ad:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #13
  br label %bb.ba

bb.ae:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21) #13
  br label %bb.ba

bb.af:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22) #13
  br label %bb.ba

bb.ag:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #13
  br label %bb.ba

bb.ah:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #13
  br label %bb.ba

bb.ai:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #13
  br label %bb.ba

bb.aj:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26) #13
  br label %bb.ba

bb.ak:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #13
  br label %bb.ba

bb.al:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #13
  br label %bb.ba

bb.am:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #13
  br label %bb.ba

bb.an:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #13
  br label %bb.ba

bb.ao:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #13
  br label %bb.ba

bb.ap:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #13
  br label %bb.ba

bb.aq:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #13
  br label %bb.ba

bb.ar:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #13
  br label %bb.ba

bb.as:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35) #13
  br label %bb.ba

bb.at:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.36) #13
  br label %bb.ba

bb.au:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37) #13
  br label %bb.ba

bb.av:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38) #13
  br label %bb.ba

bb.aw:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39) #13
  br label %bb.ba

bb.ax:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #13
  br label %bb.ba

bb.ay:                                            ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.u
  %i.ah = zext i16 %i.ag to i32
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.42, i32 noundef %i.ah) #13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !13 ; 23 uses
  %i.ak = zext i16 %i.aj to i32                   ; 13 uses
  %i.al = add i16 %i.aj, -97
  %or.cond27 = icmp ult i16 %i.al, -96
  br i1 %or.cond27, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !61
  %i.ao = and i32 %i.an, 64
  %.not2994 = icmp eq i32 %i.ao, 0
  br i1 %.not2994, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ap = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2996 = icmp eq ptr %i.ap, null
  br i1 %.not2996, label %.critedge3020, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr @.str.4, ptr %i.ap, align 8, !tbaa !64
  br label %.critedge3020

bb.be:                                            ; preds = %bb.bb
  %.not2995 = icmp eq i16 %i.aj, 0
  br i1 %.not2995, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.43, i32 noundef %i.ak) #13
  br label %.critedge3020

bb.bg:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.44) #13
  br label %.critedge3020

bb.bh:                                            ; preds = %bb.ba
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45, i32 noundef %i.ak) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.as = zext i32 %i.ar to i64
  store i64 %i.as, ptr %i.c, align 8, !tbaa !68
  %i.at = call ptr @ctime(ptr noundef nonnull %i.c) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, ptr noundef %i.at) #13
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.av = load i16, ptr %i.au, align 4, !tbaa !15
  %i.aw = zext i16 %i.av to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %i.aw) #13
  %i.ax = load i16, ptr %i.au, align 4, !tbaa !15
  %i.ay = icmp ult i16 %i.ax, 224
  br i1 %i.ay, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !61
  %i.bb = and i32 %i.ba, 64
  %.not2992 = icmp eq i32 %i.bb, 0
  br i1 %.not2992, label %.critedge3020, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bc = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2993 = icmp eq ptr %i.bc, null
  br i1 %.not2993, label %.critedge3020, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.4, ptr %i.bc, align 8, !tbaa !64
  br label %.critedge3020

bb.bl:                                            ; preds = %bb.bh
  %i.bd = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i32 noundef 224) #13
  %.not2674 = icmp eq i32 %i.bd, 224
  br i1 %.not2674, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !61
  %i.bg = and i32 %i.bf, 64
  %.not2990 = icmp eq i32 %i.bg, 0
  br i1 %.not2990, label %.critedge3020, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2991 = icmp eq ptr %i.bh, null
  br i1 %.not2991, label %.critedge3020, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr @.str.4, ptr %i.bh, align 8, !tbaa !64
  br label %.critedge3020

bb.bp:                                            ; preds = %bb.bl
  %i.bi = load i16, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not2680 = icmp eq i16 %i.bi, 523              ; 3 uses
  br i1 %.not2680, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.bj = load i16, ptr %i.au, align 4, !tbaa !15
  %.not2678 = icmp eq i16 %i.bj, 240
  br i1 %.not2678, label %bb.cc, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !61
  %i.bm = and i32 %i.bl, 64
  %.not2988 = icmp eq i32 %i.bm, 0
  br i1 %.not2988, label %.critedge3020, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.bn = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2989 = icmp eq ptr %i.bn, null
  br i1 %.not2989, label %.critedge3020, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr @.str.4, ptr %i.bn, align 8, !tbaa !64
  br label %.critedge3020

bb.bu:                                            ; preds = %bb.bp
  %.not2675 = icmp eq i16 %i.bi, 267
  br i1 %.not2675, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.51) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !61
  %i.bq = and i32 %i.bp, 64
  %.not2676 = icmp eq i32 %i.bq, 0
  br i1 %.not2676, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.br = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2677 = icmp eq ptr %i.br, null
  br i1 %.not2677, label %.critedge3020, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.4, ptr %i.br, align 8, !tbaa !64
  br label %.critedge3020

bb.by:                                            ; preds = %bb.bv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.by
  %i.bs = load i16, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %.not2681 = icmp eq i16 %i.bs, 224
  br i1 %.not2681, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.bt = zext i16 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, -224
  %i.bv = call i64 @lseek(i32 noundef %0, i64 noundef %i.bu, i32 noundef 1) #13 ; 0 uses
  %.pre = load i16, ptr %i.au, align 4
  %i.bw = icmp eq i16 %.pre, 328
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.bx = phi i1 [ %i.bw, %bb.ca ], [ false, %bb.bz ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !71
  %i.cb = and i32 %i.ca, 16384
  %.not2682 = icmp ne i32 %i.cb, 0
  %narrow3324 = select i1 %.not2682, i1 %i.bx, i1 false
  %.02348 = zext i1 %narrow3324 to i32
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bq
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.cd = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.cc, i32 noundef 16) #13
  %.not2683 = icmp eq i32 %i.cd, 16
  br i1 %.not2683, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !61
  %i.cg = and i32 %i.cf, 64
  %.not2986 = icmp eq i32 %i.cg, 0
  br i1 %.not2986, label %.critedge3020, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ch = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2987 = icmp eq ptr %i.ch, null
  br i1 %.not2987, label %.critedge3020, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store ptr @.str.4, ptr %i.ch, align 8, !tbaa !64
  br label %.critedge3020

bb.cg:                                            ; preds = %bb.cc, %bb.cb
  %.str.68.sink = phi ptr [ @.str.53, %bb.cb ], [ @.str.68, %bb.cc ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.cb ], [ %.sink.sroa.gep4001, %bb.cc ]
  %.12349 = phi i32 [ %.02348, %bb.cb ], [ 0, %bb.cc ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !16 ; 26 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16 ; 4 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.68.sink) #13
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !16
  %i.co = zext i8 %i.cn to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.co) #13
end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a
  %i.xa = icmp ult i64 %i.wp, %i.wz
  br i1 %i.xa, label %bb.jv, label %.thread3840

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %., i64 noundef %i.wp) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.xb = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.xc = and i32 %i.xb, 256
  %.not2755 = icmp eq i32 %i.xc, 0
  br i1 %.not2755, label %.critedge3020, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.xd = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.130, ptr %i.xd, align 8, !tbaa !64
  br label %.critedge3020

.thread3840:                                      ; preds = %bb.jq, %._crit_edge3602, %bb.ju
  %i.xe = phi i32 [ %.pre3603, %._crit_edge3602 ], [ %.pre3604.pre, %bb.ju ], [ %.pre3604.pre, %bb.jq ]
  %i.xf = add i32 %i.xe, %i.wk
  %i.xg = zext i32 %i.xf to i64
  %i.xh = call ptr @cli_calloc(i64 noundef %i.xg, i64 noundef 1) #13 ; 10 uses
  %.not2745 = icmp eq ptr %i.xh, null
  br i1 %.not2745, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %.thread3840
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jy:                                            ; preds = %.thread3840
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !30 ; 4 uses
  %i.xk = add i32 %i.wh, 12
  %i.xl = icmp ult i32 %i.xj, %i.xk
  %i.xm = icmp ugt i32 %i.xj, %i.wk
  %or.cond3024 = or i1 %i.xl, %i.xm
  br i1 %or.cond3024, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.131, i32 noundef %i.xj) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.thread3170

bb.ka:                                            ; preds = %bb.jy
  %i.xn = load i32, ptr %i.h, align 4, !tbaa !7
  %i.xo = zext i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xo
  %i.xq = zext i32 %i.xj to i64
  %i.xr = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.xp, i64 noundef %i.xq) #13 ; 4 uses
  %i.xs = load i32, ptr %i.xi, align 4, !tbaa !30 ; 2 uses
  %i.xt = zext i32 %i.xs to i64
  %.not2746 = icmp eq i64 %i.xr, %i.xt
  br i1 %.not2746, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132, i32 noundef %i.xs, i64 noundef %i.xr) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.critedge3020

bb.kc:                                            ; preds = %bb.ka
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133, i64 noundef %i.xr, i64 noundef %i.xr) #13
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 123
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !16
  %i.xw = icmp eq i8 %i.xv, -24
  br i1 %i.xw, label %bb.kd, label %bb.ki

bb.kd:                                            ; preds = %bb.kc
  %i.xx = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !28 ; 2 uses
  %i.xz = icmp ult i32 %i.xy, 4
  br i1 %i.xz, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ya = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.yb = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %.val3104 = load i32, ptr %i.yb, align 4        ; 2 uses
  %i.yc = add i32 %.val3104, %i.vp                ; 2 uses
  %i.yd = add i32 %i.yc, 128
  %i.ye = load i32, ptr %i.ya, align 4, !tbaa !26 ; 3 uses
  %.not2748 = icmp ult i32 %i.yd, %i.ye
  br i1 %.not2748, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.yf = add i32 %i.yc, 132                      ; 2 uses
  %i.yg = add i32 %i.ye, %i.xy
  %.not2749 = icmp ule i32 %i.yf, %i.yg
  %i.yh = icmp ugt i32 %i.yf, %i.ye
  %or.cond3318 = and i1 %.not2749, %i.yh
  br i1 %or.cond3318, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kd, %bb.kf, %bb.ke
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.134) #13
  call void @free(ptr noundef nonnull %i.xh) #13
  br label %.thread3170

bb.kh:                                            ; preds = %bb.kf
  %i.yi = load i32, ptr %i.em, align 4, !tbaa !26
  %.neg = add nuw nsw i32 %i.vp, 128
  %.neg2750 = add i32 %.neg, %.val3104
  %i.yj = sub i32 %.neg2750, %i.yi
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kc, %bb.kh
  %.02288 = phi i32 [ %i.yj, %bb.kh ], [ 0, %bb.kc ]
  %i.yk = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2751 = icmp eq ptr %i.yk, null
  br i1 %.not2751, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.kk:                                            ; preds = %bb.ki
  %i.yl = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.yk, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.ym = icmp slt i32 %i.yl, 0
  br i1 %i.ym, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, ptr noundef nonnull %i.yk) #13
  call void @free(ptr noundef nonnull %i.yk) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.km:                                            ; preds = %bb.kk
  %i.yn = load i32, ptr %i.h, align 4, !tbaa !7
  %i.yo = load i32, ptr %i.vw, align 4, !tbaa !16
  %i.yp = load i32, ptr %i.em, align 4, !tbaa !26
  %i.yq = call i32 @unmew11(i32 noundef %i.vf, ptr noundef nonnull %i.xh, i32 noundef %i.wh, i32 noundef %i.wk, i32 noundef %i.yn, i32 noundef %i.yo, i32 noundef %i.yp, i32 noundef %.02288, ptr noundef null, ptr noundef null, i32 noundef %i.yl) #13
  %cond15 = icmp eq i32 %i.yq, 1
  br i1 %cond15, label %bb.kn, label %bb.kx

bb.kn:                                            ; preds = %bb.km
  %i.yr = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2752 = icmp eq i8 %i.yr, 0
  br i1 %.not2752, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.136, ptr noundef nonnull %i.yk) #13
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137) #13
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ys = call i32 @fsync(i32 noundef %i.yl) #13  ; 0 uses
  %i.yt = call i64 @lseek(i32 noundef %i.yl, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.yu = call i32 @cli_magic_scandesc(i32 noundef %i.yl, ptr noundef nonnull %1) #13
  %i.yv = icmp eq i32 %i.yu, 1
  %i.yw = call i32 @close(i32 noundef %i.yl) #13  ; 0 uses
  %i.yx = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2754 = icmp eq i8 %i.yx, 0                 ; 2 uses
  br i1 %i.yv, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %bb.kq
  br i1 %.not2754, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.yy = call i32 @unlink(ptr noundef nonnull %i.yk) #13 ; 0 uses
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  call void @free(ptr noundef nonnull %i.yk) #13
  br label %.critedge3020

bb.ku:                                            ; preds = %bb.kq
  br i1 %.not2754, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.yz = call i32 @unlink(ptr noundef nonnull %i.yk) #13 ; 0 uses
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  call void @free(ptr noundef nonnull %i.yk) #13
  br label %.critedge3020

bb.kx:                                            ; preds = %bb.km
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139) #13
  %i.za = call i32 @close(i32 noundef %i.yl) #13  ; 0 uses
  %i.zb = call i32 @unlink(ptr noundef nonnull %i.yk) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xh, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.yk) #13
  br label %.thread3170

.thread3170:                                      ; preds = %bb.jd, %.preheader3346.a, %.critedge81, %bb.jf, %bb.kx, %bb.kg, %bb.jz, %bb.jm, %bb.jj, %bb.je
  %i.zc = phi i1 [ true, %bb.jf ], [ true, %bb.je ], [ true, %bb.jj ], [ true, %bb.jm ], [ true, %bb.jz ], [ true, %bb.kg ], [ true, %bb.kx ], [ false, %.critedge81 ], [ false, %.preheader3346.a ], [ false, %bb.jd ] ; 2 uses
  %.724143172 = phi i32 [ %i.vf, %bb.jf ], [ %i.vf, %bb.je ], [ %i.vf, %bb.jj ], [ %i.vf, %bb.jm ], [ %i.vf, %bb.jz ], [ %i.vf, %bb.kg ], [ %i.vf, %bb.kx ], [ %.52412, %.critedge81 ], [ 0, %.preheader3346.a ], [ %i.uu, %bb.jd ] ; 10 uses
  %i.zd = icmp ult i32 %i.lh, 168
  br i1 %i.zd, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %.thread3170
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.kz:                                            ; preds = %.thread3170
  %i.ze = icmp ne i32 %.12349, 0                  ; 5 uses
  %or.cond99 = select i1 %i.zc, i1 true, i1 %i.ze
  br i1 %or.cond99, label %bb.la, label %.critedge171

bb.la:                                            ; preds = %bb.kz
  %i.zf = icmp eq i16 %i.aj, 3
  %or.cond102 = and i1 %i.zf, %i.ze
  br i1 %or.cond102, label %bb.lb, label %bb.le

bb.lb:                                            ; preds = %bb.la
  %i.zg = load i8, ptr %i.f, align 16, !tbaa !16
  %i.zh = icmp eq i8 %i.zg, -66
  br i1 %i.zh, label %bb.lc, label %.critedge137

bb.lc:                                            ; preds = %bb.lb
  %i.zi = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3100 = load i32, ptr %i.zi, align 1
  %i.zj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !16
  %i.zl = sub i32 %.val3100, %i.zk
  %i.zm = icmp ugt i32 %i.zl, %.22380             ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.zo = load i8, ptr %i.zn, align 1             ; 2 uses
  %i.zp = icmp eq i8 %i.zo, -83
  %or.cond106 = select i1 %i.zm, i1 %i.zp, i1 false
  %i.zq = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.zr = load i8, ptr %i.zq, align 2             ; 2 uses
  %i.zs = icmp eq i8 %i.zr, 80
  %or.cond110 = select i1 %or.cond106, i1 %i.zs, i1 false
  br i1 %or.cond110, label %bb.lk, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.zt = icmp eq i8 %i.zo, -1
  %or.cond114 = select i1 %i.zm, i1 %i.zt, i1 false
  %i.zu = icmp eq i8 %i.zr, 54
  %or.cond118 = select i1 %or.cond114, i1 %i.zu, i1 false
  br i1 %or.cond118, label %bb.lk, label %.critedge137

bb.le:                                            ; preds = %bb.la
  %i.zv = icmp ne i16 %i.aj, 2
  %or.cond121.not = or i1 %i.zv, %i.ze
  br i1 %or.cond121.not, label %.critedge137, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.zw = load i8, ptr %i.f, align 16, !tbaa !16  ; 2 uses
  %i.zx = icmp eq i8 %i.zw, 96
  %i.zy = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.zz = load i8, ptr %i.zy, align 1
  %i.aaa = icmp eq i8 %i.zz, -24
  %or.cond125 = select i1 %i.zx, i1 %i.aaa, i1 false
  br i1 %or.cond125, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.aab = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val3098 = load i32, ptr %i.aab, align 2
  %i.aac = icmp eq i32 %.val3098, 9
  br i1 %i.aac, label %bb.ll, label %.critedge137

bb.lh:                                            ; preds = %bb.lf
  %i.aad = icmp eq i8 %i.zw, -66
  br i1 %i.aad, label %bb.li, label %.critedge137

bb.li:                                            ; preds = %bb.lh
  %.val3097 = load i32, ptr %i.zy, align 1        ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !16 ; 2 uses
  %i.aag = sub i32 %.val3097, %i.aaf
  %i.aah = icmp ult i32 %i.aag, %.22380
  br i1 %i.aah, label %bb.lj, label %.critedge137

bb.lj:                                            ; preds = %bb.li
  %i.aai = icmp ne i32 %.val3097, %i.aaf
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.aak = load i8, ptr %i.aaj, align 1
  %i.aal = icmp eq i8 %i.aak, -83
  %or.cond129 = select i1 %i.aai, i1 %i.aal, i1 false
  %i.aam = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.aan = load i8, ptr %i.aam, align 2
  %i.aao = icmp eq i8 %i.aan, -117
  %or.cond133 = select i1 %or.cond129, i1 %i.aao, i1 false
  %i.aap = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = icmp eq i8 %i.aaq, -8
  %or.cond213 = select i1 %or.cond133, i1 %i.aar, i1 false
  br i1 %or.cond213, label %bb.ll, label %.critedge137

bb.lk:                                            ; preds = %bb.ld, %bb.lc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #13
  %i.aas = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !28
  %i.aau = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.aav = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !28
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.141) #13
  %i.aax = getelementptr inbounds nuw i8, ptr %i.em, i64 76
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !28
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !77
  %i.abb = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !76
  %i.abd = add i32 %i.abc, %i.aba
  %i.abe = load i32, ptr %i.em, align 4, !tbaa !26 ; 2 uses
  %i.abf = load i32, ptr %i.zj, align 4, !tbaa !16
  %i.abg = add i32 %i.abf, %i.abe
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lj, %bb.lg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #13
  %i.abh = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !28
  %i.abj = getelementptr inbounds nuw i8, ptr %i.em, i64 36 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !28
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.142) #13
  %i.abm = load i32, ptr %i.abj, align 4, !tbaa !26 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !76 ; 2 uses
  %i.abp = sub i32 %i.abm, %i.abo
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %i.abq = phi i32 [ %i.aaw, %bb.lk ], [ %i.abl, %bb.ll ]
  %i.abr = phi ptr [ %i.aau, %bb.lk ], [ %i.abj, %bb.ll ] ; 2 uses
  %i.abs = phi i32 [ %i.aat, %bb.lk ], [ %i.abi, %bb.ll ]
  %.02373 = phi i32 [ %i.abd, %bb.lk ], [ %i.abo, %bb.ll ] ; 5 uses
  %.02287 = phi i32 [ %i.abg, %bb.lk ], [ %i.abp, %bb.ll ]
  %.02286 = phi i32 [ %i.abe, %bb.lk ], [ 0, %bb.ll ] ; 2 uses
  %.02285 = phi i32 [ %i.aay, %bb.lk ], [ %i.abm, %bb.ll ]
  %i.abt = add nsw i32 %i.abs, %i.abq
  %i.abu = add nsw i32 %i.abt, %.02285            ; 9 uses
  store i32 %i.abu, ptr %i.h, align 4, !tbaa !7
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !89 ; 2 uses
  %.not2757 = icmp eq ptr %i.abw, null
  br i1 %.not2757, label %bb.lr, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 24
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !91 ; 3 uses
  %.not2758 = icmp eq i64 %i.aby, 0
  br i1 %.not2758, label %bb.lr, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.abz = call i32 @llvm.umax.i32(i32 %i.abu, i32 %.02373)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.em, i64 68
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !77
  %.3026 = call i32 @llvm.umax.i32(i32 %i.abz, i32 %i.acb) ; 2 uses
  %i.acc = zext i32 %.3026 to i64
  %i.acd = icmp ult i64 %i.aby, %i.acc
  br i1 %i.acd, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.143, i32 noundef %.3026, i64 noundef %i.aby) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ace = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.acf = and i32 %i.ace, 256
  %.not2765 = icmp eq i32 %i.acf, 0
  br i1 %.not2765, label %.critedge3020, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.acg = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.144, ptr %i.acg, align 8, !tbaa !64
  br label %.critedge3020

bb.lr:                                            ; preds = %bb.lo, %bb.ln, %bb.lm
  %i.ach = load i32, ptr %i.abr, align 4, !tbaa !26
  %i.aci = sub i32 %i.ach, %.02286                ; 2 uses
  %i.acj = icmp ugt i32 %i.aci, %i.abu
  br i1 %i.acj, label %bb.lw, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ack = getelementptr inbounds nuw i8, ptr %i.em, i64 68 ; 3 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !77
  %i.acm = sub i32 %i.abu, %i.acl
  %i.acn = icmp ugt i32 %i.aci, %i.acm
  br i1 %i.acn, label %bb.lw, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  br i1 %i.ze, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %i.aco = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !26
  %i.acq = load i32, ptr %i.em, align 4, !tbaa !26
  %i.acr = sub i32 %i.acp, %i.acq                 ; 2 uses
  %i.acs = icmp ugt i32 %i.acr, %i.abu
  %i.act = sub i32 %i.abu, %.02373
  %i.acu = icmp ugt i32 %i.acr, %i.act
  %i.acv = icmp ugt i32 %.02373, %i.abu
  %i.acw = or i1 %i.acv, %i.acu
  %or.cond3320 = select i1 %i.acs, i1 true, i1 %i.acw
  br i1 %or.cond3320, label %bb.lw, label %bb.lx

bb.lv:                                            ; preds = %bb.lt
  %.old3319 = icmp ugt i32 %.02373, %i.abu
  br i1 %.old3319, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv, %bb.lu, %bb.ls, %bb.lr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.145) #13
  br label %.critedge137

bb.lx:                                            ; preds = %bb.lu, %bb.lv
  %i.acx = zext i32 %i.abu to i64
  %i.acy = call ptr @cli_calloc(i64 noundef %i.acx, i64 noundef 1) #13 ; 12 uses
  %i.acz = icmp eq ptr %i.acy, null
  br i1 %i.acz, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.lz:                                            ; preds = %bb.lx
  %i.ada = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.adb = zext i32 %.02373 to i64                ; 3 uses
  %i.adc = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.acy, i64 noundef %i.adb) #13
  %.not2759 = icmp eq i64 %i.adc, %i.adb
  br i1 %.not2759, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.146) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.acy) #13
  br label %.critedge3020

bb.mb:                                            ; preds = %bb.lz
  br i1 %i.ze, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.add = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !26
  %i.adf = zext i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.adf
  %i.adh = load i32, ptr %i.em, align 4, !tbaa !26
  %i.adi = zext i32 %i.adh to i64
  %i.adj = sub nsw i64 0, %i.adi
  %i.adk = getelementptr inbounds i8, ptr %i.adg, i64 %i.adj
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.adk, ptr nonnull align 1 %i.acy, i64 %i.adb, i1 false)
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %i.adl = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !76
  %i.adn = zext i32 %i.adm to i64
  %i.ado = call i64 @lseek(i32 noundef %0, i64 noundef %i.adn, i32 noundef 0) #13 ; 0 uses
  %i.adp = load i32, ptr %i.abr, align 4, !tbaa !26
  %i.adq = zext i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.adq
  %i.ads = zext i32 %.02286 to i64
  %i.adt = sub nsw i64 0, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %i.adr, i64 %i.adt
  %i.adv = load i32, ptr %i.ack, align 4, !tbaa !77
  %i.adw = zext i32 %i.adv to i64
  %i.adx = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.adu, i64 noundef %i.adw) #13
  %i.ady = load i32, ptr %i.ack, align 4, !tbaa !77
  %i.adz = zext i32 %i.ady to i64
  %.not2760 = icmp eq i64 %i.adx, %i.adz
  br i1 %.not2760, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.147) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.acy) #13
  br label %.critedge3020

bb.mf:                                            ; preds = %bb.md
  %i.aea = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2761 = icmp eq ptr %i.aea, null
  br i1 %.not2761, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.acy, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.mh:                                            ; preds = %bb.mf
  %i.aeb = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aea, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.aec = icmp slt i32 %i.aeb, 0
  br i1 %i.aec, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148, ptr noundef nonnull %i.aea) #13
  call void @free(ptr noundef nonnull %i.aea) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.acy, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.mj:                                            ; preds = %bb.mh
  %i.aed = load i32, ptr %i.h, align 4, !tbaa !7
  %i.aee = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !16
  %i.aeg = load i32, ptr %i.em, align 4, !tbaa !26
  %i.aeh = call i32 @unupack(i32 noundef %.12349, ptr noundef nonnull %i.acy, i32 noundef %i.aed, ptr noundef nonnull %i.f, i32 noundef %.02287, i32 noundef %i.ky, i32 noundef %i.aef, i32 noundef %i.aeg, i32 noundef %i.aeb) #13
  %cond12 = icmp eq i32 %i.aeh, 1
  br i1 %cond12, label %bb.mk, label %bb.mu

bb.mk:                                            ; preds = %bb.mj
  %i.aei = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2762 = icmp eq i8 %i.aei, 0
  br i1 %.not2762, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.149, ptr noundef nonnull %i.aea) #13
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.150) #13
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.acy, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aej = call i32 @fsync(i32 noundef %i.aeb) #13 ; 0 uses
  %i.aek = call i64 @lseek(i32 noundef %i.aeb, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.ael = call i32 @cli_magic_scandesc(i32 noundef %i.aeb, ptr noundef nonnull %1) #13
  %i.aem = icmp eq i32 %i.ael, 1
  %i.aen = call i32 @close(i32 noundef %i.aeb) #13 ; 0 uses
  %i.aeo = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2764 = icmp eq i8 %i.aeo, 0                ; 2 uses
  br i1 %i.aem, label %bb.mo, label %bb.mr

bb.mo:                                            ; preds = %bb.mn
  br i1 %.not2764, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.aep = call i32 @unlink(ptr noundef nonnull %i.aea) #13 ; 0 uses
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  call void @free(ptr noundef nonnull %i.aea) #13
  br label %.critedge3020

bb.mr:                                            ; preds = %bb.mn
  br i1 %.not2764, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.aeq = call i32 @unlink(ptr noundef nonnull %i.aea) #13 ; 0 uses
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  call void @free(ptr noundef nonnull %i.aea) #13
  br label %.critedge3020

bb.mu:                                            ; preds = %bb.mj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.151) #13
  %i.aer = call i32 @close(i32 noundef %i.aeb) #13 ; 0 uses
  %i.aes = call i32 @unlink(ptr noundef nonnull %i.aea) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.acy, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.aea) #13
  br label %.critedge137

.critedge137:                                     ; preds = %bb.lg, %bb.ld, %bb.lb, %bb.lw, %bb.mu, %bb.lj, %bb.le, %bb.li, %bb.lh
  br i1 %i.zc, label %bb.mv, label %.critedge171

bb.mv:                                            ; preds = %.critedge137
  %i.aet = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !71
  %i.aev = and i32 %i.aeu, 64
  %i.aew = icmp ne i32 %i.aev, 0
  %i.aex = load i8, ptr %i.f, align 16
  %i.aey = icmp eq i8 %i.aex, -121
  %or.cond141 = select i1 %i.aew, i1 %i.aey, i1 false
  %i.aez = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  %i.afa = load i8, ptr %i.aez, align 1
  %i.afb = icmp eq i8 %i.afa, 37
  %or.cond217 = select i1 %or.cond141, i1 %i.afb, i1 false
  br i1 %or.cond217, label %bb.mw, label %bb.ot

bb.mw:                                            ; preds = %bb.mv
  %i.afc = add i32 %.724143172, 1                 ; 2 uses
  %i.afd = zext i32 %i.afc to i64
  %i.afe = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.afd ; 5 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 12 ; 3 uses
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !30 ; 9 uses
  %i.afh = zext i32 %.724143172 to i64
  %i.afi = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.afh ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !28 ; 4 uses
  store i32 %i.afk, ptr %i.h, align 4, !tbaa !7
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !89 ; 2 uses
  %.not2766 = icmp eq ptr %i.afm, null
  br i1 %.not2766, label %bb.nb, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !91 ; 3 uses
  %.not2767 = icmp eq i64 %i.afo, 0
  br i1 %.not2767, label %bb.nb, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.afp = call i32 @llvm.umax.i32(i32 %i.afk, i32 %i.afg) ; 2 uses
  %i.afq = zext i32 %i.afp to i64
  %i.afr = icmp ult i64 %i.afo, %i.afq
  br i1 %i.afr, label %bb.mz, label %bb.nb

bb.mz:                                            ; preds = %bb.my
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.afp, i64 noundef %i.afo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.afs = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.aft = and i32 %i.afs, 256
  %.not2790 = icmp eq i32 %i.aft, 0
  br i1 %.not2790, label %.critedge3020, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.afu = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.153, ptr %i.afu, align 8, !tbaa !64
  br label %.critedge3020

bb.nb:                                            ; preds = %bb.my, %bb.mx, %bb.mw
  %i.afv = icmp ugt i32 %i.afg, 25
  %.not2768 = icmp ugt i32 %i.afk, %i.afg
  %or.cond3030 = select i1 %i.afv, i1 %.not2768, i1 false
  br i1 %or.cond3030, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.154, i32 noundef %i.afg, i32 noundef %i.afk) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.nd:                                            ; preds = %bb.nb
  %i.afw = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val3095 = load i32, ptr %i.afw, align 2
  %i.afx = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !16
  %i.afz = sub i32 %.val3095, %i.afy              ; 5 uses
  %i.aga = load i32, ptr %i.aff, align 4, !tbaa !30 ; 2 uses
  %i.agb = icmp ult i32 %i.aga, 4
  br i1 %i.agb, label %bb.ng, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.agc = load i32, ptr %i.afe, align 4, !tbaa !26 ; 3 uses
  %.not2770 = icmp ult i32 %i.afz, %i.agc
  br i1 %.not2770, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.agd = add i32 %i.afz, 4                      ; 2 uses
  %i.age = add i32 %i.agc, %i.aga
  %.not2771 = icmp ule i32 %i.agd, %i.age
  %i.agf = icmp ugt i32 %i.agd, %i.agc
  %or.cond3032 = and i1 %i.agf, %.not2771
  br i1 %or.cond3032, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nd, %bb.nf, %bb.ne
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.155, i32 noundef %i.afz) #13
  br label %bb.ot

bb.nh:                                            ; preds = %bb.nf
  %i.agg = zext i32 %i.afg to i64                 ; 3 uses
  %i.agh = call ptr @cli_malloc(i64 noundef %i.agg) #13 ; 19 uses
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.nj:                                            ; preds = %bb.nh
  %i.agj = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.afe)
  %.not2772 = icmp eq i64 %i.agj, 0
  br i1 %.not2772, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.agk = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.agh, i32 noundef %i.afg) #13
  %.not2773 = icmp eq i32 %i.agk, %i.afg
  br i1 %.not2773, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %i.afc) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %.critedge3020

bb.nm:                                            ; preds = %bb.nk
  %i.agl = zext i32 %i.afz to i64
  %i.agm = load i32, ptr %i.afe, align 4, !tbaa !26 ; 10 uses
  %i.agn = zext i32 %i.agm to i64                 ; 2 uses
  %i.ago = sub nsw i64 %i.agl, %i.agn             ; 3 uses
  %.not2774 = icmp ult i32 %i.afz, %i.agm
  %.not2775 = icmp slt i64 %i.ago, 0
  %or.cond3033 = select i1 %.not2774, i1 true, i1 %.not2775
  %i.agp = add nuw nsw i64 %i.ago, 4
  %.not2776 = icmp sgt i64 %i.agp, %i.agg
  %or.cond3034 = select i1 %or.cond3033, i1 true, i1 %.not2776
  br i1 %or.cond3034, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.157) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.no:                                            ; preds = %bb.nm
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.ago
  %.val3094 = load i32, ptr %i.agq, align 1
  %i.agr = load i32, ptr %i.afx, align 4, !tbaa !16 ; 5 uses
  %i.ags = sub i32 %.val3094, %i.agr              ; 4 uses
  %i.agt = load i32, ptr %i.aff, align 4, !tbaa !30 ; 4 uses
  %i.agu = icmp ult i32 %i.agt, 4
  %.not2778 = icmp ult i32 %i.ags, %i.agm
  %or.cond3321 = select i1 %i.agu, i1 true, i1 %.not2778
  br i1 %or.cond3321, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.agv = add i32 %i.ags, 4                      ; 2 uses
  %i.agw = add i32 %i.agt, %i.agm                 ; 2 uses
  %.not2779 = icmp ule i32 %i.agv, %i.agw
  %i.agx = icmp ugt i32 %i.agv, %i.agm
  %or.cond3036 = and i1 %.not2779, %i.agx
  br i1 %or.cond3036, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.no, %bb.np
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.158, i32 noundef %i.ags) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.nr:                                            ; preds = %bb.np
  %i.agy = zext i32 %i.ags to i64
  %i.agz = sub nuw nsw i64 %i.agy, %i.agn         ; 2 uses
  %i.aha = icmp ult i32 %i.afg, 32
  %i.ahb = add nuw nsw i64 %i.agz, 32
  %.not2781 = icmp samesign ugt i64 %i.ahb, %i.agg
  %or.cond3038 = select i1 %i.aha, i1 true, i1 %.not2781
  br i1 %or.cond3038, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.159) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.nt:                                            ; preds = %bb.nr
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agz ; 3 uses
  %.val3093 = load i32, ptr %i.ahc, align 1
  %i.ahd = sub i32 %.val3093, %i.agr              ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4
  %.val3092 = load i32, ptr %i.ahe, align 1
  %i.ahf = sub i32 %.val3092, %i.agr              ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %.val3091 = load i32, ptr %i.ahg, align 1
  %i.ahh = sub i32 %.val3091, %i.agr              ; 3 uses
  %i.ahi = load i32, ptr %i.afi, align 4, !tbaa !26 ; 2 uses
  %.not2782 = icmp eq i32 %i.ahd, %i.ahi
  br i1 %.not2782, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.160, i32 noundef %i.ahd, i32 noundef %i.ahi) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.nv:                                            ; preds = %bb.nt
  %i.ahj = icmp uge i32 %i.ahf, %i.agm
  %i.ahk = sub nuw i32 %i.ahf, %i.agm
  %.not2783 = icmp ult i32 %i.ahk, %i.agt
end_hunk_1
begin_hunk_2_@cli_scanpe:bb.a

bb.to:                                            ; preds = %bb.tn
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  br label %.critedge3020

bb.tp:                                            ; preds = %bb.tn
  %i.axk = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.awf)
  %.not2842 = icmp eq i64 %i.axk, 0
  br i1 %.not2842, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.axl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.axd, i32 noundef %i.awh) #13
  %.not2843 = icmp eq i32 %i.axl, %i.awh
  br i1 %.not2843, label %bb.ts, label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.178, i32 noundef %i.awd) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  call void @free(ptr noundef nonnull %i.axi) #13
  br label %.critedge3020

bb.ts:                                            ; preds = %bb.tq
  %i.axm = getelementptr inbounds nuw i8, ptr %i.f, i64 105 ; 3 uses
  %i.axn = call ptr @cli_memstr(ptr noundef nonnull @.str.179, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2844 = icmp eq ptr %i.axn, null
  br i1 %.not2844, label %bb.tt, label %bb.ty

bb.tt:                                            ; preds = %bb.ts
  %i.axo = getelementptr inbounds nuw i8, ptr %i.f, i64 113 ; 3 uses
  %i.axp = call ptr @cli_memstr(ptr noundef nonnull @.str.179, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2845 = icmp eq ptr %i.axp, null
  br i1 %.not2845, label %bb.tu, label %bb.ty

bb.tu:                                            ; preds = %bb.tt
  %i.axq = call ptr @cli_memstr(ptr noundef nonnull @.str.181, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2846 = icmp eq ptr %i.axq, null
  br i1 %.not2846, label %bb.tv, label %bb.ty

bb.tv:                                            ; preds = %bb.tu
  %i.axr = call ptr @cli_memstr(ptr noundef nonnull @.str.181, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2847 = icmp eq ptr %i.axr, null
  br i1 %.not2847, label %bb.tw, label %bb.ty

bb.tw:                                            ; preds = %bb.tv
  %i.axs = call ptr @cli_memstr(ptr noundef nonnull @.str.183, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2848 = icmp eq ptr %i.axs, null
  br i1 %.not2848, label %bb.tx, label %bb.ty

bb.tx:                                            ; preds = %bb.tw
  %i.axt = call ptr @cli_memstr(ptr noundef nonnull @.str.183, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2849 = icmp eq ptr %i.axt, null
  br i1 %.not2849, label %.thread3844, label %bb.ty

bb.ty:                                            ; preds = %bb.tw, %bb.tx, %bb.tu, %bb.tv, %bb.ts, %bb.tt
  %.str.180.sink = phi ptr [ @.str.182, %bb.tu ], [ @.str.180, %bb.ts ], [ @.str.180, %bb.tt ], [ @.str.182, %bb.tv ], [ @.str.184, %bb.tx ], [ @.str.184, %bb.tw ]
  %.ph = phi i1 [ true, %bb.tu ], [ false, %bb.ts ], [ false, %bb.tt ], [ true, %bb.tv ], [ true, %bb.tx ], [ true, %bb.tw ]
  %.ph3257 = phi i1 [ false, %bb.tu ], [ true, %bb.ts ], [ true, %bb.tt ], [ false, %bb.tv ], [ true, %bb.tx ], [ true, %bb.tw ] ; 2 uses
  %.ph3258 = phi i1 [ true, %bb.tu ], [ true, %bb.ts ], [ true, %bb.tt ], [ true, %bb.tv ], [ false, %bb.tx ], [ false, %bb.tw ] ; 3 uses
  %.02370.ph = phi ptr [ @upx_inflate2d, %bb.tu ], [ @upx_inflate2b, %bb.ts ], [ @upx_inflate2b, %bb.tt ], [ @upx_inflate2d, %bb.tv ], [ @upx_inflate2e, %bb.tx ], [ @upx_inflate2e, %bb.tw ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.180.sink) #13
  %i.axu = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val3074 = load i32, ptr %i.axu, align 2
  %i.axv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !16
  %i.axx = load i32, ptr %i.awf, align 4, !tbaa !26 ; 2 uses
  %i.axy = add i32 %i.axw, %i.axx
  %i.axz = sub i32 %.val3074, %i.axy              ; 5 uses
  %i.aya = load i8, ptr %i.aez, align 1, !tbaa !16
  %i.ayb = icmp ne i8 %i.aya, -66
  %i.ayc = add i32 %i.axz, -4096
  %i.ayd = icmp ult i32 %i.ayc, -4095
  %or.cond179 = select i1 %i.ayb, i1 true, i1 %i.ayd
  br i1 %or.cond179, label %bb.tz, label %bb.ua

bb.tz:                                            ; preds = %bb.ty
  %i.aye = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayf = call i32 %.02370.ph(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.aye, i32 noundef %i.axx, i32 noundef %i.cj) #13, !callees !98
  %i.ayg = icmp sgt i32 %i.ayf, -1
  br i1 %i.ayg, label %.thread3268, label %bb.uc

bb.ua:                                            ; preds = %bb.ty
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.185, i32 noundef %i.axz) #13
  %i.ayh = zext nneg i32 %i.axz to i64
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.ayh
  %i.ayj = sub i32 %i.awh, %i.axz
  %i.ayk = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayl = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.aym = sub i32 %i.cj, %i.axz
  %i.ayn = call i32 %.02370.ph(ptr noundef nonnull %i.ayi, i32 noundef %i.ayj, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayk, i32 noundef %i.ayl, i32 noundef %i.aym) #13, !callees !98
  %i.ayo = icmp sgt i32 %i.ayn, -1
  br i1 %i.ayo, label %.thread3268, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.ayp = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayq = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.ayr = call i32 %.02370.ph(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayp, i32 noundef %i.ayq, i32 noundef %i.cj) #13, !callees !98
  %i.ays = icmp sgt i32 %i.ayr, -1
  br i1 %i.ays, label %.thread3268, label %bb.uc

.thread3268:                                      ; preds = %bb.ub, %bb.ua, %bb.tz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.186) #13
  br label %.thread3279

bb.uc:                                            ; preds = %bb.tz, %bb.ub
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.187) #13
  br i1 %.ph, label %.thread3844, label %bb.uf

.thread3844:                                      ; preds = %bb.tx, %bb.uc
  %i.ayt = phi i1 [ %.ph3257, %bb.uc ], [ true, %bb.tx ]
  %i.ayu = phi i1 [ %.ph3258, %bb.uc ], [ true, %bb.tx ] ; 2 uses
  %i.ayv = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayw = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.ayx = call i32 @upx_inflate2b(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayv, i32 noundef %i.ayw, i32 noundef %i.cj) #13
  %i.ayy = icmp eq i32 %i.ayx, -1
  br i1 %i.ayy, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %.thread3844
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.aza = add nsw i32 %i.awh, -21
  %i.azb = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azc = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azd = add i32 %i.cj, -21
  %i.aze = call i32 @upx_inflate2b(ptr noundef nonnull %i.ayz, i32 noundef %i.aza, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azb, i32 noundef %i.azc, i32 noundef %i.azd) #13
  %i.azf = icmp eq i32 %i.aze, -1
  br i1 %i.azf, label %.split, label %bb.ue

.split:                                           ; preds = %bb.ud
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.188) #13
  br i1 %i.ayt, label %bb.ug, label %bb.uj

bb.ue:                                            ; preds = %bb.ud, %.thread3844
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.189) #13
  br label %.thread3279

bb.uf:                                            ; preds = %bb.uc
  br i1 %.ph3257, label %bb.ug, label %bb.uj

bb.ug:                                            ; preds = %.split, %bb.uf
  %i.azg = phi i1 [ %i.ayu, %.split ], [ %.ph3258, %bb.uf ]
  %i.azh = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azi = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azj = call i32 @upx_inflate2d(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azh, i32 noundef %i.azi, i32 noundef %i.cj) #13
  %i.azk = icmp eq i32 %i.azj, -1
  br i1 %i.azk, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  %i.azl = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.azm = add nsw i32 %i.awh, -21
  %i.azn = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azo = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azp = add i32 %i.cj, -21
  %i.azq = call i32 @upx_inflate2d(ptr noundef nonnull %i.azl, i32 noundef %i.azm, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azn, i32 noundef %i.azo, i32 noundef %i.azp) #13
  %i.azr = icmp eq i32 %i.azq, -1
  br i1 %i.azr, label %.split3846, label %bb.ui

.split3846:                                       ; preds = %bb.uh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.190) #13
  br i1 %i.azg, label %bb.uk, label %bb.uo

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.191) #13
  br label %.thread3279

bb.uj:                                            ; preds = %.split, %bb.uf
  %i.azs = phi i1 [ %i.ayu, %.split ], [ %.ph3258, %bb.uf ]
  br i1 %i.azs, label %bb.uk, label %bb.uo

bb.uk:                                            ; preds = %.split3846, %bb.uj
  %i.azt = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azu = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azv = call i32 @upx_inflate2e(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azt, i32 noundef %i.azu, i32 noundef %i.cj) #13
  %i.azw = icmp eq i32 %i.azv, -1
  br i1 %i.azw, label %bb.ul, label %bb.un

bb.ul:                                            ; preds = %bb.uk
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.azy = add nsw i32 %i.awh, -21
  %i.azz = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.baa = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.bab = add i32 %i.cj, -21
  %i.bac = call i32 @upx_inflate2e(ptr noundef nonnull %i.azx, i32 noundef %i.azy, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azz, i32 noundef %i.baa, i32 noundef %i.bab) #13
  %i.bad = icmp eq i32 %i.bac, -1
  br i1 %i.bad, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.192) #13
  br label %bb.uo

bb.un:                                            ; preds = %bb.ul, %bb.uk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.193) #13
  br label %.thread3279

bb.uo:                                            ; preds = %.split3846, %bb.um, %bb.uj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.194) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  call void @free(ptr noundef nonnull %i.axi) #13
  br label %.critedge171

.thread3279:                                      ; preds = %.thread3268, %bb.ue, %bb.ui, %bb.ta, %bb.or, %bb.qs, %bb.un
  %.102369.ph = phi ptr [ %i.axd, %bb.un ], [ %i.auf, %bb.ta ], [ %i.aoh, %bb.qs ], [ %i.agh, %bb.or ], [ %i.axd, %bb.ui ], [ %i.axd, %bb.ue ], [ %i.axd, %.thread3268 ]
  %.82358.ph = phi ptr [ %i.axi, %bb.un ], [ %i.aul, %bb.ta ], [ %i.aon, %bb.qs ], [ %i.ahu, %bb.or ], [ %i.axi, %bb.ui ], [ %i.axi, %bb.ue ], [ %i.axi, %.thread3268 ] ; 5 uses
  call void @free(ptr noundef nonnull %.102369.ph) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bae = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2943 = icmp eq ptr %i.bae, null
  br i1 %.not2943, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %.thread3279
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.uq:                                            ; preds = %.thread3279
  %i.baf = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bae, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bag = icmp slt i32 %i.baf, 0
  br i1 %i.bag, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.bae) #13
  call void @free(ptr noundef nonnull %i.bae) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.us:                                            ; preds = %bb.uq
  %i.bah = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bai = zext i32 %i.bah to i64
  %i.baj = call i64 @write(i32 noundef %i.baf, ptr noundef nonnull %.82358.ph, i64 noundef %i.bai) #13
  %i.bak = trunc i64 %i.baj to i32
  %i.bal = load i32, ptr %i.h, align 4, !tbaa !7  ; 2 uses
  %.not2944 = icmp eq i32 %i.bal, %i.bak
  br i1 %.not2944, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.196, i32 noundef %i.bal) #13
  call void @free(ptr noundef nonnull %i.bae) #13
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.bam = call i32 @close(i32 noundef %i.baf) #13 ; 0 uses
  br label %.critedge3020

bb.uu:                                            ; preds = %bb.us
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.ban = call i32 @fsync(i32 noundef %i.baf) #13 ; 0 uses
  %i.bao = call i64 @lseek(i32 noundef %i.baf, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bap = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2945 = icmp eq i8 %i.bap, 0
  br i1 %.not2945, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.bae) #13
  br label %bb.uw

bb.uw:                                            ; preds = %bb.uv, %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #13
  %i.baq = call i32 @cli_magic_scandesc(i32 noundef %i.baf, ptr noundef %1) #13 ; 2 uses
  %i.bar = icmp eq i32 %i.baq, 1
  %i.bas = call i32 @close(i32 noundef %i.baf) #13 ; 0 uses
  %i.bat = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2947 = icmp eq i8 %i.bat, 0                ; 2 uses
  br i1 %i.bar, label %bb.ux, label %bb.va

bb.ux:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.bau = call i32 @unlink(ptr noundef nonnull %i.bae) #13 ; 0 uses
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  call void @free(ptr noundef nonnull %i.bae) #13
  br label %.critedge3020

bb.va:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.bav = call i32 @unlink(ptr noundef nonnull %i.bae) #13 ; 0 uses
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  call void @free(ptr noundef nonnull %i.bae) #13
  br label %.critedge3020

.critedge171:                                     ; preds = %bb.kz, %bb.tc, %bb.uo, %.critedge137
  %i.baw = icmp ult i32 %i.lh, 200
  br i1 %i.baw, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %.critedge171
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.ve:                                            ; preds = %.critedge171
  %i.bax = load i8, ptr %i.f, align 16, !tbaa !16
  %.not2854 = icmp eq i8 %i.bax, -72
  br i1 %.not2854, label %bb.vf, label %.critedge3049

bb.vf:                                            ; preds = %bb.ve
  %i.bay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3073 = load i32, ptr %i.bay, align 1       ; 2 uses
  %i.baz = getelementptr [36 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  %i.bba = getelementptr i8, ptr %i.baz, i64 -36
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !26
  %i.bbc = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !16 ; 2 uses
  %i.bbe = add i32 %i.bbd, %i.bbb
  %.not2855 = icmp eq i32 %.val3073, %i.bbe
  br i1 %.not2855, label %bb.vi, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bbf = icmp ult i16 %i.aj, 2
  br i1 %i.bbf, label %.thread3850, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bbg = getelementptr i8, ptr %i.baz, i64 -72
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !26
  %i.bbi = add i32 %i.bbd, %i.bbh
  %.not2856 = icmp eq i32 %.val3073, %i.bbi
  br i1 %.not2856, label %bb.vi, label %.critedge3049

bb.vi:                                            ; preds = %bb.vh, %bb.vf
  %.neg2862 = phi i32 [ 0, %bb.vf ], [ -1, %bb.vh ]
  %.102406 = phi i32 [ 2, %bb.vf ], [ 1, %bb.vh ] ; 2 uses
  %i.bbj = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !71
  %i.bbl = and i32 %i.bbk, 256
  %.not2858 = icmp eq i32 %i.bbl, 0
  br i1 %.not2858, label %.critedge3049, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199, i32 noundef %.102406) #13
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.val3071 = load i32, ptr %i.bbm, align 16
  %i.bbn = icmp eq i32 %.val3071, 373069965
  br i1 %i.bbn, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #13
  br label %.critedge3049

bb.vl:                                            ; preds = %bb.vj
  %i.bbo = sub i32 %.12377, %.22380               ; 5 uses
  store i32 %i.bbo, ptr %i.h, align 4, !tbaa !7
  %i.bbp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !89 ; 2 uses
  %.not2859 = icmp eq ptr %i.bbq, null
  br i1 %.not2859, label %._crit_edge3618, label %bb.vm

._crit_edge3618:                                  ; preds = %bb.vl
  %.pre3624.a = zext i32 %i.bbo to i64
  br label %bb.vp

bb.vm:                                            ; preds = %bb.vl
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 24
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !91 ; 3 uses
  %.not2860 = icmp ne i64 %i.bbs, 0
  %i.bbt = zext i32 %i.bbo to i64                 ; 2 uses
  %i.bbu = icmp ult i64 %i.bbs, %i.bbt
  %or.cond3051 = select i1 %.not2860, i1 %i.bbu, i1 false
  br i1 %or.cond3051, label %bb.vn, label %bb.vp

bb.vn:                                            ; preds = %bb.vm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.201, i32 noundef %i.bbo, i64 noundef %i.bbs) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bbv = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bbw = and i32 %i.bbv, 256
  %.not2869 = icmp eq i32 %i.bbw, 0
  br i1 %.not2869, label %.critedge3020, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.bbx = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.202, ptr %i.bbx, align 8, !tbaa !64
  br label %.critedge3020

bb.vp:                                            ; preds = %._crit_edge3618, %bb.vm
  %.pre-phi3625.a = phi i64 [ %.pre3624.a, %._crit_edge3618 ], [ %i.bbt, %bb.vm ]
  %i.bby = call ptr @cli_calloc(i64 noundef %.pre-phi3625.a, i64 noundef 1) #13 ; 8 uses
  %i.bbz = icmp eq ptr %i.bby, null
  br i1 %i.bbz, label %bb.vq, label %.lr.ph3460

.lr.ph3460:                                       ; preds = %bb.vp
  %i.bca = zext i32 %.22380 to i64
  %i.bcb = sub nsw i64 0, %i.bca
  %invariant.gep = getelementptr i8, ptr %i.bby, i64 %i.bcb
  %wide.trip.count3572 = zext nneg i16 %i.aj to i64
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vp
  %i.bcc = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.203, i32 noundef %i.bcc) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.vr:                                            ; preds = %.lr.ph3460, %bb.vv
  %indvars.iv3569 = phi i64 [ 0, %.lr.ph3460 ], [ %indvars.iv.next3570, %bb.vv ] ; 2 uses
  %i.bcd = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3569 ; 4 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !29
  %.not2866 = icmp eq i32 %i.bcf, 0
  br i1 %.not2866, label %bb.vv, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.bcg = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bcd)
  %.not2867 = icmp eq i64 %i.bcg, 0
  br i1 %.not2867, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.bch = load i32, ptr %i.bcd, align 4, !tbaa !26
  %i.bci = zext i32 %i.bch to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bci
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcd, i64 32 ; 2 uses
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !77
  %i.bcl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep, i32 noundef %i.bck) #13
  %i.bcm = load i32, ptr %i.bcj, align 4, !tbaa !77
  %.not2868 = icmp eq i32 %i.bcl, %i.bcm
  br i1 %.not2868, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %bb.vs
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef %i.bby) #13
  br label %.critedge3020

bb.vv:                                            ; preds = %bb.vr, %bb.vt
  %indvars.iv.next3570 = add nuw nsw i64 %indvars.iv3569, 1 ; 2 uses
  %exitcond3573.not = icmp eq i64 %indvars.iv.next3570, %wide.trip.count3572
  br i1 %exitcond3573.not, label %._crit_edge3461, label %bb.vr, !llvm.loop !47

._crit_edge3461:                                  ; preds = %bb.vv
  %i.bcn = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2861 = icmp eq ptr %i.bcn, null
  br i1 %.not2861, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %._crit_edge3461
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bby, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.vx:                                            ; preds = %._crit_edge3461
  %i.bco = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bcn, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bcp = icmp slt i32 %i.bco, 0
  br i1 %i.bcp, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204, ptr noundef nonnull %i.bcn) #13
  call void @free(ptr noundef nonnull %i.bcn) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bby, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.vz:                                            ; preds = %bb.vx
  %i.bcq = add nsw i32 %.neg2862, %i.ak
  %i.bcr = load i32, ptr %i.bbc, align 4, !tbaa !16
  %i.bcs = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bct = load i32, ptr %i.bcs, align 8, !tbaa !16
  %i.bcu = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !16
  %i.bcw = call i32 @petite_inflate2x_1to9(ptr noundef nonnull %i.bby, i32 noundef %.22380, i32 noundef %i.bbo, ptr noundef nonnull %i.em, i32 noundef %i.bcq, i32 noundef %i.bcr, i32 noundef %i.cj, i32 noundef %i.bco, i32 noundef %.102406, i32 noundef %i.bct, i32 noundef %i.bcv) #13
  %cond7 = icmp eq i32 %i.bcw, 0
  br i1 %cond7, label %bb.wa, label %bb.wk

bb.wa:                                            ; preds = %bb.vz
  %i.bcx = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2863 = icmp eq i8 %i.bcx, 0
  br i1 %.not2863, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.205, ptr noundef nonnull %i.bcn) #13
  br label %bb.wd

bb.wc:                                            ; preds = %bb.wa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.206) #13
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bby, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bcy = call i32 @fsync(i32 noundef %i.bco) #13 ; 0 uses
  %i.bcz = call i64 @lseek(i32 noundef %i.bco, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bda = call i32 @cli_magic_scandesc(i32 noundef %i.bco, ptr noundef %1) #13
  %i.bdb = icmp eq i32 %i.bda, 1
  %i.bdc = call i32 @close(i32 noundef %i.bco) #13 ; 0 uses
  %i.bdd = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2865 = icmp eq i8 %i.bdd, 0                ; 2 uses
  br i1 %i.bdb, label %bb.we, label %bb.wh

bb.we:                                            ; preds = %bb.wd
  br i1 %.not2865, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %bb.we
  %i.bde = call i32 @unlink(ptr noundef nonnull %i.bcn) #13 ; 0 uses
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %bb.we
  call void @free(ptr noundef nonnull %i.bcn) #13
  br label %.critedge3020

bb.wh:                                            ; preds = %bb.wd
  br i1 %.not2865, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.bdf = call i32 @unlink(ptr noundef nonnull %i.bcn) #13 ; 0 uses
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  call void @free(ptr noundef nonnull %i.bcn) #13
  br label %.critedge3020

bb.wk:                                            ; preds = %bb.vz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.207) #13
  %i.bdg = call i32 @close(i32 noundef %i.bco) #13 ; 0 uses
  %i.bdh = call i32 @unlink(ptr noundef nonnull %i.bcn) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bby, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bcn) #13
  br label %.critedge3049

.critedge3049:                                    ; preds = %bb.ve, %bb.vh, %bb.vk, %bb.wk, %bb.vi
  %i.bdi = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !71
  %i.bdk = and i32 %i.bdj, 512
  %i.bdl = icmp ne i32 %i.bdk, 0
  %i.bdm = icmp ugt i16 %i.aj, 1                  ; 2 uses
  %or.cond192 = and i1 %i.bdm, %i.bdl
  br i1 %or.cond192, label %bb.wl, label %bb.xo

bb.wl:                                            ; preds = %.critedge3049
  %i.bdn = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bdo = zext nneg i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bdo ; 2 uses
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !26 ; 2 uses
  %.not2870 = icmp ult i32 %i.cj, %i.bdq
  br i1 %.not2870, label %bb.xo, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdp, i64 12
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !30
  %i.bdt = add i32 %i.bdq, -12827
  %i.bdu = add i32 %i.bdt, %i.bds
  %i.bdv = icmp ult i32 %i.cj, %i.bdu
  br i1 %i.bdv, label %bb.wn, label %bb.xo

bb.wn:                                            ; preds = %bb.wm
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.bdx = load i64, ptr %i.bdw, align 1
  %i.bdy = xor i64 %i.bdx, 2602107516829565160
  %i.bdz = getelementptr i8, ptr %i.bdw, i64 8
  %i.bea = load i16, ptr %i.bdz, align 1
  %i.beb = zext i16 %i.bea to i64
  %i.bec = xor i64 %i.beb, 50051
  %i.bed = or i64 %i.bdy, %i.bec
  %i.bee = icmp ne i64 %i.bed, 0
  %i.bef = zext i1 %i.bee to i32
  %i.beg = icmp eq i32 %i.bef, 0
  br i1 %i.beg, label %bb.wo, label %bb.xo

bb.wo:                                            ; preds = %bb.wn
  %i.beh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !89 ; 2 uses
  %.not2871 = icmp eq ptr %i.bei, null
  br i1 %.not2871, label %bb.ws, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 24
  %i.bek = load i64, ptr %i.bej, align 8, !tbaa !91 ; 3 uses
  %.not2872 = icmp ne i64 %i.bek, 0
  %i.bel = icmp ugt i64 %i.ej, %i.bek
  %or.cond3052 = select i1 %.not2872, i1 %i.bel, i1 false
  br i1 %or.cond3052, label %bb.wq, label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.209, i64 noundef %i.ej, i64 noundef %i.bek) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bem = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.ben = and i32 %i.bem, 256
  %.not2879 = icmp eq i32 %i.ben, 0
  br i1 %.not2879, label %.critedge3020, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.beo = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.210, ptr %i.beo, align 8, !tbaa !64
  br label %.critedge3020

bb.ws:                                            ; preds = %bb.wp, %bb.wo
  %i.bep = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 9 uses
  %i.beq = icmp eq ptr %i.bep, null
  br i1 %i.beq, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %bb.ws
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.wu:                                            ; preds = %bb.ws
  %i.ber = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bes = trunc i64 %i.ej to i32                 ; 2 uses
  %i.bet = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bep, i32 noundef %i.bes) #13
  %i.beu = sext i32 %i.bet to i64
  %.not2873 = icmp eq i64 %i.ej, %i.beu
  br i1 %.not2873, label %bb.ww, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.211, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bep) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ww:                                            ; preds = %bb.wu
  %i.bev = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2874 = icmp eq ptr %i.bev, null
  br i1 %.not2874, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bep, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.wy:                                            ; preds = %bb.ww
  %i.bew = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bev, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.bex = icmp slt i32 %i.bew, 0
  br i1 %i.bex, label %bb.wz, label %bb.xa

bb.wz:                                            ; preds = %bb.wy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.212, ptr noundef nonnull %i.bev) #13
  call void @free(ptr noundef nonnull %i.bev) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bep, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.xa:                                            ; preds = %bb.wy
  %i.bey = call i32 @unspin(ptr noundef nonnull %i.bep, i32 noundef %i.bes, ptr noundef nonnull %i.em, i32 noundef %i.bdn, i32 noundef %i.cj, i32 noundef %i.bew, ptr noundef nonnull %1) #13
  switch i32 %i.bey, label %bb.xn [
    i32 0, label %bb.xb
    i32 2, label %bb.xl
  ]

bb.xb:                                            ; preds = %bb.xa
  %i.bez = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2876 = icmp eq i8 %i.bez, 0
  br i1 %.not2876, label %bb.xd, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.213, ptr noundef nonnull %i.bev) #13
  br label %bb.xe

bb.xd:                                            ; preds = %bb.xb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.214) #13
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bep, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bfa = call i32 @fsync(i32 noundef %i.bew) #13 ; 0 uses
  %i.bfb = call i64 @lseek(i32 noundef %i.bew, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bfc = call i32 @cli_magic_scandesc(i32 noundef %i.bew, ptr noundef nonnull %1) #13
  %i.bfd = icmp eq i32 %i.bfc, 1
  %i.bfe = call i32 @close(i32 noundef %i.bew) #13 ; 0 uses
  %i.bff = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2878 = icmp eq i8 %i.bff, 0                ; 2 uses
  br i1 %i.bfd, label %bb.xf, label %bb.xi

bb.xf:                                            ; preds = %bb.xe
  br i1 %.not2878, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %bb.xf
  %i.bfg = call i32 @unlink(ptr noundef nonnull %i.bev) #13 ; 0 uses
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xf
  call void @free(ptr noundef nonnull %i.bev) #13
  br label %.critedge3020

bb.xi:                                            ; preds = %bb.xe
  br i1 %.not2878, label %bb.xj, label %bb.xk

bb.xj:                                            ; preds = %bb.xi
  %i.bfh = call i32 @unlink(ptr noundef nonnull %i.bev) #13 ; 0 uses
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  call void @free(ptr noundef nonnull %i.bev) #13
  br label %.critedge3020

bb.xl:                                            ; preds = %bb.xa
  call void @free(ptr noundef nonnull %i.bep) #13
  %i.bfi = call i32 @close(i32 noundef %i.bew) #13 ; 0 uses
  %i.bfj = call i32 @unlink(ptr noundef nonnull %i.bev) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.215) #13
  %i.bfk = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bfl = and i32 %i.bfk, 256
  %.not2875 = icmp eq i32 %i.bfl, 0
  call void @free(ptr noundef nonnull %i.bev) #13
  br i1 %.not2875, label %bb.xo, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bfm = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.216, ptr %i.bfm, align 8, !tbaa !64
  br label %.critedge3020

bb.xn:                                            ; preds = %bb.xa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.217) #13
  %i.bfn = call i32 @close(i32 noundef %i.bew) #13 ; 0 uses
  %i.bfo = call i32 @unlink(ptr noundef nonnull %i.bev) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bep, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bev) #13
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xl, %bb.xn, %bb.wn, %bb.wm, %bb.wl, %.critedge3049
  %5 = phi i1 [ %i.bdm, %.critedge3049 ], [ true, %bb.xn ], [ true, %bb.wl ], [ true, %bb.wn ], [ true, %bb.wm ], [ true, %bb.xl ] ; 2 uses
  %i.bfp = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !71 ; 5 uses
  %i.bfr = and i32 %i.bfq, 1024
  %i.bfs = icmp ne i32 %i.bfr, 0
  %or.cond195 = and i1 %5, %i.bfs
  br i1 %or.cond195, label %bb.xp, label %bb.ym

bb.xp:                                            ; preds = %bb.xo
  %i.bft = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bfu = load i32, ptr %i.bft, align 8, !tbaa !16
  %i.bfv = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bfw = zext nneg i32 %i.bfv to i64
  %i.bfx = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bfw ; 2 uses
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !26
  %i.bfz = add i32 %i.bfy, 96
  %i.bga = icmp eq i32 %i.bfu, %i.bfz
  br i1 %i.bga, label %bb.xq, label %bb.ym

bb.xq:                                            ; preds = %bb.xp
  %bcmp2880 = call i32 @bcmp(ptr noundef nonnull dereferenceable(51) %i.f, ptr noundef nonnull dereferenceable(51) @.str.218, i64 51)
  %i.bgb = icmp eq i32 %bcmp2880, 0
  br i1 %i.bgb, label %bb.xr, label %bb.ym

bb.xr:                                            ; preds = %bb.xq
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !29
  %i.bge = add i32 %i.bgd, 3165
  %i.bgf = zext i32 %i.bge to i64
  %.not2881 = icmp ult i64 %i.ej, %i.bgf
  br i1 %.not2881, label %bb.ym, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.bgg = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 8 uses
  %i.bgh = icmp eq ptr %i.bgg, null
  br i1 %i.bgh, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xu:                                            ; preds = %bb.xs
  %i.bgi = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bgj = trunc i64 %i.ej to i32                 ; 2 uses
  %i.bgk = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bgg, i32 noundef %i.bgj) #13
  %i.bgl = sext i32 %i.bgk to i64
  %.not2882 = icmp eq i64 %i.ej, %i.bgl
  br i1 %.not2882, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.219, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bgg) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xw:                                            ; preds = %bb.xu
  %i.bgm = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2883 = icmp eq ptr %i.bgm, null
  br i1 %.not2883, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgg, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.xy:                                            ; preds = %bb.xw
  %i.bgn = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bgm, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bgo = icmp slt i32 %i.bgn, 0
  br i1 %i.bgo, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.bgm) #13
  call void @free(ptr noundef nonnull %i.bgm) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgg, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.ya:                                            ; preds = %bb.xy
  %i.bgp = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bgq = call i32 @yc_decrypt(ptr noundef nonnull %i.bgg, i32 noundef %i.bgj, ptr noundef nonnull %i.em, i32 noundef %i.bfv, i32 noundef %i.bgp, i32 noundef %i.bgn) #13
  %cond5 = icmp eq i32 %i.bgq, 0
  br i1 %cond5, label %bb.yb, label %bb.yl

bb.yb:                                            ; preds = %bb.ya
  %i.bgr = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2884 = icmp eq i8 %i.bgr, 0
  br i1 %.not2884, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.bgm) #13
  br label %bb.ye

bb.yd:                                            ; preds = %bb.yb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.222) #13
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgg, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bgs = call i32 @fsync(i32 noundef %i.bgn) #13 ; 0 uses
  %i.bgt = call i64 @lseek(i32 noundef %i.bgn, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bgu = call i32 @cli_magic_scandesc(i32 noundef %i.bgn, ptr noundef nonnull %1) #13
  %i.bgv = icmp eq i32 %i.bgu, 1
  %i.bgw = call i32 @close(i32 noundef %i.bgn) #13 ; 0 uses
  %i.bgx = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2886 = icmp eq i8 %i.bgx, 0                ; 2 uses
  br i1 %i.bgv, label %bb.yf, label %bb.yi

bb.yf:                                            ; preds = %bb.ye
  br i1 %.not2886, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.bgy = call i32 @unlink(ptr noundef nonnull %i.bgm) #13 ; 0 uses
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  call void @free(ptr noundef nonnull %i.bgm) #13
  br label %.critedge3020

bb.yi:                                            ; preds = %bb.ye
  br i1 %.not2886, label %bb.yj, label %bb.yk

bb.yj:                                            ; preds = %bb.yi
  %i.bgz = call i32 @unlink(ptr noundef nonnull %i.bgm) #13 ; 0 uses
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yi
  call void @free(ptr noundef nonnull %i.bgm) #13
  br label %.critedge3020

bb.yl:                                            ; preds = %bb.ya
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.223) #13
  %i.bha = call i32 @close(i32 noundef %i.bgn) #13 ; 0 uses
  %i.bhb = call i32 @unlink(ptr noundef nonnull %i.bgm) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgg, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bgm) #13
  %.pre3609 = load ptr, ptr %i.up, align 8, !tbaa !69
  %.pre3610 = load i32, ptr %.pre3609, align 4, !tbaa !71
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.xr, %bb.xq, %bb.xp, %bb.xo
  %6 = phi i1 [ true, %bb.yl ], [ true, %bb.xr ], [ true, %bb.xq ], [ true, %bb.xp ], [ %5, %bb.xo ]
  %i.bhc = phi i32 [ %.pre3610, %bb.yl ], [ %i.bfq, %bb.xr ], [ %i.bfq, %bb.xq ], [ %i.bfq, %bb.xp ], [ %i.bfq, %bb.xo ]
  %i.bhd = and i32 %i.bhc, 2048
  %i.bhe = icmp ne i32 %i.bhd, 0
  %or.cond198 = and i1 %6, %i.bhe
  br i1 %or.cond198, label %bb.yn, label %.thread3850

bb.yn:                                            ; preds = %bb.ym
  %i.bhf = add nsw i32 %i.ak, -1                  ; 4 uses
  %i.bhg = zext i32 %i.bhf to i64                 ; 4 uses
  %i.bhh = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bhg ; 5 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 8
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !29 ; 4 uses
  %i.bhk = icmp ugt i32 %i.bhj, 689
  br i1 %i.bhk, label %bb.yo, label %.thread3850

bb.yo:                                            ; preds = %bb.yn
  %i.bhl = load i32, ptr %i.bhh, align 4, !tbaa !26
  %i.bhm = icmp eq i32 %i.cj, %i.bhl
  br i1 %i.bhm, label %bb.yp, label %.thread3850

bb.yp:                                            ; preds = %bb.yo
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhh, i64 12 ; 5 uses
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !30 ; 2 uses
  %i.bhp = add i32 %i.bho, %i.cj
  %i.bhq = icmp eq i32 %i.bhp, %.12377
  br i1 %i.bhq, label %bb.yq, label %.thread3850

bb.yq:                                            ; preds = %bb.yp
  %i.bhr = load i32, ptr %i.f, align 16
  %i.bhs = xor i32 %i.bhr, -393521837
  %i.bht = getelementptr i8, ptr %i.f, i64 3
  %i.bhu = load i32, ptr %i.bht, align 1
  %i.bhv = xor i32 %i.bhu, -337955864
  %i.bhw = or i32 %i.bhs, %i.bhv
  %i.bhx = icmp ne i32 %i.bhw, 0
  %i.bhy = zext i1 %i.bhx to i32
  %i.bhz = icmp eq i32 %i.bhy, 0
  br i1 %i.bhz, label %bb.yr, label %.thread3850

bb.yr:                                            ; preds = %bb.yq
  %i.bia = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bib = load i128, ptr %i.bia, align 1
  %i.bic = xor i128 %i.bib, 107382933364910958583781871253727477992
  %i.bid = getelementptr i8, ptr %i.bia, i64 3
  %i.bie = load i128, ptr %i.bid, align 1
  %i.bif = xor i128 %i.bie, 106755414664042775544543906123602198528
  %i.big = or i128 %i.bic, %i.bif
  %i.bih = icmp ne i128 %i.big, 0
  %i.bii = zext i1 %i.bih to i32
  %i.bij = icmp eq i32 %i.bii, 0
  br i1 %i.bij, label %.preheader3341, label %.thread3850

.preheader3341:                                   ; preds = %bb.yr
  %.not3497 = icmp eq i32 %i.bhf, 0               ; 2 uses
  br i1 %.not3497, label %._crit_edge3465, label %.lr.ph3464.preheader

.lr.ph3464.preheader:                             ; preds = %.preheader3341
  %xtraiter3990 = and i64 %i.bhg, 3               ; 3 uses
  %i.bik = icmp ult i32 %i.bhf, 4
  br i1 %i.bik, label %.lr.ph3464.epil.preheader, label %.lr.ph3464.preheader.new

.lr.ph3464.preheader.new:                         ; preds = %.lr.ph3464.preheader
  %unroll_iter = and i64 %i.bhg, 4294967292
  br label %.lr.ph3464

.lr.ph3464:                                       ; preds = %.lr.ph3464, %.lr.ph3464.preheader.new
  %indvars.iv3574 = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %indvars.iv.next3575.3, %.lr.ph3464 ] ; 5 uses
  %.022743463 = phi i32 [ %i.bhj, %.lr.ph3464.preheader.new ], [ %spec.select3053.3, %.lr.ph3464 ]
  %niter = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %niter.next.3, %.lr.ph3464 ]
  %i.bil = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 8
  %i.bin = load i32, ptr %i.bim, align 4, !tbaa !29
  %spec.select3053 = call i32 @llvm.umin.i32(i32 %i.bin, i32 %.022743463)
  %i.bio = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 44
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !29
  %spec.select3053.1 = call i32 @llvm.umin.i32(i32 %i.biq, i32 %spec.select3053)
  %i.bir = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 80
  %i.bit = load i32, ptr %i.bis, align 4, !tbaa !29
  %spec.select3053.2 = call i32 @llvm.umin.i32(i32 %i.bit, i32 %spec.select3053.1)
  %i.biu = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 116
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !29
  %spec.select3053.3 = call i32 @llvm.umin.i32(i32 %i.biw, i32 %spec.select3053.2) ; 3 uses
  %indvars.iv.next3575.3 = add nuw nsw i64 %indvars.iv3574, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge3465.loopexit.unr-lcssa, label %.lr.ph3464, !llvm.loop !48

._crit_edge3465.loopexit.unr-lcssa:               ; preds = %.lr.ph3464
  %lcmp.mod3991.not = icmp eq i64 %xtraiter3990, 0
  br i1 %lcmp.mod3991.not, label %._crit_edge3465, label %.lr.ph3464.epil.preheader

.lr.ph3464.epil.preheader:                        ; preds = %._crit_edge3465.loopexit.unr-lcssa, %.lr.ph3464.preheader
  %indvars.iv3574.epil.init = phi i64 [ 0, %.lr.ph3464.preheader ], [ %indvars.iv.next3575.3, %._crit_edge3465.loopexit.unr-lcssa ]
  %.022743463.epil.init = phi i32 [ %i.bhj, %.lr.ph3464.preheader ], [ %spec.select3053.3, %._crit_edge3465.loopexit.unr-lcssa ]
  %lcmp.mod3993 = icmp ne i64 %xtraiter3990, 0
  call void @llvm.assume(i1 %lcmp.mod3993)
  br label %.lr.ph3464.epil

.lr.ph3464.epil:                                  ; preds = %.lr.ph3464.epil, %.lr.ph3464.epil.preheader
  %indvars.iv3574.epil = phi i64 [ %indvars.iv.next3575.epil, %.lr.ph3464.epil ], [ %indvars.iv3574.epil.init, %.lr.ph3464.epil.preheader ] ; 2 uses
  %.022743463.epil = phi i32 [ %spec.select3053.epil, %.lr.ph3464.epil ], [ %.022743463.epil.init, %.lr.ph3464.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3464.epil ], [ 0, %.lr.ph3464.epil.preheader ]
  %i.bix = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574.epil
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 8
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !29
  %spec.select3053.epil = call i32 @llvm.umin.i32(i32 %i.biz, i32 %.022743463.epil) ; 2 uses
  %indvars.iv.next3575.epil = add nuw nsw i64 %indvars.iv3574.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3990
  br i1 %epil.iter.cmp.not, label %._crit_edge3465, label %.lr.ph3464.epil, !llvm.loop !49

._crit_edge3465:                                  ; preds = %._crit_edge3465.loopexit.unr-lcssa, %.lr.ph3464.epil, %.preheader3341
  %.02274.lcssa = phi i32 [ %i.bhj, %.preheader3341 ], [ %spec.select3053.3, %._crit_edge3465.loopexit.unr-lcssa ], [ %spec.select3053.epil, %.lr.ph3464.epil ] ; 5 uses
  %i.bja = add i32 %.22380, %i.bho
  %i.bjb = sub i32 %.12377, %i.bja
  %i.bjc = add i32 %i.bjb, %.02274.lcssa          ; 4 uses
  store i32 %i.bjc, ptr %i.h, align 4, !tbaa !7
  %i.bjd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !89 ; 2 uses
  %.not2889 = icmp eq ptr %i.bje, null
  br i1 %.not2889, label %._crit_edge3465._crit_edge, label %bb.ys

._crit_edge3465._crit_edge:                       ; preds = %._crit_edge3465
  %.pre3620 = zext i32 %i.bjc to i64
  br label %bb.yv

bb.ys:                                            ; preds = %._crit_edge3465
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 24
  %i.bjg = load i64, ptr %i.bjf, align 8, !tbaa !91 ; 3 uses
  %.not2890 = icmp ne i64 %i.bjg, 0
  %i.bjh = zext i32 %i.bjc to i64                 ; 2 uses
  %i.bji = icmp ult i64 %i.bjg, %i.bjh
  %or.cond3055 = select i1 %.not2890, i1 %i.bji, i1 false
  br i1 %or.cond3055, label %bb.yt, label %bb.yv

bb.yt:                                            ; preds = %bb.ys
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.226, i32 noundef %i.bjc, i64 noundef %i.bjg) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bjj = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bjk = and i32 %i.bjj, 256
  %.not2903 = icmp eq i32 %i.bjk, 0
  br i1 %.not2903, label %.critedge3020, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.bjl = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.227, ptr %i.bjl, align 8, !tbaa !64
  br label %.critedge3020

bb.yv:                                            ; preds = %._crit_edge3465._crit_edge, %bb.ys
  %.pre-phi3621 = phi i64 [ %.pre3620, %._crit_edge3465._crit_edge ], [ %i.bjh, %bb.ys ]
  %i.bjm = call ptr @cli_calloc(i64 noundef %.pre-phi3621, i64 noundef 1) #13 ; 14 uses
  %i.bjn = icmp eq ptr %i.bjm, null
  br i1 %i.bjn, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %bb.yv
  %i.bjo = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bjo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.yx:                                            ; preds = %bb.yv
  %i.bjp = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bjq = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bjm, i32 noundef %.02274.lcssa) #13
  %i.bjr = sext i32 %i.bjq to i64                 ; 2 uses
  %i.bjs = zext i32 %.02274.lcssa to i64
  %.not2891 = icmp eq i64 %i.bjr, %i.bjs
  br i1 %.not2891, label %.preheader3340, label %bb.yy

.preheader3340:                                   ; preds = %bb.yx
  br i1 %.not3497, label %._crit_edge3469, label %.lr.ph3468

.lr.ph3468:                                       ; preds = %.preheader3340
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjm, i64 %i.bjr
  %i.bju = zext i32 %.22380 to i64
  %i.bjv = sub nsw i64 0, %i.bju
  %invariant.gep3470 = getelementptr i8, ptr %i.bjt, i64 %i.bjv
  br label %bb.yz

bb.yy:                                            ; preds = %bb.yx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.229, i32 noundef %.02274.lcssa) #13
  call void @free(ptr noundef nonnull %i.bjm) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.yz:                                            ; preds = %.lr.ph3468, %bb.zd
  %indvars.iv3579 = phi i64 [ 0, %.lr.ph3468 ], [ %indvars.iv.next3580, %bb.zd ] ; 2 uses
  %i.bjw = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3579 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 12 ; 3 uses
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !30
  %.not2900 = icmp eq i32 %i.bjy, 0
  br i1 %.not2900, label %bb.zd, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.bjz = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bjw)
  %.not2901 = icmp eq i64 %i.bjz, 0
  br i1 %.not2901, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.bka = load i32, ptr %i.bjw, align 4, !tbaa !26
  %i.bkb = zext i32 %i.bka to i64
  %gep3471 = getelementptr i8, ptr %invariant.gep3470, i64 %i.bkb
  %i.bkc = load i32, ptr %i.bjx, align 4, !tbaa !30
  %i.bkd = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep3471, i32 noundef %i.bkc) #13
  %i.bke = load i32, ptr %i.bjx, align 4, !tbaa !30
  %.not2902 = icmp eq i32 %i.bkd, %i.bke
  br i1 %.not2902, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  call void @free(ptr noundef %i.bjm) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zd:                                            ; preds = %bb.yz, %bb.zb
  %indvars.iv.next3580 = add nuw nsw i64 %indvars.iv3579, 1 ; 2 uses
  %exitcond3583.not = icmp eq i64 %indvars.iv.next3580, %i.bhg
  br i1 %exitcond3583.not, label %._crit_edge3469, label %bb.yz, !llvm.loop !50

._crit_edge3469:                                  ; preds = %bb.zd, %.preheader3340
  %i.bkf = load i32, ptr %i.bhn, align 4, !tbaa !30
  %i.bkg = zext i32 %i.bkf to i64
  %i.bkh = call ptr @cli_calloc(i64 noundef %i.bkg, i64 noundef 1) #13 ; 5 uses
  %i.bki = icmp eq ptr %i.bkh, null
  br i1 %i.bki, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %._crit_edge3469
  %i.bkj = load i32, ptr %i.bhn, align 4, !tbaa !30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bkj) #13
  call void @free(ptr noundef %i.bjm) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zf:                                            ; preds = %._crit_edge3469
  %i.bkk = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bhh)
  %.not2892 = icmp eq i64 %i.bkk, 0
  %.pre3613 = load i32, ptr %i.bhn, align 4, !tbaa !30 ; 2 uses
  br i1 %.not2892, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.bkl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bkh, i32 noundef %.pre3613) #13
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = load i32, ptr %i.bhn, align 4, !tbaa !30 ; 3 uses
  %i.bko = zext i32 %i.bkn to i64
  %.not2893 = icmp eq i64 %i.bkm, %i.bko
  br i1 %.not2893, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.bkp = phi i32 [ %i.bkn, %bb.zg ], [ %.pre3613, %bb.zf ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230, i32 noundef %i.bkp) #13
  call void @free(ptr noundef %i.bjm) #13
  call void @free(ptr noundef nonnull %i.bkh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zi:                                            ; preds = %bb.zg
  %i.bkq = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bkr = load i32, ptr %i.bhh, align 4, !tbaa !26
end_hunk_2
