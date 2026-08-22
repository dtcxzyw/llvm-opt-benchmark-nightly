Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/scantree?download=true
inline.NumInlined: 28
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8ScanTree8FindProcEP8FindData:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.thread79

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %i.f) ; 3 uses
  br i1 %i.o, label %.thread65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8212 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !22, !range !39, !noundef !40
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.f, ptr noundef %1, i1 noundef zeroext %i.r)
  br i1 %i.s, label %bb.e, label %.thread65

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.u = load i8, ptr %i.t, align 4, !tbaa !36, !range !39, !noundef !40
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %.thread65

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.p, align 4, !tbaa !22, !range !39, !noundef !40
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread66

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8205
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43, !range !39, !noundef !40
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread65, label %.thread66

.thread65:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.g
  %i.ab = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.thread71, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 3 uses
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %.thread66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25000
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !44, !range !39, !noundef !40
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not = icmp ne i32 %i.af, 1                    ; 2 uses
  %or.cond64.not92 = and i1 %.not, %i.aj
  %i.ak = icmp eq i32 %i.af, 3
  %or.cond90 = and i1 %i.o, %i.ak
  %or.cond91 = or i1 %or.cond90, %or.cond64.not92
  br i1 %or.cond91, label %.thread66, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.am = load i8, ptr %i.al, align 8, !tbaa !24, !range !39, !noundef !40
  %i.an = trunc nuw i8 %i.am to i1
  %spec.select = and i1 %.not, %i.an
  br label %.thread66

.thread66:                                        ; preds = %bb.j, %bb.f, %bb.i, %bb.h, %bb.g
  %.ph67 = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ]
  %.ph68 = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.ab, %bb.j ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  %.ph69 = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %spec.select, %bb.j ], [ true, %bb.h ], [ true, %bb.i ] ; 3 uses
  %.pr = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ao = icmp eq i32 %.pr, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread66
  %i.ap = zext i1 %.ph69 to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 25001
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread66
  %or.cond = or i1 %i.o, %.ph69
  br i1 %or.cond, label %.thread71, label %bb.p

.thread71:                                        ; preds = %.thread65, %bb.l
  %i.ar = phi i1 [ %.ph69, %bb.l ], [ true, %.thread65 ]
  %i.as = tail call noalias noundef nonnull dereferenceable(8208) ptr @_Znwm(i64 noundef 8208) #16 ; 3 uses
  invoke void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %i.as)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.thread71
  %i.at = load i32, ptr %i.i, align 8, !tbaa !30
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i64 noundef 2048)
  br i1 %i.ar, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @_Z7SetNamePwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2048)
  br label %bb.w

bb.o:                                             ; preds = %.thread71
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #14
  resume { ptr, i32 } %i.aw

bb.p:                                             ; preds = %bb.l
  br i1 %.ph67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.r, label %.thread83

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.ph68, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8236
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !46, !range !39, !noundef !40
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i32 2, i32 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 33208
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %.not60 = icmp eq ptr %i.bf, null
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.bf, ptr noundef nonnull %i.f, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.bg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 25016
  tail call void @_ZN12ErrorHandler12OpenErrorMsgEPKwS1_(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f)
  tail call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 10)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.047 = phi i32 [ 0, %bb.r ], [ %i.bd, %bb.u ], [ 3, %bb.t ]
  store i32 0, ptr %i.f, align 4, !tbaa !25
  br label %bb.bk

bb.w:                                             ; preds = %bb.m, %bb.n
  %i.bi = load i32, ptr %i.i, align 8, !tbaa !30
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  call void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %i.bl, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.pre = load i32, ptr %i.i, align 8, !tbaa !30
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert93 = getelementptr inbounds [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !31
  br label %.thread79

.thread79:                                        ; preds = %bb.b, %bb.w
  %i.bm = phi ptr [ %i.m, %bb.b ], [ %.pre94, %bb.w ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8212 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !22, !range !39, !noundef !40
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = call noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %i.bm, ptr noundef %1, i1 noundef zeroext %i.bp)
  br i1 %i.bq, label %.thread83, label %bb.x

bb.x:                                             ; preds = %.thread79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8236
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !46, !range !39, !noundef !40 ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  store i8 %i.bs, ptr %i.b, align 1, !tbaa !47
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN8ScanTree9ScanErrorERb(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 16, !tbaa !25
  %i.bu = load i32, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %i.bx) #13
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #14
  %.pre95 = load i32, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %.pre96 = sext i32 %.pre95 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre-phi97 = phi i64 [ %.pre96, %bb.aa ], [ %i.bv, %bb.z ]
  %i.bz = phi i32 [ %.pre95, %bb.aa ], [ %i.bu, %bb.z ] ; 2 uses
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.i, align 8, !tbaa !30
  %i.cb = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi97
  store ptr null, ptr %i.cb, align 8, !tbaa !31
  %i.cc = icmp sgt i32 %i.bz, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ab
  %3 = zext nneg i32 %i.ca to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %4 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %4, ptr %i.i, align 8, !tbaa !30
  %i.cg = icmp sgt i64 %indvars.iv, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.ac, %bb.ab
  %i.ch = load i8, ptr %i.b, align 1, !tbaa !47, !range !39, !noundef !40
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8220 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !27
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !27
  br label %bb.ap

.critedge:                                        ; preds = %.lr.ph
  %i.cm = call ptr @wcsrchr(ptr noundef nonnull %i.f, i32 noundef signext 47) #15 ; 3 uses
  %.not61 = icmp eq ptr %i.cm, null
  br i1 %.not61, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.d, ptr noundef nonnull %i.cm, i64 noundef 2048)
  %i.cn = load i32, ptr %i.i, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8196
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !49
  %i.cq = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16420
  %i.ct = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.cs)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.cr, ptr noundef %i.ct, i64 noundef 2047)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 0, ptr %i.cm, align 4, !tbaa !25
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, i64 noundef 2048)
  %i.cu = call ptr @wcsrchr(ptr noundef nonnull %i.f, i32 noundef signext 47) #15 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cw, i64 noundef 2048)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cu, align 4, !tbaa !25
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i64 noundef 2048)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !23
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.da = load i8, ptr %i.bn, align 4, !tbaa !22, !range !39, !noundef !40
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.c, ptr noundef %1, i1 noundef zeroext %i.db)
  br i1 %i.dc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !36, !range !39, !noundef !40
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8232 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !50
  %i.di = or i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !50
  %i.dj = load i8, ptr %i.b, align 1, !tbaa !47, !range !39, !noundef !40
  %i.dk = shl nuw nsw i8 %i.dj, 1
  %i.dl = zext nneg i8 %i.dk to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.dm = load i8, ptr %i.b, align 1, !tbaa !47, !range !39, !noundef !40
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = select i1 %i.dn, i32 2, i32 3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge, %bb.ad
  %.3 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.ad ], [ %i.dl, %bb.an ], [ %i.do, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bk

.thread83:                                        ; preds = %bb.q, %.thread79
  %.25282 = phi i1 [ false, %.thread79 ], [ true, %bb.q ] ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !36, !range !39, !noundef !40
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %.thread83
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8212
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !22, !range !39, !noundef !40
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8205
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !43, !range !39, !noundef !40
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.bh, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.25282, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = load i32, ptr %i.i, align 8, !tbaa !30
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 25001
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !45, !range !39, !noundef !40
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !23
  %i.ef = icmp eq i32 %i.ee, 3
  %i.eg = select i1 %i.ef, i32 0, i32 3
  br label %bb.bk

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 33208 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28 ; 2 uses
  %.not62 = icmp eq ptr %i.ei, null
  br i1 %.not62, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.ei, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.ej, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8200
  %i.em = load i32, ptr %i.el, align 8, !tbaa !51
  %i.en = call noundef zeroext i1 @_ZN11CommandData13ExclDirByAttrEj(ptr noundef nonnull align 8 dereferenceable(100904) %i.ek, i32 noundef %i.em)
  br i1 %i.en, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.eo = select i1 %.25282, i32 1, i32 3
  br label %bb.bk

bb.ba:                                            ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  br i1 %.25282, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ep = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.eq = phi ptr [ %i.ep, %bb.bb ], [ @.str, %bb.ba ]
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.e, ptr noundef %i.eq, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef 2048)
  %i.er = call i64 @wcslen(ptr noundef nonnull %i.f) #15
  %i.es = call i64 @wcslen(ptr noundef nonnull %i.e) #15
  %i.et = add i64 %i.er, -2047
  %i.eu = add i64 %i.et, %i.es
  %i.ev = icmp ult i64 %i.eu, -2048
  br i1 %i.ev, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ex = icmp sgt i32 %i.ew, 1022
  br i1 %i.ex, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.f, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 2048)
  %i.ey = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ez = add nsw i32 %i.ey, 1                    ; 2 uses
  store i32 %i.ez, ptr %i.i, align 8, !tbaa !30
  br i1 %.25282, label %bb.bf, label %.thread87

bb.bf:                                            ; preds = %bb.be
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8196
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !49
  br label %.thread87

.thread87:                                        ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
end_hunk_0
