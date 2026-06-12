inline.NumInlined: 200
inline.NumDeleted: 87
begin_hunk_0_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
  %i.po = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %_ZN11CStringBaseIwED2Ev.exit139.i, label %bb.em

bb.em:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit138.i
  call void @_ZdaPv(ptr noundef nonnull %i.po) #17
  br label %_ZN11CStringBaseIwED2Ev.exit139.i

_ZN11CStringBaseIwED2Ev.exit139.i:                ; preds = %bb.em, %_ZN11CStringBaseIwED2Ev.exit138.i, %bb.ei
  %.pn110.pn.i = phi { ptr, i32 } [ %i.pj, %bb.ei ], [ %.pn110.i, %_ZN11CStringBaseIwED2Ev.exit138.i ], [ %.pn110.i, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.en:                                            ; preds = %bb.ez, %bb.ee
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

.noexc140.i:                                      ; preds = %.noexc136.i
  store i32 0, ptr %i.ph, align 4, !tbaa !26, !noalias !85
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.noexc140.i
  %.04.i.i.i.i = phi ptr [ %i.pg, %.noexc140.i ], [ %i.pr, %bb.eo ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.ph, %.noexc140.i ], [ %i.pt, %bb.eo ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.ps = load i32, ptr %.04.i.i.i.i, align 4, !tbaa !26, !noalias !85 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  store i32 %i.ps, ptr %.0.i.i.i.i, align 4, !tbaa !26, !noalias !85
  %.not.i.i.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not.i.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i, label %bb.eo, !llvm.loop !74

_ZN11CStringBaseIwEC2ERKS0_.exit.i.i:             ; preds = %bb.eo
  %i.pu = load i32, ptr %i.cz, align 8, !tbaa !72 ; 2 uses
  %.not.i.i153.i = icmp sgt i32 %i.pu, 0
  br i1 %.not.i.i153.i, label %bb.ep, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

bb.ep:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %i.pv = call i32 @llvm.umax.i32(i32 %i.pu, i32 16)
  %i.pw = add nuw nsw i32 %i.pv, 34
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = shl nuw nsw i64 %i.px, 2
  %i.pz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.py) #15
          to label %bb.eq unwind label %bb.es     ; 10 uses

bb.eq:                                            ; preds = %bb.ep
  %i.qa = load <4 x i32>, ptr %i.ph, align 4, !tbaa !26
  store <4 x i32> %i.qa, ptr %i.pz, align 4, !tbaa !26
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qd = load <4 x i32>, ptr %i.qb, align 4, !tbaa !26
  store <4 x i32> %i.qd, ptr %i.qc, align 4, !tbaa !26
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %i.qg = load <4 x i32>, ptr %i.qe, align 4, !tbaa !26
  store <4 x i32> %i.qg, ptr %i.qf, align 4, !tbaa !26
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  %i.qj = load <4 x i32>, ptr %i.qh, align 4, !tbaa !26
  store <4 x i32> %i.qj, ptr %i.qi, align 4, !tbaa !26
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  %i.qm = load <4 x i32>, ptr %i.qk, align 4, !tbaa !26
  store <4 x i32> %i.qm, ptr %i.ql, align 4, !tbaa !26
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ph, i64 80
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pz, i64 80
  %i.qp = load <4 x i32>, ptr %i.qn, align 4, !tbaa !26
  store <4 x i32> %i.qp, ptr %i.qo, align 4, !tbaa !26
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ph, i64 96
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pz, i64 96
  %i.qs = load <4 x i32>, ptr %i.qq, align 4, !tbaa !26
  store <4 x i32> %i.qs, ptr %i.qr, align 4, !tbaa !26
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pz, i64 112
  %i.qv = load <4 x i32>, ptr %i.qt, align 4, !tbaa !26
  store <4 x i32> %i.qv, ptr %i.qu, align 4, !tbaa !26
  call void @_ZdaPv(ptr noundef nonnull %i.ph) #17
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pz, i64 128
  store i32 0, ptr %i.qw, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i:       ; preds = %bb.eq, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %i.qx = phi ptr [ %i.pz, %bb.eq ], [ %i.ph, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i ] ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 128
  %i.qz = load ptr, ptr %13, align 8, !tbaa !25
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i
  %.04.i.i154.i = phi ptr [ %i.qz, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.ra, %bb.er ] ; 2 uses
  %.0.i4.i.i = phi ptr [ %i.qy, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.rc, %bb.er ] ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.04.i.i154.i, i64 4
  %i.rb = load i32, ptr %.04.i.i154.i, align 4, !tbaa !26 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0.i4.i.i, i64 4
  store i32 %i.rb, ptr %.0.i4.i.i, align 4, !tbaa !26
  %.not.i5.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not.i5.i.i, label %bb.et, label %bb.er, !llvm.loop !74

bb.es:                                            ; preds = %bb.ep
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ph) #17
  br label %.body.i

bb.et:                                            ; preds = %bb.er
  %i.re = load i32, ptr %i.cz, align 8, !tbaa !72 ; 3 uses
  %i.rf = add nsw i32 %i.re, 32
  store i32 0, ptr %i.dc, align 8, !tbaa !72
  %i.rg = load ptr, ptr %8, align 8, !tbaa !25    ; 3 uses
  store i32 0, ptr %i.rg, align 4, !tbaa !26
  %i.rh = add nsw i32 %i.re, 33                   ; 3 uses
  %i.ri = load i32, ptr %i.dd, align 4, !tbaa !28 ; 2 uses
  %i.rj = icmp eq i32 %i.rh, %i.ri
  br i1 %i.rj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.rk = zext nneg i32 %i.rh to i64
  %i.rl = icmp slt i32 %i.re, -33
  %i.rm = shl nuw nsw i64 %i.rk, 2
  %i.rn = select i1 %i.rl, i64 -1, i64 %i.rm
  %i.ro = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rn) #15
          to label %.noexc145.i unwind label %bb.ey ; 3 uses

.noexc145.i:                                      ; preds = %bb.eu
  %i.rp = icmp sgt i32 %i.ri, 0
  br i1 %i.rp, label %._crit_edge.thread.i.i.i, label %bb.ev

._crit_edge.thread.i.i.i:                         ; preds = %.noexc145.i
  call void @_ZdaPv(ptr noundef nonnull %i.rg) #17
  %.pre.i.i = load i32, ptr %i.dc, align 8, !tbaa !72
  %i.rq = sext i32 %.pre.i.i to i64
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.thread.i.i.i, %.noexc145.i
  %i.rr = phi i64 [ %i.rq, %._crit_edge.thread.i.i.i ], [ 0, %.noexc145.i ]
  store ptr %i.ro, ptr %8, align 8, !tbaa !25
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.rr
  store i32 0, ptr %i.rs, align 4, !tbaa !26
  store i32 %i.rh, ptr %i.dd, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader: ; preds = %bb.ev, %bb.et
  %.0.i.i143.i.ph = phi ptr [ %i.rg, %bb.et ], [ %i.ro, %bb.ev ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i:   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i
  %.04.i.i142.i = phi ptr [ %i.rt, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i ], [ %i.qx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader ] ; 2 uses
  %.0.i.i143.i = phi ptr [ %i.rv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i ], [ %.0.i.i143.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader ] ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.04.i.i142.i, i64 4
  %i.ru = load i32, ptr %.04.i.i142.i, align 4, !tbaa !26 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i143.i, i64 4
  store i32 %i.ru, ptr %.0.i.i143.i, align 4, !tbaa !26
  %.not.i.i144.i = icmp eq i32 %i.ru, 0
  br i1 %.not.i.i144.i, label %_ZN11CStringBaseIwED2Ev.exit147.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i, !llvm.loop !74

_ZN11CStringBaseIwED2Ev.exit147.i:                ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i
  store i32 %i.rf, ptr %i.dc, align 8, !tbaa !72
  call void @_ZdaPv(ptr noundef nonnull %i.qx) #17
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #17
  br label %bb.fq

bb.ew:                                            ; preds = %bb.eg
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ex:                                            ; preds = %.noexc136.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ey:                                            ; preds = %bb.eu
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.qx) #17
  br label %.body.i

.body.i:                                          ; preds = %bb.ey, %bb.ex, %bb.es
  %.pn113.i = phi { ptr, i32 } [ %i.ry, %bb.ey ], [ %i.rx, %bb.ex ], [ %i.rd, %bb.es ]
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #17
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ez:                                            ; preds = %bb.ef, %_ZN11CStringBaseIwED2Ev.exit130.i
  %i.rz = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = select i1 %i.sa, ptr %4, ptr null
  %i.sc = load i8, ptr %i.de, align 1, !tbaa !88, !range !23, !noundef !24
  %i.sd = trunc nuw i8 %i.sc to i1
  %i.se = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %i.sf = trunc nuw i8 %i.se to i1
  %i.sg = load i8, ptr %i.dg, align 4, !tbaa !90, !range !23, !noundef !24
  %i.sh = trunc nuw i8 %i.sg to i1
  invoke void @_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey(ptr noundef nonnull align 8 dereferenceable(332) %i.aq, ptr noundef %i.sb, ptr noundef nonnull align 8 dereferenceable(80) %i.mf, ptr noundef nonnull %7, i1 noundef zeroext %i.sd, i1 noundef zeroext %i.sf, i1 noundef zeroext %i.sh, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.mq)
          to label %bb.fa unwind label %bb.en

bb.fa:                                            ; preds = %bb.ez
  %i.si = invoke noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %bb.fb unwind label %bb.fc     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %.not116.i = icmp eq i32 %i.si, 0
  br i1 %.not116.i, label %bb.fd, label %bb.fq

bb.fc:                                            ; preds = %bb.fa
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fd:                                            ; preds = %bb.fb
  %26 = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %27 = trunc nuw i8 %26 to i1
  %28 = load i8, ptr %i.dg, align 4, !range !23
  %29 = xor i8 %28, 1
  %30 = zext nneg i8 %29 to i32
  %31 = select i1 %27, i32 %30, i32 0             ; 2 uses
  %i.sk = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.fe, label %bb.fo

bb.fe:                                            ; preds = %bb.fd
  %i.sm = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 72
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = invoke noundef i32 %i.so(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef null, i32 noundef -1, i32 noundef %31, ptr noundef nonnull %i.aq)
          to label %bb.ff unwind label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  store i16 0, ptr %16, align 8, !tbaa !91
  store i16 0, ptr %i.di, align 2, !tbaa !94
  %i.sq = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 80
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = invoke noundef i32 %i.ss(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, i32 noundef 44, ptr noundef nonnull %16)
          to label %bb.fg unwind label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %bb.fh, label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  %i.sv = load i16, ptr %16, align 8, !tbaa !91
  switch i16 %i.sv, label %bb.fm [
    i16 21, label %bb.fi
    i16 19, label %bb.fi
  ]

bb.fi:                                            ; preds = %bb.fh, %bb.fh
  %i.sw = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.fm unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fp, %bb.fo, %bb.fe
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fk:                                            ; preds = %bb.fi, %bb.ff
  %i.sy = landingpad { ptr, i32 }
          cleanup
  %i.sz = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i unwind label %bb.fl ; 0 uses

bb.fl:                                            ; preds = %bb.fk
  %i.ta = landingpad { ptr, i32 }
          catch ptr null
  %i.tb = extractvalue { ptr, i32 } %i.ta, 0
  call void @__clang_call_terminate(ptr %i.tb) #19
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i:       ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fm:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %.3 = phi i64 [ 0, %bb.fh ], [ 0, %bb.fg ], [ %i.sw, %bb.fi ]
  %i.tc = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i unwind label %bb.fn ; 0 uses

bb.fn:                                            ; preds = %bb.fm
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #19
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i:    ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fd
  %i.tf = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.tg = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.th = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 72
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = invoke noundef i32 %i.tj(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull %i.tf, i32 noundef %i.tg, i32 noundef %31, ptr noundef nonnull %i.aq)
          to label %bb.fp unwind label %bb.fj

bb.fp:                                            ; preds = %bb.fo, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i
  %.2319 = phi i64 [ %.3, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i ], [ 0, %bb.fo ]
  %.067.i = phi i32 [ %i.sp, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i ], [ %i.tk, %bb.fo ]
  %i.tl = load ptr, ptr %7, align 8, !tbaa !12
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 112
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = invoke noundef i32 %i.tn(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %.067.i)
          to label %bb.fq unwind label %bb.fj

bb.fq:                                            ; preds = %bb.fp, %bb.fb, %_ZN11CStringBaseIwED2Ev.exit147.i
  %.1318 = phi i64 [ %.2319, %bb.fp ], [ 0, %bb.fb ], [ 0, %_ZN11CStringBaseIwED2Ev.exit147.i ]
  %.9.i = phi i32 [ %i.to, %bb.fp ], [ %i.si, %bb.fb ], [ %spec.store.select.i, %_ZN11CStringBaseIwED2Ev.exit147.i ]
  %i.tp = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %_ZN11CStringBaseIwED2Ev.exit151.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZdaPv(ptr noundef nonnull %i.tp) #17
  br label %_ZN11CStringBaseIwED2Ev.exit151.i

_ZN11CStringBaseIwED2Ev.exit151.i:                ; preds = %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %12, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i unwind label %bb.fs, !inline_history !95

bb.fs:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit151.i
  %i.tr = landingpad { ptr, i32 }
          catch ptr null
  %i.ts = extractvalue { ptr, i32 } %i.tr, 0
  call void @__clang_call_terminate(ptr %i.ts) #19, !inline_history !95
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i:  ; preds = %_ZN11CStringBaseIwED2Ev.exit151.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #14, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.fv

_ZN11CStringBaseIwED2Ev.exit149.i:                ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i, %bb.fj, %bb.fc, %.body.i, %bb.ew, %bb.en, %_ZN11CStringBaseIwED2Ev.exit139.i
  %.pn117.pn.i = phi { ptr, i32 } [ %.pn110.pn.i, %_ZN11CStringBaseIwED2Ev.exit139.i ], [ %i.sj, %bb.fc ], [ %i.pq, %bb.en ], [ %i.sy, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i ], [ %i.sx, %bb.fj ], [ %i.rw, %bb.ew ], [ %.pn113.i, %.body.i ] ; 2 uses
  %i.tt = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %_ZN11CStringBaseIwED2Ev.exit152.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit149.i
  call void @_ZdaPv(ptr noundef nonnull %i.tt) #17
  br label %_ZN11CStringBaseIwED2Ev.exit152.i

_ZN11CStringBaseIwED2Ev.exit152.i:                ; preds = %bb.ft, %_ZN11CStringBaseIwED2Ev.exit149.i, %bb.eh
  %.pn117.pn.pn.i = phi { ptr, i32 } [ %i.pi, %bb.eh ], [ %.pn117.pn.i, %_ZN11CStringBaseIwED2Ev.exit149.i ], [ %.pn117.pn.i, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit152.i, %bb.dv
  %.pn117.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn117.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit152.i ], [ %.pn108.i, %bb.dv ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.body306

bb.fv:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i, %bb.du, %.thread164.i
  %.4 = phi i64 [ %.1318, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ 0, %.thread164.i ], [ 0, %bb.du ]
  %.10.i = phi i32 [ %.9.i, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i ], [ %.6.ph.i, %.thread164.i ], [ %.4.i, %bb.du ] ; 2 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %.not274 = icmp eq i32 %.10.i, 0
  br i1 %.not274, label %bb.fw, label %.thread327

bb.fw:                                            ; preds = %bb.fv
  %i.tv = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.tw = trunc nuw i8 %i.tv to i1
  %i.tx = load i64, ptr %19, align 8
  %i.ty = load i64, ptr %i.bt, align 8
  %i.tz = add i64 %i.ty, %i.tx
  %.0 = select i1 %i.tw, i64 %.4, i64 %i.tz
  %i.ua = load ptr, ptr %i.dj, align 8, !tbaa !96 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48 ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !97
  %i.ud = add i64 %i.uc, %.0
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !97
  %i.ue = load i64, ptr %i.dk, align 8, !tbaa !101
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 56
  store i64 %i.ue, ptr %i.uf, align 8, !tbaa !102
  %i.ug = load i32, ptr %i.dc, align 8, !tbaa !72
  %i.uh = icmp ne i32 %i.ug, 0                    ; 2 uses
  %. = zext i1 %i.uh to i32
  %.14.. = select i1 %i.uh, i32 -2147467259, i32 %.2..
  br label %.thread327

.thread327:                                       ; preds = %bb.cw, %bb.fv, %bb.fw, %bb.cr, %bb.cm
  %.11223 = phi i32 [ 1, %bb.cm ], [ %., %bb.fw ], [ 1, %bb.cr ], [ 1, %bb.fv ], [ 1, %bb.cw ]
  %.17 = phi i32 [ %i.lb, %bb.cm ], [ %.14.., %bb.fw ], [ %i.lj, %bb.cr ], [ %.10.i, %bb.fv ], [ %i.ly, %bb.cw ]
  %i.ui = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, null
  br i1 %i.uj, label %_ZN11CStringBaseIwED2Ev.exit308, label %bb.fx

bb.fx:                                            ; preds = %.thread327
  call void @_ZdaPv(ptr noundef nonnull %i.ui) #17
  br label %_ZN11CStringBaseIwED2Ev.exit308

_ZN11CStringBaseIwED2Ev.exit308:                  ; preds = %.thread327, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.fy

bb.fy:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit308, %bb.bx, %bb.ci, %bb.ca, %bb.bt
  %.13225 = phi i32 [ 1, %bb.bt ], [ 1, %bb.bx ], [ %.11223, %_ZN11CStringBaseIwED2Ev.exit308 ], [ 1, %bb.ci ], [ 7, %bb.ca ]
  %.5165 = phi i32 [ %.0160432, %bb.bt ], [ %.0160432, %bb.bx ], [ %.3163, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %.3163, %bb.ci ], [ %.0160432, %bb.ca ]
  %.7158 = phi i64 [ %.1152433, %bb.bt ], [ %.1152433, %bb.bx ], [ %.5156, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %i.kr, %bb.ci ], [ %.1152433, %bb.ca ]
  %.19 = phi i32 [ -2147467260, %bb.bt ], [ %i.iy, %bb.bx ], [ %.17, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %i.kv, %bb.ci ], [ %.2., %bb.ca ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.fz

bb.fz:                                            ; preds = %bb.ag, %bb.fy
  %.14226 = phi i32 [ %.13225, %bb.fy ], [ 1, %bb.ag ]
  %.6166 = phi i32 [ %.5165, %bb.fy ], [ %.0160432, %bb.ag ] ; 2 uses
  %.8159 = phi i64 [ %.7158, %bb.fy ], [ %.1152433, %bb.ag ]
  %.20 = phi i32 [ %.19, %bb.fy ], [ %i.eg, %bb.ag ] ; 2 uses
  %i.uk = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZdaPv(ptr noundef nonnull %i.uk) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310: ; preds = %bb.fz, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  switch i32 %.14226, label %.loopexit338 [
    i32 0, label %bb.gb
    i32 7, label %bb.gb
  ]

bb.gb:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %i.um = sext i32 %.6166 to i64
  %i.un = icmp slt i64 %indvars.iv.next470, %i.um
  br i1 %i.un, label %bb.w, label %._crit_edge441, !llvm.loop !103

.body306:                                         ; preds = %bb.fu, %bb.cv, %bb.cs, %bb.co
  %.pn260 = phi { ptr, i32 } [ %i.ld, %bb.co ], [ %i.lz, %bb.cv ], [ %i.lk, %bb.cs ], [ %.pn117.pn.pn.pn.pn.i, %bb.fu ] ; 2 uses
  %i.uo = load ptr, ptr %25, align 8, !tbaa !25   ; 2 uses
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %_ZN11CStringBaseIwED2Ev.exit311, label %bb.gc

bb.gc:                                            ; preds = %.body306
  call void @_ZdaPv(ptr noundef nonnull %i.uo) #17
  br label %_ZN11CStringBaseIwED2Ev.exit311

_ZN11CStringBaseIwED2Ev.exit311:                  ; preds = %bb.gc, %.body306, %bb.cn
  %.pn260.pn = phi { ptr, i32 } [ %i.lc, %bb.cn ], [ %.pn260, %.body306 ], [ %.pn260, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %.body

.body:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit297, %bb.by, %bb.bz, %bb.cj, %_ZN11CStringBaseIwED2Ev.exit311, %bb.bu, %.loopexit.split-lp, %.loopexit, %.loopexit.i, %.loopexit.split-lp.i
  %.pn260.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.iz, %bb.by ], [ %.pn247.pn.pn, %_ZN11CStringBaseIwED2Ev.exit297 ], [ %i.ip, %bb.bu ], [ %.pn260.pn, %_ZN11CStringBaseIwED2Ev.exit311 ], [ %i.kw, %bb.cj ], [ %i.ja, %bb.bz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit333, %.loopexit.split-lp334, %.body, %bb.ah
  %.pn260.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn260.pn.pn.pn.pn.pn, %.body ], [ %i.eh, %bb.ah ], [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ] ; 2 uses
  %i.uq = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZdaPv(ptr noundef nonnull %i.uq) #17
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit313: ; preds = %bb.ge, %bb.gd, %bb.z
  %.pn260.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.z ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn, %bb.gd ], [ %.pn260.pn.pn.pn.pn.pn.pn.pn, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.gg

._crit_edge441:                                   ; preds = %bb.gb, %bb.v
  %i.us = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ut = load <2 x i64>, ptr %i.bb, align 8, !tbaa !39
  store <2 x i64> %i.ut, ptr %i.us, align 8, !tbaa !39
  %i.uu = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !101
  %i.uw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.uv, ptr %i.uw, align 8, !tbaa !104
  %i.ux = getelementptr inbounds nuw i8, ptr %i.aq, i64 328
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !106
  %i.uz = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %i.uy, ptr %i.uz, align 8, !tbaa !107
  %i.va = load i32, ptr %i.g, align 4, !tbaa !38
  %i.vb = sext i32 %i.va to i64
  store i64 %i.vb, ptr %9, align 8, !tbaa !108
  %i.vc = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !96
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
end_hunk_0
begin_hunk_1_@_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.q, label %bb.a, label %._crit_edge, !llvm.loop !120
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI4CArcED2Ev.exit unwind label %bb.b, !inline_history !119

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19, !inline_history !119
  unreachable

_ZN13CObjectVectorI4CArcED2Ev.exit:               ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14, !inline_history !119
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI4CArcE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.h, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #17
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN11CStringBaseIwED2Ev.exit1.i, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #17
  br label %_ZN11CStringBaseIwED2Ev.exit1.i

_ZN11CStringBaseIwED2Ev.exit1.i:                  ; preds = %bb.d, %_ZN11CStringBaseIwED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit1.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #17
  br label %_ZN11CStringBaseIwED2Ev.exit2.i

_ZN11CStringBaseIwED2Ev.exit2.i:                  ; preds = %bb.e, %_ZN11CStringBaseIwED2Ev.exit1.i
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !82   ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN4CArcD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN4CArcD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN4CArcD2Ev.exit:                                ; preds = %_ZN11CStringBaseIwED2Ev.exit2.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 80) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4CArcD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.ae, label %bb.a, label %._crit_edge, !llvm.loop !121
}

declare noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11CStringBaseIwE7ReplaceERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = load ptr, ptr %2, align 8, !tbaa !25
  %i.g = tail call noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.e, ptr noundef %i.f)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread

.lr.ph:                                           ; preds = %bb.c, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit
  %i.o = phi i32 [ %i.bx, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ %i.m, %bb.c ] ; 6 uses
  %.032 = phi i32 [ %i.by, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ 0, %bb.c ] ; 2 uses
  %.01831 = phi i32 [ %i.bz, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ 0, %bb.c ] ; 4 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.lr.ph
  %i.r = icmp sgt i32 %i.p, 0
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %1, align 8
  br i1 %i.r, label %.preheader.us.preheader.i, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.s = sext i32 %i.o to i64
  %i.t = sext i32 %.032 to i64
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.critedge.us.i, %.preheader.us.preheader.i
  %indvars.iv35.i = phi i64 [ %i.t, %.preheader.us.preheader.i ], [ %indvars.iv.next36.i, %.critedge.us.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.u = add nsw i64 %indvars.iv.i, %indvars.iv35.i ; 2 uses
  %i.v = icmp slt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %.critedge.us.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  %.not.us.i = icmp eq i32 %i.x, %i.z
  br i1 %.not.us.i, label %bb.f, label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.d, %bb.e
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next36.i to i32
  %exitcond38.not.i = icmp eq i32 %i.o, %lftr.wideiv.i
  br i1 %exitcond38.not.i, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %.preheader.us.i, !llvm.loop !122

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.us.thread.i, label %bb.d, !llvm.loop !123

.critedge.us.thread.i:                            ; preds = %bb.f
  %i.aa = trunc nsw i64 %indvars.iv35.i to i32
  br label %_ZNK11CStringBaseIwE4FindERKS0_i.exit

_ZNK11CStringBaseIwE4FindERKS0_i.exit:            ; preds = %.lr.ph, %.critedge.us.thread.i
  %.2.i = phi i32 [ %.032, %.lr.ph ], [ %i.aa, %.critedge.us.thread.i ] ; 7 uses
  %i.ab = icmp slt i32 %.2.i, 0
  br i1 %i.ab, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11CStringBaseIwE4FindERKS0_i.exit
  %i.ac = add nsw i32 %.2.i, %i.i
  %i.ad = icmp sgt i32 %i.ac, %i.o
  %i.ae = sub nsw i32 %i.o, %.2.i
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 %i.i ; 3 uses
  %i.af = icmp sgt i32 %spec.select.i, 0
  br i1 %i.af, label %bb.h, label %_ZN11CStringBaseIwE6DeleteEii.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = add nuw nsw i32 %spec.select.i, %.2.i   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ai = zext nneg i32 %.2.i to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = zext nneg i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak
  %reass.sub.i.i = add i32 %i.o, 1
  %i.am = sub i32 %reass.sub.i.i, %i.ag
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aj, ptr nonnull align 4 %i.al, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !72
  %i.aq = sub nsw i32 %i.ap, %spec.select.i       ; 2 uses
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !72
  br label %_ZN11CStringBaseIwE6DeleteEii.exit

_ZN11CStringBaseIwE6DeleteEii.exit:               ; preds = %bb.g, %bb.h
  %i.ar = phi i32 [ %i.o, %bb.g ], [ %i.aq, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %.2.i, i32 %i.ar)
  store i32 %spec.store.select.i, ptr %i.a, align 4
  %i.as = load i32, ptr %i.j, align 8, !tbaa !72  ; 6 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN11CStringBaseIwE6InsertEiRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit
  call void @_ZN11CStringBaseIwE11InsertSpaceERii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.as)
  %i.au = icmp sgt i32 %i.as, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.av = load ptr, ptr %2, align 8, !tbaa !25    ; 7 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %wide.trip.count.i21 = zext nneg i32 %i.as to i64 ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay ; 6 uses
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = ptrtoaddr ptr %i.av to i64
  %i.bb = shl nsw i64 %i.ay, 2
  %i.bc = add i64 %i.bb, %i.az
  %i.bd = sub i64 %i.bc, %i.ba
  %diff.check = icmp ult i64 %i.bd, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x i32>, ptr %i.be, align 4, !tbaa !26
  %wide.load51 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !26
  %i.bg = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store <4 x i32> %wide.load, ptr %i.bg, align 4, !tbaa !26
  store <4 x i32> %wide.load51, ptr %i.bh, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i21
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i22.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i21, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i22.prol = phi i64 [ %indvars.iv.next.i23.prol, %scalar.ph.prol ], [ %indvars.iv.i22.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i22.prol
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22.prol
  store i32 %i.bk, ptr %gep.i.prol, align 4, !tbaa !26
  %indvars.iv.next.i23.prol = add nuw nsw i64 %indvars.iv.i22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !127

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i22.unr = phi i64 [ %indvars.iv.i22.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i23.prol, %scalar.ph.prol ]
  %i.bl = sub nsw i64 %indvars.iv.i22.ph, %wide.trip.count.i21
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.i
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !72
  %i.bo = add nsw i32 %i.bn, %i.as                ; 2 uses
  store i32 %i.bo, ptr %i.l, align 8, !tbaa !72
  br label %_ZN11CStringBaseIwE6InsertEiRKS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i23.3, %scalar.ph ], [ %indvars.iv.i22.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i22
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !26
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22
  store i32 %i.bq, ptr %gep.i, align 4, !tbaa !26
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i23
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23
  store i32 %i.bs, ptr %gep.i.1, align 4, !tbaa !26
  %indvars.iv.next.i23.1 = add nuw nsw i64 %indvars.iv.i22, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i23.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !26
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23.1
  store i32 %i.bu, ptr %gep.i.2, align 4, !tbaa !26
  %indvars.iv.next.i23.2 = add nuw nsw i64 %indvars.iv.i22, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i23.2
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i23.2
  store i32 %i.bw, ptr %gep.i.3, align 4, !tbaa !26
  %indvars.iv.next.i23.3 = add nuw nsw i64 %indvars.iv.i22, 4 ; 2 uses
  %exitcond.not.i24.3 = icmp eq i64 %indvars.iv.next.i23.3, %wide.trip.count.i21
  br i1 %exitcond.not.i24.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !129

_ZN11CStringBaseIwE6InsertEiRKS0_.exit:           ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit, %._crit_edge.i
  %i.bx = phi i32 [ %i.ar, %_ZN11CStringBaseIwE6DeleteEii.exit ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.by = add nsw i32 %.2.i, %i.k                 ; 2 uses
  %i.bz = add nuw nsw i32 %.01831, 1              ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bx
  br i1 %i.ca, label %.lr.ph, label %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread, !llvm.loop !130

_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread:     ; preds = %_ZNK11CStringBaseIwE4FindERKS0_i.exit, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit, %.preheader.lr.ph.i, %.critedge.us.i, %bb.c, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.01831, %.critedge.us.i ], [ 0, %bb.c ], [ %.01831, %_ZNK11CStringBaseIwE4FindERKS0_i.exit ], [ %i.bz, %_ZN11CStringBaseIwE6InsertEiRKS0_.exit ], [ %.01831, %.preheader.lr.ph.i ]
  ret i32 %.019
}

declare void @_Z16GetCorrectFsPathRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef) local_unnamed_addr #2

declare void @_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey(ptr noundef nonnull align 8 dereferenceable(332), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIjED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_1
