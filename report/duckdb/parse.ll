inline.NumInlined: 971
inline.NumDeleted: 313
begin_hunk_0_@_ZN10duckdb_re26Regexp10ParseState14ParseCharClassEPNS_11StringPieceEPPS0_PNS_12RegexpStatusE:bb.a
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  br label %_ZN10duckdb_re2L17StringPieceToRuneEPiPNS_11StringPieceEPNS_12RegexpStatusE.exit.thread

_ZN10duckdb_re2L17StringPieceToRuneEPiPNS_11StringPieceEPNS_12RegexpStatusE.exit.thread: ; preds = %_ZN10duckdb_re2L17StringPieceToRuneEPiPNS_11StringPieceEPNS_12RegexpStatusE.exit, %bb.u, %.thread28.i, %bb.v
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit111

bb.w:                                             ; preds = %bb.n
  %i.bi = icmp ugt i64 %i.ai, 2                   ; 2 uses
  %i.bj = icmp eq i8 %i.ak, 91
  %or.cond105 = and i1 %i.bi, %i.bj
  br i1 %or.cond105, label %bb.x, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bm = icmp eq i8 %i.bl, 58
  br i1 %i.bm, label %bb.y, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bn = load i32, ptr %0, align 8, !tbaa !7
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.bp = ptrtoint ptr %i.aj to i64
  %i.bq = icmp slt i64 %i.ai, 2
  br i1 %i.bq, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.bs = getelementptr i8, ptr %i.br, i64 -2
  %.not3243.i = icmp samesign ult i64 %i.ai, 4
  br i1 %.not3243.i, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.02944.i = phi ptr [ %i.bx, %.critedge2.i ], [ %i.bt, %.lr.ph.preheader.i ] ; 4 uses
  %i.bu = load i8, ptr %.02944.i, align 1, !tbaa !27
  %.not33.i = icmp eq i8 %i.bu, 58
  br i1 %.not33.i, label %bb.aa, label %.critedge2.i

bb.aa:                                            ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.02944.i, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !27
  %.not34.i = icmp eq i8 %i.bw, 93
  br i1 %.not34.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.aa, %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.02944.i, i64 1 ; 2 uses
  %.not32.i = icmp ugt ptr %i.bx, %i.bs
  br i1 %.not32.i, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread, label %.lr.ph.i, !llvm.loop !215

.critedge.i:                                      ; preds = %bb.aa
  %i.by = getelementptr i8, ptr %.02944.i, i64 2  ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bp                    ; 5 uses
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i, label %.loopexit107

.lr.ph.preheader.i.i.i:                           ; preds = %.critedge.i
  %i.cb = icmp eq ptr %i.by, %i.aj
  br i1 %i.cb, label %.lr.ph.i.us.i.i, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr @_ZN10duckdb_re212posix_groupsE, i64 %indvars.iv.i.us.i.i ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !190 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit, label %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us.i.i

_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us.i.i: ; preds = %.lr.ph.i.us.i.i
  %char0.i.i = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %char0.i.i, 0
  br i1 %i.cf, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us.i.i: ; preds = %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us.i.i
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %.loopexit107, label %.lr.ph.i.us.i.i, !llvm.loop !194

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr @_ZN10duckdb_re212posix_groupsE, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !190 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i, label %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i

_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i:    ; preds = %.lr.ph.i.i.i
  %i.cj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ch) #33
  %i.ck = icmp eq i64 %i.cj, %i.ca
  br i1 %i.ck, label %bb.ab, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i

bb.ab:                                            ; preds = %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i
  %i.cl = icmp eq ptr %i.ch, %i.aj
  br i1 %i.cl, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i: ; preds = %bb.ab
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ch, ptr nonnull readonly %i.aj, i64 %i.ca)
  %i.cm = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cm, label %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit107, label %.lr.ph.i.i.i, !llvm.loop !194

_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit: ; preds = %bb.ab, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i, %.lr.ph.i.us.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us.i.i
  %.ph.i = phi ptr [ %i.cc, %.lr.ph.i.us.i.i ], [ %i.cc, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.us.i.i ], [ %i.cg, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ca
  store ptr %i.cn, ptr %1, align 8, !tbaa !97
  %i.co = sub i64 %i.ai, %i.ca
  store i64 %i.co, ptr %i.b, align 8, !tbaa !101
  %i.cp = getelementptr inbounds nuw i8, ptr %.ph.i, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !216
  call fastcc void @_ZN10duckdb_re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE(ptr noundef %i.bo, ptr noundef nonnull %.ph.i, i32 noundef %i.cq, i32 noundef %i.bn)
  br label %.backedge

.loopexit107:                                     ; preds = %.critedge.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.us.i.i
  store i32 4, ptr %3, align 8, !tbaa !57
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aj, ptr %i.cr, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !18
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br label %.loopexit111

_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread: ; preds = %.critedge2.i, %bb.z, %bb.y, %bb.x, %bb.w
  %i.cs = icmp eq i8 %i.ak, 92
  %or.cond219 = and i1 %i.bi, %i.cs
  br i1 %or.cond219, label %bb.ac, label %.thread186

bb.ac:                                            ; preds = %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !27
  switch i8 %i.cu, label %.thread186 [
    i8 112, label %bb.ad
    i8 80, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.cv = load i32, ptr %0, align 8, !tbaa !7
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.cx = call noundef i32 @_ZN10duckdb_re217ParseUnicodeGroupEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE(ptr noundef nonnull %1, i32 noundef %i.cv, ptr noundef %i.cw, ptr noundef %3)
  switch i32 %i.cx, label %.thread186 [
    i32 0, label %.backedge
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br label %.loopexit111

.thread186:                                       ; preds = %bb.o, %bb.q, %bb.ac, %bb.ad, %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit.thread
  %i.cy = load i32, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.cz = and i32 %i.cy, 128
  %.not.i80 = icmp eq i32 %i.cz, 0
  br i1 %.not.i80, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %.thread186
  %i.da = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.db = icmp ult i64 %i.da, 2
  br i1 %i.db, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %1, align 8, !tbaa !97    ; 4 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !27
  %.not8.i = icmp ne i8 %i.dd, 92
  %brmerge = select i1 %.not8.i, i1 true, i1 %i.ag
  br i1 %brmerge, label %.loopexit, label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %bb.ag, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87
  %indvars.iv.i.i.i85 = phi i64 [ %indvars.iv.next.i.i.i88, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87 ], [ 0, %bb.ag ] ; 2 uses
  %i.de = getelementptr inbounds nuw [48 x i8], ptr @_ZN10duckdb_re211perl_groupsE, i64 %indvars.iv.i.i.i85 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !190 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87, label %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86

_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86:  ; preds = %.lr.ph.i.i.i84
  %i.dh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #33
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ah, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87

bb.ah:                                            ; preds = %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86
  %i.dj = icmp eq ptr %i.df, %i.dc
  br i1 %i.dj, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90: ; preds = %bb.ah
  %i.dk = load i16, ptr %i.df, align 1
  %i.dl = load i16, ptr %i.dc, align 1
  %i.dm = icmp ne i16 %i.dk, %i.dl
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86, %.lr.ph.i.i.i84
  %indvars.iv.next.i.i.i88 = add nuw nsw i64 %indvars.iv.i.i.i85, 1 ; 2 uses
  %exitcond.not.i.i.i89 = icmp eq i64 %indvars.iv.next.i.i.i88, %wide.trip.count.i.i.i83
  br i1 %exitcond.not.i.i.i89, label %.loopexit, label %.lr.ph.i.i.i84, !llvm.loop !194

.thread187:                                       ; preds = %bb.ah, %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store ptr %i.dp, ptr %1, align 8, !tbaa !97
  %i.dq = add i64 %i.da, -2
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !101
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !216
  call fastcc void @_ZN10duckdb_re2L9AddUGroupEPNS_16CharClassBuilderEPKNS_6UGroupEiNS_6Regexp10ParseFlagsE(ptr noundef %i.dr, ptr noundef nonnull %i.de, i32 noundef %i.dt, i32 noundef %i.cy)
  br label %.backedge

.loopexit:                                        ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87, %bb.ag, %.thread186, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i32 0, ptr %5, align 4, !tbaa !46
  store i32 0, ptr %i.ah, align 4, !tbaa !177
  %i.du = call noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState12ParseCCRangeEPNS_11StringPieceEPNS_9RuneRangeERKS2_PNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %3)
  br i1 %i.du, label %bb.ai, label %.loopexit111.loopexit

bb.ai:                                            ; preds = %.loopexit
  %i.dv = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.dw = load i32, ptr %5, align 4, !tbaa !46
  %i.dx = load i32, ptr %i.ah, align 4, !tbaa !177
  %i.dy = load i32, ptr %0, align 8, !tbaa !7
  %i.dz = or i32 %i.dy, 4
  call void @_ZN10duckdb_re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.backedge

.backedge:                                        ; preds = %bb.ai, %.thread187, %bb.ad, %_ZN10duckdb_re2L11ParseCCNameEPNS_11StringPieceENS_6Regexp10ParseFlagsEPNS_16CharClassBuilderEPNS_12RegexpStatusE.exit
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %._crit_edge, label %bb.m, !llvm.loop !217

._crit_edge:                                      ; preds = %.backedge, %bb.f, %bb.l
  store i32 5, ptr %3, align 8, !tbaa !57
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br label %.loopexit111

.critedge:                                        ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ed, ptr %1, align 8, !tbaa !97
  %i.ee = add i64 %i.ai, -1
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !101
  br i1 %i.s, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !27
  call void @_ZN10duckdb_re216CharClassBuilder6NegateEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ef)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge
  store ptr %i.h, ptr %2, align 8, !tbaa !62
  br label %.loopexit111

bb.al:                                            ; preds = %bb.k, %bb.j
  %.sink = phi ptr [ %i.k, %bb.k ], [ %i.h, %bb.j ]
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn

.loopexit111.loopexit:                            ; preds = %.loopexit
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit111

.loopexit111:                                     ; preds = %.loopexit111.loopexit, %_ZN10duckdb_re2L17StringPieceToRuneEPiPNS_11StringPieceEPNS_12RegexpStatusE.exit.thread, %.loopexit107, %bb.ae, %._crit_edge, %bb.ak, %bb.c
  %.5 = phi i1 [ false, %bb.c ], [ false, %._crit_edge ], [ true, %bb.ak ], [ false, %_ZN10duckdb_re2L17StringPieceToRuneEPiPNS_11StringPieceEPNS_12RegexpStatusE.exit.thread ], [ false, %bb.ae ], [ false, %.loopexit107 ], [ false, %.loopexit111.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.5
}

declare void @_ZN10duckdb_re216CharClassBuilder6NegateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState14ParsePerlFlagsEPNS_11StringPieceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 11 uses
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %4 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = and i32 %i.b, 512
  %.not43 = icmp eq i32 %i.c, 0
  br i1 %.not43, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !97     ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27
  %.not44 = icmp eq i8 %i.h, 40
  br i1 %.not44, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  %.not45 = icmp eq i8 %i.j, 63
  br i1 %.not45, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  store i32 1, ptr %i.l, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i8 0, ptr %3, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.6, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.o = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !77
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.q = getelementptr i8, ptr %i.o, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r
  store ptr %i.p, ptr %i.s, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.v) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #30
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.an

common.resume:                                    ; preds = %bb.ak, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.cs, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 4 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !97
  %i.ac = add i64 %i.e, -2                        ; 4 uses
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !101
  %i.ad = icmp ugt i64 %i.ac, 2
  br i1 %i.ad, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.af = icmp eq i8 %i.ae, 80
  br i1 %i.af, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = icmp eq i8 %i.ah, 60
  br i1 %i.ai, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aj = call noundef i64 @_ZNK10duckdb_re211StringPiece4findEcm(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef signext 62, i64 noundef 2) ; 3 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = call fastcc noundef zeroext i1 @_ZN10duckdb_re2L11IsValidUTF8ERKNS_11StringPieceEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.am)
  br i1 %i.an, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  store i32 14, ptr %i.ao, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  br label %bb.an

bb.m:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -2 ; 2 uses
  %i.as = add i64 %i.aj, 3                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = add i64 %i.aj, -2
  store ptr %i.at, ptr %4, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = call fastcc noundef zeroext i1 @_ZN10duckdb_re2L11IsValidUTF8ERKNS_11StringPieceEPNS_12RegexpStatusE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ax)
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.az = call fastcc noundef zeroext i1 @_ZN10duckdb_re2L18IsValidCaptureNameERKNS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 3 uses
  store i32 14, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bc = call noundef zeroext i1 @_ZN10duckdb_re26Regexp10ParseState11DoLeftParenERKNS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.be = load ptr, ptr %1, align 8, !tbaa !97    ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  store ptr %i.bi, ptr %1, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !101
  %i.bl = sub i64 %i.bk, %i.bh
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !101
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o
  %.039 = phi i1 [ true, %bb.p ], [ false, %bb.o ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.an

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = icmp eq i64 %i.ac, 0
  br i1 %i.bn, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.al
  %.03771140 = phi i8 [ %.138, %bb.al ], [ 0, %bb.r ] ; 6 uses
  %.03572139 = phi i1 [ %.136, %bb.al ], [ false, %bb.r ]
  %.03373138 = phi i32 [ %.134, %bb.al ], [ %i.b, %bb.r ] ; 10 uses
  %i.bo = phi i64 [ %i.cb, %bb.al ], [ %i.ac, %bb.r ] ; 2 uses
  %i.bp = phi ptr [ %i.ca, %bb.al ], [ %i.ab, %bb.r ] ; 3 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 4)
  %i.br = trunc nuw nsw i64 %.sroa.speculated.i to i32
  %i.bs = call noundef i32 @_ZN10duckdb_re28fullruneEPKci(ptr noundef %i.bp, i32 noundef %i.br)
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %.thread28.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bt = call noundef i32 @_ZN10duckdb_re210chartoruneEPiPKc(ptr noundef nonnull %i.a, ptr noundef %i.bp) ; 3 uses
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1114111
  br i1 %i.bv, label %.thread28.i, label %bb.t

end_hunk_0
