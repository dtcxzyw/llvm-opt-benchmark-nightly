inline.NumInlined: 3044
inline.NumDeleted: 1648
begin_hunk_0_@_ZN6duckdb18FixedSizeAllocator3NewEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !73
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.bk)
  %i.bl = load i64, ptr %4, align 8, !tbaa !73
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !72
  %.not.not.i.i = icmp eq i64 %i.bm, 0
  %i.bn = load i64, ptr %i.a, align 8             ; 4 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.l

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit, %.preheader
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %.preheader ], [ %i.k, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !73
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %.loopexit, label %.preheader, !llvm.loop !100

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit
  %i.br = load i64, ptr %i.h, align 8, !tbaa !47  ; 2 uses
  %i.bs = urem i64 %i.bn, %i.br                   ; 2 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !76, !nonnull !34, !noundef !34
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !66 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !73
  %i.bz = icmp eq i64 %i.bn, %i.by
  br i1 %i.bz, label %.loopexit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.l, %.lr.ph.i.i.i.i14
  %.020.i.i.i.i15 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i14 ], [ %i.bw, %bb.l ]
  %i.ca = load ptr, ptr %.020.i.i.i.i15, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73 ; 2 uses
  %i.cd = urem i64 %i.cc, %i.br
  %.not19.i.i.i.i17 = icmp eq i64 %i.cd, %i.bs
  call void @llvm.assume(i1 %.not19.i.i.i.i17)
  %i.ce = icmp eq i64 %i.bn, %i.cc
  br i1 %i.ce, label %.loopexit, label %.lr.ph.i.i.i.i14, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i14, %.preheader, %bb.l
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %.preheader ], [ %i.bw, %bb.l ], [ %i.ca, %.lr.ph.i.i.i.i14 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(136) %i.cg, i64 noundef 0)
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !101 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !57 ; 5 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !113
  %.not.i.i19 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i19, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i

bb.m:                                             ; preds = %.loopexit
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ck)
          to label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i unwind label %bb.y

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i: ; preds = %bb.m, %.loopexit
  %i.cn = icmp eq i64 %i.ck, 0
  br i1 %i.cn, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i
  %i.co = add i64 %i.ck, 63
  %i.cp = lshr i64 %i.co, 6                       ; 2 uses
  %i.cq = add nsw i64 %i.cp, -1                   ; 2 uses
  %.not.i20 = icmp eq i64 %i.cq, 0
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !104 ; 2 uses
  br i1 %.not.i20, label %._crit_edge.i, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.n
  %i.cr = shl nuw nsw i64 %i.cp, 3
  %i.cs = add nsw i64 %i.cr, -8
  call void @llvm.memset.p0.i64(ptr align 8 %.pre.i, i8 -1, i64 %i.cs, i1 false), !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i21, %bb.n
  %i.ct = and i64 %i.ck, 63                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = shl nsw i64 -1, %i.ct
  %i.cw = xor i64 %i.cv, -1
  %i.cx = select i1 %i.cu, i64 -1, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.cq ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !73
  %i.da = or i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !73
  br label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %._crit_edge.i, %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i23, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dd, align 8, !tbaa !115
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !117
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !118
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25, !inline_history !120
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !118
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25, !inline_history !120
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i24 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i24, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.r ], [ %i.dq, %bb.s ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.t, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !121

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #25
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ds = load ptr, ptr %5, align 8, !tbaa !122
  %.not.i25 = icmp eq ptr %i.ds, null
  br i1 %.not.i25, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %5, align 8, !tbaa !122
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = atomicrmw sub ptr %i.du, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #29
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aa

bb.x:                                             ; preds = %.loopexit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit28: ; preds = %bb.k, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.dy, %bb.x ], [ %i.bg, %bb.k ]
  call void @_ZN6duckdb15FixedSizeBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.aj) #25
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #27
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit28
  %.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.y ], [ %eh.lpad-body, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %common.resume

bb.aa:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ea = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 5 uses
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !73
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !72
  %.not.not.i.i29 = icmp eq i64 %i.ec, 0
  br i1 %.not.not.i.i29, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.06.0.in.i.i37 = phi ptr [ %i.ed, %bb.ab ], [ %.sroa.06.0.i.i38, %bb.ac ]
  %.sroa.06.0.i.i38 = load ptr, ptr %.sroa.06.0.in.i.i37, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i38, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !73
  %i.eg = icmp eq i64 %i.ea, %i.ef
  br i1 %i.eg, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40, label %bb.ac, !llvm.loop !100

bb.ad:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !47 ; 2 uses
  %i.ek = urem i64 %i.ea, %i.ej                   ; 2 uses
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !46
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !76, !nonnull !34, !noundef !34
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !66 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !73
  %i.er = icmp eq i64 %i.ea, %i.eq
  br i1 %i.er, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40, label %.lr.ph.i.i.i.i31

.lr.ph.i.i.i.i31:                                 ; preds = %bb.ad, %.lr.ph.i.i.i.i31
  %.020.i.i.i.i32 = phi ptr [ %i.es, %.lr.ph.i.i.i.i31 ], [ %i.eo, %bb.ad ]
  %i.es = load ptr, ptr %.020.i.i.i.i32, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !73 ; 2 uses
  %i.ev = urem i64 %i.eu, %i.ej
  %.not19.i.i.i.i34 = icmp eq i64 %i.ev, %i.ek
  call void @llvm.assume(i1 %.not19.i.i.i.i34)
  %i.ew = icmp eq i64 %i.ea, %i.eu
  br i1 %i.ew, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40, label %.lr.ph.i.i.i.i31, !llvm.loop !77

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40: ; preds = %.lr.ph.i.i.i.i31, %bb.ac, %bb.ad
  %.sroa.06.1.i.i36 = phi ptr [ %.sroa.06.0.i.i38, %bb.ac ], [ %i.eo, %bb.ad ], [ %i.es, %.lr.ph.i.i.i.i31 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i36, i64 16 ; 3 uses
  %i.ey = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !56
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !57
  %i.fd = call noundef i32 @_ZN6duckdb15FixedSizeBuffer9GetOffsetEmm(ptr noundef nonnull align 8 dereferenceable(136) %i.ey, i64 noundef %i.fa, i64 noundef %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !45
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !45
  %i.fh = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !123
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !123
  %i.fl = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !123
  %i.fo = load i64, ptr %i.fb, align 8, !tbaa !57
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fr = call noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !135
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_ZN6duckdb18FixedSizeAllocator23NextBufferWithFreeSpaceEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !73
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.fy)
  %i.fz = load i64, ptr %1, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN6duckdb18FixedSizeAllocator23NextBufferWithFreeSpaceEv.exit

_ZN6duckdb18FixedSizeAllocator23NextBufferWithFreeSpaceEv.exit: ; preds = %bb.ae, %bb.af
  %.sink.i = phi i64 [ %i.fz, %bb.af ], [ -1, %bb.ae ]
  store i64 %.sink.i, ptr %i.c, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator23NextBufferWithFreeSpaceEv.exit, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit40
  %7 = load i64, ptr %i.b, align 8, !tbaa !73
  %i.ga = zext i32 %i.fd to i64
  %i.gb = shl nuw i64 %i.ga, 32
  %i.gc = and i64 %7, 4294967295
  %i.gd = or disjoint i64 %i.gc, %i.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i64 %i.gd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb18FixedSizeAllocator20GetAvailableBufferIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72   ; 4 uses
  %.not.not.i.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  br i1 %.not.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.loopexit.us
  %storemerge.us = phi i64 [ %i.k, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.loopexit.us ], [ 0, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.split.us
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.g, %.split.us ], [ %.sroa.06.0.i.i.us, %bb.c ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.us = icmp eq ptr %.sroa.06.0.i.i.us, null
  br i1 %.not.i.i.us, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = icmp eq i64 %storemerge.us, %i.i
  br i1 %i.j, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.loopexit.us, label %bb.b, !llvm.loop !74

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.loopexit.us: ; preds = %bb.c
  %i.k = add i64 %storemerge.us, -1
  br label %.split.us, !llvm.loop !75

.split:                                           ; preds = %bb.a
  %i.l = urem i64 %i.c, %i.e                      ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit
  %i.o = phi ptr [ %i.ac, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit ], [ %i.n, %.split ]
  %i.p = phi i64 [ %i.aa, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit ], [ %i.l, %.split ]
  %storemerge14 = phi i64 [ %i.z, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit ], [ %i.c, %.split ] ; 5 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !73
  %i.t = icmp eq i64 %storemerge14, %i.s
  br i1 %i.t, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.u = icmp eq i64 %storemerge14, %i.x
  br i1 %i.u, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %bb.d
  %.020.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.q, %.lr.ph ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73   ; 2 uses
  %i.y = urem i64 %i.x, %i.e
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.p
  br i1 %.not19.i.i.i.i, label %bb.d, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !77

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.e
  br label %.loopexit, !llvm.loop !77

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit: ; preds = %bb.d, %.lr.ph
  %i.z = add i64 %storemerge14, -1                ; 3 uses
  %i.aa = urem i64 %i.z, %i.e                     ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph, !llvm.loop !75

.loopexit:                                        ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit, %.lr.ph.i.i.i.i, %bb.b, %.split, %..loopexit_crit_edge21.i.i.i.i
  %storemerge12 = phi i64 [ %storemerge14, %.lr.ph.i.i.i.i ], [ %storemerge.us, %bb.b ], [ %storemerge14, %..loopexit_crit_edge21.i.i.i.i ], [ %i.c, %.split ], [ %i.z, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit ]
  ret i64 %storemerge12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !51
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
