inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@RestartModel:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cr, i64 99
  store i8 7, ptr %i.fp, align 1, !tbaa !65
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cr, i64 100
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cr, i64 102
  store i8 3, ptr %i.fr, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.fq, align 1, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cr, i64 103
  store i8 7, ptr %i.fs, align 1, !tbaa !65
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cr, i64 106
  store i8 3, ptr %i.fu, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.ft, align 1, !tbaa !64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cr, i64 107
  store i8 7, ptr %i.fv, align 1, !tbaa !65
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cr, i64 108
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cr, i64 110
  store i8 3, ptr %i.fx, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.fw, align 1, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cr, i64 111
  store i8 7, ptr %i.fy, align 1, !tbaa !65
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cr, i64 114
  store i8 3, ptr %i.ga, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.fz, align 1, !tbaa !64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cr, i64 115
  store i8 7, ptr %i.gb, align 1, !tbaa !65
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cr, i64 116
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cr, i64 118
  store i8 3, ptr %i.gd, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.gc, align 1, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cr, i64 119
  store i8 7, ptr %i.ge, align 1, !tbaa !65
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cr, i64 122
  store i8 3, ptr %i.gg, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.gf, align 1, !tbaa !64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cr, i64 123
  store i8 7, ptr %i.gh, align 1, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cr, i64 124
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cr, i64 126
  store i8 3, ptr %i.gj, align 1, !tbaa !63
  store i16 %i.ct, ptr %i.gi, align 1, !tbaa !64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cr, i64 127
  store i8 7, ptr %i.gk, align 1, !tbaa !65
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next109, 24
  br i1 %exitcond111.not, label %bb.e, label %.preheader79, !llvm.loop !66

bb.e:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @Ppmd8_MakeEscFreq(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !49    ; 3 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 858
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr %0, i64 736
  %i.j = getelementptr [128 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !51
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.c, 11
  %i.o = add nuw nsw i32 %i.n, 11
  %i.p = icmp samesign ult i32 %i.o, %i.m
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q
  %i.s = shl nuw nsw i32 %i.c, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 4, !tbaa !49
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i32 %1, %i.aa
  %i.ac = icmp ult i32 %i.s, %i.ab
  %i.ad = select i1 %i.ac, i64 2, i64 0
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah ; 4 uses
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !64 ; 2 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = lshr i32 %i.ak, %i.an                   ; 2 uses
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = sub i16 %i.aj, %i.ap
  store i16 %i.aq, ptr %i.ai, align 1, !tbaa !64
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 1, %bb.c ], [ %i.ar, %bb.b ]
  %.0 = phi ptr [ %i.as, %bb.c ], [ %i.ai, %bb.b ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd8_Update1(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !57
  %i.e = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !tbaa !57
  %i.f = load ptr, ptr %0, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !51
  %i.i = add i16 %i.h, 4
  store i16 %i.i, ptr %i.g, align 2, !tbaa !51
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !57
  %i.l = icmp ugt i8 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.b, i64 6, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %i.m, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !52
  %i.n = load i8, ptr %i.j, align 1, !tbaa !57
  %i.o = icmp ugt i8 %i.n, 124
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.p = phi ptr [ %i.m, %bb.b ], [ %.pre, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !68
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.w = load i16, ptr %i.v, align 1, !tbaa !69
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.aa, %i.af
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ag, align 8, !tbaa !45
  br label %NextContext.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.f, %bb.g
  %storemerge.i = phi ptr [ %i.ai, %bb.g ], [ %i.aa, %bb.f ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Rescale(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.i, i64 6, i1 false), !tbaa.struct !67
  %.not120 = icmp eq ptr %i.i, %i.g
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.099121 = phi ptr [ %i.j, %.lr.ph ], [ %i.i, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.099121, i64 -6 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.099121, ptr noundef nonnull align 1 dereferenceable(6) %i.j, i64 6, i1 false), !tbaa.struct !67
  %.not = icmp eq ptr %i.j, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.099.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.j, %.lr.ph ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.099.lcssa, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.k = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !51
  %i.n = zext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.099.lcssa, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !57    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 %i.n, %i.q
  %i.s = add i8 %i.p, 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32                      ; 2 uses
  %i.x = zext i8 %i.s to i32
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = trunc nuw i32 %i.z to i8
  store i8 %i.aa, ptr %i.o, align 1, !tbaa !57
  %i.ab = load i8, ptr %i.k, align 4, !tbaa !49
  %i.ac = zext i8 %i.ab to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %._crit_edge
  %.1100 = phi ptr [ %.099.lcssa, %._crit_edge ], [ %i.ad, %bb.f ] ; 5 uses
  %.097 = phi i32 [ %i.r, %._crit_edge ], [ %i.ah, %bb.f ]
  %.096 = phi i32 [ %i.z, %._crit_edge ], [ %i.al, %bb.f ]
  %.095 = phi i32 [ %i.ac, %._crit_edge ], [ %i.av, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1100, i64 6 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1100, i64 7 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !57
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = sub i32 %.097, %i.ag                    ; 4 uses
  %i.ai = add nuw nsw i32 %i.ag, %i.w
  %i.aj = lshr i32 %i.ai, 1                       ; 3 uses
  %i.ak = trunc nuw i32 %i.aj to i8               ; 3 uses
  store i8 %i.ak, ptr %i.ae, align 1, !tbaa !57
  %i.al = add i32 %i.aj, %.096                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1100, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !57
  %i.ao = zext i8 %i.an to i32
  %i.ap = icmp samesign ugt i32 %i.aj, %i.ao
  br i1 %i.ap, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.012.0.copyload = load i8, ptr %i.ad, align 1, !tbaa !15
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1100, i64 8
  %i.aq = load i32, ptr %.sroa.516.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0102 = phi ptr [ %i.ad, %bb.c ], [ %i.ar, %bb.e ] ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %.0102, i64 -6 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0102, ptr noundef nonnull align 1 dereferenceable(6) %i.ar, i64 6, i1 false), !tbaa.struct !67
  %.not110 = icmp eq ptr %i.ar, %i.g
  br i1 %.not110, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds i8, ptr %.0102, i64 -11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !57
  %i.au = icmp ult i8 %i.at, %i.ak
  br i1 %i.au, label %bb.d, label %.critedge, !llvm.loop !71

.critedge:                                        ; preds = %bb.d, %bb.e
  store i8 %.sroa.012.0.copyload, ptr %i.ar, align 1, !tbaa !15
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds i8, ptr %.0102, i64 -5
  store i8 %i.ak, ptr %.sroa.4.0..sroa_idx14, align 1, !tbaa !15
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds i8, ptr %.0102, i64 -4
  store i32 %i.aq, ptr %.sroa.516.0..sroa_idx17, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge
  %i.av = add i32 %.095, -1                       ; 2 uses
  %.not111 = icmp eq i32 %i.av, 0
  br i1 %.not111, label %bb.g, label %bb.b, !llvm.loop !72

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.1100, i64 7
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !57
  %i.ay = icmp eq i8 %i.ax, 0
  %.pre133.a = load ptr, ptr %0, align 8, !tbaa !46 ; 11 uses
  br i1 %i.ay, label %bb.h, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.g
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 1
  %.pre136 = load i8, ptr %.phi.trans.insert135, align 1, !tbaa !50
  %.pre137 = load ptr, ptr %i.a, align 8, !tbaa !8
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 4
  %.pre139 = load i32, ptr %.phi.trans.insert138, align 4, !tbaa !54
  %.pre141.a = zext i32 %.pre139 to i64
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %.pre133.a, align 4, !tbaa !49 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.2101 = phi ptr [ %i.ad, %bb.h ], [ %i.bb, %bb.i ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.h ], [ %i.ba, %bb.i ]    ; 2 uses
  %i.ba = add i32 %.1, 1                          ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.2101, i64 -6
  %i.bc = getelementptr inbounds i8, ptr %.2101, i64 -5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !57
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.j, !llvm.loop !73

bb.j:                                             ; preds = %bb.i
  %i.bf = zext i8 %i.az to i32                    ; 2 uses
  %i.bg = add i32 %i.ba, %i.ah                    ; 2 uses
  %i.bh = trunc i32 %i.ba to i8                   ; 2 uses
  %i.bi = sub i8 %i.az, %i.bh                     ; 2 uses
  store i8 %i.bi, ptr %.pre133.a, align 4, !tbaa !49
  %.not114 = icmp eq i8 %i.az, %i.bh
  br i1 %.not114, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 1, !tbaa !15 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !15
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bj = load i32, ptr %.sroa.9.0..sroa_idx, align 1
  %i.bk = zext i8 %.sroa.5.0.copyload to i32
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = add i32 %.1, %i.ah
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = udiv i32 %i.bn, %i.bg                   ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = and i32 %i.bo, 254
  %i.br = icmp samesign ugt i32 %i.bq, 41
  %spec.select = select i1 %i.br, i8 41, i8 %i.bp
  %i.bs = add nuw nsw i32 %i.bf, 2
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 165
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  store i32 -1, ptr %i.g, align 4, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bz = zext i8 %i.bx to i64                    ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = zext i8 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !77
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cj = ptrtoint ptr %i.g to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  store i32 %i.cm, ptr %i.ca, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.bz ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !50
  %i.ct = and i8 %i.cs, 16
  %i.cu = icmp ugt i8 %.sroa.0.0.copyload, 63
  %i.cv = select i1 %i.cu, i8 8, i8 0
  %i.cw = or disjoint i8 %i.ct, %i.cv
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 2 ; 2 uses
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !52
  store i8 %.sroa.0.0.copyload, ptr %i.cx, align 2, !tbaa !15
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 3
  store i8 %spec.select, ptr %.sroa.5.0..sroa_idx2, align 1, !tbaa !15
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 4
  store i32 %i.bj, ptr %.sroa.9.0..sroa_idx5, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cy = zext i8 %i.bi to i32                    ; 2 uses
  %i.cz = add nuw nsw i32 %i.bf, 2
  %i.da = lshr i32 %i.cz, 1                       ; 2 uses
  %i.db = add nuw nsw i32 %i.cy, 2
  %i.dc = lshr i32 %i.db, 1                       ; 2 uses
  %.not112 = icmp eq i32 %i.da, %i.dc
  br i1 %.not112, label %._crit_edge130, label %bb.l

._crit_edge130:                                   ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre133.a, i64 4
  %.pre131 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !54
  br label %iter.check

bb.l:                                             ; preds = %bb.k
  %i.dd = tail call fastcc ptr @ShrinkUnits(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %i.da, i32 noundef %i.dc)
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !54
  %.pre132 = load i8, ptr %i.dj, align 4, !tbaa !49
  %.pre140 = zext i8 %.pre132 to i32
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge130, %bb.l
  %.pre-phi = phi i32 [ %i.cy, %._crit_edge130 ], [ %.pre140, %bb.l ] ; 4 uses
  %i.dl = phi i32 [ %.pre131, %._crit_edge130 ], [ %i.di, %bb.l ]
  %i.dm = phi ptr [ %.pre, %._crit_edge130 ], [ %i.de, %bb.l ] ; 2 uses
  %i.dn = phi ptr [ %.pre133.a, %._crit_edge130 ], [ %i.dj, %bb.l ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !50
  %i.dq = and i8 %i.dp, -9
  %i.dr = zext i32 %i.dl to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dr ; 44 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !55
  %i.du = icmp ugt i8 %i.dt, 63
  %i.dv = select i1 %i.du, i8 8, i8 0
  %i.dw = or disjoint i8 %i.dv, %i.dq             ; 3 uses
  %i.dx = add nsw i32 %.pre-phi, -1               ; 3 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 4 uses
  %min.iters.check = icmp ult i32 %i.dx, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check163 = icmp ult i32 %i.dx, 32
  br i1 %min.iters.check163, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dz, 31                   ; 2 uses
  %i.ea = icmp eq i64 %n.mod.vf, 0
  %i.eb = select i1 %i.ea, i64 32, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.dz, %i.eb               ; 4 uses
  %i.ec = mul nsw i64 %n.vec, 6
  %i.ed = getelementptr i8, ptr %i.ds, i64 %i.ec
  %i.ee = trunc i64 %n.vec to i32
  %i.ef = sub i32 %.pre-phi, %i.ee
  %i.eg = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %i.dw, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.eg, %vector.ph ], [ %i.jj, %vector.body ]
  %vec.phi164 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.jk, %vector.body ]
  %i.eh = mul i64 %index, 6                       ; 32 uses
  %next.gep = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ei = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.el = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.en = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.eo = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ep = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.eq = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.er = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.es = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.et = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.eu = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ev = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ew = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ex = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ey = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ez = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fa = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fb = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fc = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fd = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fe = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.ff = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fg = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fh = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fi = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fj = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fk = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fl = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fm = getelementptr i8, ptr %i.ds, i64 %i.eh
  %i.fn = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.fo = getelementptr i8, ptr %i.ei, i64 12
  %i.fp = getelementptr i8, ptr %i.ej, i64 18
  %i.fq = getelementptr i8, ptr %i.ek, i64 24
  %i.fr = getelementptr i8, ptr %i.el, i64 30
  %i.fs = getelementptr i8, ptr %i.em, i64 36
  %i.ft = getelementptr i8, ptr %i.en, i64 42
  %i.fu = getelementptr i8, ptr %i.eo, i64 48
  %i.fv = getelementptr i8, ptr %i.ep, i64 54
  %i.fw = getelementptr i8, ptr %i.eq, i64 60
  %i.fx = getelementptr i8, ptr %i.er, i64 66
  %i.fy = getelementptr i8, ptr %i.es, i64 72
  %i.fz = getelementptr i8, ptr %i.et, i64 78
  %i.ga = getelementptr i8, ptr %i.eu, i64 84
  %i.gb = getelementptr i8, ptr %i.ev, i64 90
  %i.gc = getelementptr i8, ptr %i.ew, i64 96
  %i.gd = getelementptr i8, ptr %i.ex, i64 102
  %i.ge = getelementptr i8, ptr %i.ey, i64 108
  %i.gf = getelementptr i8, ptr %i.ez, i64 114
  %i.gg = getelementptr i8, ptr %i.fa, i64 120
  %i.gh = getelementptr i8, ptr %i.fb, i64 126
  %i.gi = getelementptr i8, ptr %i.fc, i64 132
  %i.gj = getelementptr i8, ptr %i.fd, i64 138
  %i.gk = getelementptr i8, ptr %i.fe, i64 144
  %i.gl = getelementptr i8, ptr %i.ff, i64 150
  %i.gm = getelementptr i8, ptr %i.fg, i64 156
  %i.gn = getelementptr i8, ptr %i.fh, i64 162
  %i.go = getelementptr i8, ptr %i.fi, i64 168
  %i.gp = getelementptr i8, ptr %i.fj, i64 174
  %i.gq = getelementptr i8, ptr %i.fk, i64 180
  %i.gr = getelementptr i8, ptr %i.fl, i64 186
  %i.gs = getelementptr i8, ptr %i.fm, i64 192
  %i.gt = load i8, ptr %i.fn, align 1, !tbaa !55
  %i.gu = load i8, ptr %i.fo, align 1, !tbaa !55
  %i.gv = load i8, ptr %i.fp, align 1, !tbaa !55
  %i.gw = load i8, ptr %i.fq, align 1, !tbaa !55
  %i.gx = load i8, ptr %i.fr, align 1, !tbaa !55
  %i.gy = load i8, ptr %i.fs, align 1, !tbaa !55
  %i.gz = load i8, ptr %i.ft, align 1, !tbaa !55
  %i.ha = load i8, ptr %i.fu, align 1, !tbaa !55
  %i.hb = load i8, ptr %i.fv, align 1, !tbaa !55
  %i.hc = load i8, ptr %i.fw, align 1, !tbaa !55
  %i.hd = load i8, ptr %i.fx, align 1, !tbaa !55
  %i.he = load i8, ptr %i.fy, align 1, !tbaa !55
  %i.hf = load i8, ptr %i.fz, align 1, !tbaa !55
  %i.hg = load i8, ptr %i.ga, align 1, !tbaa !55
  %i.hh = load i8, ptr %i.gb, align 1, !tbaa !55
  %i.hi = load i8, ptr %i.gc, align 1, !tbaa !55
  %i.hj = insertelement <16 x i8> poison, i8 %i.gt, i64 0
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 1
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 2
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 3
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 4
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 5
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 6
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 7
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 8
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 9
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 10
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 11
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 12
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 13
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 14
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 15
  %i.hz = load i8, ptr %i.gd, align 1, !tbaa !55
  %i.ia = load i8, ptr %i.ge, align 1, !tbaa !55
  %i.ib = load i8, ptr %i.gf, align 1, !tbaa !55
  %i.ic = load i8, ptr %i.gg, align 1, !tbaa !55
  %i.id = load i8, ptr %i.gh, align 1, !tbaa !55
  %i.ie = load i8, ptr %i.gi, align 1, !tbaa !55
  %i.if = load i8, ptr %i.gj, align 1, !tbaa !55
  %i.ig = load i8, ptr %i.gk, align 1, !tbaa !55
  %i.ih = load i8, ptr %i.gl, align 1, !tbaa !55
  %i.ii = load i8, ptr %i.gm, align 1, !tbaa !55
  %i.ij = load i8, ptr %i.gn, align 1, !tbaa !55
  %i.ik = load i8, ptr %i.go, align 1, !tbaa !55
  %i.il = load i8, ptr %i.gp, align 1, !tbaa !55
  %i.im = load i8, ptr %i.gq, align 1, !tbaa !55
  %i.in = load i8, ptr %i.gr, align 1, !tbaa !55
  %i.io = load i8, ptr %i.gs, align 1, !tbaa !55
  %i.ip = insertelement <16 x i8> poison, i8 %i.hz, i64 0
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 1
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 2
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 3
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 4
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 5
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 6
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 7
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 8
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 9
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 10
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 11
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 12
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 13
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 14
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 15
  %i.jf = icmp ugt <16 x i8> %i.hy, splat (i8 63)
  %i.jg = icmp ugt <16 x i8> %i.je, splat (i8 63)
  %i.jh = select <16 x i1> %i.jf, <16 x i8> splat (i8 8), <16 x i8> zeroinitializer
  %i.ji = select <16 x i1> %i.jg, <16 x i8> splat (i8 8), <16 x i8> zeroinitializer
  %i.jj = or <16 x i8> %i.jh, %vec.phi            ; 2 uses
  %i.jk = or <16 x i8> %i.ji, %vec.phi164         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !78

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.jk, %i.jj
  %i.jm = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.eb, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.jm, %vec.epilog.iter.check ], [ %i.dw, %vector.main.loop.iter.check ]
  %n.mod.vf197 = and i64 %i.dz, 7                 ; 2 uses
  %i.jn = icmp eq i64 %n.mod.vf197, 0
  %i.jo = select i1 %i.jn, i64 8, i64 %n.mod.vf197
  %n.vec198 = sub nsw i64 %i.dz, %i.jo            ; 3 uses
  %i.jp = mul nsw i64 %n.vec198, 6
  %i.jq = getelementptr i8, ptr %i.ds, i64 %i.jp
  %i.jr = trunc i64 %n.vec198 to i32
  %i.js = sub i32 %.pre-phi, %i.jr
  %i.jt = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index199 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next209, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi200 = phi <8 x i8> [ %i.jt, %vec.epilog.ph ], [ %i.lc, %vec.epilog.vector.body ]
  %i.ju = mul i64 %index199, 6                    ; 8 uses
  %next.gep201 = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.jv = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.jx = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.jy = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.jz = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.ka = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.kb = getelementptr i8, ptr %i.ds, i64 %i.ju
  %i.kc = getelementptr inbounds nuw i8, ptr %next.gep201, i64 6
  %i.kd = getelementptr i8, ptr %i.jv, i64 12
  %i.ke = getelementptr i8, ptr %i.jw, i64 18
  %i.kf = getelementptr i8, ptr %i.jx, i64 24
  %i.kg = getelementptr i8, ptr %i.jy, i64 30
  %i.kh = getelementptr i8, ptr %i.jz, i64 36
  %i.ki = getelementptr i8, ptr %i.ka, i64 42
  %i.kj = getelementptr i8, ptr %i.kb, i64 48
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !55
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !55
  %i.km = load i8, ptr %i.ke, align 1, !tbaa !55
  %i.kn = load i8, ptr %i.kf, align 1, !tbaa !55
  %i.ko = load i8, ptr %i.kg, align 1, !tbaa !55
  %i.kp = load i8, ptr %i.kh, align 1, !tbaa !55
  %i.kq = load i8, ptr %i.ki, align 1, !tbaa !55
  %i.kr = load i8, ptr %i.kj, align 1, !tbaa !55
  %i.ks = insertelement <8 x i8> poison, i8 %i.kk, i64 0
  %i.kt = insertelement <8 x i8> %i.ks, i8 %i.kl, i64 1
  %i.ku = insertelement <8 x i8> %i.kt, i8 %i.km, i64 2
  %i.kv = insertelement <8 x i8> %i.ku, i8 %i.kn, i64 3
  %i.kw = insertelement <8 x i8> %i.kv, i8 %i.ko, i64 4
  %i.kx = insertelement <8 x i8> %i.kw, i8 %i.kp, i64 5
  %i.ky = insertelement <8 x i8> %i.kx, i8 %i.kq, i64 6
  %i.kz = insertelement <8 x i8> %i.ky, i8 %i.kr, i64 7
  %i.la = icmp ugt <8 x i8> %i.kz, splat (i8 63)
  %i.lb = select <8 x i1> %i.la, <8 x i8> splat (i8 8), <8 x i8> zeroinitializer
  %i.lc = or <8 x i8> %i.lb, %vec.phi200          ; 2 uses
  %index.next209 = add nuw i64 %index199, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next209, %n.vec198
  br i1 %i.ld, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.le = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.lc)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %i.dw, %iter.check ], [ %i.jm, %vec.epilog.iter.check ], [ %i.le, %vec.epilog.middle.block ]
  %.3.ph = phi ptr [ %i.ds, %iter.check ], [ %i.ed, %vec.epilog.iter.check ], [ %i.jq, %vec.epilog.middle.block ]
  %.2.ph = phi i32 [ %.pre-phi, %iter.check ], [ %i.ef, %vec.epilog.iter.check ], [ %i.js, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.lf = phi i8 [ %i.lk, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.3 = phi ptr [ %i.lg, %vec.epilog.scalar.ph ], [ %.3.ph, %vec.epilog.scalar.ph.preheader ]
  %.2 = phi i32 [ %i.ll, %vec.epilog.scalar.ph ], [ %.2.ph, %vec.epilog.scalar.ph.preheader ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.3, i64 6 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !55
  %i.li = icmp ugt i8 %i.lh, 63
  %i.lj = select i1 %i.li, i8 8, i8 0
  %i.lk = or i8 %i.lj, %i.lf                      ; 3 uses
  %i.ll = add i32 %.2, -1                         ; 2 uses
  %.not113 = icmp eq i32 %i.ll, 0
  br i1 %.not113, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !80

.loopexit:                                        ; preds = %vec.epilog.scalar.ph
  store i8 %i.lk, ptr %i.do, align 1, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge134, %.loopexit
  %.pre-phi142 = phi i64 [ %.pre141.a, %._crit_edge134 ], [ %i.dr, %.loopexit ]
  %i.lm = phi ptr [ %.pre137, %._crit_edge134 ], [ %i.dm, %.loopexit ]
  %i.ln = phi i8 [ %.pre136, %._crit_edge134 ], [ %i.lk, %.loopexit ]
  %i.lo = phi ptr [ %.pre133.a, %._crit_edge134 ], [ %i.dn, %.loopexit ] ; 2 uses
  %.198 = phi i32 [ %i.ah, %._crit_edge134 ], [ %i.bg, %.loopexit ] ; 2 uses
  %i.lp = add i32 %.198, %i.al
  %i.lq = lshr i32 %.198, 1
  %i.lr = sub i32 %i.lp, %i.lq
  %i.ls = trunc i32 %i.lr to i16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lv = or i8 %i.ln, 4
  store i8 %i.lv, ptr %i.lu, align 1, !tbaa !50
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.pre-phi142
  store ptr %i.lw, ptr %i.h, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd8_Update1_0(ptr noundef initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !57    ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !51   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign uge i32 %i.f, %i.j
  %i.l = zext i1 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 8, !tbaa !42
  %i.q = add i16 %i.i, 4
  store i16 %i.q, ptr %i.h, align 2, !tbaa !51
  %i.r = add i8 %i.d, 4                           ; 2 uses
  store i8 %i.r, ptr %i.c, align 1, !tbaa !57
  %i.s = icmp ugt i8 %i.r, 124
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !68
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !69
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.ae, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ak, align 8, !tbaa !45
  br label %NextContext.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.e, %bb.f
  %storemerge.i = phi ptr [ %i.am, %bb.f ], [ %i.ae, %bb.e ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd8_UpdateBin(ptr noundef initializes((32, 36)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !57    ; 2 uses
  %i.e = icmp ult i8 %i.d, -60
  %i.f = zext i1 %i.e to i8
  %i.g = add i8 %i.d, %i.f
  store i8 %i.g, ptr %i.c, align 1, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !68
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i16, ptr %i.q, align 1, !tbaa !69
  %i.s = zext i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !40
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.v, %i.aa
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !45
  br label %NextContext.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  br label %NextContext.exit

NextContext.exit:                                 ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.ad, %bb.d ], [ %i.v, %bb.c ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Ppmd8_Update2(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !51
  %i.d = add i16 %i.c, 4
  store i16 %i.d, ptr %i.b, align 2, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !57
  %i.i = add i8 %i.h, 4                           ; 2 uses
  store i8 %i.i, ptr %i.g, align 1, !tbaa !57
  %i.j = icmp ugt i8 %i.i, 124
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Rescale(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %i.m, align 8, !tbaa !42
  tail call fastcc void @UpdateModel(ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  store ptr %i.o, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @UpdateModel(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i32, ptr %i.c, align 1              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !57    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = load i8, ptr %i.b, align 1, !tbaa !55    ; 4 uses
  %i.i = icmp ult i8 %i.f, 31
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47   ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !49
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !57    ; 2 uses
  %i.v = icmp ult i8 %i.u, 32
  br i1 %i.v, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i8 %i.u, 1
  store i8 %i.w, ptr %i.t, align 1, !tbaa !57
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !55
  %.not211 = icmp eq i8 %i.ab, %i.h
  br i1 %.not211, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0189 = phi ptr [ %i.ac, %.preheader ], [ %i.aa, %bb.f ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0189, i64 6 ; 5 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %.not212 = icmp eq i8 %i.ad, %i.h
  br i1 %.not212, label %bb.g, label %.preheader, !llvm.loop !81

bb.g:                                             ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.0189, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %.0189, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !57
  %.not213 = icmp ult i8 %i.af, %i.ah
  br i1 %.not213, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %i.ac, i64 6, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) %.0189, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0189, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.1190 = phi ptr [ %.0189, %bb.h ], [ %i.ac, %bb.g ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1190, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !57  ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 115
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %narrow = add nuw nsw i8 %i.aj, 2
  store i8 %narrow, ptr %i.ai, align 1, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !51
  %i.an = add i16 %i.am, 2
  store i16 %i.an, ptr %i.al, align 2, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.j, %bb.i, %bb.b, %bb.a
  %.2191 = phi ptr [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %.1190, %bb.j ], [ %.1190, %bb.i ], [ null, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp ne i32 %i.d, 0                     ; 2 uses
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %0, align 8, !tbaa !46
  %i.av = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %.2191, ptr noundef %i.au) ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i32 0, ptr %i.ay, align 1
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef %i.ap)
  br label %bb.bd

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i32 %i.be, ptr %i.bf, align 1
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !45
  br label %bb.bd

bb.o:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !37
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !15
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38 ; 2 uses
  %.not214 = icmp ult ptr %i.bl, %i.bt
  br i1 %.not214, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef %i.ap)
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  br i1 %i.at, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i32 %i.br, ptr %i.bw, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.aa, %bb.r
  %.060.i = phi ptr [ %i.bu, %bb.r ], [ %.161.i, %bb.aa ] ; 3 uses
  %.059.i = phi ptr [ %.2191, %bb.r ], [ null, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr %i.aq, align 8, !tbaa !40
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %i.aq, align 8, !tbaa !40
  %.not.i = icmp eq ptr %.059.i, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.060.i, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.060.i, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47 ; 2 uses
  %.not69.i = icmp eq i32 %i.cd, 0
  br i1 %.not69.i, label %.thread244.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf ; 8 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !49
  %.not70.i = icmp eq i8 %i.ch, 0
  br i1 %.not70.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !54
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ck ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !55
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !55  ; 2 uses
  %.not71.i = icmp eq i8 %i.cm, %i.co
  br i1 %.not71.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.062.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.cl, %bb.w ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.062.i, i64 6 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !55
  %.not72.i = icmp eq i8 %i.cq, %i.co
  br i1 %.not72.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !82

.loopexit.i:                                      ; preds = %.preheader.i, %bb.w
  %.163.i = phi ptr [ %i.cl, %bb.w ], [ %i.cp, %.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.163.i, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !57  ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 115
  br i1 %i.ct, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.loopexit.i
  %narrow.i = add nuw nsw i8 %i.cs, 2
  store i8 %narrow.i, ptr %i.cr, align 1, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !51
  %i.cw = add i16 %i.cv, 2
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !51
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 3 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !57  ; 2 uses
  %i.da = icmp ult i8 %i.cz, 32
  %i.db = zext i1 %i.da to i8
  %i.dc = add i8 %i.cz, %i.db
  store i8 %i.dc, ptr %i.cy, align 1, !tbaa !57
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.loopexit.i, %bb.t
  %.2.i = phi ptr [ %.059.i, %bb.t ], [ %.163.i, %bb.x ], [ %.163.i, %.loopexit.i ], [ %i.cx, %bb.y ] ; 2 uses
  %.161.i = phi ptr [ %i.cb, %bb.t ], [ %i.cg, %bb.x ], [ %i.cg, %.loopexit.i ], [ %i.cg, %bb.y ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 2 ; 5 uses
  %i.de = load i32, ptr %i.dd, align 1            ; 2 uses
  %.not73.i = icmp eq i32 %i.de, 0
  br i1 %.not73.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.br, ptr %i.dd, align 1
  br label %bb.s

bb.ab:                                            ; preds = %bb.z
  %.not74.i = icmp ugt i32 %i.de, %i.br
  br i1 %.not74.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %.2.i, ptr %i.a, align 8, !tbaa !52
  %i.dg = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, ptr noundef %.161.i) ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge75.i = phi i32 [ %i.dm, %bb.ad ], [ 0, %bb.ac ]
  store i32 %storemerge75.i, ptr %i.dd, align 1
  store ptr %i.df, ptr %i.a, align 8, !tbaa !52
  %.pre.i = load i32, ptr %i.aq, align 8, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.dn = phi i32 [ %.pre.i, %bb.ae ], [ %storemerge.i, %bb.ab ]
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.dq = icmp eq ptr %i.bu, %i.dp
  br i1 %i.dq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ds = load i32, ptr %i.dd, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i32 %i.ds, ptr %i.dt, align 1
  %i.du = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -1
  store ptr %i.dv, ptr %i.bi, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dw = load i32, ptr %i.dd, align 1            ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %.thread, label %.thread244

.thread:                                          ; preds = %bb.ai
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef %i.ap)
  br label %bb.bd

bb.aj:                                            ; preds = %bb.q
  %i.dy = zext i32 %i.d to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.dy
  %i.ea = icmp ult ptr %i.dz, %i.bt
  br i1 %i.ea, label %bb.ak, label %.thread244

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load ptr, ptr %0, align 8, !tbaa !46
  %i.ec = tail call fastcc ptr @CreateSuccessors(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %.2191, ptr noundef %i.eb) ; 2 uses
  %.not216 = icmp eq ptr %i.ec, null
  br i1 %.not216, label %.thread247, label %.thread244.sink.split

.thread247:                                       ; preds = %bb.ak
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef %i.ap)
  br label %bb.bd

.thread244.sink.split:                            ; preds = %bb.u, %bb.ak
  %.sink318 = phi ptr [ %i.ec, %bb.ak ], [ %.060.i, %bb.u ]
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ee = ptrtoint ptr %.sink318 to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  br label %.thread244

.thread244:                                       ; preds = %.thread244.sink.split, %bb.ai, %bb.aj
  %.2 = phi i32 [ %i.dw, %bb.ai ], [ %i.d, %bb.aj ], [ %i.eh, %.thread244.sink.split ] ; 2 uses
  %i.ei = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.aq, align 8, !tbaa !40
  %i.ek = icmp eq i32 %i.ej, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
  br i1 %i.ek, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread244
  %i.el = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.em = icmp ne ptr %i.el, %.pre
  %i.en = load ptr, ptr %i.bi, align 8, !tbaa !37
  %.neg = sext i1 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %.neg
  store ptr %i.eo, ptr %i.bi, align 8, !tbaa !37
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread244
  %.0 = phi i32 [ %.2, %bb.al ], [ %i.br, %.thread244 ]
  %i.ep = load i8, ptr %.pre, align 4, !tbaa !49  ; 2 uses
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = icmp ugt i8 %i.h, 63
  %i.es = select i1 %i.er, i8 8, i8 0
  %.not217273 = icmp eq ptr %i.ap, %.pre
  br i1 %.not217273, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.am
  %.pre285 = load ptr, ptr %i.bm, align 8, !tbaa !8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !51
  %i.ev = zext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fd = icmp ugt i8 %i.ep, 2
  %i.fe = zext i1 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.g, 1
  %i.fg = add nuw nsw i32 %i.g, %i.eq
  %i.fh = sub nsw i32 %i.ev, %i.fg
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %.critedge226
  %.0188274 = phi ptr [ %i.ap, %.lr.ph ], [ %i.mb, %.critedge226 ] ; 12 uses
  %i.fi = load i8, ptr %.0188274, align 4, !tbaa !49 ; 4 uses
  %i.fj = zext i8 %i.fi to i32                    ; 3 uses
  %.not218 = icmp eq i8 %i.fi, 0
  br i1 %.not218, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = and i32 %i.fj, 1
  %.not220 = icmp eq i32 %i.fk, 0
  br i1 %.not220, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = add nuw nsw i32 %i.fj, 1                ; 3 uses
  %i.fm = lshr exact i32 %i.fl, 1                 ; 3 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr i8, ptr %i.ew, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15  ; 3 uses
  %i.fr = load i8, ptr %i.fo, align 1, !tbaa !15
  %.not221 = icmp eq i8 %i.fq, %i.fr
  br i1 %.not221, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = zext i8 %i.fq to i32
  %i.ft = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64              ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4  ; 2 uses
  %.not.i227 = icmp eq i32 %i.fw, 0
  br i1 %.not.i227, label %bb.ar, label %AllocUnits.exit.thread

AllocUnits.exit.thread:                           ; preds = %bb.aq
  %i.fx = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !76
  store i32 %i.gb, ptr %i.fv, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fu ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = add i32 %i.gd, -1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !4
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fu
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nuw nsw i32 %i.gh, 12               ; 2 uses
  %i.gj = load ptr, ptr %i.fa, align 8, !tbaa !44
  %i.gk = load ptr, ptr %i.fb, align 8, !tbaa !53 ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = trunc i64 %i.gn to i32
  %.not16.i = icmp ugt i32 %i.gi, %i.go
  br i1 %.not16.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = zext nneg i32 %i.gi to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gp
  store ptr %i.gq, ptr %i.fb, align 8, !tbaa !53
  br label %AllocUnits.exit

bb.at:                                            ; preds = %bb.ar
  %i.gr = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef range(i32 0, 257) %i.ft)
  br label %AllocUnits.exit

AllocUnits.exit:                                  ; preds = %bb.as, %bb.at
  %.0.i228 = phi ptr [ %i.gr, %bb.at ], [ %i.gk, %bb.as ] ; 2 uses
  %.not222.not = icmp eq ptr %.0.i228, null
  br i1 %.not222.not, label %.thread254, label %AllocUnits.exit._crit_edge

AllocUnits.exit._crit_edge:                       ; preds = %AllocUnits.exit
  %.pre284 = load ptr, ptr %i.bm, align 8, !tbaa !8
  br label %bb.au

.thread254:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef nonnull %.0188274)
  br label %bb.bd

bb.au:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.gs = phi ptr [ %i.fx, %AllocUnits.exit.thread ], [ %.pre284, %AllocUnits.exit._crit_edge ] ; 2 uses
  %.0.i228251 = phi ptr [ %i.fz, %AllocUnits.exit.thread ], [ %.0.i228, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0188274, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !54 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv ; 8 uses
  %i.gx = and i32 %i.fl, 2
  %lcmp.mod.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.au
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !4
  store i32 %i.gy, ptr %.0.i228251, align 4, !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 8
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 12
  %i.hh = add nsw i32 %i.fm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.au
  %.0187.unr = phi ptr [ %.0.i228251, %bb.au ], [ %i.hg, %.prol.loopexit.unr-lcssa ]
  %.0186.unr = phi ptr [ %i.gw, %bb.au ], [ %i.hf, %.prol.loopexit.unr-lcssa ]
  %.0185.unr = phi i32 [ %i.fm, %bb.au ], [ %i.hh, %.prol.loopexit.unr-lcssa ]
  %i.hi = icmp eq i32 %i.fl, 2
  br i1 %i.hi, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0187 = phi ptr [ %i.ia, %.new ], [ %.0187.unr, %.prol.loopexit ] ; 7 uses
  %.0186 = phi ptr [ %i.hz, %.new ], [ %.0186.unr, %.prol.loopexit ] ; 7 uses
  %.0185 = phi i32 [ %i.ib, %.new ], [ %.0185.unr, %.prol.loopexit ]
  %i.hj = load i32, ptr %.0186, align 4, !tbaa !4
  store i32 %i.hj, ptr %.0187, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %.0186, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %.0187, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !4
  %i.hn = getelementptr inbounds nuw i8, ptr %.0186, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = getelementptr inbounds nuw i8, ptr %.0187, i64 8
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !4
  %i.hq = getelementptr inbounds nuw i8, ptr %.0186, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %.0187, i64 12
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !4
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !4
  %i.ht = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = getelementptr inbounds nuw i8, ptr %.0187, i64 16
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !4
  %i.hw = getelementptr inbounds nuw i8, ptr %.0186, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = getelementptr inbounds nuw i8, ptr %.0187, i64 20
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !4
  %i.hz = getelementptr inbounds nuw i8, ptr %.0186, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.0187, i64 24
  %i.ib = add i32 %.0185, -2                      ; 2 uses
  %.not223.1 = icmp eq i32 %i.ib, 0
  br i1 %.not223.1, label %.unr-lcssa, label %.new, !llvm.loop !83

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store i32 -1, ptr %i.gw, align 4, !tbaa !74
  %i.ic = zext i8 %i.fq to i64                    ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !76
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ic
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !15
  %i.ii = zext i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !77
  %i.ik = ptrtoint ptr %i.gs to i64
  store i32 %i.gu, ptr %i.id, align 4, !tbaa !4
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ic ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !4
  %i.io = ptrtoint ptr %.0.i228251 to i64
  %i.ip = sub i64 %i.io, %i.ik
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.gt, align 4, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.ap, %bb.ao
  %i.ir = getelementptr inbounds nuw i8, ptr %.0188274, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !51
  %i.it = mul nuw nsw i32 %i.fj, 3
  %i.iu = add nuw nsw i32 %i.it, 1
  %i.iv = icmp samesign ult i32 %i.iu, %i.eq
  %i.iw = zext i1 %i.iv to i16
  %i.ix = add i16 %i.is, %i.iw
  br label %bb.ba

bb.av:                                            ; preds = %bb.an
  %i.iy = load i32, ptr %i.ex, align 8, !tbaa !4  ; 2 uses
  %.not.i229 = icmp eq i32 %i.iy, 0
  br i1 %.not.i229, label %bb.aw, label %AllocUnits.exit232.thread

AllocUnits.exit232.thread:                        ; preds = %bb.av
  %i.iz = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ja = zext i32 %i.iy to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !76
  store i32 %i.jd, ptr %i.ex, align 8, !tbaa !4
  %i.je = load i32, ptr %i.ey, align 8, !tbaa !4
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr %i.ey, align 8, !tbaa !4
  br label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jg = load i8, ptr %i.ez, align 8, !tbaa !15
  %i.jh = zext i8 %i.jg to i32
  %i.ji = mul nuw nsw i32 %i.jh, 12               ; 2 uses
  %i.jj = load ptr, ptr %i.fa, align 8, !tbaa !44
  %i.jk = load ptr, ptr %i.fb, align 8, !tbaa !53 ; 3 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = trunc i64 %i.jn to i32
  %.not16.i231 = icmp ugt i32 %i.ji, %i.jo
  br i1 %.not16.i231, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jp = zext nneg i32 %i.ji to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jp
  store ptr %i.jq, ptr %i.fb, align 8, !tbaa !53
  br label %AllocUnits.exit232

bb.ay:                                            ; preds = %bb.aw
  %i.jr = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit232

AllocUnits.exit232:                               ; preds = %bb.ax, %bb.ay
  %.0.i230 = phi ptr [ %i.jr, %bb.ay ], [ %i.jk, %bb.ax ] ; 2 uses
  %.not219.not = icmp eq ptr %.0.i230, null
  br i1 %.not219.not, label %.thread261, label %bb.az

.thread261:                                       ; preds = %AllocUnits.exit232
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef nonnull %.0188274)
  br label %bb.bd

bb.az:                                            ; preds = %AllocUnits.exit232, %AllocUnits.exit232.thread
  %.0.i230258 = phi ptr [ %i.jb, %AllocUnits.exit232.thread ], [ %.0.i230, %AllocUnits.exit232 ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0188274, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.i230258, ptr noundef nonnull align 2 dereferenceable(6) %i.js, i64 6, i1 false), !tbaa.struct !67
  %i.jt = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ju = ptrtoint ptr %.0.i230258 to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %.0188274, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !54
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i230258, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !57  ; 2 uses
  %i.kb = icmp ult i8 %i.ka, 30
  %i.kc = shl nuw nsw i8 %i.ka, 1
  %storemerge = select i1 %i.kb, i8 %i.kc, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.jz, align 1, !tbaa !57
  %i.kd = zext nneg i8 %storemerge to i32
  %i.ke = load i32, ptr %i.fc, align 4, !tbaa !84
  %i.kf = add i32 %i.ke, %i.fe
  %i.kg = add i32 %i.kf, %i.kd
  %i.kh = trunc i32 %i.kg to i16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge
  %i.ki = phi i16 [ %i.kh, %bb.az ], [ %i.ix, %.critedge ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0188274, i64 2
  %i.kk = zext i16 %i.ki to i32                   ; 2 uses
  %i.kl = add nuw nsw i32 %i.kk, 6
  %i.km = mul nuw nsw i32 %i.kl, %i.ff            ; 6 uses
  %i.kn = add nsw i32 %i.fh, %i.kk                ; 6 uses
  %i.ko = mul nsw i32 %i.kn, 6
  %i.kp = icmp ult i32 %i.km, %i.ko
  br i1 %i.kp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kq = icmp ugt i32 %i.km, %i.kn
  %i.kr = select i1 %i.kq, i32 2, i32 1
  %i.ks = shl nsw i32 %i.kn, 2
  %i.kt = icmp uge i32 %i.km, %i.ks
  %i.ku = zext i1 %i.kt to i32
  %i.kv = add nuw nsw i32 %i.kr, %i.ku
  br label %.critedge226

bb.bc:                                            ; preds = %bb.ba
  %i.kw = mul nsw i32 %i.kn, 9
  %i.kx = icmp ugt i32 %i.km, %i.kw
  %i.ky = select i1 %i.kx, i32 5, i32 4
  %i.kz = mul nsw i32 %i.kn, 12
  %i.la = icmp ugt i32 %i.km, %i.kz
  %i.lb = zext i1 %i.la to i32
  %i.lc = add nuw nsw i32 %i.ky, %i.lb
  %i.ld = mul nsw i32 %i.kn, 15
  %i.le = icmp ugt i32 %i.km, %i.ld
  %i.lf = zext i1 %i.le to i32
  %i.lg = add nuw nsw i32 %i.lc, %i.lf            ; 2 uses
  %i.lh = trunc nuw nsw i32 %i.lg to i16
  br label %.critedge226

.critedge226:                                     ; preds = %bb.bc, %bb.bb
  %.pn = phi i16 [ %i.lh, %bb.bc ], [ 4, %bb.bb ]
  %.0195 = phi i32 [ %i.lg, %bb.bc ], [ %i.kv, %bb.bb ]
  %storemerge224 = add i16 %.pn, %i.ki
  store i16 %storemerge224, ptr %i.kj, align 2, !tbaa !51
  %i.li = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw i8, ptr %.0188274, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !54
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ll
  %i.ln = zext i8 %i.fi to i64
  %i.lo = getelementptr inbounds nuw [6 x i8], ptr %i.lm, i64 %i.ln ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 6
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 %.0, ptr %i.lq, align 1
  store i8 %i.h, ptr %i.lp, align 1, !tbaa !55
  %i.lr = trunc nuw nsw i32 %.0195 to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 7
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !57
  %i.lt = getelementptr inbounds nuw i8, ptr %.0188274, i64 1 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !50
  %i.lv = or i8 %i.lu, %i.es
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !50
  %i.lw = add i8 %i.fi, 1
  store i8 %i.lw, ptr %.0188274, align 4, !tbaa !49
  %i.lx = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0188274, i64 8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !47
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mc = load ptr, ptr %0, align 8, !tbaa !46
  %.not217 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not217, label %._crit_edge, label %bb.an, !llvm.loop !85

._crit_edge:                                      ; preds = %.critedge226, %.._crit_edge_crit_edge
  %i.md = phi ptr [ %.pre285, %.._crit_edge_crit_edge ], [ %i.lx, %.critedge226 ]
  %i.me = zext i32 %.2 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.me ; 2 uses
  store ptr %i.mf, ptr %0, align 8, !tbaa !46
  store ptr %i.mf, ptr %i.ao, align 8, !tbaa !45
  br label %bb.bd

bb.bd:                                            ; preds = %.thread261, %.thread254, %.thread247, %.thread, %bb.m, %bb.n, %._crit_edge, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @ShrinkUnits(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 130) %2, i32 noundef range(i32 1, 129) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 3 uses
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15    ; 3 uses
  %i.f = zext nneg i32 %3 to i64
  %i.g = getelementptr i8, ptr %i.a, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15    ; 2 uses
  %i.j = icmp eq i8 %i.e, %i.i
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.l = zext i8 %i.i to i64                      ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8    ; 2 uses
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !76
  store i32 %i.t, ptr %i.m, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.l ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !4
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.y = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.y, ptr %i.r, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ah = add nsw i32 %3, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.033.unr = phi ptr [ %i.r, %bb.c ], [ %i.ag, %.prol.loopexit.unr-lcssa ]
  %.032.unr = phi ptr [ %1, %bb.c ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.0.unr = phi i32 [ %3, %bb.c ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.033 = phi ptr [ %i.ba, %.new ], [ %.033.unr, %.prol.loopexit ] ; 7 uses
  %.032 = phi ptr [ %i.az, %.new ], [ %.032.unr, %.prol.loopexit ] ; 7 uses
  %.0 = phi i32 [ %i.bb, %.new ], [ %.0.unr, %.prol.loopexit ]
  %i.aj = load i32, ptr %.032, align 4, !tbaa !4
  store i32 %i.aj, ptr %.033, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %.033, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.033, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.033, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !4
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.033, i64 16
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.032, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.033, i64 20
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.033, i64 24
  %i.bb = add nsw i32 %.0, -2                     ; 2 uses
  %.not37.1 = icmp eq i32 %i.bb, 0
  br i1 %.not37.1, label %.unr-lcssa, label %.new, !llvm.loop !86

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store i32 -1, ptr %1, align 4, !tbaa !74
  %i.bc = zext i8 %i.e to i64                     ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !77
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %i.p to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bd, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bc ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.bt = zext i8 %i.e to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.l
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = sub nsw i32 %i.bw, %i.bz                ; 3 uses
  %i.cb = mul nuw nsw i32 %i.bz, 12
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc ; 5 uses
  %i.ce = add nsw i32 %i.ca, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = zext i8 %i.ch to i64                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15
  %i.cl = zext i8 %i.ck to i32
  %.not.i = icmp eq i32 %i.ca, %i.cl
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  %.pre22.i = ptrtoint ptr %.pre.i to i64
  br label %SplitBlock.exit

bb.e:                                             ; preds = %bb.d
  %i.cm = add nuw nsw i64 %i.ci, 4294967295
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, 12
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cs ; 4 uses
  %i.cu = xor i32 %i.cq, -1
  %i.cv = add nsw i32 %i.ca, %i.cu
  store i32 -1, ptr %i.ct, align 4, !tbaa !74
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.dg = ptrtoint ptr %i.ct to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.cx, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cw ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !4
  br label %SplitBlock.exit

SplitBlock.exit:                                  ; preds = %._crit_edge.i, %bb.e
  %.pre-phi23.i = phi i64 [ %.pre22.i, %._crit_edge.i ], [ %i.dh, %bb.e ]
  %.pre-phi.i = phi i64 [ %i.ci, %._crit_edge.i ], [ %i.cn, %bb.e ] ; 3 uses
  store i32 -1, ptr %i.cd, align 4, !tbaa !74
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.pre-phi.i ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.pre-phi.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !77
  %i.dv = ptrtoint ptr %i.cd to i64
  %i.dw = sub i64 %i.dv, %.pre-phi23.i
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.do, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.pre-phi.i ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %SplitBlock.exit, %.unr-lcssa
  %.034 = phi ptr [ %1, %SplitBlock.exit ], [ %i.r, %.unr-lcssa ], [ %1, %bb.a ]
  ret ptr %.034
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @CreateSuccessors(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [17 x ptr], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i32, ptr %i.d, align 1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 16, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.090 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %.not102138 = icmp eq i32 %i.g, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 6 uses
  br i1 %.not102138, label %.thread119, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.l
  %i.h = phi i32 [ %i.au, %bb.l ], [ %i.g, %bb.c ]
  %.079140 = phi ptr [ null, %bb.l ], [ %2, %bb.c ] ; 2 uses
  %.191139 = phi i32 [ %i.aq, %bb.l ], [ %.090, %bb.c ] ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i ; 8 uses
  %.not103 = icmp eq ptr %.079140, null
  br i1 %.not103, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.lr.ph
  %i.k = load i8, ptr %i.j, align 4, !tbaa !49
  %.not104 = icmp eq i8 %i.k, 0
  br i1 %.not104, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n
  %i.p = load i8, ptr %i.c, align 1, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.083 = phi ptr [ %i.o, %bb.e ], [ %i.r, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.083, align 1, !tbaa !55
  %.not106 = icmp eq i8 %i.q, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.083, i64 6
  br i1 %.not106, label %bb.g, label %bb.f, !llvm.loop !88

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.083, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !57    ; 2 uses
  %i.u = icmp ult i8 %i.t, 115
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add nuw nsw i8 %i.t, 1
  store i8 %i.v, ptr %i.s, align 1, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !51
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %i.w, align 2, !tbaa !51
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !49
  %.not105 = icmp eq i8 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 3 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !57  ; 2 uses
  %i.ah = icmp ult i8 %i.ag, 24
  %i.ai = and i1 %.not105, %i.ah
  %i.aj = zext i1 %i.ai to i8
  %i.ak = add i8 %i.ag, %i.aj
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i, %bb.h, %bb.g
  %.184 = phi ptr [ %i.z, %bb.i ], [ %.083, %bb.h ], [ %.083, %bb.g ], [ %.079140, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.184, i64 2
  %i.am = load i32, ptr %i.al, align 1            ; 2 uses
  %.not107 = icmp eq i32 %i.am, %i.e
  br i1 %.not107, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.an ; 2 uses
  %i.ap = icmp eq i32 %.191139, 0
  br i1 %i.ap, label %.thread, label %.thread119

bb.l:                                             ; preds = %bb.j
  %i.aq = add i32 %.191139, 1                     ; 2 uses
  %i.ar = zext i32 %.191139 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar
  store ptr %.184, ptr %i.as, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !47 ; 2 uses
  %.not102 = icmp eq i32 %i.au, 0
  br i1 %.not102, label %.thread119, label %.lr.ph

.thread119:                                       ; preds = %bb.l, %bb.c, %bb.k
  %.191136 = phi i32 [ %.191139, %bb.k ], [ %.090, %bb.c ], [ %i.aq, %bb.l ]
  %.287 = phi ptr [ %i.ao, %bb.k ], [ %3, %bb.c ], [ %i.j, %bb.l ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = zext i32 %i.e to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15  ; 3 uses
  %i.az = add i32 %i.e, 1
  %i.ba = load i8, ptr %i.c, align 1, !tbaa !55
  %i.bb = icmp ugt i8 %i.ba, 63
  %i.bc = select i1 %i.bb, i8 16, i8 0
  %i.bd = icmp ugt i8 %i.ay, 63
  %i.be = select i1 %i.bd, i8 8, i8 0
  %i.bf = or disjoint i8 %i.bc, %i.be
  %i.bg = load i8, ptr %.287, align 4, !tbaa !49  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread119
  %i.bi = getelementptr inbounds nuw i8, ptr %.287, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !57
  br label %bb.t

bb.n:                                             ; preds = %.thread119
  %i.bk = getelementptr inbounds nuw i8, ptr %.287, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !54
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bm
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.077 = phi ptr [ %i.bn, %bb.n ], [ %i.bp, %bb.o ] ; 3 uses
  %i.bo = load i8, ptr %.077, align 1, !tbaa !55
  %.not108 = icmp eq i8 %i.bo, %i.ay
  %i.bp = getelementptr inbounds nuw i8, ptr %.077, i64 6
  br i1 %.not108, label %bb.p, label %bb.o, !llvm.loop !89

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !57
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.287, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !51
  %i.bw = zext i16 %i.bv to i32
  %i.bx = zext i8 %i.bg to i32
  %i.by = add nuw nsw i32 %i.bs, %i.bx
  %reass.sub = sub nsw i32 %i.bw, %i.by
  %i.bz = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.ca = shl nsw i32 %i.bt, 1
  %.not109 = icmp ugt i32 %i.ca, %i.bz
  br i1 %.not109, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = mul nsw i32 %i.bt, 5
  %i.cc = icmp ugt i32 %i.cb, %i.bz
  %i.cd = zext i1 %i.cc to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ce = shl nsw i32 %i.bz, 1
  %i.cf = add nsw i32 %i.bs, -4
  %i.cg = add nsw i32 %i.cf, %i.ce
  %i.ch = udiv i32 %i.cg, %i.bz
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ci = phi i32 [ %i.cd, %bb.q ], [ %i.ch, %bb.r ]
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = add i8 %i.cj, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.sroa.6.0 = phi i8 [ %i.bj, %bb.m ], [ %i.ck, %bb.s ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.t
  %.494 = phi i32 [ %.191136, %bb.t ], [ %i.dj, %bb.z ]
  %.388 = phi ptr [ %.287, %bb.t ], [ %.0, %bb.z ]
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !44 ; 2 uses
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !53
  %.not110 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -12 ; 2 uses
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !44
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cs = load i32, ptr %i.cn, align 8, !tbaa !4  ; 2 uses
  %.not111 = icmp eq i32 %i.cs, 0
  br i1 %.not111, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !76
  store i32 %i.cx, ptr %i.cn, align 8, !tbaa !4
  %i.cy = load i32, ptr %i.co, align 8, !tbaa !4
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr %i.co, align 8, !tbaa !4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.da = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not112 = icmp eq ptr %i.da, null
  br i1 %.not112, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x
  %.0 = phi ptr [ %i.cr, %bb.v ], [ %i.cv, %bb.x ], [ %i.da, %bb.y ] ; 9 uses
  store i8 0, ptr %.0, align 4, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.bf, ptr %i.db, align 1, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.ay, ptr %i.dc, align 2, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !15
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.az, ptr %.sroa.8.0..sroa_idx, align 4
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.de = ptrtoint ptr %.388 to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !47
  %i.dj = add i32 %.494, -1                       ; 3 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !87
  %i.dn = ptrtoint ptr %.0 to i64
  %i.do = sub i64 %i.dn, %i.df
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i32 %i.dp, ptr %i.dq, align 1
  %.not113 = icmp eq i32 %i.dj, 0
  br i1 %.not113, label %.thread, label %bb.u, !llvm.loop !90

.thread:                                          ; preds = %bb.y, %bb.z, %bb.k
  %.5 = phi ptr [ %i.ao, %bb.k ], [ %.0, %bb.z ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @RestoreModel(ptr noundef initializes((80, 88)) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [38 x i32], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %.not73 = icmp eq ptr %i.j, %1
  br i1 %.not73, label %.preheader67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %bb.b

.preheader67:                                     ; preds = %bb.g, %bb.a
  %i.o = phi ptr [ %i.c, %bb.a ], [ %i.dk, %bb.g ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.do, %bb.g ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not5375 = icmp eq ptr %.0.lcssa, %i.p
  br i1 %.not5375, label %._crit_edge, label %.lr.ph77

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.dk, %bb.g ] ; 2 uses
  %.074 = phi ptr [ %i.j, %.lr.ph ], [ %i.do, %bb.g ] ; 10 uses
  %i.r = load i8, ptr %.074, align 4, !tbaa !49
  %i.s = add i8 %i.r, -1                          ; 4 uses
  store i8 %i.s, ptr %.074, align 4, !tbaa !49
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !54
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.074, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !50
  %i.aa = and i8 %i.z, 16
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !55
  %i.ac = icmp ugt i8 %i.ab, 63
  %i.ad = select i1 %i.ac, i8 8, i8 0
  %i.ae = or disjoint i8 %i.ad, %i.aa
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %.074, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.af, ptr noundef nonnull align 1 dereferenceable(6) %i.x, i64 6, i1 false), !tbaa.struct !67
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.x, align 4, !tbaa !74
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !76
  %i.aj = load i8, ptr %i.m, align 8, !tbaa !15
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !77
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.an = ptrtoint ptr %i.x to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !4
  %i.ar = load i32, ptr %i.n, align 8, !tbaa !4
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.n, align 8, !tbaa !4
  br label %SpecialFreeUnit.exit

bb.e:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store ptr %i.at, ptr %i.k, align 8, !tbaa !38
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %SpecialFreeUnit.exit

SpecialFreeUnit.exit:                             ; preds = %bb.d, %bb.e
  %.pre = phi ptr [ %i.am, %bb.d ], [ %.pre.pre, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.074, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !57
  %i.aw = zext i8 %i.av to i16
  %i.ax = add nuw nsw i16 %i.aw, 11
  %i.ay = lshr i16 %i.ax, 3
  %i.az = trunc nuw nsw i16 %i.ay to i8
  store i8 %i.az, ptr %i.au, align 1, !tbaa !57
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ba = zext i8 %i.s to i32                     ; 5 uses
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !54
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bf
  %i.bh = add nuw nsw i32 %i.ba, 2
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = tail call fastcc ptr @ShrinkUnits(ptr noundef nonnull %0, ptr noundef %i.bg, i32 noundef range(i32 1, 130) %i.bc, i32 noundef %i.bi) ; 6 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bd, align 4, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %.074, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !50
  %i.br = and i8 %i.bq, 16
  %i.bs = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bt = icmp ugt i8 %i.bs, 63
  %i.bu = select i1 %i.bt, i8 8, i8 0
  %i.bv = or disjoint i8 %i.bu, %i.br             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.074, i64 2 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !57
  %i.ca = zext i8 %i.bz to i16                    ; 4 uses
  %i.cb = sub i16 %i.bx, %i.ca                    ; 3 uses
  %xtraiter = and i32 %i.ba, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !57
  %i.cf = zext i8 %i.ce to i16                    ; 2 uses
  %i.cg = sub i16 %i.cb, %i.cf
  %i.ch = add nuw nsw i16 %i.ca, %i.cf
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !55
  %i.cj = icmp ugt i8 %i.ci, 63
  %i.ck = select i1 %i.cj, i8 8, i8 0
  %i.cl = or i8 %i.ck, %i.bv                      ; 2 uses
  %i.cm = add nsw i32 %i.ba, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.f
  %.lcssa135.unr = phi i8 [ poison, %bb.f ], [ %i.cl, %.prol.loopexit.unr-lcssa ]
  %.037.i.unr = phi i32 [ %i.ba, %bb.f ], [ %i.cm, %.prol.loopexit.unr-lcssa ]
  %.036.i.unr = phi i16 [ %i.cb, %bb.f ], [ %i.cg, %.prol.loopexit.unr-lcssa ]
  %.035.i.unr = phi i16 [ %i.ca, %bb.f ], [ %i.ch, %.prol.loopexit.unr-lcssa ]
  %.034.i.unr = phi i8 [ %i.bv, %bb.f ], [ %i.cl, %.prol.loopexit.unr-lcssa ]
  %.0.i.unr = phi ptr [ %i.bj, %bb.f ], [ %i.cc, %.prol.loopexit.unr-lcssa ]
  %i.cn = icmp eq i8 %i.s, 1
  br i1 %i.cn, label %Refresh.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.037.i = phi i32 [ %i.di, %.new ], [ %.037.i.unr, %.prol.loopexit ]
  %.036.i = phi i16 [ %i.dc, %.new ], [ %.036.i.unr, %.prol.loopexit ]
  %.035.i = phi i16 [ %i.dd, %.new ], [ %.035.i.unr, %.prol.loopexit ]
  %.034.i = phi i8 [ %i.dh, %.new ], [ %.034.i.unr, %.prol.loopexit ]
  %.0.i = phi ptr [ %i.cy, %.new ], [ %.0.i.unr, %.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 6
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 7
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !57
  %i.cr = zext i8 %i.cq to i16                    ; 2 uses
  %i.cs = sub i16 %.036.i, %i.cr                  ; 2 uses
  %i.ct = add i16 %.035.i, %i.cr                  ; 2 uses
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !55
  %i.cv = icmp ugt i8 %i.cu, 63
  %i.cw = select i1 %i.cv, i8 8, i8 0
  %i.cx = or i8 %i.cw, %.034.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !57
  %i.db = zext i8 %i.da to i16                    ; 2 uses
  %i.dc = sub i16 %i.cs, %i.db
  %i.dd = add i16 %i.ct, %i.db
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !55
  %i.df = icmp ugt i8 %i.de, 63
  %i.dg = select i1 %i.df, i8 8, i8 0
  %i.dh = or i8 %i.dg, %i.cx                      ; 2 uses
  %i.di = add nsw i32 %.037.i, -2                 ; 2 uses
  %.not.i56.1 = icmp eq i32 %i.di, 0
  br i1 %.not.i56.1, label %Refresh.exit, label %.new, !llvm.loop !91

Refresh.exit:                                     ; preds = %.new, %.prol.loopexit
  %.036.i.lcssa = phi i16 [ %i.cb, %.prol.loopexit ], [ %i.cs, %.new ]
  %.035.i.lcssa = phi i16 [ %i.ca, %.prol.loopexit ], [ %i.ct, %.new ]
  %.lcssa135 = phi i8 [ %.lcssa135.unr, %.prol.loopexit ], [ %i.dh, %.new ]
  %i.dj = add i16 %.035.i.lcssa, %.036.i.lcssa
  store i16 %i.dj, ptr %i.bw, align 2, !tbaa !51
  store i8 %.lcssa135, ptr %i.bp, align 1, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %SpecialFreeUnit.exit, %Refresh.exit
  %i.dk = phi ptr [ %.pre, %SpecialFreeUnit.exit ], [ %i.bk, %Refresh.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn ; 3 uses
  %.not = icmp eq ptr %i.do, %1
  br i1 %.not, label %.preheader67, label %bb.b, !llvm.loop !92

.lr.ph77:                                         ; preds = %.preheader67, %bb.k
  %i.dp = phi ptr [ %i.ha, %bb.k ], [ %i.p, %.preheader67 ] ; 2 uses
  %i.dq = phi ptr [ %i.hb, %bb.k ], [ %i.o, %.preheader67 ] ; 3 uses
  %.176 = phi ptr [ %i.hf, %bb.k ], [ %.0.lcssa, %.preheader67 ] ; 6 uses
  %i.dr = load i8, ptr %.176, align 4, !tbaa !49  ; 3 uses
  %.not55 = icmp eq i8 %i.dr, 0
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph77
  %i.ds = getelementptr inbounds nuw i8, ptr %.176, i64 3 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !57  ; 2 uses
  %i.du = lshr i8 %i.dt, 1
  %i.dv = sub i8 %i.dt, %i.du
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !57
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph77
  %i.dw = getelementptr inbounds nuw i8, ptr %.176, i64 2 ; 4 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !51
  %i.dy = add i16 %i.dx, 4                        ; 2 uses
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !51
  %i.dz = zext i16 %i.dy to i32
  %i.ea = zext i8 %i.dr to i32                    ; 5 uses
  %i.eb = shl nuw nsw i32 %i.ea, 2
  %i.ec = add nuw nsw i32 %i.eb, 128
  %i.ed = icmp samesign ult i32 %i.ec, %i.dz
  br i1 %i.ed, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ee = add nuw nsw i32 %i.ea, 2
  %i.ef = lshr i32 %i.ee, 1                       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.176, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !54
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ei
  %i.ek = tail call fastcc ptr @ShrinkUnits(ptr noundef nonnull %0, ptr noundef %i.ej, i32 noundef range(i32 1, 130) %i.ef, i32 noundef %i.ef) ; 6 uses
  %i.el = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = trunc i64 %i.eo to i32
  store i32 %i.ep, ptr %i.eg, align 4, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %.176, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !50
  %i.es = and i8 %i.er, 20
  %i.et = load i8, ptr %i.ek, align 1, !tbaa !55
  %i.eu = icmp ugt i8 %i.et, 63
  %i.ev = select i1 %i.eu, i8 8, i8 0
  %i.ew = or disjoint i8 %i.ev, %i.es             ; 2 uses
  %i.ex = load i16, ptr %i.dw, align 2, !tbaa !51
  %i.ey = zext i16 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !57
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = sub nsw i32 %i.ey, %i.fb                ; 2 uses
  %i.fd = add nuw nsw i32 %i.fb, 1
  %i.fe = lshr i32 %i.fd, 1                       ; 3 uses
  %i.ff = trunc nuw i32 %i.fe to i8
  store i8 %i.ff, ptr %i.ez, align 1, !tbaa !57
  %xtraiter141 = and i32 %i.ea, 1
  %lcmp.mod142.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.prol.loopexit139, label %.prol.loopexit139.unr-lcssa

.prol.loopexit139.unr-lcssa:                      ; preds = %bb.j
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 6 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ek, i64 7 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !57
  %i.fj = zext i8 %i.fi to i32                    ; 2 uses
  %i.fk = sub nsw i32 %i.fc, %i.fj                ; 2 uses
  %i.fl = add nuw nsw i32 %i.fj, 1
  %i.fm = lshr i32 %i.fl, 1                       ; 2 uses
  %i.fn = trunc nuw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.fh, align 1, !tbaa !57
  %i.fo = add nuw nsw i32 %i.fm, %i.fe            ; 2 uses
  %i.fp = load i8, ptr %i.fg, align 1, !tbaa !55
  %i.fq = icmp ugt i8 %i.fp, 63
  %i.fr = select i1 %i.fq, i8 8, i8 0
  %i.fs = or i8 %i.fr, %i.ew                      ; 2 uses
  %i.ft = add nsw i32 %i.ea, -1
  br label %.prol.loopexit139

.prol.loopexit139:                                ; preds = %.prol.loopexit139.unr-lcssa, %bb.j
  %.lcssa133.unr = phi i32 [ poison, %bb.j ], [ %i.fk, %.prol.loopexit139.unr-lcssa ]
  %.lcssa132.unr = phi i32 [ poison, %bb.j ], [ %i.fo, %.prol.loopexit139.unr-lcssa ]
  %.lcssa131.unr = phi i8 [ poison, %bb.j ], [ %i.fs, %.prol.loopexit139.unr-lcssa ]
  %.037.i57.unr = phi i32 [ %i.ea, %bb.j ], [ %i.ft, %.prol.loopexit139.unr-lcssa ]
  %.036.i58.unr = phi i32 [ %i.fc, %bb.j ], [ %i.fk, %.prol.loopexit139.unr-lcssa ]
  %.035.i59.unr = phi i32 [ %i.fe, %bb.j ], [ %i.fo, %.prol.loopexit139.unr-lcssa ]
  %.034.i60.unr = phi i8 [ %i.ew, %bb.j ], [ %i.fs, %.prol.loopexit139.unr-lcssa ]
  %.0.i61.unr = phi ptr [ %i.ek, %bb.j ], [ %i.fg, %.prol.loopexit139.unr-lcssa ]
  %i.fu = icmp eq i8 %i.dr, 1
  br i1 %i.fu, label %Refresh.exit63, label %.new140

.new140:                                          ; preds = %.prol.loopexit139, %.new140
  %.037.i57 = phi i32 [ %i.gv, %.new140 ], [ %.037.i57.unr, %.prol.loopexit139 ]
  %.036.i58 = phi i32 [ %i.gm, %.new140 ], [ %.036.i58.unr, %.prol.loopexit139 ]
  %.035.i59 = phi i32 [ %i.gq, %.new140 ], [ %.035.i59.unr, %.prol.loopexit139 ]
  %.034.i60 = phi i8 [ %i.gu, %.new140 ], [ %.034.i60.unr, %.prol.loopexit139 ]
  %.0.i61 = phi ptr [ %i.gh, %.new140 ], [ %.0.i61.unr, %.prol.loopexit139 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i61, i64 6
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i61, i64 7 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !57
  %i.fy = zext i8 %i.fx to i32                    ; 2 uses
  %i.fz = add nuw nsw i32 %i.fy, 1
  %i.ga = lshr i32 %i.fz, 1                       ; 2 uses
  %i.gb = trunc nuw i32 %i.ga to i8
  store i8 %i.gb, ptr %i.fw, align 1, !tbaa !57
  %i.gc = add i32 %i.ga, %.035.i59
  %i.gd = load i8, ptr %i.fv, align 1, !tbaa !55
  %i.ge = icmp ugt i8 %i.gd, 63
  %i.gf = select i1 %i.ge, i8 8, i8 0
  %i.gg = or i8 %i.gf, %.034.i60
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i61, i64 12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i61, i64 13 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !57
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = add nuw nsw i32 %i.fy, %i.gk
  %i.gm = sub i32 %.036.i58, %i.gl                ; 2 uses
  %i.gn = add nuw nsw i32 %i.gk, 1
  %i.go = lshr i32 %i.gn, 1                       ; 2 uses
  %i.gp = trunc nuw i32 %i.go to i8
  store i8 %i.gp, ptr %i.gi, align 1, !tbaa !57
  %i.gq = add i32 %i.go, %i.gc                    ; 2 uses
  %i.gr = load i8, ptr %i.gh, align 1, !tbaa !55
  %i.gs = icmp ugt i8 %i.gr, 63
  %i.gt = select i1 %i.gs, i8 8, i8 0
  %i.gu = or i8 %i.gt, %i.gg                      ; 2 uses
  %i.gv = add nsw i32 %.037.i57, -2               ; 2 uses
  %.not.i62.1 = icmp eq i32 %i.gv, 0
  br i1 %.not.i62.1, label %Refresh.exit63, label %.new140, !llvm.loop !91

Refresh.exit63:                                   ; preds = %.new140, %.prol.loopexit139
  %.lcssa133 = phi i32 [ %.lcssa133.unr, %.prol.loopexit139 ], [ %i.gm, %.new140 ]
  %.lcssa132 = phi i32 [ %.lcssa132.unr, %.prol.loopexit139 ], [ %i.gq, %.new140 ]
  %.lcssa131 = phi i8 [ %.lcssa131.unr, %.prol.loopexit139 ], [ %i.gu, %.new140 ]
  %i.gw = add i32 %.lcssa133, 1
  %i.gx = lshr i32 %i.gw, 1
  %i.gy = add i32 %.lcssa132, %i.gx
  %i.gz = trunc i32 %i.gy to i16
  store i16 %i.gz, ptr %i.dw, align 2, !tbaa !51
  store i8 %.lcssa131, ptr %i.eq, align 1, !tbaa !50
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %Refresh.exit63, %bb.i
  %i.ha = phi ptr [ %i.dp, %bb.h ], [ %.pre88, %Refresh.exit63 ], [ %i.dp, %bb.i ] ; 2 uses
  %i.hb = phi ptr [ %i.dq, %bb.h ], [ %i.el, %Refresh.exit63 ], [ %i.dq, %bb.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.176, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !47
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.he ; 2 uses
  %.not53 = icmp eq ptr %i.hf, %i.ha
  br i1 %.not53, label %._crit_edge, label %.lr.ph77, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.k, %.preheader67
  %i.hg = phi ptr [ %i.o, %.preheader67 ], [ %i.hb, %bb.k ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !33
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.hk = tail call fastcc i32 @GetUsedMemory(ptr noundef nonnull %0)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !28
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = icmp ult i32 %i.hk, %i.hn
  br i1 %i.ho, label %bb.m, label %.preheader66

.preheader66:                                     ; preds = %bb.l
  %.promoted = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.hp = getelementptr inbounds nuw i8, ptr %.promoted, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !47 ; 2 uses
  %.not5478 = icmp eq i32 %i.hq, 0
  br i1 %.not5478, label %.preheader, label %.lr.ph79

bb.m:                                             ; preds = %bb.l, %._crit_edge
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.u

..preheader_crit_edge:                            ; preds = %.lr.ph79
  store ptr %i.hz, ptr %i.i, align 8, !tbaa !45
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader66
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.n

.lr.ph79:                                         ; preds = %.preheader66, %.lr.ph79
  %i.hx = phi i32 [ %i.ib, %.lr.ph79 ], [ %i.hq, %.preheader66 ]
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !47 ; 2 uses
  %.not54 = icmp eq i32 %i.ib, 0
  br i1 %.not54, label %..preheader_crit_edge, label %.lr.ph79, !llvm.loop !94

bb.n:                                             ; preds = %.preheader, %ExpandTextArea.exit
  %i.ic = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.id = tail call fastcc i32 @CutOff(ptr noundef nonnull %0, ptr noundef %i.ic, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.a, i8 0, i64 152, i1 false)
  %i.ie = load ptr, ptr %i.hr, align 8, !tbaa !53 ; 2 uses
  %i.if = load ptr, ptr %i.hs, align 8, !tbaa !44
  %.not.i64 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ie, align 4, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ig = load ptr, ptr %i.ht, align 8, !tbaa !38 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !74
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.02832.i = phi ptr [ %i.iu, %.lr.ph.i ], [ %i.ig, %bb.p ] ; 3 uses
  store i32 0, ptr %.02832.i, align 4, !tbaa !74
  %i.ij = getelementptr inbounds nuw i8, ptr %.02832.i, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !77 ; 2 uses
  %i.il = add i32 %i.ik, -1
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !4
  %i.it = zext i32 %i.ik to i64
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %.02832.i, i64 %i.it ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !74
  %i.iw = icmp eq i32 %i.iv, -1
  br i1 %i.iw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.p
  %.028.lcssa.i = phi ptr [ %i.ig, %bb.p ], [ %i.iu, %.lr.ph.i ]
  store ptr %.028.lcssa.i, ptr %i.ht, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge37.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i, %._crit_edge37.i ] ; 4 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 2 uses
  %.not3133.i = icmp eq i32 %i.iy, 0
  br i1 %.not3133.i, label %._crit_edge37.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.q
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv.i ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.lr.ph36.i
  %i.jc = phi i32 [ %i.iy, %.lr.ph36.i ], [ %i.je, %bb.r ]
  %.02734.i = phi ptr [ %i.iz, %.lr.ph36.i ], [ %i.jh, %bb.r ] ; 2 uses
  %i.jd = load i32, ptr %.02734.i, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.loopexit
  %i.je = phi i32 [ %i.jc, %.loopexit ], [ %i.jl, %bb.s ] ; 2 uses
  %.pn.in.i = phi i32 [ %i.jd, %.loopexit ], [ %i.ji, %bb.s ]
  %.pn.i = zext i32 %.pn.in.i to i64
  %.0.i65 = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.pn.i ; 2 uses
  %i.jf = load i32, ptr %.0.i65, align 4, !tbaa !74
  %i.jg = icmp eq i32 %i.jf, 0
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i65, i64 4 ; 2 uses
  br i1 %i.jg, label %bb.s, label %.loopexit, !llvm.loop !96

bb.s:                                             ; preds = %bb.r
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !76 ; 2 uses
  store i32 %i.ji, ptr %.02734.i, align 4, !tbaa !4
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jk = add i32 %i.jj, -1
  store i32 %i.jk, ptr %i.jb, align 4, !tbaa !4
  %i.jl = add i32 %i.je, -1                       ; 3 uses
  store i32 %i.jl, ptr %i.ix, align 4, !tbaa !4
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %._crit_edge37.i, label %bb.r, !llvm.loop !97

._crit_edge37.i:                                  ; preds = %bb.s, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 38
  br i1 %exitcond.not.i, label %ExpandTextArea.exit, label %bb.q, !llvm.loop !98

ExpandTextArea.exit:                              ; preds = %._crit_edge37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.jn = tail call fastcc i32 @GetUsedMemory(ptr noundef nonnull %0)
  %i.jo = load i32, ptr %i.hl, align 8, !tbaa !28
  %i.jp = lshr i32 %i.jo, 2
  %i.jq = mul nuw i32 %i.jp, 3
  %i.jr = icmp ugt i32 %i.jn, %i.jq
  br i1 %i.jr, label %bb.n, label %bb.t, !llvm.loop !99

bb.t:                                             ; preds = %ExpandTextArea.exit
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.js, align 4, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !32
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ju, ptr %i.jv, align 8, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @AllocUnitsRare(ptr nofree noundef %0, i32 noundef range(i32 0, 257) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 8192, ptr %i.b, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.e, i8 0, i64 152, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 4, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.064.i = phi ptr [ %i.a, %bb.d ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !4
  %.not5759.i = icmp eq i32 %i.m, 0
  br i1 %.not5759.i, label %._crit_edge.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.e
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph62.i
  %.161.i = phi ptr [ %.064.i, %.lr.ph62.i ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %.05160.i = phi i32 [ %i.m, %.lr.ph62.i ], [ %i.ak, %.loopexit.i ] ; 2 uses
  %i.o = zext i32 %.05160.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %.not58.i = icmp eq i32 %i.r, 0
  br i1 %.not58.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.05160.i, ptr %.161.i, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !77   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.y = phi i64 [ %i.af, %.lr.ph.i ], [ %i.u, %bb.g ]
  %i.z = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.t, %bb.g ]
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !77
  %i.ad = add i32 %i.ac, %i.z
  store i32 %i.ad, ptr %i.q, align 4, !tbaa !77
  store i32 0, ptr %i.ab, align 4, !tbaa !77
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !77  ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !74
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.2.i = phi ptr [ %.161.i, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !76 ; 2 uses
  %.not57.i = icmp eq i32 %i.ak, 0
  br i1 %.not57.i, label %._crit_edge.i, label %bb.f, !llvm.loop !101

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.e
  %.1.lcssa.i = phi ptr [ %.064.i, %bb.e ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 38
  br i1 %exitcond.not.i, label %bb.h, label %bb.e, !llvm.loop !102

bb.h:                                             ; preds = %._crit_edge.i
  store i32 0, ptr %.1.lcssa.i, align 4, !tbaa !4
  %.0..0..0..0..0..0.71.i = load i32, ptr %i.a, align 4, !tbaa !4 ; 2 uses
  %.not5572.i = icmp eq i32 %.0..0..0..0..0..0.71.i, 0
  br i1 %.not5572.i, label %GlueFreeBlocks.exit, label %.lr.ph75.i

.lr.ph75.i:                                       ; preds = %bb.h
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !8   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 3 uses
  %i.ao = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph75.i
  %.0..0.73.i = phi i32 [ %.0..0..0..0..0..0.71.i, %.lr.ph75.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.ar = zext i32 %.0..0.73.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !77 ; 6 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %.preheader.i, !llvm.loop !103

.preheader.i:                                     ; preds = %bb.i
  %i.ay = icmp ugt i32 %i.aw, 128
  br i1 %i.ay, label %.lr.ph67.i.preheader, label %._crit_edge68.i

.lr.ph67.i.preheader:                             ; preds = %.preheader.i
  %i.az = add i32 %i.aw, -129                     ; 2 uses
  %i.ba = and i32 %i.az, 128
  %lcmp.mod.not.not = icmp eq i32 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph67.i.prol, label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader
  store i32 -1, ptr %i.as, align 4, !tbaa !74
  %i.bb = load i32, ptr %i.am, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !76
  %i.bd = load i8, ptr %i.an, align 1, !tbaa !15
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !77
  store i32 %.0..0.73.i, ptr %i.am, align 4, !tbaa !4
  %i.bg = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ap, align 4, !tbaa !4
  %i.bi = add i32 %i.aw, -128                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 1536 ; 2 uses
  br label %.lr.ph67.i.prol.loopexit

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader
  %.04766.i.unr = phi i32 [ %i.aw, %.lr.ph67.i.preheader ], [ %i.bi, %.lr.ph67.i.prol ]
  %.04865.i.unr = phi ptr [ %i.as, %.lr.ph67.i.preheader ], [ %i.bj, %.lr.ph67.i.prol ]
  %.lcssa65.unr = phi i32 [ poison, %.lr.ph67.i.preheader ], [ %i.bi, %.lr.ph67.i.prol ]
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph67.i.preheader ], [ %i.bj, %.lr.ph67.i.prol ]
  %i.bk = icmp ult i32 %i.az, 128
  br i1 %i.bk, label %._crit_edge68.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %.04766.i = phi i32 [ %i.cg, %.lr.ph67.i ], [ %.04766.i.unr, %.lr.ph67.i.prol.loopexit ]
  %.04865.i = phi ptr [ %i.ch, %.lr.ph67.i ], [ %.04865.i.unr, %.lr.ph67.i.prol.loopexit ] ; 8 uses
  store i32 -1, ptr %.04865.i, align 4, !tbaa !74
  %i.bl = load i32, ptr %i.am, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.04865.i, i64 4
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !76
  %i.bn = load i8, ptr %i.an, align 1, !tbaa !15
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.04865.i, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !77
  %i.bq = ptrtoint ptr %.04865.i to i64
  %i.br = sub i64 %i.bq, %i.ao
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.am, align 4, !tbaa !4
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ap, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.04865.i, i64 1536 ; 2 uses
  store i32 -1, ptr %i.bv, align 4, !tbaa !74
  %i.bw = load i32, ptr %i.am, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.04865.i, i64 1540
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !76
  %i.by = load i8, ptr %i.an, align 1, !tbaa !15
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.04865.i, i64 1544
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !77
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.cb, %i.ao
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.am, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.ap, align 4, !tbaa !4
  %i.cg = add i32 %.04766.i, -256                 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04865.i, i64 3072 ; 2 uses
  %i.ci = icmp ugt i32 %i.cg, 128
  br i1 %i.ci, label %.lr.ph67.i, label %._crit_edge68.i, !llvm.loop !104

._crit_edge68.i:                                  ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %.preheader.i
  %.048.lcssa.i = phi ptr [ %i.as, %.preheader.i ], [ %.lcssa64.unr, %.lr.ph67.i.prol.loopexit ], [ %i.ch, %.lr.ph67.i ] ; 5 uses
  %.047.lcssa.i = phi i32 [ %i.aw, %.preheader.i ], [ %.lcssa65.unr, %.lr.ph67.i.prol.loopexit ], [ %i.cg, %.lr.ph67.i ] ; 3 uses
  %i.cj = zext nneg i32 %.047.lcssa.i to i64
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 165
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = zext i8 %i.cm to i64                    ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = zext i8 %i.cp to i32
  %.not56.i = icmp eq i32 %.047.lcssa.i, %i.cq
  br i1 %.not56.i, label %._crit_edge68._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge68.i
  %i.cr = add nuw nsw i64 %i.cn, 4294967295
  %i.cs = and i64 %i.cr, 4294967295               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = zext i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %.048.lcssa.i, i64 %i.cw ; 4 uses
  %i.cy = xor i32 %i.cv, -1
  %i.cz = add nsw i32 %.047.lcssa.i, %i.cy
  store i32 -1, ptr %i.cx, align 4, !tbaa !74
  %i.da = zext i32 %i.cz to i64                   ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !76
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.da
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !77
  %i.di = ptrtoint ptr %i.cx to i64
  %i.dj = sub i64 %i.di, %i.ao
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.db, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.da ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !4
  br label %._crit_edge68._crit_edge.i

._crit_edge68._crit_edge.i:                       ; preds = %._crit_edge68.i, %bb.j
  %.pre-phi.i = phi i64 [ %i.cs, %bb.j ], [ %i.cn, %._crit_edge68.i ] ; 3 uses
  store i32 -1, ptr %.048.lcssa.i, align 4, !tbaa !74
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.pre-phi.i ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.lcssa.i, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.pre-phi.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %.048.lcssa.i, i64 8
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !77
  %i.dv = ptrtoint ptr %.048.lcssa.i to i64
  %i.dw = sub i64 %i.dv, %i.ao
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.do, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.pre-phi.i ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge68._crit_edge.i, %bb.i
  %.not55.i = icmp eq i32 %i.au, 0
  br i1 %.not55.i, label %GlueFreeBlocks.exit, label %bb.i

GlueFreeBlocks.exit:                              ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eb = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 2 uses
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %GlueFreeBlocks.exit
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !76
  store i32 %i.ei, ptr %i.ec, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eb ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !4
  br label %bb.r

bb.m:                                             ; preds = %GlueFreeBlocks.exit, %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.en = add nuw nsw i32 %1, 1                   ; 2 uses
  %i.eo = icmp eq i32 %i.en, 38
  br i1 %i.eo, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ep = add i32 %i.fl, 1                        ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 38
  br i1 %i.eq, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.es = zext nneg i32 %1 to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !15
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ev, 12               ; 2 uses
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ey = add i32 %i.ex, -1
  store i32 %i.ey, ptr %i.b, align 4, !tbaa !39
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !38 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !37
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = icmp ult i32 %i.ew, %i.fg
  br i1 %i.fh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.fi = zext nneg i32 %i.ew to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fa, i64 %i.fj ; 2 uses
  store ptr %i.fk, ptr %i.ez, align 8, !tbaa !38
  br label %bb.r

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.fl = phi i32 [ %i.ep, %bb.n ], [ %i.en, %bb.m ] ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 4 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.n, label %bb.p, !llvm.loop !105

bb.p:                                             ; preds = %.lr.ph
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !8
  %i.ft = zext i32 %i.fo to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !76
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !4
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fm ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fm
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %i.ge = zext i8 %i.gd to i32
  %i.gf = zext nneg i32 %1 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15
  %i.gi = zext i8 %i.gh to i32                    ; 2 uses
  %i.gj = sub nsw i32 %i.ge, %i.gi                ; 3 uses
  %i.gk = mul nuw nsw i32 %i.gi, 12               ; 3 uses
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.go = add nsw i32 %i.gj, -1
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i64                    ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !15
  %i.gv = zext i8 %i.gu to i32
  %.not.i28 = icmp eq i32 %i.gj, %i.gv
  br i1 %.not.i28, label %.SplitBlock.exit_crit_edge, label %bb.q

.SplitBlock.exit_crit_edge:                       ; preds = %bb.p
  %.pre = add i32 %i.gk, %i.fo
  br label %SplitBlock.exit

bb.q:                                             ; preds = %bb.p
  %i.gw = add nuw nsw i64 %i.gs, 4294967295
  %i.gx = and i64 %i.gw, 4294967295               ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = mul nuw nsw i32 %i.ha, 12               ; 2 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hc ; 3 uses
  %i.he = xor i32 %i.ha, -1
  %i.hf = add nsw i32 %i.gj, %i.he
  store i32 -1, ptr %i.hd, align 4, !tbaa !74
  %i.hg = zext i32 %i.hf to i64                   ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !76
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !15
  %i.hm = zext i8 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !77
  %i.ho = add i32 %i.gk, %i.fo                    ; 2 uses
  %i.hp = add i32 %i.ho, %i.hb
  store i32 %i.hp, ptr %i.hh, align 4, !tbaa !4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.hg ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !4
  br label %SplitBlock.exit

SplitBlock.exit:                                  ; preds = %.SplitBlock.exit_crit_edge, %bb.q
  %.pre-phi = phi i32 [ %.pre, %.SplitBlock.exit_crit_edge ], [ %i.ho, %bb.q ]
  %.pre-phi.i29 = phi i64 [ %i.gs, %.SplitBlock.exit_crit_edge ], [ %i.gx, %bb.q ] ; 3 uses
  store i32 -1, ptr %i.gm, align 4, !tbaa !74
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.pre-phi.i29 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !76
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.pre-phi.i29
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !15
  %i.hy = zext i8 %i.hx to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !77
  store i32 %.pre-phi, ptr %i.ht, align 4, !tbaa !4
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.pre-phi.i29 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %._crit_edge, %SplitBlock.exit, %bb.l
  %.0 = phi ptr [ %i.eg, %bb.l ], [ %i.fu, %SplitBlock.exit ], [ %i.fk, %bb.o ], [ null, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @GetUsedMemory(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load <32 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.d = load <32 x i8>, ptr %i.b, align 4, !tbaa !15
  %i.e = zext <32 x i8> %i.d to <32 x i32>
  %i.f = mul <32 x i32> %i.c, %i.e                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %i.j = load <4 x i8>, ptr %i.h, align 4, !tbaa !15
  %i.k = zext <4 x i8> %i.j to <4 x i32>
  %i.l = mul <4 x i32> %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.p = load i8, ptr %i.o, align 4, !tbaa !15
  %i.q = zext i8 %i.p to i32
  %i.r = mul i32 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %i.w = zext i8 %i.v to i32
  %i.x = mul i32 %i.t, %i.w
  %i.y = shufflevector <32 x i32> %i.f, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %i.y, %i.l
  %i.z = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <32 x i32> %i.z, <32 x i32> %i.f, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ab = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.aa)
  %op.rdx = add i32 %i.ab, %i.r
  %op.rdx20 = add i32 %op.rdx, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %.neg = sub i64 %i.aj, %i.ai
  %.neg13 = trunc i64 %.neg to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %.neg14 = sub i64 %i.ap, %i.ao
  %.neg15 = trunc i64 %.neg14 to i32
  %.neg16 = mul i32 %op.rdx20, -12
  %i.aq = add i32 %i.ad, %.neg16
  %i.ar = add i32 %i.aq, %.neg13
  %i.as = add i32 %i.ar, %.neg15
  ret i32 %i.as
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @CutOff(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.CPpmd_State, align 1        ; 4 uses
  %i.a = load i8, ptr %1, align 4, !tbaa !49      ; 3 uses
  %.not = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.d, align 4, !tbaa !68
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.h = load i16, ptr %i.g, align 2, !tbaa !69
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not96 = icmp ult ptr %i.l, %i.n
  br i1 %.not96, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = icmp ult i32 %2, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw i32 %2, 1
  %i.s = tail call fastcc i32 @CutOff(ptr noundef nonnull %0, ptr noundef %i.l, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  store i32 %.sink, ptr %i.d, align 4
  %i.t = icmp ne i32 %.sink, 0
  %i.u = icmp ult i32 %2, 10
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.f, label %._crit_edge120

._crit_edge120:                                   ; preds = %bb.e
  %.pre121 = load ptr, ptr %i.m, align 8, !tbaa !38
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  br label %SpecialFreeUnit.exit

bb.g:                                             ; preds = %._crit_edge120, %bb.b
  %i.aa = phi ptr [ %.pre121, %._crit_edge120 ], [ %i.n, %bb.b ] ; 2 uses
  %.not.i = icmp eq ptr %1, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %1, align 4, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !15
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !77
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %i.ab, align 8, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !4
  br label %SpecialFreeUnit.exit

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !38
  br label %SpecialFreeUnit.exit

bb.j:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !54  ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar ; 12 uses
  %i.at = zext i8 %i.a to i32                     ; 3 uses
  %i.au = add nuw nsw i32 %i.at, 2
  %i.av = lshr i32 %i.au, 1                       ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16384
  %i.az = icmp ugt ptr %i.as, %i.ay
  br i1 %i.az, label %.lr.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 165
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bf = zext i8 %i.bd to i64                    ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %i.aq
  br i1 %i.bi, label %.lr.ph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bj ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !76
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bf ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %i.br = and i32 %i.at, 2
  %lcmp.mod.not.not = icmp eq i32 %i.br, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.l
  %i.bs = load i32, ptr %i.as, align 4, !tbaa !4
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.cb = add nsw i32 %i.av, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.l
  %.033.i.unr = phi ptr [ %i.bk, %bb.l ], [ %i.ca, %.prol.loopexit.unr-lcssa ]
  %.032.i.unr = phi ptr [ %i.as, %bb.l ], [ %i.bz, %.prol.loopexit.unr-lcssa ]
  %.0.i.unr = phi i32 [ %i.av, %bb.l ], [ %i.cb, %.prol.loopexit.unr-lcssa ]
  %i.cc = icmp eq i32 %i.av, 1
  br i1 %i.cc, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.033.i = phi ptr [ %i.cu, %.new ], [ %.033.i.unr, %.prol.loopexit ] ; 7 uses
  %.032.i = phi ptr [ %i.ct, %.new ], [ %.032.i.unr, %.prol.loopexit ] ; 7 uses
  %.0.i = phi i32 [ %i.cv, %.new ], [ %.0.i.unr, %.prol.loopexit ]
  %i.cd = load i32, ptr %.032.i, align 4, !tbaa !4
  store i32 %i.cd, ptr %.033.i, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.032.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.032.i, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !4
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.032.i, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw i8, ptr %.033.i, i64 20
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.033.i, i64 24
  %i.cv = add nsw i32 %.0.i, -2                   ; 2 uses
  %.not.i98.1 = icmp eq i32 %i.cv, 0
  br i1 %.not.i98.1, label %.unr-lcssa, label %.new, !llvm.loop !106

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.not37.i = icmp eq ptr %i.as, %i.ax
  br i1 %.not37.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.unr-lcssa
  store i32 -1, ptr %i.as, align 4, !tbaa !74
  %i.cw = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bf
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !77
  store i32 %i.aq, ptr %i.bg, align 4, !tbaa !4
  %i.dd = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.bo, align 4, !tbaa !4
  br label %.lr.ph

bb.n:                                             ; preds = %.unr-lcssa
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.bf
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = zext i8 %i.dh to i64
  %i.dj = mul nuw nsw i64 %i.di, 12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dj
  store ptr %i.dk, ptr %i.aw, align 8, !tbaa !38
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.034.i = phi ptr [ %i.as, %bb.j ], [ %i.as, %bb.k ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ]
  %i.dl = ptrtoint ptr %.034.i to i64
  %i.dm = ptrtoint ptr %i.c to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %i.d, align 4, !tbaa !54
  %i.dp = and i64 %i.dn, 4294967295
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dp ; 2 uses
  %i.dr = zext i8 %i.a to i64
  %.idx = mul nuw nsw i64 %i.dr, 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.du = add nuw i32 %2, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.t
  %i.dv = phi ptr [ %i.dq, %.lr.ph ], [ %i.es, %bb.t ]
  %i.dw = phi ptr [ %i.c, %.lr.ph ], [ %i.ep, %bb.t ]
  %.088111 = phi ptr [ %i.ds, %.lr.ph ], [ %i.eo, %bb.t ] ; 5 uses
  %.089110 = phi i32 [ %i.at, %.lr.ph ], [ %.1, %bb.t ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.088111, i64 2 ; 4 uses
  %i.dy = load i16, ptr %i.dx, align 1, !tbaa !68
  %i.dz = zext i16 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %.088111, i64 4
  %i.eb = load i16, ptr %i.ea, align 1, !tbaa !69
  %i.ec = zext i16 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dz ; 2 uses
  %i.eg = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %.089110, -1
  %i.ej = sext i32 %.089110 to i64
  %i.ek = getelementptr inbounds [6 x i8], ptr %i.dv, i64 %i.ej ; 2 uses
  store i32 0, ptr %i.dx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) %.088111, i64 6, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.088111, ptr noundef nonnull align 1 dereferenceable(6) %i.ek, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ek, ptr noundef nonnull align 1 dereferenceable(6) %3, i64 6, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.el = load i32, ptr %i.dt, align 4, !tbaa !32
  %i.em = icmp ult i32 %2, %i.el
  br i1 %i.em, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.en = tail call fastcc i32 @CutOff(ptr noundef nonnull %0, ptr noundef %i.ef, i32 noundef %i.du)
  store i32 %i.en, ptr %i.dx, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %i.dx, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r
  %.1 = phi i32 [ %i.ei, %bb.p ], [ %.089110, %bb.r ], [ %.089110, %bb.s ] ; 8 uses
  %i.eo = getelementptr inbounds i8, ptr %.088111, i64 -6 ; 2 uses
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.eq = load i32, ptr %i.d, align 4, !tbaa !54  ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 12 uses
  %.not97 = icmp ult ptr %i.eo, %i.es
  br i1 %.not97, label %._crit_edge, label %bb.o, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i8, ptr %1, align 4, !tbaa !49
  %.pre122 = zext i8 %.pre to i32
  %i.et = icmp ne i32 %.1, %.pre122
  %i.eu = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.ev = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.ev, %i.et
  br i1 %or.cond3, label %bb.u, label %._crit_edge._crit_edge

bb.u:                                             ; preds = %._crit_edge
  %i.ew = trunc i32 %.1 to i8
  store i8 %i.ew, ptr %1, align 4, !tbaa !49
  %i.ex = icmp slt i32 %.1, 0
  br i1 %i.ex, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ey = zext nneg i32 %i.av to i64
  %i.ez = getelementptr i8, ptr %0, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 165
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  store i32 -1, ptr %i.es, align 4, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.fd = zext i8 %i.fb to i64                    ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fd
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !77
  store i32 %i.eq, ptr %i.fe, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fd ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !4
  %i.fq = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 2 uses
  %.not.i99 = icmp eq ptr %1, %i.fq
  br i1 %.not.i99, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 -1, ptr %1, align 4, !tbaa !74
  %i.fr = load i32, ptr %i.fc, align 8, !tbaa !4
  store i32 %i.fr, ptr %i.d, align 4, !tbaa !76
  %i.fs = load i8, ptr %i.fh, align 8, !tbaa !15
  %i.ft = zext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !77
  %i.fv = ptrtoint ptr %1 to i64
  %i.fw = sub i64 %i.fv, %i.eu
  %i.fx = trunc i64 %i.fw to i32
  store i32 %i.fx, ptr %i.fc, align 8, !tbaa !4
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !4
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fm, align 8, !tbaa !4
  br label %SpecialFreeUnit.exit

bb.x:                                             ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store ptr %i.ga, ptr %i.aw, align 8, !tbaa !38
  br label %SpecialFreeUnit.exit

bb.y:                                             ; preds = %bb.u
  %i.gb = icmp eq i32 %.1, 0
  br i1 %i.gb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !50
  %i.ge = and i8 %i.gd, 16
  %i.gf = load i8, ptr %i.es, align 1, !tbaa !55
  %i.gg = icmp ugt i8 %i.gf, 63
  %i.gh = select i1 %i.gg, i8 8, i8 0
  %i.gi = or disjoint i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gc, align 1, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.gj, ptr noundef nonnull align 1 dereferenceable(6) %i.es, i64 6, i1 false), !tbaa.struct !67
  %i.gk = zext nneg i32 %i.av to i64
  %i.gl = getelementptr i8, ptr %0, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 165
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !15
  store i32 -1, ptr %i.es, align 4, !tbaa !74
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gp = zext i8 %i.gn to i64                    ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !76
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gp
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = zext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !77
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.gz = ptrtoint ptr %i.es to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.gq, align 4, !tbaa !4
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.gp ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !4
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !57
  %i.hj = add i8 %i.hi, 11
  %i.hk = lshr i8 %i.hj, 3
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !57
  br label %._crit_edge._crit_edge

bb.aa:                                            ; preds = %bb.y
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !51
  %i.hn = zext i16 %i.hm to i32
  %i.ho = shl nsw i32 %.1, 4
  %i.hp = icmp samesign ult i32 %i.ho, %i.hn      ; 2 uses
  %i.hq = zext i1 %i.hp to i32                    ; 10 uses
  %i.hr = and i32 %.1, 255                        ; 4 uses
  %i.hs = add nuw nsw i32 %i.hr, 2
  %i.ht = lshr i32 %i.hs, 1
  %i.hu = tail call fastcc ptr @ShrinkUnits(ptr noundef nonnull %0, ptr noundef nonnull %i.es, i32 noundef range(i32 1, 130) %i.av, i32 noundef %i.ht) ; 6 uses
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64               ; 2 uses
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = trunc i64 %i.hy to i32
  store i32 %i.hz, ptr %i.d, align 4, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !50
  %i.ic = select i1 %i.hp, i8 20, i8 16
  %i.id = and i8 %i.ib, %i.ic
  %i.ie = load i8, ptr %i.hu, align 1, !tbaa !55
  %i.if = icmp ugt i8 %i.ie, 63
  %i.ig = select i1 %i.if, i8 8, i8 0
  %i.ih = or disjoint i8 %i.ig, %i.id             ; 2 uses
  %i.ii = load i16, ptr %i.hl, align 2, !tbaa !51
  %i.ij = zext i16 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !57
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  %i.in = sub nsw i32 %i.ij, %i.im                ; 2 uses
  %i.io = add nuw nsw i32 %i.im, %i.hq
  %i.ip = lshr i32 %i.io, %i.hq                   ; 2 uses
  %i.iq = trunc i32 %i.ip to i8
  store i8 %i.iq, ptr %i.ik, align 1, !tbaa !57
  %i.ir = and i32 %i.ip, 255                      ; 2 uses
  %xtraiter163 = and i32 %.1, 1
  %lcmp.mod164.not = icmp eq i32 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.prol.loopexit161, label %.prol.loopexit161.unr-lcssa

.prol.loopexit161.unr-lcssa:                      ; preds = %bb.aa
  %i.is = getelementptr inbounds nuw i8, ptr %i.hu, i64 6 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hu, i64 7 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !57
  %i.iv = zext i8 %i.iu to i32                    ; 2 uses
  %i.iw = sub nsw i32 %i.in, %i.iv                ; 2 uses
  %i.ix = add nuw nsw i32 %i.iv, %i.hq
  %i.iy = lshr i32 %i.ix, %i.hq                   ; 2 uses
  %i.iz = trunc i32 %i.iy to i8
  store i8 %i.iz, ptr %i.it, align 1, !tbaa !57
  %i.ja = and i32 %i.iy, 255
  %i.jb = add nuw nsw i32 %i.ja, %i.ir            ; 2 uses
  %i.jc = load i8, ptr %i.is, align 1, !tbaa !55
  %i.jd = icmp ugt i8 %i.jc, 63
  %i.je = select i1 %i.jd, i8 8, i8 0
  %i.jf = or i8 %i.je, %i.ih                      ; 2 uses
  %i.jg = add nsw i32 %i.hr, -1
  br label %.prol.loopexit161

.prol.loopexit161:                                ; preds = %.prol.loopexit161.unr-lcssa, %bb.aa
  %.lcssa156.unr = phi i32 [ poison, %bb.aa ], [ %i.iw, %.prol.loopexit161.unr-lcssa ]
  %.lcssa155.unr = phi i32 [ poison, %bb.aa ], [ %i.jb, %.prol.loopexit161.unr-lcssa ]
  %.lcssa.unr = phi i8 [ poison, %bb.aa ], [ %i.jf, %.prol.loopexit161.unr-lcssa ]
  %.037.i.unr = phi i32 [ %i.hr, %bb.aa ], [ %i.jg, %.prol.loopexit161.unr-lcssa ]
  %.036.i.unr = phi i32 [ %i.in, %bb.aa ], [ %i.iw, %.prol.loopexit161.unr-lcssa ]
  %.035.i.unr = phi i32 [ %i.ir, %bb.aa ], [ %i.jb, %.prol.loopexit161.unr-lcssa ]
  %.034.i101.unr = phi i8 [ %i.ih, %bb.aa ], [ %i.jf, %.prol.loopexit161.unr-lcssa ]
  %.0.i102.unr = phi ptr [ %i.hu, %bb.aa ], [ %i.is, %.prol.loopexit161.unr-lcssa ]
  %i.jh = icmp eq i32 %i.hr, 1
  br i1 %i.jh, label %Refresh.exit, label %.new162

.new162:                                          ; preds = %.prol.loopexit161, %.new162
  %.037.i = phi i32 [ %i.kk, %.new162 ], [ %.037.i.unr, %.prol.loopexit161 ]
  %.036.i = phi i32 [ %i.ka, %.new162 ], [ %.036.i.unr, %.prol.loopexit161 ]
  %.035.i = phi i32 [ %i.kf, %.new162 ], [ %.035.i.unr, %.prol.loopexit161 ]
  %.034.i101 = phi i8 [ %i.kj, %.new162 ], [ %.034.i101.unr, %.prol.loopexit161 ]
  %.0.i102 = phi ptr [ %i.jv, %.new162 ], [ %.0.i102.unr, %.prol.loopexit161 ] ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i102, i64 6
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i102, i64 7 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !57
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = add nuw nsw i32 %i.jl, %i.hq
  %i.jn = lshr i32 %i.jm, %i.hq                   ; 2 uses
  %i.jo = trunc i32 %i.jn to i8
  store i8 %i.jo, ptr %i.jj, align 1, !tbaa !57
  %i.jp = and i32 %i.jn, 255
  %i.jq = add i32 %i.jp, %.035.i
  %i.jr = load i8, ptr %i.ji, align 1, !tbaa !55
  %i.js = icmp ugt i8 %i.jr, 63
  %i.jt = select i1 %i.js, i8 8, i8 0
  %i.ju = or i8 %i.jt, %.034.i101
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i102, i64 12 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i102, i64 13 ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !57
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %i.jz = add nuw nsw i32 %i.jl, %i.jy
  %i.ka = sub i32 %.036.i, %i.jz                  ; 2 uses
  %i.kb = add nuw nsw i32 %i.jy, %i.hq
  %i.kc = lshr i32 %i.kb, %i.hq                   ; 2 uses
  %i.kd = trunc i32 %i.kc to i8
  store i8 %i.kd, ptr %i.jw, align 1, !tbaa !57
  %i.ke = and i32 %i.kc, 255
  %i.kf = add i32 %i.ke, %i.jq                    ; 2 uses
  %i.kg = load i8, ptr %i.jv, align 1, !tbaa !55
  %i.kh = icmp ugt i8 %i.kg, 63
  %i.ki = select i1 %i.kh, i8 8, i8 0
  %i.kj = or i8 %i.ki, %i.ju                      ; 2 uses
  %i.kk = add i32 %.037.i, -2                     ; 2 uses
  %.not.i103.1 = icmp eq i32 %i.kk, 0
  br i1 %.not.i103.1, label %Refresh.exit, label %.new162, !llvm.loop !91

Refresh.exit:                                     ; preds = %.new162, %.prol.loopexit161
  %.lcssa156 = phi i32 [ %.lcssa156.unr, %.prol.loopexit161 ], [ %i.ka, %.new162 ]
  %.lcssa155 = phi i32 [ %.lcssa155.unr, %.prol.loopexit161 ], [ %i.kf, %.new162 ]
  %.lcssa = phi i8 [ %.lcssa.unr, %.prol.loopexit161 ], [ %i.kj, %.new162 ]
  %i.kl = add i32 %.lcssa156, %i.hq
  %i.km = lshr i32 %i.kl, %i.hq
  %i.kn = add i32 %.lcssa155, %i.km
  %i.ko = trunc i32 %i.kn to i16
  store i16 %i.ko, ptr %i.hl, align 2, !tbaa !51
  store i8 %.lcssa, ptr %i.ia, align 1, !tbaa !50
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.z, %Refresh.exit
  %.pre-phi124 = phi i64 [ %i.hx, %Refresh.exit ], [ %i.ha, %bb.z ], [ %i.eu, %._crit_edge ]
  %i.kp = ptrtoint ptr %1 to i64
  %i.kq = sub i64 %i.kp, %.pre-phi124
  %i.kr = trunc i64 %i.kq to i32
  br label %SpecialFreeUnit.exit

SpecialFreeUnit.exit:                             ; preds = %bb.x, %bb.w, %bb.i, %bb.h, %._crit_edge._crit_edge, %bb.f
  %.0 = phi i32 [ 0, %bb.i ], [ %i.kr, %._crit_edge._crit_edge ], [ %i.z, %bb.f ], [ 0, %bb.h ], [ 0, %bb.w ], [ 0, %bb.x ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!8 = !{!9, !12, i64 56}
!9 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !6, i64 120, !6, i64 128, !6, i64 166, !6, i64 296, !6, i64 448, !6, i64 600, !6, i64 856, !13, i64 1116, !6, i64 1120, !6, i64 4192}
!10 = !{!"p1 _ZTS15CPpmd8_Context_", !11, i64 0}
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
!28 = !{!9, !5, i64 48}
!29 = !{ptr @Ppmd8_Free}
!30 = !{!9, !5, i64 96}
!31 = !{!27, !11, i64 0}
!32 = !{!9, !5, i64 36}
!33 = !{!9, !5, i64 100}
!34 = !{!9, !6, i64 1118}
!35 = !{!9, !14, i64 1116}
!36 = !{!9, !6, i64 1119}
!37 = !{!9, !12, i64 80}
!38 = !{!9, !12, i64 88}
!39 = !{!9, !5, i64 52}
!40 = !{!9, !5, i64 24}
!41 = !{!9, !5, i64 44}
!42 = !{!9, !5, i64 40}
!43 = !{!9, !5, i64 32}
!44 = !{!9, !12, i64 72}
!45 = !{!9, !10, i64 8}
!46 = !{!9, !10, i64 0}
!47 = !{!48, !5, i64 8}
!48 = !{!"CPpmd8_Context_", !6, i64 0, !6, i64 1, !14, i64 2, !5, i64 4, !5, i64 8}
!49 = !{!48, !6, i64 0}
!50 = !{!48, !6, i64 1}
!51 = !{!48, !14, i64 2}
!52 = !{!9, !11, i64 16}
!53 = !{!9, !12, i64 64}
!54 = !{!48, !5, i64 4}
!55 = !{!56, !6, i64 0}
!56 = !{!"", !6, i64 0, !6, i64 1, !14, i64 2, !14, i64 4}
!57 = !{!56, !6, i64 1}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = !{!14, !14, i64 0}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = !{!13, !6, i64 2}
!64 = !{!13, !14, i64 0}
!65 = !{!13, !6, i64 3}
!66 = distinct !{!66, !17}
!67 = !{i64 0, i64 1, !15, i64 1, i64 1, !15, i64 2, i64 2, !60, i64 4, i64 2, !60}
!68 = !{!56, !14, i64 2}
!69 = !{!56, !14, i64 4}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = !{!75, !5, i64 0}
!75 = !{!"CPpmd8_Node_", !5, i64 0, !5, i64 4, !5, i64 8}
!76 = !{!75, !5, i64 4}
!77 = !{!75, !5, i64 8}
!78 = distinct !{!78, !17, !18, !19}
!79 = distinct !{!79, !17, !18, !19}
!80 = distinct !{!80, !17, !19, !18}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = !{!9, !5, i64 28}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = !{!11, !11, i64 0}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
end_hunk_0
