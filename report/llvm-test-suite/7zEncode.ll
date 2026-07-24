inline.NumInlined: 403
inline.NumDeleted: 197
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo:bb.a
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv41.i
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.no)
          to label %.noexc235 unwind label %.loopexit278

.noexc235:                                        ; preds = %bb.co
  %i.pq = load ptr, ptr %i.ot, align 8, !tbaa !40
  %i.pr = load i32, ptr %i.ou, align 4, !tbaa !37
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.ps
  store i32 %i.pp, ptr %i.pt, align 4, !tbaa !4
  %i.pu = load i32, ptr %i.ou, align 4, !tbaa !37
  %i.pv = add nsw i32 %i.pu, 1
  store i32 %i.pv, ptr %i.ou, align 4, !tbaa !37
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.pw = load i32, ptr %i.op, align 4, !tbaa !37
  %i.px = sext i32 %i.pw to i64
  %i.py = icmp slt i64 %indvars.iv.next42.i, %i.px
  br i1 %i.py, label %bb.co, label %_ZN8NArchive3N7zL31ConvertBindInfoToFolderItemInfoERKN11NCoderMixer9CBindInfoE13CRecordVectorIyERNS0_7CFolderE.exit, !llvm.loop !142

_ZN8NArchive3N7zL31ConvertBindInfoToFolderItemInfoERKN11NCoderMixer9CBindInfoE13CRecordVectorIyERNS0_7CFolderE.exit: ; preds = %.noexc235, %.preheader.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  %i.pz = load i64, ptr %i.fw, align 8, !tbaa !114
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN13CRecordVectorIyE3AddEy.exit unwind label %.loopexit.split-lp

_ZN13CRecordVectorIyE3AddEy.exit:                 ; preds = %_ZN8NArchive3N7zL31ConvertBindInfoToFolderItemInfoERKN11NCoderMixer9CBindInfoE13CRecordVectorIyERNS0_7CFolderE.exit
  %i.qa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !40
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !37 ; 2 uses
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qe
  store i64 %i.pz, ptr %i.qf, align 8, !tbaa !138
  %i.qg = add nsw i32 %i.qd, 1
  store i32 %i.qg, ptr %i.qc, align 4, !tbaa !37
  %i.qh = load i32, ptr %i.q, align 4, !tbaa !37
  %i.qi = icmp sgt i32 %i.qh, 1
  br i1 %i.qi, label %.lr.ph358, label %.preheader

.lr.ph358:                                        ; preds = %_ZN13CRecordVectorIyE3AddEy.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.cp

.preheader:                                       ; preds = %bb.cu, %_ZN13CRecordVectorIyE3AddEy.exit
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !143 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 232
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !144
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %.preheader
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 108 ; 2 uses
  br label %bb.cv

bb.cp:                                            ; preds = %.lr.ph358, %bb.cu
  %indvars.iv410 = phi i64 [ 1, %.lr.ph358 ], [ %indvars.iv.next411, %bb.cu ] ; 2 uses
  %i.qu = load ptr, ptr %i.qj, align 8, !tbaa !40
  %i.qv = getelementptr [8 x i8], ptr %i.qu, i64 %indvars.iv410
  %i.qw = getelementptr i8, ptr %i.qv, i64 -8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !41 ; 2 uses
  %i.qy = invoke noundef i32 @_ZN16CInOutTempBuffer13WriteToStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(1164) %i.qx, ptr noundef %5)
          to label %bb.cq unwind label %bb.cs     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %.not145 = icmp eq i32 %i.qy, 0
  br i1 %.not145, label %bb.ct, label %.loopexit

.loopexit278:                                     ; preds = %bb.co
  %lpad.loopexit280 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp279

.loopexit.split-lp279.loopexit:                   ; preds = %.noexc233, %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.i
  %lpad.loopexit283 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp279

.loopexit.split-lp279.loopexit.split-lp.loopexit: ; preds = %bb.cn
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp279

.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN13CRecordVectorIyEC2ERKS0_.exit, %.noexc229, %.noexc230
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp279

.loopexit.split-lp279:                            ; preds = %.loopexit.split-lp279.loopexit, %.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp279.loopexit.split-lp.loopexit, %.loopexit278
  %lpad.phi282 = phi { ptr, i32 } [ %lpad.loopexit280, %.loopexit278 ], [ %lpad.loopexit283, %.loopexit.split-lp279.loopexit ], [ %lpad.loopexit286, %.loopexit.split-lp279.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp279.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  br label %.body225

bb.cr:                                            ; preds = %bb.ct
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body225

bb.cs:                                            ; preds = %bb.cp
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body225

bb.ct:                                            ; preds = %bb.cq
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 1152
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !146
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.cu unwind label %bb.cr

bb.cu:                                            ; preds = %bb.ct
  %i.rd = load ptr, ptr %i.qa, align 8, !tbaa !40
  %i.re = load i32, ptr %i.qc, align 4, !tbaa !37 ; 2 uses
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.rd, i64 %i.rf
  store i64 %i.rc, ptr %i.rg, align 8, !tbaa !138
  %i.rh = add nsw i32 %i.re, 1
  store i32 %i.rh, ptr %i.qc, align 4, !tbaa !37
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %i.ri = load i32, ptr %i.q, align 4, !tbaa !37
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next411, %i.rj
  br i1 %i.rk, label %bb.cp, label %.preheader, !llvm.loop !152

bb.cv:                                            ; preds = %.lr.ph360, %bb.cz
  %indvars.iv413 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next414, %bb.cz ] ; 2 uses
  %i.rl = phi ptr [ %i.ql, %.lr.ph360 ], [ %i.si, %bb.cz ]
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 256
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !40
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv413
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !4
  %i.rq = load i32, ptr %i.qp, align 4, !tbaa !37 ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %.lr.ph.i240, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread

.lr.ph.i240:                                      ; preds = %bb.cv
  %i.rs = load ptr, ptr %i.qq, align 8, !tbaa !40
  %wide.trip.count.i = zext nneg i32 %i.rq to i64
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.i240
  %indvars.iv.i241 = phi i64 [ 0, %.lr.ph.i240 ], [ %indvars.iv.next.i242, %bb.cx ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv.i241
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !153
  %i.rv = icmp eq i32 %i.ru, %i.rp
  br i1 %i.rv, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next.i242 = add nuw nsw i64 %indvars.iv.i241, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i242, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread, label %bb.cw, !llvm.loop !155

bb.cy:                                            ; preds = %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body225

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit: ; preds = %bb.cw
  %i.rx = load ptr, ptr %0, align 8, !tbaa !16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 168
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !40
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv.i241
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !41
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 176
  br label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread: ; preds = %bb.cx, %bb.cv, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit
  %.0.in = phi ptr [ %i.sc, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit ], [ %i.fm, %bb.cv ], [ %i.fm, %bb.cx ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !138
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.qr)
          to label %bb.cz unwind label %bb.cy

bb.cz:                                            ; preds = %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
  %i.sd = load ptr, ptr %i.qs, align 8, !tbaa !40
  %i.se = load i32, ptr %i.qt, align 4, !tbaa !37 ; 2 uses
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.sd, i64 %i.sf
  store i64 %.0, ptr %i.sg, align 8, !tbaa !138
  %i.sh = add nsw i32 %i.se, 1
  store i32 %i.sh, ptr %i.qt, align 4, !tbaa !37
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %i.si = load ptr, ptr %i.qk, align 8, !tbaa !143 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 232
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !144
  %i.sl = sext i32 %i.sk to i64
  %i.sm = icmp slt i64 %indvars.iv.next414, %i.sl
  br i1 %i.sm, label %bb.cv, label %._crit_edge361, !llvm.loop !156

._crit_edge361:                                   ; preds = %bb.cz, %.preheader
  br i1 %i.ba, label %.lr.ph364, label %.loopexit

.lr.ph364:                                        ; preds = %._crit_edge361
  %i.sn = add nsw i32 %i.p, -1
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sq = zext nneg i32 %i.p to i64
  %18 = zext nneg i32 %i.sn to i64
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph364, %_ZN7CBufferIhEaSERKS0_.exit
  %indvars.iv416.in = phi i64 [ %i.sq, %.lr.ph364 ], [ %indvars.iv416, %_ZN7CBufferIhEaSERKS0_.exit ] ; 2 uses
  %indvars.iv416 = add nsw i64 %indvars.iv416.in, -1 ; 3 uses
  %i.sr = load ptr, ptr %i.so, align 8, !tbaa !40
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv416
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !41 ; 2 uses
  %i.su = sub nuw nsw i64 %18, %indvars.iv416
  %i.sv = load ptr, ptr %i.sp, align 8, !tbaa !40
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.su
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !41 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 24 ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !79 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %_ZN7CBufferIhE4FreeEv.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %i.sz) #18
  br label %_ZN7CBufferIhE4FreeEv.exit.i

_ZN7CBufferIhE4FreeEv.exit.i:                     ; preds = %bb.db, %bb.da
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, i8 0, i64 16, i1 false)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !157 ; 3 uses
  %.not.i245 = icmp eq i64 %i.td, 0
  br i1 %.not.i245, label %_ZN7CBufferIhEaSERKS0_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i

_ZN7CBufferIhE11SetCapacityEm.exit.i:             ; preds = %_ZN7CBufferIhE4FreeEv.exit.i
  %i.te = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.td) #15
          to label %.noexc246 unwind label %.loopexit276 ; 2 uses

.noexc246:                                        ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i
  store ptr %i.te, ptr %i.sy, align 8, !tbaa !79
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !157
  %i.tf = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !79
  %i.th = load i64, ptr %i.tc, align 8, !tbaa !157
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.te, ptr align 1 %i.tg, i64 %i.th, i1 false)
  br label %_ZN7CBufferIhEaSERKS0_.exit

_ZN7CBufferIhEaSERKS0_.exit:                      ; preds = %.noexc246, %_ZN7CBufferIhE4FreeEv.exit.i
  %i.ti = icmp samesign ugt i64 %indvars.iv416.in, 1
  br i1 %i.ti, label %bb.da, label %.loopexit, !llvm.loop !158

.loopexit:                                        ; preds = %bb.cq, %_ZN7CBufferIhEaSERKS0_.exit, %._crit_edge361, %bb.ci
  %.6 = phi i32 [ 0, %._crit_edge361 ], [ %i.mu, %bb.ci ], [ 0, %_ZN7CBufferIhEaSERKS0_.exit ], [ %i.qy, %bb.cq ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.tj = load ptr, ptr %i.eo, align 8, !tbaa !10
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8
  %i.tm = invoke noundef i32 %i.tl(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit248 unwind label %bb.dc ; 0 uses

bb.dc:                                            ; preds = %.loopexit
  %i.tn = landingpad { ptr, i32 }
          catch ptr null
  %i.to = extractvalue { ptr, i32 } %i.tn, 0
  call void @__clang_call_terminate(ptr %i.to) #17
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit248: ; preds = %.loopexit
  %i.tp = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = invoke noundef i32 %i.tr(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.dd ; 0 uses

bb.dd:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit248
  %i.tt = landingpad { ptr, i32 }
          catch ptr null
  %i.tu = extractvalue { ptr, i32 } %i.tt, 0
  call void @__clang_call_terminate(ptr %i.tu) #17
  unreachable

.body225:                                         ; preds = %.loopexit276, %.loopexit.split-lp, %.loopexit291, %.loopexit.split-lp292, %bb.cm, %bb.cj, %.loopexit.split-lp279, %bb.cy, %bb.cs, %bb.cr, %_ZN9CMyComPtrI22ICryptoResetInitVectorED2Ev.exit224
  %.pn155 = phi { ptr, i32 } [ %lpad.phi.i, %bb.cm ], [ %.pn150.pn.pn.pn, %_ZN9CMyComPtrI22ICryptoResetInitVectorED2Ev.exit224 ], [ %i.mv, %bb.cj ], [ %i.rw, %bb.cy ], [ %i.ra, %bb.cs ], [ %lpad.phi282, %.loopexit.split-lp279 ], [ %i.qz, %bb.cr ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit, %.loopexit276 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.de

bb.de:                                            ; preds = %bb.az, %.body225
  %.pn155.pn = phi { ptr, i32 } [ %.pn155, %.body225 ], [ %i.ho, %bb.az ]
  %i.tv = load ptr, ptr %i.eo, align 8, !tbaa !10
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = invoke noundef i32 %i.tx(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit251 unwind label %bb.df ; 0 uses

bb.df:                                            ; preds = %bb.de
  %i.tz = landingpad { ptr, i32 }
          catch ptr null
  %i.ua = extractvalue { ptr, i32 } %i.tz, 0
  call void @__clang_call_terminate(ptr %i.ua) #17
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit251: ; preds = %bb.ax, %bb.de, %bb.ay
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %i.hm, %bb.ax ], [ %.pn155.pn, %bb.de ], [ %i.hn, %bb.ay ]
  %i.ub = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = invoke noundef i32 %i.ud(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit183 unwind label %bb.dg ; 0 uses

bb.dg:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit251
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  call void @__clang_call_terminate(ptr %i.ug) #17
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit248, %._crit_edge
  %.7 = phi i32 [ -2147467259, %._crit_edge ], [ %.6, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit248 ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, i64 16), ptr %10, align 8, !tbaa !10
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit unwind label %bb.dh, !inline_history !159

bb.dh:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #17, !inline_history !159
  unreachable

_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit: ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16, !inline_history !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIP27CSequentialOutTempBufferImpE, i64 16), ptr %9, align 8, !tbaa !10
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit unwind label %bb.di, !inline_history !160

bb.di:                                            ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  %i.uj = landingpad { ptr, i32 }
          catch ptr null
  %i.uk = extractvalue { ptr, i32 } %i.uj, 0
  call void @__clang_call_terminate(ptr %i.uk) #17, !inline_history !160
  unreachable

_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit: ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16, !inline_history !160
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI16CInOutTempBufferE, i64 16), ptr %8, align 8, !tbaa !10
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit unwind label %bb.dj, !inline_history !161

bb.dj:                                            ; preds = %_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit
  %i.ul = landingpad { ptr, i32 }
          catch ptr null
  %i.um = extractvalue { ptr, i32 } %i.ul, 0
  call void @__clang_call_terminate(ptr %i.um) #17, !inline_history !161
  unreachable

_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit:  ; preds = %_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev.exit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16, !inline_history !161
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.dk

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit183: ; preds = %.loopexit297, %.loopexit.split-lp298, %bb.ac, %bb.ah, %bb.av, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit251, %bb.aw, %bb.u, %.body178, %bb.v, %bb.m
  %.pn170 = phi { ptr, i32 } [ %i.hl, %bb.aw ], [ %.pn168, %bb.m ], [ %eh.lpad-body179, %.body178 ], [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %.pn162, %bb.ah ], [ %i.dr, %bb.ac ], [ %i.hk, %bb.av ], [ %.pn155.pn.pn.pn, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit251 ], [ %lpad.loopexit299, %.loopexit297 ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp298 ]
  call void @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @_ZN13CObjectVectorIP27CSequentialOutTempBufferImpED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZN13CObjectVectorI16CInOutTempBufferED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  resume { ptr, i32 } %.pn170

bb.dk:                                            ; preds = %bb.b, %_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit
  %.8 = phi i32 [ %.7, %_ZN13CObjectVectorI16CInOutTempBufferED2Ev.exit ], [ %i.d, %bb.b ]
  ret i32 %.8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z8CEncoder13EncoderConstrEv(ptr noundef nonnull align 8 dereferenceable(433) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.NArchive::N7z::CMethodFull", align 8 ; 10 uses
  %2 = alloca %"struct.NArchive::N7z::CMethodFull", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !162, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.preheader146

.preheader146:                                    ; preds = %bb.b
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph169, label %._crit_edge

.lr.ph169:                                        ; preds = %.preheader146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
end_hunk_0
