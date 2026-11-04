Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
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
  %1 = alloca [2 x i32], align 4                  ; 5 uses
  %i.a = alloca [4 x [4 x double]], align 16      ; 24 uses
  %i.b = alloca [4 x [3 x double]], align 16      ; 9 uses
  %i.c = alloca [4 x [3 x double]], align 16      ; 15 uses
  %i.d = alloca [4 x i32], align 16               ; 10 uses
  %i.e = alloca [4 x i32], align 16               ; 10 uses
  %i.f = alloca [4 x i32], align 16               ; 17 uses
  %i.g = alloca [4 x i32], align 16               ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.em, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 186
  store <8 x i16> <i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0>, ptr %i.k, align 2, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  %i.v = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.u) ; 35 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.x = load i64, ptr %i.w, align 8, !tbaa !93
  %i.y = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.x) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 381712 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.ab = icmp slt i32 %i.v, %i.aa
  %i.ac = icmp sgt i32 %i.v, -1                   ; 2 uses
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %bb.c, label %.thread510

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !134
  %i.af = and i32 %i.ae, 64
  %.not399 = icmp eq i32 %i.af, 0
  br i1 %.not399, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ag = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 433660
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 433660 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !259 ; 3 uses
  %i.al = and i32 %i.ak, 2
  %.not410 = icmp eq i32 %i.al, 0
  br i1 %.not410, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !259
  %i.an = lshr i32 %i.am, 1
  %i.ao = and i32 %i.an, 1
  %sext412 = add nsw i32 %i.ao, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ap = phi i32 [ %sext412, %bb.e ], [ %i.v, %bb.d ] ; 8 uses
  %i.aq = and i32 %i.ak, 4
  %.not413 = icmp eq i32 %i.aq, 0
  br i1 %.not413, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !259
  %i.as = lshr i32 %i.ar, 2
  %i.at = and i32 %i.as, 1
  %sext415 = add nsw i32 %i.at, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.au = phi i32 [ %sext415, %bb.g ], [ %i.v, %bb.f ]
  %i.av = and i32 %i.ak, 8
  %.not416 = icmp eq i32 %i.av, 0
  br i1 %.not416, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !259
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = and i32 %i.ax, 1
  %sext418 = add nsw i32 %i.ay, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %sext418, %bb.i ], [ %i.v, %bb.h ]
  store i32 %i.az, ptr %1, align 4, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 433828
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !259 ; 3 uses
  %i.bc = and i32 %i.bb, 2
  %.not410.1 = icmp eq i32 %i.bc, 0
  br i1 %.not410.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !259
  %i.bf = lshr i32 %i.be, 1
  %i.bg = and i32 %i.bf, 1
  %sext412.1 = add nsw i32 %i.bg, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = phi i32 [ %sext412.1, %bb.k ], [ %i.v, %bb.j ]
  %i.bi = and i32 %i.bb, 4
  %.not413.1 = icmp eq i32 %i.bi, 0
  br i1 %.not413.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !259
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = and i32 %i.bl, 1
  %sext415.1 = add nsw i32 %i.bm, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = phi i32 [ %sext415.1, %bb.m ], [ %i.v, %bb.l ]
  %i.bo = and i32 %i.bb, 8
  %.not416.1 = icmp eq i32 %i.bo, 0
  br i1 %.not416.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !259
  %i.br = lshr i32 %i.bq, 3
  %i.bs = and i32 %i.br, 1
  %sext418.1 = add nsw i32 %i.bs, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bt = phi i32 [ %sext418.1, %bb.o ], [ %i.v, %bb.n ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bt, ptr %2, align 4, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.bv = getelementptr inbounds nuw [33472 x i8], ptr %i.bu, i64 %i.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 488
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !260
  %i.by = and i32 %i.bx, 16
  %.not400 = icmp eq i32 %i.by, 0
  br i1 %.not400, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !260
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = and i32 %i.cb, 1
  %sext = add nsw i32 %i.cc, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cd = phi i32 [ %sext, %bb.q ], [ %i.v, %bb.p ]
  %i.ce = icmp sgt i32 %i.ap, -1
  br i1 %i.ce, label %bb.s, label %5

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp slt i32 %i.ap, %i.aa
  %i.cg = icmp eq i32 %i.ap, %i.bh
  %or.cond489 = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ch = icmp eq i32 %i.ap, %i.au
  %or.cond491 = select i1 %or.cond489, i1 %i.ch, i1 false
  %i.ci = icmp eq i32 %i.ap, %i.bn
  %or.cond494 = select i1 %or.cond491, i1 %i.ci, i1 false
  br i1 %or.cond494, label %bb.t, label %5

bb.t:                                             ; preds = %bb.s
  %i.cj = zext nneg i32 %i.ap to i64
  %i.ck = getelementptr inbounds nuw [33472 x i8], ptr %i.bu, i64 %i.cj ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 148 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 152
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !92 ; 5 uses
  %.not402 = icmp eq i16 %i.cn, 0
  br i1 %.not402, label %5, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 320
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !92 ; 4 uses
  %.not403 = icmp eq i16 %i.cp, 0
  br i1 %.not403, label %5, label %.preheader543

.preheader543:                                    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !137
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cr, align 8, !tbaa !137
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.ct, align 16, !tbaa !137
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !137
  %i.cw = icmp eq i16 %i.cn, 21
  br i1 %i.cw, label %.preheader539, label %.preheader541.1

.preheader541.1:                                  ; preds = %.preheader543
  %i.cx = icmp eq i16 %i.cp, 21
  br i1 %i.cx, label %.preheader539, label %.preheader540.preheader

.preheader540.preheader:                          ; preds = %.preheader541.1
  %i.cy = icmp ult i16 %i.cn, 24
  br i1 %i.cy, label %switch.lookup, label %bb.v

switch.lookup:                                    ; preds = %.preheader540.preheader
  %i.cz = zext nneg i16 %i.cn to i64
  %i.da = getelementptr [4 x i8], ptr @switch.table._ZN6LibRaw27identify_process_dng_fieldsEv, i64 %i.cz
  %switch.gep = getelementptr i8, ptr %i.da, i64 -4
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.v

bb.v:                                             ; preds = %.preheader540.preheader, %switch.lookup
  %.2357 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %.preheader540.preheader ] ; 7 uses
  switch i16 %i.cn, label %.preheader540.1 [
    i16 23, label %.thread
    i16 22, label %.thread
    i16 20, label %.thread
    i16 4, label %.thread
    i16 1, label %.thread
  ]

.preheader540.1:                                  ; preds = %bb.v
  %i.db = icmp ult i16 %i.cp, 24
  br i1 %i.db, label %switch.hole_check, label %.thread

switch.hole_check:                                ; preds = %.preheader540.1
  %switch.tableidx970 = add nsw i16 %i.cp, -1
  %switch.maskindex = zext nneg i16 %switch.tableidx970 to i32
  %switch.shifted = lshr i32 6815753, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %spec.select = select i1 %switch.lobit, i32 1, i32 %.2357
  br label %.thread

.thread:                                          ; preds = %switch.hole_check, %.preheader540.1, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %.4359 = phi i32 [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %.preheader540.1 ], [ %spec.select, %switch.hole_check ] ; 2 uses
  %i.dc = icmp sgt i32 %.4359, -1
  br i1 %i.dc, label %.preheader539, label %bb.w

.preheader539:                                    ; preds = %.preheader541.1, %.preheader543, %.thread
  %.4359796 = phi i32 [ %.4359, %.thread ], [ 1, %.preheader541.1 ], [ 0, %.preheader543 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !99 ; 11 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.de, i32 4) ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0                   ; 3 uses
  br i1 %i.df, label %.preheader538.lr.ph, label %.loopexit537

.preheader538.lr.ph:                              ; preds = %.preheader539
  %i.dg = zext nneg i32 %.4359796 to i64          ; 3 uses
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dh = getelementptr inbounds nuw [168 x i8], ptr %i.cl, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.di, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.gep816 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 3 uses
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> %i.dj, <4 x float> poison), !tbaa !90
  %i.dk = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather to <4 x double>
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dk, <4 x ptr> align 8 %wide.gep816, <4 x i1> %i.dj), !tbaa !137
  %wide.gep817 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4
  %wide.masked.gather818 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep817, <4 x i1> %i.dj, <4 x float> poison), !tbaa !90
  %i.dl = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather818 to <4 x double>
  %wide.gep819 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep816, i64 8
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dl, <4 x ptr> align 8 %wide.gep819, <4 x i1> %i.dj), !tbaa !137
  %wide.gep820 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather821 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep820, <4 x i1> %i.dj, <4 x float> poison), !tbaa !90
  %i.dm = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.gather821 to <4 x double>
  %wide.gep822 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep816, i64 16
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.dm, <4 x ptr> align 8 %wide.gep822, <4 x i1> %i.dj), !tbaa !137
  %3 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %.not810 = icmp eq i32 %4, %i.ap
  br i1 %.not810, label %.preheader535.preheader, label %.loopexit537

.preheader535.preheader:                          ; preds = %.preheader538.lr.ph
  %i.dn = getelementptr inbounds nuw [168 x i8], ptr %i.cl, i64 %i.dg ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %trip.count.minus.1826 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert827 = insertelement <4 x i64> poison, i64 %trip.count.minus.1826, i64 0
  %broadcast.splat828 = shufflevector <4 x i64> %broadcast.splatinsert827, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dp = icmp uge <4 x i64> %broadcast.splat828, <i64 0, i64 1, i64 2, i64 3> ; 8 uses
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.do, <4 x i1> %i.dp, <4 x float> poison), !tbaa !90
  %i.dq = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dq, ptr align 16 %i.a, <4 x i1> %i.dp), !tbaa !137
  %exitcond657.not = icmp eq i32 %i.de, 1
  br i1 %exitcond657.not, label %.loopexit537, label %vector.body829.1

vector.body829.1:                                 ; preds = %.preheader535.preheader
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %wide.masked.load.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ds, <4 x i1> %i.dp, <4 x float> poison), !tbaa !90
  %i.dt = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.1 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dt, ptr align 16 %i.dr, <4 x i1> %i.dp), !tbaa !137
  %exitcond657.not.1 = icmp eq i32 %i.de, 2
  br i1 %exitcond657.not.1, label %.loopexit537, label %vector.body829.2

vector.body829.2:                                 ; preds = %vector.body829.1
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %wide.masked.load.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dv, <4 x i1> %i.dp, <4 x float> poison), !tbaa !90
  %i.dw = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.2 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dw, ptr align 16 %i.du, <4 x i1> %i.dp), !tbaa !137
  %exitcond657.not.2 = icmp eq i32 %i.de, 3
  br i1 %exitcond657.not.2, label %.loopexit537, label %vector.body829.3

vector.body829.3:                                 ; preds = %vector.body829.2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %wide.masked.load.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dy, <4 x i1> %i.dp, <4 x float> poison), !tbaa !90
  %i.dz = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load.3 to <4 x double>
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.dz, ptr align 16 %i.dx, <4 x i1> %i.dp), !tbaa !137
  br label %.loopexit537

.loopexit537:                                     ; preds = %.preheader535.preheader, %vector.body829.1, %vector.body829.2, %vector.body829.3, %.preheader538.lr.ph, %.preheader539
  %i.ea = icmp eq i32 %i.cd, %i.ap
  br i1 %i.ea, label %.preheader533, label %.loopexit534

.preheader533:                                    ; preds = %.loopexit537
  br i1 %i.df, label %.preheader532.preheader, label %._crit_edge578

.preheader532.preheader:                          ; preds = %.preheader533
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 33376
  %wide.trip.count666 = zext nneg i32 %invariant.smin to i64
  %trip.count.minus.1838 = add nsw i64 %wide.trip.count666, -1
  %broadcast.splatinsert839 = insertelement <4 x i64> poison, i64 %trip.count.minus.1838, i64 0
  %broadcast.splat840 = shufflevector <4 x i64> %broadcast.splatinsert839, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ec = icmp uge <4 x i64> %broadcast.splat840, <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %i.ed = load float, ptr %i.eb, align 8, !tbaa !90
  %i.ee = fpext reassoc nsz arcp contract afn float %i.ed to double
  %broadcast.splatinsert841 = insertelement <4 x double> poison, double %i.ee, i64 0
  %broadcast.splat842 = shufflevector <4 x double> %broadcast.splatinsert841, <4 x double> poison, <4 x i32> zeroinitializer
  %unmaskedload = load <4 x double>, ptr %i.a, align 16, !tbaa !137
  %i.ef = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload, %broadcast.splat842
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ef, ptr align 16 %i.a, <4 x i1> %i.ec), !tbaa !137
  %exitcond667.not = icmp eq i32 %i.de, 1
  br i1 %exitcond667.not, label %.loopexit534, label %vector.body843.1

vector.body843.1:                                 ; preds = %.preheader532.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ck, i64 33380
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !90
  %i.ei = fpext reassoc nsz arcp contract afn float %i.eh to double
  %broadcast.splatinsert841.1 = insertelement <4 x double> poison, double %i.ei, i64 0
  %broadcast.splat842.1 = shufflevector <4 x double> %broadcast.splatinsert841.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %unmaskedload1000 = load <4 x double>, ptr %i.ej, align 16, !tbaa !137
  %i.ek = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1000, %broadcast.splat842.1
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ek, ptr align 16 %i.ej, <4 x i1> %i.ec), !tbaa !137
  %exitcond667.not.1 = icmp eq i32 %i.de, 2
  br i1 %exitcond667.not.1, label %.loopexit534, label %vector.body843.2

vector.body843.2:                                 ; preds = %vector.body843.1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ck, i64 33384
  %i.em = load float, ptr %i.el, align 8, !tbaa !90
  %i.en = fpext reassoc nsz arcp contract afn float %i.em to double
  %broadcast.splatinsert841.2 = insertelement <4 x double> poison, double %i.en, i64 0
  %broadcast.splat842.2 = shufflevector <4 x double> %broadcast.splatinsert841.2, <4 x double> poison, <4 x i32> zeroinitializer
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %unmaskedload1001 = load <4 x double>, ptr %i.eo, align 16, !tbaa !137
  %i.ep = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1001, %broadcast.splat842.2
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ep, ptr align 16 %i.eo, <4 x i1> %i.ec), !tbaa !137
  %exitcond667.not.2 = icmp eq i32 %i.de, 3
  br i1 %exitcond667.not.2, label %.loopexit534, label %vector.body843.3

vector.body843.3:                                 ; preds = %vector.body843.2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ck, i64 33388
  %i.er = load float, ptr %i.eq, align 4, !tbaa !90
  %i.es = fpext reassoc nsz arcp contract afn float %i.er to double
  %broadcast.splatinsert841.3 = insertelement <4 x double> poison, double %i.es, i64 0
  %broadcast.splat842.3 = shufflevector <4 x double> %broadcast.splatinsert841.3, <4 x double> poison, <4 x i32> zeroinitializer
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %unmaskedload1002 = load <4 x double>, ptr %i.et, align 16, !tbaa !137
  %i.eu = fmul reassoc nsz arcp contract afn <4 x double> %unmaskedload1002, %broadcast.splat842.3
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.eu, ptr align 16 %i.et, <4 x i1> %i.ec), !tbaa !137
  br label %.loopexit534

.loopexit534:                                     ; preds = %.preheader532.preheader, %vector.body843.1, %vector.body843.2, %vector.body843.3, %.loopexit537
  br i1 %i.df, label %.preheader531.lr.ph, label %._crit_edge578

.preheader531.lr.ph:                              ; preds = %.loopexit534
  %wide.trip.count680 = zext nneg i32 %invariant.smin to i64 ; 9 uses
  %invariant.gep.us.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %invariant.gep.us.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %trip.count.minus.1853 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert854 = insertelement <4 x i64> poison, i64 %trip.count.minus.1853, i64 0
  %broadcast.splat855 = shufflevector <4 x i64> %broadcast.splatinsert854, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ev = icmp uge <4 x i64> %broadcast.splat855, <i64 0, i64 1, i64 2, i64 3> ; 8 uses
  %trip.count.minus.1884 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert885 = insertelement <4 x i64> poison, i64 %trip.count.minus.1884, i64 0
  %broadcast.splat886 = shufflevector <4 x i64> %broadcast.splatinsert885, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ew = icmp uge <4 x i64> %broadcast.splat886, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1003 = load <4 x double>, ptr %i.a, align 16, !tbaa !137
  %wide.gep892 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather893 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep892, <4 x i1> %i.ew, <4 x double> poison), !tbaa !137
  %i.ex = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather893, %unmaskedload1003
  %i.ey = select reassoc nsz arcp contract afn <4 x i1> %i.ew, <4 x double> %i.ex, <4 x double> zeroinitializer
  %i.ez = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ey)
  store double %i.ez, ptr %i.c, align 16, !tbaa !137
  %trip.count.minus.1868 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert869 = insertelement <4 x i64> poison, i64 %trip.count.minus.1868, i64 0
  %broadcast.splat870 = shufflevector <4 x i64> %broadcast.splatinsert869, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fb = icmp uge <4 x i64> %broadcast.splat870, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1004 = load <4 x double>, ptr %i.a, align 16, !tbaa !137
  %wide.gep876 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather877 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep876, <4 x i1> %i.fb, <4 x double> poison), !tbaa !137
  %i.fc = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather877, %unmaskedload1004
  %i.fd = select reassoc nsz arcp contract afn <4 x i1> %i.fb, <4 x double> %i.fc, <4 x double> zeroinitializer
  %i.fe = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fd)
  store double %i.fe, ptr %i.fa, align 8, !tbaa !137
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %unmaskedload1005 = load <4 x double>, ptr %i.a, align 16, !tbaa !137
  %wide.gep860 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.2, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather861 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep860, <4 x i1> %i.ev, <4 x double> poison), !tbaa !137
  %i.fg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather861, %unmaskedload1005
  %i.fh = select reassoc nsz arcp contract afn <4 x i1> %i.ev, <4 x double> %i.fg, <4 x double> zeroinitializer
  %i.fi = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fh)
  store double %i.fi, ptr %i.ff, align 16, !tbaa !137
  %exitcond681.not = icmp eq i32 %i.de, 1
  br i1 %exitcond681.not, label %._crit_edge578, label %.lr.ph.us.preheader.1

.lr.ph.us.preheader.1:                            ; preds = %.preheader531.lr.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %trip.count.minus.1884.1 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert885.1 = insertelement <4 x i64> poison, i64 %trip.count.minus.1884.1, i64 0
  %broadcast.splat886.1 = shufflevector <4 x i64> %broadcast.splatinsert885.1, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fl = icmp uge <4 x i64> %broadcast.splat886.1, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1006 = load <4 x double>, ptr %i.fj, align 16, !tbaa !137
  %wide.gep892.1 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather893.1 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep892.1, <4 x i1> %i.fl, <4 x double> poison), !tbaa !137
  %i.fm = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather893.1, %unmaskedload1006
  %i.fn = select reassoc nsz arcp contract afn <4 x i1> %i.fl, <4 x double> %i.fm, <4 x double> zeroinitializer
  %i.fo = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fn)
  store double %i.fo, ptr %i.fk, align 8, !tbaa !137
  %trip.count.minus.1868.1 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert869.1 = insertelement <4 x i64> poison, i64 %trip.count.minus.1868.1, i64 0
  %broadcast.splat870.1 = shufflevector <4 x i64> %broadcast.splatinsert869.1, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fq = icmp uge <4 x i64> %broadcast.splat870.1, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1007 = load <4 x double>, ptr %i.fj, align 16, !tbaa !137
  %wide.gep876.1 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather877.1 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep876.1, <4 x i1> %i.fq, <4 x double> poison), !tbaa !137
  %i.fr = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather877.1, %unmaskedload1007
  %i.fs = select reassoc nsz arcp contract afn <4 x i1> %i.fq, <4 x double> %i.fr, <4 x double> zeroinitializer
  %i.ft = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fs)
  store double %i.ft, ptr %i.fp, align 16, !tbaa !137
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %unmaskedload1008 = load <4 x double>, ptr %i.fj, align 16, !tbaa !137
  %wide.gep860.1 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.2, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather861.1 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep860.1, <4 x i1> %i.ev, <4 x double> poison), !tbaa !137
  %i.fv = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather861.1, %unmaskedload1008
  %i.fw = select reassoc nsz arcp contract afn <4 x i1> %i.ev, <4 x double> %i.fv, <4 x double> zeroinitializer
  %i.fx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fw)
  store double %i.fx, ptr %i.fu, align 8, !tbaa !137
  %exitcond681.not.1 = icmp eq i32 %i.de, 2
  br i1 %exitcond681.not.1, label %._crit_edge578, label %.lr.ph.us.preheader.2

.lr.ph.us.preheader.2:                            ; preds = %.lr.ph.us.preheader.1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %trip.count.minus.1884.2 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert885.2 = insertelement <4 x i64> poison, i64 %trip.count.minus.1884.2, i64 0
  %broadcast.splat886.2 = shufflevector <4 x i64> %broadcast.splatinsert885.2, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ga = icmp uge <4 x i64> %broadcast.splat886.2, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1009 = load <4 x double>, ptr %i.fy, align 16, !tbaa !137
  %wide.gep892.2 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather893.2 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep892.2, <4 x i1> %i.ga, <4 x double> poison), !tbaa !137
  %i.gb = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather893.2, %unmaskedload1009
  %i.gc = select reassoc nsz arcp contract afn <4 x i1> %i.ga, <4 x double> %i.gb, <4 x double> zeroinitializer
  %i.gd = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gc)
  store double %i.gd, ptr %i.fz, align 16, !tbaa !137
  %trip.count.minus.1868.2 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert869.2 = insertelement <4 x i64> poison, i64 %trip.count.minus.1868.2, i64 0
  %broadcast.splat870.2 = shufflevector <4 x i64> %broadcast.splatinsert869.2, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.gf = icmp uge <4 x i64> %broadcast.splat870.2, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1010 = load <4 x double>, ptr %i.fy, align 16, !tbaa !137
  %wide.gep876.2 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather877.2 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep876.2, <4 x i1> %i.gf, <4 x double> poison), !tbaa !137
  %i.gg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather877.2, %unmaskedload1010
  %i.gh = select reassoc nsz arcp contract afn <4 x i1> %i.gf, <4 x double> %i.gg, <4 x double> zeroinitializer
  %i.gi = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gh)
  store double %i.gi, ptr %i.ge, align 8, !tbaa !137
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %unmaskedload1011 = load <4 x double>, ptr %i.fy, align 16, !tbaa !137
  %wide.gep860.2 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.2, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather861.2 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep860.2, <4 x i1> %i.ev, <4 x double> poison), !tbaa !137
  %i.gk = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather861.2, %unmaskedload1011
  %i.gl = select reassoc nsz arcp contract afn <4 x i1> %i.ev, <4 x double> %i.gk, <4 x double> zeroinitializer
  %i.gm = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gl)
  store double %i.gm, ptr %i.gj, align 16, !tbaa !137
  %exitcond681.not.2 = icmp eq i32 %i.de, 3
  br i1 %exitcond681.not.2, label %._crit_edge578, label %.lr.ph.us.preheader.3

.lr.ph.us.preheader.3:                            ; preds = %.lr.ph.us.preheader.2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %trip.count.minus.1884.3 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert885.3 = insertelement <4 x i64> poison, i64 %trip.count.minus.1884.3, i64 0
  %broadcast.splat886.3 = shufflevector <4 x i64> %broadcast.splatinsert885.3, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gp = icmp uge <4 x i64> %broadcast.splat886.3, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1012 = load <4 x double>, ptr %i.gn, align 16, !tbaa !137
  %wide.gep892.3 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather893.3 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep892.3, <4 x i1> %i.gp, <4 x double> poison), !tbaa !137
  %i.gq = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather893.3, %unmaskedload1012
  %i.gr = select reassoc nsz arcp contract afn <4 x i1> %i.gp, <4 x double> %i.gq, <4 x double> zeroinitializer
  %i.gs = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gr)
  store double %i.gs, ptr %i.go, align 8, !tbaa !137
  %trip.count.minus.1868.3 = add nsw i64 %wide.trip.count680, -1
  %broadcast.splatinsert869.3 = insertelement <4 x i64> poison, i64 %trip.count.minus.1868.3, i64 0
  %broadcast.splat870.3 = shufflevector <4 x i64> %broadcast.splatinsert869.3, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.gu = icmp uge <4 x i64> %broadcast.splat870.3, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %unmaskedload1013 = load <4 x double>, ptr %i.gn, align 16, !tbaa !137
  %wide.gep876.3 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather877.3 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep876.3, <4 x i1> %i.gu, <4 x double> poison), !tbaa !137
  %i.gv = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather877.3, %unmaskedload1013
  %i.gw = select reassoc nsz arcp contract afn <4 x i1> %i.gu, <4 x double> %i.gv, <4 x double> zeroinitializer
  %i.gx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gw)
  store double %i.gx, ptr %i.gt, align 16, !tbaa !137
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %unmaskedload1014 = load <4 x double>, ptr %i.gn, align 16, !tbaa !137
  %wide.gep860.3 = getelementptr inbounds nuw [24 x i8], ptr %invariant.gep.us.2, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather861.3 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep860.3, <4 x i1> %i.ev, <4 x double> poison), !tbaa !137
  %i.gz = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather861.3, %unmaskedload1014
  %i.ha = select reassoc nsz arcp contract afn <4 x i1> %i.ev, <4 x double> %i.gz, <4 x double> zeroinitializer
  %i.hb = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ha)
  store double %i.hb, ptr %i.gy, align 8, !tbaa !137
  br label %._crit_edge578

._crit_edge578:                                   ; preds = %.preheader531.lr.ph, %.lr.ph.us.preheader.1, %.lr.ph.us.preheader.2, %.lr.ph.us.preheader.3, %.preheader533, %.loopexit534
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 153284
  call void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge578, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %5

5:                                                ; preds = %bb.w, %bb.u, %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.x

bb.x:                                             ; preds = %5, %bb.c
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !79
  %i.hf = icmp eq i32 %i.he, 18
  br i1 %i.hf, label %bb.y, label %.critedge496

bb.y:                                             ; preds = %bb.x
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.hh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hg, ptr noundef nonnull dereferenceable(6) @.str.53) #20
  %.not419 = icmp eq i32 %i.hh, 0
  br i1 %.not419, label %.critedge498, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hg, ptr noundef nonnull dereferenceable(6) @.str.54) #20
  %.not420 = icmp eq i32 %i.hi, 0
  br i1 %.not420, label %.critedge498, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hg, ptr noundef nonnull dereferenceable(6) @.str.55) #20
  %.not421 = icmp eq i32 %i.hj, 0
  br i1 %.not421, label %.critedge498, label %.critedge496

.critedge496:                                     ; preds = %bb.x, %bb.aa
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.hl = zext nneg i32 %i.v to i64
  %i.hm = getelementptr inbounds nuw [33472 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 488
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !260 ; 3 uses
  %i.hp = and i32 %i.ho, 512
  %.not422 = icmp eq i32 %i.hp, 0
  br i1 %.not422, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge496
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !260
  %i.hs = lshr i32 %i.hr, 9
  %i.ht = and i32 %i.hs, 1
  %sext424 = add nsw i32 %i.ht, -1
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge496, %bb.ab
  %i.hu = phi i32 [ %sext424, %bb.ab ], [ %i.v, %.critedge496 ] ; 4 uses
  %i.hv = and i32 %i.ho, 1024
  %.not425 = icmp eq i32 %i.hv, 0
  br i1 %.not425, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !260
  %i.hy = lshr i32 %i.hx, 10
  %i.hz = and i32 %i.hy, 1
  %sext427 = add nsw i32 %i.hz, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ia = phi i32 [ %sext427, %bb.ad ], [ %i.v, %bb.ac ]
  %i.ib = icmp sgt i32 %i.hu, -1
  %i.ic = icmp eq i32 %i.hu, %i.ia
  %or.cond499 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond499, label %bb.af, label %.critedge498

bb.af:                                            ; preds = %bb.ae
  %i.id = zext nneg i32 %i.hu to i64
  %i.ie = getelementptr inbounds nuw [33472 x i8], ptr %i.hk, i64 %i.id ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 33348
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 33352
  %i.ih = load i16, ptr %i.ig, align 8, !tbaa !85 ; 4 uses
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %.not428 = icmp eq i16 %i.ih, 0
  br i1 %.not428, label %.critedge498, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 33354
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !85 ; 4 uses
  %i.il = zext i16 %i.ik to i32                   ; 2 uses
  %.not429 = icmp eq i16 %i.ik, 0
  br i1 %.not429, label %.critedge498, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.im = load i16, ptr %i.if, align 4, !tbaa !85 ; 2 uses
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 33350
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !85 ; 2 uses
  %i.iq = add nuw nsw i32 %i.in, %i.ii
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !123
  %i.it = zext i16 %i.is to i32
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !129 ; 2 uses
  %i.iw = zext i16 %i.iv to i32
  %i.ix = add nuw nsw i32 %i.iw, %i.it
  %i.iy = icmp samesign ult i32 %i.iq, %i.ix
  br i1 %i.iy, label %bb.ai, label %.critedge498

bb.ai:                                            ; preds = %bb.ah
  %i.iz = zext i16 %i.ip to i32
  %i.ja = add nuw nsw i32 %i.iz, %i.il
  %i.jb = load i16, ptr %i.j, align 8, !tbaa !124
  %i.jc = zext i16 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.je = load i16, ptr %i.jd, align 8, !tbaa !128 ; 2 uses
  %i.jf = zext i16 %i.je to i32
  %i.jg = add nuw nsw i32 %i.jf, %i.jc
  %i.jh = icmp samesign ult i32 %i.ja, %i.jg
  br i1 %i.jh, label %bb.aj, label %.critedge498

bb.aj:                                            ; preds = %bb.ai
  %i.ji = add i16 %i.iv, %i.im                    ; 2 uses
  store i16 %i.ji, ptr %i.k, align 2, !tbaa !147
  store i16 %i.ih, ptr %i.r, align 2, !tbaa !144
  %i.jj = add i16 %i.je, %i.ip                    ; 2 uses
  store i16 %i.jj, ptr %i.n, align 8, !tbaa !146
  store i16 %i.ik, ptr %i.q, align 4, !tbaa !145
  %i.jk = and i32 %i.ho, 32768
  %.not430 = icmp eq i32 %i.jk, 0
  br i1 %.not430, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !260
  %i.jn = lshr i32 %i.jm, 15
  %i.jo = and i32 %i.jn, 1
  %sext432 = add nsw i32 %i.jo, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.jp = phi i32 [ %sext432, %bb.ak ], [ %i.v, %bb.aj ] ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  %i.jr = icmp eq i32 %i.jp, %i.hu
  %or.cond500 = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond500, label %bb.am, label %.critedge498

bb.am:                                            ; preds = %bb.al
  %i.js = insertelement <2 x i16> poison, i16 %i.ik, i64 0
  %i.jt = insertelement <2 x i16> %i.js, i16 %i.ih, i64 1
  %i.ju = uitofp <2 x i16> %i.jt to <2 x float>   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ie, i64 33356
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ie, i64 33364
  %i.jx = load <2 x float>, ptr %i.jv, align 4, !tbaa !90
  %i.jy = fmul reassoc nsz arcp contract afn <2 x float> %i.jx, %i.ju
  %i.jz = fptosi <2 x float> %i.jy to <2 x i32>   ; 3 uses
  %i.ka = load <2 x float>, ptr %i.jw, align 4, !tbaa !90
  %i.kb = fmul reassoc nsz arcp contract afn <2 x float> %i.ka, %i.ju
  %i.kc = fptosi <2 x float> %i.kb to <2 x i32>
  %i.kd = sub nsw <2 x i32> %i.kc, %i.jz          ; 3 uses
  %i.ke = shufflevector <2 x i32> %i.kd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.kf = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, i32 %i.il, i64 0
  %i.kg = insertelement <4 x i32> %i.kf, i32 %i.ii, i64 1 ; 2 uses
  %i.kh = icmp slt <4 x i32> %i.ke, %i.kg
  %i.ki = icmp sgt <4 x i32> %i.ke, %i.kg
  %i.kj = shufflevector <4 x i1> %i.kh, <4 x i1> %i.ki, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kk = freeze <4 x i1> %i.kj
  %i.kl = bitcast <4 x i1> %i.kk to i4
  %i.km = icmp eq i4 %i.kl, -1
  br i1 %i.km, label %bb.an, label %.critedge498

bb.an:                                            ; preds = %bb.am
  %i.kn = bitcast <2 x i32> %i.jz to <4 x i16>
  %i.ko = extractelement <4 x i16> %i.kn, i64 2
  %i.kp = add i16 %i.ji, %i.ko
  store i16 %i.kp, ptr %i.l, align 2, !tbaa !147
  %i.kq = bitcast <2 x i32> %i.kd to <4 x i16>
  %i.kr = extractelement <4 x i16> %i.kq, i64 2
  store i16 %i.kr, ptr %i.p, align 2, !tbaa !144
  %i.ks = bitcast <2 x i32> %i.jz to <4 x i16>
  %i.kt = extractelement <4 x i16> %i.ks, i64 0
  %i.ku = add i16 %i.jj, %i.kt
  store i16 %i.ku, ptr %i.m, align 8, !tbaa !146
  %i.kv = bitcast <2 x i32> %i.kd to <4 x i16>
  %i.kw = extractelement <4 x i16> %i.kv, i64 0
  store i16 %i.kw, ptr %i.o, align 4, !tbaa !145
  br label %.critedge498

.critedge498:                                     ; preds = %bb.z, %bb.y, %bb.ae, %bb.af, %bb.ag, %bb.al, %bb.an, %bb.am, %bb.ai, %bb.ah, %bb.aa
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 153908
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !259
  %i.kz = and i32 %i.ky, 1
  %.not433 = icmp eq i32 %i.kz, 0
  br i1 %.not433, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.critedge498
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.lb = zext nneg i32 %i.v to i64
  %i.lc = getelementptr inbounds nuw [33472 x i8], ptr %i.la, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 148
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !259
  %i.lf = and i32 %i.le, 1
  %.not434 = icmp eq i32 %i.lf, 0
  br i1 %.not434, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 433660
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !259
  %i.li = and i32 %i.lh, 1
  %sext436 = add nsw i32 %i.li, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.lj = phi i32 [ %sext436, %bb.ap ], [ %i.v, %bb.ao ] ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, -1
  br i1 %i.lk, label %bb.ar, label %bb.as
end_hunk_0
