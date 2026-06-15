inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21RunActiveThreadsToEndEv:bb.a
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.ce, align 8
  store i64 %.sroa.014.0.copyload.i, ptr %.0.i.i, align 8
  %.sroa.013.0.copyload.i = load i64, ptr %i.l, align 8
  %i.cn = load ptr, ptr %0, align 8               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !31

bb.r:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.ct = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cn) #8
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.r, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.0.i.i.i = phi ptr [ %i.ct, %bb.r ], [ %i.cp, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i.i to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %.sroa.013.0.copyload.i, ptr %.0.i.i.i, align 8
  %i.cx = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.cy) #8 ; 0 uses
  br label %.thread.i

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.da = load ptr, ptr %1, align 8
  %i.db = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %.preheader52.i, label %.thread.i

.preheader52.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.04.0.i.in.i = phi ptr [ %i.dm, %bb.u ], [ %i.l, %bb.t ]
  %.sroa.04.0.i.i = load i64, ptr %.sroa.04.0.i.in.i, align 8
  %i.df = add i64 %.sroa.04.0.i.i, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = and i16 %i.dk, 9
  switch i16 %i.dl, label %bb.u [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  ]

bb.u:                                             ; preds = %.preheader52.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  br label %.preheader52.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit: ; preds = %.preheader52.i
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i: ; preds = %.preheader52.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
  %.1.ph.i.i = phi i1 [ true, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit ], [ false, %.preheader52.i ] ; 2 uses
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i32 noundef 2) #8
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.v
  %.sroa.04.0.i21.in.i = phi ptr [ %i.eb, %bb.v ], [ %.0.i.i.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ]
  %.sroa.04.0.i21.i = load i64, ptr %.sroa.04.0.i21.in.i, align 8
  %i.du = add i64 %.sroa.04.0.i21.i, -1
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, 9
  switch i16 %i.ea, label %bb.v [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i
    i16 0, label %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  ]

._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %bb.w, label %.thread56.i

bb.v:                                             ; preds = %.preheader.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %.preheader.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %.thread56.i, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  %.2.i = phi i32 [ -2, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i ], [ -2, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  %i.ec = icmp eq ptr %i.bn, null
  br i1 %i.ec, label %.thread24, label %.thread.i, !prof !72

.thread56.i:                                      ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  %i.ed = load i64, ptr %.0.i.i, align 8          ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8
  %i.ee = add i64 %i.ed, -1
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = ashr i32 %i.ek, 3
  %i.em = sext i32 %i.el to i64
  store ptr %i.eg, ptr %i.n, align 8
  store i64 %i.em, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.en = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  store i64 %i.en, ptr %i.l, align 8
  %i.eo = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorIhEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  store ptr %i.ep, ptr %i.i, align 8
  store i64 %i.eq, ptr %i.c, align 8
  %i.er = icmp eq ptr %i.bn, null
  br i1 %i.er, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, label %.thread.i, !prof !72

.thread.i:                                        ; preds = %.thread56.i, %bb.w, %bb.t, %bb.s
  %.250.i = phi i32 [ %.2.i, %bb.w ], [ undef, %bb.t ], [ -1, %bb.s ], [ undef, %.thread56.i ]
  %cond48.i = phi i1 [ false, %bb.w ], [ true, %bb.t ], [ false, %bb.s ], [ true, %.thread56.i ]
  store ptr %i.bx, ptr %i.bw, align 8
  %i.es = load i32, ptr %i.ca, align 8
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.ca, align 8
  %i.eu = load ptr, ptr %i.by, align 8
  %.not.i.i = icmp eq ptr %i.eu, %i.bz
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %.thread.i
  store ptr %i.bz, ptr %i.by, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bn) #8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.x, %.thread.i
  br i1 %cond48.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, label %.thread24

.thread24:                                        ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.n, %bb.o, %bb.w
  %.3.i.ph = phi i32 [ %.2.i, %bb.w ], [ -2, %bb.o ], [ -1, %bb.n ], [ %.250.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit: ; preds = %bb.o, %.thread56.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, %bb.l
  %i.ev = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph60.i, label %.loopexit

.lr.ph60.i:                                       ; preds = %bb.y
  %i.ex = zext nneg i32 %i.ev to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %.lr.ph60.i
  %indvars.iv63.i = phi i64 [ %i.ex, %.lr.ph60.i ], [ %indvars.iv.next64.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ] ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.o, align 8
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %indvars.iv.next64.i ; 7 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ey, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.ez = sext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.fa = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fc, 4
  br i1 %i.fd, label %bb.aa, label %.thread.i15

.thread.i15:                                      ; preds = %bb.z
  %i.fe = add nsw i32 %.sroa.0.0.copyload.i, 1
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %..lr.ph.preheader.i_crit_edge, label %._crit_edge.i

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.aa
  %i.fi = add nsw i32 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.fj = add nsw i32 %i.fg, %i.fi
  %.pre30 = sext i32 %i.fi to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %.thread.i15
  %.pre-phi = phi i64 [ %.pre30, %..lr.ph.preheader.i_crit_edge ], [ %i.ez, %.thread.i15 ]
  %i.fk = phi i32 [ %i.fj, %..lr.ph.preheader.i_crit_edge ], [ %i.fe, %.thread.i15 ] ; 3 uses
  %i.fl = sext i32 %i.fk to i64
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %.pre-phi, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.not.i = icmp ugt i16 %.sroa.3.0.copyload.i, %i.bk
  br i1 %.not.i, label %3, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2
  %.not21.i = icmp ult i16 %.sroa.42.0.copyload.i, %i.bk
  br i1 %.not21.i, label %3, label %.thread50.i

3:                                                ; preds = %bb.ab, %.lr.ph.i.a
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next.i, %i.fl
  br i1 %4, label %.lr.ph.i.a, label %._crit_edge.i, !llvm.loop !73

.thread50.i:                                      ; preds = %bb.ab
  %i.fm = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.fn = load i32, ptr %i.r, align 4             ; 3 uses
  %i.fo = load i32, ptr %i.s, align 8             ; 3 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread50.i
  %i.fq = load ptr, ptr %i.p, align 8
  %i.fr = add nsw i32 %i.fn, 1
  store i32 %i.fr, ptr %i.r, align 4
  %i.fs = sext i32 %i.fn to i64
  %i.ft = getelementptr inbounds [56 x i8], ptr %i.fq, i64 %i.fs ; 3 uses
  store i32 %i.fk, ptr %i.ft, align 8
  %.sroa.12.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx30.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.i, i64 44, i1 false)
  %.sroa.1231.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i32 0, ptr %.sroa.1231.0..sroa_idx36.i, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.ad:                                            ; preds = %.thread50.i
  %i.fu = shl nsw i32 %i.fo, 1
  %i.fv = or disjoint i32 %i.fu, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.fw = icmp sgt i32 %i.fo, -1
  br i1 %i.fw, label %bb.af, label %bb.ae, !prof !30

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = mul nuw nsw i64 %i.fx, 56               ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  br i1 %i.ge, label %bb.ag, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.ag:                                            ; preds = %bb.af
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, i64 noundef %i.fy) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gb, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.gf = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ag ], [ %i.gc, %bb.af ] ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr               ; 3 uses
  %i.gh = add i64 %i.gf, %i.fy
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = load i32, ptr %i.r, align 4             ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.ah, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.ah:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gk = load ptr, ptr %i.p, align 8
  %i.gl = zext nneg i32 %i.gi to i64
  %i.gm = mul nuw nsw i64 %i.gl, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gk, i64 %i.gm, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.ah, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gn = phi i32 [ %i.gi, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ah ] ; 2 uses
  store ptr %i.gg, ptr %i.p, align 8
  store i32 %i.fv, ptr %i.s, align 8
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.r, align 4
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [56 x i8], ptr %i.gg, i64 %i.gp ; 3 uses
  store i32 %i.fk, ptr %i.gq, align 8
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i16, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.i, i64 44, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

._crit_edge.i:                                    ; preds = %3, %bb.aa
  %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.4.sroa.6.0.copyload = load ptr, ptr %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.sroa.4.sroa.7.0.copyload = load ptr, ptr %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %.sroa.4.sroa.8.0.copyload = load ptr, ptr %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %i.gr = load i32, ptr %i.t, align 8             ; 2 uses
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = icmp ult i32 %i.gr, 4
  br i1 %i.gt, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i
  %i.gu = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  %.not7.i.i.i = icmp ugt i64 %i.gw, %i.gs
  br i1 %.not7.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.4.0.copyload, i64 8
  store i64 %i.gs, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.u, align 8
  store ptr %i.gy, ptr %.sroa.4.sroa.4.0.copyload, align 8
  store ptr %.sroa.4.sroa.4.0.copyload, ptr %i.u, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i
  %i.gz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.al, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.al:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i
  %i.hb = load i32, ptr %i.v, align 4             ; 2 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = icmp ult i32 %i.hb, 2
  br i1 %i.hd, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8
  %.not7.i.i2.i = icmp ugt i64 %i.hg, %i.hc
  br i1 %.not7.i.i2.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.6.0.copyload, i64 8
  store i64 %i.hc, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.w, align 8
  store ptr %i.hi, ptr %.sroa.4.sroa.6.0.copyload, align 8
  store ptr %.sroa.4.sroa.6.0.copyload, ptr %i.w, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i: ; preds = %bb.ao, %bb.an, %bb.al
  %i.hj = load i32, ptr %i.t, align 8             ; 2 uses
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = icmp ult i32 %i.hj, 2
  br i1 %i.hl, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i
  %i.hm = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i3.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8
  %.not7.i.i4.i = icmp ugt i64 %i.ho, %i.hk
  br i1 %.not7.i.i4.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.7.0.copyload, i64 8
  store i64 %i.hk, ptr %i.hp, align 8
  %i.hq = load ptr, ptr %i.x, align 8
  store ptr %i.hq, ptr %.sroa.4.sroa.7.0.copyload, align 8
  store ptr %.sroa.4.sroa.7.0.copyload, ptr %i.x, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.ar, %bb.aq, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i
  %i.hr = load i8, ptr %i.y, align 8, !range !28, !noundef !29
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i
  %i.ht = load ptr, ptr %i.z, align 8
  %i.hu = load ptr, ptr %i.aa, align 8
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 5                 ; 5 uses
  %i.hz = and i64 %i.hy, 2305843009213693950
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i5.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.id, %i.hy
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.hy, ptr %i.ie, align 8
  %i.if = load ptr, ptr %i.ab, align 8
  store ptr %i.if, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.av, %bb.au, %bb.as
  %.pre-phi16.i = phi i64 [ %i.hy, %bb.as ], [ %i.hy, %bb.au ], [ %.pre15.i, %bb.av ] ; 3 uses
  %i.ig = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i
  %i.ii = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i7.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.ik, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.il, align 8
  %i.im = load ptr, ptr %i.ac, align 8
  store ptr %i.im, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.ay, %bb.ax, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.in = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.in, label %bb.z, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.y
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.i, %bb.c, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKhE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.1148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.1158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21RunActiveThreadsToEndEv:bb.a
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.ce, align 8
  store i64 %.sroa.014.0.copyload.i, ptr %.0.i.i, align 8
  %.sroa.013.0.copyload.i = load i64, ptr %i.l, align 8
  %i.cn = load ptr, ptr %0, align 8               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !31

bb.r:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.ct = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cn) #8
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.r, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.0.i.i.i = phi ptr [ %i.ct, %bb.r ], [ %i.cp, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i.i to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %.sroa.013.0.copyload.i, ptr %.0.i.i.i, align 8
  %i.cx = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.cy) #8 ; 0 uses
  br label %.thread.i

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.da = load ptr, ptr %1, align 8
  %i.db = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %.preheader52.i, label %.thread.i

.preheader52.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.04.0.i.in.i = phi ptr [ %i.dm, %bb.u ], [ %i.l, %bb.t ]
  %.sroa.04.0.i.i = load i64, ptr %.sroa.04.0.i.in.i, align 8
  %i.df = add i64 %.sroa.04.0.i.i, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = and i16 %i.dk, 9
  switch i16 %i.dl, label %bb.u [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  ]

bb.u:                                             ; preds = %.preheader52.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  br label %.preheader52.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit: ; preds = %.preheader52.i
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i: ; preds = %.preheader52.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
  %.1.ph.i.i = phi i1 [ true, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit ], [ false, %.preheader52.i ] ; 2 uses
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i32 noundef 2) #8
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.v
  %.sroa.04.0.i21.in.i = phi ptr [ %i.eb, %bb.v ], [ %.0.i.i.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ]
  %.sroa.04.0.i21.i = load i64, ptr %.sroa.04.0.i21.in.i, align 8
  %i.du = add i64 %.sroa.04.0.i21.i, -1
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, 9
  switch i16 %i.ea, label %bb.v [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i
    i16 0, label %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  ]

._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %bb.w, label %.thread56.i

bb.v:                                             ; preds = %.preheader.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %.preheader.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %.thread56.i, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  %.2.i = phi i32 [ -2, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i ], [ -2, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  %i.ec = icmp eq ptr %i.bn, null
  br i1 %i.ec, label %.thread24, label %.thread.i, !prof !72

.thread56.i:                                      ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  %i.ed = load i64, ptr %.0.i.i, align 8          ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8
  %i.ee = add i64 %i.ed, -1
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = ashr i32 %i.ek, 3
  %i.em = sext i32 %i.el to i64
  store ptr %i.eg, ptr %i.n, align 8
  store i64 %i.em, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.en = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  store i64 %i.en, ptr %i.l, align 8
  %i.eo = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorItEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  store ptr %i.ep, ptr %i.i, align 8
  store i64 %i.eq, ptr %i.c, align 8
  %i.er = icmp eq ptr %i.bn, null
  br i1 %i.er, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, label %.thread.i, !prof !72

.thread.i:                                        ; preds = %.thread56.i, %bb.w, %bb.t, %bb.s
  %.250.i = phi i32 [ %.2.i, %bb.w ], [ undef, %bb.t ], [ -1, %bb.s ], [ undef, %.thread56.i ]
  %cond48.i = phi i1 [ false, %bb.w ], [ true, %bb.t ], [ false, %bb.s ], [ true, %.thread56.i ]
  store ptr %i.bx, ptr %i.bw, align 8
  %i.es = load i32, ptr %i.ca, align 8
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.ca, align 8
  %i.eu = load ptr, ptr %i.by, align 8
  %.not.i.i = icmp eq ptr %i.eu, %i.bz
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.x, !prof !30

bb.x:                                             ; preds = %.thread.i
  store ptr %i.bz, ptr %i.by, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bn) #8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.x, %.thread.i
  br i1 %cond48.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, label %.thread24

.thread24:                                        ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.n, %bb.o, %bb.w
  %.3.i.ph = phi i32 [ %.2.i, %bb.w ], [ -2, %bb.o ], [ -1, %bb.n ], [ %.250.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit: ; preds = %bb.o, %.thread56.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, %bb.l
  %i.ev = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph60.i, label %.loopexit

.lr.ph60.i:                                       ; preds = %bb.y
  %i.ex = zext nneg i32 %i.ev to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %.lr.ph60.i
  %indvars.iv63.i = phi i64 [ %i.ex, %.lr.ph60.i ], [ %indvars.iv.next64.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ] ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.o, align 8
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %indvars.iv.next64.i ; 7 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ey, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.ez = sext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.fa = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fc, 4
  br i1 %i.fd, label %bb.aa, label %.thread.i15

.thread.i15:                                      ; preds = %bb.z
  %i.fe = add nsw i32 %.sroa.0.0.copyload.i, 1
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %..lr.ph.preheader.i_crit_edge, label %._crit_edge.i

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.aa
  %i.fi = add nsw i32 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.fj = add nsw i32 %i.fg, %i.fi
  %.pre30 = sext i32 %i.fi to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %.thread.i15
  %.pre-phi = phi i64 [ %.pre30, %..lr.ph.preheader.i_crit_edge ], [ %i.ez, %.thread.i15 ]
  %i.fk = phi i32 [ %i.fj, %..lr.ph.preheader.i_crit_edge ], [ %i.fe, %.thread.i15 ] ; 3 uses
  %i.fl = sext i32 %i.fk to i64
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %.pre-phi, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.not.i = icmp ult i16 %i.bk, %.sroa.3.0.copyload.i
  br i1 %.not.i, label %3, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2
  %.not21.i = icmp ugt i16 %i.bk, %.sroa.42.0.copyload.i
  br i1 %.not21.i, label %3, label %.thread50.i

3:                                                ; preds = %bb.ab, %.lr.ph.i.a
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next.i, %i.fl
  br i1 %4, label %.lr.ph.i.a, label %._crit_edge.i, !llvm.loop !126

.thread50.i:                                      ; preds = %bb.ab
  %i.fm = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.fn = load i32, ptr %i.r, align 4             ; 3 uses
  %i.fo = load i32, ptr %i.s, align 8             ; 3 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread50.i
  %i.fq = load ptr, ptr %i.p, align 8
  %i.fr = add nsw i32 %i.fn, 1
  store i32 %i.fr, ptr %i.r, align 4
  %i.fs = sext i32 %i.fn to i64
  %i.ft = getelementptr inbounds [56 x i8], ptr %i.fq, i64 %i.fs ; 3 uses
  store i32 %i.fk, ptr %i.ft, align 8
  %.sroa.12.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx30.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.i, i64 44, i1 false)
  %.sroa.1231.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i32 0, ptr %.sroa.1231.0..sroa_idx36.i, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.ad:                                            ; preds = %.thread50.i
  %i.fu = shl nsw i32 %i.fo, 1
  %i.fv = or disjoint i32 %i.fu, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.fw = icmp sgt i32 %i.fo, -1
  br i1 %i.fw, label %bb.af, label %bb.ae, !prof !30

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = mul nuw nsw i64 %i.fx, 56               ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = sub i64 %i.ga, %i.gc
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  br i1 %i.ge, label %bb.ag, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !31

bb.ag:                                            ; preds = %bb.af
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, i64 noundef %i.fy) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gb, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.gf = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ag ], [ %i.gc, %bb.af ] ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr               ; 3 uses
  %i.gh = add i64 %i.gf, %i.fy
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = load i32, ptr %i.r, align 4             ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.ah, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.ah:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gk = load ptr, ptr %i.p, align 8
  %i.gl = zext nneg i32 %i.gi to i64
  %i.gm = mul nuw nsw i64 %i.gl, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gk, i64 %i.gm, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.ah, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gn = phi i32 [ %i.gi, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ah ] ; 2 uses
  store ptr %i.gg, ptr %i.p, align 8
  store i32 %i.fv, ptr %i.s, align 8
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.r, align 4
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [56 x i8], ptr %i.gg, i64 %i.gp ; 3 uses
  store i32 %i.fk, ptr %i.gq, align 8
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i16, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.i, i64 44, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

._crit_edge.i:                                    ; preds = %3, %bb.aa
  %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.4.sroa.6.0.copyload = load ptr, ptr %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.sroa.4.sroa.7.0.copyload = load ptr, ptr %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %.sroa.4.sroa.8.0.copyload = load ptr, ptr %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %i.gr = load i32, ptr %i.t, align 8             ; 2 uses
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = icmp ult i32 %i.gr, 4
  br i1 %i.gt, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i
  %i.gu = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  %.not7.i.i.i = icmp ugt i64 %i.gw, %i.gs
  br i1 %.not7.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.4.0.copyload, i64 8
  store i64 %i.gs, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.u, align 8
  store ptr %i.gy, ptr %.sroa.4.sroa.4.0.copyload, align 8
  store ptr %.sroa.4.sroa.4.0.copyload, ptr %i.u, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i
  %i.gz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !28, !noundef !29
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.al, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.al:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i
  %i.hb = load i32, ptr %i.v, align 4             ; 2 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = icmp ult i32 %i.hb, 2
  br i1 %i.hd, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i1.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8
  %.not7.i.i2.i = icmp ugt i64 %i.hg, %i.hc
  br i1 %.not7.i.i2.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.6.0.copyload, i64 8
  store i64 %i.hc, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.w, align 8
  store ptr %i.hi, ptr %.sroa.4.sroa.6.0.copyload, align 8
  store ptr %.sroa.4.sroa.6.0.copyload, ptr %i.w, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i: ; preds = %bb.ao, %bb.an, %bb.al
  %i.hj = load i32, ptr %i.t, align 8             ; 2 uses
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = icmp ult i32 %i.hj, 2
  br i1 %i.hl, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i
  %i.hm = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i3.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8
  %.not7.i.i4.i = icmp ugt i64 %i.ho, %i.hk
  br i1 %.not7.i.i4.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.7.0.copyload, i64 8
  store i64 %i.hk, ptr %i.hp, align 8
  %i.hq = load ptr, ptr %i.x, align 8
  store ptr %i.hq, ptr %.sroa.4.sroa.7.0.copyload, align 8
  store ptr %.sroa.4.sroa.7.0.copyload, ptr %i.x, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.ar, %bb.aq, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i
  %i.hr = load i8, ptr %i.y, align 8, !range !28, !noundef !29
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i
  %i.ht = load ptr, ptr %i.z, align 8
  %i.hu = load ptr, ptr %i.aa, align 8
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 5                 ; 5 uses
  %i.hz = and i64 %i.hy, 2305843009213693950
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i5.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.id, %i.hy
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.hy, ptr %i.ie, align 8
  %i.if = load ptr, ptr %i.ab, align 8
  store ptr %i.if, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.av, %bb.au, %bb.as
  %.pre-phi16.i = phi i64 [ %i.hy, %bb.as ], [ %i.hy, %bb.au ], [ %.pre15.i, %bb.av ] ; 3 uses
  %i.ig = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i
  %i.ii = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i7.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.ik, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.il, align 8
  %i.im = load ptr, ptr %i.ac, align 8
  store ptr %i.im, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.ay, %bb.ax, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.in = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.in, label %bb.z, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.y
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.i, %bb.c, %_ZNK2v84base6VectorIKtE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKtE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.sroa.1148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.1143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.1158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
end_hunk_1
