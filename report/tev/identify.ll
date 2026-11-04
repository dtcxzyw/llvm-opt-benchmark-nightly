Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.auw, align 8, !tbaa !78
  tail call void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2)
  br label %.loopexit

bb.pj:                                            ; preds = %bb.nv
  %i.aux = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aqk, ptr noundef nonnull dereferenceable(10) @.str.170, i64 noundef 9) #16
  %.not285 = icmp eq i32 %i.aux, 0
  br i1 %.not285, label %bb.pk, label %.thread405

bb.pk:                                            ; preds = %bb.pj
  %i.auy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !76
  %.not286 = icmp eq i8 %i.auz, 0
  br i1 %.not286, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 278
  store i32 3158066, ptr %i.ava, align 2
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.avc = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.avb, ptr noundef nonnull dereferenceable(1) %i.aqk) #15 ; 0 uses
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !99 ; 2 uses
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !101
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 32
  %i.avh = load ptr, ptr %i.avg, align 8
  %i.avi = tail call noundef i32 %i.avh(ptr noundef nonnull align 8 dereferenceable(8) %i.ave, i64 noundef 544, i32 noundef 0) ; 0 uses
  %i.avj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i16 %i.avj, ptr %i.avk, align 4, !tbaa !110
  %i.avl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  store i16 %i.avl, ptr %i.avm, align 2, !tbaa !109
  %i.avn = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.avo = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.avp = icmp eq i16 %i.avo, 30
  %i.avq = select i1 %i.avp, i64 738, i64 736     ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 %i.avq, ptr %i.avr, align 8, !tbaa !102
  %i.avs = load i16, ptr %i.avk, align 4, !tbaa !110 ; 2 uses
  %i.avt = load i16, ptr %i.avm, align 2, !tbaa !109 ; 2 uses
  %i.avu = icmp ugt i16 %i.avs, %i.avt
  br i1 %i.avu, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  store i16 %i.avs, ptr %i.avm, align 2, !tbaa !109
  store i16 %i.avt, ptr %i.avk, align 4, !tbaa !110
  %i.avv = load ptr, ptr %i.avd, align 8, !tbaa !99 ; 2 uses
  %i.avw = add nsw i64 %i.avq, -6
  %i.avx = load ptr, ptr %i.avv, align 8, !tbaa !101
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 32
  %i.avz = load ptr, ptr %i.avy, align 8
  %i.awa = tail call noundef i32 %i.avz(ptr noundef nonnull align 8 dereferenceable(8) %i.avv, i64 noundef %i.avw, i32 noundef 0) ; 0 uses
  %i.awb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awc = and i16 %i.awb, 3
  %.not287 = icmp eq i16 %i.awc, 3
  %i.awd = select i1 %.not287, i32 6, i32 5
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.awd, ptr %i.awe, align 8, !tbaa !79
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.awf, align 8, !tbaa !78
  br label %.loopexit

bb.pp:                                            ; preds = %bb.nv
  %.not291 = icmp eq i64 %.unpack277, 0
  br i1 %.not291, label %bb.pq, label %.thread405

bb.pq:                                            ; preds = %bb.pp
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.awh = load i16, ptr %i.awg, align 2, !tbaa !107
  switch i16 %i.awh, label %bb.ps [
    i16 1316, label %.sink.split599
    i16 2568, label %bb.pr
  ]

bb.pr:                                            ; preds = %bb.pq
  br label %.sink.split599

.sink.split599:                                   ; preds = %bb.pq, %bb.pr
  %i.awi = phi <4 x i16> [ <i16 1960, i16 2560, i16 2, i16 8>, %bb.pr ], [ <i16 1030, i16 1300, i16 1, i16 6>, %bb.pq ]
  %i.awj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x i16> %i.awi, ptr %i.awj, align 4, !tbaa !81
  br label %bb.ps

bb.ps:                                            ; preds = %.sink.split599, %bb.pq
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.awk, align 8, !tbaa !78
  store i64 ptrtoint (ptr @_ZN6LibRaw15rollei_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  br label %.loopexit

.thread405:                                       ; preds = %bb.nv, %bb.ph, %bb.pj, %bb.pp
  %i.awl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aqk, ptr noundef nonnull dereferenceable(11) @.str.172) #16
  %.not293 = icmp eq i32 %i.awl, 0
  br i1 %.not293, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %.thread405
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2048, ptr %i.awm, align 4, !tbaa !110
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2440, ptr %i.awn, align 2, !tbaa !109
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.awp = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.awp, align 8, !tbaa !102
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1229539657, ptr %i.awq, align 8, !tbaa !78
  store i16 18761, ptr %i.awo, align 8, !tbaa !98
  %i.awr = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 65532, ptr %i.awr, align 8, !tbaa !82
  br label %.loopexit

bb.pu:                                            ; preds = %.thread405
  %i.aws = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aqk, ptr noundef nonnull dereferenceable(9) @.str.173) #16
  %.not295 = icmp eq i32 %i.aws, 0
  br i1 %.not295, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2058, ptr %i.awt, align 4, !tbaa !110
  %i.awu = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2448, ptr %i.awu, align 2, !tbaa !109
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.aww = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.aww, align 8, !tbaa !102
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.awx, align 8, !tbaa !78
  store i16 18761, ptr %i.awv, align 8, !tbaa !98
  %i.awy = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.awy, align 8, !tbaa !82
  br label %.loopexit

bb.pw:                                            ; preds = %bb.pu
  %i.awz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aqk, ptr noundef nonnull dereferenceable(9) @.str.174) #16
  %.not297 = icmp eq i32 %i.awz, 0
  br i1 %.not297, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2058, ptr %i.axa, align 4, !tbaa !110
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2456, ptr %i.axb, align 2, !tbaa !109
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.axd, align 8, !tbaa !102
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.axe, align 8, !tbaa !78
  store i16 18761, ptr %i.axc, align 8, !tbaa !98
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.axf, align 8, !tbaa !82
  br label %.loopexit

bb.py:                                            ; preds = %bb.pw
  %i.axg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aqk, ptr noundef nonnull dereferenceable(9) @.str.175) #16
  %.not299 = icmp eq i32 %i.axg, 0
  br i1 %.not299, label %bb.pz, label %.loopexit

bb.pz:                                            ; preds = %bb.py
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2050, ptr %i.axh, align 4, !tbaa !110
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2448, ptr %i.axi, align 2, !tbaa !109
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.aef, align 8, !tbaa !103
  store i64 0, ptr %.elt278, align 8, !tbaa !103
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 0, ptr %i.axk, align 8, !tbaa !102
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1802201964, ptr %i.axl, align 8, !tbaa !78
  store i16 18761, ptr %i.axj, align 8, !tbaa !98
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.axm, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit508, %.loopexit.loopexit, %bb.ll, %bb.kp, %bb.ko, %bb.kn, %bb.kr, %bb.kq, %bb.kh, %bb.ki, %bb.lf, %bb.nu, %bb.pi, %bb.ps, %bb.pv, %bb.py, %bb.pz, %bb.px, %bb.pt, %bb.po, %bb.nx, %bb.pb, %bb.pf, %bb.pg, %bb.pe, %bb.oh, %bb.lh, %bb.lm, %bb.lo, %bb.lq, %bb.lp, %bb.ln, %bb.lt, %bb.ly, %bb.lx, %bb.md, %bb.mf, %bb.mh, %bb.mg, %bb.me, %bb.mc, %bb.mm, %bb.mo, %bb.mw, %bb.mz, %bb.nb, %.thread402, %bb.na, %bb.my, %bb.mv, %bb.nn, %bb.no, %bb.nm, %bb.nt, %bb.np, %bb.ne, %bb.nh, %bb.nj, %bb.nk, %bb.ni, %bb.ng, %bb.mq, %bb.mr, %bb.ms, %bb.mn, %bb.mk, %bb.ml, %bb.lz, %bb.lw, %bb.ls, %bb.lj, %._crit_edge, %bb.jw, %bb.jx, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw27identify_process_dng_fieldsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca [2 x i32], align 4                  ; 5 uses
  %i.a = alloca [4 x [3 x double]], align 16      ; 15 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = alloca [4 x i32], align 16               ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.fy, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 186
  store <8 x i16> <i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0>, ptr %i.g, align 2, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.p = load i64, ptr %i.o, align 8, !tbaa !102
  %i.q = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.p) ; 35 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 381632
  %i.s = load i64, ptr %i.r, align 8, !tbaa !89
  %i.t = tail call noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.s) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 381712 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = icmp slt i32 %i.q, %i.v
  %i.x = icmp sgt i32 %i.q, -1                    ; 2 uses
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.c, label %.thread510

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.z = load i32, ptr %i.y, align 8, !tbaa !118
  %i.aa = and i32 %i.z, 64
  %.not399 = icmp eq i32 %i.aa, 0
  br i1 %.not399, label %bb.d, label %bb.ax

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.ab = zext nneg i32 %i.q to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw [33472 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 433660
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 433660 ; 3 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !221 ; 3 uses
  %i.ag = and i32 %i.af, 2
  %.not410 = icmp eq i32 %i.ag, 0
  br i1 %.not410, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !221
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = and i32 %i.ai, 1
  %sext412 = add nsw i32 %i.aj, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = phi i32 [ %sext412, %bb.e ], [ %i.q, %bb.d ] ; 8 uses
  %i.al = and i32 %i.af, 4
  %.not413 = icmp eq i32 %i.al, 0
  br i1 %.not413, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !221
  %i.an = lshr i32 %i.am, 2
  %i.ao = and i32 %i.an, 1
  %sext415 = add nsw i32 %i.ao, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ap = phi i32 [ %sext415, %bb.g ], [ %i.q, %bb.f ]
  %i.aq = and i32 %i.af, 8
  %.not416 = icmp eq i32 %i.aq, 0
  br i1 %.not416, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !221
  %i.as = lshr i32 %i.ar, 3
  %i.at = and i32 %i.as, 1
  %sext418 = add nsw i32 %i.at, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.au = phi i32 [ %sext418, %bb.i ], [ %i.q, %bb.h ]
  store i32 %i.au, ptr %1, align 4, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 433828
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !221 ; 3 uses
  %i.ax = and i32 %i.aw, 2
  %.not410.1 = icmp eq i32 %i.ax, 0
  br i1 %.not410.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !221
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 1
  %sext412.1 = add nsw i32 %i.bb, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = phi i32 [ %sext412.1, %bb.k ], [ %i.q, %bb.j ]
  %i.bd = and i32 %i.aw, 4
  %.not413.1 = icmp eq i32 %i.bd, 0
  br i1 %.not413.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !221
  %i.bg = lshr i32 %i.bf, 2
  %i.bh = and i32 %i.bg, 1
  %sext415.1 = add nsw i32 %i.bh, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = phi i32 [ %sext415.1, %bb.m ], [ %i.q, %bb.l ]
  %i.bj = and i32 %i.aw, 8
  %.not416.1 = icmp eq i32 %i.bj, 0
  br i1 %.not416.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 433828
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !221
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = and i32 %i.bm, 1
  %sext418.1 = add nsw i32 %i.bn, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi i32 [ %sext418.1, %bb.o ], [ %i.q, %bb.n ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bo, ptr %2, align 4, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.bq = getelementptr inbounds nuw [33472 x i8], ptr %i.bp, i64 %i.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 488
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !222
  %i.bt = and i32 %i.bs, 16
  %.not400 = icmp eq i32 %i.bt, 0
  br i1 %.not400, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !222
  %i.bw = lshr i32 %i.bv, 4
  %i.bx = and i32 %i.bw, 1
  %sext = add nsw i32 %i.bx, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.by = phi i32 [ %sext, %bb.q ], [ %i.q, %bb.p ]
  %i.bz = icmp sgt i32 %i.ak, -1
  br i1 %i.bz, label %bb.s, label %bb.aw

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp slt i32 %i.ak, %i.v
  %i.cb = icmp eq i32 %i.ak, %i.bc
  %or.cond489 = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = icmp eq i32 %i.ak, %i.ap
  %or.cond491 = select i1 %or.cond489, i1 %i.cc, i1 false
  %i.cd = icmp eq i32 %i.ak, %i.bi
  %or.cond494 = select i1 %or.cond491, i1 %i.cd, i1 false
  br i1 %or.cond494, label %bb.t, label %bb.aw

bb.t:                                             ; preds = %bb.s
  %i.ce = zext nneg i32 %i.ak to i64
  %i.cf = getelementptr inbounds nuw [33472 x i8], ptr %i.bp, i64 %i.ce ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 148 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !88 ; 5 uses
  %.not402 = icmp eq i16 %i.ci, 0
  br i1 %.not402, label %bb.aw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 320
  %i.ck = load i16, ptr %i.cj, align 8, !tbaa !88 ; 4 uses
  %.not403 = icmp eq i16 %i.ck, 0
  br i1 %.not403, label %bb.aw, label %.preheader543

.preheader543:                                    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cl = icmp eq i16 %i.ci, 21
  br i1 %i.cl, label %.preheader539, label %.preheader541.1

.preheader541.1:                                  ; preds = %.preheader543
  %i.cm = icmp eq i16 %i.ck, 21
  br i1 %i.cm, label %.preheader539, label %.preheader540.preheader

.preheader540.preheader:                          ; preds = %.preheader541.1
  %i.cn = icmp ult i16 %i.ci, 24
  br i1 %i.cn, label %switch.lookup, label %bb.v

switch.lookup:                                    ; preds = %.preheader540.preheader
  %i.co = zext nneg i16 %i.ci to i64
  %i.cp = getelementptr [4 x i8], ptr @switch.table._ZN6LibRaw27identify_process_dng_fieldsEv, i64 %i.co
  %switch.gep = getelementptr i8, ptr %i.cp, i64 -4
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.v

bb.v:                                             ; preds = %.preheader540.preheader, %switch.lookup
  %.2357 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %.preheader540.preheader ] ; 7 uses
  switch i16 %i.ci, label %.preheader540.1 [
    i16 23, label %.thread
    i16 22, label %.thread
    i16 20, label %.thread
    i16 4, label %.thread
    i16 1, label %.thread
  ]

.preheader540.1:                                  ; preds = %bb.v
  %i.cq = icmp ult i16 %i.ck, 24
  br i1 %i.cq, label %switch.hole_check, label %.thread

switch.hole_check:                                ; preds = %.preheader540.1
  %switch.tableidx818 = add nsw i16 %i.ck, -1
  %switch.maskindex = zext nneg i16 %switch.tableidx818 to i32
  %switch.shifted = lshr i32 6815753, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %spec.select = select i1 %switch.lobit, i32 1, i32 %.2357
  br label %.thread

.thread:                                          ; preds = %switch.hole_check, %.preheader540.1, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %.4359 = phi i32 [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %bb.v ], [ %.2357, %.preheader540.1 ], [ %spec.select, %switch.hole_check ] ; 2 uses
  %i.cr = icmp sgt i32 %.4359, -1
  br i1 %i.cr, label %.preheader539, label %5

.preheader539:                                    ; preds = %.preheader541.1, %.preheader543, %.thread
  %.4359796 = phi i32 [ %.4359, %.thread ], [ 1, %.preheader541.1 ], [ 0, %.preheader543 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !95 ; 43 uses
  %i.cu = icmp sgt i32 %i.ct, 0                   ; 3 uses
  br i1 %i.cu, label %.preheader538.lr.ph, label %.loopexit537

.preheader538.lr.ph:                              ; preds = %.preheader539
  %i.cv = zext nneg i32 %.4359796 to i64          ; 3 uses
  %i.cw = getelementptr inbounds nuw [168 x i8], ptr %i.cg, i64 %i.cv ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load <2 x float>, ptr %i.cx, align 4, !tbaa !86
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.db = load float, ptr %i.da, align 4, !tbaa !86
  %i.dc = fpext float %i.db to double             ; 5 uses
  %exitcond.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond.not, label %._crit_edge, label %.preheader538.1

.preheader538.1:                                  ; preds = %.preheader538.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 84
  %i.de = load <2 x float>, ptr %i.dd, align 4, !tbaa !86
  %i.df = fpext <2 x float> %i.de to <2 x double> ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 92
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !86
  %i.di = fpext float %i.dh to double             ; 3 uses
  %exitcond.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.preheader538.2

.preheader538.2:                                  ; preds = %.preheader538.1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !86
  %i.dl = fpext <2 x float> %i.dk to <2 x double> ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !86
  %i.do = fpext float %i.dn to double             ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.preheader538.3

.preheader538.3:                                  ; preds = %.preheader538.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 108
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !86
  %i.dr = fpext <2 x float> %i.dq to <2 x double>
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 116
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !86
  %i.du = fpext float %i.dt to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader538.3, %.preheader538.2, %.preheader538.1, %.preheader538.lr.ph
  %.sroa.53.0 = phi double [ undef, %.preheader538.lr.ph ], [ undef, %.preheader538.1 ], [ undef, %.preheader538.2 ], [ %i.du, %.preheader538.3 ] ; 5 uses
  %.sroa.44.0 = phi <2 x double> [ undef, %.preheader538.lr.ph ], [ undef, %.preheader538.1 ], [ undef, %.preheader538.2 ], [ %i.dr, %.preheader538.3 ] ; 5 uses
  %.sroa.39.0 = phi double [ undef, %.preheader538.lr.ph ], [ undef, %.preheader538.1 ], [ %i.do, %.preheader538.2 ], [ %i.do, %.preheader538.3 ] ; 5 uses
  %.sroa.30.0 = phi <2 x double> [ undef, %.preheader538.lr.ph ], [ undef, %.preheader538.1 ], [ %i.dl, %.preheader538.2 ], [ %i.dl, %.preheader538.3 ] ; 5 uses
  %.sroa.25.0 = phi double [ undef, %.preheader538.lr.ph ], [ %i.di, %.preheader538.1 ], [ %i.di, %.preheader538.2 ], [ %i.di, %.preheader538.3 ] ; 5 uses
  %.sroa.16.0 = phi <2 x double> [ undef, %.preheader538.lr.ph ], [ %i.df, %.preheader538.1 ], [ %i.df, %.preheader538.2 ], [ %i.df, %.preheader538.3 ] ; 5 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %.not810 = icmp eq i32 %4, %i.ak
  br i1 %.not810, label %.preheader535.preheader, label %.loopexit537

.preheader535.preheader:                          ; preds = %._crit_edge
  %i.dv = getelementptr inbounds nuw [168 x i8], ptr %i.cg, i64 %i.cv ; 16 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !86
  %i.dy = fpext float %i.dx to double             ; 4 uses
  %exitcond652.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond652.not, label %._crit_edge557, label %bb.w

bb.w:                                             ; preds = %.preheader535.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !86
  %i.eb = fpext float %i.ea to double             ; 3 uses
  %exitcond652.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond652.not.1, label %._crit_edge557, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !86
  %i.ee = fpext float %i.ed to double             ; 2 uses
  %exitcond652.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond652.not.2, label %._crit_edge557, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !86
  %i.eh = fpext float %i.eg to double
  br label %._crit_edge557

._crit_edge557:                                   ; preds = %bb.y, %bb.x, %bb.w, %.preheader535.preheader
  %.sroa.9930.0 = phi double [ 0.000000e+00, %.preheader535.preheader ], [ %i.eb, %bb.w ], [ %i.eb, %bb.x ], [ %i.eb, %bb.y ] ; 4 uses
  %.sroa.16934.0 = phi double [ 0.000000e+00, %.preheader535.preheader ], [ 0.000000e+00, %bb.w ], [ %i.ee, %bb.x ], [ %i.ee, %bb.y ] ; 4 uses
  %.sroa.22.0 = phi double [ 0.000000e+00, %.preheader535.preheader ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.x ], [ %i.eh, %bb.y ] ; 4 uses
  %exitcond657.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond657.not, label %.loopexit537, label %.preheader535.1

.preheader535.1:                                  ; preds = %._crit_edge557
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !86
  %i.ek = fpext float %i.ej to double             ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.em = load float, ptr %i.el, align 4, !tbaa !86
  %i.en = fpext float %i.em to double             ; 3 uses
  %exitcond652.not.1.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond652.not.1.1, label %._crit_edge557.1, label %bb.z

bb.z:                                             ; preds = %.preheader535.1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !86
  %i.eq = fpext float %i.ep to double             ; 2 uses
  %exitcond652.not.2.1 = icmp eq i32 %i.ct, 3
  br i1 %exitcond652.not.2.1, label %._crit_edge557.1, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 36
  %i.es = load float, ptr %i.er, align 4, !tbaa !86
  %i.et = fpext float %i.es to double
  br label %._crit_edge557.1

._crit_edge557.1:                                 ; preds = %bb.aa, %bb.z, %.preheader535.1
  %.sroa.41.4 = phi double [ %i.eq, %bb.aa ], [ 0.000000e+00, %.preheader535.1 ], [ %i.eq, %bb.z ] ; 3 uses
  %.sroa.48.4 = phi double [ %i.et, %bb.aa ], [ 0.000000e+00, %.preheader535.1 ], [ 0.000000e+00, %bb.z ] ; 3 uses
  %exitcond657.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond657.not.1, label %.loopexit537, label %.preheader535.2

.preheader535.2:                                  ; preds = %._crit_edge557.1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !86
  %i.ew = fpext float %i.ev to double             ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !86
  %i.ez = fpext float %i.ey to double             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !86
  %i.fc = fpext float %i.fb to double             ; 2 uses
  %exitcond652.not.2.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond652.not.2.2, label %._crit_edge557.2, label %bb.ab

bb.ab:                                            ; preds = %.preheader535.2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 52
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !86
  %i.ff = fpext float %i.fe to double
  br label %._crit_edge557.2

._crit_edge557.2:                                 ; preds = %bb.ab, %.preheader535.2
  %.sroa.73.4 = phi double [ %i.ff, %bb.ab ], [ 0.000000e+00, %.preheader535.2 ] ; 2 uses
  %exitcond657.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond657.not.2, label %.loopexit537, label %.preheader535.3

.preheader535.3:                                  ; preds = %._crit_edge557.2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !86
  %i.fi = fpext float %i.fh to double
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 60
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !86
  %i.fl = fpext float %i.fk to double
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !86
  %i.fo = fpext float %i.fn to double
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dv, i64 68
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !86
  %i.fr = fpext float %i.fq to double
  br label %.loopexit537

.loopexit537:                                     ; preds = %._crit_edge557, %._crit_edge557.1, %._crit_edge557.2, %.preheader535.3, %._crit_edge, %.preheader539
  %.sroa.9930.1 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ %.sroa.9930.0, %.preheader535.3 ], [ %.sroa.9930.0, %._crit_edge557.2 ], [ %.sroa.9930.0, %._crit_edge557.1 ], [ %.sroa.9930.0, %._crit_edge557 ] ; 3 uses
  %.sroa.16934.1 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ %.sroa.16934.0, %.preheader535.3 ], [ %.sroa.16934.0, %._crit_edge557.2 ], [ %.sroa.16934.0, %._crit_edge557.1 ], [ %.sroa.16934.0, %._crit_edge557 ] ; 4 uses
  %.sroa.22.1 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ %.sroa.22.0, %.preheader535.3 ], [ %.sroa.22.0, %._crit_edge557.2 ], [ %.sroa.22.0, %._crit_edge557.1 ], [ %.sroa.22.0, %._crit_edge557 ] ; 5 uses
  %.sroa.41.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ %.sroa.41.4, %._crit_edge557.1 ], [ %.sroa.41.4, %._crit_edge557.2 ], [ %.sroa.41.4, %.preheader535.3 ] ; 4 uses
  %.sroa.48.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ %.sroa.48.4, %._crit_edge557.1 ], [ %.sroa.48.4, %._crit_edge557.2 ], [ %.sroa.48.4, %.preheader535.3 ] ; 5 uses
  %.sroa.54.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ %i.ew, %._crit_edge557.2 ], [ %i.ew, %.preheader535.3 ] ; 4 uses
  %.sroa.73.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ %.sroa.73.4, %._crit_edge557.2 ], [ %.sroa.73.4, %.preheader535.3 ] ; 5 uses
  %.sroa.80.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ 0.000000e+00, %._crit_edge557.2 ], [ %i.fi, %.preheader535.3 ] ; 5 uses
  %.sroa.86.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ 0.000000e+00, %._crit_edge557.2 ], [ %i.fl, %.preheader535.3 ] ; 5 uses
  %.sroa.98.0 = phi double [ 1.000000e+00, %.preheader539 ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %._crit_edge557 ], [ 1.000000e+00, %._crit_edge557.1 ], [ 1.000000e+00, %._crit_edge557.2 ], [ %i.fr, %.preheader535.3 ] ; 5 uses
  %.sroa.92.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ 0.000000e+00, %._crit_edge557.2 ], [ %i.fo, %.preheader535.3 ] ; 5 uses
  %.sroa.66.0 = phi double [ 1.000000e+00, %.preheader539 ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %._crit_edge557 ], [ 1.000000e+00, %._crit_edge557.1 ], [ %i.fc, %._crit_edge557.2 ], [ %i.fc, %.preheader535.3 ] ; 4 uses
  %.sroa.60.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ 0.000000e+00, %._crit_edge557.1 ], [ %i.ez, %._crit_edge557.2 ], [ %i.ez, %.preheader535.3 ] ; 4 uses
  %.sroa.34.0 = phi double [ 1.000000e+00, %.preheader539 ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %._crit_edge557 ], [ %i.en, %._crit_edge557.1 ], [ %i.en, %._crit_edge557.2 ], [ %i.en, %.preheader535.3 ] ; 3 uses
  %.sroa.28.0 = phi double [ 0.000000e+00, %.preheader539 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge557 ], [ %i.ek, %._crit_edge557.1 ], [ %i.ek, %._crit_edge557.2 ], [ %i.ek, %.preheader535.3 ] ; 3 uses
  %.sroa.0926.0 = phi double [ 1.000000e+00, %.preheader539 ], [ 1.000000e+00, %._crit_edge ], [ %i.dy, %.preheader535.3 ], [ %i.dy, %._crit_edge557.2 ], [ %i.dy, %._crit_edge557.1 ], [ %i.dy, %._crit_edge557 ] ; 2 uses
  %.sroa.53.1 = phi double [ undef, %.preheader539 ], [ %.sroa.53.0, %._crit_edge ], [ %.sroa.53.0, %.preheader535.3 ], [ %.sroa.53.0, %._crit_edge557.2 ], [ %.sroa.53.0, %._crit_edge557.1 ], [ %.sroa.53.0, %._crit_edge557 ] ; 4 uses
  %.sroa.44.1 = phi <2 x double> [ undef, %.preheader539 ], [ %.sroa.44.0, %._crit_edge ], [ %.sroa.44.0, %.preheader535.3 ], [ %.sroa.44.0, %._crit_edge557.2 ], [ %.sroa.44.0, %._crit_edge557.1 ], [ %.sroa.44.0, %._crit_edge557 ] ; 8 uses
  %.sroa.39.1 = phi double [ undef, %.preheader539 ], [ %.sroa.39.0, %._crit_edge ], [ %.sroa.39.0, %.preheader535.3 ], [ %.sroa.39.0, %._crit_edge557.2 ], [ %.sroa.39.0, %._crit_edge557.1 ], [ %.sroa.39.0, %._crit_edge557 ] ; 4 uses
  %.sroa.30.1 = phi <2 x double> [ undef, %.preheader539 ], [ %.sroa.30.0, %._crit_edge ], [ %.sroa.30.0, %.preheader535.3 ], [ %.sroa.30.0, %._crit_edge557.2 ], [ %.sroa.30.0, %._crit_edge557.1 ], [ %.sroa.30.0, %._crit_edge557 ] ; 8 uses
  %.sroa.25.1 = phi double [ undef, %.preheader539 ], [ %.sroa.25.0, %._crit_edge ], [ %.sroa.25.0, %.preheader535.3 ], [ %.sroa.25.0, %._crit_edge557.2 ], [ %.sroa.25.0, %._crit_edge557.1 ], [ %.sroa.25.0, %._crit_edge557 ] ; 4 uses
  %.sroa.16.1 = phi <2 x double> [ undef, %.preheader539 ], [ %.sroa.16.0, %._crit_edge ], [ %.sroa.16.0, %.preheader535.3 ], [ %.sroa.16.0, %._crit_edge557.2 ], [ %.sroa.16.0, %._crit_edge557.1 ], [ %.sroa.16.0, %._crit_edge557 ] ; 8 uses
  %.sroa.11.0 = phi double [ undef, %.preheader539 ], [ %i.dc, %._crit_edge ], [ %i.dc, %.preheader535.3 ], [ %i.dc, %._crit_edge557.2 ], [ %i.dc, %._crit_edge557.1 ], [ %i.dc, %._crit_edge557 ] ; 4 uses
  %.sroa.0865.0 = phi <2 x double> [ undef, %.preheader539 ], [ %i.cz, %._crit_edge ], [ %i.cz, %.preheader535.3 ], [ %i.cz, %._crit_edge557.2 ], [ %i.cz, %._crit_edge557.1 ], [ %i.cz, %._crit_edge557 ] ; 8 uses
  %i.fs = icmp eq i32 %i.by, %i.ak
  br i1 %i.fs, label %.preheader533, label %.loopexit534

.preheader533:                                    ; preds = %.loopexit537
  br i1 %i.cu, label %.preheader532, label %._crit_edge578

.preheader532:                                    ; preds = %.preheader533
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cf, i64 33376
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !86
  %i.fv = fpext float %i.fu to double             ; 4 uses
  %i.fw = fmul double %.sroa.0926.0, %i.fv        ; 4 uses
  %exitcond662.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond662.not, label %._crit_edge564, label %bb.ac

bb.ac:                                            ; preds = %.preheader532
  %i.fx = fmul double %.sroa.9930.1, %i.fv        ; 3 uses
  %exitcond662.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond662.not.1, label %._crit_edge564, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = fmul double %.sroa.16934.1, %i.fv       ; 2 uses
  %exitcond662.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond662.not.2, label %._crit_edge564, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fz = fmul double %.sroa.22.1, %i.fv
  br label %._crit_edge564

._crit_edge564:                                   ; preds = %bb.ae, %bb.ad, %bb.ac, %.preheader532
  %.sroa.9930.2 = phi double [ %.sroa.9930.1, %.preheader532 ], [ %i.fx, %bb.ac ], [ %i.fx, %bb.ad ], [ %i.fx, %bb.ae ] ; 4 uses
  %.sroa.16934.2 = phi double [ %.sroa.16934.1, %.preheader532 ], [ %.sroa.16934.1, %bb.ac ], [ %i.fy, %bb.ad ], [ %i.fy, %bb.ae ] ; 4 uses
  %.sroa.22.2 = phi double [ %.sroa.22.1, %.preheader532 ], [ %.sroa.22.1, %bb.ac ], [ %.sroa.22.1, %bb.ad ], [ %i.fz, %bb.ae ] ; 4 uses
  %exitcond667.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond667.not, label %.loopexit534, label %.preheader532.1

.preheader532.1:                                  ; preds = %._crit_edge564
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cf, i64 33380
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !86
  %i.gc = fpext float %i.gb to double             ; 4 uses
  %i.gd = fmul double %.sroa.28.0, %i.gc          ; 3 uses
  %i.ge = fmul double %.sroa.34.0, %i.gc          ; 3 uses
  %exitcond662.not.1.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond662.not.1.1, label %._crit_edge564.1, label %bb.af

bb.af:                                            ; preds = %.preheader532.1
  %i.gf = fmul double %.sroa.41.0, %i.gc          ; 2 uses
  %exitcond662.not.2.1 = icmp eq i32 %i.ct, 3
  br i1 %exitcond662.not.2.1, label %._crit_edge564.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gg = fmul double %.sroa.48.0, %i.gc
  br label %._crit_edge564.1

._crit_edge564.1:                                 ; preds = %bb.ag, %bb.af, %.preheader532.1
  %.sroa.41.5 = phi double [ %i.gf, %bb.ag ], [ %.sroa.41.0, %.preheader532.1 ], [ %i.gf, %bb.af ] ; 3 uses
  %.sroa.48.5 = phi double [ %i.gg, %bb.ag ], [ %.sroa.48.0, %.preheader532.1 ], [ %.sroa.48.0, %bb.af ] ; 3 uses
  %exitcond667.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond667.not.1, label %.loopexit534, label %.preheader532.2

.preheader532.2:                                  ; preds = %._crit_edge564.1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cf, i64 33384
  %i.gi = load float, ptr %i.gh, align 8, !tbaa !86
  %i.gj = fpext float %i.gi to double             ; 4 uses
  %i.gk = fmul double %.sroa.54.0, %i.gj          ; 2 uses
  %i.gl = fmul double %.sroa.60.0, %i.gj          ; 2 uses
  %i.gm = fmul double %.sroa.66.0, %i.gj          ; 2 uses
  %exitcond662.not.2.2 = icmp eq i32 %i.ct, 3
  %i.gn = fmul double %.sroa.73.0, %i.gj
  %.sroa.73.5 = select i1 %exitcond662.not.2.2, double %.sroa.73.0, double %i.gn ; 2 uses
  %exitcond667.not.2 = icmp eq i32 %i.ct, 3
end_hunk_0
begin_hunk_1_@_ZN6LibRaw27identify_process_dng_fieldsEv:bb.a

bb.ai:                                            ; preds = %bb.ah
  %.sroa.30.48.vec.extract = extractelement <2 x double> %.sroa.30.1, i64 0
  %i.gx = tail call double @llvm.fmuladd.f64(double %.sroa.16934.3, double %.sroa.30.48.vec.extract, double %i.gw) ; 2 uses
  %exitcond672.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.not.2, label %._crit_edge572.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.44.72.vec.extract = extractelement <2 x double> %.sroa.44.1, i64 0
  %i.gy = tail call double @llvm.fmuladd.f64(double %.sroa.22.3, double %.sroa.44.72.vec.extract, double %i.gx)
  br label %._crit_edge572.us

._crit_edge572.us:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph.us.preheader
  %.lcssa828 = phi double [ %i.gv, %.lr.ph.us.preheader ], [ %i.gw, %bb.ah ], [ %i.gx, %bb.ai ], [ %i.gy, %bb.aj ]
  store double %.lcssa828, ptr %i.a, align 16, !tbaa !223
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0865.8.vec.extract = extractelement <2 x double> %.sroa.0865.0, i64 1
  %i.ha = tail call double @llvm.fmuladd.f64(double %.sroa.0926.1, double %.sroa.0865.8.vec.extract, double 0.000000e+00) ; 2 uses
  %exitcond672.1.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond672.1.not, label %._crit_edge572.us.1, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge572.us
  %.sroa.16.32.vec.extract = extractelement <2 x double> %.sroa.16.1, i64 1
  %i.hb = tail call double @llvm.fmuladd.f64(double %.sroa.9930.3, double %.sroa.16.32.vec.extract, double %i.ha) ; 2 uses
  %exitcond672.1.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond672.1.not.1, label %._crit_edge572.us.1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.30.56.vec.extract = extractelement <2 x double> %.sroa.30.1, i64 1
  %i.hc = tail call double @llvm.fmuladd.f64(double %.sroa.16934.3, double %.sroa.30.56.vec.extract, double %i.hb) ; 2 uses
  %exitcond672.1.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.1.not.2, label %._crit_edge572.us.1, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.44.80.vec.extract = extractelement <2 x double> %.sroa.44.1, i64 1
  %i.hd = tail call double @llvm.fmuladd.f64(double %.sroa.22.3, double %.sroa.44.80.vec.extract, double %i.hc)
  br label %._crit_edge572.us.1

._crit_edge572.us.1:                              ; preds = %bb.am, %bb.al, %bb.ak, %._crit_edge572.us
  %.lcssa829 = phi double [ %i.ha, %._crit_edge572.us ], [ %i.hb, %bb.ak ], [ %i.hc, %bb.al ], [ %i.hd, %bb.am ]
  store double %.lcssa829, ptr %i.gz, align 8, !tbaa !223
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hf = tail call double @llvm.fmuladd.f64(double %.sroa.0926.1, double %.sroa.11.0, double 0.000000e+00) ; 2 uses
  %exitcond672.2.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond672.2.not, label %.split.us, label %bb.an

bb.an:                                            ; preds = %._crit_edge572.us.1
  %i.hg = tail call double @llvm.fmuladd.f64(double %.sroa.9930.3, double %.sroa.25.1, double %i.hf) ; 2 uses
  %exitcond672.2.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond672.2.not.1, label %.split.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = tail call double @llvm.fmuladd.f64(double %.sroa.16934.3, double %.sroa.39.1, double %i.hg) ; 2 uses
  %exitcond672.2.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.2.not.2, label %.split.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = tail call double @llvm.fmuladd.f64(double %.sroa.22.3, double %.sroa.53.1, double %i.hh)
  br label %.split.us

.split.us:                                        ; preds = %bb.ap, %bb.ao, %bb.an, %._crit_edge572.us.1
  %.lcssa830 = phi double [ %i.hf, %._crit_edge572.us.1 ], [ %i.hg, %bb.an ], [ %i.hh, %bb.ao ], [ %i.hi, %bb.ap ]
  store double %.lcssa830, ptr %i.he, align 16, !tbaa !223
  %exitcond681.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond681.not, label %._crit_edge578, label %.lr.ph.us.preheader.1

.lr.ph.us.preheader.1:                            ; preds = %.split.us
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0865.0.vec.extract867 = extractelement <2 x double> %.sroa.0865.0, i64 0
  %i.hk = tail call double @llvm.fmuladd.f64(double %.sroa.28.1, double %.sroa.0865.0.vec.extract867, double 0.000000e+00)
  %.sroa.16.24.vec.extract882 = extractelement <2 x double> %.sroa.16.1, i64 0
  %i.hl = tail call double @llvm.fmuladd.f64(double %.sroa.34.1, double %.sroa.16.24.vec.extract882, double %i.hk) ; 2 uses
  %exitcond672.not.1.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond672.not.1.1, label %._crit_edge572.us.1842, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.us.preheader.1
  %.sroa.30.48.vec.extract897 = extractelement <2 x double> %.sroa.30.1, i64 0
  %i.hm = tail call double @llvm.fmuladd.f64(double %.sroa.41.1, double %.sroa.30.48.vec.extract897, double %i.hl) ; 2 uses
  %exitcond672.not.2.1 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.not.2.1, label %._crit_edge572.us.1842, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.44.72.vec.extract912 = extractelement <2 x double> %.sroa.44.1, i64 0
  %i.hn = tail call double @llvm.fmuladd.f64(double %.sroa.48.1, double %.sroa.44.72.vec.extract912, double %i.hm)
  br label %._crit_edge572.us.1842

._crit_edge572.us.1842:                           ; preds = %bb.ar, %bb.aq, %.lr.ph.us.preheader.1
  %.lcssa828.1 = phi double [ %i.hn, %bb.ar ], [ %i.hl, %.lr.ph.us.preheader.1 ], [ %i.hm, %bb.aq ]
  store double %.lcssa828.1, ptr %i.hj, align 8, !tbaa !223
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0865.8.vec.extract873 = extractelement <2 x double> %.sroa.0865.0, i64 1
  %i.hp = tail call double @llvm.fmuladd.f64(double %.sroa.28.1, double %.sroa.0865.8.vec.extract873, double 0.000000e+00)
  %.sroa.16.32.vec.extract888 = extractelement <2 x double> %.sroa.16.1, i64 1
  %i.hq = tail call double @llvm.fmuladd.f64(double %.sroa.34.1, double %.sroa.16.32.vec.extract888, double %i.hp) ; 2 uses
  %exitcond672.1.not.1.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond672.1.not.1.1, label %._crit_edge572.us.1.1, label %bb.as

bb.as:                                            ; preds = %._crit_edge572.us.1842
  %.sroa.30.56.vec.extract903 = extractelement <2 x double> %.sroa.30.1, i64 1
  %i.hr = tail call double @llvm.fmuladd.f64(double %.sroa.41.1, double %.sroa.30.56.vec.extract903, double %i.hq) ; 2 uses
  %exitcond672.1.not.2.1 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.1.not.2.1, label %._crit_edge572.us.1.1, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.44.80.vec.extract918 = extractelement <2 x double> %.sroa.44.1, i64 1
  %i.hs = tail call double @llvm.fmuladd.f64(double %.sroa.48.1, double %.sroa.44.80.vec.extract918, double %i.hr)
  br label %._crit_edge572.us.1.1

._crit_edge572.us.1.1:                            ; preds = %bb.at, %bb.as, %._crit_edge572.us.1842
  %.lcssa829.1 = phi double [ %i.hs, %bb.at ], [ %i.hq, %._crit_edge572.us.1842 ], [ %i.hr, %bb.as ]
  store double %.lcssa829.1, ptr %i.ho, align 16, !tbaa !223
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hu = tail call double @llvm.fmuladd.f64(double %.sroa.28.1, double %.sroa.11.0, double 0.000000e+00)
  %i.hv = tail call double @llvm.fmuladd.f64(double %.sroa.34.1, double %.sroa.25.1, double %i.hu) ; 2 uses
  %exitcond672.2.not.1.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond672.2.not.1.1, label %.split.us.1, label %bb.au

bb.au:                                            ; preds = %._crit_edge572.us.1.1
  %i.hw = tail call double @llvm.fmuladd.f64(double %.sroa.41.1, double %.sroa.39.1, double %i.hv) ; 2 uses
  %exitcond672.2.not.2.1 = icmp eq i32 %i.ct, 3
  br i1 %exitcond672.2.not.2.1, label %.split.us.1, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = tail call double @llvm.fmuladd.f64(double %.sroa.48.1, double %.sroa.53.1, double %i.hw)
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.av, %bb.au, %._crit_edge572.us.1.1
  %.lcssa830.1 = phi double [ %i.hx, %bb.av ], [ %i.hv, %._crit_edge572.us.1.1 ], [ %i.hw, %bb.au ]
  store double %.lcssa830.1, ptr %i.ht, align 8, !tbaa !223
  %exitcond681.not.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond681.not.1, label %._crit_edge578, label %.lr.ph.us.preheader.2

.lr.ph.us.preheader.2:                            ; preds = %.split.us.1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.16.24.vec.extract884 = extractelement <2 x double> %.sroa.16.1, i64 0
  %.sroa.0865.0.vec.extract869 = extractelement <2 x double> %.sroa.0865.0, i64 0
  %i.hz = tail call double @llvm.fmuladd.f64(double %.sroa.54.1, double %.sroa.0865.0.vec.extract869, double 0.000000e+00)
  %i.ia = tail call double @llvm.fmuladd.f64(double %.sroa.60.1, double %.sroa.16.24.vec.extract884, double %i.hz)
  %.sroa.30.48.vec.extract899 = extractelement <2 x double> %.sroa.30.1, i64 0
  %i.ib = tail call double @llvm.fmuladd.f64(double %.sroa.66.1, double %.sroa.30.48.vec.extract899, double %i.ia) ; 2 uses
  %exitcond672.not.2.2 = icmp eq i32 %i.ct, 3
  %.sroa.44.72.vec.extract914 = extractelement <2 x double> %.sroa.44.1, i64 0
  %i.ic = tail call double @llvm.fmuladd.f64(double %.sroa.73.1, double %.sroa.44.72.vec.extract914, double %i.ib)
  %.lcssa828.2 = select i1 %exitcond672.not.2.2, double %i.ib, double %i.ic
  store double %.lcssa828.2, ptr %i.hy, align 16, !tbaa !223
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.16.32.vec.extract890 = extractelement <2 x double> %.sroa.16.1, i64 1
  %.sroa.0865.8.vec.extract875 = extractelement <2 x double> %.sroa.0865.0, i64 1
  %i.ie = tail call double @llvm.fmuladd.f64(double %.sroa.54.1, double %.sroa.0865.8.vec.extract875, double 0.000000e+00)
  %i.if = tail call double @llvm.fmuladd.f64(double %.sroa.60.1, double %.sroa.16.32.vec.extract890, double %i.ie)
  %.sroa.30.56.vec.extract905 = extractelement <2 x double> %.sroa.30.1, i64 1
  %i.ig = tail call double @llvm.fmuladd.f64(double %.sroa.66.1, double %.sroa.30.56.vec.extract905, double %i.if) ; 2 uses
  %exitcond672.1.not.2.2 = icmp eq i32 %i.ct, 3
  %.sroa.44.80.vec.extract920 = extractelement <2 x double> %.sroa.44.1, i64 1
  %i.ih = tail call double @llvm.fmuladd.f64(double %.sroa.73.1, double %.sroa.44.80.vec.extract920, double %i.ig)
  %.lcssa829.2 = select i1 %exitcond672.1.not.2.2, double %i.ig, double %i.ih
  store double %.lcssa829.2, ptr %i.id, align 8, !tbaa !223
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ij = tail call double @llvm.fmuladd.f64(double %.sroa.54.1, double %.sroa.11.0, double 0.000000e+00)
  %i.ik = tail call double @llvm.fmuladd.f64(double %.sroa.60.1, double %.sroa.25.1, double %i.ij)
  %i.il = tail call double @llvm.fmuladd.f64(double %.sroa.66.1, double %.sroa.39.1, double %i.ik) ; 2 uses
  %exitcond672.2.not.2.2 = icmp eq i32 %i.ct, 3
  %i.im = tail call double @llvm.fmuladd.f64(double %.sroa.73.1, double %.sroa.53.1, double %i.il)
  %.lcssa830.2 = select i1 %exitcond672.2.not.2.2, double %i.il, double %i.im
  store double %.lcssa830.2, ptr %i.ii, align 16, !tbaa !223
  %exitcond681.not.2 = icmp eq i32 %i.ct, 3
  br i1 %exitcond681.not.2, label %._crit_edge578, label %.lr.ph.us.preheader.3

.lr.ph.us.preheader.3:                            ; preds = %.lr.ph.us.preheader.2
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.30.48.vec.extract901 = extractelement <2 x double> %.sroa.30.1, i64 0
  %.sroa.16.24.vec.extract886 = extractelement <2 x double> %.sroa.16.1, i64 0
  %.sroa.0865.0.vec.extract871 = extractelement <2 x double> %.sroa.0865.0, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %.sroa.80.1, double %.sroa.0865.0.vec.extract871, double 0.000000e+00)
  %i.ip = tail call double @llvm.fmuladd.f64(double %.sroa.86.1, double %.sroa.16.24.vec.extract886, double %i.io)
  %i.iq = tail call double @llvm.fmuladd.f64(double %.sroa.92.1, double %.sroa.30.48.vec.extract901, double %i.ip)
  %.sroa.44.72.vec.extract916 = extractelement <2 x double> %.sroa.44.1, i64 0
  %i.ir = tail call double @llvm.fmuladd.f64(double %.sroa.98.1, double %.sroa.44.72.vec.extract916, double %i.iq)
  store double %i.ir, ptr %i.in, align 8, !tbaa !223
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.30.56.vec.extract907 = extractelement <2 x double> %.sroa.30.1, i64 1
  %.sroa.16.32.vec.extract892 = extractelement <2 x double> %.sroa.16.1, i64 1
  %.sroa.0865.8.vec.extract877 = extractelement <2 x double> %.sroa.0865.0, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %.sroa.80.1, double %.sroa.0865.8.vec.extract877, double 0.000000e+00)
  %i.iu = tail call double @llvm.fmuladd.f64(double %.sroa.86.1, double %.sroa.16.32.vec.extract892, double %i.it)
  %i.iv = tail call double @llvm.fmuladd.f64(double %.sroa.92.1, double %.sroa.30.56.vec.extract907, double %i.iu)
  %.sroa.44.80.vec.extract922 = extractelement <2 x double> %.sroa.44.1, i64 1
  %i.iw = tail call double @llvm.fmuladd.f64(double %.sroa.98.1, double %.sroa.44.80.vec.extract922, double %i.iv)
  store double %i.iw, ptr %i.is, align 16, !tbaa !223
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.iy = tail call double @llvm.fmuladd.f64(double %.sroa.80.1, double %.sroa.11.0, double 0.000000e+00)
  %i.iz = tail call double @llvm.fmuladd.f64(double %.sroa.86.1, double %.sroa.25.1, double %i.iy)
  %i.ja = tail call double @llvm.fmuladd.f64(double %.sroa.92.1, double %.sroa.39.1, double %i.iz)
  %i.jb = tail call double @llvm.fmuladd.f64(double %.sroa.98.1, double %.sroa.53.1, double %i.ja)
  store double %i.jb, ptr %i.ix, align 8, !tbaa !223
  br label %._crit_edge578

._crit_edge578:                                   ; preds = %.split.us, %.split.us.1, %.lr.ph.us.preheader.2, %.lr.ph.us.preheader.3, %.preheader533, %.loopexit534
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 153284
  call void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.a)
  br label %5

5:                                                ; preds = %._crit_edge578, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.aw

bb.aw:                                            ; preds = %5, %bb.u, %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.c
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !75
  %i.jf = icmp eq i32 %i.je, 18
  br i1 %i.jf, label %bb.ay, label %.critedge496

bb.ay:                                            ; preds = %bb.ax
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.jh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(6) @.str.53) #16
  %.not419 = icmp eq i32 %i.jh, 0
  br i1 %.not419, label %.critedge498, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ji = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(6) @.str.54) #16
  %.not420 = icmp eq i32 %i.ji, 0
  br i1 %.not420, label %.critedge498, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(6) @.str.55) #16
  %.not421 = icmp eq i32 %i.jj, 0
  br i1 %.not421, label %.critedge498, label %.critedge496

.critedge496:                                     ; preds = %bb.ax, %bb.ba
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.jl = zext nneg i32 %i.q to i64
  %i.jm = getelementptr inbounds nuw [33472 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 488
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !222 ; 3 uses
  %i.jp = and i32 %i.jo, 512
  %.not422 = icmp eq i32 %i.jp, 0
  br i1 %.not422, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge496
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !222
  %i.js = lshr i32 %i.jr, 9
  %i.jt = and i32 %i.js, 1
  %sext424 = add nsw i32 %i.jt, -1
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge496, %bb.bb
  %i.ju = phi i32 [ %sext424, %bb.bb ], [ %i.q, %.critedge496 ] ; 4 uses
  %i.jv = and i32 %i.jo, 1024
  %.not425 = icmp eq i32 %i.jv, 0
  br i1 %.not425, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !222
  %i.jy = lshr i32 %i.jx, 10
  %i.jz = and i32 %i.jy, 1
  %sext427 = add nsw i32 %i.jz, -1
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.ka = phi i32 [ %sext427, %bb.bd ], [ %i.q, %bb.bc ]
  %i.kb = icmp sgt i32 %i.ju, -1
  %i.kc = icmp eq i32 %i.ju, %i.ka
  %or.cond499 = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond499, label %bb.bf, label %.critedge498

bb.bf:                                            ; preds = %bb.be
  %i.kd = zext nneg i32 %i.ju to i64
  %i.ke = getelementptr inbounds nuw [33472 x i8], ptr %i.jk, i64 %i.kd ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 33348
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 33352
  %i.kh = load i16, ptr %i.kg, align 8, !tbaa !81 ; 4 uses
  %i.ki = zext i16 %i.kh to i32                   ; 2 uses
  %.not428 = icmp eq i16 %i.kh, 0
  br i1 %.not428, label %.critedge498, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 33354
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !81 ; 4 uses
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %.not429 = icmp eq i16 %i.kk, 0
  br i1 %.not429, label %.critedge498, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.km = load i16, ptr %i.kf, align 4, !tbaa !81 ; 2 uses
  %i.kn = zext i16 %i.km to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 33350
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !81 ; 2 uses
  %i.kq = add nuw nsw i32 %i.kn, %i.ki
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !107
  %i.kt = zext i16 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !113 ; 2 uses
  %i.kw = zext i16 %i.kv to i32
  %i.kx = add nuw nsw i32 %i.kw, %i.kt
  %i.ky = icmp samesign ult i32 %i.kq, %i.kx
  br i1 %i.ky, label %bb.bi, label %.critedge498

bb.bi:                                            ; preds = %bb.bh
  %i.kz = zext i16 %i.kp to i32
  %i.la = add nuw nsw i32 %i.kz, %i.kl
  %i.lb = load i16, ptr %i.f, align 8, !tbaa !108
  %i.lc = zext i16 %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.le = load i16, ptr %i.ld, align 8, !tbaa !112 ; 2 uses
  %i.lf = zext i16 %i.le to i32
  %i.lg = add nuw nsw i32 %i.lf, %i.lc
  %i.lh = icmp samesign ult i32 %i.la, %i.lg
  br i1 %i.lh, label %bb.bj, label %.critedge498

bb.bj:                                            ; preds = %bb.bi
  %i.li = add i16 %i.kv, %i.km                    ; 2 uses
  store i16 %i.li, ptr %i.g, align 2, !tbaa !130
  store i16 %i.kh, ptr %i.m, align 2, !tbaa !127
  %i.lj = add i16 %i.le, %i.kp                    ; 2 uses
  store i16 %i.lj, ptr %i.j, align 8, !tbaa !129
  store i16 %i.kk, ptr %i.l, align 4, !tbaa !128
  %i.lk = and i32 %i.jo, 32768
  %.not430 = icmp eq i32 %i.lk, 0
  br i1 %.not430, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !222
  %i.ln = lshr i32 %i.lm, 15
  %i.lo = and i32 %i.ln, 1
  %sext432 = add nsw i32 %i.lo, -1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.lp = phi i32 [ %sext432, %bb.bk ], [ %i.q, %bb.bj ] ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, -1
  %i.lr = icmp eq i32 %i.lp, %i.ju
  %or.cond500 = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond500, label %bb.bm, label %.critedge498

bb.bm:                                            ; preds = %bb.bl
  %i.ls = insertelement <2 x i16> poison, i16 %i.kh, i64 0
  %i.lt = insertelement <2 x i16> %i.ls, i16 %i.kk, i64 1
  %i.lu = uitofp <2 x i16> %i.lt to <2 x float>   ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ke, i64 33356
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ke, i64 33364
  %i.lx = load <2 x float>, ptr %i.lv, align 4, !tbaa !86
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lz = fmul <2 x float> %i.ly, %i.lu
  %i.ma = fptosi <2 x float> %i.lz to <2 x i32>   ; 3 uses
  %i.mb = load <2 x float>, ptr %i.lw, align 4, !tbaa !86
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.md = fmul <2 x float> %i.mc, %i.lu
  %i.me = fptosi <2 x float> %i.md to <2 x i32>
  %i.mf = sub nsw <2 x i32> %i.me, %i.ma          ; 3 uses
  %i.mg = extractelement <2 x i32> %i.mf, i64 1   ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %i.mi = extractelement <2 x i32> %i.mf, i64 0   ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  %or.cond11 = select i1 %i.mh, i1 %i.mj, i1 false
  %i.mk = icmp slt i32 %i.mg, %i.kl
  %or.cond502 = and i1 %i.mk, %or.cond11
  %i.ml = icmp slt i32 %i.mi, %i.ki
  %or.cond503 = select i1 %or.cond502, i1 %i.ml, i1 false
  br i1 %or.cond503, label %bb.bn, label %.critedge498

bb.bn:                                            ; preds = %bb.bm
  %i.mm = bitcast <2 x i32> %i.ma to <4 x i16>
  %i.mn = extractelement <4 x i16> %i.mm, i64 0
  %i.mo = add i16 %i.li, %i.mn
  store i16 %i.mo, ptr %i.h, align 2, !tbaa !130
  %i.mp = trunc nuw <2 x i32> %i.mf to <2 x i16>
  %i.mq = bitcast <2 x i32> %i.ma to <4 x i16>
  %i.mr = extractelement <4 x i16> %i.mq, i64 2
  %i.ms = add i16 %i.lj, %i.mr
  store i16 %i.ms, ptr %i.i, align 8, !tbaa !129
  store <2 x i16> %i.mp, ptr %i.k, align 2, !tbaa !81
  br label %.critedge498

.critedge498:                                     ; preds = %bb.az, %bb.ay, %bb.be, %bb.bf, %bb.bg, %bb.bl, %bb.bn, %bb.bm, %bb.bi, %bb.bh, %bb.ba
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 153908
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !221
  %i.mv = and i32 %i.mu, 1
  %.not433 = icmp eq i32 %i.mv, 0
  br i1 %.not433, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %.critedge498
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.mx = zext nneg i32 %i.q to i64
  %i.my = getelementptr inbounds nuw [33472 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 148
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !221
  %i.nb = and i32 %i.na, 1
  %.not434 = icmp eq i32 %i.nb, 0
  br i1 %.not434, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 433660
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !221
  %i.ne = and i32 %i.nd, 1
  %sext436 = add nsw i32 %i.ne, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.nf = phi i32 [ %sext436, %bb.bp ], [ %i.q, %bb.bo ] ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, -1
  br i1 %i.ng, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
end_hunk_1
