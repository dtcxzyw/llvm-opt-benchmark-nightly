inline.NumInlined: 220
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit353

_ZNK4ncnn3Mat5emptyEv.exit353:                    ; preds = %bb.v
  %i.dq = load i64, ptr %i.dn, align 16, !tbaa !20
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !73 ; 3 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul i64 %i.dq, %i.ds
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit353
  %i.dw = load i32, ptr %i.dk, align 4, !tbaa !80 ; 3 uses
  %i.dx = load i32, ptr %i.dl, align 16, !tbaa !81
  store i32 %i.dr, ptr %i.a, align 4, !tbaa !72
  %i.dy = load i32, ptr %i.dh, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.dz = add i32 %i.dw, %.neg
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !66
  %i.ec = sdiv i32 %i.dz, %i.eb
  %i.ed = add nsw i32 %i.ec, 1                    ; 3 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ee = add i32 %i.dx, %.neg226
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !67
  %i.eh = sdiv i32 %i.ee, %i.eg
  %i.ei = add nsw i32 %i.eh, 1                    ; 3 uses
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !72
  %i.ej = mul nsw i32 %i.dy, %i.dr                ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 12 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %bb.y, label %bb.ct

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !62
  %i.ep = icmp eq i32 %i.ej, %i.eo
  br i1 %i.ep, label %bb.z, label %bb.ct

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !63, !range !55, !noundef !56
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = and i32 %i.ej, 7
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = and i1 %i.eu, %i.es
  %.0217 = select i1 %i.ev, i32 8, i32 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !88
  %i.ey = icmp sgt i32 %i.ex, 100                 ; 2 uses
  %i.ez = zext i1 %i.ey to i8
  store i8 %i.ez, ptr %i.d, align 1, !tbaa !99
  %i.fa = shl nuw nsw i32 %.0217, 2
  %i.fb = select i1 %i.ey, i32 %.0217, i32 %i.fa
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = sdiv i32 %i.ej, %.0217
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ed, i32 noundef %i.ei, i32 noundef %i.fd, i64 noundef %i.fc, i32 noundef %.0217, ptr noundef %i.ff)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %2, align 8, !tbaa !18
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !73
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul i64 %i.fj, %i.fm
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %bb.ac

bb.ab:                                            ; preds = %.invoke, %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  switch i32 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread [
    i32 8, label %bb.ad
    i32 1, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.fq = load i32, ptr %i.y, align 4, !tbaa !58
  %i.fr = load i32, ptr %i.ae, align 8, !tbaa !59
  %i.fs = mul nsw i32 %i.fr, %i.fq                ; 2 uses
  store i32 %i.fs, ptr %i.e, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ft = sext i32 %i.fs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.fu = load ptr, ptr %8, align 8, !tbaa !91    ; 2 uses
  store ptr %i.fu, ptr %i.f, align 8, !tbaa !92
  %i.fv = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.fw = mul nsw i32 %i.fv, %i.dw
  %i.fx = load i32, ptr %i.y, align 4, !tbaa !58  ; 3 uses
  %i.fy = load i32, ptr %i.w, align 4, !tbaa !64
  %i.fz = mul nsw i32 %i.fy, %i.fx
  %i.ga = sub i32 %i.fw, %i.fz
  %i.gb = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  %i.gd = icmp sgt i32 %i.fx, 0
  %or.cond = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond, label %.preheader396, label %._crit_edge500

.preheader396:                                    ; preds = %bb.ae, %._crit_edge494
  %i.ge = phi i32 [ %i.gs, %._crit_edge494 ], [ %i.gb, %bb.ae ]
  %i.gf = phi i32 [ %i.gt, %._crit_edge494 ], [ %i.fx, %bb.ae ] ; 2 uses
  %.0207499 = phi i32 [ %i.gv, %._crit_edge494 ], [ 0, %bb.ae ]
  %.0209498 = phi i32 [ %i.gu, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %.0211497 = phi i32 [ %.1212.lcssa, %._crit_edge494 ], [ 0, %bb.ae ] ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph493.preheader, label %._crit_edge494

.lr.ph493.preheader:                              ; preds = %.preheader396
  %i.gh = sext i32 %.0211497 to i64
  br label %.lr.ph493

._crit_edge500:                                   ; preds = %._crit_edge494, %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.gj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.gk = load ptr, ptr %8, align 8, !tbaa !91    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge500
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !94
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge500, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit352.thread

bb.ag:                                            ; preds = %bb.ad
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.cs

._crit_edge494.loopexit:                          ; preds = %.lr.ph493
  %i.gr = trunc nsw i64 %indvars.iv.next560 to i32
  %.pre566 = load i32, ptr %i.ae, align 8, !tbaa !59
  br label %._crit_edge494

._crit_edge494:                                   ; preds = %._crit_edge494.loopexit, %.preheader396
  %i.gs = phi i32 [ %i.ge, %.preheader396 ], [ %.pre566, %._crit_edge494.loopexit ] ; 2 uses
  %i.gt = phi i32 [ %i.gf, %.preheader396 ], [ %i.hb, %._crit_edge494.loopexit ]
  %.1212.lcssa = phi i32 [ %.0211497, %.preheader396 ], [ %i.gr, %._crit_edge494.loopexit ]
  %.1210.lcssa = phi i32 [ %.0209498, %.preheader396 ], [ %i.gz, %._crit_edge494.loopexit ]
  %i.gu = add nsw i32 %i.ga, %.1210.lcssa
  %i.gv = add nuw nsw i32 %.0207499, 1            ; 2 uses
  %i.gw = icmp slt i32 %i.gv, %i.gs
  br i1 %i.gw, label %.preheader396, label %._crit_edge500, !llvm.loop !142

.lr.ph493:                                        ; preds = %.lr.ph493.preheader, %.lr.ph493
  %indvars.iv559 = phi i64 [ %i.gh, %.lr.ph493.preheader ], [ %indvars.iv.next560, %.lr.ph493 ] ; 2 uses
  %.0206492 = phi i32 [ 0, %.lr.ph493.preheader ], [ %i.ha, %.lr.ph493 ]
  %.1210491 = phi i32 [ %.0209498, %.lr.ph493.preheader ], [ %i.gz, %.lr.ph493 ] ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %indvars.iv559
  store i32 %.1210491, ptr %i.gx, align 4, !tbaa !72
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.gy = load i32, ptr %i.w, align 4, !tbaa !64
  %i.gz = add nsw i32 %i.gy, %.1210491            ; 2 uses
  %i.ha = add nuw nsw i32 %.0206492, 1            ; 2 uses
  %i.hb = load i32, ptr %i.y, align 4, !tbaa !58  ; 2 uses
  %i.hc = icmp slt i32 %i.ha, %i.hb
  br i1 %i.hc, label %.lr.ph493, label %._crit_edge494.loopexit, !llvm.loop !143

bb.ah:                                            ; preds = %bb.ac
  %i.hd = load i32, ptr %i.y, align 4, !tbaa !58  ; 8 uses
  %i.he = icmp eq i32 %i.hd, 3
  %.pre565 = load i32, ptr %i.ae, align 8, !tbaa !59 ; 4 uses
  %i.hf = icmp eq i32 %.pre565, 3
  %or.cond657 = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond657, label %bb.ai, label %.thread391

bb.ai:                                            ; preds = %bb.ah
  %i.hg = load i32, ptr %i.ea, align 4, !tbaa !66 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.aj, label %.thread390

bb.aj:                                            ; preds = %bb.ai
  %i.hi = load i32, ptr %i.ef, align 8, !tbaa !67
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.ak, label %.thread390

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load i32, ptr %i.w, align 4, !tbaa !64
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.al, label %.thread391

bb.al:                                            ; preds = %bb.ak
  %i.hm = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %bb.am, label %.thread391

bb.am:                                            ; preds = %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !44
  %switch = icmp ult i32 %i.hp, 2
  br i1 %switch, label %bb.an, label %.thread390

bb.an:                                            ; preds = %bb.am
  %i.hq = load i8, ptr %i.d, align 1, !tbaa !99, !range !55, !noundef !56
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ao, label %bb.bb

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.hs = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.ap

._crit_edge527:                                   ; preds = %bb.at, %bb.ao
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.av unwind label %bb.ay

bb.ap:                                            ; preds = %.lr.ph526, %bb.at
  %indvars.iv556 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next557, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv556
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !45 ; 2 uses
  %i.ia = fcmp fast oeq float %i.hz, 0.000000e+00
  br i1 %i.ia, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = load ptr, ptr %i.hv, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv556
  %i.id = load float, ptr %i.ic, align 4, !tbaa !45
  %i.ie = fmul fast float %i.id, %i.hz
  %i.if = fdiv fast float 1.000000e+00, %i.ie
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %storemerge246 = phi float [ %i.if, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  store float %storemerge246, ptr %i.g, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.ig = load ptr, ptr %i.hw, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv556
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !45
  store float %i.ii, ptr %i.h, align 4, !tbaa !45
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.ij = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next557, %i.ik
  br i1 %i.il, label %bb.ap, label %._crit_edge527, !llvm.loop !144

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.az

bb.av:                                            ; preds = %._crit_edge527
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 752
  call fastcc void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.ip = load ptr, ptr %11, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !148
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.av, %bb.aw
  %i.iv = load ptr, ptr %10, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i362 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorIfSaIfEED2Ev.exit363, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !148
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit363

_ZNSt6vectorIfSaIfEED2Ev.exit363:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.bl

bb.ay:                                            ; preds = %._crit_edge527
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.pn247 = phi { ptr, i32 } [ %i.im, %bb.au ], [ %i.jb, %bb.ay ]
  %i.jc = load ptr, ptr %10, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i364 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIfSaIfEED2Ev.exit365, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !148
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit365

_ZNSt6vectorIfSaIfEED2Ev.exit365:                 ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.cs

bb.bb:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ji = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph522, label %._crit_edge523

.lr.ph522:                                        ; preds = %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.bc

._crit_edge523:                                   ; preds = %bb.bd, %bb.bb
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bf unwind label %bb.bi

bb.bc:                                            ; preds = %.lr.ph522, %bb.bd
  %indvars.iv553 = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next554, %bb.bd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv553
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !45
  %i.jp = load ptr, ptr %i.jl, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv553
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !45
  %i.js = fmul fast float %i.jr, %i.jo
  %i.jt = fdiv fast float 1.000000e+00, %i.js
  store float %i.jt, ptr %i.i, align 4, !tbaa !45
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.ju = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next554, %i.jv
  br i1 %i.jw, label %bb.bc, label %._crit_edge523, !llvm.loop !149

end_hunk_0
begin_hunk_1_@_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.ca:                                            ; preds = %._crit_edge519
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bw
  %.pn241 = phi { ptr, i32 } [ %i.ly, %bb.bw ], [ %i.mn, %bb.ca ]
  %i.mo = load ptr, ptr %14, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i376 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorIfSaIfEED2Ev.exit377, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !148
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mt) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit377

_ZNSt6vectorIfSaIfEED2Ev.exit377:                 ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.cs

bb.cd:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.mu = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %bb.cd
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 504
  br label %bb.ce

._crit_edge515:                                   ; preds = %bb.cf, %bb.cd
  invoke void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ch unwind label %bb.ck

bb.ce:                                            ; preds = %.lr.ph514, %bb.cf
  %indvars.iv547 = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next548, %bb.cf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv547
  %i.na = load float, ptr %i.mz, align 4, !tbaa !45
  %i.nb = load ptr, ptr %i.mx, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv547
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !45
  %i.ne = fmul fast float %i.nd, %i.na
  %i.nf = fdiv fast float 1.000000e+00, %i.ne
  store float %i.nf, ptr %i.l, align 4, !tbaa !45
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.ng = load i32, ptr %i.ek, align 8, !tbaa !61
  %i.nh = sext i32 %i.ng to i64
  %i.ni = icmp slt i64 %indvars.iv.next548, %i.nh
  br i1 %i.ni, label %bb.ce, label %._crit_edge515, !llvm.loop !151

bb.cg:                                            ; preds = %bb.ce
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %bb.cl

bb.ch:                                            ; preds = %._crit_edge515
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 752
  call fastcc void @_ZN4ncnnL28convdw3x3s2_int8_dequant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.nl, ptr noundef nonnull align 8 dereferenceable(72) %i.nk, ptr noundef align 8 %17, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.nm = load ptr, ptr %17, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i378 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIfSaIfEED2Ev.exit379, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !148
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nm to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nr) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit379

_ZNSt6vectorIfSaIfEED2Ev.exit379:                 ; preds = %bb.ch, %bb.ci
  %i.ns = load ptr, ptr %16, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIfSaIfEED2Ev.exit381, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit379
  %i.nt = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !148
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nx) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit381

_ZNSt6vectorIfSaIfEED2Ev.exit381:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit379, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.cn

bb.ck:                                            ; preds = %._crit_edge515
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %.pn238 = phi { ptr, i32 } [ %i.nj, %bb.cg ], [ %i.ny, %bb.ck ]
  %i.nz = load ptr, ptr %16, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i382 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i382, label %_ZNSt6vectorIfSaIfEED2Ev.exit383, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oa = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !148
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.nz to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.oe) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit383

_ZNSt6vectorIfSaIfEED2Ev.exit383:                 ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.cs

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit381, %_ZNSt6vectorIfSaIfEED2Ev.exit375
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !47 ; 2 uses
  %.not240 = icmp eq ptr %i.og, null
  br i1 %.not240, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %.invoke

.invoke:                                          ; preds = %bb.cn, %bb.bl
  %.sink = phi ptr [ %i.ku, %bb.bl ], [ %i.og, %bb.cn ] ; 2 uses
  %i.oh = load ptr, ptr %.sink, align 8, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 72
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(208) %.sink, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNK4ncnn3Mat5emptyEv.exit352.thread unwind label %bb.ab ; 0 uses

.thread391:                                       ; preds = %bb.al, %bb.ak, %bb.ah, %bb.bo, %bb.bn, %bb.bm, %.thread390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  %i.ol = mul nsw i32 %.pre565, %i.hd             ; 4 uses
  store i32 %i.ol, ptr %i.m, align 4, !tbaa !72
  %i.om = sext i32 %i.ol to i64                   ; 3 uses
  %i.on = icmp slt i32 %i.ol, 0
  br i1 %i.on, label %bb.co, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.co:                                            ; preds = %.thread391
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc384 unwind label %bb.cr

.noexc384:                                        ; preds = %bb.co
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.thread391
  %.not.i.i.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.oo = shl nuw nsw i64 %i.om, 2
  %i.op = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oo) #24
          to label %.noexc385 unwind label %bb.cr ; 5 uses

.noexc385:                                        ; preds = %bb.cp
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.om ; 2 uses
  store i32 0, ptr %i.op, align 4, !tbaa !72
  %i.or = add nsw i64 %i.om, -1                   ; 2 uses
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc385
  %i.ot = getelementptr i8, ptr %i.op, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.or, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ot, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !72
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc385, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.oq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.oq, %.noexc385 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0388.0 = phi ptr [ %i.op, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.op, %.noexc385 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store ptr %.sroa.0388.0, ptr %i.n, align 8, !tbaa !92
  %i.ou = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.ov = mul nsw i32 %i.ou, %i.dw
  %i.ow = load i32, ptr %i.w, align 4, !tbaa !64  ; 4 uses
  %i.ox = mul nsw i32 %i.ow, %i.hd
  %i.oy = sub i32 %i.ov, %i.ox
  %i.oz = icmp sgt i32 %.pre565, 0
  %i.pa = icmp sgt i32 %i.hd, 0
  %or.cond660 = and i1 %i.oz, %i.pa
  br i1 %or.cond660, label %.preheader.preheader, label %._crit_edge511.split

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.pb = zext nneg i32 %i.hd to i64              ; 2 uses
  %min.iters.check670 = icmp ult i32 %i.hd, 8
  %n.vec672 = and i64 %i.pb, 2147483640           ; 4 uses
  %broadcast.splatinsert673 = insertelement <4 x i32> poison, i32 %i.ow, i64 0
  %broadcast.splat674 = shufflevector <4 x i32> %broadcast.splatinsert673, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pc = trunc nuw nsw i64 %n.vec672 to i32      ; 2 uses
  %i.pd = mul i32 %i.ow, %i.pc
  %i.pe = shl <4 x i32> %broadcast.splat674, splat (i32 2) ; 3 uses
  %i.pf = mul nsw <4 x i32> %broadcast.splat674, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add <4 x i32> %i.pe, %i.pe
  %cmp.n681 = icmp eq i64 %n.vec672, %i.pb
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge505
  %.0195510.a = phi i32 [ %i.ps, %._crit_edge505 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0198509.a = phi i32 [ %i.pr, %._crit_edge505 ], [ 0, %.preheader.preheader ]
  %.0200508 = phi i32 [ %24, %._crit_edge505 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.pg = sext i32 %.0195510.a to i64             ; 3 uses
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.ph671

vector.ph671:                                     ; preds = %.preheader
  %i.ph = add nsw i64 %n.vec672, %i.pg
  %i.pi = add i32 %.0200508, %i.pd                ; 2 uses
  %broadcast.splatinsert675 = insertelement <4 x i32> poison, i32 %.0200508, i64 0
  %broadcast.splat676 = shufflevector <4 x i32> %broadcast.splatinsert675, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat676, %i.pf
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.0388.0, i64 %i.pg
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph671
  %index678 = phi i64 [ 0, %vector.ph671 ], [ %index.next679, %vector.body677 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph671 ], [ %vec.ind.next.reass, %vector.body677 ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.pe
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index678 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !72
  store <4 x i32> %step.add, ptr %i.pj, align 4, !tbaa !72
  %index.next679 = add nuw i64 %index678, 8       ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.pk = icmp eq i64 %index.next679, %n.vec672
  br i1 %i.pk, label %middle.block680, label %vector.body677, !llvm.loop !152

middle.block680:                                  ; preds = %vector.body677
  br i1 %cmp.n681, label %._crit_edge505, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %.preheader, %middle.block680
  %indvars.iv542.ph = phi i64 [ %i.pg, %.preheader ], [ %i.ph, %middle.block680 ]
  %.0194503.ph = phi i32 [ 0, %.preheader ], [ %i.pc, %middle.block680 ]
  %.1199502.ph = phi i32 [ %.0200508, %.preheader ], [ %i.pi, %middle.block680 ]
  br label %scalar.ph669

._crit_edge511.split:                             ; preds = %._crit_edge505, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !93
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.pm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.n, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  %.not.i.i.i386 = icmp eq ptr %.sroa.0388.0, null
  br i1 %.not.i.i.i386, label %_ZNSt6vectorIiSaIiEED2Ev.exit387, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge511.split
  %i.pn = ptrtoint ptr %.sroa.9.0 to i64
  %i.po = ptrtoint ptr %.sroa.0388.0 to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.0, i64 noundef %i.pp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit387

_ZNSt6vectorIiSaIiEED2Ev.exit387:                 ; preds = %._crit_edge511.split, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit352.thread

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %bb.cs

._crit_edge505:                                   ; preds = %scalar.ph669, %middle.block680
  %.lcssa662 = phi i32 [ %i.pi, %middle.block680 ], [ %i.pu, %scalar.ph669 ]
  %24 = add nsw i32 %i.oy, %.lcssa662
  %i.pr = add nuw nsw i32 %.0198509.a, 1          ; 2 uses
  %i.ps = add i32 %.0195510.a, %i.hd
  %exitcond546.not = icmp eq i32 %i.pr, %.pre565
  br i1 %exitcond546.not, label %._crit_edge511.split, label %.preheader, !llvm.loop !153

scalar.ph669:                                     ; preds = %scalar.ph669.preheader, %scalar.ph669
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %scalar.ph669 ], [ %indvars.iv542.ph, %scalar.ph669.preheader ] ; 2 uses
  %.0194503 = phi i32 [ %25, %scalar.ph669 ], [ %.0194503.ph, %scalar.ph669.preheader ]
  %.1199502 = phi i32 [ %i.pu, %scalar.ph669 ], [ %.1199502.ph, %scalar.ph669.preheader ] ; 2 uses
  %i.pt = getelementptr inbounds [4 x i8], ptr %.sroa.0388.0, i64 %indvars.iv542
  store i32 %.1199502, ptr %i.pt, align 4, !tbaa !72
  %indvars.iv.next543 = add nsw i64 %indvars.iv542, 1
  %i.pu = add nsw i32 %.1199502, %i.ow            ; 2 uses
  %25 = add nuw nsw i32 %.0194503, 1              ; 2 uses
  %exitcond545.not = icmp eq i32 %25, %i.hd
  br i1 %exitcond545.not, label %._crit_edge505, label %scalar.ph669, !llvm.loop !154

_ZNK4ncnn3Mat5emptyEv.exit352.thread:             ; preds = %.invoke, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit387, %bb.cn, %bb.bl, %bb.ac, %_ZNK4ncnn3Mat5emptyEv.exit352
  %.2 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit352 ], [ 0, %bb.ac ], [ -100, %bb.aa ], [ 0, %bb.bl ], [ 0, %bb.cn ], [ 0, %.invoke ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit387 ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit351.thread

bb.cs:                                            ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEED2Ev.exit383, %_ZNSt6vectorIfSaIfEED2Ev.exit377, %_ZNSt6vectorIfSaIfEED2Ev.exit371, %_ZNSt6vectorIfSaIfEED2Ev.exit365, %bb.ag, %bb.ab
  %.pn247.pn = phi { ptr, i32 } [ %.pn247, %_ZNSt6vectorIfSaIfEED2Ev.exit365 ], [ %i.fp, %bb.ab ], [ %.pn243, %_ZNSt6vectorIfSaIfEED2Ev.exit371 ], [ %.pn241, %_ZNSt6vectorIfSaIfEED2Ev.exit377 ], [ %.pn238, %_ZNSt6vectorIfSaIfEED2Ev.exit383 ], [ %i.pq, %bb.cr ], [ %i.gq, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.gc

bb.ct:                                            ; preds = %bb.y, %bb.x
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !88
  %i.px = icmp sgt i32 %i.pw, 100                 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !63, !range !55, !noundef !56
  %i.qa = trunc nuw i8 %i.pz to i1
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !62 ; 3 uses
  br i1 %i.qa, label %bb.cu, label %._crit_edge562

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.px, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qd = and i32 %i.qc, 7
  %i.qe = icmp eq i32 %i.qd, 0
  %i.qf = select i1 %i.qe, i32 8, i32 1
  br label %._crit_edge562

bb.cw:                                            ; preds = %bb.cu
  %i.qg = and i32 %i.qc, 3
  %i.qh = icmp eq i32 %i.qg, 0
  %i.qi = select i1 %i.qh, i32 4, i32 1
  br label %._crit_edge562

._crit_edge562:                                   ; preds = %bb.ct, %bb.cv, %bb.cw
  %.0177 = phi i32 [ %i.qf, %bb.cv ], [ %i.qi, %bb.cw ], [ 1, %bb.ct ] ; 7 uses
  %i.qj = shl nuw nsw i32 %.0177, 2
  %i.qk = select i1 %i.px, i32 %.0177, i32 %i.qj  ; 2 uses
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.qn = sdiv i32 %i.qc, %.0177
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ed, i32 noundef %i.ei, i32 noundef %i.qn, i64 noundef %i.ql, i32 noundef %.0177, ptr noundef %i.qp)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %._crit_edge562
  %i.qq = load ptr, ptr %2, align 8, !tbaa !18
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %_ZNK4ncnn3Mat5emptyEv.exit351

_ZNK4ncnn3Mat5emptyEv.exit351:                    ; preds = %bb.cx
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !20
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !73
  %i.qw = sext i32 %i.qv to i64
  %i.qx = mul i64 %i.qt, %i.qw
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge562
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.cz:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit351
  %i.ra = load i32, ptr %i.ek, align 8, !tbaa !61 ; 2 uses
  %i.rb = sdiv i32 %i.ej, %i.ra                   ; 3 uses
  %i.rc = load i32, ptr %i.qm, align 8, !tbaa !62
  %i.rd = sdiv i32 %i.rc, %i.ra                   ; 4 uses
  %i.re = load i8, ptr %i.py, align 1, !tbaa !63, !range !55, !noundef !56
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.rg = and i32 %i.rb, 7
  %i.rh = icmp eq i32 %i.rg, 0
  %i.ri = select i1 %i.rh, i32 8, i32 1           ; 2 uses
  br i1 %i.px, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.rj = and i32 %i.rd, 7
  %i.rk = icmp eq i32 %i.rj, 0
  %i.rl = select i1 %i.rk, i32 8, i32 1
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.rm = and i32 %i.rd, 3
  %i.rn = icmp eq i32 %i.rm, 0
  %i.ro = select i1 %i.rn, i32 4, i32 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc, %bb.cz
  %.0162 = phi i32 [ %i.ri, %bb.db ], [ %i.ri, %bb.dc ], [ 1, %bb.cz ] ; 4 uses
  %.0161 = phi i32 [ %i.rl, %bb.db ], [ %i.ro, %bb.dc ], [ 1, %bb.cz ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.rp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.rq = load ptr, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.rr = load <2 x ptr>, ptr %7, align 16, !tbaa !69
  store <2 x ptr> %i.rr, ptr %18, align 16, !tbaa !69
  %i.rs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rt = load i64, ptr %i.dg, align 16, !tbaa !70
  store i64 %i.rt, ptr %i.rs, align 16, !tbaa !70
  %i.ru = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.rv = load i32, ptr %i.dh, align 8, !tbaa !71
  store i32 %i.rv, ptr %i.ru, align 8, !tbaa !71
  %i.rw = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.rx = load ptr, ptr %i.di, align 16, !tbaa !17
  store ptr %i.rx, ptr %i.rw, align 16, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.sa = load <4 x i32>, ptr %i.dj, align 8, !tbaa !72
  store <4 x i32> %i.sa, ptr %i.ry, align 8, !tbaa !72
  %i.sb = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.sc = load i32, ptr %i.dm, align 8, !tbaa !73
  store i32 %i.sc, ptr %i.sb, align 8, !tbaa !73
  %i.sd = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.se = load i64, ptr %i.dn, align 16, !tbaa !20
  store i64 %i.se, ptr %i.sd, align 16, !tbaa !20
  %.not.i356 = icmp eq ptr %i.rq, null
  br i1 %.not.i356, label %_ZN4ncnn3Mat6addrefEv.exit357, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sf = atomicrmw add ptr %i.rq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit357

_ZN4ncnn3Mat6addrefEv.exit357:                    ; preds = %bb.de, %bb.dd
  %i.sg = icmp sgt i32 %i.dy, %.0162
  br i1 %i.sg, label %bb.df, label %bb.di

bb.df:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit357
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !98
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !102
  %i.sj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !90
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %.0162, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sk = load ptr, ptr %18, align 16, !tbaa !18
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %_ZNK4ncnn3Mat5emptyEv.exit350.thread, label %_ZNK4ncnn3Mat5emptyEv.exit350

_ZNK4ncnn3Mat5emptyEv.exit350.thread:             ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.fo

_ZNK4ncnn3Mat5emptyEv.exit350:                    ; preds = %bb.dg
  %i.sm = load i64, ptr %i.sd, align 16, !tbaa !20
  %i.sn = load i32, ptr %i.sb, align 8, !tbaa !73
  %i.so = sext i32 %i.sn to i64
  %i.sp = mul i64 %i.sm, %i.so
  %i.sq = icmp eq i64 %i.sp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br i1 %i.sq, label %bb.fo, label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.fv

bb.di:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit350, %_ZN4ncnn3Mat6addrefEv.exit357
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.ss = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !11 ; 2 uses
  %i.sv = load <2 x ptr>, ptr %2, align 8, !tbaa !69
  store <2 x ptr> %i.sv, ptr %20, align 16, !tbaa !69
  %i.sw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !70
  store i64 %i.sy, ptr %i.sw, align 16, !tbaa !70
  %i.sz = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !71
  store i32 %i.tb, ptr %i.sz, align 8, !tbaa !71
  %i.tc = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !17
  store ptr %i.te, ptr %i.tc, align 16, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %20, i64 44
  %i.ti = load <4 x i32>, ptr %i.tg, align 8, !tbaa !72
  store <4 x i32> %i.ti, ptr %i.tf, align 8, !tbaa !72
  %i.tj = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 3 uses
  %i.tk = load i32, ptr %i.qu, align 8, !tbaa !73
  store i32 %i.tk, ptr %i.tj, align 8, !tbaa !73
  %i.tl = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.tm = load i64, ptr %i.qs, align 8, !tbaa !20
  store i64 %i.tm, ptr %i.tl, align 16, !tbaa !20
  %.not.i358 = icmp eq ptr %i.su, null
end_hunk_1
