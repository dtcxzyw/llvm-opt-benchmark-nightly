Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/OpenArchive?download=true
inline.NumInlined: 383
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback:bb.a
bb.t:                                             ; preds = %_ZN13CRecordVectorIiE3AddEi.exit339, %_ZN13CRecordVectorIiE6InsertEii.exit
  %.1204 = phi i32 [ %i.cf, %_ZN13CRecordVectorIiE6InsertEii.exit ], [ %.0203686, %_ZN13CRecordVectorIiE3AddEi.exit339 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.ba, align 4, !tbaa !40
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.r, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.t
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.u, label %bb.w

._crit_edge.thread:                               ; preds = %.preheader657
  %.not802 = icmp eq ptr %3, null
  br i1 %.not802, label %_ZN11CStringBaseIwED2Ev.exit525, label %.thread808

bb.u:                                             ; preds = %._crit_edge
  %.not269 = icmp eq i32 %.1204, 1
  br i1 %.not269, label %bb.v, label %_ZN11CStringBaseIwED2Ev.exit525

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN17CBaseRecordVector10DeleteFromEi(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 1)
          to label %.thread unwind label %.loopexit.split-lp653.loopexit.split-lp

bb.w:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !40
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.x, label %bb.bk

.thread808:                                       ; preds = %._crit_edge.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !40
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %.thread811, label %bb.bk

.thread:                                          ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %.thread567, label %bb.bk

bb.x:                                             ; preds = %bb.w
  %i.dd = icmp eq i32 %.1204, 0
  br i1 %i.dd, label %.thread811, label %.thread567

.thread567:                                       ; preds = %.thread, %bb.x
  %i.de = phi ptr [ %i.cu, %bb.x ], [ %i.da, %.thread ] ; 2 uses
  %i.df = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.sroa.0553.0, ptr noundef nonnull @.str)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit unwind label %.loopexit.split-lp653.loopexit.split-lp

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit:     ; preds = %.thread567
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.thread811, label %bb.bk

.thread811:                                       ; preds = %.thread808, %bb.x, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
  %i.dh = phi ptr [ %i.de, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit ], [ %i.cu, %bb.x ], [ %i.cx, %.thread808 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.dj, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %9, align 8, !tbaa !17
  %i.dk = invoke noalias noundef nonnull dereferenceable(2097152) ptr @_Znam(i64 noundef 2097152) #19
          to label %_ZN7CBufferIhE11SetCapacityEm.exit unwind label %bb.bi ; 7 uses

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %.thread811
  %i.dl = load ptr, ptr %3, align 8, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0, i32 noundef 0, ptr noundef null)
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %.not278 = icmp eq i32 %i.do, 0
  br i1 %.not278, label %bb.aa, label %_ZN7CBufferIhED2Ev.exit349

bb.z:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 2097152, ptr %i.a, align 8, !tbaa !134
  %i.dq = invoke noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef nonnull %3, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.a)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not279 = icmp eq i32 %i.dq, 0
  br i1 %.not279, label %bb.ad, label %bb.bd

bb.ac:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ad:                                            ; preds = %bb.ab
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !134
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.bd, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %10, align 8, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  invoke void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 65536)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !45 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.dw, i8 -1, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.dx = load i32, ptr %i.dh, align 4, !tbaa !40 ; 4 uses
  %i.dy = icmp slt i32 %i.dx, 256                 ; 2 uses
  br i1 %i.dy, label %.preheader649, label %.thread570

.preheader649:                                    ; preds = %bb.af
  %i.dz = icmp sgt i32 %i.dx, 0
  br i1 %i.dz, label %.lr.ph690, label %._crit_edge691

.lr.ph690:                                        ; preds = %.preheader649
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ah

.thread570:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %10, align 8, !tbaa !17
  br label %bb.bc

bb.ag:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ah:                                            ; preds = %.lr.ph690, %bb.ak
  %i.ed = phi i32 [ %i.dx, %.lr.ph690 ], [ %i.fc, %bb.ak ]
  %indvars.iv739 = phi i64 [ 0, %.lr.ph690 ], [ %indvars.iv.next740, %bb.ak ] ; 4 uses
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv739
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !41
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !42 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.em = load i64, ptr %i.el, align 8, !tbaa !46
  %i.en = icmp ult i64 %i.em, 2
  br i1 %i.en, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge697
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.aj:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !45 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.es ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv739
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !18
  %i.fb = trunc i64 %indvars.iv739 to i8
  store i8 %i.fb, ptr %i.ey, align 1, !tbaa !18
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !40
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  %i.fc = phi i32 [ %i.ed, %bb.ah ], [ %.pre, %bb.aj ] ; 3 uses
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next740, %i.fd
  br i1 %i.fe, label %bb.ah, label %._crit_edge691, !llvm.loop !100

._crit_edge691:                                   ; preds = %bb.ak, %.preheader649
  %i.ff = phi i32 [ %i.dx, %.preheader649 ], [ %i.fc, %bb.ak ]
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !134
  %i.fh = add i64 %i.fg, -1                       ; 3 uses
  store i64 %i.fh, ptr %i.a, align 8, !tbaa !134
  %.not714 = icmp eq i64 %i.fh, 0
  br i1 %.not714, label %.critedge._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge691
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.aw
  %i.fm = phi i64 [ %i.fh, %.preheader.lr.ph ], [ %i.hs, %bb.aw ] ; 2 uses
  %.0179692 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gc, %bb.aw ]
  br label %bb.al

bb.al:                                            ; preds = %.preheader, %bb.am
  %.1180 = phi i32 [ %21, %bb.am ], [ %.0179692, %.preheader ] ; 3 uses
  %19 = zext i32 %.1180 to i64                    ; 5 uses
  %20 = icmp ugt i64 %i.fm, %19
  br i1 %20, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %19
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i64
  %21 = add i32 %.1180, 1                         ; 2 uses
  %22 = zext i32 %21 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %22
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18
  %i.fs = zext i8 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fp
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = icmp eq i8 %i.fw, -1
  br i1 %i.fx, label %bb.al, label %.critedge, !llvm.loop !101

.critedge:                                        ; preds = %bb.al, %bb.am
  %i.fy = icmp eq i64 %i.fm, %19
  br i1 %i.fy, label %.critedge._crit_edge.loopexit, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %19 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !18
  %i.gb = zext i8 %i.ga to i64
  %i.gc = add i32 %.1180, 1                       ; 2 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !18
  %i.gg = zext i8 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gb ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.av
  %.0177 = phi ptr [ %i.gj, %bb.an ], [ %.1178, %bb.av ] ; 2 uses
  %.0176.in = phi i8 [ %i.gk, %bb.an ], [ %i.hr, %bb.av ]
  %i.gl = load ptr, ptr %i.fi, align 8, !tbaa !41
  %i.gm = zext i8 %.0176.in to i64                ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !9  ; 2 uses
  %i.gp = load ptr, ptr %i.fj, align 8, !tbaa !41
  %i.gq = sext i32 %i.go to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !42 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !46 ; 3 uses
  %.not280 = icmp eq i64 %i.gu, 0
  br i1 %.not280, label %_ZL13TestSignaturePKhS0_m.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gv = add i64 %i.gu, %19
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !134
  %i.gx = add i64 %i.gw, 1
  %.not281 = icmp ugt i64 %i.gv, %i.gx
  br i1 %.not281, label %_ZL13TestSignaturePKhS0_m.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45
  br label %.lr.ph.i343

bb.ar:                                            ; preds = %.lr.ph.i343
  %i.ha = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ha, %i.gu
  br i1 %exitcond.not.i, label %bb.as, label %.lr.ph.i343, !llvm.loop !102

.lr.ph.i343:                                      ; preds = %bb.aq, %bb.ar
  %.0810.i = phi i64 [ %i.ha, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.0810.i
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.0810.i
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !18
  %.not.i344 = icmp eq i8 %i.hc, %i.he
  br i1 %.not.i344, label %bb.ar, label %_ZL13TestSignaturePKhS0_m.exit

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hf = load ptr, ptr %i.fk, align 8, !tbaa !41
  %i.hg = load i32, ptr %i.fl, align 4, !tbaa !40
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hh
  store i32 %i.go, ptr %i.hi, align 4, !tbaa !9
  %i.hj = load i32, ptr %i.fl, align 4, !tbaa !40
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.fl, align 4, !tbaa !40
  %i.hl = load ptr, ptr %i.fi, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.gm
  store i32 255, ptr %i.hm, align 4, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18  ; 2 uses
  store i8 %i.ho, ptr %.0177, align 1, !tbaa !18
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZL13TestSignaturePKhS0_m.exit:                   ; preds = %.lr.ph.i343, %bb.ap, %bb.ao
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gm ; 2 uses
  %.pr = load i8, ptr %i.hq, align 1, !tbaa !18
  br label %bb.av

bb.av:                                            ; preds = %_ZL13TestSignaturePKhS0_m.exit, %bb.at
  %i.hr = phi i8 [ %.pr, %_ZL13TestSignaturePKhS0_m.exit ], [ %i.ho, %bb.at ] ; 2 uses
  %.1178 = phi ptr [ %i.hq, %_ZL13TestSignaturePKhS0_m.exit ], [ %.0177, %bb.at ]
  %.not284 = icmp eq i8 %i.hr, -1
  br i1 %.not284, label %bb.aw, label %bb.ao, !llvm.loop !103

bb.aw:                                            ; preds = %bb.av
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, %i.gd
  br i1 %i.ht, label %.preheader, label %.critedge._crit_edge.loopexit, !llvm.loop !104

.critedge._crit_edge.loopexit:                    ; preds = %.critedge, %bb.aw
  %.pre751 = load i32, ptr %i.dh, align 4, !tbaa !40
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %._crit_edge691
  %i.hu = phi i32 [ %.pre751, %.critedge._crit_edge.loopexit ], [ %i.ff, %._crit_edge691 ] ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph696, label %._crit_edge697

.lr.ph696:                                        ; preds = %.critedge._crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph696, %bb.ba
  %i.hz = phi i32 [ %i.hu, %.lr.ph696 ], [ %i.ik, %bb.ba ]
  %indvars.iv742 = phi i64 [ 0, %.lr.ph696 ], [ %indvars.iv.next743.a, %bb.ba ] ; 2 uses
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !41
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv742
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !9  ; 2 uses
  %.not285 = icmp eq i32 %i.ic, 255
  br i1 %.not285, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN13CRecordVectorIiE3AddEi.exit348 unwind label %bb.az

_ZN13CRecordVectorIiE3AddEi.exit348:              ; preds = %bb.ay
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !41
  %i.ie = load i32, ptr %i.hy, align 4, !tbaa !40
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.if
  store i32 %i.ic, ptr %i.ig, align 4, !tbaa !9
  %i.ih = load i32, ptr %i.hy, align 4, !tbaa !40
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %i.hy, align 4, !tbaa !40
  %.pre752 = load i32, ptr %i.dh, align 4, !tbaa !40
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ba:                                            ; preds = %_ZN13CRecordVectorIiE3AddEi.exit348, %bb.ax
  %i.ik = phi i32 [ %.pre752, %_ZN13CRecordVectorIiE3AddEi.exit348 ], [ %i.hz, %bb.ax ] ; 2 uses
  %indvars.iv.next743.a = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next743.a, %i.il
  br i1 %i.im, label %bb.ax, label %._crit_edge697, !llvm.loop !105

._crit_edge697:                                   ; preds = %bb.ba, %.critedge._crit_edge
  %i.in = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CRecordVectorIiEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bb unwind label %bb.ai     ; 0 uses

bb.bb:                                            ; preds = %._crit_edge697
  %.pr569 = load ptr, ptr %i.dv, align 8, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %10, align 8, !tbaa !17
  %i.io = icmp eq ptr %.pr569, null
  br i1 %i.io, label %_ZN7CBufferIhED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %.thread570, %bb.bb
  %.2572 = phi i32 [ 1, %.thread570 ], [ 0, %bb.bb ]
  %i.ip = phi ptr [ %i.dw, %.thread570 ], [ %.pr569, %bb.bb ]
  call void @_ZdaPv(ptr noundef nonnull %i.ip) #20, !inline_history !47
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.bb, %bb.bc
  %.2573 = phi i32 [ 0, %bb.bb ], [ %.2572, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ad, %bb.ab, %_ZN7CBufferIhED2Ev.exit
  %.3188 = phi i1 [ false, %bb.ab ], [ %i.dy, %_ZN7CBufferIhED2Ev.exit ], [ false, %bb.ad ]
  %.3 = phi i32 [ %i.dq, %bb.ab ], [ %.2573, %_ZN7CBufferIhED2Ev.exit ], [ 1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CBufferIhED2Ev.exit349

_ZN7CBufferIhED2Ev.exit349:                       ; preds = %bb.y, %bb.bd
  %.4189 = phi i1 [ %.3188, %bb.bd ], [ false, %bb.y ]
  %.4 = phi i32 [ %.3, %bb.bd ], [ %i.do, %bb.y ] ; 2 uses
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #20, !inline_history !47
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %.4189, label %bb.cd, label %_ZN11CStringBaseIwED2Ev.exit525

bb.be:                                            ; preds = %bb.au, %bb.az, %bb.ai
  %.pn286 = phi { ptr, i32 } [ %i.hp, %bb.au ], [ %i.ij, %bb.az ], [ %i.eo, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ag
  %.pn286.pn = phi { ptr, i32 } [ %.pn286, %bb.be ], [ %i.ec, %bb.ag ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %10, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !45 ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %_ZN7CBufferIhED2Ev.exit350, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.ir) #20, !inline_history !47
  br label %_ZN7CBufferIhED2Ev.exit350

_ZN7CBufferIhED2Ev.exit350:                       ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7CBufferIhED2Ev.exit350, %bb.ac
  %.pn286.pn.pn = phi { ptr, i32 } [ %.pn286.pn, %_ZN7CBufferIhED2Ev.exit350 ], [ %i.dr, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bj

bb.bi:                                            ; preds = %.thread811
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit351

bb.bj:                                            ; preds = %bb.bh, %bb.z
  %.pn286.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %.pn286.pn.pn, %bb.bh ]
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #20, !inline_history !47
  br label %_ZN7CBufferIhED2Ev.exit351

_ZN7CBufferIhED2Ev.exit351:                       ; preds = %bb.bi, %bb.bj
  %.pn286.pn.pn.pn579 = phi { ptr, i32 } [ %i.it, %bb.bi ], [ %.pn286.pn.pn.pn.ph, %bb.bj ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZN7CBufferIhED2Ev.exit370

bb.bk:                                            ; preds = %.thread808, %.thread, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit, %bb.w
  %i.iu = phi ptr [ %i.da, %.thread ], [ %i.de, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit ], [ %i.cu, %bb.w ], [ %i.cx, %.thread808 ] ; 5 uses
  %i.iv = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0553.0, ptr noundef nonnull @.str.1)
          to label %bb.bl unwind label %.loopexit.split-lp653.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_ZN4CArcC2ERKS_:bb.a
  %i.dn = shl nuw nsw i64 %i.dl, 2
  %i.do = select i1 %i.dm, i64 -1, i64 %i.dn
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #19
          to label %.noexc43 unwind label %bb.q   ; 10 uses

.noexc43:                                         ; preds = %bb.k
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.ds = icmp sgt i32 %i.dr, 0
  %.pre4.i28 = load i32, ptr %i.df, align 8, !tbaa !25 ; 5 uses
  br i1 %i.ds, label %.preheader.i.i33, label %bb.l

.preheader.i.i33:                                 ; preds = %.noexc43
  %i.dt = icmp sgt i32 %.pre4.i28, 0
  %.pre.i.i34 = load ptr, ptr %i.dd, align 8, !tbaa !26 ; 9 uses
  br i1 %i.dt, label %.lr.ph.i.i38, label %._crit_edge.i.i35

.lr.ph.i.i38:                                     ; preds = %.preheader.i.i33
  %.pre.i.i3471 = ptrtoaddr ptr %.pre.i.i34 to i64
  %wide.trip.count.i.i39 = zext nneg i32 %.pre4.i28 to i64 ; 5 uses
  %min.iters.check74 = icmp ult i32 %.pre4.i28, 8
  %i.du = sub i64 %.pre.i.i3471, %i.dq
  %diff.check72 = icmp ugt i64 %i.du, -32
  %or.cond86 = select i1 %min.iters.check74, i1 true, i1 %diff.check72
  br i1 %or.cond86, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i38
  %n.vec76 = and i64 %wide.trip.count.i.i39, 2147483640 ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %index78 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load79 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !28
  %wide.load80 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !28
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index78 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %wide.load79, ptr %i.dx, align 4, !tbaa !28
  store <4 x i32> %wide.load80, ptr %i.dy, align 4, !tbaa !28
  %index.next81 = add nuw i64 %index78, 8         ; 2 uses
  %i.dz = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.dz, label %middle.block82, label %vector.body77, !llvm.loop !248

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %n.vec76, %wide.trip.count.i.i39
  br i1 %cmp.n83, label %._crit_edge.thread.i.i36, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.lr.ph.i.i38, %middle.block82
  %indvars.iv.i.i40.ph = phi i64 [ 0, %.lr.ph.i.i38 ], [ %n.vec76, %middle.block82 ] ; 3 uses
  %xtraiter90 = and i64 %wide.trip.count.i.i39, 3 ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol

scalar.ph73.prol:                                 ; preds = %scalar.ph73.preheader, %scalar.ph73.prol
  %indvars.iv.i.i40.prol = phi i64 [ %indvars.iv.next.i.i41.prol, %scalar.ph73.prol ], [ %indvars.iv.i.i40.ph, %scalar.ph73.preheader ] ; 3 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %scalar.ph73.prol ], [ 0, %scalar.ph73.preheader ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %indvars.iv.i.i40.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i40.prol
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !28
  %indvars.iv.next.i.i41.prol = add nuw nsw i64 %indvars.iv.i.i40.prol, 1 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol, !llvm.loop !249

scalar.ph73.prol.loopexit:                        ; preds = %scalar.ph73.prol, %scalar.ph73.preheader
  %indvars.iv.i.i40.unr = phi i64 [ %indvars.iv.i.i40.ph, %scalar.ph73.preheader ], [ %indvars.iv.next.i.i41.prol, %scalar.ph73.prol ]
  %i.ed = sub nsw i64 %indvars.iv.i.i40.ph, %wide.trip.count.i.i39
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %._crit_edge.thread.i.i36, label %scalar.ph73

._crit_edge.i.i35:                                ; preds = %.preheader.i.i33
  %i.ef = icmp eq ptr %.pre.i.i34, null
  br i1 %i.ef, label %bb.l, label %._crit_edge.thread.i.i36

scalar.ph73:                                      ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73
  %indvars.iv.i.i40 = phi i64 [ %indvars.iv.next.i.i41.3, %scalar.ph73 ], [ %indvars.iv.i.i40.unr, %scalar.ph73.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %indvars.iv.i.i40
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !28
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.i40
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !28
  %indvars.iv.next.i.i41 = add nuw nsw i64 %indvars.iv.i.i40, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %indvars.iv.next.i.i41
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !28
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i41
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !28
  %indvars.iv.next.i.i41.1 = add nuw nsw i64 %indvars.iv.i.i40, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %indvars.iv.next.i.i41.1
  %i.en = load i32, ptr %i.em, align 4, !tbaa !28
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i41.1
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !28
  %indvars.iv.next.i.i41.2 = add nuw nsw i64 %indvars.iv.i.i40, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i34, i64 %indvars.iv.next.i.i41.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !28
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i41.2
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !28
  %indvars.iv.next.i.i41.3 = add nuw nsw i64 %indvars.iv.i.i40, 4 ; 2 uses
  %exitcond.not.i.i42.3 = icmp eq i64 %indvars.iv.next.i.i41.3, %wide.trip.count.i.i39
  br i1 %exitcond.not.i.i42.3, label %._crit_edge.thread.i.i36, label %scalar.ph73, !llvm.loop !250

._crit_edge.thread.i.i36:                         ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73, %middle.block82, %._crit_edge.i.i35
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i34) #20
  %.pre.i37 = load i32, ptr %i.df, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i36, %._crit_edge.i.i35, %.noexc43
  %i.es = phi i32 [ %.pre.i37, %._crit_edge.thread.i.i36 ], [ %.pre4.i28, %._crit_edge.i.i35 ], [ %.pre4.i28, %.noexc43 ]
  store ptr %i.dp, ptr %i.dd, align 8, !tbaa !26
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.et
  store i32 0, ptr %i.eu, align 4, !tbaa !28
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !29
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i29

_ZN11CStringBaseIwE11SetCapacityEi.exit.i29:      ; preds = %bb.l, %bb.j
  %i.ev = phi ptr [ null, %bb.j ], [ %i.dp, %bb.l ]
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i29
  %.04.i.i30 = phi ptr [ %i.ev, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i29 ], [ %i.ez, %bb.m ] ; 2 uses
  %.0.i.i31 = phi ptr [ %i.ew, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i29 ], [ %i.ex, %bb.m ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 4
  %i.ey = load i32, ptr %.0.i.i31, align 4, !tbaa !28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.04.i.i30, i64 4
  store i32 %i.ey, ptr %.04.i.i30, align 4, !tbaa !28
  %.not.i.i32 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i32, label %bb.n, label %bb.m, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  %i.fa = load i32, ptr %i.dh, align 8, !tbaa !25
  store i32 %i.fa, ptr %i.df, align 8, !tbaa !25
  ret void

bb.o:                                             ; preds = %bb.c
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit45

bb.p:                                             ; preds = %bb.g
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit

bb.q:                                             ; preds = %bb.k
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.fe) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.p ], [ %i.fd, %bb.q ], [ %i.fd, %bb.r ] ; 2 uses
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN11CStringBaseIwED2Ev.exit45, label %bb.s

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.fg) #20
  br label %_ZN11CStringBaseIwED2Ev.exit45

_ZN11CStringBaseIwED2Ev.exit45:                   ; preds = %bb.s, %_ZN11CStringBaseIwED2Ev.exit, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.o ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit ], [ %.pn, %bb.s ]
  %i.fi = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i46 = icmp eq ptr %i.fi, null
  br i1 %.not.i46, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit45
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  tail call void @__clang_call_terminate(ptr %i.fo) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit:             ; preds = %_ZN11CStringBaseIwED2Ev.exit45, %bb.t
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"_ZTS14tagPROPVARIANT", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !7, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 2}
!14 = !{!"bool", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 _ZTS10IInArchive", !19, i64 0}
!21 = !{!"_ZTS9CMyComPtrI10IInArchiveE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"p1 wchar_t", !19, i64 0}
!24 = !{!"_ZTS11CStringBaseIwE", !23, i64 0, !8, i64 8, !8, i64 12}
!25 = !{!24, !8, i64 8}
!26 = !{!24, !23, i64 0}
!27 = !{!"wchar_t", !7, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!24, !8, i64 12}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"_ZTS9_FILETIME", !8, i64 0, !8, i64 4}
!35 = !{!"_ZTS4CArc", !21, i64 0, !24, i64 8, !24, i64 24, !8, i64 40, !8, i64 44, !34, i64 48, !14, i64 56, !24, i64 64}
!36 = !{!35, !14, i64 56}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTS17CBaseRecordVector", !8, i64 8, !8, i64 12, !19, i64 16, !37, i64 24}
!39 = !{!38, !37, i64 24}
!40 = !{!38, !8, i64 12}
!41 = !{!38, !19, i64 16}
!42 = !{!19, !19, i64 0}
!43 = !{!"p1 omnipotent char", !19, i64 0}
!44 = !{!"_ZTS7CBufferIhE", !37, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 16}
!46 = !{!44, !37, i64 8}
!47 = !{ptr @_ZN7CBufferIhED2Ev}
!48 = !{!"_ZTS13CRecordVectorIPvE", !38, i64 0}
!49 = !{!"_ZTS13CMyUnknownImp", !8, i64 0}
!50 = !{!49, !8, i64 0}
!51 = !{!"_ZTS11CStringBaseIcE", !43, i64 0, !8, i64 8, !8, i64 12}
!52 = !{!"_ZTSN8NWindows5NFile3NIO9CFileBaseE", !8, i64 8, !51, i64 16, !37, i64 32, !37, i64 40, !8, i64 48, !7, i64 52, !8, i64 1080}
!53 = !{!52, !8, i64 8}
!54 = !{!51, !8, i64 12}
!55 = !{!51, !43, i64 0}
!56 = !{!"_ZTS8IUnknown"}
!57 = !{!"_ZTS19ISequentialInStream", !56, i64 0}
!58 = !{!"_ZTS9IInStream", !57, i64 0}
!59 = !{!"_ZTS14IStreamGetSize", !56, i64 0}
!60 = !{!"_ZTSN8NWindows5NFile3NIO7CInFileE", !52, i64 0}
!61 = !{!"_ZTS13CInFileStream", !58, i64 0, !59, i64 8, !49, i64 16, !14, i64 20, !60, i64 24}
!62 = !{!61, !14, i64 20}
!63 = !{!"_ZTS13CObjectVectorI4CArcE", !48, i64 0}
!64 = !{!"_ZTS13CObjectVectorI11CStringBaseIwEE", !48, i64 0}
!65 = !{!"long long", !7, i64 0}
!66 = !{!"_ZTS12CArchiveLink", !63, i64 0, !64, i64 32, !65, i64 64, !14, i64 72}
!67 = !{!66, !14, i64 72}
!68 = !{!"_ZTS20IArchiveOpenCallback", !56, i64 0}
!69 = !{!"_ZTS26IArchiveOpenVolumeCallback", !56, i64 0}
!70 = !{!"_ZTS29IArchiveOpenSetSubArchiveName", !56, i64 0}
!71 = !{!"_ZTS22ICryptoGetTextPassword", !56, i64 0}
!72 = !{!"_ZTSN8NWindows5NFile5NFind13CFileInfoBaseE", !65, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !8, i64 32, !14, i64 36}
!73 = !{!"_ZTSN8NWindows5NFile5NFind10CFileInfoWE", !72, i64 0, !24, i64 40}
!74 = !{!"p1 _ZTS15IOpenCallbackUI", !19, i64 0}
!75 = !{!"p1 _ZTS20IArchiveOpenCallback", !19, i64 0}
!76 = !{!"_ZTS9CMyComPtrI20IArchiveOpenCallbackE", !75, i64 0}
!77 = !{!"_ZTS16COpenCallbackImp", !68, i64 0, !69, i64 8, !70, i64 16, !71, i64 24, !49, i64 32, !24, i64 40, !73, i64 56, !14, i64 112, !24, i64 120, !64, i64 136, !74, i64 168, !76, i64 176, !65, i64 184}
!78 = !{!77, !74, i64 168}
!79 = !{!77, !65, i64 184}
!80 = distinct !{!80, !30, !31, !32}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !30, !31}
!83 = distinct !{!83, !30, !31, !32}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !30, !31}
!86 = distinct !{!86, !30, !31, !32}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !30, !31}
!89 = distinct !{!89, !30, !31, !32}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !30, !31}
!92 = !{!34, !8, i64 0}
!93 = !{!34, !8, i64 4}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = distinct !{null}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !30}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30}
!103 = distinct !{!103, !30}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30, !31, !32}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !30, !31}
!110 = distinct !{!110, !30, !31, !32}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !30, !31}
!113 = distinct !{!113, !30, !31, !32}
!114 = distinct !{!114, !30, !32, !31}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{!117, !30, !31, !32}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !30, !31}
!120 = distinct !{null}
!121 = distinct !{!121, !30, !31, !32}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !30, !31}
!124 = distinct !{!124, !30, !31, !32}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !30, !31}
!127 = distinct !{!127, !30, !31, !32}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !30, !31}
!130 = distinct !{!130, !30, !31, !32}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !30, !31}
!133 = distinct !{!133, !30}
!134 = !{!37, !37, i64 0}
!135 = !{!35, !8, i64 40}
!136 = !{!"_ZTS13CObjectVectorI11CArcExtInfoE", !48, i64 0}
!137 = !{!"_ZTS10CArcInfoEx", !14, i64 0, !19, i64 8, !19, i64 16, !24, i64 24, !136, i64 40, !44, i64 72, !14, i64 96}
!138 = !{!137, !19, i64 8}
!139 = !{!"p1 _ZTS15IArchiveOpenSeq", !19, i64 0}
!140 = !{!"_ZTS9CMyComPtrI15IArchiveOpenSeqE", !139, i64 0}
!141 = !{!140, !139, i64 0}
!142 = distinct !{!142, !30}
!143 = distinct !{null}
!144 = distinct !{!144, !30, !31, !32}
!145 = distinct !{!145, !30, !31, !32}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !30, !31}
!148 = distinct !{null}
!149 = !{!51, !8, i64 8}
!150 = !{!"branch_weights", i32 4, i32 28}
!151 = distinct !{!151, !30}
!152 = distinct !{!152, !30, !31, !32}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !30, !31}
!155 = distinct !{null}
!156 = distinct !{!156, !30}
!157 = !{!35, !8, i64 44}
!158 = !{!"p1 _ZTS19IInArchiveGetStream", !19, i64 0}
!159 = !{!"_ZTS9CMyComPtrI19IInArchiveGetStreamE", !158, i64 0}
!160 = !{!159, !158, i64 0}
!161 = !{!"p1 _ZTS19ISequentialInStream", !19, i64 0}
!162 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !161, i64 0}
!163 = !{!162, !161, i64 0}
!164 = !{!"p1 _ZTS9IInStream", !19, i64 0}
!165 = !{!"_ZTS9CMyComPtrI9IInStreamE", !164, i64 0}
!166 = !{!165, !164, i64 0}
end_hunk_1
