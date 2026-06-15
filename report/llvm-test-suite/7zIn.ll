inline.NumInlined: 462
inline.NumDeleted: 124
begin_hunk_0_@_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !8  ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.hn to i64
  br i1 %i.ho, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i ] ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.at ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i.us.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !27
  %i.hu = icmp eq i32 %i.ht, %.0615.us.i
  br i1 %i.hu, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.as, !llvm.loop !124

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.as
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %i.hv = icmp sgt i32 %.0615.us.i, 0
  br i1 %i.hv, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !125

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.at, %.lr.ph.i
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i ], [ %.0615.us.i, %bb.at ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !15
  %i.hy = sext i32 %.0613.i to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !60
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.ib = tail call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.ib, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.ib, ptr nonnull @_ZTIi, ptr null) #21
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %._crit_edge, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
  %.1.i = phi i64 [ %i.ia, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %._crit_edge ]
  %i.ic = sub i64 %.1.i, %.0100.lcssa
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.id = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.ie = load i32, ptr %i.dt, align 4, !tbaa !8  ; 2 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.if
  store i64 %i.ic, ptr %i.ig, align 8, !tbaa !60
  %i.ih = add nsw i32 %i.ie, 1
  store i32 %i.ih, ptr %i.dt, align 4, !tbaa !8
  %.pre = load i32, ptr %i.e, align 4, !tbaa !8
  br label %bb.au

.split.us:                                        ; preds = %.lr.ph155.split.us
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

.split157.us:                                     ; preds = %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.au:                                            ; preds = %bb.aa, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %i.ii = phi i32 [ %i.dv, %bb.aa ], [ %.pre, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next, %i.ij
  br i1 %i.ik, label %bb.aa, label %._crit_edge161, !llvm.loop !126

._crit_edge161:                                   ; preds = %bb.au, %.loopexit131
  br i1 %i.dc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge161
  %i.il = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.im = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.il)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge161
  %.084 = phi i64 [ %i.im, %bb.av ], [ %i.g, %._crit_edge161 ]
  %i.in = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph166, label %.preheader127

.lr.ph166:                                        ; preds = %bb.aw
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !15  ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.in to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.is = icmp eq i32 %i.in, 1
  br i1 %i.is, label %.epil.preheader, label %.lr.ph166.new

.lr.ph166.new:                                    ; preds = %.lr.ph166
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.az

.preheader127.loopexit.unr-lcssa:                 ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader127, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader127.loopexit.unr-lcssa, %.lr.ph166
  %indvars.iv193.epil.init = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next194.1, %.preheader127.loopexit.unr-lcssa ] ; 2 uses
  %.093164.epil.init = phi i32 [ 0, %.lr.ph166 ], [ %i.ke, %.preheader127.loopexit.unr-lcssa ]
  %.094163.epil.init = phi i32 [ 0, %.lr.ph166 ], [ %.195.1, %.preheader127.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod251 = trunc i32 %i.in to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv193.epil.init
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4  ; 3 uses
  %.not.epil = icmp eq i32 %i.iu, 1
  br i1 %.not.epil, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.epil.preheader
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv193.epil.init
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !28
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 132
  %i.iy = load i8, ptr %i.ix, align 4, !tbaa !106, !range !23, !noundef !24
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %.preheader127.loopexit.epilog-lcssa, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.epil.preheader
  %i.ja = add i32 %i.iu, %.094163.epil.init
  br label %.preheader127.loopexit.epilog-lcssa

.preheader127.loopexit.epilog-lcssa:              ; preds = %bb.ay, %bb.ax
  %.195.epil = phi i32 [ %i.ja, %bb.ay ], [ %.094163.epil.init, %bb.ax ]
  %i.jb = add i32 %i.iu, %.093164.epil.init
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.loopexit.epilog-lcssa, %.preheader127.loopexit.unr-lcssa, %bb.aw
  %.094.lcssa = phi i32 [ 0, %bb.aw ], [ %.195.1, %.preheader127.loopexit.unr-lcssa ], [ %.195.epil, %.preheader127.loopexit.epilog-lcssa ]
  %.093.lcssa = phi i32 [ 0, %bb.aw ], [ %i.ke, %.preheader127.loopexit.unr-lcssa ], [ %i.jb, %.preheader127.loopexit.epilog-lcssa ] ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 9 uses
  br label %bb.bg

bb.az:                                            ; preds = %bb.bf, %.lr.ph166.new
  %indvars.iv193 = phi i64 [ 0, %.lr.ph166.new ], [ %indvars.iv.next194.1, %bb.bf ] ; 4 uses
  %.093164 = phi i32 [ 0, %.lr.ph166.new ], [ %i.ke, %bb.bf ]
  %.094163 = phi i32 [ 0, %.lr.ph166.new ], [ %.195.1, %bb.bf ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph166.new ], [ %niter.next.1, %bb.bf ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv193
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !4  ; 3 uses
  %.not = icmp eq i32 %i.jo, 1
  br i1 %.not, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv193
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !28
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 132
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !106, !range !23, !noundef !24
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = add i32 %i.jo, %.094163
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.195 = phi i32 [ %i.ju, %bb.bb ], [ %.094163, %bb.ba ] ; 2 uses
  %i.jv = add i32 %i.jo, %.093164
  %indvars.iv.next194 = or disjoint i64 %indvars.iv193, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.next194
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4  ; 3 uses
  %.not.1 = icmp eq i32 %i.jx, 1
  br i1 %.not.1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next194
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 132
  %i.kb = load i8, ptr %i.ka, align 4, !tbaa !106, !range !23, !noundef !24
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kd = add i32 %i.jx, %.195
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.195.1 = phi i32 [ %i.kd, %bb.be ], [ %.195, %bb.bd ] ; 3 uses
  %i.ke = add i32 %i.jx, %i.jv                    ; 3 uses
  %indvars.iv.next194.1 = add nuw nsw i64 %indvars.iv193, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader127.loopexit.unr-lcssa, label %bb.az, !llvm.loop !127

bb.bg:                                            ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge, %.preheader127
  %.1 = phi i64 [ %.084, %.preheader127 ], [ %.1.be, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge ]
  switch i64 %.1, label %bb.bu [
    i64 10, label %bb.bh
    i64 0, label %bb.br
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.jd, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.jf, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %7, align 8, !tbaa !13
  invoke void @_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.094.lcssa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.preheader.a unwind label %bb.bl

.preheader.a:                                     ; preds = %bb.bh
  %i.kf = load i32, ptr %i.a, align 4, !tbaa !8
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.preheader.a, %.loopexit126
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %.loopexit126 ], [ 0, %.preheader.a ] ; 3 uses
  %.086174 = phi i32 [ %.2, %.loopexit126 ], [ 0, %.preheader.a ] ; 3 uses
  %i.kh = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv201
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4  ; 3 uses
  %i.kk = load ptr, ptr %i.jg, align 8, !tbaa !15
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv201
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !28 ; 2 uses
  %8 = icmp eq i32 %i.kj, 1
  %9 = getelementptr inbounds nuw i8, ptr %i.km, i64 132
  %10 = load i8, ptr %9, align 4, !range !23
  %11 = trunc nuw i8 %10 to i1
  %or.cond = select i1 %8, i1 %11, i1 false
  br i1 %or.cond, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph175
  %.not199 = icmp eq i32 %i.kj, 0
  br i1 %.not199, label %.loopexit126, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %bb.bi
  %12 = sext i32 %.086174 to i64
  br label %.lr.ph171

bb.bj:                                            ; preds = %.lr.ph175
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.kn = load ptr, ptr %i.ji, align 8, !tbaa !15
  %i.ko = load i32, ptr %i.jj, align 4, !tbaa !8  ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds i8, ptr %i.kn, i64 %i.kp
  store i8 1, ptr %i.kq, align 1, !tbaa !16
  %i.kr = add nsw i32 %i.ko, 1
  store i32 %i.kr, ptr %i.jj, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 128
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !118
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN13CRecordVectorIjE3AddEj.exit unwind label %bb.bm

_ZN13CRecordVectorIjE3AddEj.exit:                 ; preds = %bb.bk
  %i.ku = load ptr, ptr %i.jl, align 8, !tbaa !15
  %i.kv = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kw
  store i32 %i.kt, ptr %i.kx, align 4, !tbaa !4
  %i.ky = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.jm, align 4, !tbaa !8
  br label %.loopexit126

bb.bl:                                            ; preds = %bb.bh
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.lr.ph171:                                        ; preds = %.lr.ph188.preheader, %bb.bo
  %indvars.iv197 = phi i64 [ %12, %.lr.ph188.preheader ], [ %indvars.iv.next198, %bb.bo ] ; 3 uses
  %.083169 = phi i32 [ 0, %.lr.ph188.preheader ], [ %i.lt, %bb.bo ]
  %i.lc = load ptr, ptr %i.jh, align 8, !tbaa !15
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %indvars.iv197
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !16, !range !23, !noundef !24
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %.lr.ph171
  %i.lf = load ptr, ptr %i.ji, align 8, !tbaa !15
  %i.lg = load i32, ptr %i.jj, align 4, !tbaa !8  ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  store i8 %i.le, ptr %i.li, align 1, !tbaa !16
  %i.lj = add nsw i32 %i.lg, 1
  store i32 %i.lj, ptr %i.jj, align 4, !tbaa !8
  %i.lk = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %indvars.iv197
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ln = load ptr, ptr %i.jl, align 8, !tbaa !15
  %i.lo = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lp
  store i32 %i.lm, ptr %i.lq, align 4, !tbaa !4
  %i.lr = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.jm, align 4, !tbaa !8
  %i.lt = add nuw i32 %.083169, 1                 ; 2 uses
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond200.not = icmp eq i32 %i.lt, %i.kj
  br i1 %exitcond200.not, label %.loopexit126.loopexit, label %.lr.ph171, !llvm.loop !128

bb.bp:                                            ; preds = %bb.bn, %.lr.ph171
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit126.loopexit:                            ; preds = %bb.bo
  %i.lv = trunc nsw i64 %indvars.iv.next198 to i32
  br label %.loopexit126

.loopexit126:                                     ; preds = %.loopexit126.loopexit, %bb.bi, %_ZN13CRecordVectorIjE3AddEj.exit
  %.2 = phi i32 [ %.086174, %_ZN13CRecordVectorIjE3AddEj.exit ], [ %.086174, %bb.bi ], [ %i.lv, %.loopexit126.loopexit ]
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.lw = load i32, ptr %i.a, align 4, !tbaa !8
  %i.lx = sext i32 %i.lw to i64
  %i.ly = icmp slt i64 %indvars.iv.next202, %i.lx
  br i1 %i.ly, label %.lr.ph175, label %._crit_edge176, !llvm.loop !129

._crit_edge176:                                   ; preds = %.loopexit126, %.preheader.a
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %13

bb.bq:                                            ; preds = %bb.bm, %bb.bp, %bb.bl
  %.pn.pn = phi { ptr, i32 } [ %i.la, %bb.bl ], [ %i.lb, %bb.bm ], [ %i.lu, %bb.bp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn.pn

bb.br:                                            ; preds = %bb.bg
  %i.lz = load i32, ptr %i.jj, align 4, !tbaa !8
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %bb.br
  call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.093.lcssa)
  %i.mb = icmp sgt i32 %.093.lcssa, 0
  br i1 %i.mb, label %.lr.ph.i108, label %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit

.lr.ph.i108:                                      ; preds = %bb.bs, %.lr.ph.i108
  %.06.i = phi i32 [ %i.mh, %.lr.ph.i108 ], [ 0, %bb.bs ]
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.mc = load ptr, ptr %i.ji, align 8, !tbaa !15
  %i.md = load i32, ptr %i.jj, align 4, !tbaa !8  ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds i8, ptr %i.mc, i64 %i.me
  store i8 0, ptr %i.mf, align 1, !tbaa !16
  %i.mg = add nsw i32 %i.md, 1
  store i32 %i.mg, ptr %i.jj, align 4, !tbaa !8
  %i.mh = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.mh, %.093.lcssa
  br i1 %exitcond.not.i, label %.lr.ph178, label %.lr.ph.i108, !llvm.loop !18

_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit: ; preds = %bb.bs
  call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %.loopexit

.lr.ph178:                                        ; preds = %.lr.ph.i108
  call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph178, %bb.bt
  %.0177 = phi i32 [ 0, %.lr.ph178 ], [ %i.mo, %bb.bt ]
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.mi = load ptr, ptr %i.jl, align 8, !tbaa !15
  %i.mj = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mk
  store i32 0, ptr %i.ml, align 4, !tbaa !4
  %i.mm = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.jm, align 4, !tbaa !8
  %i.mo = add nuw nsw i32 %.0177, 1               ; 2 uses
  %exitcond204.not = icmp eq i32 %i.mo, %.093.lcssa
  br i1 %exitcond204.not, label %.loopexit, label %bb.bt, !llvm.loop !130

.loopexit:                                        ; preds = %bb.bt, %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit, %bb.br
  ret void

bb.bu:                                            ; preds = %bb.bg
  %i.mp = load ptr, ptr %i.c, align 8, !tbaa !45  ; 3 uses
  %i.mq = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mp) ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !54
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !55 ; 2 uses
  %i.mv = sub i64 %i.ms, %i.mu
  %i.mw = icmp ugt i64 %i.mq, %i.mv
  br i1 %i.mw, label %bb.bv, label %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit109

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit109:  ; preds = %bb.bu
  %i.mx = add i64 %i.mu, %i.mq
  store i64 %i.mx, ptr %i.mt, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit109, %._crit_edge176
  %14 = load ptr, ptr %i.c, align 8, !tbaa !45    ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %16 = load i64, ptr %15, align 8, !tbaa !55     ; 12 uses
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !54     ; 2 uses
  %.not.i128 = icmp ult i64 %16, %18
  br i1 %.not.i128, label %20, label %19

19:                                               ; preds = %13
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !52     ; 9 uses
  %22 = add nuw i64 %16, 1                        ; 2 uses
  store i64 %22, ptr %15, align 8, !tbaa !55
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 %16
  %24 = load i8, ptr %23, align 1, !tbaa !58      ; 2 uses
  %25 = zext i8 %24 to i32                        ; 8 uses
  %26 = xor i64 %16, -1
  %27 = add i64 %18, %26                          ; 8 uses
  %28 = icmp sgt i8 %24, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %94, %84, %74, %64, %54, %44, %36, %20
  %.01732.lcssa.wide.i139 = phi i64 [ 0, %20 ], [ 8, %36 ], [ 16, %44 ], [ 24, %54 ], [ 32, %64 ], [ 40, %74 ], [ 48, %84 ], [ 56, %94 ]
  %.01831.lcssa.i140 = phi i64 [ 0, %20 ], [ %40, %36 ], [ %50, %44 ], [ %60, %54 ], [ %70, %64 ], [ %80, %74 ], [ %90, %84 ], [ %100, %94 ]
  %.02030.lcssa.i141 = phi i32 [ 383, %20 ], [ 319, %36 ], [ 287, %44 ], [ 271, %54 ], [ 263, %64 ], [ 259, %74 ], [ 257, %84 ], [ 256, %94 ]
  %30 = and i32 %.02030.lcssa.i141, %25
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw nsw i64 %31, %.01732.lcssa.wide.i139
  %33 = add nuw nsw i64 %32, %.01831.lcssa.i140
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge

_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge: ; preds = %29, %bb.bw
  %.1.be = phi i64 [ %33, %29 ], [ %109, %bb.bw ]
  br label %bb.bg, !llvm.loop !131

34:                                               ; preds = %20
  %exitcond.not.i129 = icmp eq i64 %27, 0
  br i1 %exitcond.not.i129, label %35, label %36

35:                                               ; preds = %103, %93, %83, %73, %63, %53, %43, %34
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

36:                                               ; preds = %34
  %37 = add nuw i64 %16, 2                        ; 2 uses
  store i64 %37, ptr %15, align 8, !tbaa !55
  %38 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  %39 = load i8, ptr %38, align 1, !tbaa !58
  %40 = zext i8 %39 to i64                        ; 2 uses
  %41 = and i32 %25, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %29, label %43

43:                                               ; preds = %36
  %exitcond.1.not.i130 = icmp eq i64 %27, 1
  br i1 %exitcond.1.not.i130, label %35, label %44

44:                                               ; preds = %43
  %45 = add nuw i64 %16, 3                        ; 2 uses
  store i64 %45, ptr %15, align 8, !tbaa !55
  %46 = getelementptr inbounds nuw i8, ptr %21, i64 %37
  %47 = load i8, ptr %46, align 1, !tbaa !58
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 8
  %50 = or disjoint i64 %49, %40                  ; 2 uses
  %51 = and i32 %25, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %29, label %53

53:                                               ; preds = %44
  %exitcond.2.not.i131 = icmp eq i64 %27, 2
  br i1 %exitcond.2.not.i131, label %35, label %54

54:                                               ; preds = %53
  %55 = add nuw i64 %16, 4                        ; 2 uses
  store i64 %55, ptr %15, align 8, !tbaa !55
  %56 = getelementptr inbounds nuw i8, ptr %21, i64 %45
  %57 = load i8, ptr %56, align 1, !tbaa !58
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or disjoint i64 %59, %50                  ; 2 uses
  %61 = and i32 %25, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %29, label %63

63:                                               ; preds = %54
  %exitcond.3.not.i132 = icmp eq i64 %27, 3
  br i1 %exitcond.3.not.i132, label %35, label %64

64:                                               ; preds = %63
  %65 = add nuw i64 %16, 5                        ; 2 uses
  store i64 %65, ptr %15, align 8, !tbaa !55
  %66 = getelementptr inbounds nuw i8, ptr %21, i64 %55
  %67 = load i8, ptr %66, align 1, !tbaa !58
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = or disjoint i64 %69, %60                  ; 2 uses
  %71 = and i32 %25, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %29, label %73

73:                                               ; preds = %64
  %exitcond.4.not.i133 = icmp eq i64 %27, 4
  br i1 %exitcond.4.not.i133, label %35, label %74

74:                                               ; preds = %73
  %75 = add nuw i64 %16, 6                        ; 2 uses
  store i64 %75, ptr %15, align 8, !tbaa !55
  %76 = getelementptr inbounds nuw i8, ptr %21, i64 %65
  %77 = load i8, ptr %76, align 1, !tbaa !58
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 32
  %80 = or disjoint i64 %79, %70                  ; 2 uses
  %81 = and i32 %25, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %29, label %83

83:                                               ; preds = %74
  %exitcond.5.not.i134 = icmp eq i64 %27, 5
  br i1 %exitcond.5.not.i134, label %35, label %84

84:                                               ; preds = %83
  %85 = add nuw i64 %16, 7                        ; 2 uses
  store i64 %85, ptr %15, align 8, !tbaa !55
  %86 = getelementptr inbounds nuw i8, ptr %21, i64 %75
  %87 = load i8, ptr %86, align 1, !tbaa !58
  %88 = zext i8 %87 to i64
  %89 = shl nuw nsw i64 %88, 40
  %90 = or i64 %89, %80                           ; 2 uses
  %91 = and i32 %25, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %29, label %93

93:                                               ; preds = %84
  %exitcond.6.not.i135 = icmp eq i64 %27, 6
  br i1 %exitcond.6.not.i135, label %35, label %94

94:                                               ; preds = %93
  %95 = add nuw i64 %16, 8                        ; 2 uses
  store i64 %95, ptr %15, align 8, !tbaa !55
  %96 = getelementptr inbounds nuw i8, ptr %21, i64 %85
  %97 = load i8, ptr %96, align 1, !tbaa !58
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 48
  %100 = or i64 %99, %90                          ; 2 uses
  %101 = and i32 %25, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %29, label %103

103:                                              ; preds = %94
  %exitcond.7.not.i136 = icmp eq i64 %27, 7
  br i1 %exitcond.7.not.i136, label %35, label %bb.bw

bb.bw:                                            ; preds = %103
  %104 = add nuw i64 %16, 9
  store i64 %104, ptr %15, align 8, !tbaa !55
  %105 = getelementptr inbounds nuw i8, ptr %21, i64 %95
  %106 = load i8, ptr %105, align 1, !tbaa !58
  %107 = zext i8 %106 to i64
  %108 = shl nuw i64 %107, 56
  %109 = or i64 %108, %100
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit142.backedge
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1073741824
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.e = phi i64 [ %i.h, %bb.f ], [ %i.c, %bb.a ]
  %i.f = trunc nuw nsw i64 %i.e to i32
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.g
    i32 6, label %bb.b
    i32 7, label %bb.c
    i32 8, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.h = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1073741824
  br i1 %i.i, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %1)
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.016 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.e ]
  %.01115 = phi i8 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.01214 = phi i8 [ 0, %.lr.ph ], [ %.113, %bb.e ]
  %i.e = icmp eq i8 %.01115, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !55   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54
  %.not.i.i = icmp ult i64 %i.h, %i.j
  br i1 %.not.i.i, label %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit:     ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.l = add nuw i64 %i.h, 1
  store i64 %i.l, ptr %i.g, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit, %bb.b
  %.113 = phi i8 [ %i.n, %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit ], [ %.01214, %bb.b ] ; 2 uses
  %.1 = phi i8 [ -128, %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit ], [ %.01115, %bb.b ] ; 2 uses
  %i.o = and i8 %.1, %.113
  %i.p = icmp ne i8 %i.o, 0
  %i.q = zext i1 %i.p to i8
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.s = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i8 %i.q, ptr %i.u, align 1, !tbaa !16
  %i.v = add nsw i32 %i.s, 1
  store i32 %i.v, ptr %i.d, align 4, !tbaa !8
  %i.w = lshr i8 %.1, 1
  %i.x = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !101
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !41
  invoke void @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
          to label %.preheader unwind label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.h = load i8, ptr %i.b, align 8, !tbaa !41, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %4, align 8, !tbaa !44     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit:         ; preds = %._crit_edge, %.noexc.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !45  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
end_hunk_0
