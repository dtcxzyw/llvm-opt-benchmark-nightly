Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConeShape?download=true
inline.NumInlined: 71
inline.NumDeleted: 25
begin_hunk_0_@_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !20
  %i.u = fmul float %i.r, %i.t
  %i.v = fcmp ogt float %i.i, %i.u
  %i.w = load i32, ptr %i.d, align 4, !tbaa !7
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.x
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !21
  %i.z = load i32, ptr %i.e, align 8, !tbaa !7
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  store float %i.c, ptr %i.ab, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = sext i32 %i.ad to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.x
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !21 ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.am)
  %i.ao = tail call noundef float @sqrtf(float noundef %i.an) #15, !tbaa !7 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, f0x34000000
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = fdiv float %i.ar, %i.ao                 ; 2 uses
  %i.at = load i32, ptr %i.d, align 4, !tbaa !7
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !21
  %i.ax = fmul float %i.as, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  store float %i.ax, ptr %i.ay, align 4, !tbaa !21
  %i.az = fneg float %i.c
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !7
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  store float %i.az, ptr %i.bc, align 4, !tbaa !21
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !21
  %i.bh = fmul float %i.as, %i.bg
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.e:                                             ; preds = %bb.c
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !21
  %i.bl = fneg float %i.c
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !7
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn
  store float %i.bl, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sink17.i = phi i64 [ %i.be, %bb.d ], [ %i.bq, %bb.e ], [ %i.ae, %bb.b ]
  %.sink.i = phi float [ %i.bh, %bb.d ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink17.i
  store float %.sink.i, ptr %i.br, align 4, !tbaa !21
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.fca.1.load.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 11 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = load float, ptr %i.b, align 8, !tbaa !18
  %i.j = fmul float %i.i, 5.000000e-01            ; 3 uses
  %i.k = load i32, ptr %i.d, align 8, !tbaa !7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !21
  %i.o = load float, ptr %i.h, align 4, !tbaa !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !21 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !21 ; 2 uses
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.s)
  %i.w = tail call noundef float @sqrtf(float noundef %i.v) #15, !tbaa !7
  %i.x = load float, ptr %i.e, align 8, !tbaa !20
  %i.y = fmul float %i.w, %i.x
  %i.z = fcmp ogt float %i.n, %i.y
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ab
  store float 0.000000e+00, ptr %i.ac, align 4, !tbaa !21
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !7
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ae
  store float %i.j, ptr %i.af, align 4, !tbaa !21
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !7
  %i.ah = sext i32 %i.ag to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ab
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !21 ; 2 uses
  %i.ak = load i32, ptr %i.f, align 4, !tbaa !7
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !21 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ao)
  %i.aq = tail call noundef float @sqrtf(float noundef %i.ap) #15, !tbaa !7 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, f0x34000000
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load float, ptr %i.g, align 4, !tbaa !17
  %i.at = fdiv float %i.as, %i.aq                 ; 2 uses
  %i.au = load i32, ptr %i.c, align 4, !tbaa !7
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !21
  %i.ay = fmul float %i.at, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %4, i64 %i.av
  store float %i.ay, ptr %i.az, align 4, !tbaa !21
  %i.ba = fneg float %i.j
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !7
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bc
  store float %i.ba, ptr %i.bd, align 4, !tbaa !21
  %i.be = load i32, ptr %i.f, align 4, !tbaa !7
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !21
  %i.bi = fmul float %i.at, %i.bh
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.f:                                             ; preds = %bb.d
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !7
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bk
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !21
  %i.bm = fneg float %i.j
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !7
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bo
  store float %i.bm, ptr %i.bp, align 4, !tbaa !21
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sink17.i = phi i64 [ %i.bf, %bb.e ], [ %i.br, %bb.f ], [ %i.ah, %bb.c ]
  %.sink.i = phi float [ %i.bi, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.c ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %4, i64 %.sink17.i
  store float %.sink.i, ptr %i.bs, align 4, !tbaa !21
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.fca.0.load.i, ptr %i.bt, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store <2 x float> %.fca.1.load.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btConeShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load float, ptr %i.a, align 8, !tbaa !18
  %i.c = fmul float %i.b, 5.000000e-01            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %i.j = load float, ptr %1, align 4, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !21 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !21 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %i.r = tail call noundef float @sqrtf(float noundef %i.q) #15, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !20
  %i.u = fmul float %i.r, %i.t
  %i.v = fcmp ogt float %i.i, %i.u
  %i.w = load i32, ptr %i.d, align 4, !tbaa !7
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.x
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !21
  %i.z = load i32, ptr %i.e, align 8, !tbaa !7
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  store float %i.c, ptr %i.ab, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = sext i32 %i.ad to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.x
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !21 ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.am)
  %i.ao = tail call noundef float @sqrtf(float noundef %i.an) #15, !tbaa !7 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, f0x34000000
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = fdiv float %i.ar, %i.ao                 ; 2 uses
  %i.at = load i32, ptr %i.d, align 4, !tbaa !7
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !21
  %i.ax = fmul float %i.as, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  store float %i.ax, ptr %i.ay, align 4, !tbaa !21
  %i.az = fneg float %i.c
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !7
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  store float %i.az, ptr %i.bc, align 4, !tbaa !21
  %i.bd = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !21
  %i.bh = fmul float %i.as, %i.bg
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

bb.e:                                             ; preds = %bb.c
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !21
  %i.bl = fneg float %i.c
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !7
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn
  store float %i.bl, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64
  br label %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit

_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sink17.i = phi i64 [ %i.be, %bb.d ], [ %i.bq, %bb.e ], [ %i.ae, %bb.b ]
  %.sink.i = phi float [ %i.bh, %bb.d ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink17.i
  store float %.sink.i, ptr %i.br, align 4, !tbaa !21
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8 ; 3 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bs = load ptr, ptr %0, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef float %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.bw = fcmp une float %i.bv, 0.000000e+00
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
  %.sroa.06.0.copyload = load float, ptr %1, align 4 ; 3 uses
  %.sroa.8.0.copyload = load float, ptr %i.k, align 4 ; 3 uses
  %.sroa.13.0.copyload = load float, ptr %i.o, align 4 ; 3 uses
  %i.bx = fmul float %.sroa.8.0.copyload, %.sroa.8.0.copyload
  %i.by = tail call float @llvm.fmuladd.f32(float %.sroa.06.0.copyload, float %.sroa.06.0.copyload, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0.copyload, float %.sroa.13.0.copyload, float %i.by)
  %i.ca = fcmp olt float %i.bz, f0x28800000       ; 3 uses
  %.sroa.06.0 = select i1 %i.ca, float -1.000000e+00, float %.sroa.06.0.copyload ; 3 uses
  %.sroa.8.0 = select i1 %i.ca, float -1.000000e+00, float %.sroa.8.0.copyload ; 3 uses
  %.sroa.13.0 = select i1 %i.ca, float -1.000000e+00, float %.sroa.13.0.copyload ; 3 uses
  %i.cb = fmul float %.sroa.8.0, %.sroa.8.0
  %i.cc = tail call float @llvm.fmuladd.f32(float %.sroa.06.0, float %.sroa.06.0, float %i.cb)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %.sroa.13.0, float %i.cc)
  %i.ce = tail call noundef float @sqrtf(float noundef %i.cd) #15, !tbaa !7
  %i.cf = fdiv float 1.000000e+00, %i.ce          ; 3 uses
  %i.cg = fmul float %i.cf, %.sroa.06.0
  %i.ch = fmul float %i.cf, %.sroa.8.0
  %i.ci = fmul float %i.cf, %.sroa.13.0
  %i.cj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef float %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %i.cn = fmul float %i.cm, %i.cg
  %i.co = fmul float %i.cm, %i.ch
  %i.cp = fmul float %i.cm, %i.ci
  %.sroa.013.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.cq = fadd float %.sroa.013.0.vec.extract, %i.cn
  %.sroa.013.0.vec.insert = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.013.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %i.cr = fadd float %.sroa.013.4.vec.extract, %i.co
  %.sroa.013.4.vec.insert = insertelement <2 x float> %.sroa.013.0.vec.insert, float %i.cr, i64 1
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0
  %i.cs = fadd float %.sroa.6.8.vec.extract, %i.cp
  %.sroa.6.8.vec.insert = insertelement <2 x float> %.fca.1.load.i, float %i.cs, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit
  %.sroa.013.0 = phi <2 x float> [ %.sroa.013.4.vec.insert, %bb.f ], [ %.fca.0.load.i, %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit ]
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.f ], [ %.fca.1.load.i, %_ZNK11btConeShape16coneLocalSupportERK9btVector3.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN11btConeShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #16
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 9 uses
  %4 = alloca %class.btVector3, align 4           ; 5 uses
  %5 = alloca %class.btVector3, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store float 1.000000e+00, ptr %3, align 4, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.i = load float, ptr %5, align 4, !tbaa !21
  %i.j = load float, ptr %4, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = fmul float %1, f0x3DAAAAAA               ; 2 uses
  %i.q = load <2 x float>, ptr %i.k, align 4, !tbaa !21 ; 2 uses
  %i.r = load <2 x float>, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.i, i64 1
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.j, i64 1
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fsub <2 x float> %i.q, %i.r
  %i.y = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.z = fmul <2 x float> %i.x, splat (float 5.000000e-01)
  %i.aa = call noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fadd <2 x float> %i.y, %i.ac
  %i.ae = fadd <2 x float> %i.z, %i.ac
  %i.af = fmul <2 x float> %i.ad, splat (float 2.000000e+00) ; 2 uses
  %i.ag = fmul <2 x float> %i.ae, splat (float 2.000000e+00) ; 2 uses
  %i.ah = fmul <2 x float> %i.af, %i.af           ; 2 uses
  %i.ai = fmul <2 x float> %i.ag, %i.ag           ; 2 uses
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.ai
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = insertelement <2 x float> poison, float %i.p, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.am, %i.aj
  %i.ao = fmul float %i.p, %i.ak
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  store <2 x float> %i.an, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11btConeShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !23
  ret float %i.b
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN12btConeShapeZD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #16
  unreachable
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN12btConeShapeXD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTS16btCollisionShape", !6, i64 8, !10, i64 16}
!12 = !{!"_ZTS13btConvexShape", !11, i64 0}
!13 = !{!"_ZTS9btVector3", !5, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"_ZTS21btConvexInternalShape", !12, i64 0, !13, i64 24, !13, i64 40, !14, i64 56, !14, i64 60}
!16 = !{!"_ZTS11btConeShape", !15, i64 0, !14, i64 64, !14, i64 68, !14, i64 72, !5, i64 76}
!17 = !{!16, !14, i64 68}
!18 = !{!16, !14, i64 72}
!19 = !{!11, !6, i64 8}
!20 = !{!16, !14, i64 64}
!21 = !{!14, !14, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!15, !14, i64 56}
end_hunk_0
