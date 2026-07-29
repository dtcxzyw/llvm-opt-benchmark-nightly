inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@RestartModel:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 35
  store i8 4, ptr %i.dg, align 1, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 38
  store i8 3, ptr %i.di, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dh, align 1, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 39
  store i8 4, ptr %i.dj, align 1, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 42
  store i8 3, ptr %i.dl, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dk, align 1, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 43
  store i8 4, ptr %i.dm, align 1, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 46
  store i8 3, ptr %i.do, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dn, align 1, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 47
  store i8 4, ptr %i.dp, align 1, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cd, i64 50
  store i8 3, ptr %i.dr, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dq, align 1, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 51
  store i8 4, ptr %i.ds, align 1, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 54
  store i8 3, ptr %i.du, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dt, align 1, !tbaa !60
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cd, i64 55
  store i8 4, ptr %i.dv, align 1, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cd, i64 58
  store i8 3, ptr %i.dx, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dw, align 1, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cd, i64 59
  store i8 4, ptr %i.dy, align 1, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cd, i64 60
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 62
  store i8 3, ptr %i.ea, align 1, !tbaa !59
  store i16 %i.cg, ptr %i.dz, align 1, !tbaa !60
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cd, i64 63
  store i8 4, ptr %i.eb, align 1, !tbaa !61
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 25
  br i1 %exitcond95.not, label %bb.c, label %.preheader, !llvm.loop !62

bb.c:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @Ppmd7_MakeEscFreq(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %.not = icmp eq i16 %i.b, 256
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = sub i32 %i.c, %1                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 4, !tbaa !48
  %i.t = zext i16 %i.s to i32
  %i.u = sub nsw i32 %i.t, %i.c
  %i.v = icmp ult i32 %i.d, %i.u
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !49
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.c, 11
  %i.ac = icmp samesign ugt i32 %i.ab, %i.aa
  %i.ad = select i1 %i.ac, i64 2, i64 0
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = icmp ugt i32 %1, %i.d
  %i.ag = select i1 %i.af, i64 4, i64 0
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !63
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak ; 4 uses
  %i.am = load i16, ptr %i.al, align 1, !tbaa !60 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !59
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = lshr i32 %i.an, %i.aq                   ; 2 uses
  %i.as = trunc nuw i32 %i.ar to i16
  %i.at = sub i16 %i.am, %i.as
  store i16 %i.at, ptr %i.al, align 1, !tbaa !60
  %i.au = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1196
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 1, %bb.c ], [ %i.au, %bb.b ]
  %.0 = phi ptr [ %i.av, %bb.c ], [ %i.al, %bb.b ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd7_Update1(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !55
  %i.e = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !tbaa !55
  %i.f = load ptr, ptr %0, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !49
  %i.i = add i16 %i.h, 4
  store i16 %i.i, ptr %i.g, align 2, !tbaa !49
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = icmp ugt i8 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.b, i64 6, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %i.m, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !50
  %i.n = load i8, ptr %i.j, align 1, !tbaa !55
  %i.o = icmp ugt i8 %i.n, 124
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.p = phi ptr [ %i.m, %bb.b ], [ %.pre, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !65
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load i16, ptr %i.v, align 1, !tbaa !66
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !39
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = icmp ugt ptr %i.aa, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ah, align 8, !tbaa !44
  store ptr %i.aa, ptr %0, align 8, !tbaa !45
  br label %NextContext.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Rescale(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.i, i64 6, i1 false), !tbaa.struct !64
  %.not111 = icmp eq ptr %i.i, %i.g
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.088112 = phi ptr [ %i.j, %.lr.ph ], [ %i.i, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.088112, i64 -6 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.088112, ptr noundef nonnull align 1 dereferenceable(6) %i.j, i64 6, i1 false), !tbaa.struct !64
  %.not = icmp eq ptr %i.j, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.088.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.j, %.lr.ph ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.088.lcssa, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.k = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !49
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.088.lcssa, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 %i.n, %i.q
  %i.s = add i8 %i.p, 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32                      ; 2 uses
  %i.x = zext i8 %i.s to i32
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = trunc nuw i32 %i.z to i8
  store i8 %i.aa, ptr %i.o, align 1, !tbaa !55
  %i.ab = load i16, ptr %i.k, align 4, !tbaa !48
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %._crit_edge
  %.189 = phi ptr [ %.088.lcssa, %._crit_edge ], [ %i.ae, %bb.f ] ; 5 uses
  %.086 = phi i32 [ %i.r, %._crit_edge ], [ %i.ai, %bb.f ]
  %.085 = phi i32 [ %i.z, %._crit_edge ], [ %i.am, %bb.f ]
  %.084 = phi i32 [ %i.ad, %._crit_edge ], [ %i.aw, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.189, i64 6 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.189, i64 7 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !55
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = sub i32 %.086, %i.ah                    ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.w
  %i.ak = lshr i32 %i.aj, 1                       ; 3 uses
  %i.al = trunc nuw i32 %i.ak to i8               ; 3 uses
  store i8 %i.al, ptr %i.af, align 1, !tbaa !55
  %i.am = add i32 %i.ak, %.085                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.189, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i32
  %i.aq = icmp samesign ugt i32 %i.ak, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.012.0.copyload = load i8, ptr %i.ae, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.189, i64 8
  %i.ar = load i32, ptr %.sroa.5.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.091 = phi ptr [ %i.ae, %bb.c ], [ %i.as, %bb.e ] ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.091, i64 -6 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.091, ptr noundef nonnull align 1 dereferenceable(6) %i.as, i64 6, i1 false), !tbaa.struct !64
  %.not100 = icmp eq ptr %i.as, %i.g
  br i1 %.not100, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds i8, ptr %.091, i64 -11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = icmp ult i8 %i.au, %i.al
  br i1 %i.av, label %bb.d, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.d, %bb.e
  store i8 %.sroa.012.0.copyload, ptr %i.as, align 1, !tbaa !15
  %.sroa.414.0..sroa_idx15 = getelementptr inbounds i8, ptr %.091, i64 -5
  store i8 %i.al, ptr %.sroa.414.0..sroa_idx15, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds i8, ptr %.091, i64 -4
  store i32 %i.ar, ptr %.sroa.5.0..sroa_idx17, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
  %i.aw = add i32 %.084, -1                       ; 2 uses
  %.not101 = icmp eq i32 %i.aw, 0
  br i1 %.not101, label %bb.g, label %bb.b, !llvm.loop !69

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.189, i64 7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = icmp eq i8 %i.ay, 0
  %.pre120 = load ptr, ptr %0, align 8, !tbaa !45 ; 8 uses
  br i1 %i.az, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ba = load i16, ptr %.pre120, align 4, !tbaa !48 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.290 = phi ptr [ %i.ae, %bb.h ], [ %i.bc, %bb.i ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.h ], [ %i.bb, %bb.i ]
  %i.bb = add i32 %.1, 1                          ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.290, i64 -6
  %i.bd = getelementptr inbounds i8, ptr %.290, i64 -5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !55
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.i, label %bb.j, !llvm.loop !70

bb.j:                                             ; preds = %bb.i
  %i.bg = zext i16 %i.ba to i32                   ; 2 uses
  %i.bh = add i32 %i.bb, %i.ai                    ; 3 uses
  %i.bi = trunc i32 %i.bb to i16
  %i.bj = sub i16 %i.ba, %i.bi                    ; 3 uses
  store i16 %i.bj, ptr %.pre120, align 4, !tbaa !48
  %.not103 = icmp eq i16 %i.bj, 1
  br i1 %.not103, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 1, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bk = load i32, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.187 = phi i32 [ %i.bh, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.copyload, %bb.k ], [ %i.bm, %bb.l ] ; 2 uses
  %i.bl = lshr i8 %.sroa.4.0, 1
  %i.bm = sub i8 %.sroa.4.0, %i.bl                ; 2 uses
  %i.bn = lshr i32 %.187, 1
  %i.bo = icmp ugt i32 %.187, 3
  br i1 %i.bo, label %bb.l, label %bb.s, !llvm.loop !71

bb.m:                                             ; preds = %bb.j
  %i.bp = zext i16 %i.bj to i32
  %i.bq = add nuw nsw i32 %i.bg, 1
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = add nuw nsw i32 %i.bp, 1                ; 2 uses
  %i.bt = lshr i32 %i.bs, 1                       ; 4 uses
  %.not102 = icmp eq i32 %i.br, %i.bt
  br i1 %.not102, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 3 uses
  %i.bv = add nsw i32 %i.br, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15  ; 3 uses
  %i.bz = add nsw i32 %i.bt, -1                   ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15  ; 2 uses
  %i.cd = icmp eq i8 %i.by, %i.cc
  br i1 %i.cd, label %.ShrinkUnits.exit_crit_edge, label %bb.o

.ShrinkUnits.exit_crit_edge:                      ; preds = %bb.n
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %ShrinkUnits.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.cf = zext i8 %i.cc to i64                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 7 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !4
  %i.cm = and i32 %i.bs, 2
  %lcmp.mod.not = icmp eq i32 %i.cm, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.p
  %i.cn = load i32, ptr %i.g, align 4, !tbaa !4
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cw = add nsw i32 %i.bt, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.p
  %.033.i.unr = phi ptr [ %i.ck, %bb.p ], [ %i.cv, %.prol.loopexit.unr-lcssa ]
  %.032.i.unr = phi ptr [ %i.g, %bb.p ], [ %i.cu, %.prol.loopexit.unr-lcssa ]
  %.0.i.unr = phi i32 [ %i.bt, %bb.p ], [ %i.cw, %.prol.loopexit.unr-lcssa ]
  %i.cx = icmp eq i32 %i.bz, 0
  br i1 %i.cx, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.033.i = phi ptr [ %i.dp, %.new ], [ %.033.i.unr, %.prol.loopexit ] ; 7 uses
  %.032.i = phi ptr [ %i.do, %.new ], [ %.032.i.unr, %.prol.loopexit ] ; 7 uses
  %.0.i = phi i32 [ %i.dq, %.new ], [ %.0.i.unr, %.prol.loopexit ]
  %i.cy = load i32, ptr %.032.i, align 4, !tbaa !4
  store i32 %i.cy, ptr %.033.i, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.032.i, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %.032.i, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !4
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.032.i, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.033.i, i64 20
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %.033.i, i64 24
  %i.dq = add i32 %.0.i, -2                       ; 2 uses
  %.not37.i.1 = icmp eq i32 %i.dq, 0
  br i1 %.not37.i.1, label %.unr-lcssa, label %.new, !llvm.loop !72

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.dr = zext i8 %i.by to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  store i32 %i.dt, ptr %i.g, align 4, !tbaa !4
  %i.du = ptrtoint ptr %i.g to i64
  %i.dv = ptrtoint ptr %i.ci to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !4
  br label %ShrinkUnits.exit

bb.q:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.dz = zext i8 %i.by to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cf
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = sub nsw i32 %i.ec, %i.ef                ; 3 uses
  %i.eh = mul nuw nsw i32 %i.ef, 12
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ei ; 3 uses
  %i.ek = add nsw i32 %i.eg, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i64                    ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !15
  %i.er = zext i8 %i.eq to i32
  %.not.i.i = icmp eq i32 %i.eg, %i.er
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.r

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.pre22.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %SplitBlock.exit.i

bb.r:                                             ; preds = %bb.q
  %i.es = add nuw nsw i64 %i.eo, 4294967295
  %i.et = and i64 %i.es, 4294967295               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = mul nuw nsw i32 %i.ew, 12
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ey ; 2 uses
  %i.fa = xor i32 %i.ew, -1
  %i.fb = add nsw i32 %i.eg, %i.fa
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  store i32 %i.fe, ptr %i.ez, align 4, !tbaa !4
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.fg = ptrtoint ptr %i.ez to i64
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.fd, align 4, !tbaa !4
  br label %SplitBlock.exit.i

SplitBlock.exit.i:                                ; preds = %bb.r, %._crit_edge.i.i
  %i.fk = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ff, %bb.r ]
  %.pre-phi23.i.i = phi i64 [ %.pre22.i.i, %._crit_edge.i.i ], [ %i.fh, %bb.r ]
  %.pre-phi.i.i = phi i64 [ %i.eo, %._crit_edge.i.i ], [ %i.et, %bb.r ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.pre-phi.i.i ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  store i32 %i.fm, ptr %i.ej, align 4, !tbaa !4
  %i.fn = ptrtoint ptr %i.ej to i64
  %i.fo = sub i64 %i.fn, %.pre-phi23.i.i
  %i.fp = trunc i64 %i.fo to i32
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !4
  br label %ShrinkUnits.exit

ShrinkUnits.exit:                                 ; preds = %.ShrinkUnits.exit_crit_edge, %.unr-lcssa, %SplitBlock.exit.i
  %i.fq = phi ptr [ %i.fk, %SplitBlock.exit.i ], [ %i.ci, %.unr-lcssa ], [ %.pre, %.ShrinkUnits.exit_crit_edge ]
  %.034.i = phi ptr [ %i.g, %SplitBlock.exit.i ], [ %i.ck, %.unr-lcssa ], [ %i.g, %.ShrinkUnits.exit_crit_edge ]
  %i.fr = ptrtoint ptr %.034.i to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre120, i64 4
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !52
  br label %.thread

bb.s:                                             ; preds = %bb.l
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.fx = add nuw nsw i32 %i.bg, 1
  %i.fy = lshr i32 %i.fx, 1
  %i.fz = add nsw i32 %i.fy, -1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ge = zext i8 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4
  store i32 %i.gg, ptr %i.g, align 4, !tbaa !4
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gi = ptrtoint ptr %i.g to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  store i32 %i.gl, ptr %i.gf, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre120, i64 2 ; 2 uses
  store ptr %i.gm, ptr %i.h, align 8, !tbaa !50
  store i8 %.sroa.0.0.copyload, ptr %i.gm, align 2, !tbaa !15
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %.pre120, i64 3
  store i8 %i.bm, ptr %.sroa.4.0..sroa_idx2, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.pre120, i64 4
  store i32 %i.bk, ptr %.sroa.7.0..sroa_idx5, align 4
  br label %bb.t

.thread:                                          ; preds = %ShrinkUnits.exit, %bb.m, %bb.g
  %.3 = phi i32 [ %i.ai, %bb.g ], [ %i.bh, %bb.m ], [ %i.bh, %ShrinkUnits.exit ] ; 2 uses
  %i.gn = add i32 %.3, %i.am
  %i.go = lshr i32 %.3, 1
  %i.gp = sub i32 %i.gn, %i.go
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre120, i64 2
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !49
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre120, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv
  store ptr %i.gw, ptr %i.h, align 8, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd7_Update1_0(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !55    ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !49   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign ugt i32 %i.f, %i.j
  %i.l = zext i1 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.l, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = add i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 4, !tbaa !41
  %i.q = add i16 %i.i, 4
  store i16 %i.q, ptr %i.h, align 2, !tbaa !49
  %i.r = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.r, ptr %i.c, align 1, !tbaa !55
  %i.s = icmp ugt i8 %i.r, 124
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !65
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !66
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ak = icmp ugt ptr %i.ae, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !44
  store ptr %i.ae, ptr %0, align 8, !tbaa !45
  br label %NextContext.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd7_UpdateBin(ptr nofree noundef captures(none) initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !55    ; 2 uses
  %i.e = icmp sgt i8 %i.d, -1
  %i.f = zext i1 %i.e to i8
  %i.g = add i8 %i.d, %i.f
  store i8 %i.g, ptr %i.c, align 1, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !65
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i16, ptr %i.q, align 1, !tbaa !66
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = icmp ugt ptr %i.v, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !44
  store ptr %i.v, ptr %0, align 8, !tbaa !45
  br label %NextContext.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd7_Update2(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !49
  %i.d = add i16 %i.c, 4
  store i16 %i.d, ptr %i.b, align 2, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !55
  %i.i = add i8 %i.h, 4                           ; 2 uses
  store i8 %i.i, ptr %i.g, align 1, !tbaa !55
  %i.j = icmp ugt i8 %i.i, 124
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.l, ptr %i.m, align 4, !tbaa !41
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @UpdateModel(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i32, ptr %i.c, align 1              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !55
  %i.g = icmp ult i8 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 4 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !48
  %i.p = icmp eq i16 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55    ; 2 uses
  %i.s = icmp ult i8 %i.r, 32
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw nsw i8 %i.r, 1
  store i8 %i.t, ptr %i.q, align 1, !tbaa !55
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !53
  %i.z = load i8, ptr %i.b, align 1, !tbaa !53    ; 2 uses
  %.not187 = icmp eq i8 %i.y, %i.z
  br i1 %.not187, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0169 = phi ptr [ %i.aa, %.preheader ], [ %i.x, %bb.f ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0169, i64 6 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !53
  %.not188 = icmp eq i8 %i.ab, %i.z
  br i1 %.not188, label %bb.g, label %.preheader, !llvm.loop !73

bb.g:                                             ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %.0169, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %.0169, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !55
  %.not189 = icmp ult i8 %i.ad, %i.af
  br i1 %.not189, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.aa, i64 6, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) %.0169, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0169, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1170 = phi ptr [ %.0169, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.1170, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !55  ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 115
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %narrow = add nuw nsw i8 %i.ah, 2
  store i8 %narrow, ptr %i.ag, align 1, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !49
  %i.al = add i16 %i.ak, 2
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d, %bb.e, %bb.b, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !39
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !44
  store ptr %i.ap, ptr %0, align 8, !tbaa !45
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.ao

bb.o:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !36
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !15
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32                  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37
  %.not190 = icmp ult ptr %i.bf, %i.bn
  br i1 %.not190, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.q:                                             ; preds = %bb.o
  %.not191 = icmp eq i32 %i.d, 0
  br i1 %.not191, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not192 = icmp ugt i32 %i.d, %i.bl
  br i1 %.not192, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not193 = icmp eq ptr %i.bo, null
  br i1 %.not193, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bu = phi ptr [ %i.bp, %bb.t ], [ %i.bh, %bb.r ] ; 2 uses
  %.1 = phi i32 [ %i.bt, %bb.t ], [ %i.d, %bb.r ] ; 3 uses
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !39
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.am, align 8, !tbaa !39
  %i.bx = icmp eq i32 %i.bw, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  br i1 %i.bx, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  %i.ca = icmp ne ptr %i.bz, %.pre
  %i.cb = load ptr, ptr %i.bc, align 8, !tbaa !36
  %.neg = sext i1 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.neg
  store ptr %i.cc, ptr %i.bc, align 8, !tbaa !36
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i32 %i.bl, ptr %i.ce, align 1
  %i.cf = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.cl = phi ptr [ %i.bu, %bb.v ], [ %i.bu, %bb.u ], [ %i.cg, %bb.w ] ; 2 uses
  %i.cm = phi ptr [ %.pre, %bb.v ], [ %.pre, %bb.u ], [ %i.cf, %bb.w ] ; 3 uses
  %.2 = phi i32 [ %.1, %bb.v ], [ %.1, %bb.u ], [ %i.ck, %bb.w ]
  %.0 = phi i32 [ %.1, %bb.v ], [ %i.bl, %bb.u ], [ %i.bl, %bb.w ]
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !48 ; 2 uses
  %i.co = zext i16 %i.cn to i32                   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 2 uses
  %.not194227 = icmp eq ptr %i.cq, %i.cm
  br i1 %.not194227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !55
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.co, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !49
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.df = icmp ugt i16 %i.cn, 3
  %i.dg = zext i1 %i.df to i32
  %.neg225 = add nuw nsw i32 %i.cy, 1
  %.reass = sub nsw i32 %.neg225, %i.cv
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %.critedge203
  %i.dh = phi ptr [ %i.cl, %.lr.ph ], [ %i.js, %.critedge203 ] ; 5 uses
  %.0168228 = phi ptr [ %i.cq, %.lr.ph ], [ %i.jw, %.critedge203 ] ; 9 uses
  %i.di = load i16, ptr %.0168228, align 4, !tbaa !48 ; 4 uses
  %i.dj = zext i16 %i.di to i32                   ; 6 uses
  %.not195 = icmp eq i16 %i.di, 1
  br i1 %.not195, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = and i32 %i.dj, 1
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.dm = lshr exact i32 %i.dj, 1                 ; 4 uses
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 3 uses
  %i.dr = zext nneg i32 %i.dm to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %.not197 = icmp eq i8 %i.dq, %i.dt
  br i1 %.not197, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = zext i8 %i.dq to i32
  %i.dv = add nuw nsw i32 %i.du, 1                ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %bb.ac, label %AllocUnits.exit.thread

AllocUnits.exit.thread:                           ; preds = %bb.ab
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !4
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dw
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 12               ; 2 uses
  %i.eg = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.eh = load ptr, ptr %i.dd, align 8, !tbaa !51 ; 3 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = trunc i64 %i.ek to i32
  %.not16.i = icmp ugt i32 %i.ef, %i.el
  br i1 %.not16.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = zext nneg i32 %i.ef to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  store ptr %i.en, ptr %i.dd, align 8, !tbaa !51
  br label %AllocUnits.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eo = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef range(i32 0, 257) %i.dv)
  br label %AllocUnits.exit

AllocUnits.exit:                                  ; preds = %bb.ad, %bb.ae
  %.0.i = phi ptr [ %i.eo, %bb.ae ], [ %i.eh, %bb.ad ] ; 2 uses
  %.not198.not = icmp eq ptr %.0.i, null
  br i1 %.not198.not, label %.thread214, label %AllocUnits.exit._crit_edge

AllocUnits.exit._crit_edge:                       ; preds = %AllocUnits.exit
  %.pre229 = load ptr, ptr %i.bg, align 8, !tbaa !8
  br label %bb.af

.thread214:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.af:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.ep = phi ptr [ %i.dh, %AllocUnits.exit.thread ], [ %.pre229, %AllocUnits.exit._crit_edge ] ; 3 uses
  %.0.i211 = phi ptr [ %i.ea, %AllocUnits.exit.thread ], [ %.0.i, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0168228, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !52 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es ; 6 uses
  %i.eu = and i32 %i.dj, 2
  %lcmp.mod.not = icmp eq i32 %i.eu, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.af
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !4
  store i32 %i.ev, ptr %.0.i211, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i211, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i211, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i211, i64 12
  %i.fe = add nsw i32 %i.dm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.af
  %.0167.unr = phi ptr [ %.0.i211, %bb.af ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.0166.unr = phi ptr [ %i.et, %bb.af ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.0165.unr = phi i32 [ %i.dm, %bb.af ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %i.ff = icmp eq i32 %i.dn, 0
  br i1 %i.ff, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0167 = phi ptr [ %i.fx, %.new ], [ %.0167.unr, %.prol.loopexit ] ; 7 uses
  %.0166 = phi ptr [ %i.fw, %.new ], [ %.0166.unr, %.prol.loopexit ] ; 7 uses
  %.0165 = phi i32 [ %i.fy, %.new ], [ %.0165.unr, %.prol.loopexit ]
  %i.fg = load i32, ptr %.0166, align 4, !tbaa !4
  store i32 %i.fg, ptr %.0167, align 4, !tbaa !4
  %i.fh = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0167, i64 4
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0166, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0167, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %.0166, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %.0167, i64 12
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0166, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %.0167, i64 16
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0166, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %.0167, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !4
  %i.fw = getelementptr inbounds nuw i8, ptr %.0166, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %.0167, i64 24
  %i.fy = add i32 %.0165, -2                      ; 2 uses
  %.not199.1 = icmp eq i32 %i.fy, 0
  br i1 %.not199.1, label %.unr-lcssa, label %.new, !llvm.loop !74

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.fz = zext i8 %i.dq to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  store i32 %i.gb, ptr %i.et, align 4, !tbaa !4
  %i.gc = ptrtoint ptr %i.ep to i64
  store i32 %i.er, ptr %i.ga, align 4, !tbaa !4
  %i.gd = ptrtoint ptr %.0.i211 to i64
  %i.ge = sub i64 %i.gd, %i.gc
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.eq, align 4, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.aa, %bb.z
  %i.gg = phi ptr [ %i.ep, %.unr-lcssa ], [ %i.dh, %bb.aa ], [ %i.dh, %bb.z ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !49 ; 2 uses
  %i.gj = zext i16 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.dj, 1
  %i.gl = icmp samesign ult i32 %i.gk, %i.co
  %i.gm = zext i1 %i.gl to i16
  %i.gn = add i16 %i.gi, %i.gm
  %i.go = shl nuw nsw i32 %i.dj, 2
  %i.gp = icmp samesign ule i32 %i.go, %i.co
  %i.gq = shl nuw nsw i32 %i.dj, 3
  %i.gr = icmp samesign uge i32 %i.gq, %i.gj
  %i.gs = and i1 %i.gp, %i.gr
  %i.gt = select i1 %i.gs, i16 2, i16 0
  %i.gu = add i16 %i.gn, %i.gt
  br label %bb.al

bb.ag:                                            ; preds = %bb.y
  %i.gv = load i32, ptr %i.da, align 4, !tbaa !4  ; 2 uses
  %.not.i204 = icmp eq i32 %i.gv, 0
  br i1 %.not.i204, label %bb.ah, label %AllocUnits.exit207.thread

AllocUnits.exit207.thread:                        ; preds = %bb.ag
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  store i32 %i.gy, ptr %i.da, align 4, !tbaa !4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr %i.db, align 4, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 12               ; 2 uses
  %i.hc = load ptr, ptr %i.dc, align 8, !tbaa !43
  %i.hd = load ptr, ptr %i.dd, align 8, !tbaa !51 ; 3 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  %.not16.i206 = icmp ugt i32 %i.hb, %i.hh
  br i1 %.not16.i206, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = zext nneg i32 %i.hb to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi
  store ptr %i.hj, ptr %i.dd, align 8, !tbaa !51
  br label %AllocUnits.exit207

bb.aj:                                            ; preds = %bb.ah
  %i.hk = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit207

AllocUnits.exit207:                               ; preds = %bb.ai, %bb.aj
  %.0.i205 = phi ptr [ %i.hk, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.not196.not = icmp eq ptr %.0.i205, null
  br i1 %.not196.not, label %.thread221, label %bb.ak

.thread221:                                       ; preds = %AllocUnits.exit207
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.ak:                                            ; preds = %AllocUnits.exit207, %AllocUnits.exit207.thread
  %.0.i205218 = phi ptr [ %i.gx, %AllocUnits.exit207.thread ], [ %.0.i205, %AllocUnits.exit207 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.i205218, ptr noundef nonnull align 2 dereferenceable(6) %i.hl, i64 6, i1 false), !tbaa.struct !64
  %i.hm = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.hn = ptrtoint ptr %.0.i205218 to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %.0168228, i64 4
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !52
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i205218, i64 1 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !55  ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 30
  %i.hv = shl nuw nsw i8 %i.ht, 1
  %storemerge = select i1 %i.hu, i8 %i.hv, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.hs, align 1, !tbaa !55
  %i.hw = zext nneg i8 %storemerge to i32
  %i.hx = load i32, ptr %i.de, align 4, !tbaa !75
  %i.hy = add i32 %i.hx, %i.dg
  %i.hz = add i32 %i.hy, %i.hw
  %i.ia = trunc i32 %i.hz to i16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %i.ib = phi ptr [ %i.hm, %bb.ak ], [ %i.gg, %.critedge ]
  %i.ic = phi i16 [ %i.ia, %bb.ak ], [ %i.gu, %.critedge ] ; 2 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !55
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0168228, i64 2
  %i.ij = zext i16 %i.ic to i32                   ; 2 uses
  %i.ik = add nuw nsw i32 %i.ij, 6
  %i.il = mul nuw nsw i32 %i.ik, %i.ih            ; 6 uses
  %i.im = add nsw i32 %.reass, %i.ij              ; 6 uses
  %i.in = mul nsw i32 %i.im, 6
  %i.io = icmp ult i32 %i.il, %i.in
  br i1 %i.io, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ip = icmp ugt i32 %i.il, %i.im
  %i.iq = select i1 %i.ip, i32 2, i32 1
  %i.ir = shl nsw i32 %i.im, 2
  %i.is = icmp uge i32 %i.il, %i.ir
  %i.it = zext i1 %i.is to i32
  %i.iu = add nuw nsw i32 %i.iq, %i.it
  br label %.critedge203

bb.an:                                            ; preds = %bb.al
  %i.iv = mul nsw i32 %i.im, 9
  %.not200 = icmp ult i32 %i.il, %i.iv
  %i.iw = select i1 %.not200, i32 4, i32 5
  %i.ix = mul nsw i32 %i.im, 12
  %i.iy = icmp uge i32 %i.il, %i.ix
  %i.iz = zext i1 %i.iy to i32
  %i.ja = add nuw nsw i32 %i.iw, %i.iz
  %i.jb = mul nsw i32 %i.im, 15
  %i.jc = icmp uge i32 %i.il, %i.jb
  %i.jd = zext i1 %i.jc to i32
  %i.je = add nuw nsw i32 %i.ja, %i.jd            ; 2 uses
  %i.jf = trunc nuw nsw i32 %i.je to i16
  br label %.critedge203

.critedge203:                                     ; preds = %bb.an, %bb.am
  %.pn = phi i16 [ %i.jf, %bb.an ], [ 3, %bb.am ]
  %.0174 = phi i32 [ %i.je, %bb.an ], [ %i.iu, %bb.am ]
  %storemerge201 = add i16 %.pn, %i.ic
  store i16 %storemerge201, ptr %i.ii, align 2, !tbaa !49
  %i.jg = getelementptr inbounds nuw i8, ptr %.0168228, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !52
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ji
  %i.jk = zext i16 %i.di to i64
  %i.jl = getelementptr inbounds nuw [6 x i8], ptr %i.jj, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i32 %.0, ptr %i.jm, align 1
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !53
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !53
  %i.jp = trunc nuw nsw i32 %.0174 to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !55
  %i.jr = add i16 %i.di, 1
  store i16 %i.jr, ptr %.0168228, align 4, !tbaa !48
  %i.js = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0168228, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !46
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !45
  %.not194 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not194, label %._crit_edge, label %bb.y, !llvm.loop !76

._crit_edge:                                      ; preds = %.critedge203, %bb.x
  %i.jy = phi ptr [ %i.cl, %bb.x ], [ %i.js, %.critedge203 ]
  %i.jz = zext i32 %.2 to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz ; 2 uses
  store ptr %i.ka, ptr %0, align 8, !tbaa !45
  store ptr %i.ka, ptr %i.cp, align 8, !tbaa !44
  br label %bb.ao

bb.ao:                                            ; preds = %.thread221, %.thread214, %.thread, %._crit_edge, %bb.p, %bb.n, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @CreateSuccessors(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i32, ptr %i.e, align 1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 16, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.077 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %.not90123 = icmp eq i32 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 5 uses
  br i1 %.not90123, label %.thread104, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %i.i = phi i32 [ %i.ad, %bb.h ], [ %i.h, %bb.c ]
  %.178124 = phi i32 [ %i.z, %bb.h ], [ %.077, %bb.c ] ; 4 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.j ; 5 uses
  %i.l = load i16, ptr %i.k, align 4, !tbaa !48
  %.not91 = icmp eq i16 %i.l, 1
  br i1 %.not91, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.o
  %i.q = load i8, ptr %i.d, align 1, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.075 = phi ptr [ %i.p, %bb.d ], [ %i.s, %bb.e ] ; 3 uses
  %i.r = load i8, ptr %.075, align 1, !tbaa !53
  %.not92 = icmp eq i8 %i.r, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.075, i64 6
  br i1 %.not92, label %.loopexit, label %bb.e, !llvm.loop !78

bb.f:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f
  %.176 = phi ptr [ %i.t, %bb.f ], [ %.075, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.176, i64 2
  %i.v = load i32, ptr %i.u, align 1              ; 2 uses
  %.not93 = icmp eq i32 %i.v, %i.f
  br i1 %.not93, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w ; 2 uses
  %i.y = icmp eq i32 %.178124, 0
  br i1 %i.y, label %.thread, label %.thread104

bb.h:                                             ; preds = %.loopexit
  %i.z = add i32 %.178124, 1                      ; 2 uses
  %i.aa = zext i32 %.178124 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa
  store ptr %.176, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46 ; 2 uses
  %.not90 = icmp eq i32 %i.ad, 0
  br i1 %.not90, label %.thread104, label %.lr.ph

.thread104:                                       ; preds = %bb.h, %bb.c, %bb.g
  %.178121 = phi i32 [ %.178124, %bb.g ], [ %.077, %bb.c ], [ %i.z, %bb.h ]
  %.270 = phi ptr [ %i.x, %bb.g ], [ %i.b, %bb.c ], [ %i.k, %bb.h ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = zext i32 %i.f to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.ai = add i32 %i.f, 1
  %i.aj = load i16, ptr %.270, align 4, !tbaa !48 ; 2 uses
  %i.ak = icmp eq i16 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread104
  %i.al = getelementptr inbounds nuw i8, ptr %.270, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !55
  br label %bb.p

bb.j:                                             ; preds = %.thread104
  %i.an = getelementptr inbounds nuw i8, ptr %.270, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.066 = phi ptr [ %i.aq, %bb.j ], [ %i.as, %bb.k ] ; 3 uses
  %i.ar = load i8, ptr %.066, align 1, !tbaa !53
  %.not94 = icmp eq i8 %i.ar, %i.ah
  %i.as = getelementptr inbounds nuw i8, ptr %.066, i64 6
  br i1 %.not94, label %bb.l, label %bb.k, !llvm.loop !79

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.270, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !49
  %i.az = zext i16 %i.ay to i32
  %i.ba = zext i16 %i.aj to i32
  %i.bb = add nuw nsw i32 %i.av, %i.ba
  %reass.sub = sub nsw i32 %i.az, %i.bb
  %i.bc = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.bd = shl nsw i32 %i.aw, 1                    ; 2 uses
  %.not95 = icmp ugt i32 %i.bd, %i.bc
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = mul nsw i32 %i.aw, 5
  %i.bf = icmp ugt i32 %i.be, %i.bc
  %i.bg = zext i1 %i.bf to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bh = mul nsw i32 %i.bc, 3
  %i.bi = add nsw i32 %i.bd, -1
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = shl nsw i32 %i.bc, 1
  %i.bl = udiv i32 %i.bj, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi i32 [ %i.bg, %bb.m ], [ %i.bl, %bb.n ]
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = add i8 %i.bn, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i
  %.sroa.5.0 = phi i8 [ %i.am, %bb.i ], [ %i.bo, %bb.o ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %.481 = phi i32 [ %.178121, %bb.p ], [ %i.ci, %bb.v ]
  %.371 = phi ptr [ %.270, %bb.p ], [ %.0, %bb.v ]
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !51
  %.not96 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -12 ; 2 uses
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !43
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !4  ; 2 uses
  %.not97 = icmp eq i32 %i.bv, 0
  br i1 %.not97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  store i32 %i.bz, ptr %i.br, align 4, !tbaa !4
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ca = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not98 = icmp eq ptr %i.ca, null
  br i1 %.not98, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.0 = phi ptr [ %i.bu, %bb.r ], [ %i.by, %bb.t ], [ %i.ca, %bb.u ] ; 8 uses
  store i16 1, ptr %.0, align 4, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.ah, ptr %i.cb, align 2, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.ai, ptr %.sroa.7.0..sroa_idx, align 4
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.cd = ptrtoint ptr %.371 to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !46
  %i.ci = add i32 %.481, -1                       ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !77
  %i.cm = ptrtoint ptr %.0 to i64
  %i.cn = sub i64 %i.cm, %i.ce
  %i.co = trunc i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i32 %i.co, ptr %i.cp, align 1
  %.not99 = icmp eq i32 %i.ci, 0
  br i1 %.not99, label %.thread, label %bb.q, !llvm.loop !80

.thread:                                          ; preds = %bb.u, %bb.v, %bb.g
  %.5 = phi ptr [ %i.x, %bb.g ], [ %.0, %bb.v ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @AllocUnitsRare(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 257) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = add i32 %i.g, %i.e                       ; 7 uses
  store i32 255, ptr %i.a, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.0104.i = phi i32 [ %i.h, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i16
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %.not98100.i = icmp eq i32 %i.p, 0
  br i1 %.not98100.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.1102.i = phi i32 [ %.0104.i, %.lr.ph.i ], [ %.090101.i, %bb.d ] ; 2 uses
  %.090101.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.d ] ; 4 uses
  %i.r = zext i32 %.090101.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.1102.i, ptr %i.t, align 4, !tbaa !81
  %i.u = zext i32 %.1102.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.090101.i, ptr %i.w, align 4, !tbaa !83
  %i.x = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  store i16 0, ptr %i.s, align 4, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.n, ptr %i.y, align 2, !tbaa !85
  %.not98.i = icmp eq i32 %i.x, 0
  br i1 %.not98.i, label %._crit_edge.i, label %bb.d, !llvm.loop !86

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.1.lcssa.i = phi i32 [ %.0104.i, %bb.c ], [ %.090101.i, %bb.d ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 38
  br i1 %exitcond.not.i, label %bb.e, label %bb.c, !llvm.loop !87

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !8    ; 8 uses
  %i.aa = zext i32 %i.h to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  store i16 1, ptr %i.ab, align 4, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %.1.lcssa.i, ptr %i.ac, align 4, !tbaa !81
  %i.ad = zext i32 %.1.lcssa.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.h, ptr %i.af, align 4, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 1, ptr %i.ah, align 4, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not95109.i = icmp eq i32 %.1.lcssa.i, %i.h
  br i1 %.not95109.i, label %GlueFreeBlocks.exit, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.g, %._crit_edge108.i
  %.2110.i = phi i32 [ %i.bv, %._crit_edge108.i ], [ %.1.lcssa.i, %bb.g ]
  %i.ak = zext i32 %.2110.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !85 ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = zext i16 %i.an to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !85
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, %i.ao            ; 2 uses
  %i.av = load i16, ptr %i.aq, align 4, !tbaa !84
  %i.aw = icmp ne i16 %i.av, 0
  %i.ax = icmp samesign ugt i32 %i.au, 65535
  %or.cond105.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond105.i, label %._crit_edge108.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.lr.ph112.i, %.lr.ph107.i
  %i.ay = phi i32 [ %i.bq, %.lr.ph107.i ], [ %i.au, %.lr.ph112.i ] ; 3 uses
  %i.az = phi ptr [ %i.bm, %.lr.ph107.i ], [ %i.aq, %.lr.ph112.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !81 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !83 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !81
  %i.bh = zext i32 %i.bb to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.bd, ptr %i.bj, align 4, !tbaa !83
  %i.bk = trunc nuw i32 %i.ay to i16
  store i16 %i.bk, ptr %i.am, align 2, !tbaa !85
  %i.bl = zext nneg i32 %i.ay to i64
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !85
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.ay, %i.bp            ; 2 uses
  %i.br = load i16, ptr %i.bm, align 4, !tbaa !84
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = icmp samesign ugt i32 %i.bq, 65535
  %or.cond.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond.i, label %._crit_edge108.i, label %.lr.ph107.i

._crit_edge108.i:                                 ; preds = %.lr.ph107.i, %.lr.ph112.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !81 ; 2 uses
  %.not95.i = icmp eq i32 %i.bv, %i.h
  br i1 %.not95.i, label %._crit_edge113.i, label %.lr.ph112.i, !llvm.loop !88

._crit_edge113.i:                                 ; preds = %._crit_edge108.i
  %.pre.i = load i32, ptr %i.ac, align 4, !tbaa !81 ; 2 uses
  %.not96121.i = icmp eq i32 %.pre.i, %i.h
  br i1 %.not96121.i, label %GlueFreeBlocks.exit, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %._crit_edge113.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %i.bx = ptrtoint ptr %i.z to i64                ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 146
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge118._crit_edge.i, %.lr.ph124.i
  %.3122.i = phi i32 [ %.pre.i, %.lr.ph124.i ], [ %i.cc, %._crit_edge118._crit_edge.i ]
  %i.bz = zext i32 %.3122.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !81 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !85 ; 2 uses
  %i.cf = zext i16 %i.ce to i32                   ; 4 uses
  %i.cg = icmp ugt i16 %i.ce, 128
  br i1 %i.cg, label %.lr.ph117.preheader.i, label %._crit_edge118.i

.lr.ph117.preheader.i:                            ; preds = %bb.h
  %.pre128.i = load i32, ptr %i.bw, align 8, !tbaa !4 ; 2 uses
  %i.ch = add nsw i32 %i.cf, -129                 ; 2 uses
  %i.ci = lshr i32 %i.ch, 7
  %i.cj = add nuw nsw i32 %i.ci, 1
  %xtraiter = and i32 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117.i.prol.loopexit, label %.lr.ph117.i.prol

.lr.ph117.i.prol:                                 ; preds = %.lr.ph117.preheader.i, %.lr.ph117.i.prol
  %i.ck = phi i32 [ %i.cn, %.lr.ph117.i.prol ], [ %.pre128.i, %.lr.ph117.preheader.i ]
  %.087115.i.prol = phi i32 [ %i.co, %.lr.ph117.i.prol ], [ %i.cf, %.lr.ph117.preheader.i ]
  %.088114.i.prol = phi ptr [ %i.cp, %.lr.ph117.i.prol ], [ %i.ca, %.lr.ph117.preheader.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph117.i.prol ], [ 0, %.lr.ph117.preheader.i ]
  store i32 %i.ck, ptr %.088114.i.prol, align 4, !tbaa !4
  %i.cl = ptrtoint ptr %.088114.i.prol to i64
  %i.cm = sub i64 %i.cl, %i.bx
  %i.cn = trunc i64 %i.cm to i32                  ; 3 uses
  store i32 %i.cn, ptr %i.bw, align 8, !tbaa !4
  %i.co = add nsw i32 %.087115.i.prol, -128       ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.088114.i.prol, i64 1536 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph117.i.prol.loopexit, label %.lr.ph117.i.prol, !llvm.loop !89

.lr.ph117.i.prol.loopexit:                        ; preds = %.lr.ph117.i.prol, %.lr.ph117.preheader.i
  %.unr = phi i32 [ %.pre128.i, %.lr.ph117.preheader.i ], [ %i.cn, %.lr.ph117.i.prol ]
  %.087115.i.unr = phi i32 [ %i.cf, %.lr.ph117.preheader.i ], [ %i.co, %.lr.ph117.i.prol ]
  %.088114.i.unr = phi ptr [ %i.ca, %.lr.ph117.preheader.i ], [ %i.cp, %.lr.ph117.i.prol ]
  %.lcssa66.unr = phi i32 [ poison, %.lr.ph117.preheader.i ], [ %i.co, %.lr.ph117.i.prol ]
  %.lcssa65.unr = phi ptr [ poison, %.lr.ph117.preheader.i ], [ %i.cp, %.lr.ph117.i.prol ]
  %i.cq = icmp ult i32 %i.ch, 384
  br i1 %i.cq, label %._crit_edge118.i, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.prol.loopexit, %.lr.ph117.i
  %i.cr = phi i32 [ %i.dg, %.lr.ph117.i ], [ %.unr, %.lr.ph117.i.prol.loopexit ]
  %.087115.i = phi i32 [ %i.dh, %.lr.ph117.i ], [ %.087115.i.unr, %.lr.ph117.i.prol.loopexit ]
  %.088114.i = phi ptr [ %i.di, %.lr.ph117.i ], [ %.088114.i.unr, %.lr.ph117.i.prol.loopexit ] ; 6 uses
  store i32 %i.cr, ptr %.088114.i, align 4, !tbaa !4
  %i.cs = ptrtoint ptr %.088114.i to i64
  %i.ct = sub i64 %i.cs, %i.bx
  %i.cu = trunc i64 %i.ct to i32                  ; 2 uses
  store i32 %i.cu, ptr %i.bw, align 8, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.088114.i, i64 1536 ; 2 uses
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !4
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.bx
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  store i32 %i.cy, ptr %i.bw, align 8, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.088114.i, i64 3072 ; 2 uses
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !4
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.bx
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  store i32 %i.dc, ptr %i.bw, align 8, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %.088114.i, i64 4608 ; 2 uses
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !4
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.bx
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  store i32 %i.dg, ptr %i.bw, align 8, !tbaa !4
  %i.dh = add nsw i32 %.087115.i, -512            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.088114.i, i64 6144 ; 2 uses
  %i.dj = icmp ugt i32 %i.dh, 128
  br i1 %i.dj, label %.lr.ph117.i, label %._crit_edge118.i, !llvm.loop !90

._crit_edge118.i:                                 ; preds = %.lr.ph117.i.prol.loopexit, %.lr.ph117.i, %bb.h
  %.088.lcssa.i = phi ptr [ %i.ca, %bb.h ], [ %.lcssa65.unr, %.lr.ph117.i.prol.loopexit ], [ %i.di, %.lr.ph117.i ] ; 3 uses
  %.087.lcssa.i = phi i32 [ %i.cf, %bb.h ], [ %.lcssa66.unr, %.lr.ph117.i.prol.loopexit ], [ %i.dh, %.lr.ph117.i ] ; 3 uses
  %i.dk = add nsw i32 %.087.lcssa.i, -1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = zext i8 %i.dn to i64                    ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = zext i8 %i.dq to i32
  %.not97.i = icmp eq i32 %.087.lcssa.i, %i.dr
  br i1 %.not97.i, label %._crit_edge118._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge118.i
  %i.ds = add nuw nsw i64 %i.do, 4294967295
  %i.dt = and i64 %i.ds, 4294967295               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15  ; 2 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = zext i8 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %.088.lcssa.i, i64 %i.dx ; 2 uses
  %i.dz = xor i32 %i.dw, -1
  %i.ea = add nsw i32 %.087.lcssa.i, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !4
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = sub i64 %i.ee, %i.bx
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !4
  br label %._crit_edge118._crit_edge.i

._crit_edge118._crit_edge.i:                      ; preds = %._crit_edge118.i, %bb.i
  %.pre-phi.i = phi i64 [ %i.dt, %bb.i ], [ %i.do, %._crit_edge118.i ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.pre-phi.i ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  store i32 %i.ei, ptr %.088.lcssa.i, align 4, !tbaa !4
  %i.ej = ptrtoint ptr %.088.lcssa.i to i64
  %i.ek = sub i64 %i.ej, %i.bx
  %i.el = trunc i64 %i.ek to i32
  store i32 %i.el, ptr %i.eh, align 4, !tbaa !4
  %.not96.i = icmp eq i32 %i.cc, %i.h
  br i1 %.not96.i, label %GlueFreeBlocks.exit, label %bb.h, !llvm.loop !91

GlueFreeBlocks.exit:                              ; preds = %._crit_edge118._crit_edge.i, %bb.g, %._crit_edge113.i
  %i.em = zext nneg i32 %1 to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %GlueFreeBlocks.exit
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  store i32 %i.er, ptr %i.en, align 4, !tbaa !4
  br label %bb.p

bb.k:                                             ; preds = %GlueFreeBlocks.exit, %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.et = add nuw nsw i32 %1, 1                   ; 2 uses
  %i.eu = icmp eq i32 %i.et, 38
  br i1 %i.eu, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ev = add i32 %i.fr, 1                        ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 38
  br i1 %i.ew, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ey = zext nneg i32 %1 to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 12               ; 2 uses
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !38
  %i.fe = add i32 %i.fd, -1
  store i32 %i.fe, ptr %i.a, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !37 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = icmp ult i32 %i.fc, %i.fm
  br i1 %i.fn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.fo = zext nneg i32 %i.fc to i64
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.fg, i64 %i.fp ; 2 uses
  store ptr %i.fq, ptr %i.ff, align 8, !tbaa !37
  br label %bb.p

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.fr = phi i32 [ %i.ev, %bb.l ], [ %i.et, %bb.k ] ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 4 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.l, label %bb.n, !llvm.loop !92

bb.n:                                             ; preds = %.lr.ph
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !8
  %i.fz = zext i32 %i.fu to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  store i32 %i.gb, ptr %i.fw, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fs
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  %i.gf = zext i8 %i.ge to i32
  %i.gg = zext nneg i32 %1 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  %i.gj = zext i8 %i.gi to i32                    ; 2 uses
  %i.gk = sub nsw i32 %i.gf, %i.gj                ; 3 uses
  %i.gl = mul nuw nsw i32 %i.gj, 12               ; 3 uses
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.gp = add nsw i32 %i.gk, -1
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i64                    ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = zext i8 %i.gv to i32
  %.not.i28 = icmp eq i32 %i.gk, %i.gw
  br i1 %.not.i28, label %.SplitBlock.exit_crit_edge, label %bb.o

.SplitBlock.exit_crit_edge:                       ; preds = %bb.n
  %.pre = add i32 %i.gl, %i.fu
  br label %SplitBlock.exit

bb.o:                                             ; preds = %bb.n
  %i.gx = add nuw nsw i64 %i.gt, 4294967295
  %i.gy = and i64 %i.gx, 4294967295               ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !15
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = mul nuw nsw i32 %i.hb, 12               ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hd
  %i.hf = xor i32 %i.hb, -1
  %i.hg = add nsw i32 %i.gk, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  store i32 %i.hj, ptr %i.he, align 4, !tbaa !4
  %i.hk = add i32 %i.gl, %i.fu                    ; 2 uses
  %i.hl = add i32 %i.hk, %i.hc
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !4
  br label %SplitBlock.exit

SplitBlock.exit:                                  ; preds = %.SplitBlock.exit_crit_edge, %bb.o
  %.pre-phi = phi i32 [ %.pre, %.SplitBlock.exit_crit_edge ], [ %i.hk, %bb.o ]
  %.pre-phi.i29 = phi i64 [ %i.gt, %.SplitBlock.exit_crit_edge ], [ %i.gy, %bb.o ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.pre-phi.i29 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  store i32 %i.hn, ptr %i.gn, align 4, !tbaa !4
  store i32 %.pre-phi, ptr %i.hm, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %._crit_edge, %SplitBlock.exit, %bb.j
  %.0 = phi ptr [ %i.eq, %bb.j ], [ %i.ga, %SplitBlock.exit ], [ %i.fq, %bb.m ], [ null, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 64}
!9 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !5, i64 104, !6, i64 108, !6, i64 146, !6, i64 276, !6, i64 428, !6, i64 684, !6, i64 940, !13, i64 1196, !6, i64 1200, !6, i64 2800}
!10 = !{!"p1 _ZTS15CPpmd7_Context_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"", !14, i64 0, !6, i64 2, !6, i64 3}
!14 = !{!"short", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 8, i32 24}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !17, !18}
!25 = distinct !{!25, !17}
!26 = !{!27, !11, i64 8}
!27 = !{!"", !11, i64 0, !11, i64 8}
!28 = !{!9, !5, i64 52}
!29 = !{ptr @Ppmd7_Free}
!30 = !{!9, !5, i64 104}
!31 = !{!27, !11, i64 0}
!32 = !{!9, !5, i64 36}
!33 = !{!9, !6, i64 1198}
!34 = !{!9, !14, i64 1196}
!35 = !{!9, !6, i64 1199}
!36 = !{!9, !12, i64 88}
!37 = !{!9, !12, i64 96}
!38 = !{!9, !5, i64 56}
!39 = !{!9, !5, i64 24}
!40 = !{!9, !5, i64 48}
!41 = !{!9, !5, i64 44}
!42 = !{!9, !5, i64 32}
!43 = !{!9, !12, i64 80}
!44 = !{!9, !10, i64 8}
!45 = !{!9, !10, i64 0}
!46 = !{!47, !5, i64 8}
!47 = !{!"CPpmd7_Context_", !14, i64 0, !14, i64 2, !5, i64 4, !5, i64 8}
!48 = !{!47, !14, i64 0}
!49 = !{!47, !14, i64 2}
!50 = !{!9, !11, i64 16}
!51 = !{!9, !12, i64 72}
!52 = !{!47, !5, i64 4}
!53 = !{!54, !6, i64 0}
!54 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !14, i64 4}
!55 = !{!54, !6, i64 1}
!56 = distinct !{!56, !17}
!57 = !{!14, !14, i64 0}
!58 = distinct !{!58, !17}
!59 = !{!13, !6, i64 2}
!60 = !{!13, !14, i64 0}
!61 = !{!13, !6, i64 3}
!62 = distinct !{!62, !17}
!63 = !{!9, !5, i64 40}
!64 = !{i64 0, i64 1, !15, i64 1, i64 1, !15, i64 2, i64 2, !57, i64 4, i64 2, !57}
!65 = !{!54, !14, i64 2}
!66 = !{!54, !14, i64 4}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = !{!9, !5, i64 28}
!76 = distinct !{!76, !17}
!77 = !{!11, !11, i64 0}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = !{!82, !5, i64 4}
!82 = !{!"CPpmd7_Node_", !14, i64 0, !14, i64 2, !5, i64 4, !5, i64 8}
!83 = !{!82, !5, i64 8}
!84 = !{!82, !14, i64 0}
!85 = !{!82, !14, i64 2}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
end_hunk_0
