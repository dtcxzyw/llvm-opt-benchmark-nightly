Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ConvertToLHProcess?download=true
inline.NumInlined: 38
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6Assimp14FlipUVsProcess11ProcessMeshEP6aiMesh:bb.a
  %i.gd = fsub float 1.000000e+00, %i.gc
  store float %i.gd, ptr %i.gb, align 4
  %indvars.iv.next.7.i36 = add nuw nsw i64 %indvars.iv.7.i35, 1 ; 2 uses
  %i.ge = load i32, ptr %i.dd, align 8
  %i.gf = zext i32 %i.ge to i64
  %i.gg = icmp samesign ult i64 %indvars.iv.next.7.i36, %i.gf
  br i1 %i.gg, label %.lr.ph.7.i34, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, !llvm.loop !22

.lr.ph.i6:                                        ; preds = %.preheader.i, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i8, %.lr.ph.i6 ], [ 0, %.preheader.i ] ; 2 uses
  %i.gh = load ptr, ptr %i.dc, align 8
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %indvars.iv.i7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4
  %i.gl = fsub float 1.000000e+00, %i.gk
  store float %i.gl, ptr %i.gj, align 4
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.gm = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %indvars.iv.next.i8, %i.gn
  br i1 %i.go, label %.lr.ph.i6, label %._crit_edge.i9, !llvm.loop !22

_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit: ; preds = %.lr.ph.7.i34, %._crit_edge.1.i13, %._crit_edge.3.i21, %bb.b, %.preheader15.i5, %._crit_edge.i9, %._crit_edge.thread.i, %._crit_edge.2.i17, %._crit_edge.4.i25, %._crit_edge.5.i29, %._crit_edge.6.i33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gp = load i32, ptr %i.cv, align 8
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %bb.b, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14FlipUVsProcess15ProcessMaterialEP10aiMaterial(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.7)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(13) @.str.8) #15
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4
  %i.m = fneg float %i.l
  store float %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 4
  %i.p = fneg float %i.o
  store float %i.p, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp23FlipWindingOrderProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %1, 16777216
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.9)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.10)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not130 = icmp eq i32 %i.b, 0
  br i1 %.not130, label %.preheader100, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

.preheader100:                                    ; preds = %._crit_edge, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not132 = icmp eq i32 %i.e, 0
  br i1 %.not132, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph104, %._crit_edge
  %i.g = phi i32 [ %i.b, %.lr.ph104 ], [ %i.l, %._crit_edge ]
  %indvars.iv139 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next140, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv139 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not131 = icmp ult i32 %i.j, 2
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next140, %i.m
  br i1 %i.n, label %bb.b, label %.preheader100, !llvm.loop !25

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.o = phi i32 [ %i.j, %.lr.ph ], [ %i.y, %bb.c ]
  %i.p = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %i.o, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.q, align 4
  %i.x = load i32, ptr %i.v, align 4
  store i32 %i.x, ptr %i.q, align 4
  store i32 %i.w, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.i, align 8              ; 2 uses
  %i.z = lshr i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge127:                                   ; preds = %.split123.us, %.preheader100
  ret void

bb.d:                                             ; preds = %.lr.ph126, %.split123.us
  %indvars.iv173 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next174, %.split123.us ] ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv173
  %i.ae = load ptr, ptr %i.ad, align 8            ; 21 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1192
  %i.ag = load i32, ptr %i.af, align 8
  %.fr133 = freeze i32 %i.ag                      ; 40 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not = icmp ne ptr %i.ai, null
  %i.aj = icmp ne i32 %.fr133, 0                  ; 3 uses
  %or.cond = and i1 %.not, %i.aj
  br i1 %or.cond, label %.lr.ph106.preheader, label %.loopexit99

.lr.ph106.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.fr133 to i64
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  %indvars.iv142 = phi i64 [ 0, %.lr.ph106.preheader ], [ %indvars.iv.next143, %.lr.ph106 ] ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %indvars.iv142 ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv142 to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %.fr133, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.al, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false)
  store <3 x float> %.sroa.0.0.copyload, ptr %i.aq, align 4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit99, label %.lr.ph106, !llvm.loop !27

.loopexit99:                                      ; preds = %.lr.ph106, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 1040 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not88 = icmp ne ptr %i.as, null
  %or.cond128 = and i1 %.not88, %i.aj
  br i1 %or.cond128, label %.lr.ph108.preheader, label %.loopexit97

.lr.ph108.preheader:                              ; preds = %.loopexit99
  %wide.trip.count148 = zext i32 %.fr133 to i64
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv145 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next146, %.lr.ph108 ] ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv145 ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv145 to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %.fr133, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %.sroa.0182.0.copyload = load <3 x float>, ptr %i.au, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false)
  store <3 x float> %.sroa.0182.0.copyload, ptr %i.az, align 4
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader, label %.lr.ph108, !llvm.loop !28

.loopexit97:                                      ; preds = %.loopexit99
  %.not176 = icmp eq i32 %.fr133, 0
  br i1 %.not176, label %.split123.us, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader

_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader: ; preds = %.lr.ph108, %.loopexit97
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 1128 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not91.us = icmp eq ptr %i.bb, null
  br i1 %.not91.us, label %..loopexit93_crit_edge.us, label %.preheader92.us

bb.e:                                             ; preds = %.preheader92.us, %bb.e
  %indvars.iv150 = phi i64 [ 0, %.preheader92.us ], [ %indvars.iv.next151, %bb.e ] ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv150 ; 2 uses
  %i.be = trunc nuw i64 %indvars.iv150 to i32
  %i.bf = xor i32 %i.be, -1
  %i.bg = add i32 %.fr133, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bh ; 2 uses
  %.sroa.0184.0.copyload = load <3 x float>, ptr %i.bd, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload, ptr %i.bi, align 4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %..loopexit93_crit_edge.us, label %bb.e, !llvm.loop !29

..loopexit93_crit_edge.us:                        ; preds = %bb.e, %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1136 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not91.us.1 = icmp eq ptr %i.bk, null
  br i1 %.not91.us.1, label %..loopexit93_crit_edge.us.1, label %.preheader92.us.1

.preheader92.us.1:                                ; preds = %..loopexit93_crit_edge.us
  %wide.trip.count153.1 = zext i32 %.fr133 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader92.us.1
  %indvars.iv150.1 = phi i64 [ 0, %.preheader92.us.1 ], [ %indvars.iv.next151.1, %bb.f ] ; 3 uses
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv150.1 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv150.1 to i32
  %i.bo = xor i32 %i.bn, -1
  %i.bp = add i32 %.fr133, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %.sroa.0184.0.copyload186 = load <3 x float>, ptr %i.bm, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.br, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload186, ptr %i.br, align 4
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150.1, 1 ; 2 uses
  %exitcond154.1.not = icmp eq i64 %indvars.iv.next151.1, %wide.trip.count153.1
  br i1 %exitcond154.1.not, label %..loopexit93_crit_edge.us.1, label %bb.f, !llvm.loop !29

..loopexit93_crit_edge.us.1:                      ; preds = %bb.f, %..loopexit93_crit_edge.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 1144 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not91.us.2 = icmp eq ptr %i.bt, null
  br i1 %.not91.us.2, label %..loopexit93_crit_edge.us.2, label %.preheader92.us.2

.preheader92.us.2:                                ; preds = %..loopexit93_crit_edge.us.1
  %wide.trip.count153.2 = zext i32 %.fr133 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader92.us.2
  %indvars.iv150.2 = phi i64 [ 0, %.preheader92.us.2 ], [ %indvars.iv.next151.2, %bb.g ] ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %indvars.iv150.2 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv150.2 to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %.fr133, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %.sroa.0184.0.copyload188 = load <3 x float>, ptr %i.bv, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload188, ptr %i.ca, align 4
  %indvars.iv.next151.2 = add nuw nsw i64 %indvars.iv150.2, 1 ; 2 uses
  %exitcond154.2.not = icmp eq i64 %indvars.iv.next151.2, %wide.trip.count153.2
  br i1 %exitcond154.2.not, label %..loopexit93_crit_edge.us.2, label %bb.g, !llvm.loop !29

..loopexit93_crit_edge.us.2:                      ; preds = %bb.g, %..loopexit93_crit_edge.us.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 1152 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not91.us.3 = icmp eq ptr %i.cc, null
  br i1 %.not91.us.3, label %..loopexit93_crit_edge.us.3, label %.preheader92.us.3

.preheader92.us.3:                                ; preds = %..loopexit93_crit_edge.us.2
  %wide.trip.count153.3 = zext i32 %.fr133 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader92.us.3
  %indvars.iv150.3 = phi i64 [ 0, %.preheader92.us.3 ], [ %indvars.iv.next151.3, %bb.h ] ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %indvars.iv150.3 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv150.3 to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %.fr133, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %.sroa.0184.0.copyload190 = load <3 x float>, ptr %i.ce, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload190, ptr %i.cj, align 4
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150.3, 1 ; 2 uses
  %exitcond154.3.not = icmp eq i64 %indvars.iv.next151.3, %wide.trip.count153.3
  br i1 %exitcond154.3.not, label %..loopexit93_crit_edge.us.3, label %bb.h, !llvm.loop !29

..loopexit93_crit_edge.us.3:                      ; preds = %bb.h, %..loopexit93_crit_edge.us.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 1160 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not91.us.4 = icmp eq ptr %i.cl, null
  br i1 %.not91.us.4, label %..loopexit93_crit_edge.us.4, label %.preheader92.us.4

.preheader92.us.4:                                ; preds = %..loopexit93_crit_edge.us.3
  %wide.trip.count153.4 = zext i32 %.fr133 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader92.us.4
  %indvars.iv150.4 = phi i64 [ 0, %.preheader92.us.4 ], [ %indvars.iv.next151.4, %bb.i ] ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %indvars.iv150.4 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv150.4 to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %.fr133, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %.sroa.0184.0.copyload192 = load <3 x float>, ptr %i.cn, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload192, ptr %i.cs, align 4
  %indvars.iv.next151.4 = add nuw nsw i64 %indvars.iv150.4, 1 ; 2 uses
  %exitcond154.4.not = icmp eq i64 %indvars.iv.next151.4, %wide.trip.count153.4
  br i1 %exitcond154.4.not, label %..loopexit93_crit_edge.us.4, label %bb.i, !llvm.loop !29

..loopexit93_crit_edge.us.4:                      ; preds = %bb.i, %..loopexit93_crit_edge.us.3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 1168 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not91.us.5 = icmp eq ptr %i.cu, null
  br i1 %.not91.us.5, label %..loopexit93_crit_edge.us.5, label %.preheader92.us.5

.preheader92.us.5:                                ; preds = %..loopexit93_crit_edge.us.4
  %wide.trip.count153.5 = zext i32 %.fr133 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader92.us.5
  %indvars.iv150.5 = phi i64 [ 0, %.preheader92.us.5 ], [ %indvars.iv.next151.5, %bb.j ] ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %indvars.iv150.5 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv150.5 to i32
  %i.cy = xor i32 %i.cx, -1
  %i.cz = add i32 %.fr133, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  %.sroa.0184.0.copyload194 = load <3 x float>, ptr %i.cw, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload194, ptr %i.db, align 4
  %indvars.iv.next151.5 = add nuw nsw i64 %indvars.iv150.5, 1 ; 2 uses
  %exitcond154.5.not = icmp eq i64 %indvars.iv.next151.5, %wide.trip.count153.5
  br i1 %exitcond154.5.not, label %..loopexit93_crit_edge.us.5, label %bb.j, !llvm.loop !29

..loopexit93_crit_edge.us.5:                      ; preds = %bb.j, %..loopexit93_crit_edge.us.4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 1176 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not91.us.6 = icmp eq ptr %i.dd, null
  br i1 %.not91.us.6, label %..loopexit93_crit_edge.us.6, label %.preheader92.us.6

.preheader92.us.6:                                ; preds = %..loopexit93_crit_edge.us.5
  %wide.trip.count153.6 = zext i32 %.fr133 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader92.us.6
  %indvars.iv150.6 = phi i64 [ 0, %.preheader92.us.6 ], [ %indvars.iv.next151.6, %bb.k ] ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv150.6 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv150.6 to i32
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %.fr133, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %.sroa.0184.0.copyload196 = load <3 x float>, ptr %i.df, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  store <3 x float> %.sroa.0184.0.copyload196, ptr %i.dk, align 4
  %indvars.iv.next151.6 = add nuw nsw i64 %indvars.iv150.6, 1 ; 2 uses
  %exitcond154.6.not = icmp eq i64 %indvars.iv.next151.6, %wide.trip.count153.6
  br i1 %exitcond154.6.not, label %..loopexit93_crit_edge.us.6, label %bb.k, !llvm.loop !29

..loopexit93_crit_edge.us.6:                      ; preds = %bb.k, %..loopexit93_crit_edge.us.5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 1184 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not91.us.7 = icmp eq ptr %i.dm, null
  br i1 %.not91.us.7, label %.split114.us, label %.preheader92.us.7

.preheader92.us.7:                                ; preds = %..loopexit93_crit_edge.us.6
  %wide.trip.count153.7 = zext i32 %.fr133 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader92.us.7
  %indvars.iv150.7 = phi i64 [ 0, %.preheader92.us.7 ], [ %indvars.iv.next151.7, %bb.l ] ; 3 uses
  %i.dn = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv150.7 ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv150.7 to i32
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %.fr133, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ds ; 2 uses
  %.sroa.0184.0.copyload198 = load <3 x float>, ptr %i.do, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 12, i1 false)
end_hunk_0
