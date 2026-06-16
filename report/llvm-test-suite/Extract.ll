inline.NumInlined: 200
inline.NumDeleted: 87
begin_hunk_0_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
_ZN13CRecordVectorIjE3AddEj.exit.i:               ; preds = %bb.dk
  %i.nl = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.nm = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nn
  store i32 %.0100172.i, ptr %i.no, align 4, !tbaa !4
  %i.np = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nq = add nsw i32 %i.np, 1
  store i32 %i.nq, ptr %i.cs, align 4, !tbaa !38
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN13CRecordVectorIjE3AddEj.exit.i, %bb.di, %bb.df
  %.395.i = phi i32 [ 4, %bb.di ], [ 1, %bb.df ], [ 0, %_ZN13CRecordVectorIjE3AddEj.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.db
  %.496.i = phi i32 [ %.395.i, %bb.dl ], [ 1, %bb.db ]
  %.4.i = phi i32 [ %.1...i, %bb.dl ], [ %i.nb, %bb.db ] ; 2 uses
  %i.nr = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.nr) #17
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  switch i32 %.496.i, label %bb.du [
    i32 0, label %bb.do
    i32 4, label %bb.do
  ]

bb.do:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN11CStringBaseIwED2Ev.exit.i
  %i.nt = add nuw i32 %.0100172.i, 1              ; 2 uses
  %i.nu = load i32, ptr %i.a, align 4, !tbaa !4
  %i.nv = icmp ult i32 %i.nt, %i.nu
  br i1 %i.nv, label %.lr.ph.i303, label %._crit_edge.i, !llvm.loop !84

bb.dp:                                            ; preds = %bb.dj, %bb.dg
  %.pn.i305 = phi { ptr, i32 } [ %i.nk, %bb.dj ], [ %i.nf, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dd
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i305, %bb.dp ], [ %i.nd, %bb.dd ] ; 2 uses
  %i.nw = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %_ZN11CStringBaseIwED2Ev.exit123.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZdaPv(ptr noundef nonnull %i.nw) #17
  br label %_ZN11CStringBaseIwED2Ev.exit123.i

_ZN11CStringBaseIwED2Ev.exit123.i:                ; preds = %bb.dr, %bb.dq, %bb.dc
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.nc, %bb.dc ], [ %.pn.pn.i, %bb.dq ], [ %.pn.pn.i, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.dv

._crit_edge.i:                                    ; preds = %bb.do, %.preheader.i
  %i.ny = load i32, ptr %i.cs, align 4, !tbaa !38
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.ds, label %.thread168.i

.thread168.i:                                     ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.dw

bb.ds:                                            ; preds = %._crit_edge.i
  %i.oa = load ptr, ptr %7, align 8, !tbaa !12
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 104
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = invoke noundef i32 %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.thread164.i unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.thread164.i:                                     ; preds = %bb.ds, %bb.cy
  %.6.ph.i = phi i32 [ 0, %bb.ds ], [ %i.mx, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fv

bb.du:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fv

bb.dv:                                            ; preds = %bb.dt, %_ZN11CStringBaseIwED2Ev.exit123.i, %bb.cz
  %.pn108.i = phi { ptr, i32 } [ %i.oe, %bb.dt ], [ %.pn.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit123.i ], [ %i.mz, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fu

bb.dw:                                            ; preds = %.thread168.i, %._crit_edge431
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.cv, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %12, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.of = load i32, ptr %i.cx, align 8, !tbaa !72 ; 3 uses
  %i.og = add nsw i32 %i.of, 1                    ; 3 uses
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.oi = zext nneg i32 %i.og to i64
  %i.oj = icmp slt i32 %i.of, -1
  %i.ok = shl nuw nsw i64 %i.oi, 2
  %i.ol = select i1 %i.oj, i64 -1, i64 %i.ok
  %i.om = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ol) #15
          to label %.noexc.i304 unwind label %bb.eh ; 3 uses

.noexc.i304:                                      ; preds = %bb.dx
  store ptr %i.om, ptr %13, align 8, !tbaa !25
  store i32 0, ptr %i.om, align 4, !tbaa !26
  store i32 %i.og, ptr %i.cy, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i304, %bb.dw
  %i.on = phi ptr [ null, %bb.dw ], [ %i.om, %.noexc.i304 ]
  %i.oo = load ptr, ptr %i.cw, align 8, !tbaa !25
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.oo, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.op, %bb.dy ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.on, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.or, %bb.dy ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.oq = load i32, ptr %.04.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.oq, ptr %.0.i.i.i, align 4, !tbaa !26
  %.not.i.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i.i, label %bb.dz, label %bb.dy, !llvm.loop !74

bb.dz:                                            ; preds = %bb.dy
  store i32 %i.of, ptr %i.cz, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.os = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #15
          to label %.noexc128.i unwind label %bb.ei ; 2 uses

.noexc128.i:                                      ; preds = %bb.dz
  store ptr %i.os, ptr %14, align 8, !tbaa !25
  store i32 2, ptr %i.da, align 4, !tbaa !28
  store i64 42, ptr %i.os, align 4, !tbaa !26
  store i32 1, ptr %i.db, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  invoke void @_Z16GetCorrectFsPathRK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %i.ot)
          to label %bb.ea unwind label %bb.ej

bb.ea:                                            ; preds = %.noexc128.i
  %i.ou = invoke noundef i32 @_ZN11CStringBaseIwE7ReplaceERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.eb unwind label %bb.ek     ; 0 uses

bb.eb:                                            ; preds = %bb.ea
  %i.ov = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_ZN11CStringBaseIwED2Ev.exit129.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #17
  br label %_ZN11CStringBaseIwED2Ev.exit129.i

_ZN11CStringBaseIwED2Ev.exit129.i:                ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.ox = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %_ZN11CStringBaseIwED2Ev.exit130.i, label %bb.ed

bb.ed:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit129.i
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #17
  br label %_ZN11CStringBaseIwED2Ev.exit130.i

_ZN11CStringBaseIwED2Ev.exit130.i:                ; preds = %bb.ed, %_ZN11CStringBaseIwED2Ev.exit129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.oz = load i32, ptr %i.cz, align 8, !tbaa !72
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.ez, label %bb.ee

bb.ee:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit130.i
  %i.pb = load ptr, ptr %13, align 8, !tbaa !25
  %i.pc = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw(ptr noundef %i.pb)
          to label %bb.ef unwind label %bb.en

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.pc, label %bb.ez, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pd = tail call ptr @__errno_location() #18
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !4  ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  %spec.store.select.i = select i1 %i.pf, i32 -2147467259, i32 %i.pe
  %i.pg = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znam(i64 noundef 132) #15
          to label %.noexc136.i unwind label %bb.ew ; 4 uses

.noexc136.i:                                      ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.pg, ptr noundef nonnull align 4 dereferenceable(132) @.str.5, i64 132, i1 false), !tbaa !26
  %i.ph = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znam(i64 noundef 132) #15
          to label %.noexc140.i unwind label %bb.ex ; 13 uses

bb.eh:                                            ; preds = %bb.dx
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit152.i

bb.ei:                                            ; preds = %bb.dz
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit139.i

bb.ej:                                            ; preds = %.noexc128.i
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit138.i

bb.ek:                                            ; preds = %bb.ea
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %_ZN11CStringBaseIwED2Ev.exit138.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_ZdaPv(ptr noundef nonnull %i.pm) #17
  br label %_ZN11CStringBaseIwED2Ev.exit138.i

_ZN11CStringBaseIwED2Ev.exit138.i:                ; preds = %bb.el, %bb.ek, %bb.ej
  %.pn110.i = phi { ptr, i32 } [ %i.pk, %bb.ej ], [ %i.pl, %bb.ek ], [ %i.pl, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
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
  %26 = load <4 x i32>, ptr %i.ph, align 4, !tbaa !26
  store <4 x i32> %26, ptr %i.pz, align 4, !tbaa !26
  %27 = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %28 = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %29 = load <4 x i32>, ptr %27, align 4, !tbaa !26
  store <4 x i32> %29, ptr %28, align 4, !tbaa !26
  %30 = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %32 = load <4 x i32>, ptr %30, align 4, !tbaa !26
  store <4 x i32> %32, ptr %31, align 4, !tbaa !26
  %33 = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %34 = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  %35 = load <4 x i32>, ptr %33, align 4, !tbaa !26
  store <4 x i32> %35, ptr %34, align 4, !tbaa !26
  %36 = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %37 = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  %38 = load <4 x i32>, ptr %36, align 4, !tbaa !26
  store <4 x i32> %38, ptr %37, align 4, !tbaa !26
  %39 = getelementptr inbounds nuw i8, ptr %i.ph, i64 80
  %40 = getelementptr inbounds nuw i8, ptr %i.pz, i64 80
  %41 = load <4 x i32>, ptr %39, align 4, !tbaa !26
  store <4 x i32> %41, ptr %40, align 4, !tbaa !26
  %42 = getelementptr inbounds nuw i8, ptr %i.ph, i64 96
  %43 = getelementptr inbounds nuw i8, ptr %i.pz, i64 96
  %44 = load <4 x i32>, ptr %42, align 4, !tbaa !26
  store <4 x i32> %44, ptr %43, align 4, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %i.ph, i64 112
  %46 = getelementptr inbounds nuw i8, ptr %i.pz, i64 112
  %47 = load <4 x i32>, ptr %45, align 4, !tbaa !26
  store <4 x i32> %47, ptr %46, align 4, !tbaa !26
  call void @_ZdaPv(ptr noundef nonnull %i.ph) #17
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 128
  store i32 0, ptr %i.qa, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i:       ; preds = %bb.eq, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
  %i.qb = phi ptr [ %i.pz, %bb.eq ], [ %i.ph, %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i ] ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 128
  %i.qd = load ptr, ptr %13, align 8, !tbaa !25
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i
  %.04.i.i154.i = phi ptr [ %i.qd, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.qe, %bb.er ] ; 2 uses
  %.0.i4.i.i = phi ptr [ %i.qc, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i.i ], [ %i.qg, %bb.er ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.04.i.i154.i, i64 4
  %i.qf = load i32, ptr %.04.i.i154.i, align 4, !tbaa !26 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i4.i.i, i64 4
  store i32 %i.qf, ptr %.0.i4.i.i, align 4, !tbaa !26
  %.not.i5.i.i = icmp eq i32 %i.qf, 0
  br i1 %.not.i5.i.i, label %bb.et, label %bb.er, !llvm.loop !74

bb.es:                                            ; preds = %bb.ep
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ph) #17
  br label %.body.i

bb.et:                                            ; preds = %bb.er
  %i.qi = load i32, ptr %i.cz, align 8, !tbaa !72 ; 3 uses
  %i.qj = add nsw i32 %i.qi, 32
  store i32 0, ptr %i.dc, align 8, !tbaa !72
  %i.qk = load ptr, ptr %8, align 8, !tbaa !25    ; 3 uses
  store i32 0, ptr %i.qk, align 4, !tbaa !26
  %i.ql = add nsw i32 %i.qi, 33                   ; 3 uses
  %i.qm = load i32, ptr %i.dd, align 4, !tbaa !28 ; 2 uses
  %i.qn = icmp eq i32 %i.ql, %i.qm
  br i1 %i.qn, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qo = zext nneg i32 %i.ql to i64
  %i.qp = icmp slt i32 %i.qi, -33
  %i.qq = shl nuw nsw i64 %i.qo, 2
  %i.qr = select i1 %i.qp, i64 -1, i64 %i.qq
  %i.qs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qr) #15
          to label %.noexc145.i unwind label %bb.ey ; 3 uses

.noexc145.i:                                      ; preds = %bb.eu
  %i.qt = icmp sgt i32 %i.qm, 0
  br i1 %i.qt, label %._crit_edge.thread.i.i.i, label %bb.ev

._crit_edge.thread.i.i.i:                         ; preds = %.noexc145.i
  call void @_ZdaPv(ptr noundef nonnull %i.qk) #17
  %.pre.i.i = load i32, ptr %i.dc, align 8, !tbaa !72
  %i.qu = sext i32 %.pre.i.i to i64
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.thread.i.i.i, %.noexc145.i
  %i.qv = phi i64 [ %i.qu, %._crit_edge.thread.i.i.i ], [ 0, %.noexc145.i ]
  store ptr %i.qs, ptr %8, align 8, !tbaa !25
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qv
  store i32 0, ptr %i.qw, align 4, !tbaa !26
  store i32 %i.ql, ptr %i.dd, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader: ; preds = %bb.ev, %bb.et
  %.0.i.i143.i.ph = phi ptr [ %i.qk, %bb.et ], [ %i.qs, %bb.ev ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i:   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i
  %.04.i.i142.i = phi ptr [ %i.qx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i ], [ %i.qb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader ] ; 2 uses
  %.0.i.i143.i = phi ptr [ %i.qz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i ], [ %.0.i.i143.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.04.i.i142.i, i64 4
  %i.qy = load i32, ptr %.04.i.i142.i, align 4, !tbaa !26 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.i.i143.i, i64 4
  store i32 %i.qy, ptr %.0.i.i143.i, align 4, !tbaa !26
  %.not.i.i144.i = icmp eq i32 %i.qy, 0
  br i1 %.not.i.i144.i, label %_ZN11CStringBaseIwED2Ev.exit147.i.a, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i, !llvm.loop !74

_ZN11CStringBaseIwED2Ev.exit147.i.a:              ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i
  store i32 %i.qj, ptr %i.dc, align 8, !tbaa !72
  call void @_ZdaPv(ptr noundef nonnull %i.qb) #17
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #17
  br label %bb.fq

bb.ew:                                            ; preds = %bb.eg
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ex:                                            ; preds = %.noexc136.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ey:                                            ; preds = %bb.eu
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.qb) #17
  br label %.body.i

.body.i:                                          ; preds = %bb.ey, %bb.ex, %bb.es
  %.pn113.i = phi { ptr, i32 } [ %i.rc, %bb.ey ], [ %i.rb, %bb.ex ], [ %i.qh, %bb.es ]
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #17
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.ez:                                            ; preds = %bb.ef, %_ZN11CStringBaseIwED2Ev.exit130.i
  %i.rd = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.re = trunc nuw i8 %i.rd to i1
  %i.rf = select i1 %i.re, ptr %4, ptr null
  %i.rg = load i8, ptr %i.de, align 1, !tbaa !88, !range !23, !noundef !24
  %i.rh = trunc nuw i8 %i.rg to i1
  %i.ri = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %i.rj = trunc nuw i8 %i.ri to i1
  %i.rk = load i8, ptr %i.dg, align 4, !tbaa !90, !range !23, !noundef !24
  %i.rl = trunc nuw i8 %i.rk to i1
  invoke void @_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey(ptr noundef nonnull align 8 dereferenceable(332) %i.aq, ptr noundef %i.rf, ptr noundef nonnull align 8 dereferenceable(80) %i.mf, ptr noundef nonnull %7, i1 noundef zeroext %i.rh, i1 noundef zeroext %i.rj, i1 noundef zeroext %i.rl, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.mq)
          to label %bb.fa unwind label %bb.en

bb.fa:                                            ; preds = %bb.ez
  %i.rm = invoke noundef i32 @_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE(ptr noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %bb.fb unwind label %bb.fc     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %.not116.i = icmp eq i32 %i.rm, 0
  br i1 %.not116.i, label %bb.fd, label %bb.fq

bb.fc:                                            ; preds = %bb.fa
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fd:                                            ; preds = %bb.fb
  %i.ro = load i8, ptr %i.df, align 1, !tbaa !89, !range !23, !noundef !24
  %i.rp = trunc nuw i8 %i.ro to i1
  %i.rq = load i8, ptr %i.dg, align 4, !range !23
  %i.rr = xor i8 %i.rq, 1
  %i.rs = zext nneg i8 %i.rr to i32
  %i.rt = select i1 %i.rp, i32 %i.rs, i32 0       ; 2 uses
  %i.ru = load i8, ptr %5, align 8, !tbaa !14, !range !23, !noundef !24
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.fe, label %bb.fo

bb.fe:                                            ; preds = %bb.fd
  %i.rw = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 72
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = invoke noundef i32 %i.ry(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef null, i32 noundef -1, i32 noundef %i.rt, ptr noundef nonnull %i.aq)
          to label %bb.ff unwind label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  store i16 0, ptr %16, align 8, !tbaa !91
  store i16 0, ptr %i.di, align 2, !tbaa !94
  %i.sa = load ptr, ptr %i.mr, align 8, !tbaa !12
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 80
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = invoke noundef i32 %i.sc(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, i32 noundef 44, ptr noundef nonnull %16)
          to label %bb.fg unwind label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.fh, label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  %i.sf = load i16, ptr %16, align 8, !tbaa !91
  switch i16 %i.sf, label %bb.fm [
    i16 21, label %bb.fi
    i16 19, label %bb.fi
  ]

bb.fi:                                            ; preds = %bb.fh, %bb.fh
  %i.sg = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.fm unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fp, %bb.fo, %bb.fe
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fk:                                            ; preds = %bb.fi, %bb.ff
  %i.si = landingpad { ptr, i32 }
          cleanup
  %i.sj = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i unwind label %bb.fl ; 0 uses

bb.fl:                                            ; preds = %bb.fk
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #19
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i:       ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %_ZN11CStringBaseIwED2Ev.exit149.i

bb.fm:                                            ; preds = %bb.fi, %bb.fh, %bb.fg
  %.3 = phi i64 [ 0, %bb.fh ], [ 0, %bb.fg ], [ %i.sg, %bb.fi ]
  %i.sm = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit150.i unwind label %bb.fn ; 0 uses

bb.fn:                                            ; preds = %bb.fm
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #19
  unreachable
end_hunk_0
