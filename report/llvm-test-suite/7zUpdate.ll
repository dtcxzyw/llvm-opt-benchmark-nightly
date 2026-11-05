Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zUpdate?download=true
inline.NumInlined: 583
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !189 ; 4 uses
  %i.tp = add i64 %i.to, %.44461653.epil.init     ; 2 uses
  br i1 %.not668, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tq = add i64 %.epil.init, %i.to
  br label %.sink.split.epil

bb.bv:                                            ; preds = %bb.bt
  %i.tr = icmp ugt i64 %i.to, %.epil.init
  br i1 %i.tr, label %.sink.split.epil, label %._crit_edge1656

.sink.split.epil:                                 ; preds = %bb.bv, %bb.bu
  %.sink.epil = phi i64 [ %i.tq, %bb.bu ], [ %i.to, %bb.bv ] ; 2 uses
  store i64 %.sink.epil, ptr %i.c, align 8, !tbaa !184
  br label %._crit_edge1656

._crit_edge1656:                                  ; preds = %._crit_edge1656.loopexit.unr-lcssa, %.sink.split.epil, %bb.bv, %.epil.preheader, %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE4SortEPFiPKS2_S5_PvES6_.exit
  %i.ts = phi i64 [ 0, %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE4SortEPFiPKS2_S5_PvES6_.exit ], [ %i.th, %._crit_edge1656.loopexit.unr-lcssa ], [ %.epil.init, %bb.bv ], [ %.epil.init, %.epil.preheader ], [ %.sink.epil, %.sink.split.epil ] ; 2 uses
  %.4446.lcssa = phi i64 [ %.3445, %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE4SortEPFiPKS2_S5_PvES6_.exit ], [ %.5447.1, %._crit_edge1656.loopexit.unr-lcssa ], [ %i.tp, %bb.bv ], [ %.44461653.epil.init, %.epil.preheader ], [ %i.tp, %.sink.split.epil ]
  %i.tt = icmp ugt i64 %.4441, %i.ts
  %i.tu = call i64 @llvm.umax.i64(i64 %.4441, i64 %i.ts) ; 2 uses
  %i.tv = icmp ult i64 %i.tu, 65536
  %i.tw = or i1 %i.tt, %i.tv
  br i1 %i.tw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %._crit_edge1656
  %simplifycfg.merge = call i64 @llvm.umax.i64(i64 %i.tu, i64 65536)
  store i64 %simplifycfg.merge, ptr %i.c, align 8, !tbaa !184
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge1656, %bb.bw
  %i.tx = load ptr, ptr %6, align 8, !tbaa !117
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = invoke noundef i32 %i.tz(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %.4446.lcssa)
          to label %bb.by unwind label %bb.ch     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %.not590 = icmp eq i32 %i.ua, 0
  br i1 %.not590, label %bb.bz, label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.ub = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18
          to label %bb.ca unwind label %bb.ch     ; 16 uses

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN14CLocalProgressC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.ub)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !117
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = invoke noundef i32 %i.ue(ptr noundef nonnull align 8 dereferenceable(8) %i.ub)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit unwind label %bb.ch, !inline_history !271 ; 0 uses

_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit: ; preds = %bb.cb
  invoke void @_ZN14CLocalProgress4InitEP9IProgressb(ptr noundef nonnull align 8 dereferenceable(66) %i.ub, ptr noundef nonnull %6, i1 noundef zeroext true)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  invoke void @_ZN8NArchive3N7z14CThreadDecoderC2Ev(ptr noundef nonnull align 8 dereferenceable(536) %22)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ug = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 4 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !123
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.uj = invoke noundef i32 @_ZN11CVirtThread6CreateEv(ptr noundef nonnull align 8 dereferenceable(233) %22)
          to label %bb.cf unwind label %bb.ck     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %.not591 = icmp eq i32 %i.uj, 0
  br i1 %.not591, label %bb.cl, label %bb.ne

bb.cg:                                            ; preds = %bb.ca
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef 72) #19
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit952

bb.ch:                                            ; preds = %bb.bz, %bb.bx, %bb.cb
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit952

bb.ci:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.cj:                                            ; preds = %bb.cc
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.ck:                                            ; preds = %bb.ce
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

bb.cl:                                            ; preds = %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.up = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %23, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.uq, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE, i64 16), ptr %23, align 8, !tbaa !117
  %i.ur = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.us = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.us, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ur, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %24, align 8, !tbaa !117
  %i.ut = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cm unwind label %bb.cq     ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.uu = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ur, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %24, align 8, !tbaa !117
  %i.uv = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cn unwind label %bb.cq     ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.uw = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ur, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %24, align 8, !tbaa !117
  %i.ux = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.co unwind label %bb.cq     ; 0 uses

bb.co:                                            ; preds = %bb.cn
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.uy = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ur, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %24, align 8, !tbaa !117
  %i.uz = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cp unwind label %bb.cq     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.va = load ptr, ptr %7, align 8, !tbaa !357   ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !123
  %.not592 = icmp eq i32 %i.vc, 1
  br i1 %.not592, label %bb.cr, label %bb.cs

bb.cq:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %.body

bb.cr:                                            ; preds = %bb.cp
  %i.ve = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.vf = load i8, ptr %i.ve, align 8, !tbaa !358, !range !130, !noundef !131
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 44
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !123
  %.not593 = icmp eq i32 %i.vh, 0
  br i1 %.not593, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0406 = phi i8 [ 0, %bb.cs ], [ %i.vf, %bb.cr ]
  %i.vi = load i32, ptr %i.se, align 4, !tbaa !123 ; 2 uses
  %i.vj = icmp sgt i32 %i.vi, 0
  br i1 %i.vj, label %.lr.ph1661, label %._crit_edge1662

.lr.ph1661:                                       ; preds = %bb.ct
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vl = trunc nuw i8 %.0406 to i1
  %i.vm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.vn = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.vo = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.vp = getelementptr inbounds nuw i8, ptr %19, i64 28
  %i.vq = getelementptr inbounds nuw i8, ptr %i.va, i64 68
  %i.vr = getelementptr inbounds nuw i8, ptr %23, i64 16
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph1661, %bb.dg
  %i.vs = phi i32 [ %i.vi, %.lr.ph1661 ], [ %48, %bb.dg ] ; 3 uses
  %indvars.iv1979 = phi i64 [ 0, %.lr.ph1661 ], [ %indvars.iv.next1980, %bb.dg ] ; 3 uses
  %i.vt = load ptr, ptr %i.vk, align 8, !tbaa !124
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv1979
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !125 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 60
  %i.vx = load i8, ptr %i.vw, align 4, !tbaa !348, !range !130, !noundef !131
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %bb.cv, label %bb.dg

bb.cv:                                            ; preds = %bb.cu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 63
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !190, !range !130, !noundef !131
  %i.wb = trunc nuw i8 %i.wa to i1
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 62
  %i.wd = load i8, ptr %i.wc, align 2, !range !130
  %i.we = trunc nuw i8 %i.wd to i1
  %.not1185 = select i1 %i.wb, i1 true, i1 %i.we
  br i1 %.not1185, label %bb.dg, label %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit

_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit:  ; preds = %bb.cv
  %46 = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %47 = load i64, ptr %46, align 8, !tbaa !189    ; 2 uses
  %.not1183 = icmp eq i64 %47, 0
  br i1 %.not1183, label %bb.dg, label %bb.cw

bb.cw:                                            ; preds = %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit
  br i1 %i.vl, label %bb.cx, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

bb.cx:                                            ; preds = %bb.cw
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vv, i64 56
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !191 ; 2 uses
  %i.wh = and i32 %i.wg, 32768
  %.not.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.wi = and i32 %i.wg, 4784128
  %.not23.i = icmp ne i32 %i.wi, 0
  %i.wj = icmp ugt i64 %47, 2047
  %or.cond.i690 = and i1 %.not23.i, %i.wj
  br i1 %or.cond.i690, label %_ZN8NWindows5NFile3NIO7CInFileC2Ev.exit.i, label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

_ZN8NWindows5NFile3NIO7CInFileC2Ev.exit.i:        ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store i32 -1, ptr %i.vm, align 8, !tbaa !361
  store i64 0, ptr %i.vn, align 8
  %i.wk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_ZN8NWindows5NFile3NIO7CInFileC2Ev.exit.i
  store ptr %i.wk, ptr %i.vo, align 8, !tbaa !362
  store i8 0, ptr %i.wk, align 1, !tbaa !101
  store i32 4, ptr %i.vp, align 4, !tbaa !363
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO7CInFileE, i64 16), ptr %19, align 8, !tbaa !117
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vv, i64 40
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !176
  %i.wn = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb(ptr noundef nonnull align 8 dereferenceable(1084) %19, ptr noundef %i.wm, i1 noundef zeroext false)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %.noexc
  br i1 %i.wn, label %bb.da, label %.thread.sink.split.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.wo = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj(ptr noundef nonnull align 8 dereferenceable(1084) %19, ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  br i1 %i.wo, label %.preheader.i691, label %.thread.sink.split.sink.split.i

.preheader.i691:                                  ; preds = %bb.db
  %i.wp = load i32, ptr %i.b, align 4, !tbaa !17  ; 2 uses
  %.not2533.not.i = icmp eq i32 %i.wp, 0
  br i1 %.not2533.not.i, label %.thread.sink.split.sink.split.i, label %.lr.ph.preheader.i692

.lr.ph.preheader.i692:                            ; preds = %.preheader.i691
  %wide.trip.count.i693 = zext i32 %i.wp to i64
  br label %.lr.ph.i694

bb.dc:                                            ; preds = %.lr.ph.i694
  %indvars.iv.next.i696 = add nuw nsw i64 %indvars.iv.i695, 1 ; 2 uses
  %exitcond.not.i697 = icmp eq i64 %indvars.iv.next.i696, %wide.trip.count.i693
  br i1 %exitcond.not.i697, label %.thread.sink.split.sink.split.i, label %.lr.ph.i694, !llvm.loop !272

bb.dd:                                            ; preds = %.noexc
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.da
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.df

.lr.ph.i694:                                      ; preds = %bb.dc, %.lr.ph.preheader.i692
  %indvars.iv.i695 = phi i64 [ 0, %.lr.ph.preheader.i692 ], [ %indvars.iv.next.i696, %bb.dc ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i695
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !101
  %i.wu = icmp eq i8 %i.wt, 0
  br i1 %i.wu, label %.thread.sink.split.sink.split.i, label %bb.dc

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn.i = phi { ptr, i32 } [ %i.wr, %bb.de ], [ %i.wq, %bb.dd ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %.body

.thread.sink.split.sink.split.i:                  ; preds = %.lr.ph.i694, %bb.dc, %.preheader.i691, %bb.db
  %.7.ph.ph.i = phi i64 [ 0, %bb.db ], [ 0, %.preheader.i691 ], [ 1, %.lr.ph.i694 ], [ 0, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %.thread.sink.split.sink.split.i, %bb.cz
  %.7.ph.i = phi i64 [ 0, %bb.cz ], [ %.7.ph.ph.i, %.thread.sink.split.sink.split.i ]
  call void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(1084) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit

_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit: ; preds = %bb.cx, %bb.cy, %.thread.sink.split.i, %bb.cw
  %.0405 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cy ], [ 0, %bb.cx ], [ %.7.ph.i, %.thread.sink.split.i ]
  %i.wv = load i8, ptr %i.vq, align 4, !tbaa !195, !range !130, !noundef !131
  %i.ww = shl nuw nsw i8 %i.wv, 1
  %i.wx = zext nneg i8 %i.ww to i64
  %i.wy = or i64 %.0405, %i.wx
  %i.wz = load ptr, ptr %i.vr, align 8, !tbaa !124
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.wy
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !125 ; 3 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.xb)
          to label %_ZN13CRecordVectorIjE3AddEj.exit unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13CRecordVectorIjE3AddEj.exit:                 ; preds = %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !124
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 12 ; 3 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !123
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xg
  %i.xi = trunc nuw nsw i64 %indvars.iv1979 to i32
  store i32 %i.xi, ptr %i.xh, align 4, !tbaa !17
  %i.xj = load i32, ptr %i.xe, align 4, !tbaa !123
  %i.xk = add nsw i32 %i.xj, 1
  store i32 %i.xk, ptr %i.xe, align 4, !tbaa !123
  %.pre2036.a = load i32, ptr %i.se, align 4, !tbaa !123
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cv, %_ZN13CRecordVectorIjE3AddEj.exit, %bb.cu, %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit
  %48 = phi i32 [ %i.vs, %bb.cv ], [ %.pre2036.a, %_ZN13CRecordVectorIjE3AddEj.exit ], [ %i.vs, %bb.cu ], [ %i.vs, %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit ] ; 2 uses
  %indvars.iv.next1980 = add nuw nsw i64 %indvars.iv1979, 1 ; 2 uses
  %i.xl = sext i32 %48 to i64
  %i.xm = icmp slt i64 %indvars.iv.next1980, %i.xl
  br i1 %i.xm, label %bb.cu, label %._crit_edge1662, !llvm.loop !273

._crit_edge1662:                                  ; preds = %bb.dg, %bb.ct
  br i1 %.3436, label %bb.dh, label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.dh:                                            ; preds = %._crit_edge1662
  %i.xn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.di unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

bb.di:                                            ; preds = %bb.dh
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store i32 0, ptr %i.xo, align 4, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE, i64 16), ptr %i.xn, align 8, !tbaa !117
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 16 ; 8 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 24 ; 6 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 28 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, i8 0, i64 16, i1 false)
  %i.xs = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc699 unwind label %bb.dr ; 9 uses

.noexc699:                                        ; preds = %bb.di
  %i.xt = ptrtoaddr ptr %i.xs to i64
  %i.xu = load i32, ptr %i.xr, align 4, !tbaa !197
  %i.xv = icmp sgt i32 %i.xu, 0
  %.pre1.i.i = load i32, ptr %i.xq, align 8, !tbaa !97 ; 5 uses
  br i1 %i.xv, label %.preheader.i.i.i, label %bb.dj

.preheader.i.i.i:                                 ; preds = %.noexc699
  %i.xw = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.xp, align 8, !tbaa !176 ; 9 uses
  br i1 %i.xw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre.i.i.i2626 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 5 uses
  %min.iters.check2628 = icmp ult i32 %.pre1.i.i, 8
  %i.xx = sub i64 %.pre.i.i.i2626, %i.xt
  %diff.check = icmp ugt i64 %i.xx, -32
  %or.cond2810.a = select i1 %min.iters.check2628, i1 true, i1 %diff.check
  br i1 %or.cond2810.a, label %scalar.ph2627.preheader, label %vector.ph2629

vector.ph2629:                                    ; preds = %.lr.ph.i.i.i
  %n.vec2630 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body2631

vector.body2631:                                  ; preds = %vector.body2631, %vector.ph2629
  %index2632 = phi i64 [ 0, %vector.ph2629 ], [ %index.next2635, %vector.body2631 ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index2632 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load2633 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !99
  %wide.load2634 = load <4 x i32>, ptr %i.xz, align 4, !tbaa !99
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %index2632 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store <4 x i32> %wide.load2633, ptr %i.ya, align 4, !tbaa !99
  store <4 x i32> %wide.load2634, ptr %i.yb, align 4, !tbaa !99
  %index.next2635 = add nuw i64 %index2632, 8     ; 2 uses
  %i.yc = icmp eq i64 %index.next2635, %n.vec2630
  br i1 %i.yc, label %middle.block2636, label %vector.body2631, !llvm.loop !274

middle.block2636:                                 ; preds = %vector.body2631
  %cmp.n2637 = icmp eq i64 %n.vec2630, %wide.trip.count.i.i.i
  br i1 %cmp.n2637, label %._crit_edge.thread.i.i.i, label %scalar.ph2627.preheader

scalar.ph2627.preheader:                          ; preds = %.lr.ph.i.i.i, %middle.block2636
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec2630, %middle.block2636 ] ; 3 uses
  %xtraiter3063 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod3064.not = icmp eq i64 %xtraiter3063, 0
  br i1 %lcmp.mod3064.not, label %scalar.ph2627.prol.loopexit, label %scalar.ph2627.prol

scalar.ph2627.prol:                               ; preds = %scalar.ph2627.preheader, %scalar.ph2627.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph2627.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph2627.preheader ] ; 3 uses
  %prol.iter3065 = phi i64 [ %prol.iter3065.next, %scalar.ph2627.prol ], [ 0, %scalar.ph2627.preheader ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !99
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.i.i.i.prol
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !99
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter3065.next = add i64 %prol.iter3065, 1 ; 2 uses
  %prol.iter3065.cmp.not = icmp eq i64 %prol.iter3065.next, %xtraiter3063
  br i1 %prol.iter3065.cmp.not, label %scalar.ph2627.prol.loopexit, label %scalar.ph2627.prol, !llvm.loop !275

scalar.ph2627.prol.loopexit:                      ; preds = %scalar.ph2627.prol, %scalar.ph2627.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph2627.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph2627.prol ]
  %i.yg = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.yh = icmp ugt i64 %i.yg, -4
  br i1 %i.yh, label %._crit_edge.thread.i.i.i, label %scalar.ph2627

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.yi = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.yi, label %bb.dj, label %._crit_edge.thread.i.i.i

scalar.ph2627:                                    ; preds = %scalar.ph2627.prol.loopexit, %scalar.ph2627
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph2627 ], [ %indvars.iv.i.i.i.unr, %scalar.ph2627.prol.loopexit ] ; 6 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !99
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.i.i.i
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !99
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !99
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.next.i.i.i
  store i32 %i.yn, ptr %i.yo, align 4, !tbaa !99
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !99
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.yq, ptr %i.yr, align 4, !tbaa !99
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !99
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !99
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph2627, !llvm.loop !276

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph2627.prol.loopexit, %scalar.ph2627, %middle.block2636, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #19
  %.pre.i.i = load i32, ptr %i.xq, align 8, !tbaa !97
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc699
  %i.yv = phi i32 [ %.pre1.i.i, %.noexc699 ], [ %.pre1.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i.i ]
  store ptr %i.xs, ptr %i.xp, align 8, !tbaa !176
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %i.yw
  store i32 0, ptr %i.yx, align 4, !tbaa !99
  store i32 4, ptr %i.xr, align 4, !tbaa !197
  %i.yy = getelementptr inbounds nuw i8, ptr %22, i64 288 ; 2 uses
  %i.yz = load ptr, ptr %i.xn, align 8, !tbaa !117
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = load ptr, ptr %i.za, align 8
  %i.zc = invoke noundef i32 %i.zb(ptr noundef nonnull align 8 dereferenceable(8) %i.xn)
          to label %.noexc701 unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !277 ; 0 uses

.noexc701:                                        ; preds = %bb.dj
  %i.zd = load ptr, ptr %i.yy, align 8, !tbaa !171 ; 3 uses
  %.not6.i = icmp eq ptr %i.zd, null
  br i1 %.not6.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc701
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !117
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  %i.zh = invoke noundef i32 %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %i.zd)
          to label %bb.dl unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !277 ; 0 uses

bb.dl:                                            ; preds = %.noexc701, %bb.dk
  store ptr %i.xn, ptr %i.yy, align 8, !tbaa !171
  %i.zi = load ptr, ptr %7, align 8, !tbaa !357   ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 68
  %i.zk = load i8, ptr %i.zj, align 4, !tbaa !195, !range !130, !noundef !131
  %i.zl = trunc nuw i8 %i.zk to i1
  br i1 %i.zl, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zi, i64 72 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.xp
  br i1 %i.zn, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.xq, align 8, !tbaa !97
  %i.zo = load ptr, ptr %i.xp, align 8, !tbaa !176 ; 2 uses
  store i32 0, ptr %i.zo, align 4, !tbaa !99
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zi, i64 80 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !97 ; 2 uses
  %i.zr = add nsw i32 %i.zq, 1                    ; 3 uses
  %i.zs = load i32, ptr %i.xr, align 4, !tbaa !197
  %i.zt = icmp eq i32 %i.zr, %i.zs
  br i1 %i.zt, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zu = zext nneg i32 %i.zr to i64
  %i.zv = icmp slt i32 %i.zq, -1
  %i.zw = shl nuw nsw i64 %i.zu, 2
  %i.zx = select i1 %i.zv, i64 -1, i64 %i.zw
  %i.zy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zx) #18
          to label %.noexc706 unwind label %.loopexit.split-lp1233.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc706:                                        ; preds = %bb.do
  %i.zz = ptrtoaddr ptr %i.zy to i64
  %i.aaa = load i32, ptr %i.xr, align 4, !tbaa !197
  %i.aab = icmp sgt i32 %i.aaa, 0
  %.pre7.i = load i32, ptr %i.xq, align 8, !tbaa !97 ; 5 uses
  br i1 %i.aab, label %.preheader.i.i, label %bb.dp

.preheader.i.i:                                   ; preds = %.noexc706
  %i.aac = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i703 = load ptr, ptr %i.xp, align 8, !tbaa !176 ; 9 uses
  br i1 %i.aac, label %.lr.ph.i.i705, label %._crit_edge.i.i

.lr.ph.i.i705:                                    ; preds = %.preheader.i.i
  %.pre.i.i7032642 = ptrtoaddr ptr %.pre.i.i703 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check2644 = icmp ult i32 %.pre7.i, 8
  %i.aad = sub i64 %.pre.i.i7032642, %i.zz
  %diff.check2646 = icmp ugt i64 %i.aad, -32
  %or.cond2811.a = select i1 %min.iters.check2644, i1 true, i1 %diff.check2646
  br i1 %or.cond2811.a, label %scalar.ph2643.preheader, label %vector.ph2647
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword:bb.a
  %cond6 = phi i1 [ false, %bb.la ], [ true, %bb.lx ], [ false, %_ZN8NArchive3N7z9CFileItemD2Ev.exit917.jt1 ]
  %.28 = phi i32 [ %i.bmo, %bb.la ], [ %.23., %bb.lx ], [ -2147467259, %_ZN8NArchive3N7z9CFileItemD2Ev.exit917.jt1 ] ; 2 uses
  %.7 = phi i32 [ %.5, %bb.la ], [ %i.bsc, %bb.lx ], [ %.5, %_ZN8NArchive3N7z9CFileItemD2Ev.exit917.jt1 ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ags) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.agp) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.agm) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %40, align 8, !tbaa !117
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %40)
          to label %bb.lz unwind label %bb.ly, !inline_history !218

bb.ly:                                            ; preds = %.loopexit1186
  %i.bsd = landingpad { ptr, i32 }
          catch ptr null
  %i.bse = extractvalue { ptr, i32 } %i.bsd, 0
  call void @__clang_call_terminate(ptr %i.bse) #20, !inline_history !218
  unreachable

bb.lz:                                            ; preds = %.loopexit1186
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %40) #17, !inline_history !218
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  %i.bsf = load ptr, ptr %i.bme, align 8, !tbaa !117
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 16
  %i.bsh = load ptr, ptr %i.bsg, align 8
  %i.bsi = invoke noundef i32 %i.bsh(ptr noundef nonnull align 8 dereferenceable(8) %i.bme)
          to label %_ZN11CStringBaseIwED2Ev.exit923 unwind label %bb.ma ; 0 uses

bb.ma:                                            ; preds = %bb.lz
  %i.bsj = landingpad { ptr, i32 }
          catch ptr null
  %i.bsk = extractvalue { ptr, i32 } %i.bsj, 0
  call void @__clang_call_terminate(ptr %i.bsk) #20
  unreachable

_ZN11CStringBaseIwED2Ev.exit923:                  ; preds = %bb.lz
  call void @_ZdaPv(ptr noundef nonnull %.sroa.01108.5.ph) #19
  br i1 %cond6, label %bb.kd, label %bb.md, !llvm.loop !325

.loopexit.split-lp1215.loopexit.split-lp:         ; preds = %bb.lw, %bb.lg, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit897, %bb.kz, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i882
  %lpad.loopexit.split-lp2834 = landingpad { ptr, i32 }
          cleanup
  br label %.body900

.body900:                                         ; preds = %.loopexit.split-lp1215.loopexit.split-lp, %bb.lh, %_ZN8NArchive3N7z9CFileItemD2Ev.exit916
  %.pn631.pn = phi { ptr, i32 } [ %.pn629, %_ZN8NArchive3N7z9CFileItemD2Ev.exit916 ], [ %i.boy, %bb.lh ], [ %lpad.loopexit.split-lp2834, %.loopexit.split-lp1215.loopexit.split-lp ]
  call void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %40) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ld, %.body900
  %.pn631.pn.pn.pn = phi { ptr, i32 } [ %.pn631.pn, %.body900 ], [ %i.bno, %bb.ld ]
  %i.bsl = load ptr, ptr %i.bme, align 8, !tbaa !117
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 16
  %i.bsn = load ptr, ptr %i.bsm, align 8
  %i.bso = invoke noundef i32 %i.bsn(ptr noundef nonnull align 8 dereferenceable(8) %i.bme)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit925 unwind label %bb.mc ; 0 uses

bb.mc:                                            ; preds = %bb.mb
  %i.bsp = landingpad { ptr, i32 }
          catch ptr null
  %i.bsq = extractvalue { ptr, i32 } %i.bsp, 0
  call void @__clang_call_terminate(ptr %i.bsq) #20
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit925: ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.lb, %bb.mb, %bb.lc
  %.sroa.01108.6 = phi ptr [ %.sroa.01108.01695, %_ZN11CStringBaseIwED2Ev.exit ], [ %.sroa.01108.5.ph, %bb.lb ], [ %.sroa.01108.5.ph, %bb.lc ], [ %.sroa.01108.5.ph, %bb.mb ]
  %.pn631.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn625, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.bnm, %bb.lb ], [ %i.bnn, %bb.lc ], [ %.pn631.pn.pn.pn, %bb.mb ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.01108.6) #19
  br label %_ZN11CStringBaseIwED2Ev.exit926

bb.md:                                            ; preds = %bb.kd, %_ZN11CStringBaseIwED2Ev.exit923
  %.27560 = phi i32 [ 1, %_ZN11CStringBaseIwED2Ev.exit923 ], [ 0, %bb.kd ]
  %.29 = phi i32 [ %.28, %_ZN11CStringBaseIwED2Ev.exit923 ], [ %.23, %bb.kd ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %.critedge675.thread

.critedge675.thread.loopexit:                     ; preds = %bb.gv, %_ZN13CStreamBinderD2Ev.exit
  %.31.ph = phi i32 [ %i.asy, %bb.gv ], [ %.18, %_ZN13CStreamBinderD2Ev.exit ]
  %i.bsr = trunc nsw i64 %indvars.iv1990 to i32
  br label %.critedge675.thread

.critedge675.thread:                              ; preds = %.critedge675.thread.loopexit, %bb.md, %.critedge675
  %.14021282 = phi i32 [ %.1402.lcssa, %.critedge675 ], [ %.1402.lcssa, %bb.md ], [ %i.bsr, %.critedge675.thread.loopexit ] ; 2 uses
  %.29562 = phi i32 [ 25, %.critedge675 ], [ %.27560, %bb.md ], [ 1, %.critedge675.thread.loopexit ]
  %.31 = phi i32 [ %.10.lcssa, %.critedge675 ], [ %.29, %bb.md ], [ %.31.ph, %.critedge675.thread.loopexit ] ; 2 uses
  call void @_ZN8NArchive3N7z8CEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  %i.bss = load ptr, ptr %i.adg, align 8, !tbaa !176 ; 2 uses
  %i.bst = icmp eq ptr %i.bss, null
  br i1 %i.bst, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.me

bb.me:                                            ; preds = %.critedge675.thread
  call void @_ZdaPv(ptr noundef nonnull %i.bss) #19
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.me, %.critedge675.thread
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.acj) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %26, align 8, !tbaa !117
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %26)
          to label %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit unwind label %bb.mf, !inline_history !226

bb.mf:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %i.bsu = landingpad { ptr, i32 }
          catch ptr null
  %i.bsv = extractvalue { ptr, i32 } %i.bsu, 0
  call void @__clang_call_terminate(ptr %i.bsv) #20, !inline_history !226
  unreachable

_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %26) #17, !inline_history !226
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  switch i32 %.29562, label %.loopexit1231 [
    i32 0, label %bb.mg
    i32 25, label %bb.mg
  ]

bb.mg:                                            ; preds = %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit, %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit
  %indvars.iv.next2022 = add nuw nsw i64 %indvars.iv2021, 1 ; 2 uses
  %exitcond2025.not = icmp eq i64 %indvars.iv.next2022, 4
  br i1 %exitcond2025.not, label %bb.mk, label %bb.ee, !llvm.loop !326

_ZN11CStringBaseIwED2Ev.exit926:                  ; preds = %.loopexit.split-lp1210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit925
  %.pn640 = phi { ptr, i32 } [ %.pn631.pn.pn.pn.pn.pn.pn, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit925 ], [ %lpad.loopexit.split-lp2838, %.loopexit.split-lp1210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  br label %.loopexit.split-lp1189.loopexit.split-lp

.loopexit.split-lp1189.loopexit.split-lp:         ; preds = %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN11CStringBaseIwED2Ev.exit926
  %.pn642 = phi { ptr, i32 } [ %.pn640, %_ZN11CStringBaseIwED2Ev.exit926 ], [ %lpad.loopexit.split-lp2822, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.mh

bb.mh:                                            ; preds = %.loopexit.split-lp1189.loopexit.split-lp, %bb.jt
  %.pn642.pn = phi { ptr, i32 } [ %.pn642, %.loopexit.split-lp1189.loopexit.split-lp ], [ %i.bhi, %bb.jt ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  br label %.body739

.body739:                                         ; preds = %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gy, %bb.iq, %_ZN8NArchive3N7z9CFileItemD2Ev.exit813, %bb.mh
  %.pn642.pn.pn = phi { ptr, i32 } [ %.pn642.pn, %bb.mh ], [ %.pn608.pn.pn, %bb.iq ], [ %.pn616.pn.pn, %_ZN8NArchive3N7z9CFileItemD2Ev.exit813 ], [ %i.atl, %bb.gy ], [ %lpad.loopexit.split-lp2825, %.loopexit.split-lp1197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8NArchive3N7z8CEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %27) #17
  br label %bb.mi

bb.mi:                                            ; preds = %.body739, %bb.gs
  %.pn642.pn.pn.pn = phi { ptr, i32 } [ %.pn642.pn.pn, %.body739 ], [ %i.aqg, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %.body709

.body709:                                         ; preds = %bb.gi, %.body116.i, %.body.i, %bb.mi
  %.pn642.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn642.pn.pn.pn, %bb.mi ], [ %i.any, %bb.gi ], [ %.pn55.i, %.body.i ], [ %eh.lpad-body117.i, %.body116.i ]
  call void @_ZN8NArchive3N7z22CCompressionMethodModeD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %26) #17
  br label %bb.mj

bb.mj:                                            ; preds = %.body709, %bb.gh
  %.pn642.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn642.pn.pn.pn.pn, %.body709 ], [ %i.anx, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %.body

bb.mk:                                            ; preds = %bb.mg
  %i.bsw = load i32, ptr %i.ug, align 4, !tbaa !123
  %.not650 = icmp eq i32 %.14021282, %i.bsw
  br i1 %.not650, label %bb.ml, label %.loopexit1231

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #17
  %i.bsx = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bsy = getelementptr inbounds nuw i8, ptr %43, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bsx, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.bsy, align 8, !tbaa !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIiE, i64 16), ptr %43, align 8, !tbaa !117
  %i.bsz = load i32, ptr %i.se, align 4, !tbaa !123 ; 2 uses
  %i.bta = icmp sgt i32 %i.bsz, 0
  br i1 %i.bta, label %.lr.ph1720, label %._crit_edge1721

.lr.ph1720:                                       ; preds = %bb.ml
  %i.btb = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.btc = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 3 uses
  br label %bb.mm

bb.mm:                                            ; preds = %.lr.ph1720, %bb.mr
  %i.btd = phi i32 [ %i.bsz, %.lr.ph1720 ], [ %i.buf, %bb.mr ] ; 2 uses
  %indvars.iv2026 = phi i64 [ 0, %.lr.ph1720 ], [ %indvars.iv.next2027, %bb.mr ] ; 3 uses
  %i.bte = load ptr, ptr %i.adv, align 8, !tbaa !124
  %i.btf = getelementptr inbounds nuw [8 x i8], ptr %i.bte, i64 %indvars.iv2026
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !125 ; 5 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 60
  %i.bti = load i8, ptr %i.bth, align 4, !tbaa !348, !range !130, !noundef !131
  %i.btj = trunc nuw i8 %i.bti to i1
  br i1 %i.btj, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btg, i64 63
  %i.btl = load i8, ptr %i.btk, align 1, !tbaa !190, !range !130, !noundef !131
  %i.btm = trunc nuw i8 %i.btl to i1
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btg, i64 62
  %i.bto = load i8, ptr %i.btn, align 2, !range !130
  %i.btp = trunc nuw i8 %i.bto to i1
  %.not1182 = select i1 %i.btm, i1 true, i1 %i.btp
  br i1 %.not1182, label %bb.mq, label %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit928

_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit928: ; preds = %bb.mn
  %49 = getelementptr inbounds nuw i8, ptr %i.btg, i64 32
  %50 = load i64, ptr %49, align 8, !tbaa !189
  %.not1181 = icmp eq i64 %50, 0
  br i1 %.not1181, label %bb.mq, label %bb.mr

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mq, %._crit_edge1721
  %lpad.loopexit.split-lp2817 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.mo:                                            ; preds = %bb.mm
  %i.btq = load i32, ptr %i.btg, align 8, !tbaa !347 ; 2 uses
  %.not653 = icmp eq i32 %i.btq, -1
  br i1 %.not653, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.btr = load ptr, ptr %i.adt, align 8, !tbaa !124
  %i.bts = sext i32 %i.btq to i64
  %i.btt = getelementptr inbounds [8 x i8], ptr %i.btr, i64 %i.bts
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !125
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 32
  %i.btw = load i8, ptr %i.btv, align 8, !tbaa !179, !range !130, !noundef !131
  %i.btx = trunc nuw i8 %i.btw to i1
  br i1 %i.btx, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mn, %bb.mo, %bb.mp, %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit928
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZN13CRecordVectorIiE3AddEi.exit930 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13CRecordVectorIiE3AddEi.exit930:              ; preds = %bb.mq
  %i.bty = load ptr, ptr %i.btb, align 8, !tbaa !124
  %i.btz = load i32, ptr %i.btc, align 4, !tbaa !123
  %i.bua = sext i32 %i.btz to i64
  %i.bub = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.bua
  %i.buc = trunc nuw nsw i64 %indvars.iv2026 to i32
  store i32 %i.buc, ptr %i.bub, align 4, !tbaa !17
  %i.bud = load i32, ptr %i.btc, align 4, !tbaa !123
  %i.bue = add nsw i32 %i.bud, 1
  store i32 %i.bue, ptr %i.btc, align 4, !tbaa !123
  %.pre2041 = load i32, ptr %i.se, align 4, !tbaa !123
  br label %bb.mr

bb.mr:                                            ; preds = %_ZN13CRecordVectorIiE3AddEi.exit930, %bb.mp, %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit928
  %i.buf = phi i32 [ %.pre2041, %_ZN13CRecordVectorIiE3AddEi.exit930 ], [ %i.btd, %bb.mp ], [ %i.btd, %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit928 ] ; 2 uses
  %indvars.iv.next2027 = add nuw nsw i64 %indvars.iv2026, 1 ; 2 uses
  %i.bug = sext i32 %i.buf to i64
  %i.buh = icmp slt i64 %indvars.iv.next2027, %i.bug
  br i1 %i.buh, label %bb.mm, label %._crit_edge1721, !llvm.loop !327

._crit_edge1721:                                  ; preds = %bb.mr, %bb.ml
  invoke void @_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv, ptr noundef nonnull %2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %._crit_edge1721
  %i.bui = getelementptr inbounds nuw i8, ptr %43, i64 12 ; 2 uses
  %i.buj = load i32, ptr %i.bui, align 4, !tbaa !123
  %i.buk = icmp sgt i32 %i.buj, 0
  br i1 %i.buk, label %.lr.ph1723, label %._crit_edge1724

.lr.ph1723:                                       ; preds = %.preheader
  %i.bul = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bum = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %44, i64 28 ; 2 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %44, i64 32
  br label %bb.ms

bb.ms:                                            ; preds = %.lr.ph1723, %_ZN8NArchive3N7z9CFileItemD2Ev.exit947
  %indvars.iv2030 = phi i64 [ 0, %.lr.ph1723 ], [ %indvars.iv.next2031, %_ZN8NArchive3N7z9CFileItemD2Ev.exit947 ] ; 2 uses
  %i.buq = load ptr, ptr %i.bul, align 8, !tbaa !124
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr %i.buq, i64 %indvars.iv2030
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !17
  %i.but = load ptr, ptr %i.adv, align 8, !tbaa !124
  %i.buu = sext i32 %i.bus to i64
  %i.buv = getelementptr inbounds [8 x i8], ptr %i.but, i64 %i.buu
  %i.buw = load ptr, ptr %i.buv, align 8, !tbaa !125 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bum, i8 0, i64 16, i1 false)
  %i.bux = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc942 unwind label %bb.mv ; 9 uses

.noexc942:                                        ; preds = %bb.ms
  %i.buy = ptrtoaddr ptr %i.bux to i64
  %i.buz = load i32, ptr %i.buo, align 4, !tbaa !197
  %i.bva = icmp sgt i32 %i.buz, 0
  %.pre1.i.i931 = load i32, ptr %i.bun, align 8, !tbaa !97 ; 5 uses
  br i1 %i.bva, label %.preheader.i.i.i932, label %bb.mt

.preheader.i.i.i932:                              ; preds = %.noexc942
  %i.bvb = icmp sgt i32 %.pre1.i.i931, 0
  %.pre.i.i.i933 = load ptr, ptr %i.bum, align 8, !tbaa !176 ; 9 uses
  br i1 %i.bvb, label %.lr.ph.i.i.i937, label %._crit_edge.i.i.i934

.lr.ph.i.i.i937:                                  ; preds = %.preheader.i.i.i932
  %.pre.i.i.i9332795 = ptrtoaddr ptr %.pre.i.i.i933 to i64
  %wide.trip.count.i.i.i938 = zext nneg i32 %.pre1.i.i931 to i64 ; 5 uses
  %min.iters.check2797 = icmp ult i32 %.pre1.i.i931, 8
  %i.bvc = sub i64 %.pre.i.i.i9332795, %i.buy
  %diff.check2799 = icmp ugt i64 %i.bvc, -32
  %or.cond2816 = select i1 %min.iters.check2797, i1 true, i1 %diff.check2799
  br i1 %or.cond2816, label %scalar.ph2796.preheader, label %vector.ph2800

vector.ph2800:                                    ; preds = %.lr.ph.i.i.i937
  %n.vec2801 = and i64 %wide.trip.count.i.i.i938, 2147483640 ; 3 uses
  br label %vector.body2802

vector.body2802:                                  ; preds = %vector.body2802, %vector.ph2800
  %index2803 = phi i64 [ 0, %vector.ph2800 ], [ %index.next2806, %vector.body2802 ] ; 3 uses
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %index2803 ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 16
  %wide.load2804 = load <4 x i32>, ptr %i.bvd, align 4, !tbaa !99
  %wide.load2805 = load <4 x i32>, ptr %i.bve, align 4, !tbaa !99
  %i.bvf = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %index2803 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 16
  store <4 x i32> %wide.load2804, ptr %i.bvf, align 4, !tbaa !99
  store <4 x i32> %wide.load2805, ptr %i.bvg, align 4, !tbaa !99
  %index.next2806 = add nuw i64 %index2803, 8     ; 2 uses
  %i.bvh = icmp eq i64 %index.next2806, %n.vec2801
  br i1 %i.bvh, label %middle.block2807, label %vector.body2802, !llvm.loop !328

middle.block2807:                                 ; preds = %vector.body2802
  %cmp.n2808 = icmp eq i64 %n.vec2801, %wide.trip.count.i.i.i938
  br i1 %cmp.n2808, label %._crit_edge.thread.i.i.i935, label %scalar.ph2796.preheader

scalar.ph2796.preheader:                          ; preds = %.lr.ph.i.i.i937, %middle.block2807
  %indvars.iv.i.i.i939.ph = phi i64 [ 0, %.lr.ph.i.i.i937 ], [ %n.vec2801, %middle.block2807 ] ; 3 uses
  %xtraiter3092 = and i64 %wide.trip.count.i.i.i938, 3 ; 2 uses
  %lcmp.mod3093.not = icmp eq i64 %xtraiter3092, 0
  br i1 %lcmp.mod3093.not, label %scalar.ph2796.prol.loopexit, label %scalar.ph2796.prol

scalar.ph2796.prol:                               ; preds = %scalar.ph2796.preheader, %scalar.ph2796.prol
  %indvars.iv.i.i.i939.prol = phi i64 [ %indvars.iv.next.i.i.i940.prol, %scalar.ph2796.prol ], [ %indvars.iv.i.i.i939.ph, %scalar.ph2796.preheader ] ; 3 uses
  %prol.iter3094 = phi i64 [ %prol.iter3094.next, %scalar.ph2796.prol ], [ 0, %scalar.ph2796.preheader ]
  %i.bvi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %indvars.iv.i.i.i939.prol
  %i.bvj = load i32, ptr %i.bvi, align 4, !tbaa !99
  %i.bvk = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %indvars.iv.i.i.i939.prol
  store i32 %i.bvj, ptr %i.bvk, align 4, !tbaa !99
  %indvars.iv.next.i.i.i940.prol = add nuw nsw i64 %indvars.iv.i.i.i939.prol, 1 ; 2 uses
  %prol.iter3094.next = add i64 %prol.iter3094, 1 ; 2 uses
  %prol.iter3094.cmp.not = icmp eq i64 %prol.iter3094.next, %xtraiter3092
  br i1 %prol.iter3094.cmp.not, label %scalar.ph2796.prol.loopexit, label %scalar.ph2796.prol, !llvm.loop !329

scalar.ph2796.prol.loopexit:                      ; preds = %scalar.ph2796.prol, %scalar.ph2796.preheader
  %indvars.iv.i.i.i939.unr = phi i64 [ %indvars.iv.i.i.i939.ph, %scalar.ph2796.preheader ], [ %indvars.iv.next.i.i.i940.prol, %scalar.ph2796.prol ]
  %i.bvl = sub nsw i64 %indvars.iv.i.i.i939.ph, %wide.trip.count.i.i.i938
  %i.bvm = icmp ugt i64 %i.bvl, -4
  br i1 %i.bvm, label %._crit_edge.thread.i.i.i935, label %scalar.ph2796

._crit_edge.i.i.i934:                             ; preds = %.preheader.i.i.i932
  %i.bvn = icmp eq ptr %.pre.i.i.i933, null
  br i1 %i.bvn, label %bb.mt, label %._crit_edge.thread.i.i.i935

scalar.ph2796:                                    ; preds = %scalar.ph2796.prol.loopexit, %scalar.ph2796
  %indvars.iv.i.i.i939 = phi i64 [ %indvars.iv.next.i.i.i940.3, %scalar.ph2796 ], [ %indvars.iv.i.i.i939.unr, %scalar.ph2796.prol.loopexit ] ; 6 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %indvars.iv.i.i.i939
  %i.bvp = load i32, ptr %i.bvo, align 4, !tbaa !99
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %indvars.iv.i.i.i939
  store i32 %i.bvp, ptr %i.bvq, align 4, !tbaa !99
  %indvars.iv.next.i.i.i940 = add nuw nsw i64 %indvars.iv.i.i.i939, 1 ; 2 uses
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %indvars.iv.next.i.i.i940
  %i.bvs = load i32, ptr %i.bvr, align 4, !tbaa !99
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %indvars.iv.next.i.i.i940
  store i32 %i.bvs, ptr %i.bvt, align 4, !tbaa !99
  %indvars.iv.next.i.i.i940.1 = add nuw nsw i64 %indvars.iv.i.i.i939, 2 ; 2 uses
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %indvars.iv.next.i.i.i940.1
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !99
  %i.bvw = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %indvars.iv.next.i.i.i940.1
  store i32 %i.bvv, ptr %i.bvw, align 4, !tbaa !99
  %indvars.iv.next.i.i.i940.2 = add nuw nsw i64 %indvars.iv.i.i.i939, 3 ; 2 uses
  %i.bvx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i933, i64 %indvars.iv.next.i.i.i940.2
  %i.bvy = load i32, ptr %i.bvx, align 4, !tbaa !99
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %i.bux, i64 %indvars.iv.next.i.i.i940.2
  store i32 %i.bvy, ptr %i.bvz, align 4, !tbaa !99
  %indvars.iv.next.i.i.i940.3 = add nuw nsw i64 %indvars.iv.i.i.i939, 4 ; 2 uses
  %exitcond.not.i.i.i941.3 = icmp eq i64 %indvars.iv.next.i.i.i940.3, %wide.trip.count.i.i.i938
  br i1 %exitcond.not.i.i.i941.3, label %._crit_edge.thread.i.i.i935, label %scalar.ph2796, !llvm.loop !330

._crit_edge.thread.i.i.i935:                      ; preds = %scalar.ph2796.prol.loopexit, %scalar.ph2796, %middle.block2807, %._crit_edge.i.i.i934
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i933) #19
  %.pre.i.i936 = load i32, ptr %i.bun, align 8, !tbaa !97
  br label %bb.mt

bb.mt:                                            ; preds = %._crit_edge.thread.i.i.i935, %._crit_edge.i.i.i934, %.noexc942
  %i.bwa = phi i32 [ %.pre1.i.i931, %.noexc942 ], [ %.pre1.i.i931, %._crit_edge.i.i.i934 ], [ %.pre.i.i936, %._crit_edge.thread.i.i.i935 ]
  store ptr %i.bux, ptr %i.bum, align 8, !tbaa !176
  %i.bwb = sext i32 %i.bwa to i64
  %i.bwc = getelementptr inbounds [4 x i8], ptr %i.bux, i64 %i.bwb
  store i32 0, ptr %i.bwc, align 4, !tbaa !99
  store i32 4, ptr %i.buo, align 4, !tbaa !197
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.bup, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.buw, i64 61
  %i.bwe = load i8, ptr %i.bwd, align 1, !tbaa !391, !range !130, !noundef !131
  %i.bwf = trunc nuw i8 %i.bwe to i1
  br i1 %i.bwf, label %bb.mu, label %bb.my

bb.mu:                                            ; preds = %bb.mt
  invoke fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %i.buw, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.mz unwind label %bb.mw

bb.mv:                                            ; preds = %bb.ms
  %i.bwg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit945

bb.mw:                                            ; preds = %bb.mz, %bb.my, %bb.mu
  %i.bwh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %i.bwi = load ptr, ptr %i.bum, align 8, !tbaa !176 ; 2 uses
  %i.bwj = icmp eq ptr %i.bwi, null
  br i1 %i.bwj, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit945, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  call void @_ZdaPv(ptr noundef nonnull %i.bwi) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit945

bb.my:                                            ; preds = %bb.mt
  %i.bwk = load i32, ptr %i.buw, align 8, !tbaa !347
  invoke void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %i.bwk, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.mz unwind label %bb.mw

bb.mz:                                            ; preds = %bb.my, %bb.mu
  invoke void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %bb.na unwind label %bb.mw

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  %i.bwl = load ptr, ptr %i.bum, align 8, !tbaa !176 ; 2 uses
  %i.bwm = icmp eq ptr %i.bwl, null
  br i1 %i.bwm, label %_ZN8NArchive3N7z9CFileItemD2Ev.exit947, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  call void @_ZdaPv(ptr noundef nonnull %i.bwl) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit947

_ZN8NArchive3N7z9CFileItemD2Ev.exit947:           ; preds = %bb.na, %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  %indvars.iv.next2031 = add nuw nsw i64 %indvars.iv2030, 1 ; 2 uses
  %i.bwn = load i32, ptr %i.bui, align 4, !tbaa !123
  %i.bwo = sext i32 %i.bwn to i64
  %i.bwp = icmp slt i64 %indvars.iv.next2031, %i.bwo
  br i1 %i.bwp, label %bb.ms, label %._crit_edge1724, !llvm.loop !331

end_hunk_1
begin_hunk_2_@_ZN13CStreamBinderD2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !428
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit: ; preds = %bb.d
  ret void
}

declare void @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((24, 28)) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !431 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !197
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.g to i64
  %i.l = icmp slt i32 %i.f, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #18
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.p = load i32, ptr %i.h, align 4, !tbaa !197
  %i.q = icmp sgt i32 %i.p, 0
  %.pre7.i = load i32, ptr %i.c, align 8, !tbaa !97 ; 5 uses
  br i1 %i.q, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %.noexc
  %i.r = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !176 ; 4 uses
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !99
  %wide.load30 = load <4 x i32>, ptr %i.t, align 4, !tbaa !99
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %wide.load, ptr %i.u, align 4, !tbaa !99
  store <4 x i32> %wide.load30, ptr %i.v, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !429

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.x = icmp eq ptr %.pre.i.i, null
  br i1 %i.x, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !99
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !99
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !430

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.ab = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc ]
  store ptr %i.o, ptr %i.b, align 8, !tbaa !176
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !99
  store i32 %i.g, ptr %i.h, align 4, !tbaa !197
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.ae = phi ptr [ %i.d, %bb.a ], [ %i.o, %bb.c ]
  %i.af = load ptr, ptr %3, align 8, !tbaa !176   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ai, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ah = load i32, ptr %.0.i.i, align 4, !tbaa !99 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ah, ptr %.04.i.i, align 4, !tbaa !99
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !llvm.loop !8

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !97
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !97
  %i.ak = icmp eq ptr %i.af, null
  br i1 %i.ak, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.af) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i8, ptr %i.al, align 8, !tbaa !432, !range !130, !noundef !131
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 1, ptr %i.aq, align 1, !tbaa !433
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ap, ptr %i.ar, align 8, !tbaa !434
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN11CStringBaseIwED2Ev.exit27, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #19
  br label %_ZN11CStringBaseIwED2Ev.exit27

_ZN11CStringBaseIwED2Ev.exit27:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.as

bb.j:                                             ; preds = %bb.g, %_ZN11CStringBaseIwED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !435, !range !130, !noundef !131
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !436
  %i.az = load <2 x i64>, ptr %i.av, align 8, !tbaa !184
  store <2 x i64> %i.az, ptr %2, align 8, !tbaa !184
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !437, !range !130, !noundef !131
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !438
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !228
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !439
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !229, !range !130, !noundef !131
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !440
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !230, !range !130, !noundef !131
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %i.bk, ptr %i.bl, align 4, !tbaa !225
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.bm, align 1, !tbaa !441
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !189 ; 2 uses
  store i64 %i.bo, ptr %1, align 8, !tbaa !127
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !190, !range !130, !noundef !131 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !137
  %i.bs = trunc nuw i8 %i.bq to i1
  %i.bt = load i8, ptr %i.bj, align 2, !range !130
  %i.bu = trunc nuw i8 %i.bt to i1
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bu
  %i.bv = icmp ne i64 %i.bo, 0
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.bw = select i1 %not.or.cond.i, i1 %i.bv, i1 false
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = zext i1 %i.bw to i8
  store i8 %i.by, ptr %i.bx, align 8, !tbaa !179
  ret void
}

declare void @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E(ptr noundef nonnull align 8 dereferenceable(480), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2, i1 noundef zeroext %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !447 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 10 uses
  store ptr %2, ptr %0, align 8, !tbaa !231
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !233
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !234
  br i1 %3, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val32 = load i32, ptr %i.f, align 8, !tbaa !97 ; 4 uses
  %i.g = icmp eq i32 %.val32, 0
  br i1 %i.g, label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread, label %bb.c

_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread: ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !233
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %.val32 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.h ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi ptr [ %i.i, %bb.c ], [ %.0.i.i, %bb.f ]
  %.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %.0.i.i, align 4, !tbaa !99
  %i.k = icmp eq i32 %i.j, 47
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %.0.i.i to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  br label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %.0.i.i, %.val
  br i1 %i.q, label %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit, label %bb.d, !llvm.loop !0

_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit: ; preds = %bb.f, %bb.e
  %.1.i.i = phi i32 [ %i.p, %bb.e ], [ -1, %bb.f ] ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 -1)
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !233
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit
  %.pn.i = phi ptr [ %i.i, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit ], [ %.0.i, %bb.h ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.t = load i32, ptr %.0.i, align 4, !tbaa !99
  %i.u = icmp eq i32 %i.t, 46
  br i1 %i.u, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %.0.i, %.val
  br i1 %i.v, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.g, !llvm.loop !0

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.g
  %i.w = ptrtoint ptr %.0.i to i64
  %i.x = ptrtoint ptr %.val to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = icmp sgt i32 %.1.i.i, %i.aa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.i

_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread:  ; preds = %bb.h, %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  store i32 %.val32, ptr %i.b, align 4, !tbaa !232
  br label %bb.w

bb.i:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.ad = add nuw nsw i32 %i.aa, 1                ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ae = sub nsw i32 %.val32, %i.ad
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ad, i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !97
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN11CStringBaseIcED2Ev.exit37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !176
  %i.aj = invoke noundef ptr @_Z13MyStringLowerPw(ptr noundef %i.ai)
          to label %_ZN11CStringBaseIwE9MakeLowerEv.exit unwind label %bb.k ; 0 uses

_ZN11CStringBaseIwE9MakeLowerEv.exit:             ; preds = %bb.j
  %i.ak = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %_ZN11CStringBaseIcEC2Ev.exit unwind label %bb.k ; 4 uses

_ZN11CStringBaseIcEC2Ev.exit:                     ; preds = %_ZN11CStringBaseIwE9MakeLowerEv.exit
  store i8 0, ptr %i.ak, align 1, !tbaa !101
  %i.al = load i32, ptr %i.af, align 8, !tbaa !97 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !176
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !99 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 127
  br i1 %i.ap, label %._crit_edge, label %.lr.ph145

.lr.ph:                                           ; preds = %bb.p
  %i.aq = load ptr, ptr %4, align 8, !tbaa !176
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !99 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 127
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.at, label %._crit_edge, label %.lr.ph145, !llvm.loop !442

bb.k:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE9MakeLowerEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit

bb.l:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.077144) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

.lr.ph145:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ax = phi i32 [ %i.au, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ay = phi i32 [ %i.as, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ]
  %.sroa.0.077144 = phi ptr [ %.sroa.0.3, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 12 uses
  %.sroa.20.079143 = phi i32 [ %.sroa.20.2, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 9 uses
  %indvars.iv140 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.0.077144149 = ptrtoaddr ptr %.sroa.0.077144 to i64
  %i.az = trunc i32 %i.ay to i8
  %i.ba = xor i32 %i.ax, -1
  %i.bb = add i32 %.sroa.20.079143, %i.ba         ; 3 uses
  %.not.i.i = icmp slt i32 %i.bb, 1
  br i1 %.not.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph145
  %i.bc = icmp sgt i32 %.sroa.20.079143, 64
  %i.bd = lshr i32 %.sroa.20.079143, 1
  %i.be = icmp sgt i32 %.sroa.20.079143, 8
  %..i.i = select i1 %i.be, i32 16, i32 4
  %.0.i.i33 = select i1 %i.bc, i32 %i.bd, i32 %..i.i ; 2 uses
  %i.bf = add nsw i32 %.0.i.i33, %i.bb
  %i.bg = icmp slt i32 %i.bf, 1
  %i.bh = sub nsw i32 1, %i.bb
  %.1.i.i34 = select i1 %i.bg, i32 %i.bh, i32 %.0.i.i33
  %i.bi = add i32 %.sroa.20.079143, 1
  %i.bj = add i32 %i.bi, %.1.i.i34                ; 3 uses
  %i.bk = icmp eq i32 %i.bj, %.sroa.20.079143
  br i1 %i.bk, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = sext i32 %i.bj to i64
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #18
          to label %.noexc36 unwind label %bb.l   ; 10 uses

.noexc36:                                         ; preds = %bb.n
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = icmp sgt i32 %.sroa.20.079143, 0
  br i1 %i.bo, label %.preheader.i.i.i, label %bb.o

.preheader.i.i.i:                                 ; preds = %.noexc36
  %.not = icmp eq i64 %indvars.iv140, 0
  br i1 %.not, label %._crit_edge.thread.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv140, 4
  %i.bp = sub i64 %.sroa.0.077144149, %i.bn
  %diff.check = icmp ugt i64 %i.bp, -32
  %or.cond157 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond157, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check150 = icmp samesign ult i64 %indvars.iv140, 32
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %indvars.iv140, 28
end_hunk_2
