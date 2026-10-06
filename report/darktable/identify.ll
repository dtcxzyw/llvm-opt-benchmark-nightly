Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.awe, align 8, !tbaa !82
  tail call void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2)
  br label %.loopexit

bb.pn:                                            ; preds = %bb.nz
  %i.awf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(10) @.str.170, i64 noundef 9) #20
  %.not285 = icmp eq i32 %i.awf, 0
  br i1 %.not285, label %bb.po, label %.thread405

bb.po:                                            ; preds = %bb.pn
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !80
  %.not286 = icmp eq i8 %i.awh, 0
  br i1 %.not286, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 278
  store i32 3158066, ptr %i.awi, align 2
  %i.awj = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.awk = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.awj, ptr noundef nonnull dereferenceable(1) %i.ars) #19 ; 0 uses
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !103 ; 2 uses
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !105
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 32
  %i.awp = load ptr, ptr %i.awo, align 8
  %i.awq = tail call noundef i32 %i.awp(ptr noundef nonnull align 8 dereferenceable(8) %i.awm, i64 noundef 544, i32 noundef 0), !call_target !114 ; 0 uses
  %i.awr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aws = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i16 %i.awr, ptr %i.aws, align 4, !tbaa !126
  %i.awt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awu = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  store i16 %i.awt, ptr %i.awu, align 2, !tbaa !125
  %i.awv = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aww = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awx = icmp eq i16 %i.aww, 30
  %i.awy = select i1 %i.awx, i64 738, i64 736     ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 %i.awy, ptr %i.awz, align 8, !tbaa !118
  %i.axa = load i16, ptr %i.aws, align 4, !tbaa !126 ; 2 uses
  %i.axb = load i16, ptr %i.awu, align 2, !tbaa !125 ; 2 uses
  %i.axc = icmp ugt i16 %i.axa, %i.axb
  br i1 %i.axc, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  store i16 %i.axa, ptr %i.awu, align 2, !tbaa !125
  store i16 %i.axb, ptr %i.aws, align 4, !tbaa !126
  %i.axd = load ptr, ptr %i.awl, align 8, !tbaa !103 ; 2 uses
  %i.axe = add nsw i64 %i.awy, -6
  %i.axf = load ptr, ptr %i.axd, align 8, !tbaa !105
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 32
  %i.axh = load ptr, ptr %i.axg, align 8
  %i.axi = tail call noundef i32 %i.axh(ptr noundef nonnull align 8 dereferenceable(8) %i.axd, i64 noundef %i.axe, i32 noundef 0), !call_target !114 ; 0 uses
  %i.axj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.axk = and i16 %i.axj, 3
  %.not287 = icmp eq i16 %i.axk, 3
  %i.axl = select i1 %.not287, i32 6, i32 5
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.axl, ptr %i.axm, align 8, !tbaa !83
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.axn, align 8, !tbaa !82
  br label %.loopexit

bb.pt:                                            ; preds = %bb.nz
  %.not291 = icmp eq i64 %.unpack277, 0
  br i1 %.not291, label %bb.pu, label %.thread405

bb.pu:                                            ; preds = %bb.pt
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !123
  switch i16 %i.axp, label %bb.pw [
    i16 1316, label %.sink.split599
    i16 2568, label %bb.pv
  ]

bb.pv:                                            ; preds = %bb.pu
  br label %.sink.split599

.sink.split599:                                   ; preds = %bb.pu, %bb.pv
  %i.axq = phi <4 x i16> [ <i16 1960, i16 2560, i16 2, i16 8>, %bb.pv ], [ <i16 1030, i16 1300, i16 1, i16 6>, %bb.pu ]
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x i16> %i.axq, ptr %i.axr, align 4, !tbaa !85
  br label %bb.pw

bb.pw:                                            ; preds = %.sink.split599, %bb.pu
  %i.axs = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.axs, align 8, !tbaa !82
  store i64 ptrtoint (ptr @_ZN6LibRaw15rollei_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  br label %.loopexit

.thread405:                                       ; preds = %bb.nz, %bb.pl, %bb.pn, %bb.pt
  %i.axt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(11) @.str.172) #20
  %.not293 = icmp eq i32 %i.axt, 0
  br i1 %.not293, label %bb.px, label %bb.py

bb.px:                                            ; preds = %.thread405
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2048, ptr %i.axu, align 4, !tbaa !126
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2440, ptr %i.axv, align 2, !tbaa !125
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.axx, align 8, !tbaa !118
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1229539657, ptr %i.axy, align 8, !tbaa !82
  store i16 18761, ptr %i.axw, align 8, !tbaa !102
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 65532, ptr %i.axz, align 8, !tbaa !86
  br label %.loopexit

bb.py:                                            ; preds = %.thread405
  %i.aya = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(9) @.str.173) #20
  %.not295 = icmp eq i32 %i.aya, 0
  br i1 %.not295, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2058, ptr %i.ayb, align 4, !tbaa !126
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2448, ptr %i.ayc, align 2, !tbaa !125
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.aye, align 8, !tbaa !118
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.ayf, align 8, !tbaa !82
  store i16 18761, ptr %i.ayd, align 8, !tbaa !102
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.ayg, align 8, !tbaa !86
  br label %.loopexit

bb.qa:                                            ; preds = %bb.py
  %i.ayh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(9) @.str.174) #20
  %.not297 = icmp eq i32 %i.ayh, 0
  br i1 %.not297, label %bb.qb, label %bb.qc

bb.qb:                                            ; preds = %bb.qa
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2058, ptr %i.ayi, align 4, !tbaa !126
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2456, ptr %i.ayj, align 2, !tbaa !125
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.ayl = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.ayl, align 8, !tbaa !118
  %i.aym = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.aym, align 8, !tbaa !82
  store i16 18761, ptr %i.ayk, align 8, !tbaa !102
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.ayn, align 8, !tbaa !86
  br label %.loopexit

bb.qc:                                            ; preds = %bb.qa
  %i.ayo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(9) @.str.175) #20
  %.not299 = icmp eq i32 %i.ayo, 0
  br i1 %.not299, label %bb.qd, label %.loopexit

bb.qd:                                            ; preds = %bb.qc
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2050, ptr %i.ayp, align 4, !tbaa !126
  %i.ayq = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2448, ptr %i.ayq, align 2, !tbaa !125
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.ayr = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.ays = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.ays, align 8, !tbaa !118
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.ayt, align 8, !tbaa !82
  store i16 18761, ptr %i.ayr, align 8, !tbaa !102
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.ayu, align 8, !tbaa !86
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit508, %.loopexit.loopexit, %bb.lp, %bb.kp, %bb.ko, %bb.kn, %bb.kr, %bb.kq, %bb.kh, %bb.ki, %bb.lj, %bb.ny, %bb.pm, %bb.pw, %bb.pz, %bb.qc, %bb.qd, %bb.qb, %bb.px, %bb.ps, %bb.ob, %bb.pf, %bb.pj, %bb.pk, %bb.pi, %bb.ol, %bb.ll, %bb.lq, %bb.ls, %bb.lu, %bb.lt, %bb.lr, %bb.lx, %bb.mc, %bb.mb, %bb.mh, %bb.mj, %bb.ml, %bb.mk, %bb.mi, %bb.mg, %bb.mq, %bb.ms, %bb.na, %bb.nd, %bb.nf, %.thread402, %bb.ne, %bb.nc, %bb.mz, %bb.nr, %bb.ns, %bb.nq, %bb.nx, %bb.nt, %bb.ni, %bb.nl, %bb.nn, %bb.no, %bb.nm, %bb.nk, %bb.mu, %bb.mv, %bb.mw, %bb.mr, %bb.mo, %bb.mp, %bb.md, %bb.ma, %bb.lw, %bb.ln, %._crit_edge, %bb.jw, %bb.jx, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw27identify_process_dng_fieldsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x [4 x double]], align 16      ; 21 uses
  %i.c = alloca [4 x [3 x double]], align 16      ; 9 uses
  %i.d = alloca [4 x [3 x double]], align 16      ; 15 uses
  %i.e = alloca [4 x i32], align 16               ; 10 uses
  %i.f = alloca [4 x i32], align 16               ; 10 uses
  %i.g = alloca [4 x i32], align 16               ; 17 uses
  %i.h = alloca [4 x i32], align 16               ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.j = load i32, ptr %i.i, align 4, !tbaa !131
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.en, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 186
  store <8 x i16> <i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0>, ptr %i.l, align 2, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.v = load i64, ptr %i.u, align 8, !tbaa !118
  %i.w = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.v) ; 35 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.y = load i64, ptr %i.x, align 8, !tbaa !93
  %i.z = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.y) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 381712 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !88 ; 2 uses
  %i.ac = icmp slt i32 %i.w, %i.ab
  %i.ad = icmp sgt i32 %i.w, -1                   ; 2 uses
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.c, label %.thread510

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !134
  %i.ag = and i32 %i.af, 64
  %.not399 = icmp eq i32 %i.ag, 0
  br i1 %.not399, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ah = zext nneg i32 %i.w to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 433660
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 433660 ; 3 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !263 ; 3 uses
  %i.am = and i32 %i.al, 2
  %.not410 = icmp eq i32 %i.am, 0
  br i1 %.not410, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !263
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.ao, 1
  %sext412 = add nsw i32 %i.ap, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = phi i32 [ %sext412, %bb.e ], [ %i.w, %bb.d ] ; 8 uses
  %i.ar = and i32 %i.al, 4
  %.not413 = icmp eq i32 %i.ar, 0
  br i1 %.not413, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !263
  %i.at = lshr i32 %i.as, 2
  %i.au = and i32 %i.at, 1
  %sext415 = add nsw i32 %i.au, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.av = phi i32 [ %sext415, %bb.g ], [ %i.w, %bb.f ]
  %i.aw = and i32 %i.al, 8
  %.not416 = icmp eq i32 %i.aw, 0
  br i1 %.not416, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !263
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 1
  %sext418 = add nsw i32 %i.az, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ba = phi i32 [ %sext418, %bb.i ], [ %i.w, %bb.h ]
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 433828
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !263 ; 3 uses
  %i.bd = and i32 %i.bc, 2
  %.not410.1 = icmp eq i32 %i.bd, 0
  br i1 %.not410.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !263
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 1
  %sext412.1 = add nsw i32 %i.bh, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi i32 [ %sext412.1, %bb.k ], [ %i.w, %bb.j ]
  %i.bj = and i32 %i.bc, 4
  %.not413.1 = icmp eq i32 %i.bj, 0
  br i1 %.not413.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !263
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = and i32 %i.bm, 1
  %sext415.1 = add nsw i32 %i.bn, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = phi i32 [ %sext415.1, %bb.m ], [ %i.w, %bb.l ]
  %i.bp = and i32 %i.bc, 8
  %.not416.1 = icmp eq i32 %i.bp, 0
  br i1 %.not416.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !263
  %i.bs = lshr i32 %i.br, 3
  %i.bt = and i32 %i.bs, 1
  %sext418.1 = add nsw i32 %i.bt, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = phi i32 [ %sext418.1, %bb.o ], [ %i.w, %bb.n ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !81
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.bx = getelementptr inbounds nuw [33472 x i8], ptr %i.bw, i64 %i.ah
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 488
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !264
  %i.ca = and i32 %i.bz, 16
  %.not400 = icmp eq i32 %i.ca, 0
  br i1 %.not400, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !264
  %i.cd = lshr i32 %i.cc, 4
  %i.ce = and i32 %i.cd, 1
  %sext = add nsw i32 %i.ce, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cf = phi i32 [ %sext, %bb.q ], [ %i.w, %bb.p ]
  %i.cg = icmp sgt i32 %i.aq, -1
  br i1 %i.cg, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ch = icmp slt i32 %i.aq, %i.ab
  %i.ci = icmp eq i32 %i.aq, %i.bi
  %or.cond489 = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = icmp eq i32 %i.aq, %i.av
  %or.cond491 = select i1 %or.cond489, i1 %i.cj, i1 false
  %i.ck = icmp eq i32 %i.aq, %i.bo
  %or.cond494 = select i1 %or.cond491, i1 %i.ck, i1 false
  br i1 %or.cond494, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cl = zext nneg i32 %i.aq to i64
  %i.cm = getelementptr inbounds nuw [33472 x i8], ptr %i.bw, i64 %i.cl ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 148 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 152
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !92 ; 5 uses
  %.not402 = icmp eq i16 %i.cp, 0
  br i1 %.not402, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 320
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !92 ; 4 uses
  %.not403 = icmp eq i16 %i.cr, 0
  br i1 %.not403, label %bb.x, label %.preheader543

.preheader543:                                    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i8 0, i64 32, i1 false)
  call void @llvm.masked.store.v16f64.p0(<16 x double> <double 1.000000e+00, double poison, double poison, double poison, double poison, double 1.000000e+00, double poison, double poison, double poison, double poison, double 1.000000e+00, double poison, double poison, double poison, double poison, double 1.000000e+00>, ptr align 16 %i.b, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !137
  %i.cv = icmp eq i16 %i.cp, 21
  br i1 %i.cv, label %.preheader539, label %.preheader541.1

.preheader541.1:                                  ; preds = %.preheader543
  %i.cw = icmp eq i16 %i.cr, 21
  br i1 %i.cw, label %.preheader539, label %.preheader540.preheader

.preheader540.preheader:                          ; preds = %.preheader541.1
  %i.cx = icmp ult i16 %i.cp, 24
  br i1 %i.cx, label %switch.lookup, label %bb.v

switch.lookup:                                    ; preds = %.preheader540.preheader
  %i.cy = zext nneg i16 %i.cp to i64
  %i.cz = getelementptr [4 x i8], ptr @switch.table._ZN6LibRaw27identify_process_dng_fieldsEv, i64 %i.cy
  %switch.gep = getelementptr i8, ptr %i.cz, i64 -4
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.v

bb.v:                                             ; preds = %.preheader540.preheader, %switch.lookup
  %.2357 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %.preheader540.preheader ] ; 7 uses
  switch i16 %i.cp, label %.preheader540.1 [
    i16 23, label %.thread
    i16 22, label %.thread
    i16 20, label %.thread
    i16 4, label %.thread
    i16 1, label %.thread
  ]

.preheader540.1:                                  ; preds = %bb.v
  %i.da = icmp ult i16 %i.cr, 24
  br i1 %i.da, label %switch.hole_check, label %.thread

switch.hole_check:                                ; preds = %.preheader540.1
  %switch.tableidx970 = add nsw i16 %i.cr, -1
  %switch.maskindex = zext nneg i16 %switch.tableidx970 to i32
  %switch.shifted = lshr i32 6815753, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %spec.select = select i1 %switch.lobit, i32 1, i32 %.2357
  br label %.thread

.thread:                                          ; preds = %switch.hole_check, %.preheader540.1, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %.4359 = phi i32 [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %.preheader540.1 ], [ %spec.select, %switch.hole_check ] ; 2 uses
  %i.db = icmp sgt i32 %.4359, -1
  br i1 %i.db, label %.preheader539, label %bb.w

.preheader539:                                    ; preds = %.preheader541.1, %.preheader543, %.thread
  %.4359796 = phi i32 [ %.4359, %.thread ], [ 1, %.preheader541.1 ], [ 0, %.preheader543 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !99 ; 11 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 4) ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 0                   ; 3 uses
  br i1 %i.de, label %.preheader538.lr.ph, label %.loopexit537

.preheader538.lr.ph:                              ; preds = %.preheader539
  %i.df = zext nneg i32 %.4359796 to i64          ; 3 uses
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dg = getelementptr inbounds nuw [168 x i8], ptr %i.cn, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.di = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.dh, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep816 = getelementptr inbounds nuw [24 x i8], ptr %i.c, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> %i.di, <4 x float> poison), !tbaa !90
  %i.dj = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather to <4 x double>
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dj, <4 x ptr> align 8 %wide.gep816, <4 x i1> %i.di), !tbaa !137
  %wide.gep817 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4
  %wide.masked.gather818 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep817, <4 x i1> %i.di, <4 x float> poison), !tbaa !90
  %i.dk = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather818 to <4 x double>
  %wide.gep819 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep816, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dk, <4 x ptr> align 8 %wide.gep819, <4 x i1> %i.di), !tbaa !137
  %wide.gep820 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather821 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep820, <4 x i1> %i.di, <4 x float> poison), !tbaa !90
  %i.dl = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather821 to <4 x double>
  %wide.gep822 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep816, i64 16
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dl, <4 x ptr> align 8 %wide.gep822, <4 x i1> %i.di), !tbaa !137
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.df
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !81
  %.not810 = icmp eq i32 %i.dn, %i.aq
  br i1 %.not810, label %.preheader535.preheader, label %.loopexit537

.preheader535.preheader:                          ; preds = %.preheader538.lr.ph
  %i.do = getelementptr inbounds nuw [168 x i8], ptr %i.cn, i64 %i.df ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %trip.count.minus.1826 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert827 = insertelement <4 x i64> poison, i64 %trip.count.minus.1826, i64 0
  %broadcast.splat828 = shufflevector <4 x i64> %broadcast.splatinsert827, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dq = icmp uge <4 x i64> %broadcast.splat828, <i64 0, i64 1, i64 2, i64 3> ; 8 uses
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dp, <4 x i1> %i.dq, <4 x float> poison), !tbaa !90
  %i.dr = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dr, ptr align 16 %i.b, <4 x i1> %i.dq), !tbaa !137
  %exitcond657.not = icmp eq i32 %i.dd, 1
  br i1 %exitcond657.not, label %.loopexit537, label %vector.body829.1

vector.body829.1:                                 ; preds = %.preheader535.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %wide.masked.load.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dt, <4 x i1> %i.dq, <4 x float> poison), !tbaa !90
  %i.du = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.1 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.du, ptr align 16 %i.ds, <4 x i1> %i.dq), !tbaa !137
  %exitcond657.not.1 = icmp eq i32 %i.dd, 2
  br i1 %exitcond657.not.1, label %.loopexit537, label %vector.body829.2

vector.body829.2:                                 ; preds = %vector.body829.1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %wide.masked.load.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dw, <4 x i1> %i.dq, <4 x float> poison), !tbaa !90
  %i.dx = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.2 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dx, ptr align 16 %i.dv, <4 x i1> %i.dq), !tbaa !137
  %exitcond657.not.2 = icmp eq i32 %i.dd, 3
  br i1 %exitcond657.not.2, label %.loopexit537, label %vector.body829.3

vector.body829.3:                                 ; preds = %vector.body829.2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %wide.masked.load.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dz, <4 x i1> %i.dq, <4 x float> poison), !tbaa !90
  %i.ea = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.3 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ea, ptr align 16 %i.dy, <4 x i1> %i.dq), !tbaa !137
  br label %.loopexit537

.loopexit537:                                     ; preds = %.preheader535.preheader, %vector.body829.1, %vector.body829.2, %vector.body829.3, %.preheader538.lr.ph, %.preheader539
  %i.eb = icmp eq i32 %i.cf, %i.aq
  br i1 %i.eb, label %.preheader533, label %.loopexit534

.preheader533:                                    ; preds = %.loopexit537
  br i1 %i.de, label %.preheader532.preheader, label %._crit_edge578

.preheader532.preheader:                          ; preds = %.preheader533
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cm, i64 33376
  %wide.trip.count666 = zext nneg i32 %invariant.smin to i64
  %trip.count.minus.1838 = add nsw i64 %wide.trip.count666, -1
  %broadcast.splatinsert839 = insertelement <4 x i64> poison, i64 %trip.count.minus.1838, i64 0
  %broadcast.splat840 = shufflevector <4 x i64> %broadcast.splatinsert839, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ed = icmp uge <4 x i64> %broadcast.splat840, <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %i.ee = load float, ptr %i.ec, align 8, !tbaa !90
  %i.ef = fpext reassoc nsz arcp contract afn float %i.ee to double
  %broadcast.splatinsert841 = insertelement <4 x double> poison, double %i.ef, i64 0
  %broadcast.splat842 = shufflevector <4 x double> %broadcast.splatinsert841, <4 x double> poison, <4 x i32> zeroinitializer
  %unmaskedload = load <4 x double>, ptr %i.b, align 16, !tbaa !137
  %i.eg = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload, %broadcast.splat842
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eg, ptr align 16 %i.b, <4 x i1> %i.ed), !tbaa !137
  %exitcond667.not = icmp eq i32 %i.dd, 1
  br i1 %exitcond667.not, label %.loopexit534, label %vector.body843.1

vector.body843.1:                                 ; preds = %.preheader532.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cm, i64 33380
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !90
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ei to double
  %broadcast.splatinsert841.1 = insertelement <4 x double> poison, double %i.ej, i64 0
  %broadcast.splat842.1 = shufflevector <4 x double> %broadcast.splatinsert841.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %unmaskedload1000 = load <4 x double>, ptr %i.ek, align 16, !tbaa !137
  %i.el = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1000, %broadcast.splat842.1
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.el, ptr align 16 %i.ek, <4 x i1> %i.ed), !tbaa !137
  %exitcond667.not.1 = icmp eq i32 %i.dd, 2
  br i1 %exitcond667.not.1, label %.loopexit534, label %vector.body843.2

vector.body843.2:                                 ; preds = %vector.body843.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.cm, i64 33384
  %i.en = load float, ptr %i.em, align 8, !tbaa !90
  %i.eo = fpext reassoc nsz arcp contract afn float %i.en to double
  %broadcast.splatinsert841.2 = insertelement <4 x double> poison, double %i.eo, i64 0
  %broadcast.splat842.2 = shufflevector <4 x double> %broadcast.splatinsert841.2, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %unmaskedload1001 = load <4 x double>, ptr %i.ep, align 16, !tbaa !137
  %i.eq = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1001, %broadcast.splat842.2
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eq, ptr align 16 %i.ep, <4 x i1> %i.ed), !tbaa !137
  %exitcond667.not.2 = icmp eq i32 %i.dd, 3
  br i1 %exitcond667.not.2, label %.loopexit534, label %vector.body843.3

vector.body843.3:                                 ; preds = %vector.body843.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.cm, i64 33388
  %i.es = load float, ptr %i.er, align 4, !tbaa !90
  %i.et = fpext reassoc nsz arcp contract afn float %i.es to double
  %broadcast.splatinsert841.3 = insertelement <4 x double> poison, double %i.et, i64 0
  %broadcast.splat842.3 = shufflevector <4 x double> %broadcast.splatinsert841.3, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %unmaskedload1002 = load <4 x double>, ptr %i.eu, align 16, !tbaa !137
  %i.ev = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1002, %broadcast.splat842.3
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ev, ptr align 16 %i.eu, <4 x i1> %i.ed), !tbaa !137
  br label %.loopexit534

.loopexit534:                                     ; preds = %.preheader532.preheader, %vector.body843.1, %vector.body843.2, %vector.body843.3, %.loopexit537
  br i1 %i.de, label %.preheader531.lr.ph, label %._crit_edge578

.preheader531.lr.ph:                              ; preds = %.loopexit534
  %wide.trip.count680 = zext nneg i32 %invariant.smin to i64 ; 9 uses
  %invariant.gep.us.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %invariant.gep.us.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %trip.count.minus.1853 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert854 = insertelement <4 x i64> poison, i64 %trip.count.minus.1853, i64 0
  %broadcast.splat855 = shufflevector <4 x i64> %broadcast.splatinsert854, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ew = icmp uge <4 x i64> %broadcast.splat855, <i64 0, i64 1, i64 2, i64 3> ; 8 uses
  %trip.count.minus.1884 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert885 = insertelement <4 x i64> poison, i64 %trip.count.minus.1884, i64 0
  %broadcast.splat886 = shufflevector <4 x i64> %broadcast.splatinsert885, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ex = icmp uge <4 x i64> %broadcast.splat886, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1003 = load <4 x double>, ptr %i.b, align 16, !tbaa !137
  %wide.gep892 = getelementptr inbounds nuw [24 x i8], ptr %i.c, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
end_hunk_0
begin_hunk_1_@_ZN6LibRaw27identify_process_dng_fieldsEv:bb.a
  %index.next953 = add nuw i64 %index950, 4       ; 2 uses
  %i.afk = icmp eq i64 %index.next953, %n.vec949
  br i1 %i.afk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.afl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afj) ; 2 uses
  %cmp.n954 = icmp eq i64 %n.vec949, %wide.trip.count733
  br i1 %cmp.n954, label %.critedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv728.ph = phi i64 [ 0, %iter.check ], [ %n.vec935, %vec.epilog.iter.check ], [ %n.vec949, %vec.epilog.middle.block ]
  %.0328619.ph = phi i32 [ 0, %iter.check ], [ %i.aff, %vec.epilog.iter.check ], [ %i.afl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block946
  %.lcssa = phi i32 [ %i.afl, %vec.epilog.middle.block ], [ %i.aff, %middle.block946 ], [ %i.afq, %vec.epilog.scalar.ph ]
  %i.afm = udiv i32 %.lcssa, %invariant.umin618
  br label %bb.ek

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %vec.epilog.scalar.ph ], [ %indvars.iv728.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0328619 = phi i32 [ %i.afq, %vec.epilog.scalar.ph ], [ %.0328619.ph, %vec.epilog.scalar.ph.preheader ]
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %indvars.iv728
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 24
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !81
  %i.afq = add i32 %i.afp, %.0328619              ; 2 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count733
  br i1 %exitcond734.not, label %.critedge, label %vec.epilog.scalar.ph, !llvm.loop !262

bb.ek:                                            ; preds = %.critedge, %._crit_edge615
  %.1 = phi i32 [ %i.afm, %.critedge ], [ 0, %._crit_edge615 ]
  br i1 %i.aej, label %vector.body964, label %._crit_edge627

vector.body964:                                   ; preds = %bb.ek
  %i.afr = add i32 %.1, %i.aeo
  %i.afs = add i32 %i.afr, %i.adk                 ; 2 uses
  %i.aft = sub i32 %.sink, %i.afs
  %i.afu = uitofp reassoc nsz arcp contract afn i32 %i.aft to float
  %i.afv = fmul reassoc nsz arcp contract afn float %i.aec, %i.afu
  %i.afw = sitofp reassoc nsz arcp contract afn i32 %i.afs to float
  %i.afx = fadd reassoc nsz arcp contract afn float %i.afv, %i.afw
  %i.afy = fptoui float %i.afx to i32
  %broadcast.splatinsert962 = insertelement <4 x i32> poison, i32 %i.afy, i64 0
  %broadcast.splat963 = shufflevector <4 x i32> %broadcast.splatinsert962, <4 x i32> poison, <4 x i32> zeroinitializer
  %wide.trip.count738 = zext nneg i32 %invariant.smin611 to i64
  %trip.count.minus.1959 = add nsw i64 %wide.trip.count738, -1
  %broadcast.splatinsert960 = insertelement <4 x i64> poison, i64 %trip.count.minus.1959, i64 0
  %broadcast.splat961 = shufflevector <4 x i64> %broadcast.splatinsert960, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.aga = icmp uge <4 x i64> %broadcast.splat961, <i64 0, i64 1, i64 2, i64 3>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %broadcast.splat963, ptr align 4 %i.afz, <4 x i1> %i.aga), !tbaa !81
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %vector.body964, %bb.ek
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !81 ; 2 uses
  %.not475 = icmp eq i32 %i.agc, 0
  br i1 %.not475, label %bb.en, label %bb.el

bb.el:                                            ; preds = %._crit_edge627
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 153112 ; 2 uses
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !81
  %.not476 = icmp eq i32 %i.age, 0
  br i1 %.not476, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 %i.agc, ptr %i.agd, align 8, !tbaa !81
  br label %bb.en

bb.en:                                            ; preds = %.thread515, %._crit_edge627, %bb.el, %bb.em, %.thread517, %bb.ej, %bb.a
  ret void
}

declare void @_ZN6LibRaw22SetStandardIlluminantsEjPKc(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw18sony_arw2_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18phase_one_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20phase_one_load_raw_sEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20phase_one_load_raw_cEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw12linear_tableEj(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10nikon_e995Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw11nikon_e2100Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw10nikon_3700Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10minolta_z2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw19canon_sraw_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare noundef i32 @_ZN6LibRaw10canon_s2isEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare noundef signext i16 @_ZN6LibRaw16guess_byte_orderEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN6LibRaw25unpacked_load_raw_FujiDBPEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw19hasselblad_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20sinar_4shot_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw17leaf_hdr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18panasonic_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw19kodak_c603_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw19kodak_c330_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw19kodak_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20kodak_dc120_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw15rollei_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f64.p0(<16 x double>, ptr captures(none), <16 x i1>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !106, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = distinct !{null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTS3$_0", !10, i64 0, !14, i64 8}
!16 = !{!15, !10, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!15, !14, i64 8}
!19 = !{!"p1 short", !13, i64 0}
!20 = !{!"short", !9, i64 0}
!21 = !{!"double", !9, i64 0}
!22 = !{!"_ZTS20libraw_image_sizes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !10, i64 16, !21, i64 24, !10, i64 32, !9, i64 36, !20, i64 164, !9, i64 166}
!23 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !10, i64 428, !14, i64 432}
!24 = !{!"float", !9, i64 0}
!25 = !{!"_ZTS18libraw_nikonlens_t", !24, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!27 = !{!"long long", !9, i64 0}
!28 = !{!"_ZTS24libraw_makernotes_lens_t", !27, i64 0, !9, i64 8, !20, i64 136, !20, i64 138, !27, i64 144, !20, i64 152, !20, i64 154, !9, i64 156, !20, i64 220, !9, i64 222, !9, i64 238, !24, i64 256, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !27, i64 320, !9, i64 328, !27, i64 456, !9, i64 464, !27, i64 592, !9, i64 600, !20, i64 728, !24, i64 732}
!29 = !{!"_ZTS17libraw_lensinfo_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !20, i64 532, !25, i64 536, !26, i64 544, !28, i64 560}
!30 = !{!"_ZTS13libraw_area_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!31 = !{!"_ZTS25libraw_canon_makernotes_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !9, i64 16, !10, i64 32, !9, i64 36, !20, i64 52, !20, i64 54, !9, i64 56, !20, i64 58, !20, i64 60, !20, i64 62, !20, i64 64, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !10, i64 84, !24, i64 88, !20, i64 92, !20, i64 94, !20, i64 96, !20, i64 98, !10, i64 100, !20, i64 104, !10, i64 108, !10, i64 112, !20, i64 116, !10, i64 120, !30, i64 124, !30, i64 132, !30, i64 140, !30, i64 148, !30, i64 156, !9, i64 164}
!32 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!33 = !{!"_ZTS25libraw_nikon_makernotes_t", !21, i64 0, !20, i64 8, !20, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !20, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !10, i64 148, !10, i64 152, !10, i64 156, !9, i64 160, !9, i64 162, !20, i64 170, !32, i64 172, !20, i64 180, !20, i64 182, !20, i64 184, !10, i64 188, !9, i64 192, !9, i64 212, !10, i64 232, !9, i64 236, !10, i64 248, !14, i64 256, !20, i64 264, !20, i64 266, !9, i64 268, !20, i64 270, !21, i64 272, !21, i64 280, !21, i64 288}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !10, i64 0, !21, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !9, i64 168, !9, i64 200, !10, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !24, i64 0, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !9, i64 20, !9, i64 53, !24, i64 88, !20, i64 92, !20, i64 94, !9, i64 96, !20, i64 100, !10, i64 104, !10, i64 108, !20, i64 112, !9, i64 114, !20, i64 120, !20, i64 122, !20, i64 124, !20, i64 126, !20, i64 128, !10, i64 132, !20, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !10, i64 164, !20, i64 168, !10, i64 172, !20, i64 176, !9, i64 178, !9, i64 196, !10, i64 324, !10, i64 328, !10, i64 332, !9, i64 336, !10, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !20, i64 6, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !9, i64 64, !9, i64 72, !20, i64 82, !9, i64 84, !20, i64 88, !20, i64 90, !9, i64 92, !9, i64 352, !20, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !20, i64 416, !20, i64 418, !20, i64 420, !20, i64 422, !21, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !10, i64 452, !20, i64 456, !20, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !20, i64 0, !9, i64 2, !9, i64 3, !10, i64 4, !9, i64 8, !10, i64 12, !9, i64 16, !9, i64 17, !20, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !20, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !20, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !20, i64 54, !10, i64 56, !20, i64 60, !9, i64 62, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !10, i64 80, !24, i64 84, !20, i64 88, !10, i64 92, !10, i64 96, !20, i64 100, !9, i64 102, !10, i64 124, !20, i64 128, !10, i64 132, !9, i64 136, !9, i64 137, !20, i64 138, !20, i64 140, !20, i64 142, !20, i64 144, !20, i64 146, !20, i64 148, !20, i64 150, !20, i64 152, !20, i64 154, !10, i64 156, !20, i64 160, !9, i64 162, !24, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !20, i64 228, !20, i64 230, !20, i64 232, !20, i64 234, !24, i64 236, !24, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !20, i64 0, !20, i64 2, !9, i64 4, !10, i64 36, !24, i64 40, !9, i64 44, !20, i64 56, !20, i64 58, !10, i64 60, !10, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !20, i64 12, !10, i64 16, !10, i64 20, !20, i64 24, !9, i64 26, !20, i64 30, !9, i64 32, !9, i64 33, !20, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !20, i64 0, !9, i64 4, !9, i64 12, !20, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !20, i64 40, !20, i64 42, !20, i64 44, !20, i64 46, !20, i64 48, !20, i64 50, !21, i64 56, !21, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !21, i64 88, !10, i64 96, !9, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !24, i64 52, !24, i64 56, !24, i64 60, !20, i64 64, !9, i64 66, !24, i64 196, !9, i64 200, !10, i64 296}
!45 = !{!"_ZTS19libraw_makernotes_t", !31, i64 0, !33, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!46 = !{!"_ZTS21libraw_shootinginfo_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !9, i64 14, !9, i64 78}
!47 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !24, i64 128, !24, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !9, i64 224, !10, i64 240, !10, i64 244, !24, i64 248, !24, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !24, i64 288, !24, i64 292, !10, i64 296, !10, i64 300}
!48 = !{!"any p2 pointer", !13, i64 0}
!49 = !{!"p2 omnipotent char", !48, i64 0}
!50 = !{!"_ZTS26libraw_raw_unpack_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !24, i64 28, !9, i64 32, !49, i64 40}
!51 = !{!"_ZTS5ph1_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !24, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !10, i64 0, !9, i64 4, !10, i64 16420, !9, i64 16424, !24, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !10, i64 32884, !9, i64 32888, !9, i64 32904, !24, i64 32920, !24, i64 32924, !9, i64 32928}
!53 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !10, i64 147488, !10, i64 147492, !10, i64 147496, !9, i64 147500, !24, i64 147516, !24, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !51, i64 147876, !24, i64 147912, !24, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !13, i64 148264, !10, i64 148272, !9, i64 148276, !9, i64 148308, !52, i64 148648, !9, i64 181624, !9, i64 185720, !10, i64 187000, !9, i64 187004, !10, i64 187076, !10, i64 187080}
!54 = !{!"long", !9, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !24, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!56 = !{!"_ZTS17libraw_imgother_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !54, i64 16, !10, i64 24, !9, i64 28, !55, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!58 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !20, i64 4, !20, i64 6, !10, i64 8, !10, i64 12, !14, i64 16}
!59 = !{!"_ZTS23libraw_thumbnail_list_t", !10, i64 0, !9, i64 8}
!60 = !{!"p1 float", !13, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !20, i64 12, !20, i64 14}
!62 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !19, i64 56, !19, i64 64, !23, i64 72, !22, i64 512, !61, i64 696, !53, i64 712}
!63 = !{!"_ZTS13libraw_data_t", !19, i64 0, !22, i64 8, !23, i64 192, !29, i64 632, !45, i64 1928, !46, i64 5088, !47, i64 5232, !50, i64 5536, !10, i64 5584, !10, i64 5588, !53, i64 5592, !56, i64 192680, !58, i64 193480, !59, i64 193504, !62, i64 193768, !13, i64 381568}
!64 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!67 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !10, i64 16, !14, i64 24, !27, i64 32, !27, i64 40, !9, i64 48}
!68 = !{!"p1 int", !13, i64 0}
!69 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!70 = !{!"_ZTS15identify_data_t", !10, i64 0, !27, i64 8, !27, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !20, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !20, i64 148, !20, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!73 = !{!"_ZTS15unpacker_data_t", !20, i64 0, !9, i64 2, !9, i64 10, !10, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !71, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !27, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !72, i64 192, !9, i64 440, !10, i64 2488, !10, i64 2492, !20, i64 2496, !20, i64 2498, !10, i64 2500, !10, i64 2504, !10, i64 2508, !10, i64 2512, !10, i64 2516, !10, i64 2520, !10, i64 2524, !9, i64 2528, !20, i64 2608}
!74 = !{!"_ZTS22libraw_internal_data_t", !67, i64 0, !61, i64 64, !69, i64 80, !70, i64 96, !73, i64 136}
!75 = !{!"p1 _ZTS6decode", !13, i64 0}
!76 = !{!"_ZTS13libraw_memmgr", !48, i64 0, !10, i64 8}
!77 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!78 = !{!"_ZTS6LibRaw", !63, i64 8, !64, i64 381584, !74, i64 381592, !9, i64 384344, !75, i64 433496, !75, i64 433504, !9, i64 433512, !76, i64 768232, !77, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !54, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!79 = !{!78, !10, i64 524}
!80 = !{!9, !9, i64 0}
!81 = !{!10, !10, i64 0}
!82 = !{!78, !10, i64 544}
!83 = !{!78, !10, i64 48}
!84 = !{!78, !10, i64 381716}
!85 = !{!20, !20, i64 0}
!86 = !{!78, !10, i64 153096}
!87 = !{!78, !27, i64 381696}
!88 = !{!78, !10, i64 381712}
!89 = !{!78, !20, i64 2920}
!90 = !{!24, !24, i64 0}
!91 = !{!"_ZTS18libraw_dng_color_t", !10, i64 0, !20, i64 4, !9, i64 8, !9, i64 72, !9, i64 120}
!92 = !{!91, !20, i64 4}
!93 = !{!78, !27, i64 381632}
!94 = !{!78, !10, i64 381840}
!95 = !{!78, !10, i64 153088}
!96 = !{!78, !54, i64 192704}
!97 = !{!78, !10, i64 381664}
!98 = !{!78, !21, i64 40}
!99 = !{!78, !10, i64 540}
!100 = !{!"llvm.loop.isvectorized", i32 1}
!101 = !{!"llvm.loop.unroll.runtime.disable"}
!102 = !{!78, !20, i64 381728}
!103 = !{!78, !65, i64 381592}
!104 = !{!"vtable pointer", !8, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!110 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !109, line: 109, baseType: !110)
!112 = !{!107, !108, !111, !107}
!113 = !DISubroutineType(types: !112)
!114 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !106, line: 102, type: !113, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!115 = !{!111, !108}
!116 = !DISubroutineType(types: !115)
!117 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !0, file: !106, line: 103, type: !116, scopeLine: 103, containingType: !0, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!118 = !{!78, !27, i64 381760}
!119 = !{!78, !9, i64 768416}
!120 = !{!78, !10, i64 193496}
!121 = !{!78, !10, i64 528}
!122 = !{!78, !10, i64 5556}
!123 = !{!78, !20, i64 18}
!124 = !{!78, !20, i64 16}
!125 = !{!78, !20, i64 22}
!126 = !{!78, !20, i64 20}
!127 = !{!78, !10, i64 381836}
!128 = !{!78, !20, i64 24}
!129 = !{!78, !20, i64 26}
!130 = !{!78, !10, i64 381860}
!131 = !{!78, !10, i64 532}
!132 = !{!78, !10, i64 381832}
!133 = !{!78, !27, i64 381704}
!134 = !{!78, !10, i64 5552}
!135 = !{!78, !20, i64 193494}
!136 = !{!78, !20, i64 193492}
!137 = !{!21, !21, i64 0}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = !{!78, !10, i64 5596}
!140 = !{!78, !10, i64 381828}
!141 = !{!78, !10, i64 381912}
!142 = !{!"p1 long long", !13, i64 0}
!143 = !{!"_ZTS10tiff_ifd_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !27, i64 32, !27, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !142, i64 72, !10, i64 80, !142, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !24, i64 124, !27, i64 128, !27, i64 136, !10, i64 144, !9, i64 148, !52, i64 488, !10, i64 33464}
!144 = !{!"_ZTS23libraw_raw_inset_crop_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!145 = !{!144, !20, i64 4}
!146 = !{!144, !20, i64 6}
!147 = !{!144, !20, i64 2}
!148 = !{!144, !20, i64 0}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17, !100, !101}
!154 = distinct !{!154, !17}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17, !100, !101}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !138}
!161 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw", file: !221, line: 188, size: 6148096, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6LibRaw")
!162 = !{!78, !49, i64 5584}
!163 = !{!78, !20, i64 381670}
!164 = !{!78, !10, i64 384216}
!165 = !{!78, !10, i64 384220}
!166 = !{!78, !20, i64 384224}
!167 = !{!78, !24, i64 4020}
!168 = !{!78, !24, i64 4824}
!169 = !{!78, !20, i64 2030}
!170 = !{!78, !27, i64 381792}
!171 = !{!78, !10, i64 192680}
!172 = !{!78, !10, i64 381808}
end_hunk_1
