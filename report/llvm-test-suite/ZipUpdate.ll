inline.NumInlined: 528
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
  call void @_ZN8NArchive4NZip11CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %25) #14
  br label %bb.ey

bb.ey:                                            ; preds = %.body476.i, %bb.ew
  %.pn428.i = phi { ptr, i32 } [ %eh.lpad-body477.i, %.body476.i ], [ %i.ra, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.ko

bb.ez:                                            ; preds = %bb.fm
  %i.rc = add nuw i32 %.1368696.i, 1              ; 2 uses
  %exitcond864.not.i = icmp eq i32 %i.rc, %.2359555.i
  br i1 %exitcond864.not.i, label %.preheader.i, label %bb.fa, !llvm.loop !180

.preheader.i:                                     ; preds = %bb.ez, %.preheader601.i
  %i.rd = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.ri = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.rj = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.rl = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.rm = getelementptr inbounds nuw i8, ptr %26, i64 152 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %26, i64 180
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.rx = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 7 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.sa = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.sb = getelementptr inbounds nuw i8, ptr %28, i64 120 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.sd = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.se = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %28, i64 160
  %i.sg = getelementptr inbounds nuw i8, ptr %28, i64 180
  %i.sh = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %26, i64 40
  br label %.outer.i

bb.fa:                                            ; preds = %bb.ez, %.lr.ph697.i
  %.1368696.i = phi i32 [ 0, %.lr.ph697.i ], [ %i.rc, %bb.ez ] ; 3 uses
  %i.so = load ptr, ptr %i.qj, align 8, !tbaa !112
  %i.sp = sext i32 %.1368696.i to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !113 ; 11 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !181
  %.not.i.i478.i = icmp eq i32 %i.st, 0
  br i1 %.not.i.i478.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i: ; preds = %bb.fa
  %i.su = invoke i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.ss)
          to label %.noexc479.i unwind label %bb.fd ; 2 uses

.noexc479.i:                                      ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %.not.not.i.i = icmp eq i32 %i.su, 0
  br i1 %.not.not.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i, label %.thread567.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i: ; preds = %.noexc479.i, %bb.fa
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 128 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !57
  %.not.i6.i.i = icmp eq ptr %i.sw, null
  br i1 %.not.i6.i.i, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  store ptr %15, ptr %i.sv, align 8, !tbaa !57
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 136
  store i8 0, ptr %i.sx, align 8, !tbaa !182
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sr, i64 137
  store i8 0, ptr %i.sy, align 1, !tbaa !58
  br label %bb.fe

bb.fc:                                            ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.fd:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.fe:                                            ; preds = %bb.fb, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  %i.tb = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #15
          to label %bb.ff unwind label %bb.fc     ; 20 uses

bb.ff:                                            ; preds = %bb.fe
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store i32 0, ptr %i.tc, align 4, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13COutMemStream, i64 16), ptr %i.tb, align 8, !tbaa !55
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  store ptr %19, ptr %i.td, align 8, !tbaa !183
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 48
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.te, align 8, !tbaa !55
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 72
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.tg, align 8, !tbaa !55
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 104
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 112
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tj, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.tk, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %i.ti, align 8, !tbaa !55
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 136
  store i64 0, ptr %i.tl, align 8, !tbaa !171
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tb, i64 144
  store i8 1, ptr %i.tm, align 8, !tbaa !173
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tb, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tn, i8 0, i64 16, i1 false)
  %i.to = getelementptr inbounds nuw i8, ptr %i.sr, i64 168
  store ptr %i.tb, ptr %i.to, align 8, !tbaa !185
  store ptr %16, ptr %i.tf, align 8, !tbaa !57
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  store i8 0, ptr %i.tp, align 8, !tbaa !182
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tb, i64 65
  store i8 0, ptr %i.tq, align 1, !tbaa !58
  store ptr %16, ptr %i.th, align 8, !tbaa !57
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tb, i64 88
  store i8 0, ptr %i.tr, align 8, !tbaa !182
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tb, i64 89
  store i8 0, ptr %i.ts, align 1, !tbaa !58
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sr, i64 176 ; 2 uses
  %i.tu = invoke noundef i32 %i.qr(ptr noundef nonnull align 8 dereferenceable(8) %i.tb)
          to label %.noexc482.i unwind label %bb.fc, !inline_history !88 ; 0 uses

.noexc482.i:                                      ; preds = %bb.ff
  %i.tv = load ptr, ptr %i.tt, align 8, !tbaa !52 ; 3 uses
  %.not6.i.i61 = icmp eq ptr %i.tv, null
  br i1 %.not6.i.i61, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.noexc482.i
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !55
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef i32 %i.ty(ptr noundef nonnull align 8 dereferenceable(8) %i.tv)
          to label %bb.fh unwind label %bb.fc, !inline_history !88 ; 0 uses

bb.fh:                                            ; preds = %bb.fg, %.noexc482.i
  store ptr %i.tb, ptr %i.tt, align 8, !tbaa !52
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sr, i64 400
  store i8 1, ptr %i.ua, align 8, !tbaa !186
  %i.ub = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.fi unwind label %bb.fc     ; 5 uses

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ub, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CMtCompressProgress, i64 16), ptr %i.ub, align 8, !tbaa !55
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sr, i64 152 ; 2 uses
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !187
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sr, i64 160 ; 2 uses
  %i.ue = invoke noundef i32 %i.qq(ptr noundef nonnull align 8 dereferenceable(8) %i.ub)
          to label %.noexc486.i unwind label %bb.fc, !inline_history !79 ; 0 uses

.noexc486.i:                                      ; preds = %bb.fi
  %i.uf = load ptr, ptr %i.ud, align 8, !tbaa !53 ; 3 uses
  %.not6.i485.i = icmp eq ptr %i.uf, null
  br i1 %.not6.i485.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.noexc486.i
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !55
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = invoke noundef i32 %i.ui(ptr noundef nonnull align 8 dereferenceable(8) %i.uf)
          to label %bb.fk unwind label %bb.fc, !inline_history !79 ; 0 uses

bb.fk:                                            ; preds = %bb.fj, %.noexc486.i
  store ptr %i.ub, ptr %i.ud, align 8, !tbaa !53
  %i.uk = load ptr, ptr %i.uc, align 8, !tbaa !187 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store ptr %18, ptr %i.ul, align 8, !tbaa !188
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  store i32 %.1368696.i, ptr %i.um, align 8, !tbaa !191
  %i.un = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(408) %i.sr, ptr noundef nonnull @_ZN8NArchive4NZipL11CoderThreadEPv, ptr noundef nonnull align 8 dereferenceable(408) %i.sr)
          to label %bb.fm unwind label %bb.fl     ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.fm:                                            ; preds = %bb.fk
  %.not396.i = icmp eq i32 %i.un, 0
  br i1 %.not396.i, label %bb.ez, label %.thread567.i

.outer594.split.split.i:                          ; preds = %.lr.ph.a
  %exitcond868.not.i = icmp eq i64 %indvars.iv.next866.i, %smax.i
  br i1 %exitcond868.not.i, label %.outer594.split.split.us.loopexit.i, label %.lr.ph.a, !llvm.loop !192

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %.outer594.split.split.i
  %indvars.iv865.i950 = phi i64 [ %indvars.iv.next866.i, %.outer594.split.split.i ], [ %33, %.lr.ph.preheader ] ; 4 uses
  %indvars.iv.next866.i = add nsw i64 %indvars.iv865.i950, 1 ; 3 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.aae, i64 %indvars.iv865.i950
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !113 ; 6 uses
  %i.ur = load i8, ptr %i.uq, align 8, !tbaa !114, !range !49, !noundef !50
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %bb.fo, label %.outer594.split.split.i, !llvm.loop !192

bb.fn:                                            ; preds = %bb.jz
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.fo:                                            ; preds = %.lr.ph.a
  %i.uu = trunc nsw i64 %indvars.iv865.i950 to i32
  %i.uv = trunc nsw i64 %indvars.iv.next866.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  store i64 17179869184, ptr %i.sn, align 8
  %i.uw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %bb.fp unwind label %bb.fr     ; 2 uses

bb.fp:                                            ; preds = %bb.fo
  store ptr %i.uw, ptr %i.rf, align 8, !tbaa !133
  store i8 0, ptr %i.uw, align 1, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rh, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ri, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rg, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.rl, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rj, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.rm, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.rn, i8 0, i64 19, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !152, !range !49, !noundef !50
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.va = getelementptr inbounds nuw i8, ptr %i.uq, i64 2
  %i.vb = load i8, ptr %i.va, align 2, !tbaa !153, !range !49, !noundef !50
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %bb.gz, label %bb.fy, !llvm.loop !192

bb.fr:                                            ; preds = %bb.fo
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.fs:                                            ; preds = %bb.fp
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !118
  %i.vg = load ptr, ptr %i.ro, align 8, !tbaa !112
  %i.vh = sext i32 %i.vf to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vg, i64 %i.vh
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !113 ; 2 uses
  %i.vk = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %26, ptr noundef nonnull align 8 dereferenceable(186) %i.vj)
          to label %bb.ft unwind label %bb.fv     ; 0 uses

bb.ft:                                            ; preds = %bb.fs
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.rp, ptr noundef nonnull align 4 dereferenceable(6) %i.vl, i64 6, i1 false)
  %i.vm = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %26)
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.not415.i = icmp eq i32 %i.vm, 0
  br i1 %.not415.i, label %bb.fw, label %bb.gz

bb.fv:                                            ; preds = %bb.fw, %bb.ft, %bb.fs
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.fw:                                            ; preds = %bb.fu
  %i.vo = invoke noundef zeroext i1 @_ZNK8NArchive4NZip5CItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(179) %26)
          to label %bb.fx unwind label %bb.fv

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.vo, label %bb.gz, label %bb.fy, !llvm.loop !192

bb.fy:                                            ; preds = %bb.fx, %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  store ptr null, ptr %27, align 8, !tbaa !51
  %i.vp = load ptr, ptr %i.rq, align 8, !tbaa !76
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 80 ; 4 uses
  %i.vr = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.vq) #14 ; 0 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !155
  %i.vu = load ptr, ptr %5, align 8, !tbaa !55
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 72
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = invoke noundef i32 %i.vw(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.vt, ptr noundef nonnull %27)
          to label %bb.fz unwind label %bb.gc     ; 2 uses

bb.fz:                                            ; preds = %bb.fy
  switch i32 %i.vx, label %.thread570.i [
    i32 1, label %bb.ga
    i32 0, label %bb.gf
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uq, i64 24
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !117
  %i.wa = add i64 %i.zy, 26
  %i.wb = add i64 %i.wa, %i.vz                    ; 3 uses
  %i.wc = load ptr, ptr %i.rq, align 8, !tbaa !76 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 80 ; 2 uses
  %i.we = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.wd) #14 ; 0 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 48
  store i64 0, ptr %i.wf, align 8, !tbaa !73
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  store i64 0, ptr %i.wg, align 8, !tbaa !73
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store i64 %i.wb, ptr %i.wh, align 8, !tbaa !74
  %i.wi = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.wd) #14 ; 0 uses
  %i.wj = load ptr, ptr %5, align 8, !tbaa !55
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 80
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = invoke noundef i32 %i.wl(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.gb unwind label %bb.gd     ; 2 uses

bb.gb:                                            ; preds = %bb.ga
  %.not421.i = icmp eq i32 %i.wm, 0
  br i1 %.not421.i, label %bb.ge, label %.thread570.i

bb.gc:                                            ; preds = %bb.fy
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gd:                                            ; preds = %bb.ga
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.ge:                                            ; preds = %bb.gb
  %i.wp = load ptr, ptr %i.rv, align 8, !tbaa !112
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.wp, i64 %indvars.iv865.i950
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !113
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 73
  store i8 1, ptr %i.ws, align 1, !tbaa !177
  br label %.thread570.i, !llvm.loop !192

bb.gf:                                            ; preds = %bb.fz
  %i.wt = load ptr, ptr %5, align 8, !tbaa !55
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 80
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = invoke noundef i32 %i.wv(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %bb.gg unwind label %bb.gh     ; 3 uses

bb.gg:                                            ; preds = %bb.gf
  %.not417.i = icmp eq i32 %i.ww, 0               ; 2 uses
  %.11.452..i = select i1 %.not417.i, i32 %.11.ph596.i, i32 %i.ww ; 2 uses
  br i1 %.not417.i, label %bb.gi, label %.thread570.i

bb.gh:                                            ; preds = %bb.gf
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.thread570.i:                                     ; preds = %bb.gg, %bb.ge, %bb.gb, %bb.fz
  %i.wy = phi i64 [ %i.zy, %bb.fz ], [ %i.zy, %bb.gg ], [ %i.wb, %bb.gb ], [ %i.wb, %bb.ge ]
  %i.wz = phi i1 [ false, %bb.fz ], [ false, %bb.gg ], [ false, %bb.gb ], [ true, %bb.ge ]
  %.15.ph.i = phi i32 [ %i.vx, %bb.fz ], [ %i.ww, %bb.gg ], [ %i.wm, %bb.gb ], [ %.11.ph596.i, %bb.ge ]
  %i.xa = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.vq) #14 ; 0 uses
  br label %.loopexit.i

bb.gi:                                            ; preds = %bb.gg
  %i.xb = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.vq) #14 ; 0 uses
  br i1 %.not754.i, label %.loopexit.i, label %.lr.ph727.i, !llvm.loop !192

.lr.ph727.i:                                      ; preds = %bb.gi
  %i.xc = load ptr, ptr %i.rr, align 8, !tbaa !112
  br label %bb.gk, !llvm.loop !192

bb.gj:                                            ; preds = %bb.gh, %bb.gd, %bb.gc
  %.pn418.i = phi { ptr, i32 } [ %i.wo, %bb.gd ], [ %i.wn, %bb.gc ], [ %i.wx, %bb.gh ]
  %i.xd = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.vq) #14 ; 0 uses
  br label %bb.gw

bb.gk:                                            ; preds = %.critedge455.i, %.lr.ph727.i
  %.0370725.i = phi i32 [ 0, %.lr.ph727.i ], [ %i.yz, %.critedge455.i ] ; 3 uses
  %i.xe = sext i32 %.0370725.i to i64
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.xe
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !113 ; 8 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 400
  %i.xi = load i8, ptr %i.xh, align 8, !tbaa !186, !range !49, !noundef !50
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.gl, label %.critedge455.i

bb.gl:                                            ; preds = %bb.gk
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 400
  store i8 0, ptr %i.xk, align 8, !tbaa !186
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xg, i64 184 ; 2 uses
  %i.xm = load ptr, ptr %27, align 8, !tbaa !51   ; 4 uses
  %.not.i.i491.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i491.i, label %.noexc492.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !55
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = invoke noundef i32 %i.xp(ptr noundef nonnull align 8 dereferenceable(8) %i.xm)
          to label %.noexc492.i unwind label %bb.gs, !inline_history !193 ; 0 uses

.noexc492.i:                                      ; preds = %bb.gm, %bb.gl
  %i.xr = load ptr, ptr %i.xl, align 8, !tbaa !51 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.xr, null
  br i1 %.not6.i.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.noexc492.i
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !55
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = invoke noundef i32 %i.xu(ptr noundef nonnull align 8 dereferenceable(8) %i.xr)
          to label %bb.go unwind label %bb.gs, !inline_history !193 ; 0 uses

bb.go:                                            ; preds = %bb.gn, %.noexc492.i
  store ptr %i.xm, ptr %i.xl, align 8, !tbaa !51
  %i.xw = load ptr, ptr %27, align 8, !tbaa !51   ; 3 uses
  %.not.i494.i = icmp eq ptr %i.xw, null
  br i1 %.not.i494.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !55
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = load ptr, ptr %i.xy, align 8
  %i.ya = invoke noundef i32 %i.xz(ptr noundef nonnull align 8 dereferenceable(8) %i.xw)
          to label %.noexc495.i unwind label %bb.gs, !inline_history !194 ; 0 uses

.noexc495.i:                                      ; preds = %bb.gp
  store ptr null, ptr %27, align 8, !tbaa !51
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc495.i, %bb.go
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xg, i64 168
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !185
  invoke void @_ZN13COutMemStream4InitEv(ptr noundef nonnull align 8 dereferenceable(168) %i.yc)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xg, i64 152
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !187 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !188
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !191
  invoke void @_ZN24CMtCompressProgressMixer6ReinitEi(ptr noundef nonnull align 8 dereferenceable(128) %i.yg, i32 noundef %i.yi)
          to label %_ZN19CMtCompressProgress6ReinitEv.exit.i unwind label %bb.gs

_ZN19CMtCompressProgress6ReinitEv.exit.i:         ; preds = %bb.gq
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.yk = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.yj)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i unwind label %bb.gs ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i: ; preds = %_ZN19CMtCompressProgress6ReinitEv.exit.i
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xg, i64 404
  store i32 %i.uu, ptr %i.yl, align 4, !tbaa !195
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.gr unwind label %bb.gs

bb.gr:                                            ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xg, i64 120
  %i.yn = load ptr, ptr %i.rs, align 8, !tbaa !112
  %i.yo = load i32, ptr %i.rt, align 4, !tbaa !111 ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %i.yp
  store ptr %i.ym, ptr %i.yq, align 8, !tbaa !196
  %i.yr = add nsw i32 %i.yo, 1
  store i32 %i.yr, ptr %i.rt, align 4, !tbaa !111
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.gt unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i, %_ZN19CMtCompressProgress6ReinitEv.exit.i, %bb.gq, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, %bb.gp, %bb.gn, %bb.gm
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gr
  %i.yt = load ptr, ptr %i.ru, align 8, !tbaa !112
  %i.yu = load i32, ptr %i.rd, align 4, !tbaa !111
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yt, i64 %i.yv
  store i32 %.0370725.i, ptr %i.yw, align 4, !tbaa !4
  %i.yx = load i32, ptr %i.rd, align 4, !tbaa !111
  %i.yy = add nsw i32 %i.yx, 1
  store i32 %i.yy, ptr %i.rd, align 4, !tbaa !111
  br label %.loopexit.i, !llvm.loop !192

.critedge455.i:                                   ; preds = %bb.gk
  %i.yz = add nuw i32 %.0370725.i, 1              ; 2 uses
  %exitcond869.not.i = icmp eq i32 %i.yz, %.2359555.i
  br i1 %exitcond869.not.i, label %..loopexit_crit_edge.i, label %bb.gk, !llvm.loop !198

..loopexit_crit_edge.i:                           ; preds = %.critedge455.i
  br label %.loopexit.i, !llvm.loop !192

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.gt, %bb.gi, %.thread570.i
  %i.za = phi i64 [ %i.wy, %.thread570.i ], [ %i.zy, %bb.gt ], [ %i.zy, %..loopexit_crit_edge.i ], [ %i.zy, %bb.gi ]
  %.15574.i = phi i32 [ %.15.ph.i, %.thread570.i ], [ %.11.452..i, %bb.gt ], [ %.11.452..i, %..loopexit_crit_edge.i ], [ %.11.ph596.i, %bb.gi ]
  %.13347.i = phi i1 [ %i.wz, %.thread570.i ], [ true, %bb.gt ], [ true, %..loopexit_crit_edge.i ], [ true, %bb.gi ]
  %i.zb = load ptr, ptr %27, align 8, !tbaa !51   ; 3 uses
  %.not.i500.i = icmp eq ptr %i.zb, null
  br i1 %.not.i500.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.gu

bb.gu:                                            ; preds = %.loopexit.i
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !55
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = invoke noundef i32 %i.ze(ptr noundef nonnull align 8 dereferenceable(8) %i.zb)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.gv ; 0 uses

bb.gv:                                            ; preds = %bb.gu
  %i.zg = landingpad { ptr, i32 }
          catch ptr null
  %i.zh = extractvalue { ptr, i32 } %i.zg, 0
  call void @__clang_call_terminate(ptr %i.zh) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.gu, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.gz

bb.gw:                                            ; preds = %bb.gs, %bb.gj
  %.pn422.i = phi { ptr, i32 } [ %i.ys, %bb.gs ], [ %.pn418.i, %bb.gj ]
  %i.zi = load ptr, ptr %27, align 8, !tbaa !51   ; 3 uses
  %.not.i501.i = icmp eq ptr %i.zi, null
  br i1 %.not.i501.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit502.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !55
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = invoke noundef i32 %i.zl(ptr noundef nonnull align 8 dereferenceable(8) %i.zi)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit502.i unwind label %bb.gy ; 0 uses

bb.gy:                                            ; preds = %bb.gx
  %i.zn = landingpad { ptr, i32 }
          catch ptr null
  %i.zo = extractvalue { ptr, i32 } %i.zn, 0
  call void @__clang_call_terminate(ptr %i.zo) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit502.i: ; preds = %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.he

bb.gz:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.fx, %bb.fu, %bb.fq
  %i.zp = phi i64 [ %i.zy, %bb.fu ], [ %i.za, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %i.zy, %bb.fq ], [ %i.zy, %bb.fx ]
  %.14348.i = phi i1 [ false, %bb.fu ], [ %.13347.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ true, %bb.fq ], [ true, %bb.fx ]
  %.16.i = phi i32 [ -2147467263, %bb.fu ], [ %.15574.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %.11.ph596.i, %bb.fq ], [ %.11.ph596.i, %bb.fx ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.rm, align 8, !tbaa !55
  %i.zq = load ptr, ptr %i.rw, align 8, !tbaa !130 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, null
  br i1 %i.zr, label %_ZN7CBufferIhED2Ev.exit.i503.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZdaPv(ptr noundef nonnull %i.zq) #17, !inline_history !131
  br label %_ZN7CBufferIhED2Ev.exit.i503.i

_ZN7CBufferIhED2Ev.exit.i503.i:                   ; preds = %bb.ha, %bb.gz
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rj, align 8, !tbaa !55
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.rj)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i504.i unwind label %bb.hb, !inline_history !132

bb.hb:                                            ; preds = %_ZN7CBufferIhED2Ev.exit.i503.i
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #16, !inline_history !132
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i504.i:   ; preds = %_ZN7CBufferIhED2Ev.exit.i503.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.rj) #14, !inline_history !132
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.rg, align 8, !tbaa !55
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.rg)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i505.i unwind label %bb.hc, !inline_history !132

bb.hc:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i504.i
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  %i.zv = extractvalue { ptr, i32 } %i.zu, 0
  call void @__clang_call_terminate(ptr %i.zv) #16, !inline_history !132
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i505.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i504.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.rg) #14, !inline_history !132
  %i.zw = load ptr, ptr %i.rf, align 8, !tbaa !133 ; 2 uses
  %i.zx = icmp eq ptr %i.zw, null
  br i1 %i.zx, label %_ZN8NArchive4NZip5CItemD2Ev.exit506.i, label %bb.hd

bb.hd:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i505.i
  call void @_ZdaPv(ptr noundef nonnull %i.zw) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit506.i

_ZN8NArchive4NZip5CItemD2Ev.exit506.i:            ; preds = %bb.hd, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i505.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br i1 %.14348.i, label %.outer594.i, label %.thread567.i

.outer594.i:                                      ; preds = %.outer590.i, %_ZN8NArchive4NZip5CItemD2Ev.exit506.i
  %i.zy = phi i64 [ %.lcssa740742.i, %.outer590.i ], [ %i.zp, %_ZN8NArchive4NZip5CItemD2Ev.exit506.i ] ; 12 uses
  %.0369.ph595.i = phi i32 [ %.0369.ph592.i, %.outer590.i ], [ %i.uv, %_ZN8NArchive4NZip5CItemD2Ev.exit506.i ] ; 3 uses
  %.11.ph596.i = phi i32 [ %.11.ph593.i, %.outer590.i ], [ %.16.i, %_ZN8NArchive4NZip5CItemD2Ev.exit506.i ] ; 7 uses
  %i.zz = load i32, ptr %i.bz, align 4, !tbaa !111 ; 2 uses
  %i.aaa = sext i32 %i.zz to i64                  ; 2 uses
  %i.aab = icmp slt i64 %indvars.iv870.i, %i.aaa
  br i1 %i.aab, label %.outer594.split.i, label %bb.jz

.outer594.split.i:                                ; preds = %.outer594.i
  %i.aac = load i32, ptr %i.rd, align 4
  %i.aad = icmp ult i32 %i.aac, %.2359555.i
  %.fr.i = freeze i1 %i.aad
  br i1 %.fr.i, label %.outer594.split.split.preheader.i, label %.outer594.split.split.us.i

.outer594.split.split.preheader.i:                ; preds = %.outer594.split.i
  %33 = sext i32 %.0369.ph595.i to i64            ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %33, i64 %i.aaa) ; 2 uses
  %exitcond868.not.i949.not = icmp slt i32 %.0369.ph595.i, %i.zz
  br i1 %exitcond868.not.i949.not, label %.lr.ph.preheader, label %.outer594.split.split.us.loopexit.i

.lr.ph.preheader:                                 ; preds = %.outer594.split.split.preheader.i
  %i.aae = load ptr, ptr %i.re, align 8, !tbaa !112
  br label %.lr.ph.a

bb.he:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit502.i, %bb.fv
  %.pn422.pn.i = phi { ptr, i32 } [ %.pn422.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit502.i ], [ %i.vn, %bb.fv ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %26) #14
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.fr
  %.pn422.pn.pn.i = phi { ptr, i32 } [ %.pn422.pn.i, %bb.he ], [ %i.vd, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %bb.ko

.outer594.split.split.us.loopexit.i:              ; preds = %.outer594.split.split.preheader.i, %.outer594.split.split.i
  %34 = trunc nsw i64 %smax.i to i32
  br label %.outer594.split.split.us.i

.outer594.split.split.us.i:                       ; preds = %.outer594.split.i, %.outer594.split.split.us.loopexit.i
  %.us-phi698.i = phi i32 [ %34, %.outer594.split.split.us.loopexit.i ], [ %.0369.ph595.i, %.outer594.split.i ] ; 2 uses
  %i.aaf = load ptr, ptr %i.rv, align 8, !tbaa !112
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %indvars.iv870.i
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !113
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 73
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !177, !range !49, !noundef !50
  %i.aak = trunc nuw i8 %i.aaj to i1
  br i1 %i.aak, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.outer594.split.split.us.i
  %indvars.iv.next871.i = add nsw i64 %indvars.iv870.i, 1
  br label %.outer590.i, !llvm.loop !192

.outer590.i:                                      ; preds = %.outer.i, %bb.hg
  %indvars.iv870.i = phi i64 [ %i.aha, %.outer.i ], [ %indvars.iv.next871.i, %bb.hg ] ; 8 uses
  %.lcssa740742.i = phi i64 [ %.promoted741.i, %.outer.i ], [ %i.zy, %bb.hg ]
  %.0369.ph592.i = phi i32 [ %.0369.ph.i, %.outer.i ], [ %.us-phi698.i, %bb.hg ]
  %.11.ph593.i = phi i32 [ %.11.ph.i, %.outer.i ], [ %.11.ph596.i, %bb.hg ]
  br label %.outer594.i

bb.hh:                                            ; preds = %.outer594.split.split.us.i
  %i.aal = trunc nsw i64 %indvars.iv870.i to i32  ; 2 uses
  store i64 %i.zy, ptr %i.b, align 8
  %i.aam = load ptr, ptr %i.re, align 8, !tbaa !112
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %indvars.iv870.i
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !113 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  store i64 17179869184, ptr %i.sh, align 8
  %i.aap = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %bb.hi unwind label %bb.hn     ; 2 uses

bb.hi:                                            ; preds = %bb.hh
  store ptr %i.aap, ptr %i.rx, align 8, !tbaa !133
  store i8 0, ptr %i.aap, align 1, !tbaa !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sa, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.ry, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sd, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sb, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.se, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.sf, i8 0, i64 19, i1 false)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 1 ; 2 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !152, !range !49, !noundef !50
  %i.aas = trunc nuw i8 %i.aar to i1
  br i1 %i.aas, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aat = load i8, ptr %i.aao, align 8, !tbaa !114, !range !49, !noundef !50
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %.thread933.thread.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !118
  %i.aax = load ptr, ptr %i.ro, align 8, !tbaa !112
  %i.aay = sext i32 %i.aaw to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.aay
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !113 ; 2 uses
  %i.abb = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull align 8 dereferenceable(186) %i.aba)
          to label %bb.hl unwind label %bb.ho     ; 0 uses

bb.hl:                                            ; preds = %bb.hk
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.sg, ptr noundef nonnull align 4 dereferenceable(6) %i.abc, i64 6, i1 false)
  %i.abd = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %28)
          to label %bb.hm unwind label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %.not398.i = icmp eq i32 %i.abd, 0
  br i1 %.not398.i, label %bb.hp, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.hn:                                            ; preds = %bb.hh
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ho:                                            ; preds = %bb.jp, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, %bb.hl, %bb.hk
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.body526.i

bb.hp:                                            ; preds = %bb.hm
  %.pre876.i = load i8, ptr %i.aao, align 8, !tbaa !114, !range !49
  %i.abg = trunc nuw i8 %.pre876.i to i1
  br i1 %i.abg, label %.thread933.i, label %bb.jm

.thread933.i:                                     ; preds = %bb.hp
  %.pre1243.i = load i8, ptr %i.aaq, align 1, !tbaa !152, !range !49
  %i.abh = trunc nuw i8 %.pre1243.i to i1
  br i1 %i.abh, label %.thread933.thread.i, label %bb.hq

.thread933.thread.i:                              ; preds = %.thread933.i, %bb.hj
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %i.abj = load i8, ptr %i.abi, align 2, !tbaa !153, !range !49, !noundef !50
  %i.abk = trunc nuw i8 %i.abj to i1
  br i1 %i.abk, label %bb.hs, label %bb.hu

bb.hq:                                            ; preds = %.thread933.i
  %i.abl = invoke noundef zeroext i1 @_ZNK8NArchive4NZip5CItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.hr unwind label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.abl, label %bb.hs, label %bb.hu

bb.hs:                                            ; preds = %bb.hr, %.thread933.thread.i
  invoke fastcc void @_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull readonly align 8 dereferenceable(106) %4, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.aao, ptr noundef nonnull align 8 dereferenceable(186) %28)
          to label %.noexc511.i unwind label %bb.ht

.noexc511.i:                                      ; preds = %bb.hs
  %i.abm = load i32, ptr %i.sh, align 8, !tbaa !154
  %i.abn = trunc i32 %i.abm to i16
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !117
  %i.abq = load i8, ptr %i.si, align 8, !tbaa !147, !range !49, !noundef !50
  %i.abr = trunc nuw i8 %i.abq to i1
  invoke void @_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb(ptr noundef nonnull align 8 dereferenceable(81) %32, i16 noundef zeroext %i.abn, i64 noundef %i.abp, i1 noundef zeroext %i.abr)
          to label %.noexc512.i unwind label %bb.ht

.noexc512.i:                                      ; preds = %.noexc511.i
  invoke void @_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(186) %28)
          to label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hw, %bb.hv, %.noexc512.i, %.noexc511.i, %bb.hs, %bb.hq
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %.body526.i

bb.hu:                                            ; preds = %bb.hr, %.thread933.thread.i
  %i.abt = icmp slt i32 %.0373.ph.i, %i.aal
  br i1 %i.abt, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  invoke fastcc void @_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(106) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.aao, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.hw unwind label %bb.ht

bb.hw:                                            ; preds = %bb.hv
  %i.abu = load i32, ptr %i.sh, align 8, !tbaa !154
  %i.abv = trunc i32 %i.abu to i16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !117
  %i.aby = load i8, ptr %i.si, align 8, !tbaa !147, !range !49, !noundef !50
  %i.abz = trunc nuw i8 %i.aby to i1
  invoke void @_ZN8NArchive4NZip11COutArchive26PrepareWriteCompressedDataEtyb(ptr noundef nonnull align 8 dereferenceable(81) %32, i16 noundef zeroext %i.abv, i64 noundef %i.abx, i1 noundef zeroext %i.abz)
          to label %bb.hx unwind label %bb.ht

bb.hx:                                            ; preds = %bb.hw, %bb.hu
  %.1374.i = phi i32 [ %i.aal, %bb.hw ], [ %.0373.ph.i, %bb.hu ] ; 3 uses
  %i.aca = load ptr, ptr %i.rv, align 8, !tbaa !112
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.aca, i64 %indvars.iv870.i
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !113 ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 72
  %i.ace = load i8, ptr %i.acd, align 8, !tbaa !175, !range !49, !noundef !50
  %i.acf = trunc nuw i8 %i.ace to i1
  br i1 %i.acf, label %bb.hy, label %bb.ik

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  store ptr null, ptr %29, align 8, !tbaa !52
  invoke void @_ZN8NArchive4NZip11COutArchive26CreateStreamForCompressingEPP10IOutStream(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull %29)
          to label %bb.hz unwind label %bb.ih

bb.hz:                                            ; preds = %bb.hy
  %i.acg = load i64, ptr %i.pc, align 8, !tbaa !165
  %i.ach = load ptr, ptr %29, align 8, !tbaa !52
  %i.aci = invoke noundef i32 @_ZNK10CMemBlocks13WriteToStreamEmP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(40) %i.acc, i64 noundef %i.acg, ptr noundef %i.ach)
          to label %bb.ia unwind label %bb.ih     ; 0 uses

bb.ia:                                            ; preds = %bb.hz
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acc, i64 48
  %i.ack = load i8, ptr %i.si, align 8, !tbaa !147, !range !49, !noundef !50
  %i.acl = trunc nuw i8 %i.ack to i1
  %i.acm = load i8, ptr %i.sj, align 1, !tbaa !148
  invoke fastcc void @_ZN8NArchive4NZipL32SetItemInfoFromCompressingResultERKNS0_18CCompressingResultEbhRNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(24) %i.acj, i1 noundef zeroext %i.acl, i8 noundef zeroext %i.acm, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.ib unwind label %bb.ih

bb.ib:                                            ; preds = %bb.ia
  invoke fastcc void @_ZN8NArchive4NZipL13SetFileHeaderERNS0_11COutArchiveERKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_5CItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(106) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.aao, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.ic unwind label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  invoke void @_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(80) %28)
          to label %bb.id unwind label %bb.ih

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(40) %i.acc, ptr noundef nonnull %19)
          to label %bb.ie unwind label %bb.ih

bb.ie:                                            ; preds = %bb.id
  %i.acn = load ptr, ptr %29, align 8, !tbaa !52  ; 3 uses
  %.not.i514.i = icmp eq ptr %i.acn, null
  br i1 %.not.i514.i, label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !55
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = invoke noundef i32 %i.acq(ptr noundef nonnull align 8 dereferenceable(8) %i.acn)
          to label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i unwind label %bb.ig ; 0 uses

bb.ig:                                            ; preds = %bb.if
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(41) %i.g)
          to label %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #16
  unreachable

.body:                                            ; preds = %bb.m, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit5.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.ai, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit5.i ]
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(41) %i.g)
          to label %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit33 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #16
  unreachable

_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit33: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn

_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit: ; preds = %bb.o, %bb.a
  %.3 = phi i32 [ %i.f, %bb.a ], [ %.2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3
}

declare void @_ZN8NArchive4NZip11COutArchive16MoveBasePositionEy(ptr noundef nonnull align 8 dereferenceable(81), i64 noundef) local_unnamed_addr #1

declare void @_ZN8NArchive4NZip11COutArchive22CreateStreamForCopyingEPP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %0, ptr noundef nonnull align 8 dereferenceable(179) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = sext i32 %i.e to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #15 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !133
  store i8 0, ptr %i.i, align 1, !tbaa !145
  store i32 %i.e, ptr %i.g, align 4, !tbaa !146
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i:      ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !133
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 1
  %i.m = load i8, ptr %.04.i.i.i, align 1, !tbaa !145 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  store i8 %i.m, ptr %.0.i.i.i, align 1, !tbaa !145
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIcEC2ERKS0_.exit.i, label %bb.c, !llvm.loop !217

_ZN11CStringBaseIcEC2ERKS0_.exit.i:               ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.o, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.r, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.p, align 8, !tbaa !55
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc.i.i.i unwind label %.body.i

.noexc.i.i.i:                                     ; preds = %_ZN11CStringBaseIcEC2ERKS0_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit unwind label %.body.i ; 0 uses

.body.i:                                          ; preds = %.noexc.i.i.i, %_ZN11CStringBaseIcEC2ERKS0_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #14
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %common.resume, label %bb.d

bb.d:                                             ; preds = %.body.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #17
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.u, %bb.d ], [ %i.u, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit:       ; preds = %.noexc.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ab, align 8, !tbaa !138
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.z, align 8, !tbaa !55
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i, %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.z) #14
  br label %.body

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !135 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_ZN7CBufferIhEC2ERKS0_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i:           ; preds = %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #15
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !130
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !130
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %.noexc, %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ao, ptr noundef nonnull align 8 dereferenceable(3) %i.ap, i64 3, i1 false)
  ret void

bb.f:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NArchive4NZip11CExtraBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #14
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ae, %bb.e ]
  tail call void @_ZN8NArchive4NZip10CLocalItemD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #14
  br label %common.resume
}

declare i32 @Thread_Wait(ptr noundef) local_unnamed_addr #1

declare void @_ZN18CMemBlockManagerMt9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #11

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !21, i64 144}
!9 = !{!"_ZTSN8NArchive4NZip11CThreadInfoE", !10, i64 0, !13, i64 16, !16, i64 120, !21, i64 144, !22, i64 152, !23, i64 160, !25, i64 168, !26, i64 176, !28, i64 184, !30, i64 192, !5, i64 368, !46, i64 376, !21, i64 400, !5, i64 404}
!10 = !{!"_ZTSN8NWindows7CThreadE", !11, i64 0}
!11 = !{!"_ZTS8_CThread", !12, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSN8NWindows16NSynchronization15CAutoResetEventE", !14, i64 0}
!14 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !15, i64 0}
!15 = !{!"_ZTS7_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!16 = !{!"_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE", !17, i64 0}
!17 = !{!"_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE", !18, i64 0, !21, i64 16, !21, i64 17}
!18 = !{!"_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE", !19, i64 8}
!19 = !{!"p1 _ZTSN8NWindows16NSynchronization8CSynchroE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 _ZTS19CMtCompressProgress", !20, i64 0}
!23 = !{!"_ZTS9CMyComPtrI21ICompressProgressInfoE", !24, i64 0}
!24 = !{!"p1 _ZTS21ICompressProgressInfo", !20, i64 0}
!25 = !{!"p1 _ZTS13COutMemStream", !20, i64 0}
!26 = !{!"_ZTS9CMyComPtrI10IOutStreamE", !27, i64 0}
!27 = !{!"p1 _ZTS10IOutStream", !20, i64 0}
!28 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !29, i64 0}
!29 = !{!"p1 _ZTS19ISequentialInStream", !20, i64 0}
!30 = !{!"_ZTSN8NArchive4NZip10CAddCommonE", !31, i64 0, !38, i64 112, !39, i64 120, !39, i64 128, !6, i64 136, !41, i64 144, !42, i64 152, !44, i64 160, !45, i64 168}
!31 = !{!"_ZTSN8NArchive4NZip22CCompressionMethodModeE", !32, i64 0, !34, i64 32, !5, i64 48, !5, i64 52, !5, i64 56, !21, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !21, i64 84, !36, i64 88, !21, i64 104, !6, i64 105}
!32 = !{!"_ZTS13CRecordVectorIhE", !33, i64 0}
!33 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !20, i64 16, !12, i64 24}
!34 = !{!"_ZTS11CStringBaseIwE", !35, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"p1 wchar_t", !20, i64 0}
!36 = !{!"_ZTS11CStringBaseIcE", !37, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 omnipotent char", !20, i64 0}
!38 = !{!"p1 _ZTSN9NCompress10CCopyCoderE", !20, i64 0}
!39 = !{!"_ZTS9CMyComPtrI14ICompressCoderE", !40, i64 0}
!40 = !{!"p1 _ZTS14ICompressCoder", !20, i64 0}
!41 = !{!"p1 _ZTS12CFilterCoder", !20, i64 0}
!42 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !43, i64 0}
!43 = !{!"p1 _ZTS20ISequentialOutStream", !20, i64 0}
!44 = !{!"p1 _ZTSN7NCrypto4NZip8CEncoderE", !20, i64 0}
!45 = !{!"p1 _ZTSN7NCrypto6NWzAes8CEncoderE", !20, i64 0}
!46 = !{!"_ZTSN8NArchive4NZip18CCompressingResultE", !47, i64 0, !47, i64 8, !5, i64 16, !48, i64 20, !6, i64 22}
!47 = !{!"long long", !6, i64 0}
!48 = !{!"short", !6, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!28, !29, i64 0}
!52 = !{!26, !27, i64 0}
!53 = !{!23, !24, i64 0}
!54 = !{!9, !5, i64 368}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !7, i64 0}
!57 = !{!18, !19, i64 8}
!58 = !{!17, !21, i64 17}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{null}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTS9CMyComPtrI9IProgressE", !64, i64 0}
!64 = !{!"p1 _ZTS9IProgress", !20, i64 0}
!65 = distinct !{null}
!66 = !{!67, !21, i64 72}
!67 = !{!"_ZTSN8NArchive4NZip17CMtProgressMixer2E", !68, i64 0, !70, i64 8, !47, i64 16, !6, i64 24, !6, i64 40, !63, i64 56, !23, i64 64, !21, i64 72, !71, i64 80}
!68 = !{!"_ZTS21ICompressProgressInfo", !69, i64 0}
!69 = !{!"_ZTS8IUnknown"}
!70 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!71 = !{!"_ZTSN8NWindows16NSynchronization16CCriticalSectionE", !72, i64 0}
!72 = !{!"_ZTS16CCriticalSection", !6, i64 0}
!73 = !{!47, !47, i64 0}
!74 = !{!67, !47, i64 16}
!75 = !{!70, !5, i64 0}
!76 = !{!77, !78, i64 16}
!77 = !{!"_ZTSN8NArchive4NZip16CMtProgressMixerE", !68, i64 0, !70, i64 8, !78, i64 16, !23, i64 24}
!78 = !{!"p1 _ZTSN8NArchive4NZip17CMtProgressMixer2E", !20, i64 0}
!79 = distinct !{null}
!80 = distinct !{ptr @_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb, null}
!81 = distinct !{ptr @_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb, null}
!82 = !{!83, !37, i64 24}
!83 = !{!"_ZTSN8NArchive4NZip15CCacheOutStreamE", !84, i64 0, !70, i64 8, !26, i64 16, !37, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !12, i64 72}
!84 = !{!"_ZTS10IOutStream", !85, i64 0}
!85 = !{!"_ZTS20ISequentialOutStream", !69, i64 0}
!86 = !{!83, !47, i64 48}
!87 = !{!83, !47, i64 32}
!88 = distinct !{null}
!89 = !{!83, !12, i64 72}
!90 = !{!83, !47, i64 64}
!91 = !{!83, !47, i64 56}
!92 = !{ptr @_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm}
!93 = !{ptr @_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv}
!94 = !{!83, !47, i64 40}
!95 = !{ptr @_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv, ptr @_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm}
!96 = distinct !{null, ptr @_ZN8NArchive4NZip15CCacheOutStream7MyWriteEm}
!97 = distinct !{!97, !60}
!98 = !{ptr @_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream}
!99 = !{!100, !47, i64 88}
!100 = !{!"_ZTSN8NArchive4NZip10CInArchiveE", !101, i64 0, !5, i64 8, !47, i64 16, !47, i64 24, !21, i64 32, !103, i64 40, !104, i64 88, !21, i64 136, !21, i64 137}
!101 = !{!"_ZTS9CMyComPtrI9IInStreamE", !102, i64 0}
!102 = !{!"p1 _ZTS9IInStream", !20, i64 0}
!103 = !{!"_ZTS9CInBuffer", !37, i64 0, !37, i64 8, !37, i64 16, !28, i64 24, !47, i64 32, !5, i64 40, !21, i64 44}
!104 = !{!"_ZTSN8NArchive4NZip14CInArchiveInfoE", !47, i64 0, !47, i64 8, !47, i64 16, !105, i64 24}
!105 = !{!"_ZTS7CBufferIhE", !12, i64 8, !37, i64 16}
!106 = !{!100, !47, i64 96}
!107 = !{!100, !21, i64 137}
!108 = !{!42, !43, i64 0}
!109 = !{!110, !37, i64 40}
!110 = !{!"_ZTS10COutBuffer", !37, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !42, i64 24, !47, i64 32, !37, i64 40, !21, i64 48}
!111 = !{!33, !5, i64 12}
!112 = !{!33, !20, i64 16}
!113 = !{!20, !20, i64 0}
!114 = !{!115, !21, i64 0}
!115 = !{!"_ZTSN8NArchive4NZip11CUpdateItemE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !47, i64 24, !36, i64 32, !116, i64 48, !116, i64 56, !116, i64 64}
!116 = !{!"_ZTS9_FILETIME", !5, i64 0, !5, i64 4}
!117 = !{!115, !47, i64 24}
!118 = !{!115, !5, i64 8}
!119 = !{!120, !5, i64 180}
!120 = !{!"_ZTSN8NArchive4NZip7CItemExE", !121, i64 0, !5, i64 180, !48, i64 184}
!121 = !{!"_ZTSN8NArchive4NZip5CItemE", !122, i64 0, !123, i64 80, !48, i64 82, !5, i64 84, !47, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !124, i64 120, !105, i64 152, !21, i64 176, !21, i64 177, !21, i64 178}
!122 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !123, i64 0, !48, i64 2, !48, i64 4, !5, i64 8, !5, i64 12, !47, i64 16, !47, i64 24, !36, i64 32, !124, i64 48}
!123 = !{!"_ZTSN8NArchive4NZip8CVersionE", !6, i64 0, !6, i64 1}
!124 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !125, i64 0}
!125 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !126, i64 0}
!126 = !{!"_ZTS13CRecordVectorIPvE", !33, i64 0}
!127 = !{!120, !48, i64 184}
!128 = !{!122, !47, i64 16}
!129 = !{!122, !48, i64 2}
!130 = !{!105, !37, i64 16}
!131 = !{ptr @_ZN7CBufferIhED2Ev}
!132 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev}
!133 = !{!36, !37, i64 0}
!134 = distinct !{!134, !60}
!135 = !{!105, !12, i64 8}
!136 = distinct !{null}
!137 = !{!31, !5, i64 80}
!138 = !{!33, !12, i64 24}
!139 = !{!34, !35, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"wchar_t", !6, i64 0}
!142 = !{!34, !5, i64 12}
!143 = !{!31, !21, i64 60}
!144 = !{!31, !21, i64 84}
!145 = !{!6, !6, i64 0}
!146 = !{!36, !5, i64 12}
!147 = !{!31, !21, i64 104}
!148 = !{!31, !6, i64 105}
!149 = !{!31, !5, i64 68}
!150 = !{!31, !5, i64 48}
!151 = distinct !{null}
!152 = !{!115, !21, i64 1}
!153 = !{!115, !21, i64 2}
!154 = !{!36, !5, i64 8}
!155 = !{!115, !5, i64 12}
!156 = !{!157, !47, i64 40}
!157 = !{!"_ZTS14CLocalProgress", !68, i64 0, !70, i64 8, !63, i64 16, !23, i64 24, !21, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !21, i64 64, !21, i64 65}
!158 = !{!157, !21, i64 64}
!159 = distinct !{!159, !60}
!160 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev}
!161 = !{!162, !21, i64 88}
!162 = !{!"_ZTSN8NWindows16NSynchronization8CSynchroE", !6, i64 0, !6, i64 40, !21, i64 88}
!163 = !{!164, !20, i64 0}
!164 = !{!"_ZTS16CMemBlockManager", !20, i64 0, !12, i64 8, !20, i64 16}
!165 = !{!164, !12, i64 8}
!166 = !{!164, !20, i64 16}
!167 = !{!168, !169, i64 0}
!168 = !{!"_ZTSN8NArchive4NZip8CMemRefsE", !169, i64 0, !170, i64 8}
!169 = !{!"p1 _ZTS18CMemBlockManagerMt", !20, i64 0}
!170 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE", !126, i64 0}
!171 = !{!172, !47, i64 32}
!172 = !{!"_ZTS10CMemBlocks", !126, i64 0, !47, i64 32}
!173 = !{!174, !21, i64 40}
!174 = !{!"_ZTS14CMemLockBlocks", !172, i64 0, !21, i64 40}
!175 = !{!176, !21, i64 72}
end_hunk_1
