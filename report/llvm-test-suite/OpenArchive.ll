inline.NumInlined: 385
inline.NumDeleted: 122
begin_hunk_0_@_ZN4CArc10OpenStreamEP7CCodecsiP9IInStreamP19ISequentialInStreamP20IArchiveOpenCallback:bb.a
  %i.ra = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %.not6.i.i395 = icmp eq ptr %i.ra, null
  br i1 %.not6.i.i395, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.noexc396
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !14
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = invoke noundef i32 %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.ra)
          to label %bb.ds unwind label %bb.cx, !inline_history !81 ; 0 uses

bb.ds:                                            ; preds = %bb.dr, %.noexc396
  store ptr %i.oi, ptr %0, align 8, !tbaa !17
  %i.rf = load i32, ptr %i.ng, align 8, !tbaa !71
  %i.rg = load ptr, ptr %i.nh, align 8, !tbaa !52
  %i.rh = sext i32 %i.rf to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !53 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 52 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !51 ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.dt, label %bb.ej

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.rn = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #19
          to label %.noexc403 unwind label %bb.ec ; 2 uses

.noexc403:                                        ; preds = %bb.dt
  store ptr %i.rn, ptr %16, align 8, !tbaa !24
  store i32 1, ptr %i.np, align 4, !tbaa !27
  store i32 0, ptr %i.rn, align 4, !tbaa !25
  store i32 0, ptr %i.nq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.ro = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #19
          to label %.noexc410 unwind label %bb.ed ; 2 uses

.noexc410:                                        ; preds = %.noexc403
  store ptr %i.ro, ptr %17, align 8, !tbaa !24
  store i32 1, ptr %i.nr, align 4, !tbaa !27
  store i32 0, ptr %i.ro, align 4, !tbaa !25
  store i32 0, ptr %i.ns, align 8, !tbaa !21
  invoke void @_Z15GetDefaultName2RK11CStringBaseIwES2_S2_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.du unwind label %bb.ee

bb.du:                                            ; preds = %.noexc410
  store i32 0, ptr %i.nm, align 8, !tbaa !21
  %i.rp = load ptr, ptr %i.nl, align 8, !tbaa !24 ; 3 uses
  store i32 0, ptr %i.rp, align 4, !tbaa !25
  %i.rq = load i32, ptr %i.nt, align 8, !tbaa !21 ; 2 uses
  %i.rr = add nsw i32 %i.rq, 1                    ; 3 uses
  %i.rs = load i32, ptr %i.no, align 4, !tbaa !27 ; 2 uses
  %i.rt = icmp eq i32 %i.rr, %i.rs
  br i1 %i.rt, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ru = zext nneg i32 %i.rr to i64
  %i.rv = icmp slt i32 %i.rq, -1
  %i.rw = shl nuw nsw i64 %i.ru, 2
  %i.rx = select i1 %i.rv, i64 -1, i64 %i.rw
  %i.ry = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rx) #19
          to label %.noexc418 unwind label %bb.ef ; 3 uses

.noexc418:                                        ; preds = %bb.dv
  %i.rz = icmp sgt i32 %i.rs, 0
  br i1 %i.rz, label %._crit_edge.thread.i.i416, label %bb.dw

._crit_edge.thread.i.i416:                        ; preds = %.noexc418
  call void @_ZdaPv(ptr noundef nonnull %i.rp) #20
  %.pre.i417 = load i32, ptr %i.nm, align 8, !tbaa !21
  %i.sa = sext i32 %.pre.i417 to i64
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge.thread.i.i416, %.noexc418
  %i.sb = phi i64 [ %i.sa, %._crit_edge.thread.i.i416 ], [ 0, %.noexc418 ]
  store ptr %i.ry, ptr %i.nl, align 8, !tbaa !24
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.sb
  store i32 0, ptr %i.sc, align 4, !tbaa !25
  store i32 %i.rr, ptr %i.no, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412

_ZN11CStringBaseIwE11SetCapacityEi.exit.i412:     ; preds = %bb.dw, %bb.du
  %i.sd = phi ptr [ %i.rp, %bb.du ], [ %i.ry, %bb.dw ]
  %i.se = load ptr, ptr %15, align 8, !tbaa !24   ; 3 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412
  %.04.i.i413 = phi ptr [ %i.se, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412 ], [ %i.sf, %bb.dx ] ; 2 uses
  %.0.i.i414 = phi ptr [ %i.sd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i412 ], [ %i.sh, %bb.dx ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.04.i.i413, i64 4
  %i.sg = load i32, ptr %.04.i.i413, align 4, !tbaa !25 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.i.i414, i64 4
  store i32 %i.sg, ptr %.0.i.i414, align 4, !tbaa !25
  %.not.i.i415 = icmp eq i32 %i.sg, 0
  br i1 %.not.i.i415, label %bb.dy, label %bb.dx, !llvm.loop !28

bb.dy:                                            ; preds = %bb.dx
  %i.si = load i32, ptr %i.nt, align 8, !tbaa !21
  store i32 %i.si, ptr %i.nm, align 8, !tbaa !21
  %i.sj = icmp eq ptr %i.se, null
  br i1 %i.sj, label %_ZN11CStringBaseIwED2Ev.exit420, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZdaPv(ptr noundef nonnull %i.se) #20
  br label %_ZN11CStringBaseIwED2Ev.exit420

_ZN11CStringBaseIwED2Ev.exit420:                  ; preds = %bb.dy, %bb.dz
  %i.sk = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %_ZN11CStringBaseIwED2Ev.exit421, label %bb.ea

bb.ea:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit420
  call void @_ZdaPv(ptr noundef nonnull %i.sk) #20
  br label %_ZN11CStringBaseIwED2Ev.exit421

_ZN11CStringBaseIwED2Ev.exit421:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit420, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.sm = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %_ZN11CStringBaseIwED2Ev.exit422, label %bb.eb

bb.eb:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit421
  call void @_ZdaPv(ptr noundef nonnull %i.sm) #20
  br label %_ZN11CStringBaseIwED2Ev.exit422

_ZN11CStringBaseIwED2Ev.exit422:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit421, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread518

bb.ec:                                            ; preds = %bb.dt
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit425

bb.ed:                                            ; preds = %.noexc403
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit424

bb.ee:                                            ; preds = %.noexc410
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit423

bb.ef:                                            ; preds = %bb.dv
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %_ZN11CStringBaseIwED2Ev.exit423, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZdaPv(ptr noundef nonnull %i.ss) #20
  br label %_ZN11CStringBaseIwED2Ev.exit423

_ZN11CStringBaseIwED2Ev.exit423:                  ; preds = %bb.eg, %bb.ef, %bb.ee
  %.pn308 = phi { ptr, i32 } [ %i.sq, %bb.ee ], [ %i.sr, %bb.ef ], [ %i.sr, %bb.eg ] ; 2 uses
  %i.su = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %_ZN11CStringBaseIwED2Ev.exit424, label %bb.eh

bb.eh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit423
  call void @_ZdaPv(ptr noundef nonnull %i.su) #20
  br label %_ZN11CStringBaseIwED2Ev.exit424

_ZN11CStringBaseIwED2Ev.exit424:                  ; preds = %bb.eh, %_ZN11CStringBaseIwED2Ev.exit423, %bb.ed
  %.pn308.pn = phi { ptr, i32 } [ %i.sp, %bb.ed ], [ %.pn308, %_ZN11CStringBaseIwED2Ev.exit423 ], [ %.pn308, %bb.eh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.sw = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %_ZN11CStringBaseIwED2Ev.exit425, label %bb.ei

bb.ei:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit424
  call void @_ZdaPv(ptr noundef nonnull %i.sw) #20
  br label %_ZN11CStringBaseIwED2Ev.exit425

_ZN11CStringBaseIwED2Ev.exit425:                  ; preds = %bb.ei, %_ZN11CStringBaseIwED2Ev.exit424, %bb.ec
  %.pn308.pn.pn = phi { ptr, i32 } [ %i.so, %bb.ec ], [ %.pn308.pn, %_ZN11CStringBaseIwED2Ev.exit424 ], [ %.pn308.pn, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.thread553

bb.ej:                                            ; preds = %bb.ds
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rj, i64 56 ; 2 uses
  %i.sz = icmp sgt i32 %i.rl, 0
  br i1 %i.sz, label %.lr.ph.i426, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431

.lr.ph.i426:                                      ; preds = %bb.ej, %bb.ek
  %indvars.iv.i427 = phi i64 [ %indvars.iv.next.i428, %bb.ek ], [ 0, %bb.ej ] ; 3 uses
  %i.ta = load ptr, ptr %i.sy, align 8, !tbaa !52
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %indvars.iv.i427
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !53
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !24
  %i.te = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.sroa.0469.0, ptr noundef %i.td)
          to label %.noexc430 unwind label %bb.el

.noexc430:                                        ; preds = %.lr.ph.i426
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %._crit_edge.loopexit.split.loop.exit14.i429, label %bb.ek

bb.ek:                                            ; preds = %.noexc430
  %indvars.iv.next.i428 = add nuw nsw i64 %indvars.iv.i427, 1 ; 2 uses
  %i.tg = load i32, ptr %i.rk, align 4, !tbaa !51
  %i.th = sext i32 %i.tg to i64
  %i.ti = icmp slt i64 %indvars.iv.next.i428, %i.th
  br i1 %i.ti, label %.lr.ph.i426, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431, !llvm.loop !54

._crit_edge.loopexit.split.loop.exit14.i429:      ; preds = %.noexc430
  %19 = and i64 %indvars.iv.i427, 4294967295
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431: ; preds = %bb.ek, %._crit_edge.loopexit.split.loop.exit14.i429, %bb.ej
  %spec.store.select = phi i64 [ 0, %bb.ej ], [ %19, %._crit_edge.loopexit.split.loop.exit14.i429 ], [ 0, %bb.ek ]
  %i.tj = load ptr, ptr %i.sy, align 8, !tbaa !52
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %spec.store.select
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  invoke void @_Z15GetDefaultName2RK11CStringBaseIwES2_S2_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.tl, ptr noundef nonnull align 8 dereferenceable(16) %i.tm)
          to label %bb.em unwind label %bb.es

bb.el:                                            ; preds = %.lr.ph.i426
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %.thread553

bb.em:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431
  store i32 0, ptr %i.nm, align 8, !tbaa !21
  %i.to = load ptr, ptr %i.nl, align 8, !tbaa !24 ; 3 uses
  store i32 0, ptr %i.to, align 4, !tbaa !25
  %i.tp = load i32, ptr %i.nn, align 8, !tbaa !21 ; 2 uses
  %i.tq = add nsw i32 %i.tp, 1                    ; 3 uses
  %i.tr = load i32, ptr %i.no, align 4, !tbaa !27 ; 2 uses
  %i.ts = icmp eq i32 %i.tq, %i.tr
  br i1 %i.ts, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tt = zext nneg i32 %i.tq to i64
  %i.tu = icmp slt i32 %i.tp, -1
  %i.tv = shl nuw nsw i64 %i.tt, 2
  %i.tw = select i1 %i.tu, i64 -1, i64 %i.tv
  %i.tx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tw) #19
          to label %.noexc438 unwind label %bb.et ; 3 uses

.noexc438:                                        ; preds = %bb.en
  %i.ty = icmp sgt i32 %i.tr, 0
  br i1 %i.ty, label %._crit_edge.thread.i.i436, label %bb.eo

._crit_edge.thread.i.i436:                        ; preds = %.noexc438
  call void @_ZdaPv(ptr noundef nonnull %i.to) #20
  %.pre.i437 = load i32, ptr %i.nm, align 8, !tbaa !21
  %i.tz = sext i32 %.pre.i437 to i64
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge.thread.i.i436, %.noexc438
  %i.ua = phi i64 [ %i.tz, %._crit_edge.thread.i.i436 ], [ 0, %.noexc438 ]
  store ptr %i.tx, ptr %i.nl, align 8, !tbaa !24
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ua
  store i32 0, ptr %i.ub, align 4, !tbaa !25
  store i32 %i.tq, ptr %i.no, align 4, !tbaa !27
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432

_ZN11CStringBaseIwE11SetCapacityEi.exit.i432:     ; preds = %bb.eo, %bb.em
  %i.uc = phi ptr [ %i.to, %bb.em ], [ %i.tx, %bb.eo ]
  %i.ud = load ptr, ptr %18, align 8, !tbaa !24   ; 3 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432
  %.04.i.i433 = phi ptr [ %i.ud, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432 ], [ %i.ue, %bb.ep ] ; 2 uses
  %.0.i.i434 = phi ptr [ %i.uc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i432 ], [ %i.ug, %bb.ep ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.04.i.i433, i64 4
  %i.uf = load i32, ptr %.04.i.i433, align 4, !tbaa !25 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.i.i434, i64 4
  store i32 %i.uf, ptr %.0.i.i434, align 4, !tbaa !25
  %.not.i.i435 = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i435, label %bb.eq, label %bb.ep, !llvm.loop !28

bb.eq:                                            ; preds = %bb.ep
  %i.uh = load i32, ptr %i.nn, align 8, !tbaa !21
  store i32 %i.uh, ptr %i.nm, align 8, !tbaa !21
  %i.ui = icmp eq ptr %i.ud, null
  br i1 %i.ui, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @_ZdaPv(ptr noundef nonnull %i.ud) #20
  br label %bb.ev

bb.es:                                            ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit431
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit441

bb.et:                                            ; preds = %bb.en
  %i.uk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ul = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %_ZN11CStringBaseIwED2Ev.exit441, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_ZdaPv(ptr noundef nonnull %i.ul) #20
  br label %_ZN11CStringBaseIwED2Ev.exit441

_ZN11CStringBaseIwED2Ev.exit441:                  ; preds = %bb.eu, %bb.et, %bb.es
  %.pn305 = phi { ptr, i32 } [ %i.uj, %bb.es ], [ %i.uk, %bb.et ], [ %i.uk, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread553

bb.ev:                                            ; preds = %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread518

.thread518.fold.split:                            ; preds = %bb.dg
  br label %.thread518

.thread518:                                       ; preds = %bb.dg, %.thread518.fold.split, %bb.ev, %_ZN11CStringBaseIwED2Ev.exit422, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384
  %.19526 = phi i32 [ 0, %bb.ev ], [ 0, %_ZN11CStringBaseIwED2Ev.exit422 ], [ %.11625, %bb.dg ], [ -2147467263, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384 ], [ %.2219, %.thread518.fold.split ] ; 2 uses
  %.16240522 = phi i1 [ false, %bb.ev ], [ false, %_ZN11CStringBaseIwED2Ev.exit422 ], [ true, %bb.dg ], [ false, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit384 ], [ false, %.thread518.fold.split ]
  %i.un = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load ptr, ptr %i.uo, align 8
  %i.uq = invoke noundef i32 %i.up(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit unwind label %bb.ew ; 0 uses

bb.ew:                                            ; preds = %.thread518
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit:             ; preds = %.thread518
  br i1 %.16240522, label %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread, label %_ZN11CStringBaseIwED2Ev.exit445

.thread553:                                       ; preds = %_ZN11CStringBaseIwED2Ev.exit441, %bb.el, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %bb.cx, %_ZN11CStringBaseIwED2Ev.exit425
  %.pn308.pn.pn.pn.pn.pn547 = phi { ptr, i32 } [ %i.oy, %_ZN9CMyComPtrI15IArchiveOpenSeqED2Ev.exit ], [ %i.os, %bb.cx ], [ %.pn308.pn.pn, %_ZN11CStringBaseIwED2Ev.exit425 ], [ %i.qp, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ %.pn305, %_ZN11CStringBaseIwED2Ev.exit441 ], [ %i.tn, %bb.el ]
  %i.ut = load ptr, ptr %i.oi, align 8, !tbaa !14
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8
  %i.uw = invoke noundef i32 %i.uv(ptr noundef nonnull align 8 dereferenceable(8) %i.oi)
          to label %_ZN7CBufferIhED2Ev.exit360 unwind label %bb.ex ; 0 uses

bb.ex:                                            ; preds = %.thread553
  %i.ux = landingpad { ptr, i32 }
          catch ptr null
  %i.uy = extractvalue { ptr, i32 } %i.ux, 0
  call void @__clang_call_terminate(ptr %i.uy) #18
  unreachable

_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread:      ; preds = %.noexc378, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit
  %.19527535 = phi i32 [ %.19526, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit ], [ %.11625, %.noexc378 ]
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %i.uz = load i32, ptr %i.nd, align 4, !tbaa !51
  %i.va = sext i32 %i.uz to i64
  %.not319 = icmp slt i64 %indvars.iv.next669, %i.va
  br i1 %.not319, label %bb.cq, label %_ZN11CStringBaseIwED2Ev.exit445, !llvm.loop !82

_ZN11CStringBaseIwED2Ev.exit445:                  ; preds = %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread, %bb.cs, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit, %._crit_edge.thread, %._crit_edge620.thread, %_ZN7CBufferIhED2Ev.exit359.thread, %_ZN7CBufferIhED2Ev.exit359, %_ZN7CBufferIhED2Ev.exit339, %bb.u
  %.21 = phi i32 [ -2147467263, %bb.u ], [ %i.jh, %_ZN7CBufferIhED2Ev.exit359.thread ], [ %i.jj, %_ZN7CBufferIhED2Ev.exit359 ], [ %.4, %_ZN7CBufferIhED2Ev.exit339 ], [ 1, %._crit_edge620.thread ], [ -2147467263, %._crit_edge.thread ], [ %i.nx, %bb.cs ], [ %.19526, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit ], [ 1, %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.thread ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0469.0) #20
  %i.vb = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %_ZN11CStringBaseIwED2Ev.exit446, label %bb.ey

bb.ey:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit445
  call void @_ZdaPv(ptr noundef nonnull %i.vb) #20
  br label %_ZN11CStringBaseIwED2Ev.exit446

_ZN11CStringBaseIwED2Ev.exit446:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit445, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.21

_ZN7CBufferIhED2Ev.exit360:                       ; preds = %.loopexit570, %.loopexit.split-lp571.loopexit.split-lp, %.loopexit.split-lp571.loopexit, %.thread553, %.thread549, %bb.cc, %bb.cb, %bb.ct, %_ZN7CBufferIhED2Ev.exit341, %_ZN11CStringBaseIwED2Ev.exit376, %_ZN11CStringBaseIwED2Ev.exit375, %bb.q
  %.pn308.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn293, %_ZN11CStringBaseIwED2Ev.exit375 ], [ %i.bo, %bb.q ], [ %.pn308.pn.pn.pn.pn.pn547, %.thread553 ], [ %i.ny, %bb.ct ], [ %.pn288.pn.pn.pn490, %_ZN7CBufferIhED2Ev.exit341 ], [ %.pn295, %_ZN11CStringBaseIwED2Ev.exit376 ], [ %.pn276.pn.pn.ph, %bb.cc ], [ %i.kz, %bb.cb ], [ %i.on, %.thread549 ], [ %lpad.loopexit572, %.loopexit570 ], [ %lpad.loopexit576, %.loopexit.split-lp571.loopexit ], [ %lpad.loopexit.split-lp577, %.loopexit.split-lp571.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN7CBufferIhED2Ev.exit360, %_ZN11CStringBaseIwED2Ev.exit324
  %.sroa.0469.1.ph = phi ptr [ %i.m, %_ZN11CStringBaseIwED2Ev.exit324 ], [ %.sroa.0469.0, %_ZN7CBufferIhED2Ev.exit360 ]
  %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit324 ], [ %.pn308.pn.pn.pn.pn.pn.pn.pn, %_ZN7CBufferIhED2Ev.exit360 ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0469.1.ph) #20
  br label %_ZN11CStringBaseIwED2Ev.exit447

_ZN11CStringBaseIwED2Ev.exit447:                  ; preds = %bb.ez, %bb.l
  %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.l ], [ %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.ph, %bb.ez ]
  %i.vd = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.ve = icmp eq ptr %i.vd, null
  br i1 %i.ve, label %_ZN11CStringBaseIwED2Ev.exit448, label %bb.fa

bb.fa:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit447
  call void @_ZdaPv(ptr noundef nonnull %i.vd) #20
  br label %_ZN11CStringBaseIwED2Ev.exit448

_ZN11CStringBaseIwED2Ev.exit448:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit447, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn308.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_Z23ExtractFileNameFromPathRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector10DeleteFromEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

end_hunk_0
