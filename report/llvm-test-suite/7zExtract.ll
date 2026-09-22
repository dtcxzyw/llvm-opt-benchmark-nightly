Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zExtract?download=true
inline.NumInlined: 91
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8NArchive3N7z8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
  %9 = alloca %class.CMyComPtr.17, align 8        ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp ne i32 %3, 0
  %.not.i = icmp eq ptr %4, null                  ; 3 uses
  br i1 %.not.i, label %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit unwind label %bb.d, !inline_history !26 ; 0 uses

_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit: ; preds = %bb.a, %bb.b
  %i.g = icmp eq i32 %2, -1                       ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit

bb.e:                                             ; preds = %bb.c, %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit
  %.0190 = phi i32 [ %i.i, %bb.c ], [ %2, %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit ] ; 2 uses
  %i.k = icmp eq i32 %.0190, 0
  br i1 %i.k, label %bb.cn, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.m, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE, i64 16), ptr %5, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %wide.trip.count = zext i32 %.0190 to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit284
  %i.ae = load ptr, ptr %4, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.2141)
          to label %bb.ad unwind label %.thread338 ; 2 uses

bb.h:                                             ; preds = %bb.f, %.loopexit284
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %.loopexit284 ] ; 3 uses
  %.0139307 = phi i64 [ 0, %bb.f ], [ %.2141, %.loopexit284 ] ; 3 uses
  %i.ai = trunc nuw i64 %indvars.iv to i32
  br i1 %i.g, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = phi i32 [ %i.ak, %bb.i ], [ %i.ai, %bb.h ] ; 4 uses
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7  ; 5 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 %i.al, ptr %6, align 8, !tbaa !38
  store i32 -1, ptr %i.x, align 4, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.aa, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %i.y, align 8, !tbaa !9
  store i64 0, ptr %i.ab, align 8, !tbaa !19
  %.not.i247 = icmp eq i32 %i.al, -1
  br i1 %.not.i247, label %_ZN8NArchive3N7z18CExtractFolderInfoC2Ejj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZN13CRecordVectorIbE3AddEb.exit.i unwind label %bb.n

_ZN13CRecordVectorIbE3AddEb.exit.i:               ; preds = %bb.m
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.as = load i32, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  store i8 1, ptr %i.au, align 1, !tbaa !21
  %i.av = add nsw i32 %i.as, 1
  store i32 %i.av, ptr %i.ad, align 4, !tbaa !13
  br label %_ZN8NArchive3N7z18CExtractFolderInfoC2Ejj.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %.body

_ZN8NArchive3N7z18CExtractFolderInfoC2Ejj.exit:   ; preds = %_ZN13CRecordVectorIbE3AddEb.exit.i, %bb.k
  %i.ax = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %_ZN8NArchive3N7z18CExtractFolderInfoC2Ejj.exit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit284

bb.p:                                             ; preds = %_ZN8NArchive3N7z18CExtractFolderInfoC2Ejj.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %.pn235 = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.aw, %bb.n ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ck

bb.q:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.o, align 4, !tbaa !13  ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39
  %.not227 = icmp eq i32 %i.ap, %i.bh
  br i1 %.not227, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %bb.r
  %.pre = sext i32 %i.ap to i64
  br label %bb.z

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i32 -1, ptr %7, align 8, !tbaa !38
  store i32 %i.ap, ptr %i.q, align 4, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.t, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %i.r, align 8, !tbaa !9
  store i64 0, ptr %i.u, align 8, !tbaa !19
  %i.bi = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.bk = sext i32 %i.ap to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 108
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %bb.t
  %i.bq = icmp sgt i32 %i.bo, 0
  br i1 %i.bq, label %.lr.ph.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.bo, -1                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.bs to i64
  br i1 %i.bt, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i ] ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.v ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.us.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !41
  %i.bz = icmp eq i32 %i.by, %.0615.us.i
  br i1 %i.bz, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.u, !llvm.loop !27

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.u
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %10 = icmp sgt i32 %.0615.us.i, 0
  br i1 %10, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !28

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.v, %.lr.ph.i
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i ], [ %.0615.us.i, %bb.v ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cc = sext i32 %.0613.i to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !42
  br label %bb.w

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.cf = call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 1, ptr %i.cf, align 16, !tbaa !7
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIi, ptr null) #15
          to label %.noexc248 unwind label %bb.y

.noexc248:                                        ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

bb.w:                                             ; preds = %bb.t, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
  %.1.i = phi i64 [ %i.ce, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %bb.t ] ; 2 uses
  %i.cg = load i32, ptr %i.o, align 4, !tbaa !13
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !22 ; 2 uses
  %i.cm = add i64 %.1.i, %.0139307
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 %.1.i, ptr %i.cn, align 8, !tbaa !19
  br label %bb.z

bb.x:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ck

bb.y:                                             ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ck

bb.z:                                             ; preds = %._crit_edge, %bb.w
  %.pre-phi322 = phi i64 [ %.pre, %._crit_edge ], [ %i.bk, %bb.w ]
  %i.cq = phi ptr [ %i.bf, %._crit_edge ], [ %i.cl, %bb.w ] ; 3 uses
  %.1140 = phi i64 [ %.0139307, %._crit_edge ], [ %i.cm, %bb.w ] ; 2 uses
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %.pre-phi322
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %i.cx = sub i32 %i.al, %i.ct                    ; 3 uses
  %.not232305 = icmp ugt i32 %i.cw, %i.cx
  br i1 %.not232305, label %.loopexit284, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ck

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %.0136306 = phi i32 [ %i.cw, %.lr.ph ], [ %i.dh, %bb.ac ] ; 2 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.da = icmp eq i32 %.0136306, %i.cx
  %i.db = zext i1 %i.da to i8
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !15
  %i.dd = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  store i8 %i.db, ptr %i.df, align 1, !tbaa !21
  %i.dg = add nsw i32 %i.dd, 1
  store i32 %i.dg, ptr %i.cv, align 4, !tbaa !13
  %i.dh = add i32 %.0136306, 1                    ; 2 uses
  %.not232 = icmp ugt i32 %i.dh, %i.cx
  br i1 %.not232, label %.loopexit284, label %bb.ab, !llvm.loop !29

.loopexit284:                                     ; preds = %bb.ac, %bb.z, %bb.o
  %.2141 = phi i64 [ %.0139307, %bb.o ], [ %.1140, %bb.z ], [ %.1140, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !30

bb.ad:                                            ; preds = %bb.g
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.ae, label %bb.ci

.thread338:                                       ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZN13CObjectVectorIN8NArchive3N7z18CExtractFolderInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.cl

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZN8NArchive3N7z8CDecoderC1Eb(ptr noundef nonnull align 8 dereferenceable(232) %8, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.dj = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #16
          to label %bb.ag unwind label %bb.al     ; 13 uses

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN14CLocalProgressC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.dj)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit unwind label %bb.an, !inline_history !31 ; 0 uses

_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit: ; preds = %bb.ah
  invoke void @_ZN14CLocalProgress4InitEP9IProgressb(ptr noundef nonnull align 8 dereferenceable(66) %i.dj, ptr noundef nonnull %4, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.ao

.preheader:                                       ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader, %bb.bz
  %indvars.iv319 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next320, %bb.bz ] ; 3 uses
  %.1175 = phi i32 [ 0, %.preheader ], [ %.10184, %bb.bz ] ; 6 uses
  %.0135 = phi i64 [ 0, %.preheader ], [ %i.jh, %bb.bz ] ; 2 uses
  %.0134 = phi i64 [ 0, %.preheader ], [ %i.jg, %bb.bz ] ; 2 uses
  store i64 %.0134, ptr %i.do, align 8, !tbaa !51
  store i64 %.0135, ptr %i.dp, align 8, !tbaa !52
  %i.dy = invoke noundef i32 @_ZN14CLocalProgress6SetCurEv(ptr noundef nonnull align 8 dereferenceable(66) %i.dj)
          to label %bb.aj unwind label %bb.ap     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %.not202 = icmp eq i32 %i.dy, 0
  br i1 %.not202, label %bb.aq, label %.thread

bb.ak:                                            ; preds = %bb.ae
  %i.dz = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ch

bb.al:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit264

bb.am:                                            ; preds = %bb.ag
  %i.eb = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 72) #17
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit264

bb.an:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit264

bb.ao:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
  %i.ed = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit261

bb.ap:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit261

bb.aq:                                            ; preds = %bb.aj
  %i.ef = load i32, ptr %i.o, align 4, !tbaa !13
  %i.eg = sext i32 %i.ef to i64
  %.not203 = icmp slt i64 %indvars.iv319, %i.eg
  br i1 %.not203, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv319
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !22 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16
          to label %bb.as unwind label %bb.au     ; 16 uses

bb.as:                                            ; preds = %bb.ar
end_hunk_0
