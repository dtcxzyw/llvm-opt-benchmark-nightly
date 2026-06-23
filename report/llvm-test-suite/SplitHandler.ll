inline.NumInlined: 281
inline.NumDeleted: 92
begin_hunk_0_@_ZN8NArchive6NSplit8CHandler4OpenEP9IInStreamPKyP20IArchiveOpenCallback:bb.a
          catch ptr null
  br label %.body

bb.bk:                                            ; preds = %bb.bd
  %i.gn = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit234

bb.bl:                                            ; preds = %_ZNK11CStringBaseIwE5RightEi.exit
  %i.go = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.gp = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN11CStringBaseIwED2Ev.exit234, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %i.gp) #24
  br label %_ZN11CStringBaseIwED2Ev.exit234

_ZN11CStringBaseIwED2Ev.exit234:                  ; preds = %bb.bm, %bb.bl, %bb.bk
  %.pn144 = phi { ptr, i32 } [ %i.gn, %bb.bk ], [ %i.go, %bb.bl ], [ %i.go, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit288

bb.bn:                                            ; preds = %bb.cv
  %i.gr = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit288

bb.bo:                                            ; preds = %bb.bg
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %.loopexit363, label %bb.bg, !llvm.loop !45

bb.bp:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.gs = load i32, ptr %i.ey, align 8, !tbaa !35, !noalias !46 ; 2 uses
  %spec.select.i235 = call i32 @llvm.smin.i32(i32 %i.gs, i32 2) ; 2 uses
  %i.gt = sub nsw i32 %i.gs, %spec.select.i235
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.gt, i32 noundef %spec.select.i235)
          to label %_ZNK11CStringBaseIwE5RightEi.exit237 unwind label %bb.bt

_ZNK11CStringBaseIwE5RightEi.exit237:             ; preds = %bb.bp
  %i.gu = load ptr, ptr %14, align 8, !tbaa !29
  %i.gv = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.gu, ptr noundef nonnull @.str.1)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %_ZNK11CStringBaseIwE5RightEi.exit237
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN11CStringBaseIwED2Ev.exit240, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZdaPv(ptr noundef nonnull %i.gx) #24
  br label %_ZN11CStringBaseIwED2Ev.exit240

_ZN11CStringBaseIwED2Ev.exit240:                  ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %i.gw, label %.preheader364, label %.loopexit379

.preheader364:                                    ; preds = %_ZN11CStringBaseIwED2Ev.exit240
  %i.gz = load i32, ptr %i.fm, align 8, !tbaa !35 ; 4 uses
  %i.ha = icmp sgt i32 %i.gz, 2
  br i1 %i.ha, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader364
  %i.hb = load ptr, ptr %11, align 8, !tbaa !29
  %i.hc = zext nneg i32 %i.gz to i64
  %wide.trip.count = zext nneg i32 %i.gz to i64
  %i.hd = getelementptr [4 x i8], ptr %i.hb, i64 %i.hc
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.bw ] ; 3 uses
  %i.he = xor i64 %indvars.iv, -1
  %i.hf = getelementptr [4 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !31
  %.not148 = icmp eq i32 %i.hg, 48
  br i1 %.not148, label %bb.bw, label %._crit_edge.loopexit.split.loop.exit

bb.bt:                                            ; preds = %bb.bp
  %i.hh = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit241

bb.bu:                                            ; preds = %_ZNK11CStringBaseIwE5RightEi.exit237
  %i.hi = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.hj = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN11CStringBaseIwED2Ev.exit241, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.hj) #24
  br label %_ZN11CStringBaseIwED2Ev.exit241

_ZN11CStringBaseIwED2Ev.exit241:                  ; preds = %bb.bv, %bb.bu, %bb.bt
  %.pn146 = phi { ptr, i32 } [ %i.hh, %bb.bt ], [ %i.hi, %bb.bu ], [ %i.hi, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit288

bb.bw:                                            ; preds = %bb.bs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bs, !llvm.loop !49

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.bs
  %i.hl = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bw, %._crit_edge.loopexit.split.loop.exit, %.preheader364
  %.1124.lcssa = phi i32 [ 2, %.preheader364 ], [ %i.hl, %._crit_edge.loopexit.split.loop.exit ], [ %i.gz, %bb.bw ] ; 2 uses
  %i.hm = load i32, ptr %i.ey, align 8, !tbaa !35
  %.not149 = icmp eq i32 %.1124.lcssa, %i.hm
  br i1 %.not149, label %.loopexit363, label %.loopexit379

.loopexit363.loopexit.split.loop.exit461:         ; preds = %bb.bg
  %i.hn = trunc nuw nsw i64 %indvars.iv387 to i32
  br label %.loopexit363

.loopexit363:                                     ; preds = %bb.bo, %.loopexit363.loopexit.split.loop.exit461, %.preheader362, %._crit_edge
  %.2125 = phi i32 [ %.1124.lcssa, %._crit_edge ], [ 2, %.preheader362 ], [ %i.hn, %.loopexit363.loopexit.split.loop.exit461 ], [ %i.gc, %bb.bo ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not.i242 = icmp eq ptr %1, null               ; 5 uses
  br i1 %.not.i242, label %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit363
  %i.hp = load ptr, ptr %1, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef i32 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit unwind label %bb.cx, !inline_history !50 ; 0 uses

_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit:            ; preds = %.loopexit363, %bb.bx
  %i.ht = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
          to label %.noexc245 unwind label %.body247 ; 3 uses

.noexc245:                                        ; preds = %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit
  store ptr %1, ptr %i.ht, align 8, !tbaa !51
  br i1 %.not.i242, label %_ZN9CMyComPtrI9IInStreamEC2ERKS1_.exit.i, label %bb.by

bb.by:                                            ; preds = %.noexc245
  %i.hu = load ptr, ptr %1, align 8, !tbaa !22
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN9CMyComPtrI9IInStreamEC2ERKS1_.exit.i unwind label %.body247.thread, !inline_history !54 ; 0 uses

_ZN9CMyComPtrI9IInStreamEC2ERKS1_.exit.i:         ; preds = %bb.by, %.noexc245
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ho)
          to label %bb.bz unwind label %.body247

.body247.thread:                                  ; preds = %bb.by
  %i.hy = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef 8) #24
  br label %bb.cy

bb.bz:                                            ; preds = %_ZN9CMyComPtrI9IInStreamEC2ERKS1_.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !55
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !19 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.id
  store ptr %i.ht, ptr %i.ie, align 8, !tbaa !56
  %i.if = add nsw i32 %i.ic, 1
  store i32 %i.if, ptr %i.ib, align 4, !tbaa !19
  br i1 %.not.i242, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ig = load ptr, ptr %1, align 8, !tbaa !22
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = invoke noundef i32 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN9CMyComPtrI9IInStreamED2Ev.exit unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #22
  unreachable

_ZN9CMyComPtrI9IInStreamED2Ev.exit:               ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.im = load i32, ptr %i.fm, align 8, !tbaa !35
  %i.in = sub nsw i32 %i.im, %.2125
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0, i32 noundef %i.in)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit251 unwind label %bb.da

_ZNK11CStringBaseIwE4LeftEi.exit251:              ; preds = %_ZN9CMyComPtrI9IInStreamED2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !35, !noalias !57 ; 10 uses
  %i.iq = add nsw i32 %i.ip, 1                    ; 4 uses
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit251
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = icmp slt i32 %i.ip, -1
  %i.iu = shl nuw nsw i64 %i.is, 2
  %i.iv = select i1 %i.it, i64 -1, i64 %i.iu
  %i.iw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.iv) #23
          to label %.noexc253 unwind label %bb.db ; 2 uses

.noexc253:                                        ; preds = %bb.cc
  store i32 0, ptr %i.iw, align 4, !tbaa !31, !noalias !57
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc253, %_ZNK11CStringBaseIwE4LeftEi.exit251
  %.sroa.0.0 = phi ptr [ null, %_ZNK11CStringBaseIwE4LeftEi.exit251 ], [ %i.iw, %.noexc253 ] ; 7 uses
  %i.ix = load ptr, ptr %7, align 8, !tbaa !29, !noalias !57
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ix, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.iy, %bb.cd ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ja, %bb.cd ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.iz = load i32, ptr %.04.i.i.i, align 4, !tbaa !31, !noalias !57 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.iz, ptr %.0.i.i.i, align 4, !tbaa !31, !noalias !57
  %.not.i.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.cd, !llvm.loop !36

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.cd
  %i.jb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !35 ; 2 uses
  %.not.i.i339 = icmp sgt i32 %i.jc, 0
  br i1 %.not.i.i339, label %bb.ce, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge

_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.pre393 = sext i32 %i.ip to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.ce:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.jd = icmp sgt i32 %i.ip, 63
  %i.je = lshr i32 %i.iq, 1
  %i.jf = icmp sgt i32 %i.ip, 7
  %..i.i = select i1 %i.jf, i32 16, i32 4
  %.0.i.i341 = select i1 %i.jd, i32 %i.je, i32 %..i.i
  %i.jg = call i32 @llvm.umax.i32(i32 %.0.i.i341, i32 %i.jc)
  %22 = add nsw i32 %i.jg, %i.iq                  ; 2 uses
  %i.jh = add nsw i32 %22, 1
  %23 = zext nneg i32 %i.jh to i64
  %24 = icmp slt i32 %22, -1
  %25 = shl nuw nsw i64 %23, 2
  %26 = select i1 %24, i64 -1, i64 %25
  %27 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %26) #23
          to label %.noexc342 unwind label %bb.ch ; 3 uses

.noexc342:                                        ; preds = %bb.ce
  %i.ji = icmp sgt i32 %i.ip, -1
  br i1 %i.ji, label %.preheader.i.i.i, label %bb.cf

.preheader.i.i.i:                                 ; preds = %.noexc342
  %.not361 = icmp eq i32 %i.ip, 0
  br i1 %.not361, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ip to i64
  %i.jj = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %27, ptr align 4 %.sroa.0.0, i64 %i.jj, i1 false), !tbaa !31
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.jk = icmp eq ptr %.sroa.0.0, null
  br i1 %i.jk, label %bb.cf, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #24
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc342
  %i.jl = sext i32 %i.ip to i64                   ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %27, i64 %i.jl
  store i32 0, ptr %i.jm, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge, %bb.cf
  %.pre-phi = phi i64 [ %.pre393, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %i.jl, %bb.cf ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %27, %bb.cf ] ; 6 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %.pre-phi
  %i.jo = load ptr, ptr %15, align 8, !tbaa !29
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i340 = phi ptr [ %i.jo, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.jp, %bb.cg ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.jn, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.jr, %bb.cg ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.04.i.i340, i64 4
  %i.jq = load i32, ptr %.04.i.i340, align 4, !tbaa !31 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.jq, ptr %.0.i4.i, align 4, !tbaa !31
  %.not.i5.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i5.i, label %bb.cj, label %bb.cg, !llvm.loop !36

bb.ch:                                            ; preds = %bb.ce
  %i.js = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.jt = icmp eq ptr %.sroa.0.0, null
  br i1 %i.jt, label %.body254, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #24
  br label %.body254

bb.cj:                                            ; preds = %bb.cg
  %i.ju = load i32, ptr %i.jb, align 8, !tbaa !35
  %i.jv = add nsw i32 %i.ju, %i.ip                ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.jw, align 8, !tbaa !35
  %i.jx = load ptr, ptr %12, align 8, !tbaa !29   ; 3 uses
  store i32 0, ptr %i.jx, align 4, !tbaa !31
  %i.jy = add nsw i32 %i.jv, 1                    ; 3 uses
  %i.jz = load i32, ptr %i.fo, align 4, !tbaa !33 ; 2 uses
  %i.ka = icmp eq i32 %i.jy, %i.jz
  br i1 %i.ka, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = icmp slt i32 %i.jv, -1
  %i.kd = shl nuw nsw i64 %i.kb, 2
  %i.ke = select i1 %i.kc, i64 -1, i64 %i.kd
  %i.kf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ke) #23
          to label %.noexc262 unwind label %bb.dc ; 3 uses

.noexc262:                                        ; preds = %bb.ck
  %i.kg = icmp sgt i32 %i.jz, 0
  br i1 %i.kg, label %._crit_edge.thread.i.i260, label %bb.cl

._crit_edge.thread.i.i260:                        ; preds = %.noexc262
  call void @_ZdaPv(ptr noundef nonnull %i.jx) #24
  %.pre.i261 = load i32, ptr %i.jw, align 8, !tbaa !35
  %i.kh = sext i32 %.pre.i261 to i64
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.thread.i.i260, %.noexc262
  %i.ki = phi i64 [ %i.kh, %._crit_edge.thread.i.i260 ], [ 0, %.noexc262 ]
  store ptr %i.kf, ptr %12, align 8, !tbaa !29
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.ki
  store i32 0, ptr %i.kj, align 4, !tbaa !31
  store i32 %i.jy, ptr %i.fo, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader: ; preds = %bb.cl, %bb.cj
  %.0.i.i258.ph = phi ptr [ %i.jx, %bb.cj ], [ %i.kf, %bb.cl ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256

_ZN11CStringBaseIwE11SetCapacityEi.exit.i256:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256
  %.04.i.i257 = phi ptr [ %i.kk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256 ], [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader ] ; 2 uses
  %.0.i.i258 = phi ptr [ %i.km, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256 ], [ %.0.i.i258.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.04.i.i257, i64 4
  %i.kl = load i32, ptr %.04.i.i257, align 4, !tbaa !31 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i258, i64 4
  store i32 %i.kl, ptr %.0.i.i258, align 4, !tbaa !31
  %.not.i.i259 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i259, label %bb.cm, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256, !llvm.loop !36

bb.cm:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i256
  store i32 %i.jv, ptr %i.jw, align 8, !tbaa !35
  %i.kn = icmp eq ptr %.sroa.0.1, null
  br i1 %i.kn, label %_ZN11CStringBaseIwED2Ev.exit264, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZN11CStringBaseIwED2Ev.exit264

_ZN11CStringBaseIwED2Ev.exit264:                  ; preds = %bb.cm, %bb.cn
  %i.ko = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZN11CStringBaseIwED2Ev.exit265, label %bb.co

bb.co:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit264
  call void @_ZdaPv(ptr noundef nonnull %i.ko) #24
  br label %_ZN11CStringBaseIwED2Ev.exit265

_ZN11CStringBaseIwED2Ev.exit265:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit264, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.kq = load i32, ptr %i.ey, align 8, !tbaa !35, !noalias !60 ; 2 uses
  %spec.select.i266 = call i32 @llvm.smin.i32(i32 %.2125, i32 %i.kq) ; 2 uses
  %i.kr = sub nsw i32 %i.kq, %spec.select.i266
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.kr, i32 noundef %spec.select.i266)
          to label %_ZNK11CStringBaseIwE5RightEi.exit268 unwind label %bb.df

_ZNK11CStringBaseIwE5RightEi.exit268:             ; preds = %_ZN11CStringBaseIwED2Ev.exit265
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store i32 0, ptr %i.ks, align 8, !tbaa !35
  %i.kt = load ptr, ptr %i.fr, align 8, !tbaa !29 ; 3 uses
  store i32 0, ptr %i.kt, align 4, !tbaa !31
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !35 ; 2 uses
  %i.kw = add nsw i32 %i.kv, 1                    ; 3 uses
  %i.kx = load i32, ptr %i.fu, align 4, !tbaa !33 ; 2 uses
  %i.ky = icmp eq i32 %i.kw, %i.kx
  br i1 %i.ky, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269, label %bb.cp

bb.cp:                                            ; preds = %_ZNK11CStringBaseIwE5RightEi.exit268
  %i.kz = zext nneg i32 %i.kw to i64
  %i.la = icmp slt i32 %i.kv, -1
  %i.lb = shl nuw nsw i64 %i.kz, 2
  %i.lc = select i1 %i.la, i64 -1, i64 %i.lb
  %i.ld = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lc) #23
          to label %.noexc275 unwind label %bb.dg ; 3 uses

.noexc275:                                        ; preds = %bb.cp
  %i.le = icmp sgt i32 %i.kx, 0
  br i1 %i.le, label %._crit_edge.thread.i.i273, label %bb.cq

._crit_edge.thread.i.i273:                        ; preds = %.noexc275
  call void @_ZdaPv(ptr noundef nonnull %i.kt) #24
  %.pre.i274 = load i32, ptr %i.ks, align 8, !tbaa !35
  %i.lf = sext i32 %.pre.i274 to i64
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge.thread.i.i273, %.noexc275
  %i.lg = phi i64 [ %i.lf, %._crit_edge.thread.i.i273 ], [ 0, %.noexc275 ]
  store ptr %i.ld, ptr %i.fr, align 8, !tbaa !29
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.lg
  store i32 0, ptr %i.lh, align 4, !tbaa !31
  store i32 %i.kw, ptr %i.fu, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269

_ZN11CStringBaseIwE11SetCapacityEi.exit.i269:     ; preds = %bb.cq, %_ZNK11CStringBaseIwE5RightEi.exit268
  %i.li = phi ptr [ %i.kt, %_ZNK11CStringBaseIwE5RightEi.exit268 ], [ %i.ld, %bb.cq ]
  %i.lj = load ptr, ptr %16, align 8, !tbaa !29   ; 3 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269
  %.04.i.i270 = phi ptr [ %i.lj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269 ], [ %i.lk, %bb.cr ] ; 2 uses
  %.0.i.i271 = phi ptr [ %i.li, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269 ], [ %i.lm, %bb.cr ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.04.i.i270, i64 4
  %i.ll = load i32, ptr %.04.i.i270, align 4, !tbaa !31 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i271, i64 4
  store i32 %i.ll, ptr %.0.i.i271, align 4, !tbaa !31
  %.not.i.i272 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i272, label %bb.cs, label %bb.cr, !llvm.loop !36

bb.cs:                                            ; preds = %bb.cr
  %i.ln = load i32, ptr %i.ku, align 8, !tbaa !35
  store i32 %i.ln, ptr %i.ks, align 8, !tbaa !35
  %i.lo = icmp eq ptr %i.lj, null
  br i1 %i.lo, label %_ZN11CStringBaseIwED2Ev.exit277, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.lj) #24
  br label %_ZN11CStringBaseIwED2Ev.exit277

_ZN11CStringBaseIwED2Ev.exit277:                  ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.lq = zext i1 %i.fz to i8
  store i8 %i.lq, ptr %i.lp, align 8, !tbaa !63
  %i.lr = load i32, ptr %i.io, align 8, !tbaa !35 ; 2 uses
  %i.ls = icmp slt i32 %i.lr, 1
  br i1 %i.ls, label %bb.cu, label %bb.di

bb.cu:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit277
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.lu, align 8, !tbaa !35
  %i.lv = load ptr, ptr %i.lt, align 8, !tbaa !29 ; 3 uses
  store i32 0, ptr %i.lv, align 4, !tbaa !31
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !33 ; 2 uses
  %i.ly = icmp eq i32 %i.lx, 5
  br i1 %i.ly, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i279, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lz = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #23
          to label %.noexc285 unwind label %bb.bn ; 3 uses

.noexc285:                                        ; preds = %bb.cv
  %i.ma = icmp sgt i32 %i.lx, 0
  br i1 %i.ma, label %._crit_edge.thread.i.i283, label %bb.cw

._crit_edge.thread.i.i283:                        ; preds = %.noexc285
  call void @_ZdaPv(ptr noundef nonnull %i.lv) #24
  %.pre.i284 = load i32, ptr %i.lu, align 8, !tbaa !35
  %i.mb = sext i32 %.pre.i284 to i64
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.thread.i.i283, %.noexc285
  %i.mc = phi i64 [ %i.mb, %._crit_edge.thread.i.i283 ], [ 0, %.noexc285 ]
  store ptr %i.lz, ptr %i.lt, align 8, !tbaa !29
  %i.md = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.mc
  store i32 0, ptr %i.md, align 4, !tbaa !31
  store i32 5, ptr %i.lw, align 4, !tbaa !33
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i279

_ZN11CStringBaseIwE11SetCapacityEi.exit.i279:     ; preds = %bb.cw, %bb.cu
  %i.me = phi ptr [ %i.lv, %bb.cu ], [ %i.lz, %bb.cw ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> <i32 102, i32 105, i32 108, i32 101>, ptr %i.me, align 4, !tbaa !31
  store i32 0, ptr %i.mf, align 4, !tbaa !31
  store i32 4, ptr %i.lu, align 8, !tbaa !35
end_hunk_0
