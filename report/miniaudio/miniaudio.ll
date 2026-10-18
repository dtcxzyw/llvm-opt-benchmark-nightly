Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_spatializer_get_doppler_factor:bb.a
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @ma_spatializer_get_positioning(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_spatializer_get_position(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !1

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.c release, align 4
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.24.0.copyload.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_get.exit
  %.pn = phi { <2 x float>, float } [ %.fca.1.insert.i, %ma_atomic_vec3f_get.exit ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, float } %.pn
}

; Function Attrs: nounwind uwtable
define void @ma_spatializer_get_relative_position_and_direction(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #36 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !349
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !2012
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not195 = icmp eq ptr %3, null                 ; 3 uses
  br i1 %.not195, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !349
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !2012
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.g, label %ma_spatializer_get_positioning.exit

ma_spatializer_get_positioning.exit:              ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.k

bb.g:                                             ; preds = %ma_spatializer_get_positioning.exit, %bb.f
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.j = atomicrmw volatile xchg ptr %i.i, i32 1 acquire, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %ma_spatializer_get_position.exit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.l = atomicrmw volatile xchg ptr %i.i, i32 1 acquire, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %ma_spatializer_get_position.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.loopexit.i.i.i
  %i.n = load atomic volatile i32, ptr %i.i monotonic, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.p = load atomic volatile i32, ptr %i.i monotonic, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1

ma_spatializer_get_position.exit:                 ; preds = %.loopexit.i.i.i, %bb.h
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.i release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i, ptr %2, align 4, !tbaa !349
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.24.0.copyload.i.i, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !349
  br label %bb.i

bb.i:                                             ; preds = %ma_spatializer_get_position.exit, %bb.g
  br i1 %.not195, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.t = atomicrmw volatile xchg ptr %i.s, i32 1 acquire, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i196

.loopexit.i.i.i197:                               ; preds = %.lr.ph.i.i.i205, %.preheader.i.i.i196
  %i.v = atomicrmw volatile xchg ptr %i.s, i32 1 acquire, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i196

.preheader.i.i.i196:                              ; preds = %bb.j, %.loopexit.i.i.i197
  %i.x = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %.lr.ph.i.i.i205, label %.loopexit.i.i.i197

.lr.ph.i.i.i205:                                  ; preds = %.preheader.i.i.i196, %.lr.ph.i.i.i205
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.z = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.i.i.i205, label %.loopexit.i.i.i197, !llvm.loop !1

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i197, %bb.j
  %.sroa.03.0.copyload.i.i199 = load <2 x float>, ptr %i.r, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx.i.i200 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i201 = load float, ptr %.sroa.24.0..sroa_idx.i.i200, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.s release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i199, ptr %3, align 4, !tbaa !349
  br label %.sink.split

bb.k:                                             ; preds = %ma_spatializer_get_positioning.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.ad = atomicrmw volatile xchg ptr %i.ac, i32 1 acquire, align 4
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit285, label %.preheader.i.i.i206

.loopexit.i.i.i207:                               ; preds = %.lr.ph.i.i.i215, %.preheader.i.i.i206
  %i.af = atomicrmw volatile xchg ptr %i.ac, i32 1 acquire, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit285, label %.preheader.i.i.i206

.preheader.i.i.i206:                              ; preds = %bb.k, %.loopexit.i.i.i207
  %i.ah = load atomic volatile i32, ptr %i.ac monotonic, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph.i.i.i215, label %.loopexit.i.i.i207

.lr.ph.i.i.i215:                                  ; preds = %.preheader.i.i.i206, %.lr.ph.i.i.i215
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.aj = load atomic volatile i32, ptr %i.ac monotonic, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %.lr.ph.i.i.i215, label %.loopexit.i.i.i207, !llvm.loop !1

.loopexit285:                                     ; preds = %.loopexit.i.i.i207, %bb.k
  %.sroa.03.0.copyload.i.i209 = load <2 x float>, ptr %i.ab, align 4, !tbaa !349 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i211 = load float, ptr %.sroa.24.0..sroa_idx.i.i210, align 4, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.ac release, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.an = atomicrmw volatile xchg ptr %i.am, i32 1 acquire, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit284, label %.preheader.i.i.i217

.loopexit.i.i.i218:                               ; preds = %.lr.ph.i.i.i226, %.preheader.i.i.i217
  %i.ap = atomicrmw volatile xchg ptr %i.am, i32 1 acquire, align 4
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit284, label %.preheader.i.i.i217

.preheader.i.i.i217:                              ; preds = %.loopexit285, %.loopexit.i.i.i218
  %i.ar = load atomic volatile i32, ptr %i.am monotonic, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph.i.i.i226, label %.loopexit.i.i.i218

.lr.ph.i.i.i226:                                  ; preds = %.preheader.i.i.i217, %.lr.ph.i.i.i226
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.at = load atomic volatile i32, ptr %i.am monotonic, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.lr.ph.i.i.i226, label %.loopexit.i.i.i218, !llvm.loop !1

.loopexit284:                                     ; preds = %.loopexit.i.i.i218, %.loopexit285
  %.sroa.03.0.copyload.i.i220 = load <2 x float>, ptr %i.al, align 4, !tbaa !349 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i221 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i222 = load float, ptr %.sroa.24.0..sroa_idx.i.i221, align 4, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.am release, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.ax = atomicrmw volatile xchg ptr %i.aw, i32 1 acquire, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.i.i.i228

.loopexit.i.i.i229:                               ; preds = %.lr.ph.i.i.i237, %.preheader.i.i.i228
  %i.az = atomicrmw volatile xchg ptr %i.aw, i32 1 acquire, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.i.i.i228

.preheader.i.i.i228:                              ; preds = %.loopexit284, %.loopexit.i.i.i229
  %i.bb = load atomic volatile i32, ptr %i.aw monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i237, label %.loopexit.i.i.i229

.lr.ph.i.i.i237:                                  ; preds = %.preheader.i.i.i228, %.lr.ph.i.i.i237
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bd = load atomic volatile i32, ptr %i.aw monotonic, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %.lr.ph.i.i.i237, label %.loopexit.i.i.i229, !llvm.loop !1

.loopexit:                                        ; preds = %.loopexit.i.i.i229, %.loopexit284
  %.sroa.03.0.copyload.i.i231 = load <2 x float>, ptr %i.av, align 4, !tbaa !349 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i233 = load float, ptr %.sroa.24.0..sroa_idx.i.i232, align 4, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.aw release, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.bh = atomicrmw volatile xchg ptr %i.bg, i32 1 acquire, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %ma_spatializer_listener_get_direction.exit, label %.preheader.i.i.i238

.loopexit.i.i.i239:                               ; preds = %.lr.ph.i.i.i247, %.preheader.i.i.i238
  %i.bj = atomicrmw volatile xchg ptr %i.bg, i32 1 acquire, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %ma_spatializer_listener_get_direction.exit, label %.preheader.i.i.i238

.preheader.i.i.i238:                              ; preds = %.loopexit, %.loopexit.i.i.i239
  %i.bl = load atomic volatile i32, ptr %i.bg monotonic, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.i.i247, label %.loopexit.i.i.i239

.lr.ph.i.i.i247:                                  ; preds = %.preheader.i.i.i238, %.lr.ph.i.i.i247
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bn = load atomic volatile i32, ptr %i.bg monotonic, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph.i.i.i247, label %.loopexit.i.i.i239, !llvm.loop !1

ma_spatializer_listener_get_direction.exit:       ; preds = %.loopexit.i.i.i239, %.loopexit
  %.sroa.03.0.copyload.i.i241 = load <2 x float>, ptr %i.bf, align 4, !tbaa !349 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i242 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.24.0.copyload.i.i243 = load float, ptr %.sroa.24.0..sroa_idx.i.i242, align 4, !tbaa !349 ; 3 uses
  store atomic volatile i32 0, ptr %i.bg release, align 4
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i241, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.03.0.copyload.i.i241, %.sroa.03.0.copyload.i.i241
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bq = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.bp)
  %i.br = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i243, float %.sroa.24.0.copyload.i.i243, float %i.bq) ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %ma_vec3f_normalize.exit, label %bb.l

bb.l:                                             ; preds = %ma_spatializer_listener_get_direction.exit
  %i.bt = tail call float asm sideeffect "rsqrtss $1, $0", "=x,x,~{dirflag},~{fpsr},~{flags}"(float %i.br) #55, !srcloc !474 ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %.sroa.03.0.copyload.i.i241, %i.bv
  %i.bx = fmul float %.sroa.24.0.copyload.i.i243, %i.bt
  %i.by = insertvalue { <2 x float>, float } poison, <2 x float> %i.bw, 0
  %i.bz = insertvalue { <2 x float>, float } %i.by, float %i.bx, 1
  br label %ma_vec3f_normalize.exit

ma_vec3f_normalize.exit:                          ; preds = %ma_spatializer_listener_get_direction.exit, %bb.l
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %i.bz, %bb.l ], [ zeroinitializer, %ma_spatializer_listener_get_direction.exit ] ; 2 uses
  %.fca.0.extract60 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0 ; 4 uses
  %.fca.1.extract61 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.ca, align 4 ; 3 uses
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4 ; 2 uses
  %.sroa.013.4.vec.extract.i = extractelement <2 x float> %.fca.0.extract60, i64 1 ; 3 uses
  %.sroa.05.4.vec.extract.i = extractelement <2 x float> %.sroa.052.0.copyload, i64 1
  %i.cb = fneg float %.sroa.05.4.vec.extract.i
  %i.cc = fmul float %.fca.1.extract61, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %.sroa.013.4.vec.extract.i, float %.sroa.253.0.copyload, float %i.cc) ; 3 uses
  %.sroa.013.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract60, i64 0 ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.052.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %i.ce, float %.sroa.253.0.copyload, i64 0
  %i.cg = fneg <2 x float> %i.cf
  %i.ch = fmul <2 x float> %.fca.0.extract60, %i.cg
  %i.ci = shufflevector <2 x float> %.fca.0.extract60, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %.fca.1.extract61, i64 0
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %.sroa.052.0.copyload, <2 x float> %i.ch) ; 4 uses
  %foldExtExtBinop296 = fmul <2 x float> %i.ck, %i.ck
  %i.cl = extractelement <2 x float> %foldExtExtBinop296, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cl)
  %i.cn = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cm) ; 2 uses
  %i.cp = fcmp oeq float %i.co, 0.000000e+00
  br i1 %i.cp, label %ma_vec3f_normalize.exit255, label %bb.m

bb.m:                                             ; preds = %ma_vec3f_normalize.exit
  %i.cq = tail call float asm sideeffect "rsqrtss $1, $0", "=x,x,~{dirflag},~{fpsr},~{flags}"(float %i.co) #55, !srcloc !474 ; 2 uses
  %i.cr = fmul float %i.cd, %i.cq
  %.sroa.011.0.vec.insert.i252 = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cs = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.ck, %i.ct           ; 2 uses
  %i.cv = shufflevector <2 x float> %.sroa.011.0.vec.insert.i252, <2 x float> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.cw = insertvalue { <2 x float>, float } poison, <2 x float> %i.cv, 0
  %i.cx = extractelement <2 x float> %i.cu, i64 1
  %i.cy = insertvalue { <2 x float>, float } %i.cw, float %i.cx, 1
  br label %ma_vec3f_normalize.exit255

ma_vec3f_normalize.exit255:                       ; preds = %ma_vec3f_normalize.exit, %bb.m
  %.fca.1.insert.merged.i254 = phi { <2 x float>, float } [ %i.cy, %bb.m ], [ zeroinitializer, %ma_vec3f_normalize.exit ] ; 2 uses
  %.fca.0.extract42 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i254, 0 ; 4 uses
  %.fca.1.extract43 = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i254, 1 ; 3 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract42, i64 0 ; 2 uses
  %foldExtExtBinop298 = fmul <2 x float> %.fca.0.extract42, %.fca.0.extract42
  %i.cz = extractelement <2 x float> %foldExtExtBinop298, i64 1
  %i.da = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %.fca.1.extract43, float %.fca.1.extract43, float %i.da)
  %i.dc = fcmp oeq float %i.db, 0.000000e+00      ; 2 uses
  %.sroa.0111.0 = select i1 %i.dc, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %.fca.0.extract42 ; 2 uses
  %.sroa.11116.0 = select i1 %i.dc, float 0.000000e+00, float %.fca.1.extract43 ; 4 uses
  %.sroa.013.4.vec.extract.i256 = extractelement <2 x float> %.sroa.0111.0, i64 1 ; 4 uses
  %i.dd = fneg float %.sroa.013.4.vec.extract.i   ; 4 uses
  %i.de = fmul float %.sroa.11116.0, %i.dd
  %.sroa.013.0.vec.extract.i259 = extractelement <2 x float> %.sroa.0111.0, i64 0 ; 4 uses
  %i.df = fneg float %.fca.1.extract61            ; 4 uses
  %i.dg = fmul float %.sroa.013.0.vec.extract.i259, %i.df
  %i.dh = fneg float %.sroa.013.0.vec.extract.i   ; 4 uses
  %i.di = fmul float %.sroa.013.4.vec.extract.i256, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !483
  %i.dl = icmp eq i32 %i.dk, 1                    ; 3 uses
  %i.dm = fneg float %.sroa.013.0.vec.extract.i259
  %i.dn = fneg float %.sroa.013.4.vec.extract.i256
  %i.do = fneg float %.sroa.11116.0
  %i.dp = tail call float @llvm.fmuladd.f32(float %.sroa.013.4.vec.extract.i256, float %.fca.1.extract61, float %i.de) ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %.sroa.11116.0, float %.sroa.013.0.vec.extract.i, float %i.dg) ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract.i259, float %.sroa.013.4.vec.extract.i, float %i.di) ; 2 uses
  %.sroa.0111.4.vec.extract.pre-phi = select i1 %i.dl, float %i.dn, float %.sroa.013.4.vec.extract.i256 ; 2 uses
  %.sroa.0111.0.vec.extract.pre-phi = select i1 %i.dl, float %i.dm, float %.sroa.013.0.vec.extract.i259 ; 2 uses
  %.sroa.11116.1 = select i1 %i.dl, float %i.do, float %.sroa.11116.0 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ma_vec3f_normalize.exit255
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i231, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i231, i64 1
  %4 = fmul float %.sroa.01.4.vec.extract.i, %i.dd
  %5 = tail call float @llvm.fmuladd.f32(float %i.dh, float %.sroa.01.0.vec.extract.i, float %4)
  %6 = tail call float @llvm.fmuladd.f32(float %i.df, float %.sroa.24.0.copyload.i.i233, float %5)
  %.sroa.0146.0.vec.extract = extractelement <2 x float> %.sroa.03.0.copyload.i.i209, i64 0
  %.sroa.0146.4.vec.extract = extractelement <2 x float> %.sroa.03.0.copyload.i.i209, i64 1
  %i.ds = shufflevector <2 x float> %.sroa.03.0.copyload.i.i231, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = insertelement <2 x float> poison, float %.sroa.0111.4.vec.extract.pre-phi, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dq, i64 1 ; 2 uses
  %i.dv = fmul <2 x float> %i.ds, %i.du
  %i.dw = insertelement <2 x float> poison, float %.sroa.0111.0.vec.extract.pre-phi, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.dp, i64 1 ; 2 uses
  %i.dy = shufflevector <2 x float> %.sroa.03.0.copyload.i.i231, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dy, <2 x float> %i.dv)
  %i.ea = insertelement <2 x float> poison, float %.sroa.11116.1, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dr, i64 1 ; 2 uses
  %i.ec = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i233, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ed, <2 x float> %i.dz)
  %i.ef = shufflevector <2 x float> %.sroa.03.0.copyload.i.i209, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul <2 x float> %i.ef, %i.du
  %i.eh = shufflevector <2 x float> %.sroa.03.0.copyload.i.i209, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.eh, <2 x float> %i.eg)
  %i.ej = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i211, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ek, <2 x float> %i.ei)
  %i.em = fsub <2 x float> %i.el, %i.ee
  store <2 x float> %i.em, ptr %2, align 4, !tbaa !349
  %7 = fmul float %.sroa.0146.4.vec.extract, %i.dd
  %8 = tail call float @llvm.fmuladd.f32(float %i.dh, float %.sroa.0146.0.vec.extract, float %7)
  %9 = tail call float @llvm.fmuladd.f32(float %i.df, float %.sroa.24.0.copyload.i.i211, float %8)
  %10 = fsub float %9, %6
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %10, ptr %i.en, align 4, !tbaa !2012
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ma_vec3f_normalize.exit255
  br i1 %.not195, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0144.0.vec.extract = extractelement <2 x float> %.sroa.03.0.copyload.i.i220, i64 0
  %.sroa.0144.4.vec.extract = extractelement <2 x float> %.sroa.03.0.copyload.i.i220, i64 1
  %i.eo = shufflevector <2 x float> %.sroa.03.0.copyload.i.i220, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = insertelement <2 x float> poison, float %.sroa.0111.4.vec.extract.pre-phi, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.dq, i64 1
  %i.er = fmul <2 x float> %i.eo, %i.eq
  %i.es = insertelement <2 x float> poison, float %.sroa.0111.0.vec.extract.pre-phi, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.dp, i64 1
  %i.eu = shufflevector <2 x float> %.sroa.03.0.copyload.i.i220, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.eu, <2 x float> %i.er)
  %i.ew = insertelement <2 x float> poison, float %.sroa.11116.1, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.dr, i64 1
  %i.ey = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i222, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ez, <2 x float> %i.ev)
  store <2 x float> %i.fa, ptr %3, align 4, !tbaa !349
  %i.fb = fmul float %.sroa.0144.4.vec.extract, %i.dd
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.dh, float %.sroa.0144.0.vec.extract, float %i.fb)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.df, float %.sroa.24.0.copyload.i.i222, float %i.fc)
  br label %.sink.split

.sink.split:                                      ; preds = %ma_spatializer_get_direction.exit, %bb.p
  %.sink = phi float [ %i.fd, %bb.p ], [ %.sroa.24.0.copyload.i.i201, %ma_spatializer_get_direction.exit ]
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %i.fe, align 4, !tbaa !349
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @ma_spatializer_get_attenuation_model(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i32, ptr %i.b seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind uwtable
define void @ma_spatializer_get_cone(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  store i32 %i.c, ptr %1, align 4, !tbaa !349
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load atomic volatile i32, ptr %i.d seq_cst, align 4
  store i32 %i.e, ptr %2, align 4, !tbaa !349
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load atomic volatile i32, ptr %i.f seq_cst, align 4
  store i32 %i.g, ptr %3, align 4, !tbaa !349
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_min_gain(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_max_gain(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @ma_channel_map_get_channel(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %1, i32 noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp ult i32 %2, %1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i8 [ %i.b, %bb.b ], [ %i.e, %bb.d ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: norecurse nounwind uwtable
define float @ma_spatializer_get_directional_attenuation_factor(ptr nofree noundef captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load atomic volatile i32, ptr %i.b seq_cst, align 4
  %i.d = bitcast i32 %i.c to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.d, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_spatializer_get_velocity(ptr nofree noundef captures(address) %0) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !1

ma_atomic_vec3f_get.exit:                         ; preds = %.loopexit.i.i, %bb.b
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.b, align 4, !tbaa !349
end_hunk_0
