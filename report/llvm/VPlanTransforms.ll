Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm12SCEVExpanderD2Ev
define linkonce_odr hidden void @_ZN4llvm12SCEVExpanderD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #25
  br label %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #25
  tail call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.f) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2247 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2248
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12SCEVExpander20SCEVInsertPointGuardELj8EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.t = load i8, ptr %i.s, align 8, !tbaa !210, !range !213, !noundef !214
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !215
  tail call void @free(ptr noundef %i.w) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_7PHINodeEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2249 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2250
  %i.ac = zext i32 %i.y to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.al, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.am = zext i32 %i.al to i64
  %.idx.i = mul nuw nsw i64 %i.am, 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ao, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i ], [ %i.an, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !438
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #25
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.aj, %i.ao
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2251

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !12
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.ar = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.aj, %_ZN4llvm8DenseMapIPKNS_4SCEVEPKNS_4LoopENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.ar) #25
  br label %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit:  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.av = load i32, ptr %i.au, align 4, !tbaa !2252 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2253
  %i.az = zext i32 %i.av to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj2EED2Ev.exit, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !210, !range !213, !noundef !214
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !215
  tail call void @free(ptr noundef %i.bj) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1:          ; preds = %_ZN4llvm8DenseMapINS_11PoisoningVHINS_11InstructionEEENS_11PoisonFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !2254 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2255
  %i.bp = zext i32 %i.bl to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bo, i64 noundef %i.bu, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !2254 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2255
  %i.ca = zext i32 %i.bw to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2

_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2: ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !2256 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !2257
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2258
  %i.cn = zext i32 %i.ci to i64
  %i.co = add nuw nsw i64 %i.cn, 31
  %i.cp = lshr i64 %i.co, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !153 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cs = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i3
  %.0.i3.i.i = phi i32 [ %i.cr, %.lr.ph.i.i3 ], [ %i.db, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ct = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cu = or disjoint i32 %i.ct, %i.cs
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !438
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cz) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.m, %bb.l
  %i.da = add i32 %.0.i3.i.i, -1
  %i.db = and i32 %i.da, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !2259

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i4 = icmp eq i64 %indvars.iv.next.i.i, %i.cp
  br i1 %.not.i.i.i4, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2260

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ch, align 4, !tbaa !2256 ; 2 uses
  %i.dc = icmp eq i32 %.pr.i, 0
  br i1 %i.dc, label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !2257
  %i.de = zext i32 %.pr.i to i64                  ; 2 uses
  %i.df = mul nuw nsw i64 %i.de, 40
  %i.dg = add nuw nsw i64 %i.de, 31
  %i.dh = lshr i64 %i.dg, 3
  %i.di = and i64 %i.dh, 1073741820
  %i.dj = add nuw nsw i64 %i.di, %i.df
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dd, i64 noundef %i.dj, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SC_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplINS_11AssertingVHINS_5ValueEEENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit2, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairINS_8SCEVUseTIPKNS_4SCEVEEEPNS_11InstructionEENS_10TrackingVHINS_5ValueEEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SD_EEEESA_SD_SF_SI_E10destroyAllEv.exit.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS_5VPlanERKNS_19TargetTransformInfoE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.919") align 8 %0, ptr noundef nonnull align 8 dereferenceable(816) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ElementCount", align 8 ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.928", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.942", align 8 ; 13 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 8 uses
  %7 = alloca %"class.llvm::detail::BindStorage", align 8 ; 2 uses
  %8 = alloca %"class.std::unique_ptr.919", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallPtrSet.956", align 8 ; 9 uses
  %10 = alloca %"class.llvm::VPBuilder", align 8  ; 6 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.std::optional.863", align 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %1) #25 ; 55 uses
  %.not104 = icmp eq ptr %i.b, null
  br i1 %.not104, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %bb.ek

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4llvm11VPBlockBase18getEntryBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.b) #25
  %i.d = tail call noundef ptr @_ZN4llvm11VPBlockBase20getExitingBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.b) #25
  %.not105 = icmp eq ptr %i.c, %i.d
  br i1 %.not105, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %bb.ek

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN4llvm11VPBlockBase20getExitingBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.b) #25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !68
  %.not232 = icmp eq i8 %i.i, 5
  br i1 %.not232, label %_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit, label %_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.k = load i8, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq i8 %i.k, 78
  br i1 %i.l, label %bb.f, label %_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit.thread: ; preds = %bb.e, %_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %bb.ek

bb.f:                                             ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_12VPRecipeBaseENS0_12Recipe_matchISt5tupleIJEELj78ELb0EJNS_13VPInstructionEEEEEEbPT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.o, align 4, !tbaa !15
  %i.p = call noundef ptr @_ZN4llvm11VPBlockBase18getEntryBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.b) #25 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 2 uses
  %.sroa.0181.0325 = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %.not233326 = icmp eq ptr %.sroa.0181.0325, %i.r
  br i1 %.not233326, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.thread221
  %.sroa.0181.0329 = phi ptr [ %.sroa.0181.0325, %.lr.ph ], [ %.sroa.0181.0, %.thread221 ] ; 12 uses
  %.sroa.10.0328 = phi i1 [ false, %.lr.ph ], [ %.sroa.10.2226, %.thread221 ] ; 4 uses
  %.sroa.0184.0327 = phi i64 [ undef, %.lr.ph ], [ %.sroa.0184.2225, %.thread221 ] ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.0181.0329, i64 -16 ; 36 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 72 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !68
  switch i8 %i.aa, label %.critedge [
    i8 11, label %bb.h
    i8 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 80
  %i.ac = call noundef zeroext i1 @_ZN4llvm7vputils17onlyFirstLaneUsedEPKNS_7VPValueE(ptr noundef nonnull %i.ab) #25
  br i1 %i.ac, label %.thread221, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.ad = call noundef zeroext i1 @_ZNK4llvm12VPRecipeBase5isPhiEv(ptr noundef nonnull align 8 dereferenceable(89) %i.y) #25
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %.thread228

bb.j:                                             ; preds = %.critedge
  %i.ae = load i8, ptr %i.z, align 8, !tbaa !68
  %i.af = icmp ne i8 %i.ae, 7                     ; 3 uses
  %spec.select.i.i = select i1 %i.af, ptr null, ptr %i.y ; 2 uses
  %i.ag = call noundef zeroext i1 @_ZNK4llvm12VPRecipeBase16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(89) %i.y) #25
  %or.cond.not = and i1 %i.af, %i.ag
  br i1 %or.cond.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !2261
  br label %.thread228

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0181.0329, i64 -8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8 ; 3 uses
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 7
  %i.al = zext i1 %i.ak to i32
  br label %_ZN4llvm5VPDef13definedValuesEv.exit

bb.n:                                             ; preds = %bb.l
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !14
  br label %_ZN4llvm5VPDef13definedValuesEv.exit

_ZN4llvm5VPDef13definedValuesEv.exit:             ; preds = %bb.m, %bb.n
  %.0.i.i.i.i2.i = phi ptr [ %i.ah, %bb.m ], [ %i.ao, %bb.n ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.al, %bb.m ], [ %i.aq, %bb.n ] ; 3 uses
  %i.ar = zext i32 %.0.i.i.i to i64               ; 2 uses
  %.idx3.i = shl nuw nsw i64 %i.ar, 3             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2.i, i64 %.idx3.i
  %i.at = lshr i64 %i.ar, 2                       ; 2 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4llvm5VPDef13definedValuesEv.exit
  %i.au = and i64 %.idx3.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i2.i, i64 %i.au
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit205.thread.i.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i.i
  %.0421.i.i.i.i.i.i = phi i64 [ %i.fx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit205.thread.i.i.i.i.i.i" ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.029420.i.i.i.i.i.i = phi ptr [ %i.fw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms22narrowInterleaveGroupsERNS2_5VPlanERKNS2_19TargetTransformInfoEE3$_0EclIPKPNS2_13VPRecipeValueEEEbT_.exit205.thread.i.i.i.i.i.i" ], [ %.0.i.i.i.i2.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i.i = load ptr, ptr %.029420.i.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISB_EEEEDaOT0_EUlS5_E_RS4_EEZNSD_ISE_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEC2ERKSP_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !1082

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !206
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.n, ptr %i.o, align 8, !tbaa !209
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !2662 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !2662 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2663

_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !222
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i16, ptr %i.u, align 8
  store i16 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(114) %i.w, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(114) %i.x) #25
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !222 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !206 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit
  %i.ah = icmp ugt i64 %i.ag, 9223372036854775776
  br i1 %i.ah, label %bb.e, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !1082

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit
  %i.aj = phi ptr [ %i.ai, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SI_EEDaSK_EUlSM_E_St20forward_iterator_tagEESN_SP_S5_lS6_SM_EC2ERKSR_.exit ] ; 5 uses
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !206
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !222
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.al, ptr %i.am, align 8, !tbaa !209
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !2662 ; 2 uses
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !2662 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_RS3_EC2ERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.an, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i3, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_RS3_EC2ERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2663

_ZN4llvm15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_13VPRegionBlockERNS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_RS3_EC2ERKSL_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !222
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.at = load i16, ptr %i.as, align 8
  store i16 %i.at, ptr %i.ar, align 8
  ret void
}

declare noundef zeroext i1 @_ZN4llvm7vputils23cannotHoistOrSinkRecipeERKNS_12VPRecipeBaseEb(ptr noundef nonnull align 8 dereferenceable(89), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1166", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !315
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !300
  store ptr %i.y, ptr %i.q, align 8, !tbaa !314
  store i32 0, ptr %i.p, align 16, !tbaa !323
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2773
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !315  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !314  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !300
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !315
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !318
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !330
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.z, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = or disjoint i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.k, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !153
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.k                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !153
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !2774

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !153
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !153
  %i.bj = add i32 %.0.i16, -1
  %i.bk = and i32 %i.bj, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2775

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2776

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !315
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !323
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !323
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !300
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEENS_6detail13DenseSetEmptyENS_12DenseMapInfoISA_vEENSB_12DenseSetPairISA_EEEESA_SC_SE_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12VPBasicBlockEPNS_17VPSingleDefRecipeEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbRNS_6VPUserEjEE11callback_fnIZL18sinkScalarOperandsRNS_5VPlanEE3$_2EEblS2_j"(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 %2) #15 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !346
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.c = icmp ne ptr %.val2, %.val
  ret i1 %i.c
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbRNS_6VPUserEjEE11callback_fnIZL35mergeReplicateRegionsIntoSuccessorsRNS_5VPlanEE3$_0EEblS2_j"(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 %2) #15 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !382
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.c = icmp eq ptr %.val2, %.val
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm9VPBuilder19createScalarIVStepsENS_11Instruction9BinaryOpsEPNS_14FPMathOperatorEPNS_7VPValueES6_S6_NS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.llvm::FastMathFlags", align 4 ; 4 uses
  %8 = alloca %"struct.llvm::VPIRFlags::FastMathFlagsTy", align 1 ; 4 uses
  %i.a = alloca [3 x ptr], align 8                ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 11 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %3, ptr %i.a, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %5, ptr %i.e, align 8, !tbaa !111
  %i.f = tail call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %.sroa.0.0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4llvm9VPIRFlags15FastMathFlagsTyC1ERKNS_13FastMathFlagsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %7) #25
  %i.g = load i8, ptr %8, align 1, !tbaa !110
  %.sroa.4.1.insert.ext.i = zext i8 %i.g to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN4llvm17VPSingleDefRecipeC2ENS_12VPRecipeBase10VPRecipeTyENS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeEPNS_5ValueENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i8 noundef zeroext 11, ptr nonnull %i.a, i64 3, ptr noundef %i.f, ptr noundef null, i64 %6)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 7, ptr %i.h, align 8, !tbaa !138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  store i16 %.sroa.4.1.insert.ext.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21VPScalarIVStepsRecipeE, i64 16), ptr %i.b, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPScalarIVStepsRecipeE, i64 80), ptr %i.i, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPScalarIVStepsRecipeE, i64 136), ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i32 %1, ptr %i.k, align 4, !tbaa !2777
  %i.l = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPScalarIVStepsRecipeEEEPT_S4_.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.aq = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aq)
  %i.ar = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2919
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !849
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2911
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.as = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.at = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.au = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = lshr i64 %i.ay, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !153
  %i.bf = or i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !153
  %i.bg = load i32, ptr %i.al, align 8, !tbaa !847
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.al, align 8, !tbaa !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = load i64, ptr %1, align 4
  store i64 %i.bi, ptr %i.au, align 4
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ae, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2911, !noalias !2920 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !849, !noalias !2920 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !848, !noalias !2920 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !2889   ; 2 uses
  %i.i = mul i32 %i.h, 37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i8, ptr %i.j, align 4, !tbaa !291, !range !213, !noundef !214 ; 2 uses
  %i.l = zext nneg i8 %i.k to i32
  %.0.i = sub i32 %i.i, %i.l
  %.024 = and i32 %.0.i, %i.g                     ; 3 uses
  %i.m = zext i32 %.024 to i64                    ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !153
  %i.r = and i32 %.024, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !317

bb.c:                                             ; preds = %.lr.ph
  %i.u = add nuw i32 %.025, 1
  %.0 = and i32 %i.u, %i.g                        ; 3 uses
  %i.v = zext i32 %.0 to i64                      ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !153
  %i.aa = and i32 %.0, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !2918

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.w, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !2889
  %i.af = icmp eq i32 %i.h, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !range !213
  %i.ai = icmp eq i8 %i.k, %i.ah
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false     ; 3 uses
  br i1 %i.aj, label %.thread, label %bb.c, !prof !150

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.w, %bb.c ], [ %i.ad, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.aj, %bb.c ], [ %i.aj, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2919
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !848
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2911
  store ptr %i.y, ptr %i.q, align 8, !tbaa !849
  store i32 0, ptr %i.p, align 16, !tbaa !847
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2919
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #25
  br label %_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2911
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !849
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !848  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !849  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2911
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !848
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ap, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2889
  %i.w = mul i32 %i.v, 37
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !291, !range !213, !noundef !214
  %i.z = zext nneg i8 %i.y to i32
  %.0.i.i = sub i32 %i.w, %i.z
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.pn.i = phi i32 [ %.0.i.i, %bb.b ], [ %i.ah, %bb.c ]
  %.0.i7 = and i32 %.0.i.pn.i, %i.k               ; 3 uses
  %i.aa = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !153
  %i.ae = and i32 %.0.i7, 31                      ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  %i.ah = add i32 %.0.i7, 1
  br i1 %i.ag, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2925

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %i.ak = load i64, ptr %i.u, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = shl nuw i32 1, %i.ae
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !153
  %i.an = or i32 %i.am, %i.al
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !153
  %i.ao = add i32 %.0.i18, -1
  %i.ap = and i32 %i.ao, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ap, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2926

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2927

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !848
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !847
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.as, ptr %i.at, align 8, !tbaa !847
  %i.au = icmp eq i32 %i.aq, 0
  br i1 %i.au, label %_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.av = load ptr, ptr %1, align 8, !tbaa !2911
  %i.aw = zext i32 %i.aq to i64                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.aw, 31
  %i.az = lshr i64 %i.ay, 3
  %i.ba = and i64 %i.az, 1073741820
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.av, i64 noundef %i.bb, i64 noundef 4) #25
  store i32 0, ptr %i.d, align 4, !tbaa !848
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_12ElementCountENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !876, !noalias !2928 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !875, !noalias !2928 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !874, !noalias !2928 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !331    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !153
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !317

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !321, !llvm.loop !890

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2933
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !871
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2933
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !875
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !876
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !871
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !331
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !331
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !876, !noalias !2934 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !875, !noalias !2934 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !874, !noalias !2934 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !331    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !331
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !890

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2933
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1906", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !874
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !876
  store ptr %i.y, ptr %i.q, align 8, !tbaa !875
  store i32 0, ptr %i.p, align 16, !tbaa !871
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2933
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !876    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !875
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !874  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !875  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !876
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !874
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !331  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2939

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !331
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !153
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2940

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2941

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !874
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !871
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !871
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !874
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6VPUserENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_6VPUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #25
  %.pre = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !153
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !153
  store ptr %i.c, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i.k, align 4, !tbaa !15
  store i32 0, ptr %i.j, align 8, !tbaa !14
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !2942

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !331
  store ptr %i.t, ptr %i.s, align 8, !tbaa !331
  br label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit:   ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !14
  store i32 0, ptr %i.m, align 8, !tbaa !14
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #25
  br label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !1082

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !331
  store ptr %i.z, ptr %i.y, align 8, !tbaa !331
  br label %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !14
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4llvm6VPUserES3_ET0_T_S5_S4_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !12
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
end_hunk_2
begin_hunk_3_@_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE16attachNewSubtreeERS4_PNS_15DomTreeNodeBaseIS3_EE:bb.a
  %i.al = phi i64 [ %i.ar, %bb.d ], [ %i.ae, %bb.c ]
  %.017.i.i.i.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.ad, %bb.c ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29, !noalias !3017
  %i.ao = icmp eq ptr %i.s, %i.an
  br i1 %i.ao, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i, label %bb.d, !prof !150

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = add nuw i32 %.017.i.i.i.i.i, 1
  %i.aq = and i32 %i.ap, %i.x                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !153, !noalias !3017
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !321

.loopexit.i.i.i.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.ay = zext i32 %i.v to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.ay
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i = zext i32 %i.v to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i ], [ %i.ay, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.am, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i ], [ %i.az, %.loopexit.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.ba
  br i1 %.not.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !153 ; 2 uses
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !14
  %i.be = icmp ugt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !968
  %.not16 = icmp eq ptr %i.bi, null
  br i1 %.not16, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %bb.e

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !29
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2997
  %i.bm = call noundef ptr @_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE15getNodeForBlockEPS3_RS4_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(220) %1)
  %i.bn = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(220) %1, ptr noundef %i.s, ptr noundef %i.bm) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2978 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !938  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !938  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !2978
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !966
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !939
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #25
  store i32 0, ptr %i.r, align 4, !tbaa !938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !938
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #25 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !938 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !939
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !966
  store i32 0, ptr %i.a, align 8, !tbaa !2978
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.z) #25
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !12  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.ac) #25
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i5.i, -1
  %i.ag = and i32 %i.af, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3018

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !3019

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ah = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ai = and i32 %i.ah, 1
  %.not.i9 = icmp eq i32 %i.ai, 0
  br i1 %.not.i9, label %bb.e, label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 72
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #25
  store i32 0, ptr %i.c, align 8, !tbaa !110
  %.pre27 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre27, 1
  br label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit, %bb.e, %bb.f
  %.pre-phi = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit ], [ 0, %bb.e ], [ %.pre33, %bb.f ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.at = load i32, ptr %1, align 8
  %i.au = and i32 %i.at, 1
  %.not.i10 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = select i1 %.not.i10, i32 %i.aw, i32 4   ; 3 uses
  %i.ay = icmp ult i32 %i.ax, 5
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre30 = load i32, ptr %i.c, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit

bb.h:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.az = zext i32 %i.ax to i64                   ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 72               ; 2 uses
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  %i.bf = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.be, i64 noundef 8) #25 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !110
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !110
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !110
  %.pre28 = load i32, ptr %0, align 8
  %i.bj = and i32 %.pre28, 1
  br label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit: ; preds = %bb.h, %bb.g
  %i.bk = phi ptr [ %i.bh, %bb.h ], [ %.pre32, %bb.g ]
  %i.bl = phi i32 [ %i.aw, %bb.h ], [ %.pre30, %bb.g ]
  %i.bm = phi ptr [ %i.bf, %bb.h ], [ %.pre29, %bb.g ]
  %i.bn = phi i32 [ %i.bj, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.bo = load i32, ptr %1, align 8
  %i.bp = and i32 %i.bo, -2
  %i.bq = or disjoint i32 %i.bn, %i.bp
  store i32 %i.bq, ptr %0, align 8
  %.not.i.i.i11 = icmp eq i32 %i.bn, 0            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = select i1 %.not.i.i.i11, ptr %i.bm, ptr %i.br ; 3 uses
  %i.bt = load i32, ptr %1, align 8
  %i.bu = and i32 %i.bt, 1
  %.not.i12 = icmp eq i32 %i.bu, 0                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %.not.i12, ptr %i.bw, ptr %i.bv ; 3 uses
  %i.by = select i1 %.not.i.i.i11, i32 %i.bl, i32 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ca = select i1 %.not.i.i.i11, ptr %i.bk, ptr %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = select i1 %.not.i12, ptr %i.cd, ptr %i.cb
  %i.cf = zext i32 %i.by to i64
  %i.cg = add nuw nsw i64 %i.cf, 31
  %i.ch = lshr i64 %i.cg, 5                       ; 4 uses
  %i.ci = shl nuw nsw i64 %i.ch, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.ce, i64 %i.ci, i1 false)
  %.not.i19 = icmp eq i64 %i.ch, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit
  %i.cj = icmp eq ptr %i.bs, %i.bx
  %.fr = freeze i1 %i.cj
  br i1 %.fr, label %.lr.ph21.split.us, label %.lr.ph21.split

.lr.ph21.split.us:                                ; preds = %.lr.ph21, %._crit_edge.split.us.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %._crit_edge.split.us.us ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv24
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !153 ; 2 uses
  %.not11.i17.us = icmp eq i32 %i.cl, 0
  br i1 %.not11.i17.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, %.lr.ph21.split.us
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.next25, %i.ch
  br i1 %.not.i.us, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split.us, !llvm.loop !3020

.lr.ph.us:                                        ; preds = %.lr.ph21.split.us
  %indvars.iv24.tr = trunc nuw i64 %indvars.iv24 to i32
  %i.cm = shl nuw i32 %indvars.iv24.tr, 5
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us: ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, %.lr.ph.us
  %.0.i18.us.us = phi i32 [ %i.cl, %.lr.ph.us ], [ %i.dc, %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us ] ; 3 uses
  %i.cn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18.us.us, i1 true)
  %i.co = or disjoint i32 %i.cn, %i.cm
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.cp ; 9 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 0, ptr %i.cv, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 2, ptr %i.cw, align 4, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i32 0, ptr %i.cz, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  store i32 2, ptr %i.da, align 4, !tbaa !15
  %i.db = add i32 %.0.i18.us.us, -1
  %i.dc = and i32 %i.db, %.0.i18.us.us            ; 2 uses
  %.not11.i.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not11.i.us.us, label %._crit_edge.split.us.us, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, !llvm.loop !3021

.lr.ph21.split:                                   ; preds = %.lr.ph21, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !153 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.de, 0
  br i1 %.not11.i17, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21.split
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.df = shl nuw i32 %indvars.iv.tr, 5
  br label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.de, %.lr.ph ], [ %i.en, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.dg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.di ; 9 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.di ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 2, ptr %i.dq, align 4, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !14 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.split.preheader.i.i
  %i.dt = icmp ugt i32 %i.ds, 2
  br i1 %i.dt, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %bb.i
  %i.du = zext i32 %i.ds to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull %i.do, i64 noundef %i.du, i64 noundef 8) #25
  %.pre.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.dm, align 8, !tbaa !12
  br label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i, %bb.i
  %i.dv = phi ptr [ %.pre.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.do, %bb.i ]
  %i.dw = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ds, %bb.i ]
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !12
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 8 %i.dy, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  store i32 %i.ds, ptr %i.dp, align 8, !tbaa !14
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i: ; preds = %.sink.split.i.i.i.i, %.split.preheader.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  store i32 2, ptr %i.ed, align 4, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !14 ; 5 uses
  %.not.i.i.1.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.1.i.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i
  %i.eg = icmp ugt i32 %i.ef, 2
  br i1 %i.eg, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i: ; preds = %bb.j
  %i.eh = zext i32 %i.ef to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull %i.eb, i64 noundef %i.eh, i64 noundef 8) #25
  %.pre.i.1.i.i = load i32, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.1.i.i = icmp eq i32 %.pre.i.1.i.i, 0
  br i1 %.not.i.i.i.1.i.i, label %.sink.split.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i
  %.pre5.i.i = load ptr, ptr %i.dz, align 8, !tbaa !12
  br label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i, %bb.j
  %i.ei = phi ptr [ %.pre5.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.eb, %bb.j ]
  %i.ej = phi i32 [ %.pre.i.1.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.ef, %bb.j ]
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !12
  %gepdiff.i.i.1.i.i = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 8 %i.el, i64 %gepdiff.i.i.1.i.i, i1 false)
  br label %.sink.split.i.i.1.i.i

.sink.split.i.i.1.i.i:                            ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !14
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i, %.sink.split.i.i.1.i.i
  %i.em = add i32 %.0.i18, -1
  %i.en = and i32 %i.em, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.en, 0
  br i1 %.not11.i, label %._crit_edge.split, label %.split.preheader.i.i, !llvm.loop !3021

._crit_edge.split:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, %.lr.ph21.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split, !llvm.loop !3020

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #25
  %.pre = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !153
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !153
  store ptr %i.c, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i.k, align 4, !tbaa !15
  store i32 0, ptr %i.j, align 8, !tbaa !14
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !2942

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !29
  store ptr %i.t, ptr %i.s, align 8, !tbaa !29
  br label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !14
  store i32 0, ptr %i.m, align 8, !tbaa !14
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #25
  br label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !1082

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3048
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3046
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2977
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3049
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2977, !noalias !3050 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3046, !noalias !3050 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2976, !noalias !3050 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3047

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3048
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1932", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2976
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2977
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3046
  store i32 0, ptr %i.p, align 16, !tbaa !3049
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3048
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 40
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2977
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3046
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2976 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3046 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2977
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2976
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !3055

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !tbaa.struct !3056
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !153
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !153
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3057

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3058

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2976
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3049
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3049
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !2977
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 40
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE18growAndEmplaceBackIJRKjRjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !153
  %i.b = load i32, ptr %2, align 4, !tbaa !153
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !150

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.insert.insert)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11VPBlockBaseEjELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm9GraphDiffIPNS_11VPBlockBaseELb0EE11getChildrenILb0EEENS_11SmallVectorIS2_Lj8EEES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.1957", align 8 ; 5 uses
  %4 = alloca %"class.std::reverse_iterator.1957", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !noalias !3059
  %i.c = icmp ne i8 %i.b, 0
  %.not.not17.i.i.i = icmp eq ptr %2, null
  %.not.not.i.i.i = or i1 %.not.not17.i.i.i, %i.c
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN4llvm8childrenIPNS_11VPBlockBaseEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS6_7NodeRefE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.05.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14, !noalias !3059 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49, !noalias !3059 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8childrenIPNS_11VPBlockBaseEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS6_7NodeRefE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !458

_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = zext i32 %i.e to i64
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JmEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3251
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !966
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !939
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2978
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !707
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !939, !noalias !3252 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !966, !noalias !3252 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !938, !noalias !3252 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3250

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3251
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.359", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !938
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !939
  store ptr %i.y, ptr %i.q, align 8, !tbaa !966
  store i32 0, ptr %i.p, align 16, !tbaa !2978
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3251
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !939    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !966
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !938  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !966  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !939
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !938
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3257

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !153
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !153
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !153
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !153
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3258

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3259

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !938
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2978
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !2978
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE15getNodeForBlockEPS3_RS4_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(220) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !939, !noalias !3260 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !966, !noalias !3260 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !938, !noalias !3260 ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153, !noalias !3269
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !317

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29, !noalias !3269
  %i.z = icmp eq ptr %1, %i.y
  br i1 %i.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153, !noalias !3269
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !321

.loopexit.i.i.i.i:                                ; preds = %bb.c, %bb.b, %bb.a
  %i.aj = zext i32 %i.g to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aj
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i = zext i32 %i.g to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i ], [ %i.aj, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.x, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i ], [ %i.ak, %.loopexit.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.al
  br i1 %.not.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !153 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !14
  %i.aq = icmp ugt i32 %i.ap, %i.an
  br i1 %i.aq, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i
  %i.ar = zext i32 %i.an to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !968 ; 2 uses
  %.not.not = icmp eq ptr %i.av, null
  br i1 %.not.not, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %bb.d

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2997
  %i.ba = call noundef ptr @_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE15getNodeForBlockEPS3_RS4_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(220) %2)
  %i.bb = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(220) %2, ptr noundef %1, ptr noundef %i.ba)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread
  %.1 = phi ptr [ %i.bb, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread ], [ %i.av, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZNK4llvm12VPRecipeBase17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JRPNS_18VPExpandSCEVRecipeEEEESt4pairIPSB_bEOT_DpOT0_:bb.a

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3319
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3317
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1254
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3320
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1259
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1259
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !1255  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %spec.select = select i1 %i.bk, ptr null, ptr %i.bl
  store ptr %spec.select, ptr %i.bi, align 8, !tbaa !111
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1254, !noalias !3321 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3317, !noalias !3321 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1251, !noalias !3321 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1259   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1259
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3318

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3319
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2099", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1251
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1254
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3317
  store i32 0, ptr %i.p, align 16, !tbaa !3320
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3319
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1254   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3317
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1251 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3317 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1254
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1251
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1259 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !3326

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1259
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !111
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3327

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3328

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1251
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3320
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3320
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_7VPValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm7VPValue27isDefinedOutsideLoopRegionsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE4initES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.llvm::iterator_range.429", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i8, ptr %i.c, align 8, !tbaa !210, !range !213, !noalias !3329, !noundef !214
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !215, !noalias !3329 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !367, !noalias !3329 ; 4 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.l, %.critedge.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.023.i.i.i, align 8, !tbaa !381, !noalias !3329
  %.not15.i.i.i = icmp eq ptr %i.k, %1
  br i1 %.not15.i.i.i, label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread2, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load i32, ptr %i.m, align 8, !tbaa !366, !noalias !3329
  %i.o = icmp ult i32 %i.h, %i.n
  br i1 %i.o, label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread, label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit

_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread: ; preds = %._crit_edge.i.i.i
  %i.p = add nuw i32 %i.h, 1
  store i32 %i.p, ptr %i.g, align 4, !tbaa !367, !noalias !3329
  store ptr %1, ptr %i.j, align 8, !tbaa !381, !noalias !3329
  br label %bb.c

_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %i.q = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef %1) #25, !noalias !3329
  %i.r = extractvalue { ptr, i8 } %i.q, 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread2

bb.c:                                             ; preds = %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread, %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !14 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %.not.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !150

bb.d:                                             ; preds = %bb.c
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS5_NS_14iterator_rangeIPS5_EEEEERSD_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeIPS5_EEEEERSD_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.af = zext i32 %i.ab to i64
  %i.ag = load ptr, ptr %0, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af ; 3 uses
  store ptr %1, ptr %i.ah, align 8, !tbaa !1283
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.u, ptr %i.ai, align 8, !tbaa !1303
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !1304
  %i.ak = add nuw i32 %i.ab, 1
  store i32 %i.ak, ptr %i.aa, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeIPS5_EEEEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeIPS5_EEEEERSD_DpOT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread2

_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread2: ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeIPS5_EEEEERSD_DpOT_.exit, %_ZN4llvm18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.llvm::iterator_range.429", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = load i32, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1303
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3397
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1454
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3397
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1456
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3390
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !153
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !153
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1454
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !153
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E22findBucketForInsertionIjEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3390, !noalias !3398 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1456, !noalias !3398 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1455, !noalias !3398 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !153    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !153
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !317

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !153
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3396

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !153
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !150

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3397
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.14", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1455
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #25 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !3390
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1456
  store i32 0, ptr %i.p, align 16, !tbaa !1454
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.ac = load ptr, ptr %0, align 8, !tbaa !3397
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !381
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !153
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !153
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !153
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #25
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3390   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1456
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1455 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1456 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3390
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1455
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !153
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !3403

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !153
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !153
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !153
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3404

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3405

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1455
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1454
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !1454
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1455
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9map_rangeIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEZNS_12VPBlockUtils8blocksAsINS_12VPBasicBlockESC_EEDaOT0_EUlS5_E_EEDaOT_SH_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.496") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::mapped_iterator.497", align 8 ; 6 uses
  %3 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %4 = alloca %"class.llvm::mapped_iterator.497", align 8 ; 6 uses
  %5 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(224) %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1081, !noalias !3415 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1041, !noalias !3415 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !alias.scope !3415
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !1082

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !1083, !noalias !3415
  %.pre1.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1083, !noalias !3415
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre1.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %.pre.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.l, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !1041, !alias.scope !3415
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1081, !alias.scope !3415
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1044, !alias.scope !3415
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1084

_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1081, !alias.scope !3415
  call void @_ZN4llvm12map_iteratorINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils8blocksAsINS_12VPBasicBlockENS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_EENS_15mapped_iteratorIT_SG_NSt13invoke_resultISG_JDTdeclsr3stdE7declvalISK_EEEEE4typeEEESK_SG_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::mapped_iterator.497") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(112) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !3416)
  call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.u) #25
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1081, !noalias !3425 ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !1041, !noalias !3425 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !3425
  %.not.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i2, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.af, label %bb.e, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3, !prof !1082

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3: ; preds = %bb.d
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
  %.pre.i.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !1083, !noalias !3425
  %.pre1.i.i.i5 = load ptr, ptr %i.y, align 8, !tbaa !1083, !noalias !3425
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.ah = phi ptr [ %.pre1.i.i.i5, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ %i.z, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i.i.i4, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ %i.aa, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ null, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 5 uses
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !1041, !alias.scope !3425
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1081, !alias.scope !3425
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !1044, !alias.scope !3425
  %.not7.i.i.i.i.i.i.i.i.i7 = icmp eq ptr %i.ai, %i.ah
  br i1 %.not7.i.i.i.i.i.i.i.i.i7, label %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i.i.i.i8:                        ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6, %.lr.ph.i.i.i.i.i.i.i.i.i8
  %.09.i.i.i.i.i.i.i.i.i9 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i8 ], [ %i.aj, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i10 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i8 ], [ %i.ai, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i.i9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i.i10, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i10, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i9, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i11, label %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i8, !llvm.loop !1084

_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6
  %.0.lcssa.i.i.i.i.i.i.i.i.i12 = phi ptr [ %i.aj, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i8 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i12, ptr %i.ak, align 8, !tbaa !1081, !alias.scope !3425
  call void @_ZN4llvm12map_iteratorINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils8blocksAsINS_12VPBasicBlockENS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_EENS_15mapped_iteratorIT_SG_NSt13invoke_resultISG_JDTdeclsr3stdE7declvalISK_EEEEE4typeEEESK_SG_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::mapped_iterator.497") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(112) %5)
  call void @_ZN4llvm10make_rangeINS_15mapped_iteratorINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEZNS_12VPBlockUtils8blocksAsINS_12VPBasicBlockENS_14iterator_rangeISB_EEEEDaOT0_EUlS5_E_PSE_EEEENSF_IT_EESM_SM_(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.496") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(120) %2, ptr nofree noundef nonnull align 8 dereferenceable(120) %4)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1041 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EED2Ev.exit.i.i, label %bb.f
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3489

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3490
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2257", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !3497
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEC2EjNS_12DenseMapBaseIS9_S3_S3_S5_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #25
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !153 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1259 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !153 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !153 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3498

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !1259
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1259
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1259
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !153
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3499

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES4_Lj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !3500

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #25
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKNS_4SCEVES3_Lj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_4SCEVES7_Lj4ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9map_rangeIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockESD_EEDaOT0_EUlS5_E_EEDaOT_SH_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.2284") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::mapped_iterator.576", align 8 ; 6 uses
  %3 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %4 = alloca %"class.llvm::mapped_iterator.576", align 8 ; 6 uses
  %5 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(224) %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1081, !noalias !3510 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1041, !noalias !3510 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !alias.scope !3510
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !1082

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !1083, !noalias !3510
  %.pre1.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1083, !noalias !3510
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre1.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %.pre.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.l, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !1041, !alias.scope !3510
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1081, !alias.scope !3510
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1044, !alias.scope !3510
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1084

_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1081, !alias.scope !3510
  call void @_ZN4llvm12map_iteratorINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_EENS_15mapped_iteratorIT_SH_NSt13invoke_resultISH_JDTdeclsr3stdE7declvalISL_EEEEE4typeEEESL_SH_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::mapped_iterator.576") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(112) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.u) #25
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1081, !noalias !3520 ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !1041, !noalias !3520 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !3520
  %.not.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i2, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i.i.i.i6, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.af, label %bb.e, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3, !prof !1082

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3: ; preds = %bb.d
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
  %.pre.i.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !1083, !noalias !3520
  %.pre1.i.i.i5 = load ptr, ptr %i.y, align 8, !tbaa !1083, !noalias !3520
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3698
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1535
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1525
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1522
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !395
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !395
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1525, !noalias !3699 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1535, !noalias !3699 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1536, !noalias !3699 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !395    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !395
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3697

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3698
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.26", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1536
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1525
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1535
  store i32 0, ptr %i.p, align 16, !tbaa !1522
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3698
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1525   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1535
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1536 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1535 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1525
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1536
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !395  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3704

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !395
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !153
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !153
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !153
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !153
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3705

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3706

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1536
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1522
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1522
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7VPValueD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm7VPValueE, i64 16), ptr %0, align 8, !tbaa !113
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPNS_6VPUserELj1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #25
  br label %_ZN4llvm11SmallVectorIPNS_6VPUserELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6VPUserELj1EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13VPConstantIntD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm7VPValueE, i64 16), ptr %0, align 8, !tbaa !113
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm7VPValueD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #25, !inline_history !1065
  br label %_ZN4llvm7VPValueD2Ev.exit

_ZN4llvm7VPValueD2Ev.exit:                        ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9VPIRValueD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm7VPValueE, i64 16), ptr %0, align 8, !tbaa !113
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm7VPValueD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #25, !inline_history !1065
  br label %_ZN4llvm7VPValueD2Ev.exit

_ZN4llvm7VPValueD2Ev.exit:                        ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  ret void
}

declare { i64, i8 } @_ZNK4llvm19TargetTransformInfo19getRegisterBitWidthENS0_12RegisterKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm5VPlanD1Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorINS_12ElementCountENS_11SmallVectorIS1_Lj2EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj2EE6removeERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.2509, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !847
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  %i.j = tail call noundef ptr @_ZSt9__find_ifIPN4llvm12ElementCountEN9__gnu_cxx5__ops16_Iter_equals_valIKS1_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef %i.e, ptr noundef %i.i, ptr nonnull align 4 dereferenceable(5) %1) ; 4 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.l = load i32, ptr %i.f, align 8, !tbaa !14
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.n
  br i1 %.not.not, label %_ZN4llvm6detail12DenseSetImplINS_12ElementCountENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5eraseERKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e, !prof !150

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.o, i64 %i.r, i1 false)
  br label %_ZN4llvm15SmallVectorImplINS_12ElementCountEE5eraseEPKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.f, label %_ZN4llvm15SmallVectorImplINS_12ElementCountEE5eraseEPKS1_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.j, ptr noundef nonnull align 4 dereferenceable(5) %i.o, i64 5, i1 false)
  br label %_ZN4llvm15SmallVectorImplINS_12ElementCountEE5eraseEPKS1_.exit

_ZN4llvm15SmallVectorImplINS_12ElementCountEE5eraseEPKS1_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = load i32, ptr %i.f, align 8, !tbaa !14
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !14
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3817
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2780
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3817
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2781
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !442
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !153
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !153
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2780
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !153
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !153
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !442, !noalias !3818 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2781, !noalias !3818 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !439, !noalias !3818 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !153    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !153
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !317

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !153
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3816

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !153
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !150

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3817
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.138", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !439
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !442
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2781
  store i32 0, ptr %i.p, align 16, !tbaa !2780
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3817
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #25
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !442    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2781
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !439  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2781 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !439
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !153
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3823

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !153
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !153
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !153
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !153
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3824

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3825

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !439
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2780
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !2780
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #25
  store i32 0, ptr %i.d, align 4, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE4initES4_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.llvm::iterator_range.1295", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load i8, ptr %i.c, align 8, !tbaa !210, !range !213, !noalias !3826, !noundef !214
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !215, !noalias !3826 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !367, !noalias !3826 ; 4 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.l, %.critedge.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.023.i.i.i, align 8, !tbaa !381, !noalias !3826
  %.not15.i.i.i = icmp eq ptr %i.k, %1
  br i1 %.not15.i.i.i, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.n = load i32, ptr %i.m, align 8, !tbaa !366, !noalias !3826
  %i.o = icmp ult i32 %i.h, %i.n
  br i1 %i.o, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit

_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread: ; preds = %._crit_edge.i.i.i
  %i.p = add nuw i32 %i.h, 1
  store i32 %i.p, ptr %i.g, align 4, !tbaa !367, !noalias !3826
  store ptr %1, ptr %i.j, align 8, !tbaa !381, !noalias !3826
  br label %bb.c

_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %i.q = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef %1) #25, !noalias !3826
  %i.r = extractvalue { ptr, i8 } %i.q, 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6

bb.c:                                             ; preds = %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread, %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i8, ptr %i.t, align 8, !tbaa !33
  %i.v = icmp ne i8 %i.u, 0
  %.not.not17.i.i = icmp eq ptr %1, null
  %.not.not.i.i = or i1 %.not.not17.i.i, %i.v
  br i1 %.not.not.i.i, label %.lr.ph.i.i.i3, label %_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit

.lr.ph.i.i.i3:                                    ; preds = %bb.c, %bb.d
  %.05.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i3
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i4, label %_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit, label %.lr.ph.i.i.i3, !llvm.loop !458

_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ab = zext i32 %i.x to i64
  br label %_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit

_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit: ; preds = %bb.d, %bb.c, %_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i
  %.sroa.3.1.i.i = phi i64 [ 1, %bb.c ], [ %i.ab, %_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  store ptr %1, ptr %2, align 8, !alias.scope !3829
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !3829
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.ac, align 8, !alias.scope !3829
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.3.1.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !3829
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
  %.not.i = icmp ult i32 %i.ae, %i.ag
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !150

bb.e:                                             ; preds = %_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit

bb.f:                                             ; preds = %_ZN4llvm11GraphTraitsINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEEE9child_endES3_.exit
  %i.ai = zext i32 %i.ae to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  store ptr %1, ptr %i.ak, align 8, !tbaa !448
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.3.1.i.i, ptr %i.ao, align 8
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !14
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ad, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
  br label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6

_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6: ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit, %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit
  ret void
}

end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3838
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !475
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !467
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3839
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !111
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !467, !noalias !3840 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !475, !noalias !3840 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !476, !noalias !3840 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3837

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3838
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.273", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !476
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !467
  store ptr %i.y, ptr %i.q, align 8, !tbaa !475
  store i32 0, ptr %i.p, align 16, !tbaa !3839
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3838
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !467    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !475
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !476  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !475  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !467
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !476
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3845

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !111
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !111
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3846

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3847

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !476
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3839
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3839
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !476
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN4llvm7vputils13isElementwiseEPKNS_7VPValueE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt9__find_ifIPPN4llvm7VPValueEN9__gnu_cxx5__ops10_Iter_predIZNS0_17VPlanPatternMatch8match_fnINS7_12Recipe_matchISt5tupleIJNS0_19PatternMatchHelpers9match_isaIJS1_EEEEELj97ELb0EJNS0_13VPInstructionEEEEEEDaRKT_EUlPSH_E_EEESH_SH_SH_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge.thread.i.i.i.i.i55
  %.0112 = phi i64 [ %i.cp, %.critedge.thread.i.i.i.i.i55 ], [ %i.d, %bb.a ] ; 2 uses
  %.029111 = phi ptr [ %i.co, %.critedge.thread.i.i.i.i.i55 ], [ %0, %bb.a ] ; 13 uses
  %i.f = load ptr, ptr %.029111, align 8, !tbaa !111
  %i.g = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #25 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.critedge.thread.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !68
  %.not4.i.i.i.i = icmp eq i8 %i.i, 5
  br i1 %.not4.i.i.i.i, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i, label %.critedge.thread.i.i.i.i.i

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.k = load i8, ptr %i.j, align 8, !tbaa !91
  %i.l = icmp eq i8 %i.k, 97
  br i1 %i.l, label %bb.c, label %.critedge.thread.i.i.i.i.i

bb.c:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !14
  switch i32 %i.n, label %bb.d [
    i32 0, label %.critedge.thread.i.i.i.i.i
    i32 1, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJNS2_19PatternMatchHelpers9match_isaIJNS2_7VPValueEEEEEELj97ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSE_E_EclIPPS9_EEbSE_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #25 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.critedge.thread.i.i.i.i.i, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.q = add nuw i32 %i.o, 1                      ; 2 uses
  %i.r = load i32, ptr %i.m, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %.critedge.thread.i.i.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i
  %i.t = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #25 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw i32 %i.t, 1
  %i.w = load i32, ptr %i.m, align 8, !tbaa !14
  %i.x = icmp eq i32 %i.v, %i.w
  %i.y = sext i1 %i.x to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = add i32 %.0.i.i.i.i.i.i.i, %i.q
  %.not22.i.i.i.i.i = icmp eq i32 %i.z, 1
  br i1 %.not22.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJNS2_19PatternMatchHelpers9match_isaIJNS2_7VPValueEEEEEELj97ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSE_E_EclIPPS9_EEbSE_.exit, label %.critedge.thread.i.i.i.i.i

.critedge.thread.i.i.i.i.i:                       ; preds = %bb.d, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i.i.i.i, %.lr.ph, %bb.b, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.029111, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ac = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab) #25 ; 6 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i30, label %.critedge.thread.i.i.i.i.i35, label %bb.g

bb.g:                                             ; preds = %.critedge.thread.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !68
  %.not4.i.i.i.i31 = icmp eq i8 %i.ae, 5
  br i1 %.not4.i.i.i.i31, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i32, label %.critedge.thread.i.i.i.i.i35

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i32: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !91
  %i.ah = icmp eq i8 %i.ag, 97
  br i1 %i.ah, label %bb.h, label %.critedge.thread.i.i.i.i.i35

bb.h:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEEEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i.i.i.i.i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !14
  switch i32 %i.aj, label %bb.i [
    i32 0, label %.critedge.thread.i.i.i.i.i35
    i32 1, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJNS2_19PatternMatchHelpers9match_isaIJNS2_7VPValueEEEEEELj97ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSE_E_EclIPPS9_EEbSE_.exit.loopexit.split.loop.exit154
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #25 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %.critedge.thread.i.i.i.i.i35, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i34

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i34: ; preds = %bb.i
  %i.am = add nuw i32 %i.ak, 1                    ; 2 uses
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !14
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %.critedge.thread.i.i.i.i.i35

bb.j:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i.i.i.i34
  %i.ap = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #25 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE16updateDFSNumbersEv:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3851
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 0, ptr %i.l, align 8, !tbaa !979
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit, %bb.i
  %.021 = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit ], [ %.1, %bb.i ] ; 4 uses
  %i.m = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit ], [ %.pr, %bb.i ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !12
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3852
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  store i32 %.021, ptr %i.w, align 4, !tbaa !980
  %i.x = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.x, ptr %i.f, align 8, !tbaa !14
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3855
  store ptr %i.z, ptr %i.q, align 8, !tbaa !3856
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3851 ; 2 uses
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !15
  %.not.i6 = icmp ult i32 %i.m, %i.ac
  br i1 %.not.i6, label %bb.h, label %bb.g, !prof !150

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.s, ptr %i.ab)
  %.pr.pre.pre = load i32, ptr %i.f, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8

bb.h:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.p, align 8
  %.sroa.3.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx.i7, align 8
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !14
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8: ; preds = %bb.g, %bb.h
  %.pr.pre = phi i32 [ %.pr.pre.pre, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = add i32 %.021, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i32 %.021, ptr %i.ag, align 8, !tbaa !979
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8, %bb.e
  %.pr = phi i32 [ %i.x, %bb.e ], [ %.pr.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8 ] ; 2 uses
  %.1 = phi i32 [ %.021, %bb.e ], [ %i.af, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE9push_backES8_.exit8 ]
  %.not.i5 = icmp eq i32 %.pr, 0
  br i1 %.not.i5, label %bb.j, label %bb.d, !llvm.loop !3857

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.ah, align 4, !tbaa !896
  store i8 1, ptr %i.a, align 8, !tbaa !978
  %.pre = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.e
  br i1 %i.ai, label %_ZN4llvm11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELj32EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %.pre) #25
  br label %_ZN4llvm11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELj32EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELj32EED2Ev.exit: ; preds = %bb.c, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELj32EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseINS_11VPBlockBaseEEENS4_14const_iteratorEELb1EE15growAndPushBackES8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #10 align 2 {
_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.363", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !940
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !948
  store ptr %i.y, ptr %i.q, align 8, !tbaa !950
  store i32 0, ptr %i.p, align 16, !tbaa !956
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3858
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !381
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !153 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ae, ptr %i.ab, align 8, !tbaa !153
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.al, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEEC2EjNS_12DenseMapBaseIS8_S2_S2_S4_S7_E16ExactBucketCountE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 align 2 {
bb.a:
  %.val11 = load ptr, ptr %1, align 8, !tbaa !948
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !950
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !940 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !950 ; 2 uses
  %.val12 = load ptr, ptr %0, align 8, !tbaa !948
  %i.d = getelementptr i8, ptr %0, i64 20
  %.val7 = load i32, ptr %i.d, align 4, !tbaa !940
  %i.e = add i32 %.val7, -1
  %i.f = zext i32 %.val to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  %.not.i25 = icmp eq i64 %i.h, 0
  br i1 %.not.i25, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val8, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !153  ; 2 uses
  %.not11.i23 = icmp eq i32 %i.j, 0
  br i1 %.not11.i23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph28
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.k = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i24 = phi i32 [ %i.j, %.lr.ph ], [ %i.ai, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i24, i1 true)
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.n ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !766
  %i.q = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117VPCSEDenseMapInfo12getHashValueEPKN4llvm17VPSingleDefRecipeE(ptr noundef %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.q, %bb.b ], [ %i.y, %bb.c ]
  %.0.i13 = and i32 %.pn.i, %i.e                  ; 3 uses
  %i.r = zext i32 %.0.i13 to i64                  ; 2 uses
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !153  ; 2 uses
  %i.v = and i32 %.0.i13, 31                      ; 2 uses
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  %i.y = add i32 %.0.i13, 1
  br i1 %i.x, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3859

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.s
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val12, i64 %i.r ; 2 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !766
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !766
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !766
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !766
  %i.af = shl nuw i32 1, %i.v
  %i.ag = or i32 %i.af, %i.u
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !153
  %i.ah = add i32 %.0.i24, -1
  %i.ai = and i32 %i.ah, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3860

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES3_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph28, !llvm.loop !3861

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !940
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.aj = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i32, ptr %i.ak, align 8, !tbaa !956
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val10, ptr %i.al, align 8, !tbaa !956
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !948
  %i.ao = zext i32 %i.aj to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #25
  store i32 0, ptr %i.b, align 4, !tbaa !940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeES2_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeES6_N12_GLOBAL__N_117VPCSEDenseMapInfoENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68    ; 6 uses
  %i.c = icmp ne i8 %i.b, 24
  %.not3.i = icmp eq ptr %1, null                 ; 6 uses
  %.not.i = or i1 %.not3.i, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !147
  %i.f = icmp eq i32 %i.e, 59
  br i1 %i.f, label %bb.e, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i8 %i.b, 10
  %.not.i27 = or i1 %.not3.i, %i.g
  br i1 %.not.i27, label %bb.c, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = load i8, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp eq i8 %i.j, 89
  br i1 %i.k, label %bb.e, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ne i8 %i.b, 16
  %.not.i29 = or i1 %.not3.i, %i.l
  br i1 %.not.i29, label %bb.d, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !144
  %i.o = icmp eq i32 %i.n, 59
  br i1 %i.o, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ne i8 %i.b, 5
  %.not.i31 = or i1 %.not3.i, %i.p
  br i1 %.not.i31, label %.critedge, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load i8, ptr %i.q, align 8, !tbaa !91
  %i.s = icmp eq i8 %i.r, 59
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14   ; 3 uses
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq i32 %i.u, 3
  br i1 %.not45, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ne i8 %i.b, 5
  %.not = or i1 %.not3.i, %i.w
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.critedge.thread, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit

_ZNK4llvm13VPInstruction8isMaskedEv.exit:         ; preds = %bb.h
  %i.z = add nuw i32 %i.x, 1                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !14
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit
  %i.ac = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw i32 %i.ac, 1
  %i.af = load i32, ptr %i.t, align 8, !tbaa !14
  %i.ag = icmp eq i32 %i.ae, %i.af
  %i.ah = sext i1 %i.ag to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.ai = add i32 %.0.i.i, %i.z
  %.not25 = icmp eq i32 %i.ai, 3
  br i1 %.not25, label %.critedge, label %.critedge.thread

bb.k:                                             ; preds = %bb.g
  %i.aj = icmp ne i8 %i.b, 10
  %.not23 = or i1 %.not3.i, %i.aj
  br i1 %.not23, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !143, !range !213, !noundef !214
  %i.am = trunc nuw i8 %i.al to i1
  %.not24 = icmp eq i32 %i.u, 4
  %or.cond = and i1 %.not24, %i.am
  br i1 %or.cond, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, %bb.k, %bb.l, %bb.h
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.e, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit, %bb.d, %bb.f, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, %.critedge.thread, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit
  %.4 = phi i1 [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit ], [ true, %bb.f ], [ false, %.critedge.thread ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit ], [ true, %bb.l ], [ true, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit ], [ false, %bb.d ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers9match_isaIJNS_7VPValueEEEES6_S6_EELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit ], [ false, %bb.e ]
  ret i1 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.365", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !991
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !994
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1021
  store i32 0, ptr %i.p, align 16, !tbaa !1024
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3862
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !994    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1021
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !991  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1021 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !994
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !991
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3863

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1030
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1030
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3864

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3865

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !991
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1024
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1024
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !991
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE6appendINS_11df_iteratorINS_30VPBlockShallowTraversalWrapperIS2_EENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEvEEvT_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef align 8 dereferenceable(112) %1, ptr nofree noundef align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::df_iterator.391", align 8 ; 10 uses
  %4 = alloca %"class.llvm::df_iterator.391", align 8 ; 9 uses
  %5 = alloca %"class.llvm::df_iterator.391", align 8 ; 7 uses
  %6 = alloca %"class.llvm::df_iterator.391", align 8 ; 7 uses
  %7 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %8 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %9 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %10 = alloca %"class.llvm::df_iterator.391", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1081 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1041 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !1082

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1083
  %.pre121 = load ptr, ptr %i.d, align 8, !tbaa !1083
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre121, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %.pre, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.l, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !1041
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1081
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1044
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1084

_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !1081
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(112) %2) #25
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1081 ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !1041 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i2 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i2, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i4, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ugt i64 %i.ad, 384307168202282325
  br i1 %i.ae, label %bb.e, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3, !prof !1082

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3: ; preds = %bb.d
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #26
  %.pre122 = load ptr, ptr %i.w, align 8, !tbaa !1083
  %.pre123 = load ptr, ptr %i.x, align 8, !tbaa !1083
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i4

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i4: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3, %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit
  %i.ag = phi ptr [ %.pre123, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3 ], [ %i.y, %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit ] ; 2 uses
  %i.ah = phi ptr [ %.pre122, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3 ], [ %i.z, %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EEE8allocateEmPKv.exit.i.i.i.i.i3 ], [ null, %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit ] ; 7 uses
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !1041
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !1081
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1044
  %.not7.i.i.i.i.i.i5 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not7.i.i.i.i.i.i5, label %_ZN4llvm11df_iteratorINS_30VPBlockShallowTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS4_EEEC2ERKS9_.exit11, label %.lr.ph.i.i.i.i.i.i6

.lr.ph.i.i.i.i.i.i6:                              ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i4, %.lr.ph.i.i.i.i.i.i6
  %.09.i.i.i.i.i.i7 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i6 ], [ %i.ai, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalIPS3_EESaIS7_EEC2EmRKS8_.exit.i.i4 ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3919
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3480
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1543
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3920
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !395
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !395
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1259
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1543, !noalias !3921 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3480, !noalias !3921 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1540, !noalias !3921 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !395    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !395
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !3918

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3919
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.544", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1540
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1543
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3480
  store i32 0, ptr %i.p, align 16, !tbaa !3920
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3919
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1543   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3480
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1540 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3480 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1543
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1540
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !395  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !3926

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !395
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1259
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1259
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3927

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3928

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1540
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3920
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3920
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.599", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1609
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1600
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1608
  store i32 0, ptr %i.p, align 16, !tbaa !1611
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3929
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1600   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1608
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1609 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1608 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1600
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1609
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3930

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1617
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !1617
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3931

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3932

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1609
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1611
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1611
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1609
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPNS_19VPWidenMemoryRecipeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_13VPInstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseI13EarlyExitInfoLb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  store <3 x ptr> %.sroa.0.0.copyload, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1789, !noalias !3933 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1797, !noalias !3933 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1798, !noalias !3933 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !153
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !317

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !321, !llvm.loop !1799

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3938
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1800
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3938
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1797
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1789
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1800
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !29
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1789, !noalias !3939 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1797, !noalias !3939 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1798, !noalias !3939 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !1799

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3938
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.720", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1798
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1789
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1797
  store i32 0, ptr %i.p, align 16, !tbaa !1800
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3938
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1789   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1797
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1798 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1797 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1789
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1798
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3944

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !153
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !153
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !153
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !153
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3945

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3946

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1798
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1800
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1800
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !1798
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIP13EarlyExitInfolN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEEvT_SM_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.EarlyExitInfo, align 8      ; 4 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp sgt i64 %i.m, 384
  br i1 %i.n, label %.lr.ph, label %"_ZSt14__partial_sortIP13EarlyExitInfoN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph239

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIP13EarlyExitInfoN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEET_SM_SM_T0_.exit"
  %i.t = icmp eq i64 %i.af, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph239, !llvm.loop !3947

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa235 = phi i64 [ %i.m, %.lr.ph ], [ %i.pm, %bb.b ]
  %.072.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.u = udiv exact i64 %.lcssa235, 24            ; 2 uses
  %i.v = add nsw i64 %i.u, -2
  %i.w = lshr i64 %i.v, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.013.i.i.i = phi i64 [ %i.w, %._crit_edge ], [ %i.y, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.i.i.i
  call fastcc void @"_ZSt13__adjust_heapIP13EarlyExitInfolS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEEvT_T0_SN_T1_T2_"(ptr noundef %0, i64 noundef %.013.i.i.i, i64 noundef %i.u, ptr noundef nonnull byval(%struct.EarlyExitInfo) align 8 %i.x, ptr %3)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.y = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !3948

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.01.i.i = phi ptr [ %i.z, %.lr.ph.i5.i ], [ %.072.lcssa, %bb.c ]
  %i.z = getelementptr inbounds i8, ptr %.01.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1788
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 24
  call fastcc void @"_ZSt13__adjust_heapIP13EarlyExitInfolS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEEvT_T0_SN_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ac, ptr noundef nonnull byval(%struct.EarlyExitInfo) align 8 %4, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ad = icmp sgt i64 %i.ab, 24
  br i1 %i.ad, label %.lr.ph.i5.i, label %"_ZSt14__partial_sortIP13EarlyExitInfoN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm15VPlanTransforms27handleUncountableEarlyExitsERNS5_5VPlanEPNS5_12VPBasicBlockESA_SA_PNS5_4LoopERNS5_25PredicatedScalarEvolutionERNS5_13DominatorTreeEPNS5_15AssumptionCacheENS5_20UncountableExitStyleEE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !3949

.lr.ph239:                                        ; preds = %.lr.ph, %bb.b
  %.01571238 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %.072237 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ae = phi i64 [ %i.pm, %bb.b ], [ %i.m, %.lr.ph ]
  %i.af = add nsw i64 %.01571238, -1              ; 3 uses
  %i.ag = udiv i64 %i.ae, 48
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ag ; 7 uses
  %i.ai = getelementptr inbounds i8, ptr %.072237, i64 -24 ; 8 uses
  %.val25.i.i = load ptr, ptr %i.o, align 8, !tbaa !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store ptr %.val25.i.i, ptr %i.i, align 8, !tbaa !29
  %i.aj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !1784
  store ptr %i.am, ptr %i.j, align 8, !tbaa !29
  %i.an = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.fca.0.extract.i3.i.i.i.i = extractvalue { ptr, i8 } %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i3.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !153
  %i.aq = icmp ult i32 %i.al, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br i1 %i.aq, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph239
  %.val24.i.i = load ptr, ptr %i.ah, align 8, !tbaa !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr %.val24.i.i, ptr %i.g, align 8, !tbaa !29
  %i.ar = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %.fca.0.extract.i.i.i26.i.i = extractvalue { ptr, i8 } %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i26.i.i, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !1784
  store ptr %i.au, ptr %i.h, align 8, !tbaa !29
  %i.av = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.fca.0.extract.i3.i.i27.i.i = extractvalue { ptr, i8 } %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i3.i.i27.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !153
  %i.ay = icmp ult i32 %i.at, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br i1 %i.ay, label %bb.e, label %bb.f

end_hunk_13
begin_hunk_14_@_ZN4llvm15SmallVectorImplIPNS_7VPValueEE6insertIPKPNS_13VPRecipeValueEvEEPS2_S9_T_SA_:bb.a

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !53
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !111
  br label %_ZSt4copyIPKPN4llvm13VPRecipeValueEPPNS0_7VPValueEET0_T_S9_S8_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader136, %.lr.ph
  %.059 = phi ptr [ %i.dy, %.lr.ph ], [ %.059.ph, %.lr.ph.preheader136 ] ; 2 uses
  %.04058 = phi i64 [ %i.ea, %.lr.ph ], [ %.04058.ph, %.lr.ph.preheader136 ]
  %.04257 = phi ptr [ %i.dz, %.lr.ph ], [ %.04257.ph, %.lr.ph.preheader136 ] ; 2 uses
  %i.dx = load ptr, ptr %.04257, align 8, !tbaa !53
  store ptr %i.dx, ptr %.059, align 8, !tbaa !111
  %i.dy = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.04257, i64 8 ; 2 uses
  %i.ea = add i64 %.04058, -1                     ; 2 uses
  %.not45 = icmp eq i64 %i.ea, 0
  br i1 %.not45, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4031

_ZSt4copyIPKPN4llvm13VPRecipeValueEPPNS0_7VPValueEET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block, %middle.block114, %._crit_edge, %_ZSt13move_backwardIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE6appendIPKPNS_13VPRecipeValueEvEEvT_S9_.exit
  %.1 = phi ptr [ %i.ap, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE6appendIPKPNS_13VPRecipeValueEvEEvT_S9_.exit ], [ %i.az, %middle.block114 ], [ %i.az, %_ZSt13move_backwardIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit ], [ %i.az, %._crit_edge ], [ %i.az, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.az, %.lr.ph.i.i.i.i.i.2 ], [ %i.az, %.lr.ph.i.i.i.i.i.1 ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbRNS_6VPUserEjEE11callback_fnIZNS_15VPlanTransforms21materializeBroadcastsERNS_5VPlanEE3$_0EEblS2_j"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 %2) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !1924 ; 2 uses
  %i.c = icmp ne ptr %.val2, null
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %.not3.i = icmp eq ptr %i.d, %1
  %.not.i = select i1 %i.c, i1 %.not3.i, i1 false
  br i1 %.not.i, label %"_ZZN4llvm15VPlanTransforms21materializeBroadcastsERNS_5VPlanEENK3$_0clERNS_6VPUserEj.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %.val) #25, !inline_history !4032
  %i.i = xor i1 %i.h, true
  br label %"_ZZN4llvm15VPlanTransforms21materializeBroadcastsERNS_5VPlanEENK3$_0clERNS_6VPUserEj.exit"

"_ZZN4llvm15VPlanTransforms21materializeBroadcastsERNS_5VPlanEENK3$_0clERNS_6VPUserEj.exit": ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_SF_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISB_SF_Lj4ESH_SK_EESB_SF_SH_SK_E6valuesEvEUlRKSK_E_SF_EEEEEENSC_INSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsIS13_EE5valueEEEOSX_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.803") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::mapped_iterator.2953", align 8 ; 5 uses
  %3 = alloca %"class.llvm::mapped_iterator.2953", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !15
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.0.0.copyload, %.sroa.02.0.copyload
  br i1 %.not5.i.i.i, label %_ZN4llvm11SmallVectorINS0_IPNS_17VPReplicateRecipeELj4EEELj1EEC2INS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEES3_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S3_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISF_S3_Lj4ESH_SK_EESF_S3_SH_SK_E6valuesEvEUlRKSK_E_S3_EEvEET_SU_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.f = ptrtoint ptr %.sroa.5.0.copyload to i64  ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6                   ; 2 uses
  %i.i = add nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ai, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i ] ; 2 uses
  %storemerge16.i.i.i46.i.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.i ], [ %storemerge16.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i46.i.i.i, i64 64
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = ashr exact i64 %i.m, 6                   ; 3 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.n, 5                         ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !153
  %i.r = trunc i64 %i.n to i32
  %i.s = and i32 %i.r, 31
  %i.t = shl nsw i32 -1, %i.s
  %i.u = and i32 %i.q, %i.t                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.w = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.j
  br i1 %i.x, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i, label %.lr.ph

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph
  %i.y = add i64 %i.aa, 1                         ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.j
  br i1 %i.z, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i, label %.lr.ph, !llvm.loop !1959

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !153 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1959

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph, %bb.c
  %.012.lcssa.i.i.i.i.i.i = phi i64 [ %i.o, %bb.c ], [ %i.aa, %.lr.ph ]
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph ]
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i, i1 true)
  %i.af = zext nneg i32 %i.ae to i64
  %.idx.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i, 11
  %i.ag = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %.idx.i.i.i.i.i.i
  %i.ah = getelementptr [64 x i8], ptr %i.ag, i64 %i.af
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i, %bb.b
  %storemerge16.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload, %bb.b ], [ %i.ah, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ai = add nuw nsw i64 %.07.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq ptr %storemerge16.i.i.i.i.i.i, %.sroa.02.0.copyload
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i, label %bb.b, !llvm.loop !4033

_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SE_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EESK_St20forward_iterator_tagSE_lPSE_SE_EppEv.exit.i.i.i
  %.not.i = icmp eq i64 %.07.i.i.i, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorINS0_IPNS_17VPReplicateRecipeELj4EEELj1EEC2INS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEES3_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S3_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISF_S3_Lj4ESH_SK_EESF_S3_SH_SK_E6valuesEvEUlRKSK_E_S3_EEvEET_SU_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.ai)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !14
  %.pre27.i.i = zext i32 %.pre.i.i to i64
  %i.aj = trunc i64 %i.ai to i32
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZN4llvm11SmallVectorINS0_IPNS_17VPReplicateRecipeELj4EEELj1EEC2INS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEES3_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S3_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISF_S3_Lj4ESH_SK_EESF_S3_SH_SK_E6valuesEvEUlRKSK_E_S3_EEvEET_SU_.exit

_ZN4llvm11SmallVectorINS0_IPNS_17VPReplicateRecipeELj4EEELj1EEC2INS_15mapped_iteratorINS_16DenseMapIteratorISt4pairIPKNS_4SCEVEPKNS_4TypeEES3_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S3_EELb0EEEZNS_12DenseMapBaseINS_13SmallDenseMapISF_S3_Lj4ESH_SK_EESF_S3_SH_SK_E6valuesEvEUlRKSK_E_S3_EEvEET_SU_.exit: ; preds = %bb.a, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i, %bb.d
  %i.ak = phi ptr [ %i.b, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i ], [ %.pre.i, %bb.d ], [ %i.b, %bb.a ]
  %.0.lcssa.i.i2.i = phi i32 [ 1, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i ], [ %i.aj, %bb.d ], [ 0, %bb.a ]
  %.pre-phi.i.i = phi i64 [ 0, %_ZSt10__distanceIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEENSt15iterator_traitsIT_E15difference_typeESU_SU_St18input_iterator_tag.exit.i.i ], [ %.pre27.i.i, %bb.d ], [ 0, %bb.a ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %.pre-phi.i.i
  %i.am = tail call noundef ptr @_ZSt16__do_uninit_copyIN4llvm15mapped_iteratorINS0_16DenseMapIteratorISt4pairIPKNS0_4SCEVEPKNS0_4TypeEENS0_11SmallVectorIPNS0_17VPReplicateRecipeELj4EEENS0_12DenseMapInfoISA_vEENS0_6detail12DenseMapPairISA_SE_EELb0EEEZNS0_12DenseMapBaseINS0_13SmallDenseMapISA_SE_Lj4ESG_SJ_EESA_SE_SG_SJ_E6valuesEvEUlRKSJ_E_SE_EEPSE_ET0_T_SV_SU_(ptr noundef nonnull byval(%"class.llvm::mapped_iterator.2953") align 8 %3, ptr noundef nonnull byval(%"class.llvm::mapped_iterator.2953") align 8 %2, ptr noundef %i.al) ; 0 uses
  %i.an = load i32, ptr %i.c, align 8, !tbaa !14
  %i.ao = add i32 %i.an, %.0.lcssa.i.i2.i
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #25
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !4034

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !4035

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 6
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #25
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E10destroyAllEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.2947", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEC2EjNS_12DenseMapBaseISI_S8_SC_SE_SH_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 6                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #25 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEC2EjNS_12DenseMapBaseISI_S8_SC_SE_SH_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEC2EjNS_12DenseMapBaseISI_S8_SC_SE_SH_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEC2EjNS_12DenseMapBaseISI_S8_SC_SE_SH_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !4036
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEEC2EjNS_12DenseMapBaseISI_S8_SC_SE_SH_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 6                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #25 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE13maybeMoveFastEOSI_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i28 = icmp eq i64 %i.ab, 0
  br i1 %.not.i28, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !153 ; 2 uses
  %.not11.i26 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i27 = phi i32 [ %i.ad, %.lr.ph ], [ %i.ct, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i27, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.ah ; 10 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1966
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !4039
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = shl i64 %i.an, 32
  %i.av = and i64 %i.at, 4294967295
  %i.aw = or disjoint i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, -4658895280553007687     ; 2 uses
  %i.ay = lshr i64 %i.ax, 31
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.y, %i.ba                     ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !153
  %i.bg = and i32 %i.bb, 31                       ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bb, %bb.b ]
  %i.bj = add i32 %.014.i, 1
  %i.bk = and i32 %i.bj, %i.y                     ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 5                       ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !153
  %i.bp = and i32 %i.bk, 31                       ; 2 uses
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4040

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.bc, %bb.b ], [ %i.bl, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.bd, %bb.b ], [ %i.bm, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bg, %bb.b ], [ %i.bp, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.lcssa12.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 3 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  store i32 4, ptr %i.bw, align 4, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !14 ; 5 uses
  %.not.i.i.i11 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i11, label %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ca = icmp eq ptr %i.bs, %i.ai
  br i1 %i.ca, label %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_17VPReplicateRecipeEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_17VPReplicateRecipeEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.cb, ptr %i.bt, align 8, !tbaa !12
  store i32 %i.by, ptr %i.bv, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  store i32 %i.cf, ptr %i.bw, align 4, !tbaa !15
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !12
  store i32 0, ptr %i.ce, align 4, !tbaa !15
  br label %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.cg = zext i32 %i.by to i64                   ; 2 uses
  %i.ch = icmp ugt i32 %i.by, 4
  br i1 %i.ch, label %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull %i.bu, i64 noundef %i.cg, i64 noundef 8) #25
  %.pre = load i32, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %.pre38 = zext i32 %.pre to i64
  %.not.i.i.i16 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi3950 = phi i64 [ %.pre38, %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i ], [ %i.cg, %bb.e ]
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !12
  %gepdiff.i = shl nuw nsw i64 %.pre-phi3950, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 8 %i.ci, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm17VPReplicateRecipeES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.by, ptr %i.bv, align 8, !tbaa !14
  br label %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_17VPReplicateRecipeEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.bx, align 8, !tbaa !14
  br label %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.ck = shl nuw i32 1, %.lcssa.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !153
  %i.cn = or i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !153
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !12 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.cp) #25
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17VPReplicateRecipeELj4EEC2EOS3_.exit.i, %bb.f
  %i.cs = add i32 %.0.i27, -1
  %i.ct = and i32 %i.cs, %.0.i27                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ct, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4041

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph31, !llvm.loop !4042

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre35 = load i32, ptr %1, align 8
  %.pre36 = load i32, ptr %0, align 8
  %.pre37 = and i32 %.pre36, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre37, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.cu = phi i32 [ %.pre35, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.cv = and i32 %i.cu, -2
  %i.cw = or disjoint i32 %.pre-phi, %i.cv
  store i32 %i.cw, ptr %0, align 8
  %i.cx = load i32, ptr %1, align 8               ; 3 uses
  %i.cy = and i32 %i.cx, 1
  %.not.i.i12 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i12, label %bb.g, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE4killEv.exit

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.cz = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.dc = zext i32 %i.cz to i64                   ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 6
  %i.de = add nuw nsw i64 %i.dc, 31
  %i.df = lshr i64 %i.de, 3
  %i.dg = and i64 %i.df, 1073741820
  %i.dh = add nuw nsw i64 %i.dg, %i.dd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.db, i64 noundef %i.dh, i64 noundef 8) #25
  %.pre.i13 = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE4killEv.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SC_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.g, %bb.h
  %i.di = phi i32 [ %i.cx, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_4SCEVEPKNS_4TypeEENS_11SmallVectorIPNS_17VPReplicateRecipeELj4EEELj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SG_EEEESC_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit ], [ %i.cx, %bb.g ], [ %.pre.i13, %bb.h ]
  %i.dj = and i32 %i.di, -2
  store i32 %i.dj, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_17VPReplicateRecipeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4255
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4252
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !4244
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4256
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1259
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1259
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !395
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4244, !noalias !4257 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4252, !noalias !4257 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4253, !noalias !4257 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1259   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1259
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !4254

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4255
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.884", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !4253
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !4244
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4252
  store i32 0, ptr %i.p, align 16, !tbaa !4256
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4255
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !4244   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4252
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4253 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4252 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !4244
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4253
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1259 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !4262

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1259
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !395
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !395
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !153
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4263

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !4264

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !4253
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !4256
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !4256
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !4253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_4SCEVEPNS_5ValueENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_18VPInterleaveRecipeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt9__find_ifIPPN4llvm6VPUserEN9__gnu_cxx5__ops10_Iter_predIZNS0_17VPlanPatternMatch8match_fnINS7_12Recipe_matchISt5tupleIJEELj71ELb0EJNS0_13VPInstructionEEEEEEDaRKT_EUlPSE_E_EEESE_SE_SE_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread
  %.053 = phi i64 [ %i.am, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.02952 = phi ptr [ %i.al, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load ptr, ptr %.02952, align 8, !tbaa !331 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !68
  %.not.i.i.i = icmp eq i8 %i.j, 5
  br i1 %.not.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.l = load i8, ptr %i.k, align 8, !tbaa !91
  %i.m = icmp eq i8 %i.l, 71
  br i1 %i.m, label %.loopexit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread: ; preds = %bb.b, %.lr.ph, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.02952, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.r = load i8, ptr %i.q, align 8, !tbaa !68
  %.not.i.i.i30 = icmp eq i8 %i.r, 5
  br i1 %.not.i.i.i30, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.t = load i8, ptr %i.s, align 8, !tbaa !91
  %i.u = icmp eq i8 %i.t, 71
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31
  %i.v = getelementptr inbounds nuw i8, ptr %.02952, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !331  ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !68
  %.not.i.i.i32 = icmp eq i8 %i.z, 5
  br i1 %.not.i.i.i32, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !91
  %i.ac = icmp eq i8 %i.ab, 71
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit67, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit31.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33
  %i.ad = getelementptr inbounds nuw i8, ptr %.02952, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !331 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !68
  %.not.i.i.i34 = icmp eq i8 %i.ah, 5
  br i1 %.not.i.i.i34, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !91
  %i.ak = icmp eq i8 %i.aj, 71
  br i1 %i.ak, label %.loopexit.loopexit.split.loop.exit69, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35.thread: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit33.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm17VPlanPatternMatch8match_fnINS3_12Recipe_matchISt5tupleIJEELj71ELb0EJNS2_13VPInstructionEEEEEEDaRKT_EUlPSA_E_EclIPPNS2_6VPUserEEEbSA_.exit35
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2406
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4271
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2402
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2388
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2406
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !111
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2388, !noalias !4272 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2402, !noalias !4272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2403, !noalias !4272 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !2405

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4271
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.3038", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2403
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2388
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2402
  store i32 0, ptr %i.p, align 16, !tbaa !2406
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4271
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2388   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2402
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2403 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2402 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2388
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2403
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !4277

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !111
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !153
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4278

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !4279

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2403
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2406
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2406
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !2403
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68    ; 6 uses
  %i.c = icmp ne i8 %i.b, 24
  %.not3.i = icmp eq ptr %1, null                 ; 6 uses
  %.not.i = or i1 %.not3.i, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !147
  %i.f = icmp eq i32 %i.e, 59
  br i1 %i.f, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i8 %i.b, 10
  %.not.i27 = or i1 %.not3.i, %i.g
  br i1 %.not.i27, label %bb.c, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = load i8, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp eq i8 %i.j, 89
  br i1 %i.k, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ne i8 %i.b, 16
  %.not.i29 = or i1 %.not3.i, %i.l
  br i1 %.not.i29, label %bb.d, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISD_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISD_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !144
  %i.o = icmp eq i32 %i.n, 59
  br i1 %i.o, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ne i8 %i.b, 5
  %.not.i31 = or i1 %.not3.i, %i.p
  br i1 %.not.i31, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISE_EEbPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISE_EEbPKNS_12VPRecipeBaseE.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load i8, ptr %i.q, align 8, !tbaa !91
  %i.s = icmp eq i8 %i.r, 59
  br i1 %i.s, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.e:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISE_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISD_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14   ; 3 uses
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq i32 %i.u, 3
  br i1 %.not45, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ne i8 %i.b, 5
  %.not = or i1 %.not3.i, %i.w
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit

_ZNK4llvm13VPInstruction8isMaskedEv.exit:         ; preds = %bb.h
  %i.z = add nuw i32 %i.x, 1                      ; 2 uses
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !14
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.i:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit
  %i.ac = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %1) #25 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw i32 %i.ac, 1
  %i.af = load i32, ptr %i.t, align 8, !tbaa !14
  %i.ag = icmp eq i32 %i.ae, %i.af
  %i.ah = sext i1 %i.ag to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.ai = add i32 %.0.i.i, %i.z
  %.not25 = icmp eq i32 %i.ai, 3
  br i1 %.not25, label %.critedge, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

bb.k:                                             ; preds = %bb.g
  %i.aj = icmp ne i8 %i.b, 10
  %.not23 = or i1 %.not3.i, %i.aj
  br i1 %.not23, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !143, !range !213, !noundef !214
  %i.am = trunc nuw i8 %i.al to i1
  %.not24 = icmp eq i32 %i.u, 4
  %or.cond = and i1 %.not24, %i.am
  br i1 %or.cond, label %.critedge, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit

.critedge:                                        ; preds = %bb.l, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_14specificval_tyENS3_9match_isaIJS5_EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE21all_of_tuple_elementsIZNKSF_5matchEPKNS_12VPRecipeBaseEEUlT_jE_JLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT0_EEESK_.exit, label %bb.m
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !150

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !4287
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4285
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2523
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !153
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !4288
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !4288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2413
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2413
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2523, !noalias !4289 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4285, !noalias !4289 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2520, !noalias !4289 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2413   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !317

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2413
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !321, !llvm.loop !4286

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !4287
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1023", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2520
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2523
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4285
  store i32 0, ptr %i.p, align 16, !tbaa !4288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4287
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2523   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4285
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2520 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4285 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2523
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2520
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2413 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !4294

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2413
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !153
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !153
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !153
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !153
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4295

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !4296

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2520
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4288
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !4288
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !2520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_20VPReductionPHIRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESE_IJOS7_EEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 96, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !2450
  %i.i = inttoptr i64 %i.h to ptr
  %.val = load i64, ptr %2, align 8, !tbaa !2455
  %i.j = inttoptr i64 %.val to ptr                ; 7 uses
  %.val6.val = load ptr, ptr %i.i, align 8, !tbaa !2413
  store ptr %.val6.val, ptr %i.g, align 8, !tbaa !2460
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 1, ptr %i.n, align 4, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14   ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  %i.q = icmp eq ptr %i.k, %i.j
  %or.cond.i.i.i = or i1 %i.q, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEE12assignRemoteEOS3_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEE12assignRemoteEOS3_.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.r, ptr %i.k, align 8, !tbaa !12
  store i32 %i.p, ptr %i.m, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  store i32 %i.v, ptr %i.n, align 4, !tbaa !15
  store ptr %i.s, ptr %i.j, align 8, !tbaa !12
  store i32 0, ptr %i.u, align 4, !tbaa !15
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ugt i32 %i.p, 1
  br i1 %i.w, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i: ; preds = %bb.c
  %i.x = zext i32 %i.p to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull %i.l, i64 noundef %i.x, i64 noundef 72) #25
  %.val41.i.pre.i.i.i = load i32, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.val41.i.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i
  %.val34.i.i.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !12
  %.val.i.i.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.y = zext i32 %.val41.i.pre.i.i.i to i64
  %i.z = mul nuw nsw i64 %i.y, 72
  br label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i, %bb.c
  %.val.i.i.i.i = phi ptr [ %.val.i.i.pre.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i ], [ %i.l, %bb.c ]
  %.val34.i.i.i.i = phi ptr [ %.val34.i.i.pre.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i ], [ %i.r, %bb.c ]
  %.val41.i11.i.i.i = phi i64 [ %i.z, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i ], [ 72, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val34.i.i.i.i, i64 %.val41.i11.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i
  store i32 %i.p, ptr %i.m, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEE12assignRemoteEOS3_.exit.i.i.i.i
  store i32 0, ptr %i.o, align 8, !tbaa !14
  br label %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit

_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit: ; preds = %bb.a, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !12 ; 3 uses
  %.val6.i = load i32, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.aa = zext i32 %.val6.i to i64
  %.idx.i = mul nuw nsw i64 %i.aa, 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit, %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.av, %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit ] ; 7 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %.val2.i, %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit ] ; 7 uses
  %i.ac = load ptr, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !2460
  store ptr %i.ac, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !2460
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 20 ; 2 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !14 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = icmp eq ptr %.09.i.i.i.i.i.i, %.sroa.06.08.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ak, %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.d

end_hunk_17
begin_hunk_18_@_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESE_IJOS7_EEEEERS8_DpOT_:bb.a

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEE12assignRemoteEOS3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !12
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !15
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !12
  store i32 0, ptr %i.ao, align 4, !tbaa !15
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp ugt i32 %i.aj, 1
  br i1 %i.aq, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i.i.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ar = zext i32 %i.aj to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull %i.af, i64 noundef %i.ar, i64 noundef 72) #25
  %.val41.i.pre.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val41.i.pre.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i.i.i.i.i.i.i
  %.val34.i.i.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !12
  %.val.i.i.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.as = zext i32 %.val41.i.pre.i.i.i.i.i.i.i.i.i to i64
  %i.at = mul nuw nsw i64 %i.as, 72
  br label %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i.i.i.i.i.i.i

_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %.val.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.pre.i.i.i.i.i.i.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.af, %bb.e ]
  %.val34.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val34.i.i.pre.i.i.i.i.i.i.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ %i.al, %bb.e ]
  %.val41.i11.i.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge.i.i.i.i.i.i.i.i ], [ 72, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val34.i.i.i.i.i.i.i.i.i.i, i64 %.val41.i11.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.thread.i.i.i.i.i.i.i.i.i, %_ZSt4moveIPN12_GLOBAL__N_123VPPartialReductionChainES2_ET0_T_S4_S3_.exit46.i.i.i.i.i.i.i.i.i.i
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_123VPPartialReductionChainELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEE12assignRemoteEOS3_.exit.i.i.i.i.i.i.i.i.i.i
  store i32 0, ptr %i.ai, align 8, !tbaa !14
  br label %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_123VPPartialReductionChainEEaSEOS3_.exit.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.au, %i.ab
  br i1 %.not.i.i.i.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4297

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i: ; preds = %_ZSt10_ConstructISt4pairIPN4llvm20VPReductionPHIRecipeENS1_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.val.pre.i = load ptr, ptr %0, align 8, !tbaa !12 ; 3 uses
  %.val4.pre.i = load i32, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i = icmp eq i32 %.val4.pre.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.aw = zext i32 %.val4.pre.i to i64
  %.idx7.i = mul nuw nsw i64 %i.aw, 96
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 %.idx7.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ay, %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i ], [ %i.ax, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i, i64 -96 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.ba) #25
  br label %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i

_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.val.pre.i, %i.ay
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2519

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit: ; preds = %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.bd = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit ], [ %.val2.i, %_ZNSt4pairIPN4llvm20VPReductionPHIRecipeENS0_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEEC2IJRKS2_EJOS6_EEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit ], [ %.val.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i ] ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !707
  %i.bf = icmp eq ptr %i.bd, %i.b
  br i1 %i.bf, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit
  call void @free(ptr noundef %i.bd) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_20VPReductionPHIRecipeENS_11SmallVectorIN12_GLOBAL__N_123VPPartialReductionChainELj1EEEELb0EE19moveElementsForGrowEPS8_.exit, %bb.g
  store ptr %i.c, ptr %0, align 8, !tbaa !12
  %i.bg = trunc i64 %i.be to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !15
  %i.bi = load i32, ptr %i.d, align 8, !tbaa !14
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1052", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2483
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2474
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2482
  store i32 0, ptr %i.p, align 16, !tbaa !2485
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !381
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4298
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !381
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !381
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !381
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !153 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !153
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !153
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !153
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !153
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2474   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2482
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2483 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2482 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2474
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2483
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !153  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !766  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !153
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !153
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !4299

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !766
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !153
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !153
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !153
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !153
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4300

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !4301

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2483
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2485
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !2485
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !2483
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops12_Iter_negateIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_1EclIPPNS2_7VPValueEEEbT_"(ptr %.0.val, ptr nonnull %.0.val1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.val1) #25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueE.exit", label %_ZN4llvm3isaIJNS_17VPWidenCastRecipeEEPNS_7VPValueEEEbRKT0_.exit.i

_ZN4llvm3isaIJNS_17VPWidenCastRecipeEEPNS_7VPValueEEEbRKT0_.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i8, ptr %i.b, align 8, !tbaa !68
  %i.d = icmp eq i8 %i.c, 16
  br i1 %i.d, label %bb.b, label %"_ZZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueE.exit"

bb.b:                                             ; preds = %_ZN4llvm3isaIJNS_17VPWidenCastRecipeEEPNS_7VPValueEEEbRKT0_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = lshr i64 %i.i, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit63.thread98.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %.0150.i.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.cj, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit63.thread98.i.i.i.i.i.i" ] ; 2 uses
  %.029149.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ci, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit63.thread98.i.i.i.i.i.i" ] ; 11 uses
  %.029.val39.i.i.i.i.i.i = load ptr, ptr %.029149.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  %i.o = icmp eq ptr %.029.val39.i.i.i.i.i.i, null
  %i.p = getelementptr inbounds i8, ptr %.029.val39.i.i.i.i.i.i, i64 -32
  %i.q = select i1 %i.o, ptr null, ptr %i.p       ; 2 uses
  %i.r = load i8, ptr %i.m, align 8, !tbaa !210, !range !213, !noundef !214
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %.0.val, align 8, !tbaa !215 ; 3 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !367  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not17.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d, %bb.e
  %.01218.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %.01218.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !381
  %.not15.i.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not15.i.i.i.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.e

.thread.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.029149.i.i.i.i.i.i, i64 8 ; 2 uses
  %.val37178.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !331 ; 2 uses
  %i.aa = icmp eq ptr %.val37178.i.i.i.i.i.i, null
  %i.ab = getelementptr inbounds i8, ptr %.val37178.i.i.i.i.i.i, i64 -32
  %i.ac = select i1 %i.aa, ptr null, ptr %i.ab
  br label %.lr.ph.i.i.i.i43.i.preheader.i.i.i.i.i

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i": ; preds = %bb.c
  %i.ad = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %.0.val, ptr noundef %i.q) #25
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.thread89.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.thread89.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load i8, ptr %i.m, align 8, !tbaa !210, !range !213
  %i.af = trunc nuw i8 %.pre.i.i.i.i.i.i to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %.029149.i.i.i.i.i.i, i64 8 ; 4 uses
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !331 ; 2 uses
  %i.ah = icmp eq ptr %.val37.i.i.i.i.i.i, null
  %i.ai = getelementptr inbounds i8, ptr %.val37.i.i.i.i.i.i, i64 -32
  %i.aj = select i1 %i.ah, ptr null, ptr %i.ai    ; 2 uses
  br i1 %i.af, label %bb.f, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit47.i.i.i.i.i.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEENK3$_1clEPNS2_7VPValueEEUlPNS2_6VPUserEE_EclIPSE_EEbT_.exit.thread89.i.i.i.i.i.i"
  %.pre.i.i.i.i.i = load ptr, ptr %.0.val, align 8, !tbaa !215 ; 2 uses
  %.pre33.i.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !367 ; 2 uses
  %.pre38.i.i.i.i.i = zext i32 %.pre33.i.i.i.i.i to i64
  %.pre39.i.i.i.i.i = shl nuw nsw i64 %.pre38.i.i.i.i.i, 3 ; 2 uses
  %i.ak = icmp eq i32 %.pre33.i.i.i.i.i, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %.pre39.i.i.i.i.i
  br i1 %i.ak, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %.lr.ph.i.i.i.i43.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i43.i.preheader.i.i.i.i.i:           ; preds = %bb.f, %.thread.i.i.i.i.i
  %i.am = phi ptr [ %i.w, %.thread.i.i.i.i.i ], [ %i.al, %bb.f ]
  %i.an = phi ptr [ %i.z, %.thread.i.i.i.i.i ], [ %i.ag, %bb.f ]
  %i.ao = phi ptr [ %i.ac, %.thread.i.i.i.i.i ], [ %i.aj, %bb.f ]
  %i.ap = phi ptr [ %i.t, %.thread.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ] ; 3 uses
  %.idx.i.i.i.i41.i.pre-phi58.i.i.i.i.i = phi i64 [ %.idx.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.pre39.i.i.i.i.i, %bb.f ] ; 2 uses
  br label %.lr.ph.i.i.i.i43.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i43.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i44.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.am
  br i1 %.not.i.i.i.i46.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEENK3$_1clEPNS_7VPValueEEUlS3_E_EEbOT_T0_.exit.i", label %.lr.ph.i.i.i.i43.i.i.i.i.i.i

.lr.ph.i.i.i.i43.i.i.i.i.i.i:                     ; preds = %bb.g, %.lr.ph.i.i.i.i43.i.preheader.i.i.i.i.i
  %.01218.i.i.i.i44.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i43.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %.01218.i.i.i.i44.i.i.i.i.i.i, align 8, !tbaa !381
end_hunk_18
