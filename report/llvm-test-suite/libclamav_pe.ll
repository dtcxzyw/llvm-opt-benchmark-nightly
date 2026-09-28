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
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !13 ; 25 uses
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
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.cb ], [ %.sink.sroa.gep3992, %bb.cc ]
  %.12349 = phi i32 [ %.02348, %bb.cb ], [ 0, %bb.cc ] ; 3 uses
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

bb.cl:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73) #13
  br label %bb.ct

bb.cm:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #13
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75) #13
  br label %bb.ct

bb.co:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76) #13
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.77) #13
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78) #13
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.79) #13
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cg
  %i.dp = zext i16 %i.do to i32
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.80, i32 noundef %i.dp) #13
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %i.dq = phi i1 [ false, %bb.cs ], [ false, %bb.ch ], [ true, %bb.ci ], [ false, %bb.cj ], [ false, %bb.ck ], [ false, %bb.cl ], [ false, %bb.cm ], [ false, %bb.cn ], [ false, %bb.co ], [ false, %bb.cp ], [ false, %bb.cq ], [ false, %bb.cr ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.81) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 24 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.dt = and i32 %i.ds, 64
  %i.du = icmp eq i32 %i.dt, 0
  %or.cond29 = or i1 %i.dq, %i.du
  br i1 %or.cond29, label %.thread3130, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !16 ; 2 uses
  %.not2685 = icmp ne i32 %i.dw, 0
  %i.dx = and i32 %i.dw, 4095
  %.not2686 = icmp eq i32 %i.dx, 0
  %or.cond3910 = and i1 %.not2685, %.not2686      ; 2 uses
  br i1 %.not2680, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  br i1 %or.cond3910, label %bb.cz, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  br i1 %or.cond3910, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.82) #13
  %i.dy = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2687 = icmp eq ptr %i.dy, null
  br i1 %.not2687, label %.critedge3020, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr @.str.4, ptr %i.dy, align 8, !tbaa !64
  br label %.critedge3020

bb.cz:                                            ; preds = %bb.cv
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !16 ; 2 uses
  %.not2689 = icmp eq i32 %i.ea, 0
  br i1 %.not2689, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cw
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !16 ; 2 uses
  %.not2688 = icmp eq i32 %i.ec, 0
  br i1 %.not2688, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ed = phi i32 [ %i.ec, %bb.da ], [ %i.ea, %bb.cz ]
  %i.ee = and i32 %i.ed, 511
  %.not2690 = icmp eq i32 %i.ee, 0
  br i1 %.not2690, label %.thread3130, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.83) #13
  %i.ef = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2691 = icmp eq ptr %i.ef, null
  br i1 %.not2691, label %.critedge3020, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr @.str.4, ptr %i.ef, align 8, !tbaa !64
  br label %.critedge3020

.thread3130:                                      ; preds = %bb.ct, %bb.db
  %i.eg = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #13
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.thread3130
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.84) #13
  br label %.critedge3020

bb.df:                                            ; preds = %.thread3130
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !19 ; 23 uses
  %i.ek = zext nneg i16 %i.aj to i64              ; 6 uses
  %i.el = call ptr @cli_calloc(i64 noundef %i.ek, i64 noundef 40) #13 ; 12 uses
  %.not2692 = icmp eq ptr %i.el, null
  br i1 %.not2692, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  br label %.critedge3020

bb.dh:                                            ; preds = %bb.df
  %i.em = call ptr @cli_calloc(i64 noundef %i.ek, i64 noundef 36) #13 ; 179 uses
  %.not2693 = icmp eq ptr %i.em, null
  br i1 %.not2693, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  call void @free(ptr noundef nonnull %i.el) #13
  br label %.critedge3020

bb.dj:                                            ; preds = %bb.dh
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eo = load i32, ptr %i.en, align 8            ; 12 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.eq = load i32, ptr %i.ep, align 4            ; 4 uses
  %narrow = mul nuw nsw i16 %i.aj, 40
  %i.er = zext nneg i16 %narrow to i32            ; 2 uses
  %i.es = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.el, i32 noundef %i.er) #13
  %.not2694 = icmp eq i32 %i.es, %i.er
  br i1 %.not2694, label %.preheader3350, label %bb.dk

.preheader3350:                                   ; preds = %bb.dj
  %.not3917 = icmp eq i32 %i.eq, 512
  br i1 %.not3917, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader3350
  %i.et = zext nneg i16 %i.aj to i64
  %.not2980 = icmp eq i32 %i.eq, 0
  br label %.lr.ph

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.86) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.87) #13
  call void @free(ptr noundef nonnull %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.eu = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.ev = and i32 %i.eu, 64
  %.not2984 = icmp eq i32 %i.ev, 0
  br i1 %.not2984, label %.critedge3020, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ew = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2985 = icmp eq ptr %i.ew, null
  br i1 %.not2985, label %.critedge3020, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store ptr @.str.4, ptr %i.ew, align 8, !tbaa !64
  br label %.critedge3020

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dp
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.dp ] ; 2 uses
  br i1 %.not2980, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21
  %.not2981 = icmp eq i32 %i.ez, 0
  br i1 %.not2981, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !22 ; 2 uses
  %i.fc = urem i32 %i.fb, %i.eq
  %.not2982 = icmp ne i32 %i.fc, 0
  %i.fd = and i32 %i.fb, 511
  %.not2983 = icmp eq i32 %i.fd, 0
  %or.cond = and i1 %.not2982, %.not2983
  br i1 %or.cond, label %.thread, label %bb.dp

.thread:                                          ; preds = %bb.do
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.88) #13
  br label %._crit_edge

bb.dp:                                            ; preds = %.lr.ph, %bb.dn, %bb.do
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = icmp samesign ult i64 %indvars.iv.next, %i.et
  br i1 %i.fe, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.dp, %.thread, %.preheader3350
  %.02345.lcssa = phi i32 [ 512, %.preheader3350 ], [ 512, %.thread ], [ %i.eq, %bb.dp ] ; 5 uses
  %.not2695 = icmp eq i32 %i.eo, 0                ; 3 uses
  br i1 %.not2695, label %5, label %bb.dq

bb.dq:                                            ; preds = %._crit_edge
  %i.ff = udiv i32 %i.cl, %i.eo
  %i.fg = urem i32 %i.cl, %i.eo
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = add i32 %i.ff, %i.fi
  %i.fk = mul i32 %i.fj, %i.eo
  br label %5

5:                                                ; preds = %._crit_edge, %bb.dq
  %6 = phi i32 [ %i.fk, %bb.dq ], [ %i.cl, %._crit_edge ] ; 7 uses
  %.not3488 = icmp eq i16 %i.aj, 0                ; 3 uses
  br i1 %.not3488, label %._crit_edge3409, label %.lr.ph3408

.lr.ph3408:                                       ; preds = %5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not2951 = icmp eq i32 %.02345.lcssa, 0
  %i.fm = trunc i64 %i.ej to i32                  ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count3538 = zext nneg i16 %i.aj to i64
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph3408, %bb.fs
  %indvars.iv3536 = phi i64 [ 0, %.lr.ph3408 ], [ %indvars.iv.next3537, %bb.fs ] ; 8 uses
  %.023763406 = phi i32 [ 0, %.lr.ph3408 ], [ %.12377, %bb.fs ]
  %.023783405 = phi i32 [ 0, %.lr.ph3408 ], [ %.22380, %bb.fs ]
  %.024203402 = phi i8 [ 0, %.lr.ph3408 ], [ %.22422, %bb.fs ] ; 5 uses
  %i.fp = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv3536 ; 8 uses
  %i.fq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.fp, i64 noundef 8) #13 ; 0 uses
  store i8 0, ptr %i.fl, align 1, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !24
  %.fr = freeze i32 %i.fs                         ; 4 uses
  br i1 %.not2695, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ft = urem i32 %.fr, %i.eo
  %i.fu = sub nuw i32 %.fr, %i.ft
  %i.fv = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 2 uses
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !27 ; 3 uses
  %i.fy = udiv i32 %i.fx, %i.eo
  %i.fz = urem i32 %i.fx, %i.eo
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i32
  %i.gc = add i32 %i.fy, %i.gb
  %i.gd = mul i32 %i.gc, %i.eo
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.ge = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 2 uses
  store i32 %.fr, ptr %i.ge, align 4, !tbaa !26
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !27 ; 2 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.gh = phi i32 [ %i.fx, %bb.ds ], [ %i.gg, %bb.dt ]
  %i.gi = phi ptr [ %i.fv, %bb.ds ], [ %i.ge, %bb.dt ] ; 4 uses
  %i.gj = phi i32 [ %i.gd, %bb.ds ], [ %i.gg, %bb.dt ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 11 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 5 uses
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !22
  %.fr2952 = freeze i32 %i.gn                     ; 5 uses
  br i1 %.not2951, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.go = urem i32 %.fr2952, %.02345.lcssa
  %i.gp = sub nuw i32 %.fr2952, %i.go             ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !29
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !21 ; 3 uses
  %i.gt = udiv i32 %i.gs, %.02345.lcssa
  %i.gu = urem i32 %i.gs, %.02345.lcssa
  %i.gv = icmp ne i32 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = add i32 %i.gt, %i.gw
  %i.gy = mul i32 %i.gx, %.02345.lcssa
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store i32 %.fr2952, ptr %i.gz, align 4, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !21 ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.hc = phi i32 [ %i.gs, %bb.dv ], [ %i.hb, %bb.dw ] ; 4 uses
  %i.hd = phi ptr [ %i.gq, %bb.dv ], [ %i.gz, %bb.dw ] ; 2 uses
  %i.he = phi i32 [ %i.gp, %bb.dv ], [ %.fr2952, %bb.dw ] ; 4 uses
  %i.hf = phi i32 [ %i.gy, %bb.dv ], [ %i.hb, %bb.dw ] ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gk, i64 12 ; 7 uses
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !72
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 5 uses
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !73
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gk, i64 20 ; 5 uses
  store i32 %.fr, ptr %i.hk, align 4, !tbaa !74
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  store i32 %i.gh, ptr %i.hl, align 4, !tbaa !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gk, i64 28 ; 2 uses
  store i32 %.fr2952, ptr %i.hm, align 4, !tbaa !76
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  store i32 %i.hc, ptr %i.hn, align 4, !tbaa !77
  %.not2953 = icmp eq i32 %i.gj, 0
  br i1 %.not2953, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %.not2954 = icmp eq i32 %i.hf, 0
  br i1 %.not2954, label %.thread3136, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %.not2695, label %.thread3138, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ho = udiv i32 %i.hc, %i.eo
  %i.hp = urem i32 %i.hc, %i.eo
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = add i32 %i.ho, %i.hr
  %i.ht = mul i32 %i.hs, %i.eo
  br label %.thread3138

.thread3138:                                      ; preds = %bb.ea, %bb.dz
  %i.hu = phi i32 [ %i.ht, %bb.ea ], [ %i.hc, %bb.dz ]
  store i32 %i.hu, ptr %i.gl, align 4, !tbaa !28
  %.old = zext i32 %i.he to i64
  %.old3313 = icmp ugt i64 %i.ej, %.old
  br i1 %.old3313, label %bb.ec, label %.thread3136

bb.eb:                                            ; preds = %bb.dx
  %.not2955 = icmp ne i32 %i.hf, 0
  %i.hv = zext i32 %i.he to i64
  %i.hw = icmp ugt i64 %i.ej, %i.hv
  %or.cond3314 = select i1 %.not2955, i1 %i.hw, i1 false
  br i1 %or.cond3314, label %bb.ec, label %.thread3136

bb.ec:                                            ; preds = %bb.eb, %.thread3138
  %.not2957 = icmp ugt i32 %i.hf, %i.fm
  br i1 %.not2957, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hx = add i32 %i.he, -1
  %i.hy = add i32 %i.hx, %i.hf
  %or.cond3000.not = icmp ult i32 %i.hy, %i.fm
  br i1 %or.cond3000.not, label %.thread3136, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.hz = sub i32 %i.fm, %i.he
  store i32 %i.hz, ptr %i.hg, align 4, !tbaa !30
  br label %.thread3136

.thread3136:                                      ; preds = %bb.dy, %bb.ed, %bb.ee, %.thread3138, %bb.eb
  %i.ia = trunc nuw nsw i64 %indvars.iv3536 to i32 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.89, i32 noundef %i.ia) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.d) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.91) #13
  %i.ib = load i32, ptr %i.hl, align 4, !tbaa !75
  %i.ic = load i32, ptr %i.gl, align 4, !tbaa !28
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.92, i32 noundef %i.ib, i32 noundef %i.ic) #13
  %i.id = load i32, ptr %i.hk, align 4, !tbaa !74
  %i.ie = load i32, ptr %i.gi, align 4, !tbaa !26
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.93, i32 noundef %i.id, i32 noundef %i.ie) #13
  %i.if = load i32, ptr %i.hn, align 4, !tbaa !77
  %i.ig = load i32, ptr %i.hg, align 4, !tbaa !30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.94, i32 noundef %i.if, i32 noundef %i.ig) #13
  %i.ih = load i32, ptr %i.hm, align 4, !tbaa !76
  %i.ii = load i32, ptr %i.hd, align 4, !tbaa !29
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.95, i32 noundef %i.ih, i32 noundef %i.ii) #13
  %i.ij = load i32, ptr %i.hj, align 4, !tbaa !73
  %i.ik = and i32 %i.ij, 32
  %.not2960 = icmp eq i32 %i.ik, 0
  br i1 %.not2960, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %.thread3136
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.96) #13
  %i.il = load i32, ptr %i.gl, align 4, !tbaa !28
  %i.im = load i32, ptr %i.hg, align 4, !tbaa !30
  %i.in = icmp ult i32 %i.il, %i.im
  br i1 %i.in, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.97) #13
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg, %.thread3136
  %i.io = load i32, ptr %i.hj, align 4, !tbaa !73 ; 2 uses
  %i.ip = and i32 %i.io, 536870912
  %.not2961 = icmp eq i32 %i.ip, 0
  br i1 %.not2961, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.98) #13
  %.pr = load i32, ptr %i.hj, align 4, !tbaa !73
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.iq = phi i32 [ %.pr, %bb.ei ], [ %i.io, %bb.eh ]
  %.not2962 = icmp sgt i32 %i.iq, -1
  br i1 %.not2962, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.99) #13
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.81) #13
  %i.ir = load i32, ptr %i.dr, align 8, !tbaa !61 ; 2 uses
  %i.is = and i32 %i.ir, 64
  %.not2963 = icmp eq i32 %i.is, 0
  br i1 %.not2963, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.it = load i32, ptr %i.hk, align 4, !tbaa !74
  %i.iu = urem i32 %i.it, %i.eo
  %.not2964 = icmp eq i32 %i.iu, 0
  br i1 %.not2964, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.100) #13
  %i.iv = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2979 = icmp eq ptr %i.iv, null
  br i1 %.not2979, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  store ptr @.str.4, ptr %i.iv, align 8, !tbaa !64
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  call void @free(ptr noundef nonnull %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.eq:                                            ; preds = %bb.em, %bb.el
  %i.iw = load i32, ptr %i.hg, align 4, !tbaa !30 ; 3 uses
  %.not2965 = icmp eq i32 %i.iw, 0
  br i1 %.not2965, label %.critedge, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ix = load i32, ptr %i.hd, align 4, !tbaa !29 ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %.not2966 = icmp ugt i64 %i.ej, %i.iy
  br i1 %.not2966, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.101, i32 noundef %i.ia, i32 noundef %i.ix, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.iz = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.ja = and i32 %i.iz, 64
  %.not2977 = icmp eq i32 %i.ja, 0
  br i1 %.not2977, label %.critedge3020, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.jb = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2978 = icmp eq ptr %i.jb, null
  br i1 %.not2978, label %.critedge3020, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store ptr @.str.4, ptr %i.jb, align 8, !tbaa !64
  br label %.critedge3020

bb.ev:                                            ; preds = %bb.er
  %i.jc = and i32 %i.ir, 512
  %.not2967 = icmp eq i32 %i.jc, 0
  %.pre3597 = load ptr, ptr %i.fn, align 8, !tbaa !69
  %.pre3598 = load i32, ptr %.pre3597, align 4, !tbaa !71 ; 2 uses
  br i1 %.not2967, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.jd = and i32 %.pre3598, 8
  %i.je = icmp eq i32 %i.jd, 0
  %i.jf = load i8, ptr %i.d, align 1
  %i.jg = icmp ne i8 %i.jf, 0
  %or.cond34 = select i1 %i.je, i1 true, i1 %i.jg
  br i1 %or.cond34, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.jh = load i32, ptr %i.gl, align 4, !tbaa !28
  %i.ji = add i32 %i.jh, -40001
  %or.cond3001 = icmp ult i32 %i.ji, 29999
  br i1 %or.cond3001, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.jj = load i32, ptr %i.hj, align 4, !tbaa !73
  %i.jk = icmp eq i32 %i.jj, -536870816
  %i.jl = trunc i64 %indvars.iv3536 to i8
  %spec.select = select i1 %i.jk, i8 %i.jl, i8 %.024203402
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.ev
  %.12421 = phi i8 [ %.024203402, %bb.ew ], [ %.024203402, %bb.ex ], [ %spec.select, %bb.ey ], [ %.024203402, %bb.ev ] ; 5 uses
  %i.jm = load ptr, ptr %i.fo, align 8, !tbaa !78
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !80 ; 3 uses
  %i.jp = and i32 %.pre3598, 16
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = icmp ne ptr %i.jo, null
  %or.cond36 = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond36, label %.preheader3349, label %.critedge

.preheader3349:                                   ; preds = %bb.ez
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !87 ; 2 uses
  %.not3489 = icmp eq i32 %i.jt, 0
  br i1 %.not3489, label %.critedge, label %.lr.ph3400

.lr.ph3400:                                       ; preds = %.preheader3349
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !88
  %wide.trip.count = zext i32 %i.jt to i64
  br label %bb.fb

bb.fa:                                            ; preds = %bb.fc
  %indvars.iv.next3534 = add nuw nsw i64 %indvars.iv3533, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3534, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.fb, !llvm.loop !32

bb.fb:                                            ; preds = %.lr.ph3400, %bb.fa
  %indvars.iv3533 = phi i64 [ 0, %.lr.ph3400 ], [ %indvars.iv.next3534, %bb.fa ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv3533
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !7  ; 2 uses
  %.not2968 = icmp ugt i32 %i.jx, %i.iw
  br i1 %.not2968, label %.critedge, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jy = icmp eq i32 %i.jx, %i.iw
  br i1 %i.jy, label %bb.fd, label %bb.fa

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.jz = call fastcc i32 @cli_md5sect(i32 noundef %0, ptr noundef %i.gi, ptr noundef %i.i)
  %.not2969 = icmp eq i32 %i.jz, 0
  br i1 %.not2969, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ka = load ptr, ptr %1, align 8, !tbaa !62
  %i.kb = load ptr, ptr %i.fo, align 8, !tbaa !78
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !80
  %i.ke = call i32 @cli_bm_scanbuff(ptr noundef nonnull %i.i, i32 noundef 16, ptr noundef %i.ka, ptr noundef %i.kd, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %.critedge3003, label %bb.ff

.critedge3003:                                    ; preds = %bb.fe
  call void @free(ptr noundef %i.el) #13
  call void @free(ptr noundef %i.em) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %.critedge3020

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.fb, %bb.fa, %.preheader3349, %bb.ff, %bb.ez, %bb.eq
  %.22422 = phi i8 [ %.12421, %bb.ff ], [ %.12421, %bb.ez ], [ %.024203402, %bb.eq ], [ %.12421, %.preheader3349 ], [ %.12421, %bb.fa ], [ %.12421, %bb.fb ] ; 2 uses
  %.not2970 = icmp eq i64 %indvars.iv3536, 0
  %i.kg = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.kh = and i32 %i.kg, 64
  %.not2971 = icmp eq i32 %i.kh, 0                ; 2 uses
  br i1 %.not2970, label %bb.fg, label %bb.fm

bb.fg:                                            ; preds = %.critedge
  br i1 %.not2971, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ki = load i32, ptr %i.hk, align 4, !tbaa !74
  %.not2972 = icmp eq i32 %i.ki, %6
  br i1 %.not2972, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.102) #13
  %i.kj = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2973 = icmp eq ptr %i.kj, null
  br i1 %.not2973, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store ptr @.str.4, ptr %i.kj, align 8, !tbaa !64
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  call void @free(ptr noundef %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.fl:                                            ; preds = %bb.fh, %bb.fg
  %i.kk = load i32, ptr %i.gi, align 4, !tbaa !26 ; 2 uses
  %i.kl = load i32, ptr %i.hg, align 4, !tbaa !30
  %i.km = add i32 %i.kl, %i.kk
  br label %bb.fs

bb.fm:                                            ; preds = %.critedge
  br i1 %.not2971, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.kn = load i32, ptr %i.hk, align 4, !tbaa !74
  %i.ko = getelementptr i8, ptr %i.gk, i64 -16
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !74
  %i.kq = sub i32 %i.kn, %i.kp
  %i.kr = getelementptr i8, ptr %i.gk, i64 -32
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !28
  %.not2975 = icmp eq i32 %i.kq, %i.ks
  br i1 %.not2975, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.103) #13
  %i.kt = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2976 = icmp eq ptr %i.kt, null
  br i1 %.not2976, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store ptr @.str.4, ptr %i.kt, align 8, !tbaa !64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  call void @free(ptr noundef %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.fr:                                            ; preds = %bb.fn, %bb.fm
  %i.ku = load i32, ptr %i.gi, align 4, !tbaa !26 ; 2 uses
  %spec.select3004 = call i32 @llvm.umin.i32(i32 %i.ku, i32 %.023783405)
  %i.kv = load i32, ptr %i.hg, align 4, !tbaa !30
  %i.kw = add i32 %i.kv, %i.ku
  %spec.select3063 = call i32 @llvm.umax.i32(i32 %i.kw, i32 %.023763406)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fl
  %.22380 = phi i32 [ %i.kk, %bb.fl ], [ %spec.select3004, %bb.fr ] ; 2 uses
  %.12377 = phi i32 [ %i.km, %bb.fl ], [ %spec.select3063, %bb.fr ] ; 2 uses
  %indvars.iv.next3537 = add nuw nsw i64 %indvars.iv3536, 1 ; 2 uses
  %exitcond3539.not = icmp eq i64 %indvars.iv.next3537, %wide.trip.count3538
  br i1 %exitcond3539.not, label %._crit_edge3409, label %bb.dr, !llvm.loop !33

._crit_edge3409:                                  ; preds = %bb.fs, %5
  %.02420.lcssa = phi i8 [ 0, %5 ], [ %.22422, %bb.fs ] ; 2 uses
  %.02378.lcssa = phi i32 [ 0, %5 ], [ %.22380, %bb.fs ] ; 10 uses
  %.02376.lcssa = phi i32 [ 0, %5 ], [ %.12377, %bb.fs ] ; 3 uses
  call void @free(ptr noundef %i.el) #13
  %i.kx = call fastcc i32 @cli_rawaddr(i32 noundef %i.cj, ptr noundef %i.em, i16 noundef zeroext %i.aj, ptr noundef %i.g, i64 noundef %i.ej, i32 noundef %6) ; 10 uses
  %i.ky = icmp eq i32 %i.kx, 0
  %i.kz = load i32, ptr %i.g, align 4
  %i.la = icmp ne i32 %i.kz, 0
  %or.cond38 = select i1 %i.ky, i1 %i.la, i1 false
  br i1 %or.cond38, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %._crit_edge3409
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.104) #13
  call void @free(ptr noundef %i.em) #13
  %i.lb = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.lc = and i32 %i.lb, 64
  %.not2949 = icmp eq i32 %i.lc, 0
  br i1 %.not2949, label %.critedge3020, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ld = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %.not2950 = icmp eq ptr %i.ld, null
  br i1 %.not2950, label %.critedge3020, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store ptr @.str.4, ptr %i.ld, align 8, !tbaa !64
  br label %.critedge3020

bb.fw:                                            ; preds = %._crit_edge3409
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef %i.kx, i32 noundef %i.kx) #13
  br i1 %.not2680, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.fy:                                            ; preds = %bb.fw
  %i.le = zext i32 %i.kx to i64
  %i.lf = call i64 @lseek(i32 noundef %0, i64 noundef %i.le, i32 noundef 0) #13 ; 0 uses
  %i.lg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.f, i32 noundef 4096) #13 ; 6 uses
  %i.lh = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.li = and i32 %i.lh, 512
  %.not2696 = icmp eq i32 %i.li, 0
  br i1 %.not2696, label %bb.gf, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !69
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !71
  %i.lm = trunc i32 %i.ll to i1
  %or.cond40.not2698 = and i1 %.not2672, %i.lm
  %i.ln = icmp eq i32 %i.lg, 4096
  %or.cond42 = select i1 %or.cond40.not2698, i1 %i.ln, i1 false
  br i1 %or.cond42, label %bb.ga, label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  %i.lo = getelementptr [36 x i8], ptr %i.em, i64 %i.ek
  %i.lp = getelementptr i8, ptr %i.lo, i64 -28
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !29
  %i.lr = icmp eq i32 %i.kx, %i.lq
  br i1 %i.lr, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %bb.ga
  %i.ls = call ptr @cli_memstr(ptr noundef nonnull %i.f, i32 noundef 4040, ptr noundef nonnull @.str.106, i32 noundef 15) #13 ; 7 uses
  %.not2699 = icmp eq ptr %i.ls, null
  br i1 %.not2699, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 15
  %.val3118 = load i32, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 19
  %.val3117 = load i32, ptr %i.lu, align 1
  %i.lv = xor i32 %.val3117, %.val3118
  %i.lw = icmp eq i32 %i.lv, 5265999
  br i1 %i.lw, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 23
  %.val3116 = load i32, ptr %i.lx, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 27
  %.val3115 = load i32, ptr %i.ly, align 1
  %i.lz = xor i32 %.val3115, %.val3116
  %i.ma = icmp eq i32 %i.lz, 1048571
  br i1 %i.ma, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 31
  %.val3114 = load i32, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 35
  %.val3113 = load i32, ptr %i.mc, align 1
  %i.md = xor i32 %.val3113, %.val3114
  %i.me = icmp eq i32 %i.md, 184
  br i1 %i.me, label %.critedge3006, label %bb.gf

.critedge3006:                                    ; preds = %bb.ge
  %i.mf = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.107, ptr %i.mf, align 8, !tbaa !64
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.gf:                                            ; preds = %bb.gc, %bb.gd, %bb.ge, %bb.gb, %bb.ga, %bb.fz, %bb.fy
  %i.mg = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.mh = and i32 %i.mg, 512
  %.not2700 = icmp eq i32 %i.mh, 0
  br i1 %.not2700, label %.thread3823, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !69
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !71
  %i.ml = and i32 %i.mk, 2
  %i.mm = icmp ne i32 %i.ml, 0
  %i.mn = icmp ugt i32 %i.lg, 199
  %or.cond44 = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond44, label %bb.gh, label %.thread3821

bb.gh:                                            ; preds = %bb.gg
  %i.mo = getelementptr [36 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 -24
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !30 ; 2 uses
  %i.mr = icmp ugt i32 %i.mq, 4049
  br i1 %i.mr, label %bb.gi, label %.thread3821

bb.gi:                                            ; preds = %bb.gh
  %i.ms = getelementptr i8, ptr %i.mo, i64 -28
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !29 ; 3 uses
  %.not2702 = icmp ult i32 %i.kx, %i.mt
  br i1 %.not2702, label %.thread3821, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.mu = add i32 %i.kx, 4050                     ; 2 uses
  %i.mv = add i32 %i.mt, %i.mq
  %.not2703 = icmp ugt i32 %i.mu, %i.mv
  br i1 %.not2703, label %.thread3821, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.mw = icmp ugt i32 %i.mu, %i.mt
  %i.mx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.my = load i8, ptr %i.mx, align 1
  %i.mz = icmp eq i8 %i.my, -100
  %or.cond48 = select i1 %i.mw, i1 %i.mz, i1 false
  %i.na = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.nb = load i8, ptr %i.na, align 2
  %i.nc = icmp eq i8 %i.nb, 96
  %or.cond52 = select i1 %or.cond48, i1 %i.nc, i1 false
  br i1 %or.cond52, label %.lr.ph3423.preheader, label %.thread3821

.lr.ph3423.preheader:                             ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @__const.cli_scanpe.kzs, i64 12, i1 false)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.108) #13
  %i.nd = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %.lr.ph3423

.lr.ph3423:                                       ; preds = %.lr.ph3423.preheader, %bb.hn
  %i.ne = phi i8 [ %i.pj, %bb.hn ], [ 0, %.lr.ph3423.preheader ] ; 2 uses
  %.023023421 = phi i32 [ %.22304, %bb.hn ], [ -1, %.lr.ph3423.preheader ] ; 14 uses
  %.023053420 = phi i32 [ %.6, %bb.hn ], [ 65535, %.lr.ph3423.preheader ] ; 23 uses
  %.023083419 = phi i32 [ %.32311, %bb.hn ], [ 197, %.lr.ph3423.preheader ] ; 5 uses
  %.023123418 = phi i8 [ %.62318, %bb.hn ], [ -1, %.lr.ph3423.preheader ] ; 23 uses
  %.023193417 = phi i8 [ %.32322, %bb.hn ], [ -1, %.lr.ph3423.preheader ] ; 16 uses
  %.023233416 = phi ptr [ %.32326, %bb.hn ], [ %i.nd, %.lr.ph3423.preheader ] ; 6 uses
  %.023273415 = phi ptr [ %.7, %bb.hn ], [ %i.j, %.lr.ph3423.preheader ] ; 25 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.023233416, i64 1 ; 15 uses
  %i.ng = load i8, ptr %.023233416, align 1, !tbaa !16 ; 18 uses
  %i.nh = add nsw i32 %.023083419, -1             ; 13 uses
  switch i8 %i.ne, label %bb.hn [
    i8 0, label %bb.gl
    i8 3, label %bb.gl
    i8 1, label %bb.gt
    i8 2, label %bb.gx
    i8 4, label %bb.hb
    i8 5, label %bb.hc
    i8 6, label %bb.hg
    i8 7, label %bb.hj
  ]

bb.gl:                                            ; preds = %.lr.ph3423, %.lr.ph3423
  switch i8 %i.ng, label %bb.gs [
    i8 -127, label %bb.gm
    i8 -72, label %bb.gn
    i8 -71, label %bb.gn
    i8 -70, label %bb.gn
    i8 -69, label %bb.gn
    i8 -67, label %bb.gn
    i8 -66, label %bb.gn
    i8 -65, label %bb.gn
    i8 72, label %bb.gq
    i8 73, label %bb.gq
    i8 74, label %bb.gq
    i8 75, label %bb.gq
    i8 77, label %bb.gq
    i8 78, label %bb.gq
    i8 79, label %bb.gq
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.ni = getelementptr inbounds nuw i8, ptr %.023233416, i64 6
  %i.nj = add nsw i32 %.023083419, -6
  br label %bb.hn

bb.gn:                                            ; preds = %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl
  %i.nk = icmp eq i8 %i.ne, 3
  br i1 %i.nk, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %bb.gn
  %.val3112 = load i32, ptr %i.nf, align 1
  %i.nl = icmp eq i32 %.val3112, 4050
  br i1 %i.nl, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.nm = add nsw i32 %.023083419, -6
  %i.nn = add nsw i8 %i.ng, 72                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.023273415, i64 1
  %i.np = zext nneg i8 %i.nn to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.109, i32 noundef %i.np) #13
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gn, %bb.go, %bb.gp, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gl
  %.22329 = phi ptr [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %.023273415, %bb.gl ], [ %i.no, %bb.gp ], [ %.023273415, %bb.go ], [ %.023273415, %bb.gn ] ; 2 uses
  %.22314 = phi i8 [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %.023123418, %bb.gl ], [ %i.nn, %bb.gp ], [ %.023123418, %bb.go ], [ %.023123418, %bb.gn ] ; 3 uses
  %.22307 = phi i32 [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %.023053420, %bb.gl ], [ %i.nm, %bb.gp ], [ %.023053420, %bb.go ], [ %.023053420, %bb.gn ] ; 2 uses
  %.12301 = phi i8 [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ %i.ng, %bb.gl ], [ 4, %bb.gp ], [ %i.ng, %bb.go ], [ %i.ng, %bb.gn ]
  %.02299 = phi i32 [ 0, %bb.gl ], [ 0, %bb.gl ], [ 0, %bb.gl ], [ 0, %bb.gl ], [ 0, %bb.gl ], [ 0, %bb.gl ], [ 0, %bb.gl ], [ 4, %bb.gp ], [ 4, %bb.go ], [ 4, %bb.gn ] ; 2 uses
  %i.nq = and i8 %.12301, 7                       ; 2 uses
  %.not2708 = icmp eq i8 %i.nq, %.023193417
  %.not2709 = icmp eq i8 %i.nq, %.22314
  %or.cond3008 = select i1 %.not2708, i1 true, i1 %.not2709
  br i1 %or.cond3008, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.nr = zext nneg i32 %.02299 to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nr
  %i.nt = sub nuw nsw i32 %i.nh, %.02299
end_hunk_1
begin_hunk_2_@cli_scanpe:bb.a
bb.gz:                                            ; preds = %bb.gy
  %i.of = zext nneg i8 %i.oe to i32
  %i.og = getelementptr inbounds nuw i8, ptr %.023273415, i64 1
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.110, i32 noundef %i.of) #13
  br label %bb.hn

bb.ha:                                            ; preds = %bb.gy, %bb.gx
  %.12320 = phi i8 [ 4, %bb.gy ], [ %.023193417, %bb.gx ]
  store i8 8, ptr %.023273415, align 1, !tbaa !16
  br label %bb.hn

bb.hb:                                            ; preds = %.lr.ph3423
  %i.oh = getelementptr inbounds nuw i8, ptr %.023273415, i64 1 ; 2 uses
  %i.oi = icmp eq i8 %i.ng, 62
  br i1 %i.oi, label %bb.hn, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph3423
  %.52332 = phi ptr [ %i.oh, %bb.hb ], [ %.023273415, %.lr.ph3423 ] ; 3 uses
  %i.oj = icmp eq i8 %i.ng, -128
  br i1 %i.oj, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.ok = load i8, ptr %i.nf, align 1, !tbaa !16
  %i.ol = zext i8 %i.ok to i32
  %i.om = zext i8 %.023193417 to i32
  %i.on = add nuw nsw i32 %i.om, 176
  %i.oo = icmp eq i32 %i.on, %i.ol
  br i1 %i.oo, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.op = getelementptr inbounds nuw i8, ptr %.023233416, i64 7
  %i.oq = add nsw i32 %.023083419, -7
  %i.or = getelementptr inbounds nuw i8, ptr %.52332, i64 1
  br label %bb.hn

bb.hf:                                            ; preds = %bb.hd, %bb.hc
  store i8 8, ptr %.52332, align 1, !tbaa !16
  br label %bb.hn

bb.hg:                                            ; preds = %.lr.ph3423
  %i.os = zext i8 %i.ng to i32
  %i.ot = zext i8 %.023193417 to i32
  %i.ou = add nuw nsw i32 %i.ot, 72
  %i.ov = icmp eq i32 %i.ou, %i.os
  br i1 %i.ov, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.ow = getelementptr inbounds nuw i8, ptr %.023273415, i64 1
  br label %bb.hn

bb.hi:                                            ; preds = %bb.hg
  store i8 8, ptr %.023273415, align 1, !tbaa !16
  br label %bb.hn

bb.hj:                                            ; preds = %.lr.ph3423
  %i.ox = zext i8 %i.ng to i32
  %i.oy = zext i8 %.023123418 to i32
  %i.oz = add nuw nsw i32 %i.oy, 72
  %i.pa = icmp eq i32 %i.oz, %i.ox
  br i1 %i.pa, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.pb = load i8, ptr %i.nf, align 1, !tbaa !16
  %i.pc = icmp eq i8 %i.pb, 117
  br i1 %i.pc, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.pd = getelementptr inbounds nuw i8, ptr %.023233416, i64 2
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !16
  %i.pf = sext i8 %i.pe to i32
  %i.pg = sub nsw i32 %i.nh, %i.pf                ; 2 uses
  %i.ph = add nsw i32 %i.pg, -3
  %.not2705 = icmp sgt i32 %i.ph, %.023053420
  %.not2706 = icmp slt i32 %i.pg, %.023023421
  %or.cond3009 = select i1 %.not2705, i1 true, i1 %.not2706
  br i1 %or.cond3009, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.112) #13
  %i.pi = getelementptr inbounds nuw i8, ptr %.023273415, i64 1
  br label %bb.hn

bb.hn:                                            ; preds = %.lr.ph3423, %bb.hm, %bb.gw, %bb.gv, %bb.ha, %bb.gz, %bb.hb, %bb.hf, %bb.he, %bb.hi, %bb.hh, %bb.gs, %bb.gr, %bb.gm
  %.7 = phi ptr [ %.22329, %bb.gr ], [ %.023273415, %bb.gm ], [ %.023273415, %.lr.ph3423 ], [ %i.pi, %bb.hm ], [ %i.ob, %bb.gv ], [ %.023273415, %bb.gw ], [ %i.og, %bb.gz ], [ %.023273415, %bb.ha ], [ %i.oh, %bb.hb ], [ %i.or, %bb.he ], [ %.52332, %bb.hf ], [ %i.ow, %bb.hh ], [ %.023273415, %bb.hi ], [ %i.nu, %bb.gs ] ; 2 uses
  %.32326 = phi ptr [ %i.ns, %bb.gr ], [ %i.ni, %bb.gm ], [ %i.nf, %.lr.ph3423 ], [ %i.nf, %bb.hm ], [ %i.oa, %bb.gv ], [ %i.nf, %bb.gw ], [ %i.nf, %bb.gz ], [ %i.nf, %bb.ha ], [ %i.nf, %bb.hb ], [ %i.op, %bb.he ], [ %i.nf, %bb.hf ], [ %i.nf, %bb.hh ], [ %i.nf, %bb.hi ], [ %.023233416, %bb.gs ]
  %.32322 = phi i8 [ %.023193417, %bb.gr ], [ %.023193417, %bb.gm ], [ %.023193417, %.lr.ph3423 ], [ %.023193417, %bb.hm ], [ %.023193417, %bb.gv ], [ %.023193417, %bb.gw ], [ %i.oe, %bb.gz ], [ %.12320, %bb.ha ], [ %.023193417, %bb.hb ], [ %.023193417, %bb.he ], [ %.023193417, %bb.hf ], [ %.023193417, %bb.hh ], [ %.023193417, %bb.hi ], [ %.023193417, %bb.gs ]
  %.62318 = phi i8 [ %.22314, %bb.gr ], [ %.023123418, %bb.gm ], [ %.023123418, %.lr.ph3423 ], [ %.023123418, %bb.hm ], [ %.023123418, %bb.gv ], [ %.023123418, %bb.gw ], [ %.023123418, %bb.gz ], [ %.023123418, %bb.ha ], [ %.023123418, %bb.hb ], [ %.023123418, %bb.he ], [ %.023123418, %bb.hf ], [ %.023123418, %bb.hh ], [ %.023123418, %bb.hi ], [ %.32315, %bb.gs ]
  %.32311 = phi i32 [ %i.nt, %bb.gr ], [ %i.nj, %bb.gm ], [ %i.nh, %.lr.ph3423 ], [ %i.nh, %bb.hm ], [ %i.ny, %bb.gv ], [ %i.nh, %bb.gw ], [ %i.nh, %bb.gz ], [ %i.nh, %bb.ha ], [ %i.nh, %bb.hb ], [ %i.oq, %bb.he ], [ %i.nh, %bb.hf ], [ %i.nh, %bb.hh ], [ %i.nh, %bb.hi ], [ %.023083419, %bb.gs ] ; 2 uses
  %.6 = phi i32 [ %.22307, %bb.gr ], [ %.023053420, %bb.gm ], [ %.023053420, %.lr.ph3423 ], [ %.023053420, %bb.hm ], [ %.023053420, %bb.gv ], [ %.023053420, %bb.gw ], [ %.023053420, %bb.gz ], [ %.023053420, %bb.ha ], [ %.023053420, %bb.hb ], [ %.023053420, %bb.he ], [ %.023053420, %bb.hf ], [ %.023053420, %bb.hh ], [ %.023053420, %bb.hi ], [ %.3, %bb.gs ]
  %.22304 = phi i32 [ %.023023421, %bb.gr ], [ %.023023421, %bb.gm ], [ %.023023421, %.lr.ph3423 ], [ %.023023421, %bb.hm ], [ %.023023421, %bb.gv ], [ %.023023421, %bb.gw ], [ %.023023421, %bb.gz ], [ %.023023421, %bb.ha ], [ %.023023421, %bb.hb ], [ %i.nh, %bb.he ], [ %.023023421, %bb.hf ], [ %.023023421, %bb.hh ], [ %.023023421, %bb.hi ], [ %.023023421, %bb.gs ]
  %i.pj = load i8, ptr %.7, align 1, !tbaa !16    ; 2 uses
  %.not2704 = icmp eq i8 %i.pj, 8
  %i.pk = icmp slt i32 %.32311, 7
  %or.cond3316 = select i1 %.not2704, i1 true, i1 %i.pk
  br i1 %or.cond3316, label %bb.hp, label %.lr.ph3423

bb.ho:                                            ; preds = %bb.hl
  %i.pl = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.111, ptr %i.pl, align 8, !tbaa !64
  call void @free(ptr noundef %i.em) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %.critedge3020

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  %.pre3599 = load i32, ptr %i.dr, align 8, !tbaa !61
  %.pre3609.a = and i32 %.pre3599, 512
  %i.pm = icmp eq i32 %.pre3609.a, 0
  br i1 %i.pm, label %.thread3823, label %.thread3821

.thread3821:                                      ; preds = %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.hp
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !69
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !71
  %i.pq = and i32 %i.pp, 4
  %i.pr = icmp ne i32 %i.pq, 0
  %i.ps = icmp ugt i16 %i.aj, 1
  %i.pt = and i1 %i.ps, %i.pr
  %or.cond57 = and i1 %.not2672, %i.pt
  br i1 %or.cond57, label %bb.hq, label %.thread3823

bb.hq:                                            ; preds = %.thread3821
  %i.pu = getelementptr [36 x i8], ptr %i.em, i64 %i.ek ; 6 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 -20
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !73
  %.not2713 = icmp sgt i32 %i.pw, -1
  br i1 %.not2713, label %.thread3823, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.px = getelementptr i8, ptr %i.pu, i64 -12
  %i.py = load i32, ptr %i.px, align 4, !tbaa !75 ; 3 uses
  %i.pz = getelementptr i8, ptr %i.pu, i64 -24
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !30 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pu, i64 -4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !77 ; 2 uses
  %.not2716.not = icmp ult i32 %i.qa, %i.qc       ; 2 uses
  %spec.select3010 = call i32 @llvm.umax.i32(i32 %i.qa, i32 %i.qc) ; 4 uses
  %i.qd = icmp ugt i32 %i.py, 24875
  %i.qe = icmp ugt i32 %spec.select3010, 24875
  %or.cond59 = and i1 %i.qd, %i.qe
  %i.qf = and i32 %i.py, 255                      ; 2 uses
  %i.qg = icmp eq i32 %i.qf, 236
  %or.cond3012 = and i1 %i.qg, %or.cond59
  br i1 %or.cond3012, label %bb.hs, label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.qh = getelementptr i8, ptr %i.pu, i64 -28
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !29
  %i.qj = call i32 @llvm.usub.sat.i32(i32 %spec.select3010, i32 28672)
  %i.qk = add i32 %i.qi, %i.qj
  %i.ql = zext i32 %i.qk to i64
  %i.qm = call i64 @lseek(i32 noundef %0, i64 noundef %i.ql, i32 noundef 0) #13 ; 0 uses
  %i.qn = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 4096) #13
  %i.qo = icmp eq i32 %i.qn, 4096
  br i1 %i.qo, label %bb.ht, label %.thread3823

bb.ht:                                            ; preds = %bb.hs
  %i.qp = call ptr @cli_memstr(ptr noundef nonnull %i.e, i32 noundef 4091, ptr noundef nonnull @.str.113, i32 noundef 5) #13
  %.not2717 = icmp eq ptr %i.qp, null
  br i1 %.not2717, label %.thread3823, label %.critedge3014

.critedge3014:                                    ; preds = %bb.ht
  %i.qq = select i1 %.not2716.not, ptr @.str.114, ptr @.str.115
  %i.qr = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !64
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.hu:                                            ; preds = %bb.hr
  %i.qs = icmp ugt i32 %spec.select3010, 28671
  %i.qt = icmp ugt i32 %i.py, 28671
  %or.cond61 = and i1 %i.qt, %i.qs
  %i.qu = icmp eq i32 %i.qf, 237
  %or.cond3016 = and i1 %i.qu, %or.cond61
  br i1 %or.cond3016, label %bb.hv, label %.thread3823

bb.hv:                                            ; preds = %bb.hu
  %i.qv = getelementptr i8, ptr %i.pu, i64 -28
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !29
  %i.qx = call i32 @llvm.usub.sat.i32(i32 %spec.select3010, i32 32768)
  %i.qy = add i32 %i.qw, %i.qx
  %i.qz = zext i32 %i.qy to i64
  %i.ra = call i64 @lseek(i32 noundef %0, i64 noundef %i.qz, i32 noundef 0) #13 ; 0 uses
  %i.rb = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 4096) #13
  %i.rc = icmp eq i32 %i.rb, 4096
  br i1 %i.rc, label %bb.hw, label %.thread3823

bb.hw:                                            ; preds = %bb.hv
  %i.rd = call ptr @cli_memstr(ptr noundef nonnull %i.e, i32 noundef 4091, ptr noundef nonnull @.str.116, i32 noundef 5) #13
  %.not2714 = icmp eq ptr %i.rd, null
  br i1 %.not2714, label %.thread3823, label %.critedge3018

.critedge3018:                                    ; preds = %bb.hw
  %i.re = select i1 %.not2716.not, ptr @.str.117, ptr @.str.118
  %i.rf = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !64
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

.thread3823:                                      ; preds = %bb.gf, %bb.hw, %bb.hv, %bb.ht, %bb.hs, %bb.hu, %bb.hp, %.thread3821, %bb.hq
  %i.rg = icmp ne i8 %.02420.lcssa, 0
  %i.rh = add nsw i16 %i.aj, -3
  %i.ri = icmp ult i16 %i.rh, 10
  %i.rj = and i1 %i.ri, %i.rg
  %or.cond69 = and i1 %.not2672, %i.rj
  %i.rk = load i32, ptr %i.b, align 4
  %i.rl = icmp ult i32 %i.rk, 2049
  %or.cond71 = select i1 %or.cond69, i1 %i.rl, i1 false
  br i1 %or.cond71, label %bb.hx, label %.critedge81

bb.hx:                                            ; preds = %.thread3823
  %i.rm = load i16, ptr %i.dn, align 4, !tbaa !16
  %i.rn = and i16 %i.rm, -2
  %or.cond75 = icmp eq i16 %i.rn, 2
  %i.ro = load i16, ptr %i.af, align 4
  %i.rp = icmp eq i16 %i.ro, 332
  %or.cond79 = select i1 %or.cond75, i1 %i.rp, i1 false
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.rr = load i32, ptr %i.rq, align 8
  %i.rs = icmp ugt i32 %i.rr, 524287
  %or.cond209 = select i1 %or.cond79, i1 %i.rs, i1 false
  br i1 %or.cond209, label %bb.hy, label %.critedge81

bb.hy:                                            ; preds = %bb.hx
  %i.rt = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 5 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !30
  %i.rv = icmp ugt i32 %i.ru, 184549376
  br i1 %i.rv, label %.critedge81, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.rw = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.em)
  %.not2721 = icmp eq i64 %i.rw, 0
  br i1 %.not2721, label %.critedge81, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.rx = load i32, ptr %i.rt, align 4, !tbaa !30
  %i.ry = zext i32 %i.rx to i64
  %i.rz = call ptr @cli_malloc(i64 noundef %i.ry) #13 ; 8 uses
  %.not2722 = icmp eq ptr %i.rz, null
  br i1 %.not2722, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ic:                                            ; preds = %bb.ia
  %i.sa = load i32, ptr %i.rt, align 4, !tbaa !30
  %i.sb = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.rz, i32 noundef %i.sa) #13 ; 3 uses
  %i.sc = load i32, ptr %i.rt, align 4, !tbaa !30
  %.not2723 = icmp eq i32 %i.sb, %i.sc
  br i1 %.not2723, label %.preheader3348, label %bb.id

.preheader3348:                                   ; preds = %bb.ic
  %.not3490 = icmp eq i32 %i.sb, 5
  br i1 %.not3490, label %.critedge81.sink.split, label %.lr.ph3433

.lr.ph3433:                                       ; preds = %.preheader3348
  %i.sd = zext i8 %.02420.lcssa to i64
  %i.se = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 12
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  br label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ie:                                            ; preds = %.lr.ph3433, %bb.ir
  %i.sh = phi i32 [ %i.sb, %.lr.ph3433 ], [ %i.to, %bb.ir ] ; 5 uses
  %indvars.iv3545 = phi i64 [ 0, %.lr.ph3433 ], [ %indvars.iv.next3546.pre-phi, %bb.ir ] ; 4 uses
  %.022893432 = phi i32 [ 0, %.lr.ph3433 ], [ %.22291, %bb.ir ] ; 13 uses
  %.022923431 = phi ptr [ null, %.lr.ph3433 ], [ %.22294, %bb.ir ] ; 8 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rz, i64 %indvars.iv3545
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !16
  %i.sk = and i8 %i.sj, -2
  %.not2724 = icmp eq i8 %i.sk, -24
  br i1 %.not2724, label %bb.if, label %._crit_edge3610

._crit_edge3610:                                  ; preds = %bb.ie
  %.pre3625 = add nuw nsw i64 %indvars.iv3545, 1
  br label %bb.ir

bb.if:                                            ; preds = %bb.ie
  %i.sl = load i32, ptr %i.em, align 4, !tbaa !26
  %i.sm = add nuw nsw i64 %indvars.iv3545, 1      ; 6 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sm
  %.val3110 = load i32, ptr %i.sn, align 1
  %i.so = trunc nuw i64 %indvars.iv3545 to i32
  %i.sp = add i32 %i.so, 5
  %i.sq = add i32 %i.sp, %i.sl
  %i.sr = add i32 %i.sq, %.val3110
  %i.ss = call fastcc i32 @cli_rawaddr(i32 noundef %i.sr, ptr noundef nonnull %i.em, i16 noundef zeroext %i.aj, ptr noundef %i.g, i64 noundef %i.ej, i32 noundef %6) ; 4 uses
  %i.st = load i32, ptr %i.g, align 4, !tbaa !7
  %.not2725 = icmp eq i32 %i.st, 0
  br i1 %.not2725, label %bb.ig, label %bb.ir

bb.ig:                                            ; preds = %bb.if
  %i.su = load i32, ptr %i.sf, align 4, !tbaa !30 ; 2 uses
  %i.sv = icmp ugt i32 %i.su, 8
  br i1 %i.sv, label %bb.ih, label %bb.ir

bb.ih:                                            ; preds = %bb.ig
  %i.sw = load i32, ptr %i.sg, align 4, !tbaa !29 ; 3 uses
  %.not2727 = icmp ult i32 %i.ss, %i.sw
  br i1 %.not2727, label %bb.ir, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.sx = add i32 %i.ss, 9                        ; 2 uses
  %i.sy = add i32 %i.sw, %i.su
  %.not2728 = icmp ule i32 %i.sx, %i.sy
  %i.sz = icmp ugt i32 %i.sx, %i.sw
  %or.cond3022 = and i1 %i.sz, %.not2728
  br i1 %or.cond3022, label %bb.ij, label %bb.ir

bb.ij:                                            ; preds = %bb.ii
  %i.ta = and i32 %.022893432, 127
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %bb.ik, label %.lr.ph3427.preheader

bb.ik:                                            ; preds = %bb.ij
  %i.tc = icmp eq i32 %.022893432, 1280
  br i1 %i.tc, label %.thread3162, label %bb.il

.thread3162:                                      ; preds = %bb.ik
  call void @free(ptr noundef nonnull %i.rz) #13
  br label %bb.is

bb.il:                                            ; preds = %bb.ik
  %i.td = add i32 %.022893432, 128
  %i.te = zext i32 %i.td to i64
  %i.tf = shl nuw nsw i64 %i.te, 2
  %i.tg = call ptr @cli_realloc2(ptr noundef %.022923431, i64 noundef %i.tf) #13 ; 3 uses
  %.not2729 = icmp eq ptr %i.tg, null
  br i1 %.not2729, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  call void @free(ptr noundef nonnull %i.rz) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.in:                                            ; preds = %bb.il
  %.not3491 = icmp eq i32 %.022893432, 0
  br i1 %.not3491, label %.loopexit3347, label %.lr.ph3427.preheader

.lr.ph3427.preheader:                             ; preds = %bb.ij, %bb.in
  %.122933828 = phi ptr [ %i.tg, %bb.in ], [ %.022923431, %bb.ij ] ; 3 uses
  %wide.trip.count3543 = zext i32 %.022893432 to i64
  br label %.lr.ph3427

.lr.ph3427:                                       ; preds = %.lr.ph3427.preheader, %bb.iq
  %indvars.iv3540 = phi i64 [ 0, %.lr.ph3427.preheader ], [ %indvars.iv.next3541, %bb.iq ] ; 3 uses
  %.022953425 = phi i32 [ %i.ss, %.lr.ph3427.preheader ], [ %.12296, %bb.iq ] ; 5 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.122933828, i64 %indvars.iv3540 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !7  ; 3 uses
  %i.tj = icmp ult i32 %i.ti, %.022953425
  br i1 %i.tj, label %bb.iq, label %bb.io

bb.io:                                            ; preds = %.lr.ph3427
  %i.tk = icmp eq i32 %i.ti, %.022953425
  br i1 %i.tk, label %.loopexit3347, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  store i32 %.022953425, ptr %i.th, align 4, !tbaa !7
  br label %bb.iq

bb.iq:                                            ; preds = %.lr.ph3427, %bb.ip
  %.12296 = phi i32 [ %.022953425, %.lr.ph3427 ], [ %i.ti, %bb.ip ] ; 2 uses
  %indvars.iv.next3541 = add nuw nsw i64 %indvars.iv3540, 1 ; 2 uses
  %exitcond3544.not = icmp eq i64 %indvars.iv.next3541, %wide.trip.count3543
  br i1 %exitcond3544.not, label %.loopexit3347.loopexit, label %.lr.ph3427, !llvm.loop !34

.loopexit3347.loopexit:                           ; preds = %bb.iq
  %i.tl = zext i32 %.022893432 to i64
  %i.tm = add i32 %.022893432, 1
  br label %.loopexit3347

.loopexit3347:                                    ; preds = %bb.io, %.loopexit3347.loopexit, %bb.in
  %.122933829 = phi ptr [ %.122933828, %.loopexit3347.loopexit ], [ %i.tg, %bb.in ], [ %.122933828, %bb.io ] ; 2 uses
  %.123433366 = phi i64 [ %i.tl, %.loopexit3347.loopexit ], [ 0, %bb.in ], [ %indvars.iv3540, %bb.io ]
  %.022953364 = phi i32 [ %.12296, %.loopexit3347.loopexit ], [ %i.ss, %bb.in ], [ %.022953425, %bb.io ]
  %.12290 = phi i32 [ %i.tm, %.loopexit3347.loopexit ], [ 1, %bb.in ], [ %.022893432, %bb.io ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.122933829, i64 %.123433366
  store i32 %.022953364, ptr %i.tn, align 4, !tbaa !7
  %.pre3600 = load i32, ptr %i.rt, align 4, !tbaa !30
  br label %bb.ir

bb.ir:                                            ; preds = %._crit_edge3610, %bb.if, %bb.ig, %bb.ih, %bb.ii, %.loopexit3347
  %indvars.iv.next3546.pre-phi = phi i64 [ %.pre3625, %._crit_edge3610 ], [ %i.sm, %bb.if ], [ %i.sm, %bb.ig ], [ %i.sm, %bb.ih ], [ %i.sm, %bb.ii ], [ %i.sm, %.loopexit3347 ] ; 3 uses
  %i.to = phi i32 [ %i.sh, %._crit_edge3610 ], [ %i.sh, %bb.if ], [ %i.sh, %bb.ig ], [ %i.sh, %bb.ih ], [ %i.sh, %bb.ii ], [ %.pre3600, %.loopexit3347 ] ; 2 uses
  %.22294 = phi ptr [ %.022923431, %._crit_edge3610 ], [ %.022923431, %bb.if ], [ %.022923431, %bb.ig ], [ %.022923431, %bb.ih ], [ %.022923431, %bb.ii ], [ %.122933829, %.loopexit3347 ] ; 2 uses
  %.22291 = phi i32 [ %.022893432, %._crit_edge3610 ], [ %.022893432, %bb.if ], [ %.022893432, %bb.ig ], [ %.022893432, %bb.ih ], [ %.022893432, %bb.ii ], [ %.12290, %.loopexit3347 ] ; 3 uses
  %i.tp = add i32 %i.to, -5
  %i.tq = zext i32 %i.tp to i64
  %i.tr = icmp samesign ult i64 %indvars.iv.next3546.pre-phi, %i.tq
  br i1 %i.tr, label %bb.ie, label %._crit_edge3434, !llvm.loop !35

._crit_edge3434:                                  ; preds = %bb.ir
  %i.ts = trunc nuw i64 %indvars.iv.next3546.pre-phi to i32
  call void @free(ptr noundef %i.rz) #13
  %.not2730 = icmp eq i32 %.22291, 0
  br i1 %.not2730, label %.critedge81, label %bb.is

bb.is:                                            ; preds = %.thread3162, %._crit_edge3434
  %.022923372 = phi ptr [ %.022923431, %.thread3162 ], [ %.22294, %._crit_edge3434 ] ; 3 uses
  %.022893369 = phi i32 [ 1280, %.thread3162 ], [ %.22291, %._crit_edge3434 ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.119, i32 noundef %.022893369) #13
  %i.tt = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.tv = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count3551 = zext i32 %.022893369 to i64
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.iz
  %indvars.iv3548 = phi i64 [ 0, %bb.is ], [ %indvars.iv.next3549, %bb.iz ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.022923372, i64 %indvars.iv3548
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !7
  %i.tz = zext i32 %i.ty to i64
  %i.ua = call i64 @lseek(i32 noundef %0, i64 noundef %i.tz, i32 noundef 0) #13 ; 0 uses
  %i.ub = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 9) #13
  %.not2731 = icmp eq i32 %i.ub, 9
  br i1 %.not2731, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %.val3109 = load i32, ptr %i.e, align 16        ; 3 uses
  %i.uc = icmp eq i32 %.val3109, 1626114901
  br i1 %i.uc, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ud = load i8, ptr %i.tt, align 4, !tbaa !16
  %i.ue = icmp eq i8 %i.ud, -20
  br i1 %i.ue, label %bb.iw, label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  %i.uf = icmp eq i32 %.val3109, -2081649835
  %i.ug = load i8, ptr %i.tu, align 2
  %i.uh = icmp eq i8 %i.ug, 96
  %or.cond85 = select i1 %i.uf, i1 %i.uh, i1 false
  br i1 %or.cond85, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ui = icmp ne i32 %.val3109, -2115204267
  %i.uj = load i8, ptr %i.tv, align 1
  %i.uk = icmp ne i8 %i.uj, 0
  %or.cond88 = select i1 %i.ui, i1 true, i1 %i.uk
  %i.ul = load i8, ptr %i.tw, align 8
  %i.um = icmp ne i8 %i.ul, 0
  %or.cond91 = select i1 %or.cond88, i1 true, i1 %i.um
  br i1 %or.cond91, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iu
  %i.un = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.120, ptr %i.un, align 8, !tbaa !64
  call void @free(ptr noundef nonnull %.022923372) #13
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.iz:                                            ; preds = %bb.iv, %bb.ix, %bb.it
  %indvars.iv.next3549 = add nuw nsw i64 %indvars.iv3548, 1 ; 2 uses
  %exitcond3552.not = icmp eq i64 %indvars.iv.next3549, %wide.trip.count3551
  br i1 %exitcond3552.not, label %.critedge81.sink.split, label %bb.it, !llvm.loop !36

.critedge81.sink.split:                           ; preds = %bb.iz, %.preheader3348
  %.sink3914 = phi ptr [ %i.rz, %.preheader3348 ], [ %.022923372, %bb.iz ]
  %.52412.ph = phi i32 [ 0, %.preheader3348 ], [ %.022893369, %bb.iz ]
  call void @free(ptr noundef nonnull %.sink3914) #13
  br label %.critedge81

.critedge81:                                      ; preds = %.critedge81.sink.split, %._crit_edge3434, %bb.hz, %bb.hy, %bb.hx, %.thread3823
  %.52412 = phi i32 [ %i.ak, %.thread3823 ], [ %i.ak, %bb.hx ], [ %i.ts, %._crit_edge3434 ], [ %i.ak, %bb.hz ], [ %i.ak, %bb.hy ], [ %.52412.ph, %.critedge81.sink.split ]
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 12 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !71
  %i.ur = and i32 %i.uq, 8288
  %.not2732 = icmp eq i32 %i.ur, 0
  br i1 %.not2732, label %.thread3170, label %.preheader3346

.preheader3346:                                   ; preds = %.critedge81
  %i.us = add nsw i32 %i.ak, -1                   ; 2 uses
  %.not3492 = icmp eq i32 %i.us, 0
  br i1 %.not3492, label %.thread3170, label %.lr.ph3440.preheader

.lr.ph3440.preheader:                             ; preds = %.preheader3346
  %i.ut = add nsw i32 %i.ak, -1
  %wide.trip.count3556 = zext i32 %i.us to i64
  br label %.lr.ph3440

.lr.ph3440:                                       ; preds = %.lr.ph3440.preheader, %bb.jd
  %indvars.iv3553 = phi i64 [ 0, %.lr.ph3440.preheader ], [ %indvars.iv.next3554, %bb.jd ] ; 4 uses
  %i.uu = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3553 ; 5 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 12
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !30
  %.not2733 = icmp eq i32 %i.uw, 0
  br i1 %.not2733, label %bb.ja, label %bb.jd

bb.ja:                                            ; preds = %.lr.ph3440
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !28
  %.not2734 = icmp eq i32 %i.uy, 0
  br i1 %.not2734, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 48
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !30
  %.not2735 = icmp eq i32 %i.va, 0
  br i1 %.not2735, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !28
  %.not2736 = icmp eq i32 %i.vc, 0
  br i1 %.not2736, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %.lr.ph3440, %bb.ja, %bb.jb, %bb.jc
  %indvars.iv.next3554 = add nuw nsw i64 %indvars.iv3553, 1 ; 2 uses
  %exitcond3557.not = icmp eq i64 %indvars.iv.next3554, %wide.trip.count3556
  br i1 %exitcond3557.not, label %.thread3170, label %.lr.ph3440, !llvm.loop !37

bb.je:                                            ; preds = %bb.jc
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.ve = trunc nuw nsw i64 %indvars.iv3553 to i32 ; 8 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.121) #13
  %i.vf = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !71
  %i.vh = and i32 %i.vg, 8192
  %i.vi = icmp ne i32 %i.vh, 0
  %i.vj = icmp ugt i32 %i.lg, 15
  %or.cond93 = select i1 %i.vi, i1 %i.vj, i1 false
  %i.vk = load i8, ptr %i.f, align 16
  %i.vl = icmp eq i8 %i.vk, -23
  %or.cond97 = select i1 %or.cond93, i1 %i.vl, i1 false
  br i1 %or.cond97, label %bb.jf, label %.thread3170

bb.jf:                                            ; preds = %bb.je
  %i.vm = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3108 = load i32, ptr %i.vm, align 1        ; 2 uses
  %i.vn = add i32 %i.cj, 5
  %i.vo = add i32 %i.vn, %.val3108                ; 8 uses
  %i.vp = icmp eq i32 %i.vo, 340
  switch i32 %i.vo, label %.thread3170 [
    i32 344, label %bb.jg
    i32 340, label %bb.jg
  ]

bb.jg:                                            ; preds = %bb.jf, %bb.jf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.122, i32 noundef %.val3108, i32 noundef %i.cj, i32 noundef %i.vo) #13
  %i.vq = zext nneg i32 %i.vo to i64
  %i.vr = call i64 @lseek(i32 noundef %0, i64 noundef %i.vq, i32 noundef 0) #13
  %i.vs = icmp eq i64 %i.vr, -1
  br i1 %i.vs, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.123) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ji:                                            ; preds = %bb.jg
  %i.vt = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.e, i64 noundef 176) #13 ; 2 uses
  %.not2737 = icmp eq i64 %i.vt, 176
  br i1 %.not2737, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.124, i32 noundef %i.vo, i32 noundef %i.vo, i64 noundef %i.vt) #13
  br label %.thread3170

bb.jk:                                            ; preds = %bb.ji
  %.str.125..str.126 = select i1 %i.vp, ptr @.str.125, ptr @.str.126
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.125..str.126) #13
  %i.vu = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.val3105 = load i32, ptr %i.vu, align 1
  %i.vv = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !16
  %i.vx = sub i32 %.val3105, %i.vw                ; 3 uses
  %i.vy = add nuw i64 %indvars.iv3553, 1
  %i.vz = and i64 %i.vy, 4294967295
  %i.wa = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.vz ; 6 uses
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !26 ; 3 uses
  %.not2738 = icmp ugt i32 %i.vx, %i.wb
  br i1 %.not2738, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !29
  %i.we = add i32 %i.wb, -4
  %i.wf = add i32 %i.we, %i.wd
  %.not2739 = icmp ult i32 %i.vx, %i.wf
  br i1 %.not2739, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.127) #13
  br label %.thread3170

bb.jn:                                            ; preds = %bb.jl
  %i.wg = sub nuw i32 %i.vx, %i.wb                ; 3 uses
  %i.wh = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.wa)
  %.not2740 = icmp eq i64 %i.wh, 0
  br i1 %.not2740, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jp:                                            ; preds = %bb.jn
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !28 ; 6 uses
  %i.wk = load i32, ptr %i.vd, align 4, !tbaa !28 ; 2 uses
  store i32 %i.wk, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128, i32 noundef %i.wj, i32 noundef %i.wk, i32 noundef %i.wg) #13
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !89 ; 2 uses
  %.not2741 = icmp eq ptr %i.wm, null
  br i1 %.not2741, label %._crit_edge3601, label %bb.jq

._crit_edge3601:                                  ; preds = %bb.jp
  %.pre3602 = load i32, ptr %i.h, align 4, !tbaa !7
  br label %.thread3834

bb.jq:                                            ; preds = %bb.jp
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !91 ; 5 uses
  %.not2742 = icmp eq i64 %i.wo, 0
  %.pre3603.pre = load i32, ptr %i.h, align 4, !tbaa !7 ; 4 uses
  br i1 %.not2742, label %.thread3834, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.wp = call i32 @llvm.umax.i32(i32 %i.wj, i32 %.pre3603.pre) ; 2 uses
  %i.wq = zext i32 %i.wp to i64
  %i.wr = icmp ult i64 %i.wo, %i.wq
  br i1 %i.wr, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %i.wp, i64 noundef %i.wo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ws = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.wt = and i32 %i.ws, 256
  %.not2756 = icmp eq i32 %i.wt, 0
  br i1 %.not2756, label %.critedge3020, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.wu = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.130, ptr %i.wu, align 8, !tbaa !64
  br label %.critedge3020

bb.ju:                                            ; preds = %bb.jr
  %i.wv = add i32 %.pre3603.pre, %i.wj
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !30
  %. = call i32 @llvm.umax.i32(i32 %i.wv, i32 %i.wx) ; 2 uses
  %i.wy = zext i32 %. to i64
  %i.wz = icmp ult i64 %i.wo, %i.wy
  br i1 %i.wz, label %bb.jv, label %.thread3834

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %., i64 noundef %i.wo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.xa = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.xb = and i32 %i.xa, 256
  %.not2755 = icmp eq i32 %i.xb, 0
  br i1 %.not2755, label %.critedge3020, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.xc = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.130, ptr %i.xc, align 8, !tbaa !64
  br label %.critedge3020

.thread3834:                                      ; preds = %bb.jq, %._crit_edge3601, %bb.ju
  %i.xd = phi i32 [ %.pre3602, %._crit_edge3601 ], [ %.pre3603.pre, %bb.ju ], [ %.pre3603.pre, %bb.jq ]
  %i.xe = add i32 %i.xd, %i.wj
  %i.xf = zext i32 %i.xe to i64
  %i.xg = call ptr @cli_calloc(i64 noundef %i.xf, i64 noundef 1) #13 ; 10 uses
  %.not2745 = icmp eq ptr %i.xg, null
  br i1 %.not2745, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %.thread3834
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.jy:                                            ; preds = %.thread3834
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wa, i64 12 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !30 ; 4 uses
  %i.xj = add i32 %i.wg, 12
  %i.xk = icmp ult i32 %i.xi, %i.xj
  %i.xl = icmp ugt i32 %i.xi, %i.wj
  %or.cond3024 = or i1 %i.xk, %i.xl
  br i1 %or.cond3024, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.131, i32 noundef %i.xi) #13
  call void @free(ptr noundef nonnull %i.xg) #13
  br label %.thread3170

bb.ka:                                            ; preds = %bb.jy
  %i.xm = load i32, ptr %i.h, align 4, !tbaa !7
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xn
  %i.xp = zext i32 %i.xi to i64
  %i.xq = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.xo, i64 noundef %i.xp) #13 ; 4 uses
  %i.xr = load i32, ptr %i.xh, align 4, !tbaa !30 ; 2 uses
  %i.xs = zext i32 %i.xr to i64
  %.not2746 = icmp eq i64 %i.xq, %i.xs
  br i1 %.not2746, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132, i32 noundef %i.xr, i64 noundef %i.xq) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.xg) #13
  br label %.critedge3020

bb.kc:                                            ; preds = %bb.ka
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133, i64 noundef %i.xq, i64 noundef %i.xq) #13
  %i.xt = getelementptr inbounds nuw i8, ptr %i.e, i64 123
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !16
  %i.xv = icmp eq i8 %i.xu, -24
  br i1 %i.xv, label %bb.kd, label %bb.ki

bb.kd:                                            ; preds = %bb.kc
  %i.xw = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !28 ; 2 uses
  %i.xy = icmp ult i32 %i.xx, 4
  br i1 %i.xy, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.xz = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.ya = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %.val3104 = load i32, ptr %i.ya, align 4        ; 2 uses
  %i.yb = add i32 %.val3104, %i.vo                ; 2 uses
  %i.yc = add i32 %i.yb, 128
  %i.yd = load i32, ptr %i.xz, align 4, !tbaa !26 ; 3 uses
  %.not2748 = icmp ult i32 %i.yc, %i.yd
  br i1 %.not2748, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ye = add i32 %i.yb, 132                      ; 2 uses
  %i.yf = add i32 %i.yd, %i.xx
  %.not2749 = icmp ule i32 %i.ye, %i.yf
  %i.yg = icmp ugt i32 %i.ye, %i.yd
  %or.cond3318 = and i1 %.not2749, %i.yg
  br i1 %or.cond3318, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kd, %bb.kf, %bb.ke
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.134) #13
  call void @free(ptr noundef nonnull %i.xg) #13
  br label %.thread3170

bb.kh:                                            ; preds = %bb.kf
  %i.yh = load i32, ptr %i.em, align 4, !tbaa !26
  %.neg = add nuw nsw i32 %i.vo, 128
  %.neg2750 = add i32 %.neg, %.val3104
  %i.yi = sub i32 %.neg2750, %i.yh
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kc, %bb.kh
  %.02288 = phi i32 [ %i.yi, %bb.kh ], [ 0, %bb.kc ]
  %i.yj = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2751 = icmp eq ptr %i.yj, null
  br i1 %.not2751, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xg, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.kk:                                            ; preds = %bb.ki
  %i.yk = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.yj, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.yl = icmp slt i32 %i.yk, 0
  br i1 %i.yl, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, ptr noundef nonnull %i.yj) #13
  call void @free(ptr noundef nonnull %i.yj) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xg, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.km:                                            ; preds = %bb.kk
  %i.ym = load i32, ptr %i.h, align 4, !tbaa !7
  %i.yn = load i32, ptr %i.vv, align 4, !tbaa !16
  %i.yo = load i32, ptr %i.em, align 4, !tbaa !26
  %i.yp = call i32 @unmew11(i32 noundef %i.ve, ptr noundef nonnull %i.xg, i32 noundef %i.wg, i32 noundef %i.wj, i32 noundef %i.ym, i32 noundef %i.yn, i32 noundef %i.yo, i32 noundef %.02288, ptr noundef null, ptr noundef null, i32 noundef %i.yk) #13
  %cond15 = icmp eq i32 %i.yp, 1
  br i1 %cond15, label %bb.kn, label %bb.kx

bb.kn:                                            ; preds = %bb.km
  %i.yq = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2752 = icmp eq i8 %i.yq, 0
  br i1 %.not2752, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.136, ptr noundef nonnull %i.yj) #13
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137) #13
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xg, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.yr = call i32 @fsync(i32 noundef %i.yk) #13  ; 0 uses
  %i.ys = call i64 @lseek(i32 noundef %i.yk, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.yt = call i32 @cli_magic_scandesc(i32 noundef %i.yk, ptr noundef nonnull %1) #13
  %i.yu = icmp eq i32 %i.yt, 1
  %i.yv = call i32 @close(i32 noundef %i.yk) #13  ; 0 uses
  %i.yw = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2754 = icmp eq i8 %i.yw, 0                 ; 2 uses
  br i1 %i.yu, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %bb.kq
  br i1 %.not2754, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.yx = call i32 @unlink(ptr noundef nonnull %i.yj) #13 ; 0 uses
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  call void @free(ptr noundef nonnull %i.yj) #13
  br label %.critedge3020

bb.ku:                                            ; preds = %bb.kq
  br i1 %.not2754, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.yy = call i32 @unlink(ptr noundef nonnull %i.yj) #13 ; 0 uses
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  call void @free(ptr noundef nonnull %i.yj) #13
  br label %.critedge3020

bb.kx:                                            ; preds = %bb.km
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139) #13
  %i.yz = call i32 @close(i32 noundef %i.yk) #13  ; 0 uses
  %i.za = call i32 @unlink(ptr noundef nonnull %i.yj) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.xg, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.yj) #13
  br label %.thread3170

.thread3170:                                      ; preds = %bb.jd, %.preheader3346, %.critedge81, %bb.jf, %bb.kx, %bb.kg, %bb.jz, %bb.jm, %bb.jj, %bb.je
  %i.zb = phi i1 [ true, %bb.jf ], [ true, %bb.je ], [ true, %bb.jj ], [ true, %bb.jm ], [ true, %bb.jz ], [ true, %bb.kg ], [ true, %bb.kx ], [ false, %.critedge81 ], [ false, %.preheader3346 ], [ false, %bb.jd ] ; 2 uses
  %.724143172 = phi i32 [ %i.ve, %bb.jf ], [ %i.ve, %bb.je ], [ %i.ve, %bb.jj ], [ %i.ve, %bb.jm ], [ %i.ve, %bb.jz ], [ %i.ve, %bb.kg ], [ %i.ve, %bb.kx ], [ %.52412, %.critedge81 ], [ 0, %.preheader3346 ], [ %i.ut, %bb.jd ] ; 10 uses
  %i.zc = icmp ult i32 %i.lg, 168
  br i1 %i.zc, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %.thread3170
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.kz:                                            ; preds = %.thread3170
  %i.zd = icmp ne i32 %.12349, 0                  ; 4 uses
  %or.cond99 = select i1 %i.zb, i1 true, i1 %i.zd
  br i1 %or.cond99, label %bb.la, label %.critedge137

bb.la:                                            ; preds = %bb.kz
  %i.ze = icmp eq i16 %i.aj, 3
  %or.cond102 = and i1 %i.ze, %i.zd
  br i1 %or.cond102, label %bb.lb, label %bb.le

bb.lb:                                            ; preds = %bb.la
  %i.zf = load i8, ptr %i.f, align 16, !tbaa !16
  %i.zg = icmp eq i8 %i.zf, -66
  br i1 %i.zg, label %bb.lc, label %.critedge137

bb.lc:                                            ; preds = %bb.lb
  %i.zh = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3100 = load i32, ptr %i.zh, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !16
  %i.zk = sub i32 %.val3100, %i.zj
  %i.zl = icmp ugt i32 %i.zk, %.02378.lcssa       ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.zn = load i8, ptr %i.zm, align 1             ; 2 uses
  %i.zo = icmp eq i8 %i.zn, -83
  %or.cond106 = select i1 %i.zl, i1 %i.zo, i1 false
  %i.zp = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.zq = load i8, ptr %i.zp, align 2             ; 2 uses
  %i.zr = icmp eq i8 %i.zq, 80
  %or.cond110 = select i1 %or.cond106, i1 %i.zr, i1 false
  br i1 %or.cond110, label %bb.lk, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.zs = icmp eq i8 %i.zn, -1
  %or.cond114 = select i1 %i.zl, i1 %i.zs, i1 false
  %i.zt = icmp eq i8 %i.zq, 54
  %or.cond118 = select i1 %or.cond114, i1 %i.zt, i1 false
  br i1 %or.cond118, label %bb.lk, label %.critedge137

bb.le:                                            ; preds = %bb.la
  %i.zu = icmp eq i32 %.12349, 0
  %i.zv = icmp eq i16 %i.aj, 2
  %or.cond121 = and i1 %i.zv, %i.zu
  br i1 %or.cond121, label %bb.lf, label %.critedge137

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
  %i.aah = icmp ult i32 %i.aag, %.02378.lcssa
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
  %i.abf = load i32, ptr %i.zi, align 4, !tbaa !16
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
  br i1 %i.zd, label %bb.lu, label %bb.lv

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
  br i1 %i.zd, label %bb.mc, label %bb.md

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
end_hunk_2
begin_hunk_3_@cli_scanpe:bb.a
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
  %or.cond3323 = select i1 %i.ahj, i1 %.not2783, i1 false
  br i1 %or.cond3323, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.nx:                                            ; preds = %bb.nv
  %i.ahl = icmp ult i32 %i.agt, 16
  %.not2784 = icmp ult i32 %i.ahh, %i.agm
  %or.cond3039 = select i1 %i.ahl, i1 true, i1 %.not2784
  br i1 %or.cond3039, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ahm = add i32 %i.ahh, 16                     ; 2 uses
  %.not2785 = icmp ule i32 %i.ahm, %i.agw
  %i.ahn = icmp ugt i32 %i.ahm, %i.agm
  %or.cond3040 = and i1 %.not2785, %i.ahn
  br i1 %or.cond3040, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.162) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %bb.ot

bb.oa:                                            ; preds = %bb.ny
  %reass.sub = sub i32 %i.ahh, %i.agm
  %i.aho = add i32 %reass.sub, 12
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.ahp
  %.val3089 = load i32, ptr %i.ahq, align 1
  %i.ahr = sub i32 %.val3089, %i.agr              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163, i32 noundef %i.ahr) #13
  %i.ahs = load i32, ptr %i.h, align 4, !tbaa !7
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = call ptr @cli_calloc(i64 noundef %i.aht, i64 noundef 1) #13 ; 7 uses
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.agh) #13
  br label %.critedge3020

bb.oc:                                            ; preds = %bb.oa
  %i.ahw = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2786 = icmp eq ptr %i.ahw, null
  br i1 %.not2786, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agh, ptr noundef nonnull %i.ahu, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.oe:                                            ; preds = %bb.oc
  %i.ahx = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.ahw, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.ahy = icmp slt i32 %i.ahx, 0
  br i1 %i.ahy, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.ahw) #13
  call void @free(ptr noundef nonnull %i.ahw) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agh, ptr noundef nonnull %i.ahu, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.og:                                            ; preds = %bb.oe
  %i.ahz = load i32, ptr %i.afe, align 4, !tbaa !26 ; 2 uses
  %i.aia = sub i32 %i.ahf, %i.ahz
  %i.aib = zext i32 %i.aia to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.aib
  %i.aid = sub i32 %i.afg, %i.ahf
  %i.aie = add i32 %i.aid, %i.ahz
  %i.aif = load i32, ptr %i.h, align 4, !tbaa !7
  %i.aig = load i32, ptr %i.afx, align 4, !tbaa !16
  %i.aih = call i32 @unfsg_200(ptr noundef nonnull %i.aic, ptr noundef nonnull %i.ahu, i32 noundef %i.aie, i32 noundef %i.aif, i32 noundef %i.ahd, i32 noundef %i.aig, i32 noundef %i.ahr, i32 noundef %i.ahx) #13
  switch i32 %i.aih, label %bb.os [
    i32 1, label %bb.oh
    i32 0, label %bb.or
  ]

bb.oh:                                            ; preds = %bb.og
  %i.aii = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2787 = icmp eq i8 %i.aii, 0
  br i1 %.not2787, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, ptr noundef nonnull %i.ahw) #13
  br label %bb.ok

bb.oj:                                            ; preds = %bb.oh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #13
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agh, ptr noundef nonnull %i.ahu, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aij = call i32 @fsync(i32 noundef %i.ahx) #13 ; 0 uses
  %i.aik = call i64 @lseek(i32 noundef %i.ahx, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.ail = call i32 @cli_magic_scandesc(i32 noundef %i.ahx, ptr noundef nonnull %1) #13
  %i.aim = icmp eq i32 %i.ail, 1
  %i.ain = call i32 @close(i32 noundef %i.ahx) #13 ; 0 uses
  %i.aio = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2789 = icmp eq i8 %i.aio, 0                ; 2 uses
  br i1 %i.aim, label %bb.ol, label %bb.oo

bb.ol:                                            ; preds = %bb.ok
  br i1 %.not2789, label %bb.om, label %bb.on

bb.om:                                            ; preds = %bb.ol
  %i.aip = call i32 @unlink(ptr noundef nonnull %i.ahw) #13 ; 0 uses
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  call void @free(ptr noundef nonnull %i.ahw) #13
  br label %.critedge3020

bb.oo:                                            ; preds = %bb.ok
  br i1 %.not2789, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.aiq = call i32 @unlink(ptr noundef nonnull %i.ahw) #13 ; 0 uses
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  call void @free(ptr noundef nonnull %i.ahw) #13
  br label %.critedge3020

bb.or:                                            ; preds = %bb.og
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.167) #13
  %i.air = call i32 @close(i32 noundef %i.ahx) #13 ; 0 uses
  %i.ais = call i32 @unlink(ptr noundef nonnull %i.ahw) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.ahw) #13
  br label %.thread3279

bb.os:                                            ; preds = %bb.og
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.168) #13
  %i.ait = call i32 @close(i32 noundef %i.ahx) #13 ; 0 uses
  %i.aiu = call i32 @unlink(ptr noundef nonnull %i.ahw) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agh, ptr noundef nonnull %i.ahu, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.ahw) #13
  br label %bb.ot

bb.ot:                                            ; preds = %bb.mv, %bb.nq, %bb.ng, %bb.nn, %bb.os, %bb.nu, %bb.nw, %bb.nz, %bb.ns
  %i.aiv = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !71
  %i.aix = and i32 %i.aiw, 64
  %i.aiy = icmp ne i32 %i.aix, 0
  %i.aiz = load i8, ptr %i.f, align 16
  %i.aja = icmp eq i8 %i.aiz, -66
  %or.cond153 = select i1 %i.aiy, i1 %i.aja, i1 false
  br i1 %or.cond153, label %bb.ou, label %bb.qu

bb.ou:                                            ; preds = %bb.ot
  %.val3088 = load i32, ptr %i.aez, align 1
  %i.ajb = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 9 uses
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !16
  %i.ajd = sub i32 %.val3088, %i.ajc              ; 4 uses
  %i.aje = icmp ult i32 %i.ajd, %.02378.lcssa
  br i1 %i.aje, label %bb.ov, label %bb.qu

bb.ov:                                            ; preds = %bb.ou
  %i.ajf = add i32 %.724143172, 1
  %i.ajg = zext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.ajg ; 5 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 12 ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !30 ; 8 uses
  %i.ajk = zext i32 %.724143172 to i64
  %i.ajl = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.ajk ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4 ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !28 ; 4 uses
  store i32 %i.ajn, ptr %i.h, align 4, !tbaa !7
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !89 ; 2 uses
  %.not2792 = icmp eq ptr %i.ajp, null
  br i1 %.not2792, label %bb.pa, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !91 ; 3 uses
  %.not2793 = icmp eq i64 %i.ajr, 0
  br i1 %.not2793, label %bb.pa, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.ajs = call i32 @llvm.umax.i32(i32 %i.ajn, i32 %i.ajj) ; 2 uses
  %i.ajt = zext i32 %i.ajs to i64
  %i.aju = icmp ult i64 %i.ajr, %i.ajt
  br i1 %i.aju, label %bb.oy, label %bb.pa

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.ajs, i64 noundef %i.ajr) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ajv = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.ajw = and i32 %i.ajv, 256
  %.not2814 = icmp eq i32 %i.ajw, 0
  br i1 %.not2814, label %.critedge3020, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.ajx = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.153, ptr %i.ajx, align 8, !tbaa !64
  br label %.critedge3020

bb.pa:                                            ; preds = %bb.ox, %bb.ow, %bb.ov
  %i.ajy = icmp ugt i32 %i.ajj, 25
  %.not2794 = icmp ugt i32 %i.ajn, %i.ajj
  %or.cond3041 = select i1 %i.ajy, i1 %.not2794, i1 false
  br i1 %or.cond3041, label %cli_rawaddr.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.154, i32 noundef %i.ajj, i32 noundef %i.ajn) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

cli_rawaddr.exit:                                 ; preds = %bb.pa
  %i.ajz = icmp uge i32 %i.ajd, %6
  %i.aka = zext i32 %i.ajd to i64
  %.not36.i = icmp ule i64 %i.ej, %i.aka
  %narrow3325 = select i1 %i.ajz, i1 true, i1 %.not36.i ; 3 uses
  %.sink.i = zext i1 %narrow3325 to i32
  %.030.i = select i1 %narrow3325, i32 0, i32 %i.ajd ; 3 uses
  store i32 %.sink.i, ptr %i.g, align 4, !tbaa !7
  %i.akb = icmp eq i32 %.030.i, 0
  %or.cond157 = and i1 %i.akb, %narrow3325
  br i1 %or.cond157, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %cli_rawaddr.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.169) #13
  br label %bb.qu

bb.pd:                                            ; preds = %cli_rawaddr.exit
  %i.akc = zext i32 %.030.i to i64
  %i.akd = call i64 @lseek(i32 noundef %0, i64 noundef %i.akc, i32 noundef 0) #13 ; 0 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !29
  %i.akg = sub i32 %i.akf, %.030.i                ; 7 uses
  %i.akh = load ptr, ptr %i.ajo, align 8, !tbaa !89 ; 2 uses
  %.not2795 = icmp eq ptr %i.akh, null
  br i1 %.not2795, label %._crit_edge3611, label %bb.pe

._crit_edge3611:                                  ; preds = %bb.pd
  %.pre3623 = zext i32 %i.akg to i64
  br label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 24
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !91 ; 3 uses
  %.not2796 = icmp ne i64 %i.akj, 0
  %i.akk = zext i32 %i.akg to i64                 ; 2 uses
  %i.akl = icmp ult i64 %i.akj, %i.akk
  %or.cond3043 = select i1 %.not2796, i1 %i.akl, i1 false
  br i1 %or.cond3043, label %bb.pf, label %bb.ph

bb.pf:                                            ; preds = %bb.pe
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.akg, i64 noundef %i.akj) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.akm = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.akn = and i32 %i.akm, 256
  %.not2813 = icmp eq i32 %i.akn, 0
  br i1 %.not2813, label %.critedge3020, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.ako = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.153, ptr %i.ako, align 8, !tbaa !64
  br label %.critedge3020

bb.ph:                                            ; preds = %._crit_edge3611, %bb.pe
  %.pre-phi3624 = phi i64 [ %.pre3623, %._crit_edge3611 ], [ %i.akk, %bb.pe ]
  %i.akp = call ptr @cli_malloc(i64 noundef %.pre-phi3624) #13 ; 14 uses
  %i.akq = icmp eq ptr %i.akp, null
  br i1 %i.akq, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.pj:                                            ; preds = %bb.ph
  %i.akr = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.akp, i32 noundef %i.akg) #13
  %.not2797 = icmp eq i32 %i.akr, %i.akg
  br i1 %.not2797, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %i.akg) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.akp) #13
  br label %.critedge3020

bb.pl:                                            ; preds = %bb.pj
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akp, i64 4
  %.val3086 = load i32, ptr %i.aks, align 1
  %i.akt = load i32, ptr %i.ajb, align 4, !tbaa !16 ; 2 uses
  %i.aku = sub i32 %.val3086, %i.akt              ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akp, i64 8 ; 5 uses
  %.val3085 = load i32, ptr %i.akv, align 1
  %i.akw = sub i32 %.val3085, %i.akt              ; 4 uses
  %i.akx = load i32, ptr %i.ajh, align 4, !tbaa !26 ; 2 uses
  %i.aky = icmp ult i32 %i.akw, %i.akx
  br i1 %i.aky, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.akz = sub nuw i32 %i.akw, %i.akx
  %i.ala = load i32, ptr %i.aji, align 4, !tbaa !30
  %.not2798 = icmp ult i32 %i.akz, %i.ala
  br i1 %.not2798, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  call void @free(ptr noundef nonnull %i.akp) #13
  br label %bb.qu

bb.po:                                            ; preds = %bb.pm
  %i.alb = load i32, ptr %i.ajl, align 4, !tbaa !26 ; 2 uses
  %.not2799 = icmp eq i32 %i.aku, %i.alb
  br i1 %.not2799, label %.preheader3344, label %bb.pp

.preheader3344:                                   ; preds = %bb.po
  %i.alc = add i32 %i.akg, -4                     ; 2 uses
  %i.ald = icmp ugt i32 %i.alc, 12
  br i1 %i.ald, label %.lr.ph3444, label %.loopexit

bb.pp:                                            ; preds = %bb.po
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.171, i32 noundef %i.aku, i32 noundef %i.alb) #13
  call void @free(ptr noundef nonnull %i.akp) #13
  br label %bb.qu

.lr.ph3444:                                       ; preds = %.preheader3344, %bb.pu
  %i.ale = phi i32 [ %i.all, %bb.pu ], [ %i.aku, %.preheader3344 ]
  %.022803443 = phi i32 [ %i.alp, %bb.pu ], [ 12, %.preheader3344 ] ; 2 uses
  %.022823442 = phi i32 [ %i.alj, %bb.pu ], [ 0, %.preheader3344 ] ; 2 uses
  %i.alf = zext i32 %.022803443 to i64            ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.alf
  %.val3084 = load i32, ptr %i.alg, align 1       ; 2 uses
  %.not2800 = icmp eq i32 %.val3084, 0
  br i1 %.not2800, label %.loopexit3345.thread, label %bb.pq

bb.pq:                                            ; preds = %.lr.ph3444
  %i.alh = load i32, ptr %i.ajb, align 4, !tbaa !16
  %.neg2801 = xor i32 %i.alh, -1
  %i.ali = add i32 %.val3084, %.neg2801           ; 3 uses
  %i.alj = add nuw nsw i32 %.022823442, 1         ; 4 uses
  %i.alk = and i32 %i.ali, 4095
  %.not2802 = icmp eq i32 %i.alk, 0
  br i1 %.not2802, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.172, i32 noundef %i.alj) #13
  %.pre3604 = load i32, ptr %i.ajl, align 4, !tbaa !26
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  %i.all = phi i32 [ %.pre3604, %bb.pr ], [ %i.ale, %bb.pq ] ; 3 uses
  %i.alm = icmp ult i32 %i.ali, %i.all
  br i1 %i.alm, label %.loopexit3345, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.aln = sub nuw i32 %i.ali, %i.all
  %i.alo = load i32, ptr %i.ajm, align 4, !tbaa !28
  %.not2803 = icmp ult i32 %i.aln, %i.alo
  br i1 %.not2803, label %bb.pu, label %.loopexit3345

bb.pu:                                            ; preds = %bb.pt
  %i.alp = add i32 %.022803443, 4                 ; 2 uses
  %i.alq = icmp ult i32 %i.alp, %i.alc
  br i1 %i.alq, label %.lr.ph3444, label %.loopexit, !llvm.loop !38

.loopexit3345:                                    ; preds = %bb.ps, %bb.pt
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.alf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.173, i32 noundef %i.alj) #13
  %.val3083.pre = load i32, ptr %i.alr, align 1
  %i.als = icmp eq i32 %.val3083.pre, 0
  br i1 %i.als, label %.loopexit3345.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.pu, %.preheader3344, %.loopexit3345
  call void @free(ptr noundef nonnull %i.akp) #13
  br label %bb.qu

.loopexit3345.thread:                             ; preds = %.lr.ph3444, %.loopexit3345
  %.12283.ph3837 = phi i32 [ %i.alj, %.loopexit3345 ], [ %.022823442, %.lr.ph3444 ] ; 3 uses
  %i.alt = add i32 %.12283.ph3837, 1              ; 4 uses
  %i.alu = sext i32 %i.alt to i64
  %i.alv = mul nsw i64 %i.alu, 36
  %i.alw = call ptr @cli_malloc(i64 noundef %i.alv) #13 ; 20 uses
  %i.alx = icmp eq ptr %i.alw, null
  br i1 %i.alx, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %.loopexit3345.thread
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.akp) #13
  br label %.critedge3020

bb.pw:                                            ; preds = %.loopexit3345.thread
  store i32 %i.aku, ptr %i.alw, align 4, !tbaa !26
  %.not28063445 = icmp eq i32 %.12283.ph3837, 0
  br i1 %.not28063445, label %._crit_edge3449, label %.lr.ph3448.preheader

.lr.ph3448.preheader:                             ; preds = %bb.pw
  %umax.a = call i32 @llvm.umax.i32(i32 %i.alt, i32 2)
  %wide.trip.count3561 = zext i32 %umax.a to i64  ; 6 uses
  %i.aly = add nsw i64 %wide.trip.count3561, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.alt, 21
  br i1 %min.iters.check, label %.lr.ph3448.preheader3955, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3448.preheader
  %i.alz = zext i32 %i.alt to i64
  %i.ama = call i64 @llvm.usub.sat.i64(i64 %i.alz, i64 2) ; 2 uses
  %i.amb = and i64 %i.ama, 1073741823
  %i.amc = icmp eq i64 %i.amb, 1073741823
  %i.amd = icmp samesign ugt i64 %i.ama, 1073741823
  %i.ame = or i1 %i.amc, %i.amd
  br i1 %i.ame, label %.lr.ph3448.preheader3955, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.alw, i64 36 ; 2 uses
  %i.amf = mul nuw nsw i64 %wide.trip.count3561, 36
  %i.amg = getelementptr i8, ptr %i.alw, i64 %i.amf
  %scevgep3946 = getelementptr i8, ptr %i.amg, i64 -32 ; 2 uses
end_hunk_3
begin_hunk_4_@cli_scanpe:bb.a
  %i.anj = add i32 %.val3082.prol, %i.ani
  %i.ank = getelementptr inbounds nuw [36 x i8], ptr %i.alw, i64 %indvars.iv3558.ph
  store i32 %i.anj, ptr %i.ank, align 4, !tbaa !26
  %indvars.iv.next3559.prol = add nuw nsw i64 %indvars.iv3558.ph, 1
  br label %.lr.ph3448.prol.loopexit

.lr.ph3448.prol.loopexit:                         ; preds = %.lr.ph3448.prol, %.lr.ph3448.preheader3955
  %indvars.iv3558.unr = phi i64 [ %indvars.iv3558.ph, %.lr.ph3448.preheader3955 ], [ %indvars.iv.next3559.prol, %.lr.ph3448.prol ]
  %i.anl = add nsw i64 %wide.trip.count3561, -1
  %i.anm = icmp eq i64 %indvars.iv3558.ph, %i.anl
  br i1 %i.anm, label %._crit_edge3449, label %.lr.ph3448

.lr.ph3448:                                       ; preds = %.lr.ph3448.prol.loopexit, %.lr.ph3448
  %indvars.iv3558 = phi i64 [ %indvars.iv.next3559.1, %.lr.ph3448 ], [ %indvars.iv3558.unr, %.lr.ph3448.prol.loopexit ] ; 4 uses
  %i.ann = shl i64 %indvars.iv3558, 2
  %i.ano = and i64 %i.ann, 4294967292
  %i.anp = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.ano
  %.val3082 = load i32, ptr %i.anp, align 1
  %i.anq = load i32, ptr %i.ajb, align 4, !tbaa !16
  %i.anr = xor i32 %i.anq, -1
  %i.ans = add i32 %.val3082, %i.anr
  %i.ant = getelementptr inbounds nuw [36 x i8], ptr %i.alw, i64 %indvars.iv3558
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !26
  %indvars.iv.next3559 = add nuw nsw i64 %indvars.iv3558, 1 ; 2 uses
  %i.anu = shl i64 %indvars.iv.next3559, 2
  %i.anv = and i64 %i.anu, 4294967292
  %i.anw = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.anv
  %.val3082.1 = load i32, ptr %i.anw, align 1
  %i.anx = load i32, ptr %i.ajb, align 4, !tbaa !16
  %i.any = xor i32 %i.anx, -1
  %i.anz = add i32 %.val3082.1, %i.any
  %i.aoa = getelementptr inbounds nuw [36 x i8], ptr %i.alw, i64 %indvars.iv.next3559
  store i32 %i.anz, ptr %i.aoa, align 4, !tbaa !26
  %indvars.iv.next3559.1 = add nuw nsw i64 %indvars.iv3558, 2 ; 2 uses
  %exitcond3562.1 = icmp eq i64 %indvars.iv.next3559.1, %wide.trip.count3561
  br i1 %exitcond3562.1, label %._crit_edge3449, label %.lr.ph3448, !llvm.loop !44

._crit_edge3449:                                  ; preds = %.lr.ph3448.prol.loopexit, %.lr.ph3448, %middle.block, %bb.pw
  call void @free(ptr noundef nonnull %i.akp) #13
  %i.aob = zext i32 %i.ajj to i64
  %i.aoc = call ptr @cli_malloc(i64 noundef %i.aob) #13 ; 10 uses
  %i.aod = icmp eq ptr %i.aoc, null
  br i1 %i.aod, label %bb.px, label %bb.py

bb.px:                                            ; preds = %._crit_edge3449
  call void @free(ptr noundef %i.em) #13
  call void @free(ptr noundef nonnull %i.alw) #13
  br label %.critedge3020

bb.py:                                            ; preds = %._crit_edge3449
  %i.aoe = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.ajh)
  %.not2807 = icmp eq i64 %i.aoe, 0
  br i1 %.not2807, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.aof = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.aoc, i32 noundef %i.ajj) #13
  %.not2808 = icmp eq i32 %i.aof, %i.ajj
  br i1 %.not2808, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.156, i32 noundef %.724143172) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.alw) #13
  call void @free(ptr noundef nonnull %i.aoc) #13
  br label %.critedge3020

bb.qb:                                            ; preds = %bb.pz
  %i.aog = load i32, ptr %i.h, align 4, !tbaa !7
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = call ptr @cli_calloc(i64 noundef %i.aoh, i64 noundef 1) #13 ; 7 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.aoc) #13
  call void @free(ptr noundef nonnull %i.alw) #13
  br label %.critedge3020

bb.qd:                                            ; preds = %bb.qb
  %i.aok = add i32 %i.cj, 167
  %i.aol = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %.val3081 = load i32, ptr %i.aol, align 1
  %i.aom = add i32 %i.aok, %.val3081              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.163, i32 noundef %i.aom) #13
  %i.aon = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2809 = icmp eq ptr %i.aon, null
  br i1 %.not2809, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.aoi, ptr noundef nonnull %i.alw, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qf:                                            ; preds = %bb.qd
  %i.aoo = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aon, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.aop = icmp slt i32 %i.aoo, 0
  br i1 %i.aop, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.aon) #13
  call void @free(ptr noundef nonnull %i.aon) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.aoi, ptr noundef nonnull %i.alw, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.qh:                                            ; preds = %bb.qf
  %i.aoq = zext i32 %i.akw to i64
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %i.aoq
  %i.aos = load i32, ptr %i.ajh, align 4, !tbaa !26 ; 2 uses
  %i.aot = zext i32 %i.aos to i64
  %i.aou = sub nsw i64 0, %i.aot
  %i.aov = getelementptr inbounds i8, ptr %i.aor, i64 %i.aou
  %i.aow = sub i32 %i.ajj, %i.akw
  %i.aox = add i32 %i.aow, %i.aos
  %i.aoy = load i32, ptr %i.h, align 4, !tbaa !7
  %i.aoz = load i32, ptr %i.ajb, align 4, !tbaa !16
  %i.apa = call i32 @unfsg_133(ptr noundef nonnull %i.aov, ptr noundef nonnull %i.aoi, i32 noundef %i.aox, i32 noundef %i.aoy, ptr noundef nonnull %i.alw, i32 noundef %.12283.ph3837, i32 noundef %i.aoz, i32 noundef %i.aom, i32 noundef %i.aoo) #13
  switch i32 %i.apa, label %bb.qt [
    i32 1, label %bb.qi
    i32 0, label %bb.qs
  ]

bb.qi:                                            ; preds = %bb.qh
  %i.apb = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2810 = icmp eq i8 %i.apb, 0
  br i1 %.not2810, label %bb.qk, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, ptr noundef nonnull %i.aon) #13
  br label %bb.ql

bb.qk:                                            ; preds = %bb.qi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #13
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.aoi, ptr noundef nonnull %i.alw, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.apc = call i32 @fsync(i32 noundef %i.aoo) #13 ; 0 uses
  %i.apd = call i64 @lseek(i32 noundef %i.aoo, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.ape = call i32 @cli_magic_scandesc(i32 noundef %i.aoo, ptr noundef %1) #13
  %i.apf = icmp eq i32 %i.ape, 1
  %i.apg = call i32 @close(i32 noundef %i.aoo) #13 ; 0 uses
  %i.aph = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2812 = icmp eq i8 %i.aph, 0                ; 2 uses
  br i1 %i.apf, label %bb.qm, label %bb.qp

bb.qm:                                            ; preds = %bb.ql
  br i1 %.not2812, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.api = call i32 @unlink(ptr noundef nonnull %i.aon) #13 ; 0 uses
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qn, %bb.qm
  call void @free(ptr noundef nonnull %i.aon) #13
  br label %.critedge3020

bb.qp:                                            ; preds = %bb.ql
  br i1 %.not2812, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  %i.apj = call i32 @unlink(ptr noundef nonnull %i.aon) #13 ; 0 uses
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.qp
  call void @free(ptr noundef nonnull %i.aon) #13
  br label %.critedge3020

bb.qs:                                            ; preds = %bb.qh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.167) #13
  %i.apk = call i32 @close(i32 noundef %i.aoo) #13 ; 0 uses
  %i.apl = call i32 @unlink(ptr noundef nonnull %i.aon) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.aon) #13
  call void @free(ptr noundef nonnull %i.alw) #13
  br label %.thread3279

bb.qt:                                            ; preds = %bb.qh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.168) #13
  %i.apm = call i32 @close(i32 noundef %i.aoo) #13 ; 0 uses
  %i.apn = call i32 @unlink(ptr noundef nonnull %i.aon) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.aoc, ptr noundef nonnull %i.aoi, ptr noundef nonnull %i.alw, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.aon) #13
  br label %bb.qu

bb.qu:                                            ; preds = %bb.ou, %bb.ot, %bb.qt, %bb.pn, %bb.pc, %bb.pp, %.loopexit
  %i.apo = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !71
  %i.apq = and i32 %i.app, 64
  %i.apr = icmp ne i32 %i.apq, 0
  %i.aps = load i8, ptr %i.f, align 16
  %i.apt = icmp eq i8 %i.aps, -69
  %or.cond161 = select i1 %i.apr, i1 %i.apt, i1 false
  br i1 %or.cond161, label %bb.qv, label %bb.tc

bb.qv:                                            ; preds = %bb.qu
  %.val3080 = load i32, ptr %i.aez, align 1
  %i.apu = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !16 ; 3 uses
  %i.apw = sub i32 %.val3080, %i.apv              ; 5 uses
  %i.apx = icmp ult i32 %i.apw, %.02378.lcssa
  %i.apy = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.apz = load i8, ptr %i.apy, align 1
  %i.aqa = icmp eq i8 %i.apz, -65
  %or.cond165 = select i1 %i.apx, i1 %i.aqa, i1 false
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.aqc = load i8, ptr %i.aqb, align 2
  %i.aqd = icmp eq i8 %i.aqc, -66
  %or.cond169 = select i1 %or.cond165, i1 %i.aqd, i1 false
  br i1 %or.cond169, label %bb.qw, label %bb.tc

bb.qw:                                            ; preds = %bb.qv
  %i.aqe = add i32 %.724143172, 1
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.aqf ; 6 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !26 ; 3 uses
  %.not2816 = icmp ult i32 %i.cj, %i.aqh
  br i1 %.not2816, label %bb.tc, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.aqi = sub nuw i32 %i.cj, %i.aqh              ; 2 uses
  %i.aqj = add i32 %i.aqh, -224
  %i.aqk = icmp ugt i32 %i.aqi, %i.aqj
  br i1 %i.aqk, label %cli_rawaddr.exit3124, label %bb.tc

cli_rawaddr.exit3124:                             ; preds = %bb.qx
  %i.aql = icmp uge i32 %i.apw, %6
  %i.aqm = zext i32 %i.apw to i64
  %.not36.i3121 = icmp ule i64 %i.ej, %i.aqm
  %narrow3326 = select i1 %i.aql, i1 true, i1 %.not36.i3121 ; 2 uses
  %.sink.i3119 = zext i1 %narrow3326 to i32
  store i32 %.sink.i3119, ptr %i.g, align 4, !tbaa !7
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %.val3078 = load i32, ptr %i.aqn, align 1
  %i.aqo = sub i32 %.val3078, %i.apv              ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val3077 = load i32, ptr %i.aqp, align 2
  %i.aqq = sub i32 %.val3077, %i.apv              ; 3 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqg, i64 12
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !30 ; 8 uses
  %i.aqt = zext i32 %.724143172 to i64
  %i.aqu = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.aqt ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4 ; 2 uses
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !28 ; 4 uses
  store i32 %i.aqw, ptr %i.h, align 4, !tbaa !7
  br i1 %narrow3326, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %cli_rawaddr.exit3124
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.169) #13
  br label %bb.tc

bb.qz:                                            ; preds = %cli_rawaddr.exit3124
  %i.aqx = load i32, ptr %i.aqg, align 4, !tbaa !26 ; 2 uses
  %i.aqy = icmp ult i32 %i.aqo, %i.aqx
  br i1 %i.aqy, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.aqz = sub nuw i32 %i.aqo, %i.aqx
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8 ; 2 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !29
  %.not2818 = icmp ult i32 %i.aqz, %i.arb
  br i1 %.not2818, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.161) #13
  br label %bb.tc

bb.rc:                                            ; preds = %bb.ra
  %i.arc = load i32, ptr %i.aqu, align 4, !tbaa !26 ; 2 uses
  %.not2819 = icmp eq i32 %i.aqq, %i.arc
  br i1 %.not2819, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.171, i32 noundef %i.aqq, i32 noundef %i.arc) #13
  br label %bb.tc

bb.re:                                            ; preds = %bb.rc
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !89 ; 2 uses
  %.not2820 = icmp eq ptr %i.are, null
  br i1 %.not2820, label %bb.rj, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 24
  %i.arg = load i64, ptr %i.arf, align 8, !tbaa !91 ; 3 uses
  %.not2821 = icmp eq i64 %i.arg, 0
  br i1 %.not2821, label %bb.rj, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.arh = call i32 @llvm.umax.i32(i32 %i.aqw, i32 %i.aqs) ; 2 uses
  %i.ari = zext i32 %i.arh to i64
  %i.arj = icmp ult i64 %i.arg, %i.ari
  br i1 %i.arj, label %bb.rh, label %bb.rj

bb.rh:                                            ; preds = %bb.rg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.arh, i64 noundef %i.arg) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ark = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.arl = and i32 %i.ark, 256
  %.not2837 = icmp eq i32 %i.arl, 0
  br i1 %.not2837, label %.critedge3020, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.arm = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.153, ptr %i.arm, align 8, !tbaa !64
  br label %.critedge3020

bb.rj:                                            ; preds = %bb.rg, %bb.rf, %bb.re
  %i.arn = icmp ugt i32 %i.aqs, 25
  %.not2822 = icmp ugt i32 %i.aqw, %i.aqs
  %or.cond3044 = select i1 %i.arn, i1 %.not2822, i1 false
  br i1 %or.cond3044, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.154, i32 noundef %i.aqs, i32 noundef %i.aqw) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.rl:                                            ; preds = %bb.rj
  %i.aro = zext i32 %i.apw to i64
  %i.arp = call i64 @lseek(i32 noundef %0, i64 noundef %i.aro, i32 noundef 0) #13 ; 0 uses
  %i.arq = load i32, ptr %i.ara, align 4, !tbaa !29
  %i.arr = sub i32 %i.arq, %i.apw                 ; 8 uses
  %i.ars = load ptr, ptr %i.ard, align 8, !tbaa !89 ; 2 uses
  %.not2823 = icmp eq ptr %i.ars, null
  br i1 %.not2823, label %._crit_edge3612, label %bb.rm

._crit_edge3612:                                  ; preds = %bb.rl
  %.pre3621 = zext i32 %i.arr to i64
  br label %bb.rp

bb.rm:                                            ; preds = %bb.rl
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 24
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91 ; 3 uses
  %.not2824 = icmp ne i64 %i.aru, 0
  %i.arv = zext i32 %i.arr to i64                 ; 2 uses
  %i.arw = icmp ult i64 %i.aru, %i.arv
  %or.cond3046 = select i1 %.not2824, i1 %i.arw, i1 false
  br i1 %or.cond3046, label %bb.rn, label %bb.rp

bb.rn:                                            ; preds = %bb.rm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.152, i32 noundef %i.arr, i64 noundef %i.aru) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.arx = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.ary = and i32 %i.arx, 256
  %.not2836 = icmp eq i32 %i.ary, 0
  br i1 %.not2836, label %.critedge3020, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.arz = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.153, ptr %i.arz, align 8, !tbaa !64
  br label %.critedge3020

bb.rp:                                            ; preds = %._crit_edge3612, %bb.rm
  %.pre-phi3622 = phi i64 [ %.pre3621, %._crit_edge3612 ], [ %i.arv, %bb.rm ]
  %i.asa = call ptr @cli_malloc(i64 noundef %.pre-phi3622) #13 ; 11 uses
  %i.asb = icmp eq ptr %i.asa, null
  br i1 %i.asb, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %bb.rp
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.rr:                                            ; preds = %bb.rp
  %i.asc = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.asa, i32 noundef %i.arr) #13
  %.not2825 = icmp eq i32 %i.asc, %i.arr
  br i1 %.not2825, label %.preheader3343, label %bb.rs

.preheader3343:                                   ; preds = %bb.rr
  %i.asd = add i32 %i.arr, -2                     ; 2 uses
  %.not3493 = icmp eq i32 %i.asd, 0
  br i1 %.not3493, label %.thread3234, label %.lr.ph3452

.lr.ph3452:                                       ; preds = %.preheader3343
  %i.ase = load i32, ptr %i.apu, align 4
  %invariant.op = sub i32 -8192, %i.ase
  br label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.170, i32 noundef %i.arr) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.asa) #13
  br label %.critedge3020

bb.rt:                                            ; preds = %.lr.ph3452, %bb.rx
  %.022763451 = phi i32 [ 0, %.lr.ph3452 ], [ %i.asx, %bb.rx ] ; 5 uses
  %.022783450 = phi i32 [ 0, %.lr.ph3452 ], [ %i.ass, %bb.rx ] ; 2 uses
  %i.asf = zext i32 %.022763451 to i64
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.asf
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !16
  %i.asi = sext i8 %i.ash to i32
  %i.asj = or disjoint i32 %.022763451, 1
  %i.ask = zext i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.ask
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !16
  %i.asn = sext i8 %i.asm to i32
  %i.aso = shl nsw i32 %i.asn, 8
  %i.asp = or i32 %i.aso, %i.asi                  ; 2 uses
  %i.asq = add nsw i32 %i.asp, -1
  %or.cond173 = icmp ult i32 %i.asq, 2
  br i1 %or.cond173, label %.thread3234, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.asr = shl nsw i32 %i.asp, 12
  %.reass.reass.reass = add i32 %i.asr, %invariant.op ; 2 uses
  %i.ass = add nuw nsw i32 %.022783450, 1         ; 4 uses
  %i.ast = load i32, ptr %i.aqu, align 4, !tbaa !26 ; 2 uses
  %i.asu = icmp ult i32 %.reass.reass.reass, %i.ast
  br i1 %i.asu, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.asv = sub nuw i32 %.reass.reass.reass, %i.ast
  %i.asw = load i32, ptr %i.aqv, align 4, !tbaa !28
  %.not2826 = icmp ult i32 %i.asv, %i.asw
  br i1 %.not2826, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.173, i32 noundef %i.ass) #13
  br label %.thread3234

bb.rx:                                            ; preds = %bb.rv
  %i.asx = add i32 %.022763451, 2                 ; 3 uses
  %i.asy = icmp ult i32 %i.asx, %i.asd
  br i1 %i.asy, label %bb.rt, label %.thread3234, !llvm.loop !45

.thread3234:                                      ; preds = %bb.rx, %bb.rt, %.preheader3343, %bb.rw
  %.022763352 = phi i32 [ %.022763451, %bb.rw ], [ 0, %.preheader3343 ], [ %i.asx, %bb.rx ], [ %.022763451, %bb.rt ] ; 2 uses
end_hunk_4
begin_hunk_5_@cli_scanpe:bb.a
  %i.azb = phi i1 [ %i.ayp, %.split ], [ %.ph3258, %bb.uf ]
  %i.azc = load i32, ptr %i.awe, align 4, !tbaa !26
  %i.azd = load i32, ptr %i.awa, align 4, !tbaa !26
  %i.aze = call i32 @upx_inflate2d(ptr noundef nonnull %i.awy, i32 noundef %i.awc, ptr noundef nonnull %i.axd, ptr noundef nonnull %i.h, i32 noundef %i.azc, i32 noundef %i.azd, i32 noundef %i.cj) #13
  %i.azf = icmp eq i32 %i.aze, -1
  br i1 %i.azf, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  %i.azg = getelementptr inbounds nuw i8, ptr %i.awy, i64 21
  %i.azh = add nsw i32 %i.awc, -21
  %i.azi = load i32, ptr %i.awe, align 4, !tbaa !26
  %i.azj = load i32, ptr %i.awa, align 4, !tbaa !26
  %i.azk = add i32 %i.cj, -21
  %i.azl = call i32 @upx_inflate2d(ptr noundef nonnull %i.azg, i32 noundef %i.azh, ptr noundef nonnull %i.axd, ptr noundef nonnull %i.h, i32 noundef %i.azi, i32 noundef %i.azj, i32 noundef %i.azk) #13
  %i.azm = icmp eq i32 %i.azl, -1
  br i1 %i.azm, label %.split3840, label %bb.ui

.split3840:                                       ; preds = %bb.uh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.190) #13
  br i1 %i.azb, label %bb.uk, label %bb.uo

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.191) #13
  br label %.thread3279

bb.uj:                                            ; preds = %.split, %bb.uf
  %i.azn = phi i1 [ %i.ayp, %.split ], [ %.ph3258, %bb.uf ]
  br i1 %i.azn, label %bb.uk, label %bb.uo

bb.uk:                                            ; preds = %.split3840, %bb.uj
  %i.azo = load i32, ptr %i.awe, align 4, !tbaa !26
  %i.azp = load i32, ptr %i.awa, align 4, !tbaa !26
  %i.azq = call i32 @upx_inflate2e(ptr noundef nonnull %i.awy, i32 noundef %i.awc, ptr noundef nonnull %i.axd, ptr noundef nonnull %i.h, i32 noundef %i.azo, i32 noundef %i.azp, i32 noundef %i.cj) #13
  %i.azr = icmp eq i32 %i.azq, -1
  br i1 %i.azr, label %bb.ul, label %bb.un

bb.ul:                                            ; preds = %bb.uk
  %i.azs = getelementptr inbounds nuw i8, ptr %i.awy, i64 21
  %i.azt = add nsw i32 %i.awc, -21
  %i.azu = load i32, ptr %i.awe, align 4, !tbaa !26
  %i.azv = load i32, ptr %i.awa, align 4, !tbaa !26
  %i.azw = add i32 %i.cj, -21
  %i.azx = call i32 @upx_inflate2e(ptr noundef nonnull %i.azs, i32 noundef %i.azt, ptr noundef nonnull %i.axd, ptr noundef nonnull %i.h, i32 noundef %i.azu, i32 noundef %i.azv, i32 noundef %i.azw) #13
  %i.azy = icmp eq i32 %i.azx, -1
  br i1 %i.azy, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.192) #13
  br label %bb.uo

bb.un:                                            ; preds = %bb.ul, %bb.uk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.193) #13
  br label %.thread3279

bb.uo:                                            ; preds = %.split3840, %bb.um, %bb.uj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.194) #13
  call void @free(ptr noundef nonnull %i.awy) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  br label %.critedge171

.thread3279:                                      ; preds = %.thread3268, %bb.ue, %bb.ui, %bb.qs, %bb.ta, %bb.or, %bb.un
  %.102369.ph = phi ptr [ %i.awy, %bb.un ], [ %i.aoc, %bb.qs ], [ %i.agh, %bb.or ], [ %i.aua, %bb.ta ], [ %i.awy, %bb.ui ], [ %i.awy, %bb.ue ], [ %i.awy, %.thread3268 ]
  %.82358.ph = phi ptr [ %i.axd, %bb.un ], [ %i.aoi, %bb.qs ], [ %i.ahu, %bb.or ], [ %i.aug, %bb.ta ], [ %i.axd, %bb.ui ], [ %i.axd, %bb.ue ], [ %i.axd, %.thread3268 ] ; 5 uses
  call void @free(ptr noundef nonnull %.102369.ph) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.azz = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2943 = icmp eq ptr %i.azz, null
  br i1 %.not2943, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %.thread3279
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.uq:                                            ; preds = %.thread3279
  %i.baa = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.azz, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bab = icmp slt i32 %i.baa, 0
  br i1 %i.bab, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.azz) #13
  call void @free(ptr noundef nonnull %i.azz) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.us:                                            ; preds = %bb.uq
  %i.bac = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bad = zext i32 %i.bac to i64
  %i.bae = call i64 @write(i32 noundef %i.baa, ptr noundef nonnull %.82358.ph, i64 noundef %i.bad) #13
  %i.baf = trunc i64 %i.bae to i32
  %i.bag = load i32, ptr %i.h, align 4, !tbaa !7  ; 2 uses
  %.not2944 = icmp eq i32 %i.bag, %i.baf
  br i1 %.not2944, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.196, i32 noundef %i.bag) #13
  call void @free(ptr noundef nonnull %i.azz) #13
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.bah = call i32 @close(i32 noundef %i.baa) #13 ; 0 uses
  br label %.critedge3020

bb.uu:                                            ; preds = %bb.us
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.bai = call i32 @fsync(i32 noundef %i.baa) #13 ; 0 uses
  %i.baj = call i64 @lseek(i32 noundef %i.baa, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bak = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2945 = icmp eq i8 %i.bak, 0
  br i1 %.not2945, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.azz) #13
  br label %bb.uw

bb.uw:                                            ; preds = %bb.uv, %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #13
  %i.bal = call i32 @cli_magic_scandesc(i32 noundef %i.baa, ptr noundef %1) #13 ; 2 uses
  %i.bam = icmp eq i32 %i.bal, 1
  %i.ban = call i32 @close(i32 noundef %i.baa) #13 ; 0 uses
  %i.bao = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2947 = icmp eq i8 %i.bao, 0                ; 2 uses
  br i1 %i.bam, label %bb.ux, label %bb.va

bb.ux:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.bap = call i32 @unlink(ptr noundef nonnull %i.azz) #13 ; 0 uses
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  call void @free(ptr noundef nonnull %i.azz) #13
  br label %.critedge3020

bb.va:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.baq = call i32 @unlink(ptr noundef nonnull %i.azz) #13 ; 0 uses
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  call void @free(ptr noundef nonnull %i.azz) #13
  br label %.critedge3020

.critedge171:                                     ; preds = %bb.tc, %bb.uo, %.critedge137
  %i.bar = icmp ult i32 %i.lg, 200
  br i1 %i.bar, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %.critedge171
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.ve:                                            ; preds = %.critedge171
  %i.bas = load i8, ptr %i.f, align 16, !tbaa !16
  %.not2854 = icmp eq i8 %i.bas, -72
  br i1 %.not2854, label %bb.vf, label %.critedge3049

bb.vf:                                            ; preds = %bb.ve
  %i.bat = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3073 = load i32, ptr %i.bat, align 1       ; 2 uses
  %i.bau = getelementptr [36 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  %i.bav = getelementptr i8, ptr %i.bau, i64 -36
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !26
  %i.bax = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !16 ; 2 uses
  %i.baz = add i32 %i.bay, %i.baw
  %.not2855 = icmp eq i32 %.val3073, %i.baz
  br i1 %.not2855, label %bb.vi, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bba = icmp ult i16 %i.aj, 2
  br i1 %i.bba, label %.thread3844, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bbb = getelementptr i8, ptr %i.bau, i64 -72
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !26
  %i.bbd = add i32 %i.bay, %i.bbc
  %.not2856 = icmp eq i32 %.val3073, %i.bbd
  br i1 %.not2856, label %bb.vi, label %.critedge3049

bb.vi:                                            ; preds = %bb.vh, %bb.vf
  %.neg2862 = phi i32 [ 0, %bb.vf ], [ -1, %bb.vh ]
  %.102406 = phi i32 [ 2, %bb.vf ], [ 1, %bb.vh ] ; 2 uses
  %i.bbe = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !71
  %i.bbg = and i32 %i.bbf, 256
  %.not2858 = icmp eq i32 %i.bbg, 0
  br i1 %.not2858, label %.critedge3049, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199, i32 noundef %.102406) #13
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.val3071 = load i32, ptr %i.bbh, align 16
  %i.bbi = icmp eq i32 %.val3071, 373069965
  br i1 %i.bbi, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #13
  br label %.critedge3049

bb.vl:                                            ; preds = %bb.vj
  %i.bbj = sub i32 %.02376.lcssa, %.02378.lcssa   ; 5 uses
  store i32 %i.bbj, ptr %i.h, align 4, !tbaa !7
  %i.bbk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !89 ; 2 uses
  %.not2859 = icmp eq ptr %i.bbl, null
  br i1 %.not2859, label %._crit_edge3613, label %bb.vm

._crit_edge3613:                                  ; preds = %bb.vl
  %.pre3619 = zext i32 %i.bbj to i64
  br label %bb.vp

bb.vm:                                            ; preds = %bb.vl
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 24
  %i.bbn = load i64, ptr %i.bbm, align 8, !tbaa !91 ; 3 uses
  %.not2860 = icmp ne i64 %i.bbn, 0
  %i.bbo = zext i32 %i.bbj to i64                 ; 2 uses
  %i.bbp = icmp ult i64 %i.bbn, %i.bbo
  %or.cond3051 = select i1 %.not2860, i1 %i.bbp, i1 false
  br i1 %or.cond3051, label %bb.vn, label %bb.vp

bb.vn:                                            ; preds = %bb.vm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.201, i32 noundef %i.bbj, i64 noundef %i.bbn) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bbq = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bbr = and i32 %i.bbq, 256
  %.not2869 = icmp eq i32 %i.bbr, 0
  br i1 %.not2869, label %.critedge3020, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.bbs = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.202, ptr %i.bbs, align 8, !tbaa !64
  br label %.critedge3020

bb.vp:                                            ; preds = %._crit_edge3613, %bb.vm
  %.pre-phi3620 = phi i64 [ %.pre3619, %._crit_edge3613 ], [ %i.bbo, %bb.vm ]
  %i.bbt = call ptr @cli_calloc(i64 noundef %.pre-phi3620, i64 noundef 1) #13 ; 8 uses
  %i.bbu = icmp eq ptr %i.bbt, null
  br i1 %i.bbu, label %bb.vq, label %.preheader3342

.preheader3342:                                   ; preds = %bb.vp
  br i1 %.not3488, label %._crit_edge3461, label %.lr.ph3460

.lr.ph3460:                                       ; preds = %.preheader3342
  %i.bbv = zext i32 %.02378.lcssa to i64
  %i.bbw = sub nsw i64 0, %i.bbv
  %invariant.gep = getelementptr i8, ptr %i.bbt, i64 %i.bbw
  %wide.trip.count3572 = zext nneg i16 %i.aj to i64
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vp
  %i.bbx = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.203, i32 noundef %i.bbx) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.vr:                                            ; preds = %.lr.ph3460, %bb.vv
  %indvars.iv3569 = phi i64 [ 0, %.lr.ph3460 ], [ %indvars.iv.next3570, %bb.vv ] ; 2 uses
  %i.bby = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3569 ; 4 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 8
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !29
  %.not2866 = icmp eq i32 %i.bca, 0
  br i1 %.not2866, label %bb.vv, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.bcb = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bby)
  %.not2867 = icmp eq i64 %i.bcb, 0
  br i1 %.not2867, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.bcc = load i32, ptr %i.bby, align 4, !tbaa !26
  %i.bcd = zext i32 %i.bcc to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bcd
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bby, i64 32 ; 2 uses
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !77
  %i.bcg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep, i32 noundef %i.bcf) #13
  %i.bch = load i32, ptr %i.bce, align 4, !tbaa !77
  %.not2868 = icmp eq i32 %i.bcg, %i.bch
  br i1 %.not2868, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %bb.vs
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef %i.bbt) #13
  br label %.critedge3020

bb.vv:                                            ; preds = %bb.vr, %bb.vt
  %indvars.iv.next3570 = add nuw nsw i64 %indvars.iv3569, 1 ; 2 uses
  %exitcond3573.not = icmp eq i64 %indvars.iv.next3570, %wide.trip.count3572
  br i1 %exitcond3573.not, label %._crit_edge3461, label %bb.vr, !llvm.loop !47

._crit_edge3461:                                  ; preds = %bb.vv, %.preheader3342
  %i.bci = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2861 = icmp eq ptr %i.bci, null
  br i1 %.not2861, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %._crit_edge3461
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbt, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.vx:                                            ; preds = %._crit_edge3461
  %i.bcj = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bci, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bck = icmp slt i32 %i.bcj, 0
  br i1 %i.bck, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.204, ptr noundef nonnull %i.bci) #13
  call void @free(ptr noundef nonnull %i.bci) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbt, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.vz:                                            ; preds = %bb.vx
  %i.bcl = add nsw i32 %.neg2862, %i.ak
  %i.bcm = load i32, ptr %i.bax, align 4, !tbaa !16
  %i.bcn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bco = load i32, ptr %i.bcn, align 8, !tbaa !16
  %i.bcp = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !16
  %i.bcr = call i32 @petite_inflate2x_1to9(ptr noundef nonnull %i.bbt, i32 noundef %.02378.lcssa, i32 noundef %i.bbj, ptr noundef nonnull %i.em, i32 noundef %i.bcl, i32 noundef %i.bcm, i32 noundef %i.cj, i32 noundef %i.bcj, i32 noundef %.102406, i32 noundef %i.bco, i32 noundef %i.bcq) #13
  %cond7 = icmp eq i32 %i.bcr, 0
  br i1 %cond7, label %bb.wa, label %bb.wk

bb.wa:                                            ; preds = %bb.vz
  %i.bcs = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2863 = icmp eq i8 %i.bcs, 0
  br i1 %.not2863, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.205, ptr noundef nonnull %i.bci) #13
  br label %bb.wd

bb.wc:                                            ; preds = %bb.wa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.206) #13
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbt, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bct = call i32 @fsync(i32 noundef %i.bcj) #13 ; 0 uses
  %i.bcu = call i64 @lseek(i32 noundef %i.bcj, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bcv = call i32 @cli_magic_scandesc(i32 noundef %i.bcj, ptr noundef %1) #13
  %i.bcw = icmp eq i32 %i.bcv, 1
  %i.bcx = call i32 @close(i32 noundef %i.bcj) #13 ; 0 uses
  %i.bcy = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2865 = icmp eq i8 %i.bcy, 0                ; 2 uses
  br i1 %i.bcw, label %bb.we, label %bb.wh

bb.we:                                            ; preds = %bb.wd
  br i1 %.not2865, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %bb.we
  %i.bcz = call i32 @unlink(ptr noundef nonnull %i.bci) #13 ; 0 uses
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %bb.we
  call void @free(ptr noundef nonnull %i.bci) #13
  br label %.critedge3020

bb.wh:                                            ; preds = %bb.wd
  br i1 %.not2865, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.bda = call i32 @unlink(ptr noundef nonnull %i.bci) #13 ; 0 uses
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  call void @free(ptr noundef nonnull %i.bci) #13
  br label %.critedge3020

bb.wk:                                            ; preds = %bb.vz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.207) #13
  %i.bdb = call i32 @close(i32 noundef %i.bcj) #13 ; 0 uses
  %i.bdc = call i32 @unlink(ptr noundef nonnull %i.bci) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbt, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bci) #13
  br label %.critedge3049

.critedge3049:                                    ; preds = %bb.ve, %bb.vh, %bb.vk, %bb.wk, %bb.vi
  %i.bdd = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !71
  %i.bdf = and i32 %i.bde, 512
  %i.bdg = icmp ne i32 %i.bdf, 0
  %i.bdh = icmp ugt i16 %i.aj, 1                  ; 3 uses
  %or.cond192 = and i1 %i.bdh, %i.bdg
  br i1 %or.cond192, label %bb.wl, label %bb.xo

bb.wl:                                            ; preds = %.critedge3049
  %i.bdi = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bdj = zext nneg i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bdj ; 2 uses
  %i.bdl = load i32, ptr %i.bdk, align 4, !tbaa !26 ; 2 uses
  %.not2870 = icmp ult i32 %i.cj, %i.bdl
  br i1 %.not2870, label %bb.xo, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdk, i64 12
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !30
  %i.bdo = add i32 %i.bdl, -12827
  %i.bdp = add i32 %i.bdo, %i.bdn
  %i.bdq = icmp ult i32 %i.cj, %i.bdp
  br i1 %i.bdq, label %bb.wn, label %bb.xo

bb.wn:                                            ; preds = %bb.wm
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.bds = load i64, ptr %i.bdr, align 1
  %i.bdt = xor i64 %i.bds, 2602107516829565160
  %i.bdu = getelementptr i8, ptr %i.bdr, i64 8
  %i.bdv = load i16, ptr %i.bdu, align 1
  %i.bdw = zext i16 %i.bdv to i64
  %i.bdx = xor i64 %i.bdw, 50051
  %i.bdy = or i64 %i.bdt, %i.bdx
  %i.bdz = icmp ne i64 %i.bdy, 0
  %i.bea = zext i1 %i.bdz to i32
  %i.beb = icmp eq i32 %i.bea, 0
  br i1 %i.beb, label %bb.wo, label %bb.xo

bb.wo:                                            ; preds = %bb.wn
  %i.bec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !89 ; 2 uses
  %.not2871 = icmp eq ptr %i.bed, null
  br i1 %.not2871, label %bb.ws, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 24
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !91 ; 3 uses
  %.not2872 = icmp ne i64 %i.bef, 0
  %i.beg = icmp ugt i64 %i.ej, %i.bef
  %or.cond3052 = select i1 %.not2872, i1 %i.beg, i1 false
  br i1 %or.cond3052, label %bb.wq, label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.209, i64 noundef %i.ej, i64 noundef %i.bef) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.beh = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bei = and i32 %i.beh, 256
  %.not2879 = icmp eq i32 %i.bei, 0
  br i1 %.not2879, label %.critedge3020, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.bej = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.210, ptr %i.bej, align 8, !tbaa !64
  br label %.critedge3020

bb.ws:                                            ; preds = %bb.wp, %bb.wo
  %i.bek = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 9 uses
  %i.bel = icmp eq ptr %i.bek, null
  br i1 %i.bel, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %bb.ws
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.wu:                                            ; preds = %bb.ws
  %i.bem = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.ben = trunc i64 %i.ej to i32                 ; 2 uses
  %i.beo = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bek, i32 noundef %i.ben) #13
  %i.bep = sext i32 %i.beo to i64
  %.not2873 = icmp eq i64 %i.ej, %i.bep
  br i1 %.not2873, label %bb.ww, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.211, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bek) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ww:                                            ; preds = %bb.wu
  %i.beq = call ptr @cli_gentemp(ptr noundef null) #13 ; 13 uses
  %.not2874 = icmp eq ptr %i.beq, null
  br i1 %.not2874, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bek, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.wy:                                            ; preds = %bb.ww
  %i.ber = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.beq, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.bes = icmp slt i32 %i.ber, 0
  br i1 %i.bes, label %bb.wz, label %bb.xa

bb.wz:                                            ; preds = %bb.wy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.212, ptr noundef nonnull %i.beq) #13
  call void @free(ptr noundef nonnull %i.beq) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bek, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.xa:                                            ; preds = %bb.wy
  %i.bet = call i32 @unspin(ptr noundef nonnull %i.bek, i32 noundef %i.ben, ptr noundef nonnull %i.em, i32 noundef %i.bdi, i32 noundef %i.cj, i32 noundef %i.ber, ptr noundef nonnull %1) #13
  switch i32 %i.bet, label %bb.xn [
    i32 0, label %bb.xb
    i32 2, label %bb.xl
  ]

bb.xb:                                            ; preds = %bb.xa
  %i.beu = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2876 = icmp eq i8 %i.beu, 0
  br i1 %.not2876, label %bb.xd, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.213, ptr noundef nonnull %i.beq) #13
  br label %bb.xe

bb.xd:                                            ; preds = %bb.xb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.214) #13
  br label %bb.xe

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bek, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bev = call i32 @fsync(i32 noundef %i.ber) #13 ; 0 uses
  %i.bew = call i64 @lseek(i32 noundef %i.ber, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bex = call i32 @cli_magic_scandesc(i32 noundef %i.ber, ptr noundef nonnull %1) #13
  %i.bey = icmp eq i32 %i.bex, 1
  %i.bez = call i32 @close(i32 noundef %i.ber) #13 ; 0 uses
  %i.bfa = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2878 = icmp eq i8 %i.bfa, 0                ; 2 uses
  br i1 %i.bey, label %bb.xf, label %bb.xi
end_hunk_5
begin_hunk_6_@cli_scanpe:bb.a
bb.xi:                                            ; preds = %bb.xe
  br i1 %.not2878, label %bb.xj, label %bb.xk

bb.xj:                                            ; preds = %bb.xi
  %i.bfc = call i32 @unlink(ptr noundef nonnull %i.beq) #13 ; 0 uses
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi
  call void @free(ptr noundef nonnull %i.beq) #13
  br label %.critedge3020

bb.xl:                                            ; preds = %bb.xa
  call void @free(ptr noundef nonnull %i.bek) #13
  %i.bfd = call i32 @close(i32 noundef %i.ber) #13 ; 0 uses
  %i.bfe = call i32 @unlink(ptr noundef nonnull %i.beq) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.215) #13
  %i.bff = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bfg = and i32 %i.bff, 256
  %.not2875 = icmp eq i32 %i.bfg, 0
  call void @free(ptr noundef nonnull %i.beq) #13
  br i1 %.not2875, label %bb.xo, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bfh = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.216, ptr %i.bfh, align 8, !tbaa !64
  br label %.critedge3020

bb.xn:                                            ; preds = %bb.xa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.217) #13
  %i.bfi = call i32 @close(i32 noundef %i.ber) #13 ; 0 uses
  %i.bfj = call i32 @unlink(ptr noundef nonnull %i.beq) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bek, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.beq) #13
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xl, %bb.xn, %bb.wn, %bb.wm, %bb.wl, %.critedge3049
  %i.bfk = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.bfl = load i32, ptr %i.bfk, align 4, !tbaa !71 ; 5 uses
  %i.bfm = and i32 %i.bfl, 1024
  %i.bfn = icmp ne i32 %i.bfm, 0
  %or.cond195 = and i1 %i.bdh, %i.bfn
  br i1 %or.cond195, label %bb.xp, label %bb.ym

bb.xp:                                            ; preds = %bb.xo
  %i.bfo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bfp = load i32, ptr %i.bfo, align 8, !tbaa !16
  %i.bfq = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bfr = zext nneg i32 %i.bfq to i64
  %i.bfs = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bfr ; 2 uses
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !26
  %i.bfu = add i32 %i.bft, 96
  %i.bfv = icmp eq i32 %i.bfp, %i.bfu
  br i1 %i.bfv, label %bb.xq, label %bb.ym

bb.xq:                                            ; preds = %bb.xp
  %bcmp2880 = call i32 @bcmp(ptr noundef nonnull dereferenceable(51) %i.f, ptr noundef nonnull dereferenceable(51) @.str.218, i64 51)
  %i.bfw = icmp eq i32 %bcmp2880, 0
  br i1 %i.bfw, label %bb.xr, label %bb.ym

bb.xr:                                            ; preds = %bb.xq
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfs, i64 8
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !29
  %i.bfz = add i32 %i.bfy, 3165
  %i.bga = zext i32 %i.bfz to i64
  %.not2881 = icmp ult i64 %i.ej, %i.bga
  br i1 %.not2881, label %bb.ym, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.bgb = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 8 uses
  %i.bgc = icmp eq ptr %i.bgb, null
  br i1 %i.bgc, label %bb.xt, label %bb.xu

bb.xt:                                            ; preds = %bb.xs
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xu:                                            ; preds = %bb.xs
  %i.bgd = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bge = trunc i64 %i.ej to i32                 ; 2 uses
  %i.bgf = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bgb, i32 noundef %i.bge) #13
  %i.bgg = sext i32 %i.bgf to i64
  %.not2882 = icmp eq i64 %i.ej, %i.bgg
  br i1 %.not2882, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.219, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bgb) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xw:                                            ; preds = %bb.xu
  %i.bgh = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2883 = icmp eq ptr %i.bgh, null
  br i1 %.not2883, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgb, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.xy:                                            ; preds = %bb.xw
  %i.bgi = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bgh, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bgj = icmp slt i32 %i.bgi, 0
  br i1 %i.bgj, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.bgh) #13
  call void @free(ptr noundef nonnull %i.bgh) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgb, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.ya:                                            ; preds = %bb.xy
  %i.bgk = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bgl = call i32 @yc_decrypt(ptr noundef nonnull %i.bgb, i32 noundef %i.bge, ptr noundef nonnull %i.em, i32 noundef %i.bfq, i32 noundef %i.bgk, i32 noundef %i.bgi) #13
  %cond5 = icmp eq i32 %i.bgl, 0
  br i1 %cond5, label %bb.yb, label %bb.yl

bb.yb:                                            ; preds = %bb.ya
  %i.bgm = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2884 = icmp eq i8 %i.bgm, 0
  br i1 %.not2884, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.bgh) #13
  br label %bb.ye

bb.yd:                                            ; preds = %bb.yb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.222) #13
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgb, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bgn = call i32 @fsync(i32 noundef %i.bgi) #13 ; 0 uses
  %i.bgo = call i64 @lseek(i32 noundef %i.bgi, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bgp = call i32 @cli_magic_scandesc(i32 noundef %i.bgi, ptr noundef nonnull %1) #13
  %i.bgq = icmp eq i32 %i.bgp, 1
  %i.bgr = call i32 @close(i32 noundef %i.bgi) #13 ; 0 uses
  %i.bgs = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2886 = icmp eq i8 %i.bgs, 0                ; 2 uses
  br i1 %i.bgq, label %bb.yf, label %bb.yi

bb.yf:                                            ; preds = %bb.ye
  br i1 %.not2886, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.bgt = call i32 @unlink(ptr noundef nonnull %i.bgh) #13 ; 0 uses
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  call void @free(ptr noundef nonnull %i.bgh) #13
  br label %.critedge3020

bb.yi:                                            ; preds = %bb.ye
  br i1 %.not2886, label %bb.yj, label %bb.yk

bb.yj:                                            ; preds = %bb.yi
  %i.bgu = call i32 @unlink(ptr noundef nonnull %i.bgh) #13 ; 0 uses
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yi
  call void @free(ptr noundef nonnull %i.bgh) #13
  br label %.critedge3020

bb.yl:                                            ; preds = %bb.ya
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.223) #13
  %i.bgv = call i32 @close(i32 noundef %i.bgi) #13 ; 0 uses
  %i.bgw = call i32 @unlink(ptr noundef nonnull %i.bgh) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bgb, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bgh) #13
  %.pre3606 = load ptr, ptr %i.uo, align 8, !tbaa !69
  %.pre3607 = load i32, ptr %.pre3606, align 4, !tbaa !71
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.xr, %bb.xq, %bb.xp, %bb.xo
  %i.bgx = phi i32 [ %.pre3607, %bb.yl ], [ %i.bfl, %bb.xr ], [ %i.bfl, %bb.xq ], [ %i.bfl, %bb.xp ], [ %i.bfl, %bb.xo ]
  %i.bgy = and i32 %i.bgx, 2048
  %i.bgz = icmp ne i32 %i.bgy, 0
  %or.cond198 = and i1 %i.bdh, %i.bgz
  br i1 %or.cond198, label %bb.yn, label %.thread3844

bb.yn:                                            ; preds = %bb.ym
  %i.bha = add nsw i32 %i.ak, -1                  ; 3 uses
  %i.bhb = zext i32 %i.bha to i64                 ; 4 uses
  %i.bhc = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bhb ; 5 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !29 ; 4 uses
  %i.bhf = icmp ugt i32 %i.bhe, 689
  br i1 %i.bhf, label %bb.yo, label %.thread3844

bb.yo:                                            ; preds = %bb.yn
  %i.bhg = load i32, ptr %i.bhc, align 4, !tbaa !26
  %i.bhh = icmp eq i32 %i.cj, %i.bhg
  br i1 %i.bhh, label %bb.yp, label %.thread3844

bb.yp:                                            ; preds = %bb.yo
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhc, i64 12 ; 5 uses
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !30 ; 2 uses
  %i.bhk = add i32 %i.bhj, %i.cj
  %i.bhl = icmp eq i32 %i.bhk, %.02376.lcssa
  br i1 %i.bhl, label %bb.yq, label %.thread3844

bb.yq:                                            ; preds = %bb.yp
  %i.bhm = load i32, ptr %i.f, align 16
  %i.bhn = xor i32 %i.bhm, -393521837
  %i.bho = getelementptr i8, ptr %i.f, i64 3
  %i.bhp = load i32, ptr %i.bho, align 1
  %i.bhq = xor i32 %i.bhp, -337955864
  %i.bhr = or i32 %i.bhn, %i.bhq
  %i.bhs = icmp ne i32 %i.bhr, 0
  %i.bht = zext i1 %i.bhs to i32
  %i.bhu = icmp eq i32 %i.bht, 0
  br i1 %i.bhu, label %bb.yr, label %.thread3844

bb.yr:                                            ; preds = %bb.yq
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bhw = load i128, ptr %i.bhv, align 1
  %i.bhx = xor i128 %i.bhw, 107382933364910958583781871253727477992
  %i.bhy = getelementptr i8, ptr %i.bhv, i64 3
  %i.bhz = load i128, ptr %i.bhy, align 1
  %i.bia = xor i128 %i.bhz, 106755414664042775544543906123602198528
  %i.bib = or i128 %i.bhx, %i.bia
  %i.bic = icmp ne i128 %i.bib, 0
  %i.bid = zext i1 %i.bic to i32
  %i.bie = icmp eq i32 %i.bid, 0
  br i1 %i.bie, label %.preheader3341, label %.thread3844

.preheader3341:                                   ; preds = %bb.yr
  %.not3497 = icmp eq i32 %i.bha, 0               ; 2 uses
  br i1 %.not3497, label %._crit_edge3465, label %.lr.ph3464.preheader

.lr.ph3464.preheader:                             ; preds = %.preheader3341
  %xtraiter3981 = and i64 %i.bhb, 3               ; 3 uses
  %i.bif = icmp ult i16 %i.aj, 5
  br i1 %i.bif, label %.lr.ph3464.epil.preheader, label %.lr.ph3464.preheader.new

.lr.ph3464.preheader.new:                         ; preds = %.lr.ph3464.preheader
  %unroll_iter = and i64 %i.bhb, 4294967292
  br label %.lr.ph3464

.lr.ph3464:                                       ; preds = %.lr.ph3464, %.lr.ph3464.preheader.new
  %indvars.iv3574 = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %indvars.iv.next3575.3, %.lr.ph3464 ] ; 5 uses
  %.022743463 = phi i32 [ %i.bhe, %.lr.ph3464.preheader.new ], [ %spec.select3053.3, %.lr.ph3464 ]
  %niter = phi i64 [ 0, %.lr.ph3464.preheader.new ], [ %niter.next.3, %.lr.ph3464 ]
  %i.big = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !29
  %spec.select3053 = call i32 @llvm.umin.i32(i32 %i.bii, i32 %.022743463)
  %i.bij = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 44
  %i.bil = load i32, ptr %i.bik, align 4, !tbaa !29
  %spec.select3053.1 = call i32 @llvm.umin.i32(i32 %i.bil, i32 %spec.select3053)
  %i.bim = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 80
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !29
  %spec.select3053.2 = call i32 @llvm.umin.i32(i32 %i.bio, i32 %spec.select3053.1)
  %i.bip = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 116
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !29
  %spec.select3053.3 = call i32 @llvm.umin.i32(i32 %i.bir, i32 %spec.select3053.2) ; 3 uses
  %indvars.iv.next3575.3 = add nuw nsw i64 %indvars.iv3574, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge3465.loopexit.unr-lcssa, label %.lr.ph3464, !llvm.loop !48

._crit_edge3465.loopexit.unr-lcssa:               ; preds = %.lr.ph3464
  %lcmp.mod3982.not = icmp eq i64 %xtraiter3981, 0
  br i1 %lcmp.mod3982.not, label %._crit_edge3465, label %.lr.ph3464.epil.preheader

.lr.ph3464.epil.preheader:                        ; preds = %._crit_edge3465.loopexit.unr-lcssa, %.lr.ph3464.preheader
  %indvars.iv3574.epil.init = phi i64 [ 0, %.lr.ph3464.preheader ], [ %indvars.iv.next3575.3, %._crit_edge3465.loopexit.unr-lcssa ]
  %.022743463.epil.init = phi i32 [ %i.bhe, %.lr.ph3464.preheader ], [ %spec.select3053.3, %._crit_edge3465.loopexit.unr-lcssa ]
  %lcmp.mod3984 = icmp ne i64 %xtraiter3981, 0
  call void @llvm.assume(i1 %lcmp.mod3984)
  br label %.lr.ph3464.epil

.lr.ph3464.epil:                                  ; preds = %.lr.ph3464.epil, %.lr.ph3464.epil.preheader
  %indvars.iv3574.epil = phi i64 [ %indvars.iv.next3575.epil, %.lr.ph3464.epil ], [ %indvars.iv3574.epil.init, %.lr.ph3464.epil.preheader ] ; 2 uses
  %.022743463.epil = phi i32 [ %spec.select3053.epil, %.lr.ph3464.epil ], [ %.022743463.epil.init, %.lr.ph3464.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph3464.epil ], [ 0, %.lr.ph3464.epil.preheader ]
  %i.bis = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3574.epil
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 8
  %i.biu = load i32, ptr %i.bit, align 4, !tbaa !29
  %spec.select3053.epil = call i32 @llvm.umin.i32(i32 %i.biu, i32 %.022743463.epil) ; 2 uses
  %indvars.iv.next3575.epil = add nuw nsw i64 %indvars.iv3574.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3981
  br i1 %epil.iter.cmp.not, label %._crit_edge3465, label %.lr.ph3464.epil, !llvm.loop !49

._crit_edge3465:                                  ; preds = %._crit_edge3465.loopexit.unr-lcssa, %.lr.ph3464.epil, %.preheader3341
  %.02274.lcssa = phi i32 [ %i.bhe, %.preheader3341 ], [ %spec.select3053.3, %._crit_edge3465.loopexit.unr-lcssa ], [ %spec.select3053.epil, %.lr.ph3464.epil ] ; 5 uses
  %i.biv = add i32 %.02378.lcssa, %i.bhj
  %i.biw = sub i32 %.02376.lcssa, %i.biv
  %i.bix = add i32 %i.biw, %.02274.lcssa          ; 4 uses
  store i32 %i.bix, ptr %i.h, align 4, !tbaa !7
  %i.biy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !89 ; 2 uses
  %.not2889 = icmp eq ptr %i.biz, null
  br i1 %.not2889, label %._crit_edge3465._crit_edge, label %bb.ys

._crit_edge3465._crit_edge:                       ; preds = %._crit_edge3465
  %.pre3615 = zext i32 %i.bix to i64
  br label %bb.yv

bb.ys:                                            ; preds = %._crit_edge3465
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 24
  %i.bjb = load i64, ptr %i.bja, align 8, !tbaa !91 ; 3 uses
  %.not2890 = icmp ne i64 %i.bjb, 0
  %i.bjc = zext i32 %i.bix to i64                 ; 2 uses
  %i.bjd = icmp ult i64 %i.bjb, %i.bjc
  %or.cond3055 = select i1 %.not2890, i1 %i.bjd, i1 false
  br i1 %or.cond3055, label %bb.yt, label %bb.yv

bb.yt:                                            ; preds = %bb.ys
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.226, i32 noundef %i.bix, i64 noundef %i.bjb) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bje = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bjf = and i32 %i.bje, 256
  %.not2903 = icmp eq i32 %i.bjf, 0
  br i1 %.not2903, label %.critedge3020, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.bjg = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.227, ptr %i.bjg, align 8, !tbaa !64
  br label %.critedge3020

bb.yv:                                            ; preds = %._crit_edge3465._crit_edge, %bb.ys
  %.pre-phi3616 = phi i64 [ %.pre3615, %._crit_edge3465._crit_edge ], [ %i.bjc, %bb.ys ]
  %i.bjh = call ptr @cli_calloc(i64 noundef %.pre-phi3616, i64 noundef 1) #13 ; 14 uses
  %i.bji = icmp eq ptr %i.bjh, null
  br i1 %i.bji, label %bb.yw, label %bb.yx

bb.yw:                                            ; preds = %bb.yv
  %i.bjj = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bjj) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.yx:                                            ; preds = %bb.yv
  %i.bjk = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bjl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bjh, i32 noundef %.02274.lcssa) #13
  %i.bjm = sext i32 %i.bjl to i64                 ; 2 uses
  %i.bjn = zext i32 %.02274.lcssa to i64
  %.not2891 = icmp eq i64 %i.bjm, %i.bjn
  br i1 %.not2891, label %.preheader3340, label %bb.yy

.preheader3340:                                   ; preds = %bb.yx
  br i1 %.not3497, label %._crit_edge3469, label %.lr.ph3468

.lr.ph3468:                                       ; preds = %.preheader3340
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjh, i64 %i.bjm
  %i.bjp = zext i32 %.02378.lcssa to i64
  %i.bjq = sub nsw i64 0, %i.bjp
  %invariant.gep3470 = getelementptr i8, ptr %i.bjo, i64 %i.bjq
  br label %bb.yz

bb.yy:                                            ; preds = %bb.yx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.229, i32 noundef %.02274.lcssa) #13
  call void @free(ptr noundef nonnull %i.bjh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.yz:                                            ; preds = %.lr.ph3468, %bb.zd
  %indvars.iv3579 = phi i64 [ 0, %.lr.ph3468 ], [ %indvars.iv.next3580, %bb.zd ] ; 2 uses
  %i.bjr = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3579 ; 3 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 12 ; 3 uses
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !30
  %.not2900 = icmp eq i32 %i.bjt, 0
  br i1 %.not2900, label %bb.zd, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.bju = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bjr)
  %.not2901 = icmp eq i64 %i.bju, 0
  br i1 %.not2901, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.bjv = load i32, ptr %i.bjr, align 4, !tbaa !26
  %i.bjw = zext i32 %i.bjv to i64
  %gep3471 = getelementptr i8, ptr %invariant.gep3470, i64 %i.bjw
  %i.bjx = load i32, ptr %i.bjs, align 4, !tbaa !30
  %i.bjy = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep3471, i32 noundef %i.bjx) #13
  %i.bjz = load i32, ptr %i.bjs, align 4, !tbaa !30
  %.not2902 = icmp eq i32 %i.bjy, %i.bjz
  br i1 %.not2902, label %bb.zd, label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  call void @free(ptr noundef %i.bjh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zd:                                            ; preds = %bb.yz, %bb.zb
  %indvars.iv.next3580 = add nuw nsw i64 %indvars.iv3579, 1 ; 2 uses
  %exitcond3583.not = icmp eq i64 %indvars.iv.next3580, %i.bhb
  br i1 %exitcond3583.not, label %._crit_edge3469, label %bb.yz, !llvm.loop !50

._crit_edge3469:                                  ; preds = %bb.zd, %.preheader3340
  %i.bka = load i32, ptr %i.bhi, align 4, !tbaa !30
  %i.bkb = zext i32 %i.bka to i64
  %i.bkc = call ptr @cli_calloc(i64 noundef %i.bkb, i64 noundef 1) #13 ; 5 uses
  %i.bkd = icmp eq ptr %i.bkc, null
  br i1 %i.bkd, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %._crit_edge3469
  %i.bke = load i32, ptr %i.bhi, align 4, !tbaa !30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bke) #13
  call void @free(ptr noundef %i.bjh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zf:                                            ; preds = %._crit_edge3469
  %i.bkf = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bhc)
  %.not2892 = icmp eq i64 %i.bkf, 0
  %.pre3608 = load i32, ptr %i.bhi, align 4, !tbaa !30 ; 2 uses
  br i1 %.not2892, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.bkg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bkc, i32 noundef %.pre3608) #13
  %i.bkh = sext i32 %i.bkg to i64
  %i.bki = load i32, ptr %i.bhi, align 4, !tbaa !30 ; 3 uses
  %i.bkj = zext i32 %i.bki to i64
  %.not2893 = icmp eq i64 %i.bkh, %i.bkj
  br i1 %.not2893, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.bkk = phi i32 [ %i.bki, %bb.zg ], [ %.pre3608, %bb.zf ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230, i32 noundef %i.bkk) #13
  call void @free(ptr noundef %i.bjh) #13
  call void @free(ptr noundef nonnull %i.bkc) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zi:                                            ; preds = %bb.zg
  %i.bkl = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bkm = load i32, ptr %i.bhc, align 4, !tbaa !26
  %i.bkn = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bko = trunc nuw nsw i32 %i.bha to i16
  %i.bkp = call i32 @wwunpack(ptr noundef nonnull %i.bjh, i32 noundef %i.bkl, i32 noundef %.02274.lcssa, i32 noundef %.02378.lcssa, i32 noundef %i.bkm, i32 noundef %i.bkn, ptr noundef nonnull %i.bkc, i32 noundef %i.bki, i16 noundef zeroext %i.bko) #13
  %.not2894 = icmp eq i32 %i.bkp, 0
  call void @free(ptr noundef nonnull %i.bkc) #13
  br i1 %.not2894, label %bb.zj, label %bb.zz

bb.zj:                                            ; preds = %bb.zi
  %i.bkq = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2895 = icmp eq ptr %i.bkq, null
  br i1 %.not2895, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %bb.zj
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bjh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zl:                                            ; preds = %bb.zj
  %i.bkr = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bkq, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.bks = icmp slt i32 %i.bkr, 0
  br i1 %i.bks, label %bb.zm, label %bb.zn

bb.zm:                                            ; preds = %bb.zl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.bkq) #13
  call void @free(ptr noundef nonnull %i.bkq) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bjh, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zn:                                            ; preds = %bb.zl
  %i.bkt = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bku = zext i32 %i.bkt to i64
  %i.bkv = call i64 @write(i32 noundef %i.bkr, ptr noundef nonnull %i.bjh, i64 noundef %i.bku) #13
  %i.bkw = trunc i64 %i.bkv to i32
  %i.bkx = load i32, ptr %i.h, align 4, !tbaa !7  ; 2 uses
  %.not2896 = icmp eq i32 %i.bkx, %i.bkw
  br i1 %.not2896, label %bb.zp, label %bb.zo

bb.zo:                                            ; preds = %bb.zn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.232, i32 noundef %i.bkx) #13
  %i.bky = call i32 @close(i32 noundef %i.bkr) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.bkq) #13
  call void @free(ptr noundef nonnull %i.bjh) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zp:                                            ; preds = %bb.zn
  call void @free(ptr noundef nonnull %i.bjh) #13
  %i.bkz = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2897 = icmp eq i8 %i.bkz, 0
  br i1 %.not2897, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.bkq) #13
  br label %bb.zs

bb.zr:                                            ; preds = %bb.zp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.234) #13
  br label %bb.zs

bb.zs:                                            ; preds = %bb.zr, %bb.zq
  %i.bla = call i32 @fsync(i32 noundef %i.bkr) #13 ; 0 uses
  %i.blb = call i64 @lseek(i32 noundef %i.bkr, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.blc = call i32 @cli_magic_scandesc(i32 noundef %i.bkr, ptr noundef %1) #13
  %i.bld = icmp eq i32 %i.blc, 1
  br i1 %i.bld, label %bb.zt, label %bb.zw

bb.zt:                                            ; preds = %bb.zs
  call void @free(ptr noundef nonnull %i.em) #13
  %i.ble = call i32 @close(i32 noundef %i.bkr) #13 ; 0 uses
  %i.blf = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2899 = icmp eq i8 %i.blf, 0
  br i1 %.not2899, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  %i.blg = call i32 @unlink(ptr noundef nonnull %i.bkq) #13 ; 0 uses
  br label %bb.zv

bb.zv:                                            ; preds = %bb.zu, %bb.zt
  call void @free(ptr noundef nonnull %i.bkq) #13
  br label %.critedge3020

bb.zw:                                            ; preds = %bb.zs
  %i.blh = call i32 @close(i32 noundef %i.bkr) #13 ; 0 uses
  %i.bli = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2898 = icmp eq i8 %i.bli, 0
  br i1 %.not2898, label %bb.zx, label %bb.zy

bb.zx:                                            ; preds = %bb.zw
  %i.blj = call i32 @unlink(ptr noundef nonnull %i.bkq) #13 ; 0 uses
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zx, %bb.zw
  call void @free(ptr noundef nonnull %i.bkq) #13
  br label %.thread3844

bb.zz:                                            ; preds = %bb.zi
  call void @free(ptr noundef nonnull %i.bjh) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.235) #13
  br label %.thread3844

.thread3844:                                      ; preds = %bb.vg, %bb.zz, %bb.zy, %bb.ym, %bb.yn, %bb.yo, %bb.yp, %bb.yq, %bb.yr
  %i.blk = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !71
  %i.blm = and i32 %i.bll, 32768
  %.not2904 = icmp ne i32 %i.blm, 0
  %i.bln = add i32 %i.kx, 1864
  %i.blo = zext i32 %i.bln to i64
  %i.blp = icmp ugt i64 %i.ej, %i.blo
  %or.cond3058 = select i1 %.not2904, i1 %i.blp, i1 false
  br i1 %or.cond3058, label %bb.aaa, label %.critedge200

bb.aaa:                                           ; preds = %.thread3844
  %lhsv = load i64, ptr %i.f, align 16
  %i.blq = icmp ne i64 %lhsv, -1447625805222647712
  %i.blr = icmp ult i32 %i.lg, 959
  %or.cond219 = select i1 %i.blq, i1 true, i1 %i.blr
  br i1 %or.cond219, label %.critedge200, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.bls = getelementptr inbounds nuw i8, ptr %i.f, i64 953 ; 2 uses
  %i.blt = load i32, ptr %i.bls, align 1
  %i.blu = xor i32 %i.blt, 104
  %i.blv = getelementptr i8, ptr %i.bls, i64 4
  %i.blw = load i16, ptr %i.blv, align 1
  %i.blx = zext i16 %i.blw to i32
  %i.bly = xor i32 %i.blx, 49920
  %i.blz = or i32 %i.blu, %i.bly
  %i.bma = icmp ne i32 %i.blz, 0                  ; 2 uses
  %i.bmb = zext i1 %i.bma to i32                  ; 0 uses
  %brmerge = or i1 %i.bma, %.not3488
  br i1 %brmerge, label %.critedge200, label %.lr.ph3473.preheader

.lr.ph3473.preheader:                             ; preds = %bb.aab
  %wide.trip.count3587 = zext nneg i16 %i.aj to i64 ; 2 uses
  %xtraiter3985 = and i64 %wide.trip.count3587, 1
  %7 = icmp eq i16 %i.aj, 1
  br i1 %7, label %.lr.ph3473.epil.preheader, label %.lr.ph3473.preheader.new

.lr.ph3473.preheader.new:                         ; preds = %.lr.ph3473.preheader
  %unroll_iter3990 = and i64 %wide.trip.count3587, 126
  br label %.lr.ph3473

.lr.ph3473:                                       ; preds = %.lr.ph3473, %.lr.ph3473.preheader.new
  %indvars.iv3584 = phi i64 [ 0, %.lr.ph3473.preheader.new ], [ %indvars.iv.next3585.1, %.lr.ph3473 ] ; 3 uses
  %i.bmc = phi i32 [ 0, %.lr.ph3473.preheader.new ], [ %spec.select3059.1, %.lr.ph3473 ]
  %niter3991 = phi i64 [ 0, %.lr.ph3473.preheader.new ], [ %niter3991.next.1, %.lr.ph3473 ]
  %i.bmd = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3584 ; 2 uses
  %i.bme = load i32, ptr %i.bmd, align 4, !tbaa !26
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bmd, i64 4
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !28
  %i.bmh = add i32 %i.bmg, %i.bme
  %.fr3500 = freeze i32 %i.bmh
  %spec.select3059 = call i32 @llvm.umax.i32(i32 %i.bmc, i32 %.fr3500)
  %i.bmi = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3584 ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 36
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !26
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmi, i64 40
  %i.bmm = load i32, ptr %i.bml, align 4, !tbaa !28
  %i.bmn = add i32 %i.bmm, %i.bmk
  %.fr3500.1 = freeze i32 %i.bmn
  %spec.select3059.1 = call i32 @llvm.umax.i32(i32 %spec.select3059, i32 %.fr3500.1) ; 3 uses
  %indvars.iv.next3585.1 = add nuw nsw i64 %indvars.iv3584, 2 ; 2 uses
  %niter3991.next.1 = add i64 %niter3991, 2       ; 2 uses
  %niter3991.ncmp.1 = icmp eq i64 %niter3991.next.1, %unroll_iter3990
  br i1 %niter3991.ncmp.1, label %._crit_edge3474.unr-lcssa, label %.lr.ph3473, !llvm.loop !51

._crit_edge3474.unr-lcssa:                        ; preds = %.lr.ph3473
  %lcmp.mod3987.not = icmp eq i64 %xtraiter3985, 0
  br i1 %lcmp.mod3987.not, label %._crit_edge3474, label %.lr.ph3473.epil.preheader

.lr.ph3473.epil.preheader:                        ; preds = %._crit_edge3474.unr-lcssa, %.lr.ph3473.preheader
  %indvars.iv3584.epil.init = phi i64 [ 0, %.lr.ph3473.preheader ], [ %indvars.iv.next3585.1, %._crit_edge3474.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph3473.preheader ], [ %spec.select3059.1, %._crit_edge3474.unr-lcssa ]
  %lcmp.mod3989 = trunc i16 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod3989)
  %i.bmo = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3584.epil.init ; 2 uses
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !26
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmo, i64 4
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !28
  %i.bms = add i32 %i.bmr, %i.bmp
  %.fr3500.epil = freeze i32 %i.bms
  %spec.select3059.epil = call i32 @llvm.umax.i32(i32 %.epil.init, i32 %.fr3500.epil)
  br label %._crit_edge3474

._crit_edge3474:                                  ; preds = %._crit_edge3474.unr-lcssa, %.lr.ph3473.epil.preheader
  %spec.select3059.lcssa = phi i32 [ %spec.select3059.1, %._crit_edge3474.unr-lcssa ], [ %spec.select3059.epil, %.lr.ph3473.epil.preheader ] ; 6 uses
  %.not2907 = icmp eq i32 %spec.select3059.lcssa, 0
  br i1 %.not2907, label %.critedge200, label %bb.aac

bb.aac:                                           ; preds = %._crit_edge3474
  %i.bmt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bmu = load ptr, ptr %i.bmt, align 8, !tbaa !89 ; 2 uses
  %.not2908 = icmp eq ptr %i.bmu, null
  br i1 %.not2908, label %._crit_edge3614, label %bb.aad

._crit_edge3614:                                  ; preds = %bb.aac
  %.pre3617 = zext i32 %spec.select3059.lcssa to i64
  br label %bb.aag

bb.aad:                                           ; preds = %bb.aac
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 24
  %i.bmw = load i64, ptr %i.bmv, align 8, !tbaa !91 ; 3 uses
  %.not2909 = icmp ne i64 %i.bmw, 0
  %i.bmx = zext i32 %spec.select3059.lcssa to i64 ; 2 uses
  %i.bmy = icmp ult i64 %i.bmw, %i.bmx
  %or.cond3061 = and i1 %.not2909, %i.bmy
  br i1 %or.cond3061, label %bb.aae, label %bb.aag

bb.aae:                                           ; preds = %bb.aad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.238, i32 noundef %spec.select3059.lcssa, i64 noundef %i.bmw) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bmz = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bna = and i32 %i.bmz, 256
  %.not2923 = icmp eq i32 %i.bna, 0
  br i1 %.not2923, label %.critedge3020, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.bnb = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.239, ptr %i.bnb, align 8, !tbaa !64
  br label %.critedge3020

bb.aag:                                           ; preds = %._crit_edge3614, %bb.aad
  %.pre-phi3618 = phi i64 [ %.pre3617, %._crit_edge3614 ], [ %i.bmx, %bb.aad ] ; 2 uses
  %i.bnc = call ptr @cli_calloc(i64 noundef %.pre-phi3618, i64 noundef 1) #13 ; 8 uses
  %.not2910 = icmp eq ptr %i.bnc, null
  br i1 %.not2910, label %bb.aah, label %.lr.ph3477.preheader

.lr.ph3477.preheader:                             ; preds = %bb.aag
  %wide.trip.count3592 = zext nneg i16 %i.aj to i64
  br label %.lr.ph3477

bb.aah:                                           ; preds = %bb.aag
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

.lr.ph3477:                                       ; preds = %.lr.ph3477.preheader, %bb.aam
  %indvars.iv3589 = phi i64 [ 0, %.lr.ph3477.preheader ], [ %indvars.iv.next3590, %bb.aam ] ; 3 uses
  %i.bnd = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3589 ; 3 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 12 ; 3 uses
  %i.bnf = load i32, ptr %i.bne, align 4, !tbaa !30
  %.not2911 = icmp eq i32 %i.bnf, 0
  br i1 %.not2911, label %bb.aam, label %bb.aai

bb.aai:                                           ; preds = %.lr.ph3477
  %i.bng = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bnd)
  %.not2912 = icmp eq i64 %i.bng, 0
  br i1 %.not2912, label %._crit_edge3478, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.bnh = load i32, ptr %i.bne, align 4, !tbaa !30 ; 3 uses
  %i.bni = add i32 %i.bnh, -1
  %or.cond3062.not = icmp ult i32 %i.bni, %spec.select3059.lcssa
  br i1 %or.cond3062.not, label %bb.aak, label %._crit_edge3478

bb.aak:                                           ; preds = %bb.aaj
  %i.bnj = load i32, ptr %i.bnd, align 4, !tbaa !26
  %i.bnk = zext i32 %i.bnj to i64                 ; 2 uses
  %i.bnl = zext i32 %i.bnh to i64
  %i.bnm = add nuw nsw i64 %i.bnk, %i.bnl
  %.not2916 = icmp samesign ugt i64 %i.bnm, %.pre-phi3618
  br i1 %.not2916, label %._crit_edge3478, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnc, i64 %i.bnk
  %i.bno = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bnn, i32 noundef %i.bnh) #13
  %i.bnp = load i32, ptr %i.bne, align 4, !tbaa !30
  %.not2917 = icmp eq i32 %i.bno, %i.bnp
  br i1 %.not2917, label %bb.aam, label %._crit_edge3478

bb.aam:                                           ; preds = %bb.aal, %.lr.ph3477
  %indvars.iv.next3590 = add nuw nsw i64 %indvars.iv3589, 1 ; 2 uses
  %exitcond3593.not = icmp eq i64 %indvars.iv.next3590, %wide.trip.count3592
  br i1 %exitcond3593.not, label %._crit_edge3478.thread, label %.lr.ph3477, !llvm.loop !52

._crit_edge3478:                                  ; preds = %bb.aai, %bb.aak, %bb.aaj, %bb.aal
  %8 = trunc nuw nsw i64 %indvars.iv3589 to i32
  %.not2918 = icmp eq i32 %8, %i.ak
  br i1 %.not2918, label %._crit_edge3478.thread, label %bb.aan

bb.aan:                                           ; preds = %._crit_edge3478
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.240) #13
  br label %.critedge200.sink.split

._crit_edge3478.thread:                           ; preds = %bb.aam, %._crit_edge3478
  %i.bnq = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2919 = icmp eq ptr %i.bnq, null
  br i1 %.not2919, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %._crit_edge3478.thread
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bnc, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.aap:                                           ; preds = %._crit_edge3478.thread
  %i.bnr = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bnq, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bns = icmp slt i32 %i.bnr, 0
  br i1 %i.bns, label %bb.aaq, label %bb.aar

bb.aaq:                                           ; preds = %bb.aap
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.241, ptr noundef nonnull %i.bnq) #13
  call void @free(ptr noundef nonnull %i.bnq) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bnc, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.aar:                                           ; preds = %bb.aap
  %i.bnt = add i32 %i.cj, -1
  %i.bnu = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !16
  %i.bnw = call i32 @unaspack212(ptr noundef nonnull %i.bnc, i32 noundef %spec.select3059.lcssa, ptr noundef nonnull %i.em, i16 noundef zeroext %i.aj, i32 noundef %i.bnt, i32 noundef %i.bnv, i32 noundef %i.bnr) #13
  %cond2 = icmp eq i32 %i.bnw, 1
  br i1 %cond2, label %bb.aas, label %bb.abc

bb.aas:                                           ; preds = %bb.aar
  %i.bnx = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2920 = icmp eq i8 %i.bnx, 0
  br i1 %.not2920, label %bb.aau, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.242, ptr noundef nonnull %i.bnq) #13
  br label %bb.aav

bb.aau:                                           ; preds = %bb.aas
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.243) #13
  br label %bb.aav

bb.aav:                                           ; preds = %bb.aau, %bb.aat
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bnc, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bny = call i32 @fsync(i32 noundef %i.bnr) #13 ; 0 uses
  %i.bnz = call i64 @lseek(i32 noundef %i.bnr, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.boa = call i32 @cli_magic_scandesc(i32 noundef %i.bnr, ptr noundef %1) #13
  %i.bob = icmp eq i32 %i.boa, 1
  %i.boc = call i32 @close(i32 noundef %i.bnr) #13 ; 0 uses
  %i.bod = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2922 = icmp eq i8 %i.bod, 0                ; 2 uses
  br i1 %i.bob, label %bb.aaw, label %bb.aaz

bb.aaw:                                           ; preds = %bb.aav
  br i1 %.not2922, label %bb.aax, label %bb.aay

bb.aax:                                           ; preds = %bb.aaw
  %i.boe = call i32 @unlink(ptr noundef nonnull %i.bnq) #13 ; 0 uses
  br label %bb.aay

bb.aay:                                           ; preds = %bb.aax, %bb.aaw
  call void @free(ptr noundef nonnull %i.bnq) #13
  br label %.critedge3020

bb.aaz:                                           ; preds = %bb.aav
  br i1 %.not2922, label %bb.aba, label %bb.abb

bb.aba:                                           ; preds = %bb.aaz
  %i.bof = call i32 @unlink(ptr noundef nonnull %i.bnq) #13 ; 0 uses
  br label %bb.abb

bb.abb:                                           ; preds = %bb.aba, %bb.aaz
  call void @free(ptr noundef nonnull %i.bnq) #13
  br label %.critedge3020

bb.abc:                                           ; preds = %bb.aar
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.244) #13
  %i.bog = call i32 @close(i32 noundef %i.bnr) #13 ; 0 uses
  %i.boh = call i32 @unlink(ptr noundef nonnull %i.bnq) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bnc, i32 noundef 0)
  br label %.critedge200.sink.split

.critedge200.sink.split:                          ; preds = %bb.abc, %bb.aan
  %.sink3915 = phi ptr [ %i.bnc, %bb.aan ], [ %i.bnq, %bb.abc ]
  call void @free(ptr noundef %.sink3915) #13
  br label %.critedge200

.critedge200:                                     ; preds = %.critedge200.sink.split, %bb.aab, %bb.aaa, %._crit_edge3474, %.thread3844
  %i.boi = load ptr, ptr %i.uo, align 8, !tbaa !69
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !71
  %i.bok = and i32 %i.boj, 4096
  %.not2924 = icmp eq i32 %i.bok, 0
  br i1 %.not2924, label %bb.act, label %bb.abd

bb.abd:                                           ; preds = %.critedge200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.bol = load i8, ptr %i.f, align 16, !tbaa !16
  %i.bom = icmp eq i8 %i.bol, -23
  br i1 %i.bom, label %bb.abe, label %bb.abh

bb.abe:                                           ; preds = %bb.abd
  %i.bon = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3070 = load i32, ptr %i.bon, align 1
  %i.boo = add i32 %i.cj, 5
  %i.bop = add i32 %i.boo, %.val3070              ; 2 uses
  %i.boq = call fastcc i32 @cli_rawaddr(i32 noundef %i.bop, ptr noundef %i.em, i16 noundef zeroext %i.aj, ptr noundef %i.g, i64 noundef %i.ej, i32 noundef %6) ; 3 uses
  %i.bor = icmp eq i32 %i.boq, 0
  %i.bos = load i32, ptr %i.g, align 4
  %i.bot = icmp ne i32 %i.bos, 0
  %or.cond202 = select i1 %i.bor, i1 %i.bot, i1 false
  br i1 %or.cond202, label %.thread3310, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.bou = zext i32 %i.boq to i64
  %i.bov = call i64 @lseek(i32 noundef %0, i64 noundef %i.bou, i32 noundef 0) #13
  %i.bow = icmp eq i64 %i.bov, -1
  br i1 %i.bow, label %.thread3310, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.box = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 24) #13
  %.not2925 = icmp eq i32 %i.box, 24
  br i1 %.not2925, label %bb.abh, label %.thread3310

bb.abh:                                           ; preds = %bb.abg, %bb.abd
  %.02273 = phi i32 [ %i.cj, %bb.abd ], [ %i.bop, %bb.abg ] ; 2 uses
  %.02271 = phi i32 [ %i.kx, %bb.abd ], [ %i.boq, %bb.abg ] ; 2 uses
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.abd ], [ %.0.sroa.gep3125, %bb.abg ]
  %.0 = phi ptr [ %i.f, %bb.abd ], [ %i.k, %bb.abg ] ; 2 uses
  %i.boy = load i64, ptr %.0, align 1
  %i.boz = xor i64 %i.boy, 6701356245542527132
  %i.bpa = getelementptr i8, ptr %.0, i64 5
  %i.bpb = load i64, ptr %i.bpa, align 1
  %i.bpc = xor i64 %i.bpb, 33157873664
  %i.bpd = or i64 %i.boz, %i.bpc
  %i.bpe = icmp ne i64 %i.bpd, 0
  %i.bpf = zext i1 %i.bpe to i32
  %.not2927 = icmp eq i32 %i.bpf, 0
  br i1 %.not2927, label %bb.abi, label %.thread3310

bb.abi:                                           ; preds = %bb.abh
  %.val3069 = load i32, ptr %.0.sroa.phi, align 1
  %i.bpg = sub nsw i32 84, %.val3069              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.246, i32 noundef %i.bpg) #13
  %i.bph = sub i32 %.02271, %i.bpg
  %i.bpi = zext i32 %i.bph to i64
  %i.bpj = call i64 @lseek(i32 noundef %0, i64 noundef %i.bpi, i32 noundef 0) #13
  %i.bpk = icmp eq i64 %i.bpj, -1
  br i1 %i.bpk, label %.thread3310, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.bpl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 4) #13
  %.not2928 = icmp eq i32 %i.bpl, 4
  br i1 %.not2928, label %bb.abk, label %.thread3310

bb.abk:                                           ; preds = %bb.abj
  %.val3068 = load i32, ptr %i.k, align 16
  %i.bpm = add i32 %.val3068, %.02271             ; 3 uses
  %i.bpn = zext i32 %i.bpm to i64
  %i.bpo = call i64 @lseek(i32 noundef %0, i64 noundef %i.bpn, i32 noundef 0) #13
  %i.bpp = icmp eq i64 %i.bpo, -1
  br i1 %i.bpp, label %.thread3310, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.bpq = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 20) #13
  %.not2929 = icmp eq i32 %i.bpq, 20
  br i1 %.not2929, label %bb.abm, label %.thread3310

bb.abm:                                           ; preds = %bb.abl
  %.val3067 = load i32, ptr %i.k, align 16
  %.not2930 = icmp eq i32 %.val3067, 0            ; 3 uses
  %i.bpr = add i32 %i.bpm, 4
  %.02272 = select i1 %.not2930, i32 %i.bpr, i32 %i.bpm
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.gep3594 = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 1 ; 2 uses
  %.sroa.gep3594.val = load i32, ptr %.sroa.gep3594, align 1
  %.val3066 = select i1 %.not2930, i32 %.sroa.gep.val, i32 %.sroa.gep3594.val
  %i.bps = or i32 %.val3066, 255                  ; 3 uses
  %.sroa.gep3595 = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %.sroa.gep3595.val = load i32, ptr %.sroa.gep3595, align 1
  %.val3065 = select i1 %.not2930, i32 %.sroa.gep3595.val, i32 %.sroa.gep.val ; 4 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !89 ; 2 uses
  %.not2931 = icmp eq ptr %i.bpu, null
  br i1 %.not2931, label %bb.abr, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 24
  %i.bpw = load i64, ptr %i.bpv, align 8, !tbaa !91 ; 3 uses
  %.not2932 = icmp eq i64 %i.bpw, 0
  br i1 %.not2932, label %bb.abr, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.bpx = call i32 @llvm.umax.i32(i32 %i.bps, i32 %.val3065) ; 2 uses
  %i.bpy = zext i32 %i.bpx to i64
  %i.bpz = icmp ult i64 %i.bpw, %i.bpy
  br i1 %i.bpz, label %bb.abp, label %bb.abr

bb.abp:                                           ; preds = %bb.abo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.247, i32 noundef %i.bpx, i64 noundef %i.bpw) #13
  call void @free(ptr noundef %i.em) #13
  %i.bqa = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bqb = and i32 %i.bqa, 256
  %.not2942 = icmp eq i32 %i.bqb, 0
  br i1 %.not2942, label %bb.acs, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.bqc = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.248, ptr %i.bqc, align 8, !tbaa !64
  br label %bb.acs

bb.abr:                                           ; preds = %bb.abo, %bb.abn, %bb.abm
  %.not2933 = icmp eq i32 %.val3065, 0
  br i1 %.not2933, label %.thread3310, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !28
  %.not2934 = icmp eq i32 %.val3065, %i.bqe
  br i1 %.not2934, label %bb.abt, label %.thread3310

bb.abt:                                           ; preds = %bb.abs
  %i.bqf = zext i32 %.02272 to i64
  %i.bqg = call i64 @lseek(i32 noundef %0, i64 noundef %i.bqf, i32 noundef 0) #13
  %i.bqh = icmp eq i64 %i.bqg, -1
  br i1 %i.bqh, label %.thread3310, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.bqi = zext i32 %.val3065 to i64
  %i.bqj = call ptr @cli_malloc(i64 noundef %i.bqi) #13 ; 10 uses
  %.not2935 = icmp eq ptr %i.bqj, null
  br i1 %.not2935, label %.thread3310, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.bqk = zext i32 %i.bps to i64
  %i.bql = call ptr @cli_malloc(i64 noundef %i.bqk) #13 ; 10 uses
  %.not2936 = icmp eq ptr %i.bql, null
  br i1 %.not2936, label %.thread3310.sink.split, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.bqm = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bql, i32 noundef %i.bps) #13 ; 0 uses
  %i.bqn = add i32 %.02273, 634
  %i.bqo = call fastcc i32 @cli_rawaddr(i32 noundef %i.bqn, ptr noundef nonnull %i.em, i16 noundef zeroext %i.aj, ptr noundef %i.g, i64 noundef %i.ej, i32 noundef %6) ; 2 uses
  %i.bqp = icmp eq i32 %i.bqo, 0
  %i.bqq = load i32, ptr %i.g, align 4
  %i.bqr = icmp ne i32 %i.bqq, 0
  %or.cond206 = select i1 %i.bqp, i1 %i.bqr, i1 false
  br i1 %or.cond206, label %bb.abx, label %bb.aby

bb.abx:                                           ; preds = %bb.abw
  call void @free(ptr noundef nonnull %i.bqj) #13
  br label %.thread3310.sink.split

bb.aby:                                           ; preds = %bb.abw
  %i.bqs = zext i32 %i.bqo to i64
  %i.bqt = call i64 @lseek(i32 noundef %0, i64 noundef %i.bqs, i32 noundef 0) #13
  %i.bqu = icmp eq i64 %i.bqt, -1
  br i1 %i.bqu, label %bb.abz, label %bb.aca

bb.abz:                                           ; preds = %bb.aby
  call void @free(ptr noundef nonnull %i.bqj) #13
  br label %.thread3310.sink.split

bb.aca:                                           ; preds = %bb.aby
  %i.bqv = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 5) #13
  %.not2937 = icmp eq i32 %i.bqv, 5
  br i1 %.not2937, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  call void @free(ptr noundef nonnull %i.bqj) #13
  br label %.thread3310.sink.split

bb.acc:                                           ; preds = %bb.aca
  %i.bqw = add i32 %.02273, 639
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.val = load i32, ptr %i.bqx, align 1
  %i.bqy = add i32 %i.bqw, %.val                  ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.249, i32 noundef %i.bqy) #13
  %i.bqz = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2938 = icmp eq ptr %i.bqz, null
  br i1 %.not2938, label %bb.acd, label %bb.ace

bb.acd:                                           ; preds = %bb.acc
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bql, ptr noundef nonnull %i.bqj, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %bb.acs

bb.ace:                                           ; preds = %bb.acc
  %i.bra = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bqz, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.brb = icmp slt i32 %i.bra, 0
  br i1 %i.brb, label %bb.acf, label %bb.acg

bb.acf:                                           ; preds = %bb.ace
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.bqz) #13
  call void @free(ptr noundef nonnull %i.bqz) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bql, ptr noundef nonnull %i.bqj, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %bb.acs

bb.acg:                                           ; preds = %bb.ace
  %i.brc = load i32, ptr %i.em, align 4, !tbaa !26
  %i.brd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bre = load i32, ptr %i.brd, align 4, !tbaa !16
  %i.brf = call i32 @unspack(ptr noundef nonnull %i.bql, ptr noundef nonnull %i.bqj, ptr noundef nonnull %1, i32 noundef %i.brc, i32 noundef %i.bre, i32 noundef %i.bqy, i32 noundef %i.bra) #13
  %cond1 = icmp eq i32 %i.brf, 0
  br i1 %cond1, label %bb.ach, label %bb.acr

bb.ach:                                           ; preds = %bb.acg
  %i.brg = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2939 = icmp eq i8 %i.brg, 0
  br i1 %.not2939, label %bb.acj, label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.251, ptr noundef nonnull %i.bqz) #13
  br label %bb.ack

bb.acj:                                           ; preds = %bb.ach
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.252) #13
  br label %bb.ack

bb.ack:                                           ; preds = %bb.acj, %bb.aci
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bql, ptr noundef nonnull %i.bqj, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.brh = call i32 @fsync(i32 noundef %i.bra) #13 ; 0 uses
  %i.bri = call i64 @lseek(i32 noundef %i.bra, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.brj = call i32 @cli_magic_scandesc(i32 noundef %i.bra, ptr noundef nonnull %1) #13
  %i.brk = icmp eq i32 %i.brj, 1
  %i.brl = call i32 @close(i32 noundef %i.bra) #13 ; 0 uses
  %i.brm = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2941 = icmp eq i8 %i.brm, 0                ; 2 uses
  br i1 %i.brk, label %bb.acl, label %bb.aco

bb.acl:                                           ; preds = %bb.ack
  br i1 %.not2941, label %bb.acm, label %bb.acn

bb.acm:                                           ; preds = %bb.acl
  %i.brn = call i32 @unlink(ptr noundef nonnull %i.bqz) #13 ; 0 uses
  br label %bb.acn

bb.acn:                                           ; preds = %bb.acm, %bb.acl
  call void @free(ptr noundef nonnull %i.bqz) #13
  br label %bb.acs

bb.aco:                                           ; preds = %bb.ack
  br i1 %.not2941, label %bb.acp, label %bb.acq

bb.acp:                                           ; preds = %bb.aco
  %i.bro = call i32 @unlink(ptr noundef nonnull %i.bqz) #13 ; 0 uses
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acp, %bb.aco
  call void @free(ptr noundef nonnull %i.bqz) #13
  br label %bb.acs

bb.acr:                                           ; preds = %bb.acg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.253) #13
  %i.brp = call i32 @close(i32 noundef %i.bra) #13 ; 0 uses
  %i.brq = call i32 @unlink(ptr noundef nonnull %i.bqz) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bql, ptr noundef nonnull %i.bqj, i32 noundef 0)
  br label %.thread3310.sink.split

.thread3310.sink.split:                           ; preds = %bb.abv, %bb.acr, %bb.acb, %bb.abz, %bb.abx
  %.sink3916 = phi ptr [ %i.bql, %bb.abx ], [ %i.bql, %bb.abz ], [ %i.bql, %bb.acb ], [ %i.bqz, %bb.acr ], [ %i.bqj, %bb.abv ]
  call void @free(ptr noundef nonnull %.sink3916) #13
  br label %.thread3310

.thread3310:                                      ; preds = %.thread3310.sink.split, %bb.abt, %bb.abe, %bb.abf, %bb.abg, %bb.abh, %bb.abi, %bb.abj, %bb.abk, %bb.abl, %bb.abr, %bb.abs, %bb.abu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %bb.act

bb.acs:                                           ; preds = %bb.abp, %bb.acq, %bb.acn, %bb.acf, %bb.acd, %bb.abq
  %.35 = phi i32 [ 1, %bb.acn ], [ 0, %bb.acq ], [ 1, %bb.abq ], [ -114, %bb.acd ], [ 0, %bb.abp ], [ -123, %bb.acf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %.critedge3020

bb.act:                                           ; preds = %.thread3310, %.critedge200
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

.critedge3020:                                    ; preds = %bb.zv, %bb.zo, %bb.zm, %bb.yt, %bb.zh, %bb.ze, %bb.zc, %bb.yy, %bb.yw, %bb.zk, %bb.yu, %bb.xx, %bb.yk, %bb.yh, %bb.xz, %bb.xv, %bb.xt, %bb.xm, %bb.xk, %bb.xh, %bb.wq, %bb.wz, %bb.wv, %bb.wt, %bb.wx, %bb.wr, %bb.sz, %bb.sw, %bb.rn, %bb.so, %bb.sk, %bb.si, %bb.sf, %bb.sb, %bb.rs, %bb.rq, %bb.rh, %bb.ro, %bb.rk, %bb.sm, %bb.ri, %bb.qr, %bb.qo, %bb.pf, %bb.qg, %bb.qc, %bb.qa, %bb.px, %bb.pv, %bb.pk, %bb.pi, %bb.oy, %bb.pg, %bb.pb, %bb.qe, %bb.oz, %bb.od, %bb.oq, %bb.on, %bb.mz, %bb.of, %bb.ob, %bb.nl, %bb.ni, %bb.nc, %bb.na, %bb.lp, %bb.mt, %bb.mq, %bb.mi, %bb.me, %bb.ma, %bb.ly, %bb.mg, %bb.lq, %bb.jv, %bb.jx, %bb.kj, %bb.kw, %bb.kt, %bb.kl, %bb.kb, %bb.js, %bb.jw, %bb.jo, %bb.jt, %bb.jh, %bb.acs, %bb.ib, %bb.id, %bb.im, %bb.iy, %bb.ho, %.critedge3018, %.critedge3014, %bb.aae, %bb.vn, %bb.tg, %.critedge3006, %bb.ft, %bb.fu, %bb.fv, %.critedge3003, %bb.es, %bb.et, %bb.eu, %bb.dk, %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.cx, %bb.cy, %bb.cd, %bb.ce, %bb.cf, %bb.bw, %bb.bx, %bb.br, %bb.bs, %bb.bt, %bb.bm, %bb.bn, %bb.bo, %bb.bi, %bb.bj, %bb.bk, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.h, %bb.i, %bb.j, %bb.act, %bb.abb, %bb.aay, %bb.aaq, %bb.aao, %bb.aah, %bb.aaf, %bb.wj, %bb.wg, %bb.vy, %bb.vw, %bb.vu, %bb.vq, %bb.vo, %bb.vd, %bb.vc, %bb.uz, %bb.ut, %bb.ur, %bb.up, %bb.tr, %bb.to, %bb.tm, %bb.tk, %bb.th, %bb.ky, %bb.fx, %bb.fq, %bb.fk, %bb.ep, %bb.di, %bb.dg, %bb.de, %bb.r, %bb.p, %bb.n, %bb.l, %bb.f, %bb.d, %bb.b
  %.36 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ -111, %bb.b ], [ 1, %bb.i ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.h ], [ 1, %bb.bc ], [ 0, %bb.bf ], [ 1, %bb.bj ], [ 0, %bb.bi ], [ 1, %bb.bn ], [ 0, %bb.bm ], [ 1, %bb.bs ], [ 1, %bb.bw ], [ 1, %bb.ce ], [ -123, %bb.de ], [ 1, %bb.dc ], [ 1, %bb.dl ], [ 1, %bb.ep ], [ 0, %bb.dk ], [ 1, %bb.et ], [ 1, %bb.fq ], [ 1, %bb.fk ], [ 1, %.critedge3003 ], [ 0, %bb.es ], [ 1, %bb.fu ], [ 0, %bb.fx ], [ 0, %bb.ky ], [ 1, %bb.th ], [ 0, %bb.ft ], [ 0, %bb.tk ], [ -114, %bb.tm ], [ -114, %bb.to ], [ -123, %bb.tr ], [ -123, %bb.ur ], [ -123, %bb.ut ], [ 1, %bb.uz ], [ %i.bal, %bb.vc ], [ -114, %bb.up ], [ 0, %bb.vd ], [ 0, %bb.act ], [ %.35, %bb.acs ], [ 1, %bb.aaf ], [ 0, %bb.vn ], [ -123, %bb.aaq ], [ 1, %bb.aay ], [ 0, %bb.abb ], [ -114, %bb.aao ], [ -114, %bb.aah ], [ -114, %bb.xt ], [ 1, %bb.wr ], [ 1, %bb.ri ], [ 1, %bb.vo ], [ 0, %bb.tg ], [ -114, %bb.vq ], [ -123, %bb.vu ], [ -123, %bb.vy ], [ 1, %bb.wg ], [ 0, %bb.wj ], [ -114, %bb.vw ], [ 1, %bb.oz ], [ 1, %bb.na ], [ 1, %bb.lq ], [ -123, %bb.jh ], [ -114, %bb.im ], [ 1, %.critedge3018 ], [ 0, %bb.aae ], [ 1, %bb.ho ], [ 1, %.critedge3006 ], [ -114, %bb.di ], [ -114, %bb.dg ], [ 1, %bb.cx ], [ 0, %bb.cd ], [ 0, %bb.br ], [ 0, %bb.l ], [ 1, %bb.j ], [ 1, %bb.bd ], [ 0, %bb.bg ], [ 1, %bb.bk ], [ 1, %bb.bo ], [ 1, %bb.bt ], [ 1, %bb.bx ], [ 1, %bb.cf ], [ 1, %bb.cy ], [ 1, %bb.dd ], [ 1, %bb.dm ], [ 1, %bb.eu ], [ 1, %bb.fv ], [ 1, %.critedge3014 ], [ -114, %bb.ib ], [ -123, %bb.id ], [ 1, %bb.iy ], [ 0, %bb.jv ], [ -114, %bb.jx ], [ -114, %bb.kj ], [ 0, %bb.kw ], [ 1, %bb.kt ], [ -123, %bb.kl ], [ -123, %bb.kb ], [ 0, %bb.js ], [ 1, %bb.jw ], [ -123, %bb.jo ], [ 1, %bb.jt ], [ 0, %bb.lp ], [ 0, %bb.mt ], [ 1, %bb.mq ], [ -123, %bb.mi ], [ -123, %bb.me ], [ -123, %bb.ma ], [ -114, %bb.ly ], [ -114, %bb.mg ], [ -114, %bb.od ], [ 0, %bb.oq ], [ 1, %bb.on ], [ 0, %bb.mz ], [ -123, %bb.of ], [ -114, %bb.ob ], [ -123, %bb.nl ], [ -114, %bb.ni ], [ 0, %bb.nc ], [ 0, %bb.qr ], [ 1, %bb.qo ], [ 0, %bb.pf ], [ -123, %bb.qg ], [ -114, %bb.qc ], [ -123, %bb.qa ], [ -114, %bb.px ], [ -114, %bb.pv ], [ -123, %bb.pk ], [ -114, %bb.pi ], [ 0, %bb.oy ], [ 1, %bb.pg ], [ 0, %bb.pb ], [ -114, %bb.qe ], [ 0, %bb.sz ], [ 1, %bb.sw ], [ 0, %bb.rn ], [ -123, %bb.so ], [ -114, %bb.sk ], [ -123, %bb.si ], [ -114, %bb.sf ], [ -114, %bb.sb ], [ -123, %bb.rs ], [ -114, %bb.rq ], [ 0, %bb.rh ], [ 1, %bb.ro ], [ 0, %bb.rk ], [ -114, %bb.sm ], [ 1, %bb.xm ], [ 0, %bb.xk ], [ 1, %bb.xh ], [ 0, %bb.wq ], [ -123, %bb.wz ], [ -123, %bb.wv ], [ -114, %bb.wt ], [ -114, %bb.wx ], [ -114, %bb.xx ], [ 0, %bb.yk ], [ 1, %bb.yh ], [ -123, %bb.xz ], [ -123, %bb.xv ], [ 1, %bb.zv ], [ -123, %bb.zo ], [ -123, %bb.zm ], [ 0, %bb.yt ], [ -123, %bb.zh ], [ -114, %bb.ze ], [ -123, %bb.zc ], [ -123, %bb.yy ], [ -114, %bb.yw ], [ -114, %bb.zk ], [ 1, %bb.yu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cli_md5sect(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cli_md5_ctx, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.c = icmp ugt i32 %i.b, 184549376
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.256) #13
  br label %cli_seeksect.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cli_seeksect.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
end_hunk_6
