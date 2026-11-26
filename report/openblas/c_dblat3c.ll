Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@dchk4_:bb.a
  %.pre250 = load i32, ptr @dchk4_.icu, align 4, !tbaa !10
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %._crit_edge206.loopexit, %._crit_edge206.split.us, %.split
  %i.my = phi i32 [ %.pre250, %._crit_edge206.loopexit ], [ %storemerge132207, %._crit_edge206.split.us ], [ %storemerge132207, %.split ] ; 2 uses
  %i.mz = add nsw i32 %i.my, 1                    ; 2 uses
  store i32 %i.mz, ptr @dchk4_.icu, align 4, !tbaa !10
  %i.na = icmp slt i32 %i.my, 2
  br i1 %i.na, label %.split, label %.loopexit180.loopexit, !llvm.loop !219

.loopexit180.loopexit:                            ; preds = %._crit_edge206
  %.pre251 = load i32, ptr @dchk4_.ict, align 4, !tbaa !10
  br label %.loopexit180

.loopexit180:                                     ; preds = %.loopexit180.loopexit, %.split.us, %bb.i
  %i.nb = phi i32 [ %.pre251, %.loopexit180.loopexit ], [ %storemerge129216, %.split.us ], [ %storemerge129216, %bb.i ] ; 2 uses
  %i.nc = add nsw i32 %i.nb, 1                    ; 2 uses
  store i32 %i.nc, ptr @dchk4_.ict, align 4, !tbaa !10
  %i.nd = icmp slt i32 %i.nb, 3
  br i1 %i.nd, label %bb.e, label %bb.af, !llvm.loop !220

bb.af:                                            ; preds = %.loopexit180
  %i.ne = load i32, ptr @dchk4_.ik, align 4, !tbaa !10 ; 2 uses
  %i.nf = add nsw i32 %i.ne, 1                    ; 2 uses
  store i32 %i.nf, ptr @dchk4_.ik, align 4, !tbaa !10
  %.not128.not = icmp slt i32 %i.ne, %i.ae
  br i1 %.not128.not, label %.lr.ph220, label %.loopexit181.loopexit, !llvm.loop !221

.loopexit181.loopexit:                            ; preds = %bb.af
  %.pre252 = load i32, ptr @dchk4_.in, align 4, !tbaa !10
  br label %.loopexit181

.loopexit181:                                     ; preds = %.loopexit181.loopexit, %bb.d, %bb.c
  %i.ng = phi i32 [ %.pre252, %.loopexit181.loopexit ], [ %storemerge222, %bb.d ], [ %storemerge222, %bb.c ] ; 2 uses
  %i.nh = add nsw i32 %i.ng, 1                    ; 2 uses
  store i32 %i.nh, ptr @dchk4_.in, align 4, !tbaa !10
  %.not.not = icmp slt i32 %i.ng, %i.l
  br i1 %.not.not, label %.lr.ph224, label %._crit_edge225.loopexit, !llvm.loop !222

._crit_edge225.loopexit:                          ; preds = %.loopexit181
  %.pre253 = load double, ptr @dchk4_.errmax, align 8, !tbaa !14
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %._crit_edge225.loopexit, %bb.a
  %i.ni = phi double [ %.pre253, %._crit_edge225.loopexit ], [ 0.000000e+00, %bb.a ]
  %i.nj = load double, ptr %2, align 8, !tbaa !14
  %i.nk = fcmp olt double %i.ni, %i.nj
  %i.nl = load i32, ptr %26, align 4, !tbaa !10   ; 3 uses
  %i.nm = icmp eq i32 %i.nl, 0                    ; 2 uses
  br i1 %i.nk, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %._crit_edge225
  br i1 %i.nm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.nn = load i32, ptr @dchk4_.nc, align 4, !tbaa !10
  %i.no = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %0, i32 noundef %i.nn) ; 0 uses
  %.pr = load i32, ptr %26, align 4, !tbaa !10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.np = phi i32 [ %.pr, %bb.ah ], [ %i.nl, %bb.ag ]
  %i.nq = icmp eq i32 %i.np, 1
  br i1 %i.nq, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.nr = load i32, ptr @dchk4_.nc, align 4, !tbaa !10
  %i.ns = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef %0, i32 noundef %i.nr) ; 0 uses
  br label %bb.ar

bb.ak:                                            ; preds = %._crit_edge225
  br i1 %i.nm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.nt = load i32, ptr @dchk4_.nc, align 4, !tbaa !10
  %i.nu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef %0, i32 noundef %i.nt) ; 0 uses
  %i.nv = load double, ptr @dchk4_.errmax, align 8, !tbaa !14
  %i.nw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, double noundef %i.nv) ; 0 uses
  %.pr179 = load i32, ptr %26, align 4, !tbaa !10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.nx = phi i32 [ %.pr179, %bb.al ], [ %i.nl, %bb.ak ]
  %i.ny = icmp eq i32 %i.nx, 1
  br i1 %i.ny, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.nz = load i32, ptr @dchk4_.nc, align 4, !tbaa !10
  %i.oa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %0, i32 noundef %i.nz) ; 0 uses
  %i.ob = load double, ptr @dchk4_.errmax, align 8, !tbaa !14
  %i.oc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, double noundef %i.ob) ; 0 uses
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ad
  %i.od = load i32, ptr @dchk4_.n, align 4, !tbaa !10
  %i.oe = icmp sgt i32 %i.od, 1
  br i1 %i.oe, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.of = load i32, ptr @dchk4_.j, align 4, !tbaa !10
  %i.og = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.of) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.v, %bb.m
  %i.oh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %0) ; 0 uses
  %i.oi = load i8, ptr @dchk4_.uplo, align 1, !tbaa !11
  %i.oj = icmp eq i8 %i.oi, 85
  br i1 %i.oj, label %.preheader79.preheader.i177, label %.preheader80.preheader.i169

.preheader80.preheader.i169:                      ; preds = %bb.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.cu, ptr noundef nonnull align 1 dereferenceable(14) @.str.57, i64 14, i1 false), !tbaa !11
  br label %.critedge.i170

.preheader79.preheader.i177:                      ; preds = %bb.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.cu, ptr noundef nonnull align 1 dereferenceable(14) @.str.56, i64 14, i1 false), !tbaa !11
  br label %.critedge.i170

.critedge.i170:                                   ; preds = %.preheader79.preheader.i177, %.preheader80.preheader.i169
  %i.ok = load i8, ptr @dchk4_.trans, align 1, !tbaa !11
  switch i8 %i.ok, label %.preheader74.preheader.i176 [
    i8 78, label %.preheader75.preheader.i175
    i8 84, label %.preheader77.preheader.i171
  ]

.preheader77.preheader.i171:                      ; preds = %.critedge.i170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.ca, ptr noundef nonnull align 1 dereferenceable(14) @.str.45, i64 14, i1 false), !tbaa !11
  br label %.critedge4.i172

.preheader75.preheader.i175:                      ; preds = %.critedge.i170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.ca, ptr noundef nonnull align 1 dereferenceable(14) @.str.44, i64 14, i1 false), !tbaa !11
  br label %.critedge4.i172

.preheader74.preheader.i176:                      ; preds = %.critedge.i170
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.ca, ptr noundef nonnull align 1 dereferenceable(14) @.str.46, i64 14, i1 false), !tbaa !11
  br label %.critedge4.i172

.critedge4.i172:                                  ; preds = %.preheader74.preheader.i176, %.preheader75.preheader.i175, %.preheader77.preheader.i171
  %i.ol = load i32, ptr %26, align 4, !tbaa !10
  %i.om = icmp eq i32 %i.ol, 1
  br i1 %i.om, label %.preheader.preheader.i174, label %.preheader72.preheader.i173

.preheader72.preheader.i173:                      ; preds = %.critedge4.i172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.crc, ptr noundef nonnull align 1 dereferenceable(14) @.str.48, i64 14, i1 false), !tbaa !11
  br label %dprcn4_.exit178

.preheader.preheader.i174:                        ; preds = %.critedge4.i172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dprcn4_.crc, ptr noundef nonnull align 1 dereferenceable(14) @.str.47, i64 14, i1 false), !tbaa !11
  br label %dprcn4_.exit178

dprcn4_.exit178:                                  ; preds = %.preheader72.preheader.i173, %.preheader.preheader.i174
  %i.on = load i32, ptr @dchk4_.nc, align 4, !tbaa !10
  %i.oo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.on, ptr noundef %0, ptr noundef nonnull @dprcn4_.crc, ptr noundef nonnull @dprcn4_.cu, ptr noundef nonnull @dprcn4_.ca) ; 0 uses
  %i.op = load i32, ptr @dchk4_.n, align 4, !tbaa !10
  %i.oq = load i32, ptr @dchk4_.k, align 4, !tbaa !10
  %i.or = load double, ptr @dchk4_.alpha, align 8, !tbaa !14
  %i.os = load i32, ptr @dchk4_.lda, align 4, !tbaa !10
  %i.ot = load double, ptr @dchk4_.beta, align 8, !tbaa !14
  %i.ou = load i32, ptr @dchk4_.ldc, align 4, !tbaa !10
  %i.ov = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %i.op, i32 noundef %i.oq, double noundef %i.or, i32 noundef %i.os, double noundef %i.ot, i32 noundef %i.ou) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aj, %bb.ai, %bb.an, %bb.am, %dprcn4_.exit178
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @dchk5_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef captures(none) %15, ptr noundef %16, ptr nofree noundef captures(none) %17, ptr noundef %18, ptr nofree noundef captures(none) %19, ptr nofree noundef captures(none) %20, ptr noundef %21, ptr nofree noundef captures(none) %22, ptr nofree noundef captures(none) %23, ptr nofree noundef captures(none) %24, ptr nofree noundef captures(none) %25, ptr noundef %26, i32 %27) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.e = getelementptr inbounds i8, ptr %9, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %11, i64 -8 ; 12 uses
  %i.g = getelementptr inbounds i8, ptr %13, i64 -8
  %i.h = getelementptr inbounds i8, ptr %25, i64 -8 ; 14 uses
  %i.i = getelementptr inbounds i8, ptr %22, i64 -8 ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %21, i64 -8 ; 11 uses
  %i.k = load i32, ptr %14, align 4, !tbaa !10    ; 3 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %20, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %19, i64 -8 ; 9 uses
  %i.o = getelementptr inbounds i8, ptr %18, i64 -8 ; 9 uses
  %i.p = getelementptr inbounds i8, ptr %17, i64 -8 ; 9 uses
  %i.q = getelementptr inbounds i8, ptr %16, i64 -8 ; 9 uses
  %i.r = getelementptr inbounds i8, ptr %15, i64 -8 ; 13 uses
  store i32 0, ptr @dchk5_.nc, align 4, !tbaa !10
  store i32 1, ptr @dchk5_.reset, align 4, !tbaa !10
  store double 0.000000e+00, ptr @dchk5_.errmax, align 8, !tbaa !14
  %i.s = load i32, ptr %8, align 4, !tbaa !10     ; 2 uses
  store i32 1, ptr @dchk5_.in, align 4, !tbaa !10
  %.not283 = icmp slt i32 %i.s, 1
  br i1 %.not283, label %._crit_edge287, label %.lr.ph286.preheader

.lr.ph286.preheader:                              ; preds = %bb.a
  %i.t = ptrtoaddr ptr %15 to i64                 ; 3 uses
  %i.u = ptrtoaddr ptr %25 to i64                 ; 3 uses
  %i.v = ptrtoaddr ptr %22 to i64
  %i.w = ptrtoaddr ptr %21 to i64
  %i.x = ptrtoaddr ptr %19 to i64
  %i.y = ptrtoaddr ptr %18 to i64
  %i.z = ptrtoaddr ptr %17 to i64
  %i.aa = ptrtoaddr ptr %16 to i64
  %scevgep = getelementptr i8, ptr %11, i64 8
  %i.ab = add i64 %i.t, -8
  %i.ac = sub i64 %i.ab, %i.u
  %i.ad = add i64 %i.u, 8                         ; 2 uses
  %28 = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, i64 %i.t, i64 0
  %29 = insertelement <4 x i64> %28, i64 %i.u, i64 1 ; 2 uses
  %i.ae = insertelement <4 x i64> %29, i64 %i.ad, i64 2
  %30 = shufflevector <4 x i64> %29, <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i32> <i32 1, i32 0, i32 0, i32 7>
  %i.af = sub <4 x i64> %i.ae, %30                ; 2 uses
  %31 = sub i64 %i.ad, %i.t                       ; 3 uses
  %i.ag = sub i64 %i.aa, %i.z
  %diff.check517 = icmp ugt i64 %i.ag, -128
  %i.ah = sub i64 %i.y, %i.x
  %diff.check484 = icmp ugt i64 %i.ah, -128
  %i.ai = sub i64 %i.w, %i.v
  %diff.check451 = icmp ugt i64 %i.ai, -128
  %invariant.op575 = add <4 x i64> %i.af, <i64 -1, i64 -1, i64 -1, i64 0>
  %invariant.op575.a = add i64 %31, -1
  %invariant.op577 = add i64 %i.ac, -1
  %invariant.op579 = add i64 %31, -1
  %bound1 = icmp ult ptr %11, getelementptr inbounds nuw (i8, ptr @dchk5_.alpha, i64 8)
  br label %.lr.ph286

.lr.ph286:                                        ; preds = %.lr.ph286.preheader, %.loopexit220
  %storemerge284 = phi i32 [ %i.wp, %.loopexit220 ], [ 1, %.lr.ph286.preheader ] ; 3 uses
  %i.aj = sext i32 %storemerge284 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10 ; 7 uses
  store i32 %i.al, ptr @dchk5_.n, align 4, !tbaa !10
  store i32 %i.al, ptr @dchk5_.ldc, align 4, !tbaa !10
  %i.am = load i32, ptr %14, align 4, !tbaa !10   ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph286
  %i.ao = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.ao, ptr @dchk5_.ldc, align 4, !tbaa !10
  %.pre = load i32, ptr %14, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph286
  %i.ap = phi i32 [ %.pre, %bb.b ], [ %i.am, %.lr.ph286 ]
  %i.aq = phi i32 [ %i.ao, %bb.b ], [ %i.al, %.lr.ph286 ] ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %i.ap
  br i1 %i.ar, label %.loopexit220, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = mul nsw i32 %i.aq, %i.al
  store i32 %i.as, ptr @dchk5_.lcc, align 4, !tbaa !10
  %i.at = icmp slt i32 %i.al, 1
  %i.au = zext i1 %i.at to i32
  store i32 %i.au, ptr @dchk5_.null, align 4, !tbaa !10
  %i.av = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dchk5_.ik, align 4, !tbaa !10
  %.not148279 = icmp slt i32 %i.av, 1
  br i1 %.not148279, label %.loopexit220, label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.d, %bb.al
  %storemerge147280 = phi i32 [ %i.wn, %bb.al ], [ 1, %bb.d ]
  %i.aw = sext i32 %storemerge147280 to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10
  store i32 %i.ay, ptr @dchk5_.k, align 4, !tbaa !10
  store i32 1, ptr @dchk5_.ict, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph282, %bb.ak
  %storemerge149278 = phi i32 [ 1, %.lr.ph282 ], [ %i.wk, %bb.ak ] ; 3 uses
  %i.az = sext i32 %storemerge149278 to i64
  %i.ba = getelementptr i8, ptr @dchk5_.icht, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11  ; 5 uses
  store i8 %i.bc, ptr @dchk5_.trans, align 1, !tbaa !11
  %i.bd = icmp eq i8 %i.bc, 84
  %i.be = icmp eq i8 %i.bc, 67
  %i.bf = or i1 %i.bd, %i.be
  %i.bg = zext i1 %i.bf to i32
  store i32 %i.bg, ptr @dchk5_.tran, align 4, !tbaa !10
  switch i8 %i.bc, label %bb.f [
    i8 84, label %bb.g
    i8 67, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %storemerge151.in = phi ptr [ @dchk5_.n, %bb.f ], [ @dchk5_.k, %bb.e ], [ @dchk5_.k, %bb.e ]
  %storemerge150.in = phi ptr [ @dchk5_.k, %bb.f ], [ @dchk5_.n, %bb.e ], [ @dchk5_.n, %bb.e ]
  %storemerge151 = load i32, ptr %storemerge151.in, align 4, !tbaa !10 ; 5 uses
  store i32 %storemerge151, ptr @dchk5_.ma, align 4, !tbaa !10
  %storemerge150 = load i32, ptr %storemerge150.in, align 4, !tbaa !10 ; 2 uses
  store i32 %storemerge150, ptr @dchk5_.na, align 4, !tbaa !10
  store i32 %storemerge151, ptr @dchk5_.lda, align 4, !tbaa !10
  %i.bh = load i32, ptr %14, align 4, !tbaa !10   ; 2 uses
  %i.bi = icmp slt i32 %storemerge151, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = add nsw i32 %storemerge151, 1           ; 2 uses
  store i32 %i.bj, ptr @dchk5_.lda, align 4, !tbaa !10
  %.pre325 = load i32, ptr %14, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi i32 [ %.pre325, %bb.h ], [ %i.bh, %bb.g ]
  %i.bl = phi i32 [ %i.bj, %bb.h ], [ %storemerge151, %bb.g ] ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, %i.bk
  br i1 %i.bm, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = mul nsw i32 %i.bl, %storemerge150
  store i32 %i.bn, ptr @dchk5_.laa, align 4, !tbaa !10
  switch i8 %i.bc, label %bb.l [
    i8 84, label %bb.k
    i8 67, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.bo = load i32, ptr %14, align 4, !tbaa !10
  %i.bp = shl i32 %i.bo, 1
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !10
  %i.bq = call i32 @dmake_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk5_.ma, ptr noundef nonnull @dchk5_.na, ptr noundef %15, ptr noundef nonnull %i.a, ptr noundef %16, ptr noundef nonnull @dchk5_.lda, ptr noundef nonnull @dchk5_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.br = load i32, ptr @dchk5_.lda, align 4, !tbaa !10
  store i32 %i.br, ptr @dchk5_.ldb, align 4, !tbaa !10
  %i.bs = load i32, ptr @dchk5_.laa, align 4, !tbaa !10
  store i32 %i.bs, ptr @dchk5_.lbb, align 4, !tbaa !10
  %i.bt = load i32, ptr %14, align 4, !tbaa !10
  %i.bu = shl i32 %i.bt, 1
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !10
  %i.bv = load i32, ptr @dchk5_.k, align 4, !tbaa !10
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [8 x i8], ptr %i.r, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = call i32 @dmake_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk5_.ma, ptr noundef nonnull @dchk5_.na, ptr noundef %i.by, ptr noundef nonnull %i.a, ptr noundef %18, ptr noundef nonnull @dchk5_.ldb, ptr noundef nonnull @dchk5_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ca = tail call i32 @dmake_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk5_.ma, ptr noundef nonnull @dchk5_.na, ptr noundef %15, ptr noundef nonnull %14, ptr noundef %16, ptr noundef nonnull @dchk5_.lda, ptr noundef nonnull @dchk5_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.cb = load i32, ptr @dchk5_.lda, align 4, !tbaa !10
  store i32 %i.cb, ptr @dchk5_.ldb, align 4, !tbaa !10
  %i.cc = load i32, ptr @dchk5_.laa, align 4, !tbaa !10
  store i32 %i.cc, ptr @dchk5_.lbb, align 4, !tbaa !10
  %i.cd = load i32, ptr @dchk5_.k, align 4, !tbaa !10
  %i.ce = load i32, ptr %14, align 4, !tbaa !10
  %i.cf = mul nsw i32 %i.ce, %i.cd
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [8 x i8], ptr %i.r, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = tail call i32 @dmake_(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.35, ptr noundef nonnull @dchk5_.ma, ptr noundef nonnull @dchk5_.na, ptr noundef %i.ci, ptr noundef nonnull %14, ptr noundef %18, ptr noundef nonnull @dchk5_.ldb, ptr noundef nonnull @dchk5_.reset, ptr noundef nonnull @c_b104, i32 poison, i32 poison, i32 poison) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr @dchk5_.icu, align 4, !tbaa !10
  %i.ck = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.m
  store i32 1, ptr @dchk5_.ia, align 4, !tbaa !10
  store i8 76, ptr @dchk5_.uplo, align 1, !tbaa !11
  store i32 0, ptr @dchk5_.upper, align 4, !tbaa !10
  store i32 3, ptr @dchk5_.icu, align 4, !tbaa !10
  br label %.loopexit219

.split:                                           ; preds = %bb.m, %._crit_edge264
  %storemerge154269 = phi i32 [ %i.wh, %._crit_edge264 ], [ 1, %bb.m ] ; 3 uses
  %i.cm = sext i32 %storemerge154269 to i64
  %i.cn = getelementptr i8, ptr @dchk5_.ichu, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11  ; 2 uses
  store i8 %i.cp, ptr @dchk5_.uplo, align 1, !tbaa !11
  %i.cq = icmp eq i8 %i.cp, 85
  %i.cr = zext i1 %i.cq to i32
  store i32 %i.cr, ptr @dchk5_.upper, align 4, !tbaa !10
  %i.cs = load i32, ptr %10, align 4, !tbaa !10   ; 15 uses
  store i32 1, ptr @dchk5_.ia, align 4, !tbaa !10
  %.not156260 = icmp slt i32 %i.cs, 1
  br i1 %.not156260, label %._crit_edge264, label %.lr.ph263

.lr.ph263:                                        ; preds = %.split
  %i.ct = load i32, ptr %12, align 4, !tbaa !10   ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %iter.check, label %.lr.ph263.split

iter.check:                                       ; preds = %.lr.ph263
  store i32 1, ptr @dchk5_.ib, align 4, !tbaa !10
  %i.cv = add nuw i32 %i.cs, 1
  %min.iters.check = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cw = add nsw i32 %i.cs, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = getelementptr i8, ptr %scevgep, i64 %i.cy
  %bound0 = icmp ugt ptr %i.cz, @dchk5_.alpha
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check384 = icmp ult i32 %i.cs, 16
  br i1 %min.iters.check384, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i32 %i.cs, 12
  %n.vec = and i32 %i.cs, 2147483632              ; 4 uses
  %i.db = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.dc = icmp eq i32 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %i.dd = sext i32 %index to i64
  %i.de = getelementptr [8 x i8], ptr %i.f, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 128
end_hunk_0
begin_hunk_1_@dchk5_:bb.a
  %i.mz = load double, ptr %i.my, align 8, !tbaa !14
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.nb = load double, ptr %i.na, align 8, !tbaa !14
  %i.nc = fcmp une double %i.mz, %i.nb
  br i1 %i.nc, label %lde_.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !0

lde_.exit:                                        ; preds = %bb.r, %.lr.ph.i, %bb.q
  %.0.i = phi i32 [ 1, %bb.q ], [ 0, %.lr.ph.i ], [ 1, %bb.r ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 20), align 4, !tbaa !10
  %i.nd = load i32, ptr @dchk5_.ldas, align 4, !tbaa !10
  %i.ne = load i32, ptr @dchk5_.lda, align 4, !tbaa !10
  %i.nf = icmp eq i32 %i.nd, %i.ne
  %i.ng = zext i1 %i.nf to i32
  store i32 %i.ng, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 24), align 8, !tbaa !10
  %i.nh = load i32, ptr @dchk5_.lbb, align 4, !tbaa !10 ; 2 uses
  %.not7.i186 = icmp slt i32 %i.nh, 1
  br i1 %.not7.i186, label %lde_.exit196, label %.lr.ph.preheader.i187

.lr.ph.preheader.i187:                            ; preds = %lde_.exit
  %i.ni = add nuw i32 %i.nh, 1
  %wide.trip.count.i188 = zext i32 %i.ni to i64
  br label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %bb.s, %.lr.ph.preheader.i187
  %indvars.iv.i190 = phi i64 [ 1, %.lr.ph.preheader.i187 ], [ %indvars.iv.next.i191, %bb.s ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i190
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !14
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i190
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !14
  %i.nn = fcmp une double %i.nk, %i.nm
  br i1 %i.nn, label %lde_.exit196, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i189
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i192 = icmp eq i64 %indvars.iv.next.i191, %wide.trip.count.i188
  br i1 %exitcond.not.i192, label %lde_.exit196, label %.lr.ph.i189, !llvm.loop !0

lde_.exit196:                                     ; preds = %bb.s, %.lr.ph.i189, %lde_.exit
  %.0.i194 = phi i32 [ 1, %lde_.exit ], [ 1, %bb.s ], [ 0, %.lr.ph.i189 ]
  store i32 %.0.i194, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 28), align 4, !tbaa !10
  %i.no = load i32, ptr @dchk5_.ldbs, align 4, !tbaa !10
  %i.np = load i32, ptr @dchk5_.ldb, align 4, !tbaa !10
  %i.nq = icmp eq i32 %i.no, %i.np
  %i.nr = load double, ptr @dchk5_.bets, align 8, !tbaa !14
  %i.ns = load double, ptr @dchk5_.beta, align 8, !tbaa !14
  %i.nt = fcmp oeq double %i.nr, %i.ns
  %i.nu = insertelement <2 x i1> poison, i1 %i.nq, i64 0
  %i.nv = insertelement <2 x i1> %i.nu, i1 %i.nt, i64 1
  %i.nw = zext <2 x i1> %i.nv to <2 x i32>
  store <2 x i32> %i.nw, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 32), align 16, !tbaa !10
  %i.nx = load i32, ptr @dchk5_.null, align 4, !tbaa !10
  %.not167 = icmp eq i32 %i.nx, 0
  br i1 %.not167, label %bb.v, label %bb.t

bb.t:                                             ; preds = %lde_.exit196
  %i.ny = load i32, ptr @dchk5_.lcc, align 4, !tbaa !10 ; 2 uses
  %.not7.i197 = icmp slt i32 %i.ny, 1
  br i1 %.not7.i197, label %lde_.exit207, label %.lr.ph.preheader.i198

.lr.ph.preheader.i198:                            ; preds = %bb.t
  %i.nz = add nuw i32 %i.ny, 1
  %wide.trip.count.i199 = zext i32 %i.nz to i64
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.u, %.lr.ph.preheader.i198
  %indvars.iv.i201 = phi i64 [ 1, %.lr.ph.preheader.i198 ], [ %indvars.iv.next.i202, %bb.u ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i201
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !14
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i201
  %i.od = load double, ptr %i.oc, align 8, !tbaa !14
  %i.oe = fcmp une double %i.ob, %i.od
  br i1 %i.oe, label %lde_.exit207, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i200
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next.i202, %wide.trip.count.i199
  br i1 %exitcond.not.i203, label %lde_.exit207, label %.lr.ph.i200, !llvm.loop !0

bb.v:                                             ; preds = %lde_.exit196
  %i.of = tail call i32 @lderes_(ptr noundef nonnull @.str.51, ptr noundef nonnull @dchk5_.uplo, ptr noundef nonnull @dchk5_.n, ptr noundef nonnull @dchk5_.n, ptr noundef %22, ptr noundef %21, ptr noundef nonnull @dchk5_.ldc, i32 poison, i32 poison)
  br label %lde_.exit207

lde_.exit207:                                     ; preds = %.lr.ph.i200, %bb.u, %bb.t, %bb.v
  %storemerge168 = phi i32 [ %i.of, %bb.v ], [ 1, %bb.t ], [ 1, %bb.u ], [ 0, %.lr.ph.i200 ]
  store i32 %storemerge168, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 40), align 8, !tbaa !10
  %i.og = load i32, ptr @dchk5_.ldcs, align 4, !tbaa !10
  %i.oh = load i32, ptr @dchk5_.ldc, align 4, !tbaa !10
  %i.oi = icmp eq i32 %i.og, %i.oh
  %i.oj = zext i1 %i.oi to i32
  store i32 %i.oj, ptr getelementptr inbounds nuw (i8, ptr @dchk5_.isame, i64 44), align 4, !tbaa !10
  store i32 1, ptr @dchk5_.i__, align 4, !tbaa !10
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %lde_.exit207, %bb.x
  %i.ok = phi i32 [ 1, %lde_.exit207 ], [ %i.op, %bb.x ]
  %storemerge169238 = phi i32 [ 1, %lde_.exit207 ], [ %i.oq, %bb.x ] ; 3 uses
  %.not184 = icmp ne i32 %i.ok, 0
  %.phi.trans.insert = sext i32 %storemerge169238 to i64
  %.phi.trans.insert329 = getelementptr [4 x i8], ptr @dchk5_.isame, i64 %.phi.trans.insert
  %.phi.trans.insert330 = getelementptr i8, ptr %.phi.trans.insert329, i64 -4
  %.pre331 = load i32, ptr %.phi.trans.insert330, align 4, !tbaa !10 ; 2 uses
  %i.ol = icmp ne i32 %.pre331, 0
  %narrow377 = and i1 %.not184, %i.ol
  %i.om = zext i1 %narrow377 to i32               ; 2 uses
  store i32 %i.om, ptr @dchk5_.same, align 4, !tbaa !10
  %.not185 = icmp eq i32 %.pre331, 0
  br i1 %.not185, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge328
  %i.on = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %storemerge169238) ; 0 uses
  %.pre326 = load i32, ptr @dchk5_.same, align 4, !tbaa !10
  %.pre332 = load i32, ptr @dchk5_.i__, align 4, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge328, %bb.w
  %i.oo = phi i32 [ %storemerge169238, %._crit_edge328 ], [ %.pre332, %bb.w ] ; 2 uses
  %i.op = phi i32 [ %i.om, %._crit_edge328 ], [ %.pre326, %bb.w ] ; 2 uses
  %i.oq = add nsw i32 %i.oo, 1                    ; 2 uses
  store i32 %i.oq, ptr @dchk5_.i__, align 4, !tbaa !10
  %i.or = icmp slt i32 %i.oo, 12
  br i1 %i.or, label %._crit_edge328, label %bb.y, !llvm.loop !244

bb.y:                                             ; preds = %bb.x
  %.not170 = icmp eq i32 %i.op, 0
  br i1 %.not170, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %7, align 4, !tbaa !10
  br label %bb.aw

bb.aa:                                            ; preds = %bb.y
  %i.os = load i32, ptr @dchk5_.null, align 4, !tbaa !10
  %.not171 = icmp eq i32 %i.os, 0
  br i1 %.not171, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr @dchk5_.jjab, align 4, !tbaa !10
  store i32 1, ptr @dchk5_.jc, align 4, !tbaa !10
  %i.ot = load i32, ptr @dchk5_.n, align 4, !tbaa !10 ; 2 uses
  store i32 1, ptr @dchk5_.j, align 4, !tbaa !10
  %.not173251 = icmp slt i32 %i.ot, 1
  br i1 %.not173251, label %.loopexit, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %bb.ab
  %.pre333 = load i32, ptr @dchk5_.upper, align 4, !tbaa !10
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %bb.aj
  %i.ou = phi i32 [ %i.vu, %bb.aj ], [ 1, %.lr.ph254.preheader ] ; 2 uses
  %i.ov = phi i32 [ %i.vh, %bb.aj ], [ %.pre333, %.lr.ph254.preheader ]
  %storemerge172252 = phi i32 [ %i.wb, %bb.aj ], [ 1, %.lr.ph254.preheader ] ; 7 uses
  %.not174 = icmp eq i32 %i.ov, 0                 ; 2 uses
  %i.ow = load i32, ptr @dchk5_.n, align 4
  %reass.sub = sub i32 %i.ow, %storemerge172252
  %i.ox = add i32 %reass.sub, 1
  %i.oy = select i1 %.not174, i32 %storemerge172252, i32 1 ; 3 uses
  %storemerge175 = select i1 %.not174, i32 %i.ox, i32 %storemerge172252
  store i32 %storemerge175, ptr @dchk5_.lj, align 4, !tbaa !10
  %i.oz = load i32, ptr @dchk5_.tran, align 4, !tbaa !10
  %.not176 = icmp eq i32 %i.oz, 0
  %i.pa = load i32, ptr @dchk5_.k, align 4, !tbaa !10 ; 16 uses
  %.not178245 = icmp slt i32 %i.pa, 1             ; 2 uses
  %.pre335 = load i32, ptr %14, align 4, !tbaa !10 ; 5 uses
  br i1 %.not176, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph254
  br i1 %.not178245, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.ac
  %i.pb = shl i32 %storemerge172252, 1
  %i.pc = add i32 %i.pb, -2
  %i.pd = mul nsw i32 %.pre335, %i.pc             ; 4 uses
  %invariant.op = add i32 %i.pa, %i.pd            ; 6 uses
  %i.pe = sext i32 %i.pd to i64                   ; 2 uses
  %i.pf = zext nneg i32 %i.pa to i64              ; 2 uses
  %i.pg = add nuw i32 %i.pa, 1                    ; 4 uses
  %wide.trip.count315 = zext i32 %i.pg to i64     ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.pe ; 6 uses
  %invariant.gep371 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.pf ; 6 uses
  %i.ph = zext nneg i32 %i.pa to i64              ; 2 uses
  %min.iters.check425 = icmp ult i32 %i.pa, 24
  br i1 %min.iters.check425, label %scalar.ph424.preheader, label %vector.scevcheck415

vector.scevcheck415:                              ; preds = %.lr.ph242
  %i.pi = add nsw i64 %wide.trip.count315, -2     ; 2 uses
  %i.pj = add nuw i32 %i.pa, 1
  %i.pk = add i32 %i.pj, %i.pd                    ; 2 uses
  %i.pl = trunc i64 %i.pi to i32
  %i.pm = add i32 %i.pk, %i.pl
  %i.pn = icmp slt i32 %i.pm, %i.pk
  %i.po = icmp ugt i64 %i.pi, 4294967295
  %i.pp = or i1 %i.pn, %i.po
  br i1 %i.pp, label %scalar.ph424.preheader, label %vector.memcheck426

vector.memcheck426:                               ; preds = %vector.scevcheck415
  %i.pq = add i32 %i.pa, %i.pd
  %i.pr = add i32 %i.pq, 1
  %i.ps = sext i32 %i.pr to i64
  %32 = insertelement <4 x i64> poison, i64 %i.pe, i64 0
  %33 = insertelement <4 x i64> %32, i64 %i.pf, i64 1
  %34 = insertelement <4 x i64> %33, i64 %i.ps, i64 3
  %35 = shl nsw <4 x i64> %34, <i64 3, i64 3, i64 poison, i64 3> ; 2 uses
  %36 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %37 = shufflevector <4 x i64> %35, <4 x i64> %i.af, <4 x i32> <i32 poison, i32 0, i32 3, i32 6>
  %38 = insertelement <4 x i64> %37, i64 0, i64 0
  %i.pt = sub <4 x i64> %36, %38
  %i.pu = add <4 x i64> %i.pt, %invariant.op575   ; 2 uses
  %i.pv = icmp ult <4 x i64> %i.pu, <i64 63, i64 63, i64 63, i64 -64>
  %i.pw = icmp ugt <4 x i64> %i.pu, <i64 63, i64 63, i64 63, i64 -64>
  %i.px = shufflevector <4 x i1> %i.pv, <4 x i1> %i.pw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.py = bitcast <4 x i1> %i.px to i4
  %.not = icmp eq i4 %i.py, 0
  br i1 %.not, label %vector.ph434, label %scalar.ph424.preheader

vector.ph434:                                     ; preds = %vector.memcheck426
  %n.vec435 = and i64 %i.ph, 2147483640           ; 3 uses
  %i.pz = or disjoint i64 %n.vec435, 1
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next442, %vector.body436 ] ; 3 uses
  %i.qa = or disjoint i64 %index437, 1            ; 3 uses
  %i.qb = trunc nuw nsw i64 %i.qa to i32
  %i.qc = add i32 %invariant.op, %i.qb
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %wide.load438 = load <4 x double>, ptr %i.qe, align 8, !tbaa !14
  %wide.load439 = load <4 x double>, ptr %i.qf, align 8, !tbaa !14
  %i.qg = getelementptr [8 x i8], ptr %25, i64 %index437 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  store <4 x double> %wide.load438, ptr %i.qg, align 8, !tbaa !14
  store <4 x double> %wide.load439, ptr %i.qh, align 8, !tbaa !14
  %i.qi = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.qa ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 32
  %wide.load440 = load <4 x double>, ptr %i.qi, align 8, !tbaa !14
  %wide.load441 = load <4 x double>, ptr %i.qj, align 8, !tbaa !14
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %i.qa ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  store <4 x double> %wide.load440, ptr %i.qk, align 8, !tbaa !14
  store <4 x double> %wide.load441, ptr %i.ql, align 8, !tbaa !14
  %index.next442 = add nuw i64 %index437, 8       ; 2 uses
  %i.qm = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.qm, label %middle.block443, label %vector.body436, !llvm.loop !245

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %n.vec435, %i.ph
  br i1 %cmp.n444, label %._crit_edge243, label %scalar.ph424.preheader

scalar.ph424.preheader:                           ; preds = %vector.memcheck426, %vector.scevcheck415, %.lr.ph242, %middle.block443
  %indvars.iv312.ph = phi i64 [ 1, %vector.memcheck426 ], [ 1, %vector.scevcheck415 ], [ 1, %.lr.ph242 ], [ %i.pz, %middle.block443 ] ; 4 uses
  %i.qn = sub nsw i64 %wide.trip.count315, %indvars.iv312.ph
  %i.qo = zext nneg i32 %i.pa to i64
  %i.qp = sub nsw i64 %i.qo, %indvars.iv312.ph
  %xtraiter559 = and i64 %i.qn, 3                 ; 2 uses
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %scalar.ph424.prol.loopexit, label %scalar.ph424.prol

scalar.ph424.prol:                                ; preds = %scalar.ph424.preheader, %scalar.ph424.prol
  %indvars.iv312.prol = phi i64 [ %indvars.iv.next313.prol, %scalar.ph424.prol ], [ %indvars.iv312.ph, %scalar.ph424.preheader ] ; 5 uses
  %prol.iter561 = phi i64 [ %prol.iter561.next, %scalar.ph424.prol ], [ 0, %scalar.ph424.preheader ]
  %i.qq = trunc nuw nsw i64 %indvars.iv312.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.qq
  %i.qr = sext i32 %.reass.prol to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.qr
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !14
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv312.prol
  store double %i.qt, ptr %i.qu, align 8, !tbaa !14
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv312.prol
  %i.qv = load double, ptr %gep.prol, align 8, !tbaa !14
  %gep372.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv312.prol
  store double %i.qv, ptr %gep372.prol, align 8, !tbaa !14
  %indvars.iv.next313.prol = add nuw nsw i64 %indvars.iv312.prol, 1 ; 2 uses
  %prol.iter561.next = add i64 %prol.iter561, 1   ; 2 uses
  %prol.iter561.cmp.not = icmp eq i64 %prol.iter561.next, %xtraiter559
  br i1 %prol.iter561.cmp.not, label %scalar.ph424.prol.loopexit, label %scalar.ph424.prol, !llvm.loop !246

scalar.ph424.prol.loopexit:                       ; preds = %scalar.ph424.prol, %scalar.ph424.preheader
  %indvars.iv312.unr = phi i64 [ %indvars.iv312.ph, %scalar.ph424.preheader ], [ %indvars.iv.next313.prol, %scalar.ph424.prol ]
  %i.qw = icmp ult i64 %i.qp, 3
  br i1 %i.qw, label %._crit_edge243, label %scalar.ph424

scalar.ph424:                                     ; preds = %scalar.ph424.prol.loopexit, %scalar.ph424
  %indvars.iv312 = phi i64 [ %indvars.iv.next313.3, %scalar.ph424 ], [ %indvars.iv312.unr, %scalar.ph424.prol.loopexit ] ; 9 uses
  %i.qx = trunc nuw nsw i64 %indvars.iv312 to i32
  %.reass = add i32 %invariant.op, %i.qx
  %i.qy = sext i32 %.reass to i64
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.qy
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !14
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv312
  store double %i.ra, ptr %i.rb, align 8, !tbaa !14
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv312
  %i.rc = load double, ptr %gep, align 8, !tbaa !14
  %gep372 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv312
  store double %i.rc, ptr %gep372, align 8, !tbaa !14
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 3 uses
  %i.rd = trunc nuw nsw i64 %indvars.iv.next313 to i32
  %.reass.1 = add i32 %invariant.op, %i.rd
  %i.re = sext i32 %.reass.1 to i64
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.re
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !14
  %i.rh = getelementptr [8 x i8], ptr %25, i64 %indvars.iv312
  store double %i.rg, ptr %i.rh, align 8, !tbaa !14
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next313
  %i.ri = load double, ptr %gep.1, align 8, !tbaa !14
  %gep372.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next313
  store double %i.ri, ptr %gep372.1, align 8, !tbaa !14
  %indvars.iv.next313.1 = add nuw nsw i64 %indvars.iv312, 2 ; 4 uses
  %i.rj = trunc nuw nsw i64 %indvars.iv.next313.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.rj
  %i.rk = sext i32 %.reass.2 to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.rk
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !14
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next313.1
  store double %i.rm, ptr %i.rn, align 8, !tbaa !14
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next313.1
  %i.ro = load double, ptr %gep.2, align 8, !tbaa !14
  %gep372.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next313.1
  store double %i.ro, ptr %gep372.2, align 8, !tbaa !14
  %indvars.iv.next313.2 = add nuw nsw i64 %indvars.iv312, 3 ; 4 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv.next313.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.rp
  %i.rq = sext i32 %.reass.3 to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.rq
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !14
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next313.2
  store double %i.rs, ptr %i.rt, align 8, !tbaa !14
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next313.2
  %i.ru = load double, ptr %gep.3, align 8, !tbaa !14
  %gep372.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next313.2
  store double %i.ru, ptr %gep372.3, align 8, !tbaa !14
  %indvars.iv.next313.3 = add nuw nsw i64 %indvars.iv312, 4 ; 2 uses
  %exitcond316.not.3 = icmp eq i64 %indvars.iv.next313.3, %wide.trip.count315
  br i1 %exitcond316.not.3, label %._crit_edge243, label %scalar.ph424, !llvm.loop !247

._crit_edge243:                                   ; preds = %scalar.ph424.prol.loopexit, %scalar.ph424, %middle.block443, %bb.ac
  %storemerge179.lcssa = phi i32 [ 1, %bb.ac ], [ %i.pg, %middle.block443 ], [ %i.pg, %scalar.ph424 ], [ %i.pg, %scalar.ph424.prol.loopexit ]
  store i32 %storemerge179.lcssa, ptr @dchk5_.i__, align 4, !tbaa !10
  %i.rv = shl i32 %i.pa, 1
  store i32 %i.rv, ptr %i.b, align 4, !tbaa !10
  %i.rw = shl i32 %.pre335, 1                     ; 2 uses
  store i32 %i.rw, ptr %i.c, align 4, !tbaa !10
  store i32 %i.rw, ptr %i.d, align 4, !tbaa !10
  %i.rx = load i32, ptr @dchk5_.jjab, align 4, !tbaa !10
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ry
  %i.sa = mul nsw i32 %storemerge172252, %i.k
  %i.sb = add nsw i32 %i.oy, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.sc
  %i.se = sext i32 %i.ou to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.se
  %i.sg = call i32 @dmmch_(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk5_.lj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull @dchk5_.alpha, ptr noundef nonnull %i.rz, ptr noundef nonnull %i.c, ptr noundef %25, ptr noundef nonnull %i.d, ptr noundef nonnull @dchk5_.beta, ptr noundef %i.sd, ptr noundef nonnull %14, ptr noundef %23, ptr noundef %24, ptr noundef nonnull %i.sf, ptr noundef nonnull @dchk5_.ldc, ptr noundef %1, ptr noundef nonnull @dchk5_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph254
  br i1 %.not178245, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.ad
  %i.sh = sext i32 %.pre335 to i64                ; 10 uses
  %i.si = sext i32 %storemerge172252 to i64       ; 4 uses
  %i.sj = zext nneg i32 %i.pa to i64              ; 8 uses
  %i.sk = add nuw i32 %i.pa, 1                    ; 4 uses
  %wide.trip.count320 = zext i32 %i.sk to i64     ; 2 uses
  %invariant.gep373 = getelementptr [8 x i8], ptr %i.r, i64 %i.si ; 6 uses
  %invariant.gep375 = getelementptr [8 x i8], ptr %i.r, i64 %i.si ; 6 uses
  %i.sl = zext nneg i32 %i.pa to i64              ; 2 uses
  %min.iters.check396 = icmp ugt i32 %i.pa, 11
  %ident.check.not = icmp eq i32 %.pre335, 1
  %or.cond547 = select i1 %min.iters.check396, i1 %ident.check.not, i1 false
  br i1 %or.cond547, label %vector.memcheck397, label %scalar.ph.preheader

vector.memcheck397:                               ; preds = %.lr.ph248
  %39 = mul nsw i64 %i.si, -8
  %i.sm = shl nuw nsw i64 %i.sj, 3                ; 2 uses
  %i.sn = sub nsw i64 %39, %i.sm
  %.reass576 = add i64 %i.sn, %invariant.op575.a
  %diff.check = icmp ult i64 %.reass576, 63
  %40 = shl nsw i64 %i.si, 3                      ; 3 uses
  %.reass580 = add i64 %40, %invariant.op577
  %diff.check398 = icmp ult i64 %.reass580, 63
  %conflict.rdx = or i1 %diff.check, %diff.check398
  %41 = sub i64 %40, %31
  %diff.check399 = icmp ugt i64 %41, -64
  %conflict.rdx400 = or i1 %conflict.rdx, %diff.check399
  %i.so = sub nsw i64 %i.sm, %40
  %.reass580.a = add i64 %i.so, %invariant.op579
  %diff.check401 = icmp ult i64 %.reass580.a, 63
  %conflict.rdx402 = or i1 %conflict.rdx400, %diff.check401
  br i1 %conflict.rdx402, label %scalar.ph.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck397
  %n.vec404 = and i64 %i.sl, 2147483640           ; 3 uses
  %i.sp = or disjoint i64 %n.vec404, 1
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next411, %vector.body405 ] ; 4 uses
  %i.sq = or disjoint i64 %index406, 1
  %i.sr = add nuw nsw i64 %i.sq, %i.sj            ; 2 uses
  %i.ss = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.sr ; 2 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 -8
  %i.su = getelementptr i8, ptr %i.ss, i64 24
  %wide.load407 = load <4 x double>, ptr %i.st, align 8, !tbaa !14
  %wide.load408 = load <4 x double>, ptr %i.su, align 8, !tbaa !14
  %i.sv = getelementptr [8 x i8], ptr %25, i64 %index406 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  store <4 x double> %wide.load407, ptr %i.sv, align 8, !tbaa !14
  store <4 x double> %wide.load408, ptr %i.sw, align 8, !tbaa !14
  %i.sx = getelementptr [8 x i8], ptr %invariant.gep375, i64 %index406 ; 2 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 32
  %wide.load409 = load <4 x double>, ptr %i.sx, align 8, !tbaa !14
  %wide.load410 = load <4 x double>, ptr %i.sy, align 8, !tbaa !14
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.sr ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  store <4 x double> %wide.load409, ptr %i.sz, align 8, !tbaa !14
  store <4 x double> %wide.load410, ptr %i.ta, align 8, !tbaa !14
  %index.next411 = add nuw i64 %index406, 8       ; 2 uses
  %i.tb = icmp eq i64 %index.next411, %n.vec404
  br i1 %i.tb, label %middle.block412, label %vector.body405, !llvm.loop !248

middle.block412:                                  ; preds = %vector.body405
  %cmp.n413 = icmp eq i64 %n.vec404, %i.sl
  br i1 %cmp.n413, label %._crit_edge249, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck397, %.lr.ph248, %middle.block412
  %indvars.iv317.ph = phi i64 [ 1, %vector.memcheck397 ], [ 1, %.lr.ph248 ], [ %i.sp, %middle.block412 ] ; 4 uses
  %i.tc = sub nsw i64 %wide.trip.count320, %indvars.iv317.ph
  %i.td = zext nneg i32 %i.pa to i64
  %i.te = sub nsw i64 %i.td, %indvars.iv317.ph
  %xtraiter562 = and i64 %i.tc, 3                 ; 2 uses
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv317.prol = phi i64 [ %indvars.iv.next318.prol, %scalar.ph.prol ], [ %indvars.iv317.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter564 = phi i64 [ %prol.iter564.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tf = add nuw nsw i64 %indvars.iv317.prol, %i.sj ; 2 uses
  %i.tg = add nsw i64 %i.tf, -1
  %i.th = mul nsw i64 %i.tg, %i.sh
  %gep374.prol = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.th
  %i.ti = load double, ptr %gep374.prol, align 8, !tbaa !14
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv317.prol
  store double %i.ti, ptr %i.tj, align 8, !tbaa !14
  %i.tk = add nsw i64 %indvars.iv317.prol, -1
  %i.tl = mul nsw i64 %i.tk, %i.sh
  %gep376.prol = getelementptr [8 x i8], ptr %invariant.gep375, i64 %i.tl
  %i.tm = load double, ptr %gep376.prol, align 8, !tbaa !14
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.tf
  store double %i.tm, ptr %i.tn, align 8, !tbaa !14
  %indvars.iv.next318.prol = add nuw nsw i64 %indvars.iv317.prol, 1 ; 2 uses
  %prol.iter564.next = add i64 %prol.iter564, 1   ; 2 uses
  %prol.iter564.cmp.not = icmp eq i64 %prol.iter564.next, %xtraiter562
  br i1 %prol.iter564.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !249

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv317.unr = phi i64 [ %indvars.iv317.ph, %scalar.ph.preheader ], [ %indvars.iv.next318.prol, %scalar.ph.prol ]
  %i.to = icmp ult i64 %i.te, 3
  br i1 %i.to, label %._crit_edge249, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.gep573 = getelementptr [8 x i8], ptr %25, i64 %i.sj
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv317 = phi i64 [ %indvars.iv317.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next318.3, %scalar.ph ] ; 12 uses
  %i.tp = add nuw nsw i64 %indvars.iv317, %i.sj   ; 2 uses
  %i.tq = add nsw i64 %i.tp, -1
  %i.tr = mul nsw i64 %i.tq, %i.sh
  %gep374 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.tr
  %i.ts = load double, ptr %gep374, align 8, !tbaa !14
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv317
  store double %i.ts, ptr %i.tt, align 8, !tbaa !14
  %i.tu = add nsw i64 %indvars.iv317, -1
  %i.tv = mul nsw i64 %i.tu, %i.sh
  %gep376 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %i.tv
  %i.tw = load double, ptr %gep376, align 8, !tbaa !14
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.tp
  store double %i.tw, ptr %i.tx, align 8, !tbaa !14
  %i.ty = add i64 %indvars.iv317, %i.sj
  %i.tz = mul nsw i64 %i.ty, %i.sh
  %gep374.1 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.tz
  %i.ua = load double, ptr %gep374.1, align 8, !tbaa !14
  %i.ub = getelementptr [8 x i8], ptr %25, i64 %indvars.iv317
  store double %i.ua, ptr %i.ub, align 8, !tbaa !14
  %i.uc = mul nsw i64 %indvars.iv317, %i.sh
  %gep376.1 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %i.uc
  %i.ud = load double, ptr %gep376.1, align 8, !tbaa !14
  %gep574 = getelementptr [8 x i8], ptr %invariant.gep573, i64 %indvars.iv317
  store double %i.ud, ptr %gep574, align 8, !tbaa !14
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 2 ; 2 uses
  %i.ue = add nuw nsw i64 %indvars.iv.next318.1, %i.sj ; 2 uses
  %i.uf = add nsw i64 %i.ue, -1
  %i.ug = mul nsw i64 %i.uf, %i.sh
  %gep374.2 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.ug
  %i.uh = load double, ptr %gep374.2, align 8, !tbaa !14
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next318.1
  store double %i.uh, ptr %i.ui, align 8, !tbaa !14
  %i.uj = add nsw i64 %indvars.iv317, 1
  %i.uk = mul nsw i64 %i.uj, %i.sh
  %gep376.2 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %i.uk
  %i.ul = load double, ptr %gep376.2, align 8, !tbaa !14
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ue
  store double %i.ul, ptr %i.um, align 8, !tbaa !14
  %indvars.iv.next318.2 = add nuw nsw i64 %indvars.iv317, 3 ; 2 uses
  %i.un = add nuw nsw i64 %indvars.iv.next318.2, %i.sj ; 2 uses
  %i.uo = add nsw i64 %i.un, -1
  %i.up = mul nsw i64 %i.uo, %i.sh
  %gep374.3 = getelementptr [8 x i8], ptr %invariant.gep373, i64 %i.up
  %i.uq = load double, ptr %gep374.3, align 8, !tbaa !14
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next318.2
  store double %i.uq, ptr %i.ur, align 8, !tbaa !14
  %i.us = add nsw i64 %indvars.iv317, 2
  %i.ut = mul nsw i64 %i.us, %i.sh
  %gep376.3 = getelementptr [8 x i8], ptr %invariant.gep375, i64 %i.ut
  %i.uu = load double, ptr %gep376.3, align 8, !tbaa !14
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.un
  store double %i.uu, ptr %i.uv, align 8, !tbaa !14
  %indvars.iv.next318.3 = add nuw nsw i64 %indvars.iv317, 4 ; 2 uses
  %exitcond321.not.3 = icmp eq i64 %indvars.iv.next318.3, %wide.trip.count320
  br i1 %exitcond321.not.3, label %._crit_edge249, label %scalar.ph, !llvm.loop !250

._crit_edge249:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block412, %bb.ad
  %storemerge177.lcssa = phi i32 [ 1, %bb.ad ], [ %i.sk, %middle.block412 ], [ %i.sk, %scalar.ph ], [ %i.sk, %scalar.ph.prol.loopexit ]
  store i32 %storemerge177.lcssa, ptr @dchk5_.i__, align 4, !tbaa !10
  %i.uw = shl i32 %i.pa, 1
  store i32 %i.uw, ptr %i.b, align 4, !tbaa !10
  %i.ux = shl i32 %.pre335, 1
  store i32 %i.ux, ptr %i.c, align 4, !tbaa !10
  %i.uy = sext i32 %i.oy to i64
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.uy
  %i.va = mul nsw i32 %storemerge172252, %i.k
  %i.vb = add nsw i32 %i.oy, %i.va
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.vc
  %i.ve = sext i32 %i.ou to i64
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ve
  %i.vg = call i32 @dmmch_(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53, ptr noundef nonnull @dchk5_.lj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull @dchk5_.alpha, ptr noundef nonnull %i.uz, ptr noundef nonnull %14, ptr noundef %25, ptr noundef nonnull %i.c, ptr noundef nonnull @dchk5_.beta, ptr noundef %i.vd, ptr noundef nonnull %14, ptr noundef %23, ptr noundef %24, ptr noundef nonnull %i.vf, ptr noundef nonnull @dchk5_.ldc, ptr noundef %1, ptr noundef nonnull @dchk5_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge249, %._crit_edge243
  %i.vh = load i32, ptr @dchk5_.upper, align 4, !tbaa !10 ; 2 uses
  %.not181 = icmp eq i32 %i.vh, 0
  br i1 %.not181, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.vi = load i32, ptr @dchk5_.ldc, align 4, !tbaa !10
  %i.vj = load i32, ptr @dchk5_.jc, align 4, !tbaa !10
  %i.vk = add nsw i32 %i.vj, %i.vi                ; 2 uses
  store i32 %i.vk, ptr @dchk5_.jc, align 4, !tbaa !10
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.vl = load i32, ptr @dchk5_.jc, align 4, !tbaa !10
  %i.vm = load i32, ptr @dchk5_.ldc, align 4, !tbaa !10
  %i.vn = add i32 %i.vl, 1
  %i.vo = add i32 %i.vn, %i.vm                    ; 3 uses
  store i32 %i.vo, ptr @dchk5_.jc, align 4, !tbaa !10
  %i.vp = load i32, ptr @dchk5_.tran, align 4, !tbaa !10
  %.not182 = icmp eq i32 %i.vp, 0
  br i1 %.not182, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.vq = load i32, ptr %14, align 4, !tbaa !10
  %i.vr = shl i32 %i.vq, 1
  %i.vs = load i32, ptr @dchk5_.jjab, align 4, !tbaa !10
  %i.vt = add nsw i32 %i.vs, %i.vr
  store i32 %i.vt, ptr @dchk5_.jjab, align 4, !tbaa !10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.vu = phi i32 [ %i.vo, %bb.ag ], [ %i.vo, %bb.ah ], [ %i.vk, %bb.af ]
  %i.vv = load double, ptr @dchk5_.errmax, align 8, !tbaa !14 ; 2 uses
  %i.vw = load double, ptr @dchk5_.err, align 8, !tbaa !14 ; 2 uses
  %i.vx = fcmp oge double %i.vv, %i.vw
  %i.vy = select i1 %i.vx, double %i.vv, double %i.vw
  store double %i.vy, ptr @dchk5_.errmax, align 8, !tbaa !14
  %i.vz = load i32, ptr %7, align 4, !tbaa !10
  %.not183 = icmp eq i32 %i.vz, 0
  br i1 %.not183, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.wa = load i32, ptr @dchk5_.j, align 4, !tbaa !10 ; 2 uses
  %i.wb = add nsw i32 %i.wa, 1                    ; 2 uses
  store i32 %i.wb, ptr @dchk5_.j, align 4, !tbaa !10
  %.not173.not = icmp slt i32 %i.wa, %i.ot
end_hunk_1
