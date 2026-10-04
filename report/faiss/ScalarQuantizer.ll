Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 166
begin_hunk_0_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4

_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIfSaIfEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit7

_ZNSt6vectorIfSaIfEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.aj, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #24, !inline_history !205
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24, !inline_history !205
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !287  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !830
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !831
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !203 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !204 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load i8, ptr %i.l, align 8, !tbaa !294   ; 3 uses
  %.not = icmp eq i8 %i.m, 0                      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.b, 7                          ; 2 uses
  %i.o = lshr i64 %i.n, 3                         ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !295  ; 2 uses
  %i.r = zext i8 %i.m to i64                      ; 2 uses
  %.not45.i = icmp ult i64 %i.n, 64               ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.b, %..loopexit_crit_edge.us.i
  %i.s = phi i64 [ %i.ae, %..loopexit_crit_edge.us.i ], [ 8, %bb.b ] ; 3 uses
  %.047.us.i = phi i64 [ %i.ad, %..loopexit_crit_edge.us.i ], [ 0, %bb.b ]
  %.03546.us.i = phi i64 [ %i.s, %..loopexit_crit_edge.us.i ], [ 0, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.03546.us.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.q, i64 %.03546.us.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.ad, %bb.c ]
  %i.v = mul i64 %indvars.iv.i, %i.o
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.v
  %i.w = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.x = and i64 %i.w, %i.u
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add i64 %.144.us.i, %i.ac               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.c, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.c
  %i.ae = add nuw nsw i64 %i.s, 8                 ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.ae, %i.o
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.b
  %.035.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.s, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ad, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not124 = icmp samesign ult i64 %.035.lcssa.i, %i.o
  br i1 %.not124, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.ap, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.aq, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.13654.us.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.q, i64 %.13654.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.d ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.ap, %bb.d ]
  %i.ah = mul i64 %indvars.iv72.i, %i.o
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.ah
  %i.ai = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.aj = and i8 %i.ai, %i.ag
  %i.ak = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.aj)
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.an = shl i32 %i.al, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %.353.us.i, %i.ao               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.r
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.aq = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.aq, %i.o
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.ap, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i53, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.o, i64 15)
  %i.as = add nsw i64 %i.ar, -8                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader260, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi193 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.ax = shl i64 %index, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !92
  %wide.load194 = load <2 x i64>, ptr %i.az, align 8, !tbaa !92
  %i.ba = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load194)
  %i.bc = add <2 x i64> %i.ba, %vec.phi           ; 2 uses
  %i.bd = add <2 x i64> %i.bb, %vec.phi193        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !822

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.preheader.i53, label %.lr.ph.i.preheader260

.lr.ph.i.preheader260:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph261 = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i

.preheader.i53:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.av, %middle.block ], [ %i.bv, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i54 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.bf, %middle.block ], [ %i.bz, %.lr.ph.i ] ; 3 uses
  %i.bg = icmp samesign ult i64 %.016.lcssa.i, %i.o
  br i1 %i.bg, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i53
  %i.bh = sub nuw i64 %i.o, %.016.lcssa.i         ; 3 uses
  %min.iters.check197 = icmp samesign ult i64 %i.bh, 4
  br i1 %min.iters.check197, label %.lr.ph26.i.preheader256, label %vector.ph198

vector.ph198:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec199 = and i64 %i.bh, 2305843009213693948  ; 3 uses
  %i.bi = add i64 %.016.lcssa.i, %n.vec199
  %i.bj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i54, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.016.lcssa.i
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %vec.phi202 = phi <2 x i64> [ %i.bj, %vector.ph198 ], [ %i.br, %vector.body200 ]
  %vec.phi203 = phi <2 x i64> [ zeroinitializer, %vector.ph198 ], [ %i.bs, %vector.body200 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index201 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %wide.load204 = load <2 x i8>, ptr %i.bl, align 1, !tbaa !80
  %wide.load205 = load <2 x i8>, ptr %i.bm, align 1, !tbaa !80
  %i.bn = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load204)
  %i.bo = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load205)
  %i.bp = zext nneg <2 x i8> %i.bn to <2 x i64>
  %i.bq = zext nneg <2 x i8> %i.bo to <2 x i64>
  %i.br = add <2 x i64> %vec.phi202, %i.bp        ; 2 uses
  %i.bs = add <2 x i64> %vec.phi203, %i.bq        ; 2 uses
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.bt, label %middle.block207, label %vector.body200, !llvm.loop !823

middle.block207:                                  ; preds = %vector.body200
  %bin.rdx208 = add <2 x i64> %i.bs, %i.br
  %i.bu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx208) ; 2 uses
  %cmp.n209 = icmp eq i64 %i.bh, %n.vec199
  br i1 %cmp.n209, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader256

.lr.ph26.i.preheader256:                          ; preds = %.lr.ph26.i.preheader, %middle.block207
  %.125.i.ph = phi i64 [ %.0.lcssa.i54, %.lr.ph26.i.preheader ], [ %i.bu, %middle.block207 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.bi, %middle.block207 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader260, %.lr.ph.i
  %i.bv = phi i64 [ %i.ca, %.lr.ph.i ], [ %.ph261, %.lr.ph.i.preheader260 ] ; 3 uses
  %.022.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader260 ]
  %.01621.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader260 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.01621.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !92
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bx)
  %i.bz = add i64 %i.by, %.022.i                  ; 2 uses
  %i.ca = add nuw nsw i64 %i.bv, 8                ; 2 uses
  %.not.i52 = icmp samesign ugt i64 %i.ca, %i.o
  br i1 %.not.i52, label %.preheader.i53, label %.lr.ph.i, !llvm.loop !824

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader256, %.lr.ph26.i
  %.125.i = phi i64 [ %i.cf, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader256 ]
  %.11724.i = phi i64 [ %i.cg, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader256 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.11724.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !80
  %i.cd = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cc)
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = add i64 %.125.i, %i.ce                  ; 2 uses
  %i.cg = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.cg, %i.o
  br i1 %exitcond.not.i55, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !825

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block207, %.preheader.i53
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i54, %.preheader.i53 ], [ %i.bu, %middle.block207 ], [ %i.cf, %.lr.ph26.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !296
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !297
  %i.cl = uitofp i64 %.2.lcssa.i to float
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.ci)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.co = load float, ptr %i.cn, align 8, !tbaa !298
  %i.cp = uitofp i64 %.1.lcssa.i to float
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cp, float %i.cm)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = add i64 %i.b, 7
  %i.cu = lshr i64 %i.ct, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.cu, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.e, %._crit_edge.i
  %.01625.i = phi i64 [ %i.db, %._crit_edge.i ], [ 0, %bb.e ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i56, %._crit_edge.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.cv = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.cw = add nuw i64 %i.cv, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.cw)
  %i.cx = icmp ugt i64 %i.b, %i.cv
  br i1 %i.cx, label %.lr.ph.i58, label %._crit_edge.i

.lr.ph.i58:                                       ; preds = %.lr.ph27.i
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %.01625.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !80
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph27.i
  %.1.lcssa.i56 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.db = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.db, %i.cu
  br i1 %exitcond.not.i57, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.f:                                             ; preds = %bb.h, %.lr.ph.i58
  %.023.i = phi i64 [ %i.cv, %.lr.ph.i58 ], [ %i.dj, %bb.h ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i58 ], [ %.2.i, %bb.h ] ; 2 uses
  %i.dc = sub nuw i64 %.023.i, %i.cv
  %i.dd = trunc i64 %i.dc to i32
  %i.de = shl nuw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.da
  %.not.i59 = icmp eq i32 %i.df, 0
  br i1 %.not.i59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.023.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !89
  %i.di = fadd float %.122.i, %i.dh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi float [ %i.di, %bb.g ], [ %.122.i, %bb.f ] ; 2 uses
  %i.dj = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.speculated.i
  br i1 %i.dk, label %bb.f, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.e
  %.017.lcssa.i = phi float [ 0.000000e+00, %bb.e ], [ %.1.lcssa.i56, %._crit_edge.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !291
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.do = load float, ptr %i.dn, align 4, !tbaa !293
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !292
  %i.dr = fmul float %.017.lcssa.i, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.do, float %i.dr)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.049 = phi float [ %i.cq, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ %i.ds, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !219 ; 2 uses
  %.not50 = icmp eq ptr %i.du, null
  br i1 %.not50, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !832
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !832
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !290
  %i.ea = fmul float %i.k, %i.dz
  %i.eb = fmul float %i.i, %i.ea
  %i.ec = fmul float %i.i, %.049
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !288
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.ee)
  %i.eg = fadd float %i.ec, %i.eb
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float -2.000000e+00, float %i.ef)
  %i.ei = load float, ptr %i.du, align 4, !tbaa !89
  %i.ej = fcmp ult float %i.eh, %i.ei
  br i1 %i.ej, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !833
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !833
  br label %bb.t

.thread:                                          ; preds = %bb.j, %bb.i
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !299, !range !300, !noundef !301
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.eq = add i64 %i.b, 7                         ; 2 uses
  %i.er = lshr i64 %i.eq, 3                       ; 10 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !295 ; 2 uses
  %i.eu = zext i8 %i.m to i64                     ; 2 uses
  %.not45.i60 = icmp ult i64 %i.eq, 64            ; 2 uses
  br i1 %.not45.i60, label %.preheader.i74, label %.lr.ph.us.i63

.lr.ph.us.i63:                                    ; preds = %bb.m, %..loopexit_crit_edge.us.i72
  %i.ev = phi i64 [ %i.fh, %..loopexit_crit_edge.us.i72 ], [ 8, %bb.m ] ; 3 uses
  %.047.us.i64 = phi i64 [ %i.fg, %..loopexit_crit_edge.us.i72 ], [ 0, %bb.m ]
  %.03546.us.i65 = phi i64 [ %i.ev, %..loopexit_crit_edge.us.i72 ], [ 0, %bb.m ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 %.03546.us.i65
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !92
  %invariant.gep.us.i66 = getelementptr i8, ptr %i.et, i64 %.03546.us.i65
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.i63
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.us.i63 ], [ %indvars.iv.next.i70, %bb.n ] ; 3 uses
  %.144.us.i68 = phi i64 [ %.047.us.i64, %.lr.ph.us.i63 ], [ %i.fg, %bb.n ]
  %i.ey = mul i64 %indvars.iv.i67, %i.er
  %gep.us.i69 = getelementptr i8, ptr %invariant.gep.us.i66, i64 %i.ey
  %i.ez = load i64, ptr %gep.us.i69, align 8, !tbaa !92
  %i.fa = and i64 %i.ez, %i.ex
  %i.fb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fa)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = trunc nuw nsw i64 %indvars.iv.i67 to i32
  %i.fe = shl i32 %i.fc, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = add i64 %.144.us.i68, %i.ff             ; 3 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %i.eu
  br i1 %exitcond.not.i71, label %..loopexit_crit_edge.us.i72, label %bb.n, !llvm.loop !29

..loopexit_crit_edge.us.i72:                      ; preds = %bb.n
  %i.fh = add nuw nsw i64 %i.ev, 8                ; 2 uses
  %.not.us.i73 = icmp samesign ugt i64 %i.fh, %i.er
  br i1 %.not.us.i73, label %.preheader.i74, label %.lr.ph.us.i63, !llvm.loop !30

.preheader.i74:                                   ; preds = %..loopexit_crit_edge.us.i72, %bb.m
  %.035.lcssa.i75 = phi i64 [ 0, %bb.m ], [ %i.ev, %..loopexit_crit_edge.us.i72 ] ; 2 uses
  %.0.lcssa.i76 = phi i64 [ 0, %bb.m ], [ %i.fg, %..loopexit_crit_edge.us.i72 ] ; 2 uses
  %.not125 = icmp samesign ult i64 %.035.lcssa.i75, %i.er
  br i1 %.not125, label %.lr.ph.us61.i79, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93

.lr.ph.us61.i79:                                  ; preds = %.preheader.i74, %._crit_edge.us.i88
  %.255.us.i80 = phi i64 [ %i.fs, %._crit_edge.us.i88 ], [ %.0.lcssa.i76, %.preheader.i74 ]
  %.13654.us.i81 = phi i64 [ %i.ft, %._crit_edge.us.i88 ], [ %.035.lcssa.i75, %.preheader.i74 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.13654.us.i81
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !80
  %invariant.gep.us59.i82 = getelementptr i8, ptr %i.et, i64 %.13654.us.i81
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.us61.i79
  %indvars.iv72.i83 = phi i64 [ 0, %.lr.ph.us61.i79 ], [ %indvars.iv.next73.i86, %bb.o ] ; 3 uses
  %.353.us.i84 = phi i64 [ %.255.us.i80, %.lr.ph.us61.i79 ], [ %i.fs, %bb.o ]
  %i.fk = mul i64 %indvars.iv72.i83, %i.er
  %gep.us60.i85 = getelementptr i8, ptr %invariant.gep.us59.i82, i64 %i.fk
  %i.fl = load i8, ptr %gep.us60.i85, align 1, !tbaa !80
  %i.fm = and i8 %i.fl, %i.fj
  %i.fn = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fm)
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = trunc nuw nsw i64 %indvars.iv72.i83 to i32
  %i.fq = shl i32 %i.fo, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = add i64 %.353.us.i84, %i.fr             ; 3 uses
  %indvars.iv.next73.i86 = add nuw nsw i64 %indvars.iv72.i83, 1 ; 2 uses
  %exitcond75.not.i87 = icmp eq i64 %indvars.iv.next73.i86, %i.eu
  br i1 %exitcond75.not.i87, label %._crit_edge.us.i88, label %bb.o, !llvm.loop !31

._crit_edge.us.i88:                               ; preds = %bb.o
  %i.ft = add nuw i64 %.13654.us.i81, 1           ; 2 uses
  %exitcond76.not.i89 = icmp eq i64 %i.ft, %i.er
  br i1 %exitcond76.not.i89, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93, label %.lr.ph.us61.i79, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93: ; preds = %._crit_edge.us.i88, %.preheader.i74
  %.2.lcssa.i90 = phi i64 [ %.0.lcssa.i76, %.preheader.i74 ], [ %i.fs, %._crit_edge.us.i88 ]
  br i1 %.not45.i60, label %.preheader.i99, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93
  %i.fu = tail call i64 @llvm.umax.i64(i64 %i.er, i64 15)
  %i.fv = add nsw i64 %i.fu, -8                   ; 2 uses
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %i.fv, 24
  br i1 %min.iters.check213, label %.lr.ph.i95.preheader248, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.i95.preheader
  %n.vec215 = and i64 %i.fx, 4611686018427387900  ; 3 uses
  %i.fy = shl i64 %n.vec215, 3                    ; 3 uses
  %i.fz = or disjoint i64 %i.fy, 8
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next222, %vector.body216 ] ; 2 uses
  %vec.phi218 = phi <2 x i64> [ zeroinitializer, %vector.ph214 ], [ %i.gf, %vector.body216 ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph214 ], [ %i.gg, %vector.body216 ]
  %i.ga = shl i64 %index217, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load220 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !92
  %wide.load221 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !92
  %i.gd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load220)
  %i.ge = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load221)
  %i.gf = add <2 x i64> %i.gd, %vec.phi218        ; 2 uses
  %i.gg = add <2 x i64> %i.ge, %vec.phi219        ; 2 uses
  %index.next222 = add nuw i64 %index217, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next222, %n.vec215
  br i1 %i.gh, label %middle.block223, label %vector.body216, !llvm.loop !826

middle.block223:                                  ; preds = %vector.body216
  %bin.rdx224 = add <2 x i64> %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx224) ; 2 uses
  %cmp.n225 = icmp eq i64 %i.fx, %n.vec215
  br i1 %cmp.n225, label %.preheader.i99, label %.lr.ph.i95.preheader248

.lr.ph.i95.preheader248:                          ; preds = %.lr.ph.i95.preheader, %middle.block223
  %.ph = phi i64 [ 8, %.lr.ph.i95.preheader ], [ %i.fz, %middle.block223 ]
  %.022.i96.ph = phi i64 [ 0, %.lr.ph.i95.preheader ], [ %i.gi, %middle.block223 ]
  %.01621.i97.ph = phi i64 [ 0, %.lr.ph.i95.preheader ], [ %i.fy, %middle.block223 ]
  br label %.lr.ph.i95

.preheader.i99:                                   ; preds = %.lr.ph.i95, %middle.block223, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93
  %.016.lcssa.i100 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93 ], [ %i.fy, %middle.block223 ], [ %i.gy, %.lr.ph.i95 ] ; 5 uses
  %.0.lcssa.i101 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit93 ], [ %i.gi, %middle.block223 ], [ %i.hc, %.lr.ph.i95 ] ; 3 uses
  %i.gj = icmp samesign ult i64 %.016.lcssa.i100, %i.er
  br i1 %i.gj, label %.lr.ph26.i104.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108

.lr.ph26.i104.preheader:                          ; preds = %.preheader.i99
  %i.gk = sub nuw i64 %i.er, %.016.lcssa.i100     ; 3 uses
  %min.iters.check230 = icmp samesign ult i64 %i.gk, 4
  br i1 %min.iters.check230, label %.lr.ph26.i104.preheader245, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph26.i104.preheader
  %n.vec232 = and i64 %i.gk, 2305843009213693948  ; 3 uses
  %i.gl = add i64 %.016.lcssa.i100, %n.vec232
  %i.gm = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i101, i64 0
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.016.lcssa.i100
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %vec.phi235 = phi <2 x i64> [ %i.gm, %vector.ph231 ], [ %i.gu, %vector.body233 ]
  %vec.phi236 = phi <2 x i64> [ zeroinitializer, %vector.ph231 ], [ %i.gv, %vector.body233 ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %index234 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %wide.load237 = load <2 x i8>, ptr %i.go, align 1, !tbaa !80
  %wide.load238 = load <2 x i8>, ptr %i.gp, align 1, !tbaa !80
  %i.gq = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load237)
  %i.gr = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load238)
  %i.gs = zext nneg <2 x i8> %i.gq to <2 x i64>
  %i.gt = zext nneg <2 x i8> %i.gr to <2 x i64>
  %i.gu = add <2 x i64> %vec.phi235, %i.gs        ; 2 uses
  %i.gv = add <2 x i64> %vec.phi236, %i.gt        ; 2 uses
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.gw, label %middle.block240, label %vector.body233, !llvm.loop !827

middle.block240:                                  ; preds = %vector.body233
  %bin.rdx241 = add <2 x i64> %i.gv, %i.gu
  %i.gx = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx241) ; 2 uses
  %cmp.n242 = icmp eq i64 %i.gk, %n.vec232
  br i1 %cmp.n242, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108, label %.lr.ph26.i104.preheader245

.lr.ph26.i104.preheader245:                       ; preds = %.lr.ph26.i104.preheader, %middle.block240
  %.125.i105.ph = phi i64 [ %.0.lcssa.i101, %.lr.ph26.i104.preheader ], [ %i.gx, %middle.block240 ]
  %.11724.i106.ph = phi i64 [ %.016.lcssa.i100, %.lr.ph26.i104.preheader ], [ %i.gl, %middle.block240 ]
  br label %.lr.ph26.i104

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.preheader248, %.lr.ph.i95
  %i.gy = phi i64 [ %i.hd, %.lr.ph.i95 ], [ %.ph, %.lr.ph.i95.preheader248 ] ; 3 uses
  %.022.i96 = phi i64 [ %i.hc, %.lr.ph.i95 ], [ %.022.i96.ph, %.lr.ph.i95.preheader248 ]
  %.01621.i97 = phi i64 [ %i.gy, %.lr.ph.i95 ], [ %.01621.i97.ph, %.lr.ph.i95.preheader248 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01621.i97
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !92
  %i.hb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ha)
  %i.hc = add i64 %i.hb, %.022.i96                ; 2 uses
  %i.hd = add nuw nsw i64 %i.gy, 8                ; 2 uses
  %.not.i98 = icmp samesign ugt i64 %i.hd, %i.er
  br i1 %.not.i98, label %.preheader.i99, label %.lr.ph.i95, !llvm.loop !828

.lr.ph26.i104:                                    ; preds = %.lr.ph26.i104.preheader245, %.lr.ph26.i104
  %.125.i105 = phi i64 [ %i.hi, %.lr.ph26.i104 ], [ %.125.i105.ph, %.lr.ph26.i104.preheader245 ]
  %.11724.i106 = phi i64 [ %i.hj, %.lr.ph26.i104 ], [ %.11724.i106.ph, %.lr.ph26.i104.preheader245 ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 %.11724.i106
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !80
  %i.hg = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hf)
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = add i64 %.125.i105, %i.hh               ; 2 uses
  %i.hj = add nuw i64 %.11724.i106, 1             ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %i.hj, %i.er
  br i1 %exitcond.not.i107, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108, label %.lr.ph26.i104, !llvm.loop !829

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108: ; preds = %.lr.ph26.i104, %middle.block240, %.preheader.i99
  %.1.lcssa.i103 = phi i64 [ %.0.lcssa.i101, %.preheader.i99 ], [ %i.gx, %middle.block240 ], [ %i.hi, %.lr.ph26.i104 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !302
  %i.hm = uitofp i64 %.1.lcssa.i103 to float
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !303
  %i.hp = uitofp i64 %.2.lcssa.i90 to float
  %i.hq = fmul float %i.ho, %i.hp
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hm, float %i.hq)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123

bb.p:                                             ; preds = %bb.l, %.thread
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !87
  %i.hu = add i64 %i.b, 7
  %i.hv = lshr i64 %i.hu, 3                       ; 2 uses
  %.not30.i109 = icmp eq i64 %i.hv, 0
  br i1 %.not30.i109, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123, label %.lr.ph27.i110

.lr.ph27.i110:                                    ; preds = %bb.p, %._crit_edge.i114
  %.01625.i111 = phi i64 [ %i.ic, %._crit_edge.i114 ], [ 0, %bb.p ] ; 3 uses
  %.01724.i112 = phi float [ %.1.lcssa.i115, %._crit_edge.i114 ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.hw = shl nuw i64 %.01625.i111, 3             ; 4 uses
  %i.hx = add nuw i64 %i.hw, 8
  %.sroa.speculated.i113 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.hx)
  %i.hy = icmp ugt i64 %i.b, %i.hw
  br i1 %i.hy, label %.lr.ph.i118, label %._crit_edge.i114

.lr.ph.i118:                                      ; preds = %.lr.ph27.i110
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01625.i111
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !80
  %i.ib = zext i8 %i.ia to i32
  br label %bb.q

._crit_edge.i114:                                 ; preds = %bb.s, %.lr.ph27.i110
  %.1.lcssa.i115 = phi float [ %.01724.i112, %.lr.ph27.i110 ], [ %.2.i122, %bb.s ] ; 2 uses
  %i.ic = add nuw nsw i64 %.01625.i111, 1         ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %i.ic, %i.hv
  br i1 %exitcond.not.i116, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123, label %.lr.ph27.i110, !llvm.loop !33

bb.q:                                             ; preds = %bb.s, %.lr.ph.i118
  %.023.i119 = phi i64 [ %i.hw, %.lr.ph.i118 ], [ %i.ik, %bb.s ] ; 3 uses
  %.122.i120 = phi float [ %.01724.i112, %.lr.ph.i118 ], [ %.2.i122, %bb.s ] ; 2 uses
  %i.id = sub nuw i64 %.023.i119, %i.hw
  %i.ie = trunc i64 %i.id to i32
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = and i32 %i.if, %i.ib
  %.not.i121 = icmp eq i32 %i.ig, 0
  br i1 %.not.i121, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.023.i119
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !89
  %i.ij = fadd float %.122.i120, %i.ii
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i122 = phi float [ %i.ij, %bb.r ], [ %.122.i120, %bb.q ] ; 2 uses
  %i.ik = add nuw i64 %.023.i119, 1               ; 2 uses
  %i.il = icmp ult i64 %i.ik, %.sroa.speculated.i113
  br i1 %i.il, label %bb.q, label %._crit_edge.i114, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123: ; preds = %._crit_edge.i114, %bb.p, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108
  %.017.lcssa.i117.sink = phi float [ %i.hr, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit108 ], [ 0.000000e+00, %bb.p ], [ %.1.lcssa.i115, %._crit_edge.i114 ]
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.in = load float, ptr %i.im, align 4, !tbaa !221
  %i.io = fmul float %i.k, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !289
  %i.ir = fneg float %i.iq
  %i.is = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i117.sink, float 2.000000e+00, float %i.ir)
  %i.it = fmul float %i.io, %i.is
  %i.iu = fadd float %.049, %i.it
  %i.iv = fmul float %i.i, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !288
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.ix)
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iv, float -2.000000e+00, float %i.iy)
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123
  %.1 = phi float [ %i.iz, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit123 ], [ +inf, %bb.k ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !294
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = load ptr, ptr %0, align 8, !tbaa !87     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 4
  br i1 %i.m, label %bb.d, label %bb.e, !prof !305

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load float, ptr %1, align 4, !tbaa !89
  store float %i.o, ptr %i.l, align 4, !tbaa !89
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !87     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIPKfEEPfmT_S6_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !86
  store ptr %i.v, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86   ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 4
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !305

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !86
  br label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 4
end_hunk_0
begin_hunk_1_@_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !295
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit89, label %.lr.ph27.i76

.lr.ph27.i76:                                     ; preds = %._crit_edge, %._crit_edge.i80
  %.01625.i77 = phi i64 [ %i.br, %._crit_edge.i80 ], [ 0, %._crit_edge ] ; 3 uses
  %.01724.i78 = phi float [ %.1.lcssa.i81, %._crit_edge.i80 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.bl = shl nuw i64 %.01625.i77, 3              ; 4 uses
  %i.bm = add nuw i64 %i.bl, 8
  %.sroa.speculated.i79 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bm)
  %i.bn = icmp ugt i64 %i.b, %i.bl
  br i1 %i.bn, label %.lr.ph.i84, label %._crit_edge.i80

.lr.ph.i84:                                       ; preds = %.lr.ph27.i76
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.01625.i77
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !80
  %i.bq = zext i8 %i.bp to i32
  br label %bb.h

._crit_edge.i80:                                  ; preds = %bb.j, %.lr.ph27.i76
  %.1.lcssa.i81 = phi float [ %.01724.i78, %.lr.ph27.i76 ], [ %.2.i88, %bb.j ] ; 2 uses
  %i.br = add nuw nsw i64 %.01625.i77, 1          ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.br, %i.q
  br i1 %exitcond.not.i82, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit89, label %.lr.ph27.i76, !llvm.loop !33

bb.h:                                             ; preds = %bb.j, %.lr.ph.i84
  %.023.i85 = phi i64 [ %i.bl, %.lr.ph.i84 ], [ %i.bz, %bb.j ] ; 3 uses
  %.122.i86 = phi float [ %.01724.i78, %.lr.ph.i84 ], [ %.2.i88, %bb.j ] ; 2 uses
  %i.bs = sub nuw i64 %.023.i85, %i.bl
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = and i32 %i.bu, %i.bq
  %.not.i87 = icmp eq i32 %i.bv, 0
  br i1 %.not.i87, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.023.i85
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !89
  %i.by = fadd float %.122.i86, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.i88 = phi float [ %i.by, %bb.i ], [ %.122.i86, %bb.h ] ; 2 uses
  %i.bz = add nuw i64 %.023.i85, 1                ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %.sroa.speculated.i79
  br i1 %i.ca, label %bb.h, label %._crit_edge.i80, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit89: ; preds = %._crit_edge.i80, %._crit_edge
  %.017.lcssa.i83 = phi float [ 0.000000e+00, %._crit_edge ], [ %.1.lcssa.i81, %._crit_edge.i80 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !311
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !312
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %.017.lcssa.i115, float %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !313
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %.017.lcssa.i68, float %i.cf)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !314
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %.017.lcssa.i83, float %i.ci) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !223 ; 2 uses
  %.not = icmp eq ptr %i.cn, null
  br i1 %.not, label %.thread, label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %.057122 = phi i64 [ 0, %.lr.ph.new ], [ %i.dd, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.057122
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !80
  %i.cq = getelementptr i8, ptr %i.ay, i64 %.057122
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = and i8 %i.cr, %i.cp
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !295
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.057122
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !80
  %i.cv = or disjoint i64 %.057122, 1             ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = getelementptr i8, ptr %i.ay, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !80
  %i.da = and i8 %i.cz, %i.cx
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !295
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !80
  %i.dd = add nuw i64 %.057122, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !847

bb.l:                                             ; preds = %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit89
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !855
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.di = load float, ptr %i.dh, align 4, !tbaa !310
  %i.dj = fmul float %i.k, %i.di
  %i.dk = fmul float %i.i, %i.dj
  %i.dl = fmul float %i.i, %i.cl
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !308
  %i.do = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.dn)
  %i.dp = fadd float %i.dl, %i.dk
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float -2.000000e+00, float %i.do)
  %i.dr = load float, ptr %i.cn, align 4, !tbaa !89
  %i.ds = fcmp ult float %i.dq, %i.dr
  br i1 %i.ds, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !856
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !856
  br label %bb.v

.thread:                                          ; preds = %bb.l, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit89
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !852
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !315 ; 2 uses
  %.not59 = icmp eq i8 %i.dz, 0
  br i1 %.not59, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !316, !range !300, !noundef !301
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !295 ; 2 uses
  %i.ef = zext i8 %i.dz to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.p, 64               ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.o, %..loopexit_crit_edge.us.i
  %i.eg = phi i64 [ %i.es, %..loopexit_crit_edge.us.i ], [ 8, %bb.o ] ; 3 uses
  %.047.us.i = phi i64 [ %i.er, %..loopexit_crit_edge.us.i ], [ 0, %bb.o ]
  %.03546.us.i = phi i64 [ %i.eg, %..loopexit_crit_edge.us.i ], [ 0, %bb.o ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.03546.us.i
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.ee, i64 %.03546.us.i
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.er, %bb.p ]
  %i.ej = mul i64 %indvars.iv.i, %i.q
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.ej
  %i.ek = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.el = and i64 %i.ek, %i.ei
  %i.em = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.el)
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ep = shl i32 %i.en, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = add i64 %.144.us.i, %i.eq               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %indvars.iv.next.i, %i.ef
  br i1 %exitcond.not.i90, label %..loopexit_crit_edge.us.i, label %bb.p, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.p
  %i.es = add nuw nsw i64 %i.eg, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.es, %i.q
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.o
  %.035.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.eg, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.er, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not116 = icmp samesign ult i64 %.035.lcssa.i, %i.q
  br i1 %.not116, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.fd, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.fe, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.13654.us.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.ee, i64 %.13654.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.q ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.fd, %bb.q ]
  %i.ev = mul i64 %indvars.iv72.i, %i.q
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.ev
  %i.ew = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.ex = and i8 %i.ew, %i.eu
  %i.ey = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ex)
  %i.ez = zext nneg i8 %i.ey to i32
  %i.fa = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.fb = shl i32 %i.ez, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = add i64 %.353.us.i, %i.fc               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.ef
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.q, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.q
  %i.fe = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.fe, %i.q
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.fd, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i94, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.ff = tail call i64 @llvm.umax.i64(i64 %i.q, i64 15)
  %i.fg = add nsw i64 %i.ff, -8                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 24
  br i1 %min.iters.check, label %.lr.ph.i92.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i92.preheader
  %n.vec = and i64 %i.fi, 4611686018427387900     ; 3 uses
  %i.fj = shl i64 %n.vec, 3                       ; 3 uses
  %i.fk = or disjoint i64 %i.fj, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %vec.phi161 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %i.fl = shl i64 %index, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <2 x i64>, ptr %i.fm, align 8, !tbaa !92
  %wide.load162 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !92
  %i.fo = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.fp = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load162)
  %i.fq = add <2 x i64> %i.fo, %vec.phi           ; 2 uses
  %i.fr = add <2 x i64> %i.fp, %vec.phi161        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fr, %i.fq
  %i.ft = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %.preheader.i94, label %.lr.ph.i92.preheader183

.lr.ph.i92.preheader183:                          ; preds = %.lr.ph.i92.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i92.preheader ], [ %i.fk, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i92.preheader ], [ %i.ft, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i92.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph.i92

.preheader.i94:                                   ; preds = %.lr.ph.i92, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.fj, %middle.block ], [ %i.gj, %.lr.ph.i92 ] ; 5 uses
  %.0.lcssa.i95 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.ft, %middle.block ], [ %i.gn, %.lr.ph.i92 ] ; 3 uses
  %i.fu = icmp samesign ult i64 %.016.lcssa.i, %i.q
  br i1 %i.fu, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i94
  %i.fv = sub nuw i64 %i.q, %.016.lcssa.i         ; 3 uses
  %min.iters.check165 = icmp samesign ult i64 %i.fv, 4
  br i1 %min.iters.check165, label %.lr.ph26.i.preheader180, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec167 = and i64 %i.fv, 2305843009213693948  ; 3 uses
  %i.fw = add i64 %.016.lcssa.i, %n.vec167
  %i.fx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i95, i64 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.016.lcssa.i
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %vec.phi170 = phi <2 x i64> [ %i.fx, %vector.ph166 ], [ %i.gf, %vector.body168 ]
  %vec.phi171 = phi <2 x i64> [ zeroinitializer, %vector.ph166 ], [ %i.gg, %vector.body168 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index169 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %wide.load172 = load <2 x i8>, ptr %i.fz, align 1, !tbaa !80
  %wide.load173 = load <2 x i8>, ptr %i.ga, align 1, !tbaa !80
  %i.gb = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load172)
  %i.gc = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load173)
  %i.gd = zext nneg <2 x i8> %i.gb to <2 x i64>
  %i.ge = zext nneg <2 x i8> %i.gc to <2 x i64>
  %i.gf = add <2 x i64> %vec.phi170, %i.gd        ; 2 uses
  %i.gg = add <2 x i64> %vec.phi171, %i.ge        ; 2 uses
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.gh, label %middle.block175, label %vector.body168, !llvm.loop !849

middle.block175:                                  ; preds = %vector.body168
  %bin.rdx176 = add <2 x i64> %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx176) ; 2 uses
  %cmp.n177 = icmp eq i64 %i.fv, %n.vec167
  br i1 %cmp.n177, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader180

.lr.ph26.i.preheader180:                          ; preds = %.lr.ph26.i.preheader, %middle.block175
  %.125.i.ph = phi i64 [ %.0.lcssa.i95, %.lr.ph26.i.preheader ], [ %i.gi, %middle.block175 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.fw, %middle.block175 ]
  br label %.lr.ph26.i

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader183, %.lr.ph.i92
  %i.gj = phi i64 [ %i.go, %.lr.ph.i92 ], [ %.ph, %.lr.ph.i92.preheader183 ] ; 3 uses
  %.022.i = phi i64 [ %i.gn, %.lr.ph.i92 ], [ %.022.i.ph, %.lr.ph.i92.preheader183 ]
  %.01621.i = phi i64 [ %i.gj, %.lr.ph.i92 ], [ %.01621.i.ph, %.lr.ph.i92.preheader183 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.01621.i
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !92
  %i.gm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gl)
  %i.gn = add i64 %i.gm, %.022.i                  ; 2 uses
  %i.go = add nuw nsw i64 %i.gj, 8                ; 2 uses
  %.not.i93 = icmp samesign ugt i64 %i.go, %i.q
  br i1 %.not.i93, label %.preheader.i94, label %.lr.ph.i92, !llvm.loop !850

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader180, %.lr.ph26.i
  %.125.i = phi i64 [ %i.gt, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader180 ]
  %.11724.i = phi i64 [ %i.gu, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader180 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.11724.i
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !80
  %i.gr = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.gq)
  %i.gs = zext nneg i8 %i.gr to i64
  %i.gt = add i64 %.125.i, %i.gs                  ; 2 uses
  %i.gu = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %i.gu, %i.q
  br i1 %exitcond.not.i98, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !851

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block175, %.preheader.i94
  %.1.lcssa.i97 = phi i64 [ %.0.lcssa.i95, %.preheader.i94 ], [ %i.gi, %middle.block175 ], [ %i.gt, %.lr.ph26.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !317
  %i.gx = uitofp i64 %.1.lcssa.i97 to float
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !318
  %i.ha = uitofp i64 %.2.lcssa.i to float
  %i.hb = fmul float %i.gz, %i.ha
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gx, float %i.hb)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113

bb.r:                                             ; preds = %bb.n, %.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !87
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113, label %.lr.ph27.i100

.lr.ph27.i100:                                    ; preds = %bb.r, %._crit_edge.i104
  %.01625.i101 = phi i64 [ %i.hl, %._crit_edge.i104 ], [ 0, %bb.r ] ; 3 uses
  %.01724.i102 = phi float [ %.1.lcssa.i105, %._crit_edge.i104 ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %i.hf = shl nuw i64 %.01625.i101, 3             ; 4 uses
  %i.hg = add nuw i64 %i.hf, 8
  %.sroa.speculated.i103 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.hg)
  %i.hh = icmp ugt i64 %i.b, %i.hf
  br i1 %i.hh, label %.lr.ph.i108, label %._crit_edge.i104

.lr.ph.i108:                                      ; preds = %.lr.ph27.i100
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.01625.i101
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !80
  %i.hk = zext i8 %i.hj to i32
  br label %bb.s

._crit_edge.i104:                                 ; preds = %bb.u, %.lr.ph27.i100
  %.1.lcssa.i105 = phi float [ %.01724.i102, %.lr.ph27.i100 ], [ %.2.i112, %bb.u ] ; 2 uses
  %i.hl = add nuw nsw i64 %.01625.i101, 1         ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %i.hl, %i.q
  br i1 %exitcond.not.i106, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113, label %.lr.ph27.i100, !llvm.loop !33

bb.s:                                             ; preds = %bb.u, %.lr.ph.i108
  %.023.i109 = phi i64 [ %i.hf, %.lr.ph.i108 ], [ %i.ht, %bb.u ] ; 3 uses
  %.122.i110 = phi float [ %.01724.i102, %.lr.ph.i108 ], [ %.2.i112, %bb.u ] ; 2 uses
  %i.hm = sub nuw i64 %.023.i109, %i.hf
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = shl nuw i32 1, %i.hn
  %i.hp = and i32 %i.ho, %i.hk
  %.not.i111 = icmp eq i32 %i.hp, 0
  br i1 %.not.i111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.023.i109
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !89
  %i.hs = fadd float %.122.i110, %i.hr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i112 = phi float [ %i.hs, %bb.t ], [ %.122.i110, %bb.s ] ; 2 uses
  %i.ht = add nuw i64 %.023.i109, 1               ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %.sroa.speculated.i103
  br i1 %i.hu, label %bb.s, label %._crit_edge.i104, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113: ; preds = %._crit_edge.i104, %bb.r, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i107.sink = phi float [ %i.hc, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.r ], [ %.1.lcssa.i105, %._crit_edge.i104 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !225
  %i.hx = fmul float %i.k, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !309
  %i.ia = fneg float %i.hz
  %i.ib = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i107.sink, float 2.000000e+00, float %i.ia)
  %i.ic = fmul float %i.hx, %i.ib
  %i.id = fadd float %i.cl, %i.ic
  %i.ie = fmul float %i.i, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ig = load float, ptr %i.if, align 8, !tbaa !308
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.ig)
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ie, float -2.000000e+00, float %i.ih)
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113
  %.1 = phi float [ %i.ii, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit113 ], [ +inf, %bb.m ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !315
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !295    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !306
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !80
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !304
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #24
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34
end_hunk_1
begin_hunk_2_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24, !inline_history !207
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !319  ; 7 uses
  %i.c = uitofp i64 %i.b to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !871
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !872
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !203 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !204 ; 2 uses
  %.not68 = icmp eq i64 %i.b, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !179  ; 2 uses
  %i.p = shl i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !873
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.048.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.au, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !227  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04867 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.au, %bb.b ]
  %.04966 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.b ] ; 4 uses
  %i.w = lshr i64 %.04966, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = trunc i64 %.04966 to i32
  %i.y = and i32 %i.x, 7                          ; 2 uses
  %i.z = shl nuw nsw i32 1, %i.y                  ; 2 uses
  %i.aa = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ab = zext i8 %i.aa to i32
  %i.ac = lshr i32 %i.ab, %i.y
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.o
  %i.af = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %i.z, %i.ag
  %.not.1.i = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.p
  %i.aj = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.ak = zext i8 %i.aj to i32
  %i.al = and i32 %i.z, %i.ak
  %.not.2.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.2.i, i64 0, i64 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.04966
  %i.ao = load float, ptr %i.an, align 4, !tbaa !89
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.am
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ai
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ae
  %i.as = load float, ptr %i.ar, align 4, !tbaa !89
  %i.at = fmul float %i.ao, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.d, float %.04867) ; 2 uses
  %i.av = add nuw i64 %.04966, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !866

bb.c:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !874
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !874
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ba = load float, ptr %i.az, align 4, !tbaa !322
  %i.bb = fmul float %i.m, %i.ba
  %i.bc = fmul float %i.k, %i.bb
  %i.bd = fmul float %i.k, %.048.lcssa
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load float, ptr %i.be, align 8, !tbaa !320
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.bf)
  %i.bh = fadd float %i.bd, %i.bc
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float -2.000000e+00, float %i.bg)
  %i.bj = load float, ptr %i.v, align 4, !tbaa !89
  %i.bk = fcmp ult float %i.bi, %i.bj
  br i1 %i.bk, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !875
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !875
  br label %bb.m

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !323 ; 2 uses
  %.not51 = icmp eq i8 %i.bp, 0
  br i1 %.not51, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !324, !range !300, !noundef !301
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bt = add i64 %i.b, 7                         ; 2 uses
  %i.bu = lshr i64 %i.bt, 3                       ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !295 ; 2 uses
  %i.bx = zext i8 %i.bp to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.bt, 64              ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.f, %..loopexit_crit_edge.us.i
  %i.by = phi i64 [ %i.ck, %..loopexit_crit_edge.us.i ], [ 8, %bb.f ] ; 3 uses
  %.047.us.i = phi i64 [ %i.cj, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ]
  %.03546.us.i = phi i64 [ %i.by, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03546.us.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.bw, i64 %.03546.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.cj, %bb.g ]
  %i.cb = mul i64 %indvars.iv.i, %i.bu
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.cb
  %i.cc = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.cd = and i64 %i.cc, %i.ca
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cd)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ch = shl i32 %i.cf, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add i64 %.144.us.i, %i.ci               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.g, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.g
  %i.ck = add nuw nsw i64 %i.by, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.ck, %i.bu
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.f
  %.035.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.by, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.cj, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not60 = icmp samesign ult i64 %.035.lcssa.i, %i.bu
  br i1 %.not60, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.cv, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.cw, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 %.13654.us.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.bw, i64 %.13654.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.h ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.cv, %bb.h ]
  %i.cn = mul i64 %indvars.iv72.i, %i.bu
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.cn
  %i.co = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.cp = and i8 %i.co, %i.cm
  %i.cq = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cp)
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add i64 %.353.us.i, %i.cu               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.bx
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.h, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.cw = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.cw, %i.bu
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.cv, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i53, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 15)
  %i.cy = add nsw i64 %i.cx, -8                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.db = shl i64 %n.vec, 3                       ; 3 uses
  %i.dc = or disjoint i64 %i.db, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.dd = shl i64 %index, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !92
  %wide.load103 = load <2 x i64>, ptr %i.df, align 8, !tbaa !92
  %i.dg = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dh = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load103)
  %i.di = add <2 x i64> %i.dg, %vec.phi           ; 2 uses
  %i.dj = add <2 x i64> %i.dh, %vec.phi102        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !867

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dj, %i.di
  %i.dl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader.i53, label %.lr.ph.i.preheader124

.lr.ph.i.preheader124:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.dc, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dl, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i

.preheader.i53:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.db, %middle.block ], [ %i.eb, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i54 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dl, %middle.block ], [ %i.ef, %.lr.ph.i ] ; 3 uses
  %i.dm = icmp samesign ult i64 %.016.lcssa.i, %i.bu
  br i1 %i.dm, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i53
  %i.dn = sub nuw i64 %i.bu, %.016.lcssa.i        ; 3 uses
  %min.iters.check106 = icmp samesign ult i64 %i.dn, 4
  br i1 %min.iters.check106, label %.lr.ph26.i.preheader121, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec108 = and i64 %i.dn, 2305843009213693948  ; 3 uses
  %i.do = add i64 %.016.lcssa.i, %n.vec108
  %i.dp = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i54, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.016.lcssa.i
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ %i.dp, %vector.ph107 ], [ %i.dx, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph107 ], [ %i.dy, %vector.body109 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index110 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %wide.load113 = load <2 x i8>, ptr %i.dr, align 1, !tbaa !80
  %wide.load114 = load <2 x i8>, ptr %i.ds, align 1, !tbaa !80
  %i.dt = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load113)
  %i.du = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load114)
  %i.dv = zext nneg <2 x i8> %i.dt to <2 x i64>
  %i.dw = zext nneg <2 x i8> %i.du to <2 x i64>
  %i.dx = add <2 x i64> %vec.phi111, %i.dv        ; 2 uses
  %i.dy = add <2 x i64> %vec.phi112, %i.dw        ; 2 uses
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.dz, label %middle.block116, label %vector.body109, !llvm.loop !868

middle.block116:                                  ; preds = %vector.body109
  %bin.rdx117 = add <2 x i64> %i.dy, %i.dx
  %i.ea = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx117) ; 2 uses
  %cmp.n118 = icmp eq i64 %i.dn, %n.vec108
  br i1 %cmp.n118, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader121

.lr.ph26.i.preheader121:                          ; preds = %.lr.ph26.i.preheader, %middle.block116
  %.125.i.ph = phi i64 [ %.0.lcssa.i54, %.lr.ph26.i.preheader ], [ %i.ea, %middle.block116 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.do, %middle.block116 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader124, %.lr.ph.i
  %i.eb = phi i64 [ %i.eg, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader124 ] ; 3 uses
  %.022.i = phi i64 [ %i.ef, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader124 ]
  %.01621.i = phi i64 [ %i.eb, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader124 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01621.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !92
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ed)
  %i.ef = add i64 %i.ee, %.022.i                  ; 2 uses
  %i.eg = add nuw nsw i64 %i.eb, 8                ; 2 uses
  %.not.i52 = icmp samesign ugt i64 %i.eg, %i.bu
  br i1 %.not.i52, label %.preheader.i53, label %.lr.ph.i, !llvm.loop !869

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader121, %.lr.ph26.i
  %.125.i = phi i64 [ %i.el, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader121 ]
  %.11724.i = phi i64 [ %i.em, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader121 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 %.11724.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !80
  %i.ej = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ei)
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = add i64 %.125.i, %i.ek                  ; 2 uses
  %i.em = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.em, %i.bu
  br i1 %exitcond.not.i55, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !870

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block116, %.preheader.i53
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i54, %.preheader.i53 ], [ %i.ea, %middle.block116 ], [ %i.el, %.lr.ph26.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.eo = load float, ptr %i.en, align 4, !tbaa !325
  %i.ep = uitofp i64 %.1.lcssa.i to float
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.er = load float, ptr %i.eq, align 8, !tbaa !326
  %i.es = uitofp i64 %.2.lcssa.i to float
  %i.et = fmul float %i.er, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.et)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit

bb.i:                                             ; preds = %bb.e, %.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !87
  %i.ex = add i64 %i.b, 7
  %i.ey = lshr i64 %i.ex, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.ey, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.i, %._crit_edge.i
  %.01625.i = phi i64 [ %i.ff, %._crit_edge.i ], [ 0, %bb.i ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i56, %._crit_edge.i ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.ez = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.fa = add nuw i64 %i.ez, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.fa)
  %i.fb = icmp ugt i64 %i.b, %i.ez
  br i1 %i.fb, label %.lr.ph.i58, label %._crit_edge.i

.lr.ph.i58:                                       ; preds = %.lr.ph27.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01625.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !80
  %i.fe = zext i8 %i.fd to i32
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.l, %.lr.ph27.i
  %.1.lcssa.i56 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.l ] ; 2 uses
  %i.ff = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.ff, %i.ey
  br i1 %exitcond.not.i57, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.l, %.lr.ph.i58
  %.023.i = phi i64 [ %i.ez, %.lr.ph.i58 ], [ %i.fn, %bb.l ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i58 ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fg = sub nuw i64 %.023.i, %i.ez
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = shl nuw i32 1, %i.fh
  %i.fj = and i32 %i.fi, %i.fe
  %.not.i59 = icmp eq i32 %i.fj, 0
  br i1 %.not.i59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.023.i
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !89
  %i.fm = fadd float %.122.i, %i.fl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi float [ %i.fm, %bb.k ], [ %.122.i, %bb.j ] ; 2 uses
  %i.fn = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.sroa.speculated.i
  br i1 %i.fo, label %bb.j, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.i, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i.sink = phi float [ %i.eu, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.i ], [ %.1.lcssa.i56, %._crit_edge.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !229
  %i.fr = fmul float %i.m, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !321
  %i.fu = fneg float %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i.sink, float 2.000000e+00, float %i.fu)
  %i.fw = fmul float %i.fr, %i.fv
  %i.fx = fadd float %.048.lcssa, %i.fw
  %i.fy = fmul float %i.k, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !320
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.ga)
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fy, float -2.000000e+00, float %i.gb)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit
  %.1 = phi float [ %i.gc, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ], [ +inf, %bb.d ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !227
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !327  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  tail call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %1, ptr noundef %i.g)
  %i.h = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef %1, i64 noundef %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %i.h, ptr %i.i, align 8, !tbaa !328
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !87   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %i.e, %i.q
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.e, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  tail call void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EE15project_forwardEPKfPf(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef %1, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !884
  %i.y = uitofp i64 %i.x to float
  %sqrt = tail call nnan ninf float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv nnan float 1.000000e+00, %sqrt      ; 2 uses
  %.not92 = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not92, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !329
  br label %._crit_edge84

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !87  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !89
  %wide.load114 = load <4 x float>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = fmul <4 x float> %broadcast.splat, %wide.load
  %i.af = fmul <4 x float> %broadcast.splat, %wide.load114
  store <4 x float> %i.ae, ptr %i.ac, align 4, !tbaa !89
end_hunk_2
begin_hunk_3_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !327  ; 7 uses
  %i.c = uitofp i64 %i.b to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !890
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !891
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !203 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !204 ; 2 uses
  %.not68 = icmp eq i64 %i.b, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !188  ; 3 uses
  %i.p = shl i64 %i.o, 1
  %i.q = mul i64 %i.o, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !892
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.048.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ba, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !231  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04867 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.b ]
  %.04966 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.b ] ; 4 uses
  %i.x = lshr i64 %.04966, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.x ; 4 uses
  %i.y = trunc i64 %.04966 to i32
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %i.aa = shl nuw nsw i32 1, %i.z                 ; 3 uses
  %i.ab = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ac = zext i8 %i.ab to i32
  %i.ad = lshr i32 %i.ac, %i.z
  %i.ae = and i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.o
  %i.ag = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.ah = zext i8 %i.ag to i32
  %i.ai = and i32 %i.aa, %i.ah
  %.not.1.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.p
  %i.ak = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.al = zext i8 %i.ak to i32
  %i.am = and i32 %i.aa, %i.al
  %.not.2.i = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not.2.i, i64 0, i64 4
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.q
  %i.ao = load i8, ptr %gep.3.i, align 1, !tbaa !80
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %i.aa, %i.ap
  %.not.3.i = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.3.i, i64 0, i64 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.04966
  %i.at = load float, ptr %i.as, align 4, !tbaa !89
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.an
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aj
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.af
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !89
  %i.az = fmul float %i.at, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.d, float %.04867) ; 2 uses
  %i.bb = add nuw i64 %.04966, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !885

bb.c:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !893
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !893
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !330
  %i.bh = fmul float %i.m, %i.bg
  %i.bi = fmul float %i.k, %i.bh
  %i.bj = fmul float %i.k, %.048.lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !328
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.bl)
  %i.bn = fadd float %i.bj, %i.bi
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float -2.000000e+00, float %i.bm)
  %i.bp = load float, ptr %i.w, align 4, !tbaa !89
  %i.bq = fcmp ult float %i.bo, %i.bp
  br i1 %i.bq, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !894
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !894
  br label %bb.m

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !331 ; 2 uses
  %.not51 = icmp eq i8 %i.bv, 0
  br i1 %.not51, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !332, !range !300, !noundef !301
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bz = add i64 %i.b, 7                         ; 2 uses
  %i.ca = lshr i64 %i.bz, 3                       ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !295 ; 2 uses
  %i.cd = zext i8 %i.bv to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.bz, 64              ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.f, %..loopexit_crit_edge.us.i
  %i.ce = phi i64 [ %i.cq, %..loopexit_crit_edge.us.i ], [ 8, %bb.f ] ; 3 uses
  %.047.us.i = phi i64 [ %i.cp, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ]
  %.03546.us.i = phi i64 [ %i.ce, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03546.us.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.cc, i64 %.03546.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.cp, %bb.g ]
  %i.ch = mul i64 %indvars.iv.i, %i.ca
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.ch
  %i.ci = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.cj = and i64 %i.ci, %i.cg
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = add i64 %.144.us.i, %i.co               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cd
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.g, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.g
  %i.cq = add nuw nsw i64 %i.ce, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.cq, %i.ca
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.f
  %.035.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.ce, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.cp, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not60 = icmp samesign ult i64 %.035.lcssa.i, %i.ca
  br i1 %.not60, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.db, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.dc, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.13654.us.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.cc, i64 %.13654.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.h ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.db, %bb.h ]
  %i.ct = mul i64 %indvars.iv72.i, %i.ca
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.ct
  %i.cu = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.cv = and i8 %i.cu, %i.cs
  %i.cw = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cv)
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.cz = shl i32 %i.cx, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = add i64 %.353.us.i, %i.da               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.cd
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.h, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.dc = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.dc, %i.ca
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.db, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i53, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 15)
  %i.de = add nsw i64 %i.dd, -8                   ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.dg, 4611686018427387900     ; 3 uses
  %i.dh = shl i64 %n.vec, 3                       ; 3 uses
  %i.di = or disjoint i64 %i.dh, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.dj = shl i64 %index, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !92
  %wide.load103 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !92
  %i.dm = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dn = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load103)
  %i.do = add <2 x i64> %i.dm, %vec.phi           ; 2 uses
  %i.dp = add <2 x i64> %i.dn, %vec.phi102        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !886

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dp, %i.do
  %i.dr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.preheader.i53, label %.lr.ph.i.preheader124

.lr.ph.i.preheader124:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.di, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dr, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i

.preheader.i53:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dh, %middle.block ], [ %i.eh, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i54 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dr, %middle.block ], [ %i.el, %.lr.ph.i ] ; 3 uses
  %i.ds = icmp samesign ult i64 %.016.lcssa.i, %i.ca
  br i1 %i.ds, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i53
  %i.dt = sub nuw i64 %i.ca, %.016.lcssa.i        ; 3 uses
  %min.iters.check106 = icmp samesign ult i64 %i.dt, 4
  br i1 %min.iters.check106, label %.lr.ph26.i.preheader121, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec108 = and i64 %i.dt, 2305843009213693948  ; 3 uses
  %i.du = add i64 %.016.lcssa.i, %n.vec108
  %i.dv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i54, i64 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 %.016.lcssa.i
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ %i.dv, %vector.ph107 ], [ %i.ed, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph107 ], [ %i.ee, %vector.body109 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %index110 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %wide.load113 = load <2 x i8>, ptr %i.dx, align 1, !tbaa !80
  %wide.load114 = load <2 x i8>, ptr %i.dy, align 1, !tbaa !80
  %i.dz = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load113)
  %i.ea = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load114)
  %i.eb = zext nneg <2 x i8> %i.dz to <2 x i64>
  %i.ec = zext nneg <2 x i8> %i.ea to <2 x i64>
  %i.ed = add <2 x i64> %vec.phi111, %i.eb        ; 2 uses
  %i.ee = add <2 x i64> %vec.phi112, %i.ec        ; 2 uses
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.ef, label %middle.block116, label %vector.body109, !llvm.loop !887

middle.block116:                                  ; preds = %vector.body109
  %bin.rdx117 = add <2 x i64> %i.ee, %i.ed
  %i.eg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx117) ; 2 uses
  %cmp.n118 = icmp eq i64 %i.dt, %n.vec108
  br i1 %cmp.n118, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader121

.lr.ph26.i.preheader121:                          ; preds = %.lr.ph26.i.preheader, %middle.block116
  %.125.i.ph = phi i64 [ %.0.lcssa.i54, %.lr.ph26.i.preheader ], [ %i.eg, %middle.block116 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.du, %middle.block116 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader124, %.lr.ph.i
  %i.eh = phi i64 [ %i.em, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader124 ] ; 3 uses
  %.022.i = phi i64 [ %i.el, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader124 ]
  %.01621.i = phi i64 [ %i.eh, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader124 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01621.i
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !92
  %i.ek = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ej)
  %i.el = add i64 %i.ek, %.022.i                  ; 2 uses
  %i.em = add nuw nsw i64 %i.eh, 8                ; 2 uses
  %.not.i52 = icmp samesign ugt i64 %i.em, %i.ca
  br i1 %.not.i52, label %.preheader.i53, label %.lr.ph.i, !llvm.loop !888

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader121, %.lr.ph26.i
  %.125.i = phi i64 [ %i.er, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader121 ]
  %.11724.i = phi i64 [ %i.es, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader121 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 %.11724.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !80
  %i.ep = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.eo)
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = add i64 %.125.i, %i.eq                  ; 2 uses
  %i.es = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.es, %i.ca
  br i1 %exitcond.not.i55, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !889

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block116, %.preheader.i53
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i54, %.preheader.i53 ], [ %i.eg, %middle.block116 ], [ %i.er, %.lr.ph26.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.eu = load float, ptr %i.et, align 4, !tbaa !333
  %i.ev = uitofp i64 %.1.lcssa.i to float
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !334
  %i.ey = uitofp i64 %.2.lcssa.i to float
  %i.ez = fmul float %i.ex, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.ez)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit

bb.i:                                             ; preds = %bb.e, %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !87
  %i.fd = add i64 %i.b, 7
  %i.fe = lshr i64 %i.fd, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.fe, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.i, %._crit_edge.i
  %.01625.i = phi i64 [ %i.fl, %._crit_edge.i ], [ 0, %bb.i ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i56, %._crit_edge.i ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.ff = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.fg = add nuw i64 %i.ff, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.fg)
  %i.fh = icmp ugt i64 %i.b, %i.ff
  br i1 %i.fh, label %.lr.ph.i58, label %._crit_edge.i

.lr.ph.i58:                                       ; preds = %.lr.ph27.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01625.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !80
  %i.fk = zext i8 %i.fj to i32
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.l, %.lr.ph27.i
  %.1.lcssa.i56 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fl = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.fl, %i.fe
  br i1 %exitcond.not.i57, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.l, %.lr.ph.i58
  %.023.i = phi i64 [ %i.ff, %.lr.ph.i58 ], [ %i.ft, %bb.l ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i58 ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fm = sub nuw i64 %.023.i, %i.ff
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.fk
  %.not.i59 = icmp eq i32 %i.fp, 0
  br i1 %.not.i59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.023.i
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !89
  %i.fs = fadd float %.122.i, %i.fr
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi float [ %i.fs, %bb.k ], [ %.122.i, %bb.j ] ; 2 uses
  %i.ft = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %.sroa.speculated.i
  br i1 %i.fu, label %bb.j, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.i, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i.sink = phi float [ %i.fa, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.i ], [ %.1.lcssa.i56, %._crit_edge.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !233
  %i.fx = fmul float %i.m, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !329
  %i.ga = fneg float %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i.sink, float 2.000000e+00, float %i.ga)
  %i.gc = fmul float %i.fx, %i.gb
  %i.gd = fadd float %.048.lcssa, %i.gc
  %i.ge = fmul float %i.k, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !328
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.gg)
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.ge, float -2.000000e+00, float %i.gh)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit
  %.1 = phi float [ %i.gi, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ], [ +inf, %bb.d ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !332
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityL2ILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !252  ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !196 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.n = load float, ptr %i.m, align 4, !tbaa !195 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %bb.b ] ; 3 uses
  %.sroa.6.09.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.010.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.010.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !80
  %i.s = insertelement <2 x i8> poison, i8 %i.p, i64 0
  %i.t = insertelement <2 x i8> %i.s, i8 %i.r, i64 1
  %i.u = uitofp <2 x i8> %i.t to <2 x float>
  %i.v = fadd <2 x float> %i.u, splat (float 5.000000e-01)
  %i.w = fdiv <2 x float> %i.v, splat (float 2.550000e+02) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.n, float %i.l)
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.n, float %i.l)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.y, float %i.aa, float %.sroa.6.09.i) ; 2 uses
  %i.ac = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.j
  br i1 %exitcond.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit, label %bb.b, !llvm.loop !895

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit: ; preds = %bb.b, %bb.a
  %.sroa.6.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %bb.b ]
  ret float %.sroa.6.0.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !336  ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityIPILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit4

_ZNSt6vectorIhSaIhEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIfSaIfEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !90
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit7

_ZNSt6vectorIfSaIfEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EEE, i64 16), ptr %i.aj, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #24, !inline_history !205
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i, label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24, !inline_history !205
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi2ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !369  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !937
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !938
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !203 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !204 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load i8, ptr %i.l, align 8, !tbaa !375   ; 3 uses
  %.not = icmp eq i8 %i.m, 0                      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.b, 7                          ; 2 uses
  %i.o = lshr i64 %i.n, 3                         ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !295  ; 2 uses
  %i.r = zext i8 %i.m to i64                      ; 2 uses
  %.not45.i = icmp ult i64 %i.n, 64               ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.b, %..loopexit_crit_edge.us.i
  %i.s = phi i64 [ %i.ae, %..loopexit_crit_edge.us.i ], [ 8, %bb.b ] ; 3 uses
  %.047.us.i = phi i64 [ %i.ad, %..loopexit_crit_edge.us.i ], [ 0, %bb.b ]
  %.03546.us.i = phi i64 [ %i.s, %..loopexit_crit_edge.us.i ], [ 0, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.03546.us.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.q, i64 %.03546.us.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.ad, %bb.c ]
  %i.v = mul i64 %indvars.iv.i, %i.o
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.v
  %i.w = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.x = and i64 %i.w, %i.u
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add i64 %.144.us.i, %i.ac               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.r
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.c, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.c
  %i.ae = add nuw nsw i64 %i.s, 8                 ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.ae, %i.o
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.b
  %.035.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.s, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ad, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not118 = icmp samesign ult i64 %.035.lcssa.i, %i.o
  br i1 %.not118, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.ap, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.aq, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.13654.us.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.q, i64 %.13654.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.d ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.ap, %bb.d ]
  %i.ah = mul i64 %indvars.iv72.i, %i.o
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.ah
  %i.ai = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.aj = and i8 %i.ai, %i.ag
  %i.ak = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.aj)
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.an = shl i32 %i.al, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %.353.us.i, %i.ao               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.r
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.aq = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.aq, %i.o
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.ap, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i46, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.o, i64 15)
  %i.as = add nsw i64 %i.ar, -8                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 3 uses
  %i.aw = or disjoint i64 %i.av, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi187 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.ax = shl i64 %index, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !92
  %wide.load188 = load <2 x i64>, ptr %i.az, align 8, !tbaa !92
  %i.ba = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bb = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load188)
  %i.bc = add <2 x i64> %i.ba, %vec.phi           ; 2 uses
  %i.bd = add <2 x i64> %i.bb, %vec.phi187        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !929

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.preheader.i46, label %.lr.ph.i.preheader254

.lr.ph.i.preheader254:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph255 = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.aw, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i

.preheader.i46:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.av, %middle.block ], [ %i.bv, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i47 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.bf, %middle.block ], [ %i.bz, %.lr.ph.i ] ; 3 uses
  %i.bg = icmp samesign ult i64 %.016.lcssa.i, %i.o
  br i1 %i.bg, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i46
  %i.bh = sub nuw i64 %i.o, %.016.lcssa.i         ; 3 uses
  %min.iters.check191 = icmp samesign ult i64 %i.bh, 4
  br i1 %min.iters.check191, label %.lr.ph26.i.preheader250, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec193 = and i64 %i.bh, 2305843009213693948  ; 3 uses
  %i.bi = add i64 %.016.lcssa.i, %n.vec193
  %i.bj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i47, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.016.lcssa.i
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %vec.phi196 = phi <2 x i64> [ %i.bj, %vector.ph192 ], [ %i.br, %vector.body194 ]
  %vec.phi197 = phi <2 x i64> [ zeroinitializer, %vector.ph192 ], [ %i.bs, %vector.body194 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index195 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %wide.load198 = load <2 x i8>, ptr %i.bl, align 1, !tbaa !80
  %wide.load199 = load <2 x i8>, ptr %i.bm, align 1, !tbaa !80
  %i.bn = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load198)
  %i.bo = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load199)
  %i.bp = zext nneg <2 x i8> %i.bn to <2 x i64>
  %i.bq = zext nneg <2 x i8> %i.bo to <2 x i64>
  %i.br = add <2 x i64> %vec.phi196, %i.bp        ; 2 uses
  %i.bs = add <2 x i64> %vec.phi197, %i.bq        ; 2 uses
  %index.next200 = add nuw i64 %index195, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.bt, label %middle.block201, label %vector.body194, !llvm.loop !930

middle.block201:                                  ; preds = %vector.body194
  %bin.rdx202 = add <2 x i64> %i.bs, %i.br
  %i.bu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx202) ; 2 uses
  %cmp.n203 = icmp eq i64 %i.bh, %n.vec193
  br i1 %cmp.n203, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader250

.lr.ph26.i.preheader250:                          ; preds = %.lr.ph26.i.preheader, %middle.block201
  %.125.i.ph = phi i64 [ %.0.lcssa.i47, %.lr.ph26.i.preheader ], [ %i.bu, %middle.block201 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.bi, %middle.block201 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader254, %.lr.ph.i
  %i.bv = phi i64 [ %i.ca, %.lr.ph.i ], [ %.ph255, %.lr.ph.i.preheader254 ] ; 3 uses
  %.022.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader254 ]
  %.01621.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader254 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.01621.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !92
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bx)
  %i.bz = add i64 %i.by, %.022.i                  ; 2 uses
  %i.ca = add nuw nsw i64 %i.bv, 8                ; 2 uses
  %.not.i45 = icmp samesign ugt i64 %i.ca, %i.o
  br i1 %.not.i45, label %.preheader.i46, label %.lr.ph.i, !llvm.loop !931

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader250, %.lr.ph26.i
  %.125.i = phi i64 [ %i.cf, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader250 ]
  %.11724.i = phi i64 [ %i.cg, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader250 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.11724.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !80
  %i.cd = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cc)
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = add i64 %.125.i, %i.ce                  ; 2 uses
  %i.cg = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.cg, %i.o
  br i1 %exitcond.not.i48, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !932

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block201, %.preheader.i46
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i47, %.preheader.i46 ], [ %i.bu, %middle.block201 ], [ %i.cf, %.lr.ph26.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !376
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !377
  %i.cl = uitofp i64 %.2.lcssa.i to float
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cl, float %i.ci)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.co = load float, ptr %i.cn, align 8, !tbaa !378
  %i.cp = uitofp i64 %.1.lcssa.i to float
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cp, float %i.cm)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = add i64 %i.b, 7
  %i.cu = lshr i64 %i.ct, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.cu, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.e, %._crit_edge.i
  %.01625.i = phi i64 [ %i.db, %._crit_edge.i ], [ 0, %bb.e ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i49, %._crit_edge.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.cv = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.cw = add nuw i64 %i.cv, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.cw)
  %i.cx = icmp ugt i64 %i.b, %i.cv
  br i1 %i.cx, label %.lr.ph.i51, label %._crit_edge.i

.lr.ph.i51:                                       ; preds = %.lr.ph27.i
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %.01625.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !80
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph27.i
  %.1.lcssa.i49 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.db = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %i.db, %i.cu
  br i1 %exitcond.not.i50, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.f:                                             ; preds = %bb.h, %.lr.ph.i51
  %.023.i = phi i64 [ %i.cv, %.lr.ph.i51 ], [ %i.dj, %bb.h ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i51 ], [ %.2.i, %bb.h ] ; 2 uses
  %i.dc = sub nuw i64 %.023.i, %i.cv
  %i.dd = trunc i64 %i.dc to i32
  %i.de = shl nuw i32 1, %i.dd
  %i.df = and i32 %i.de, %i.da
  %.not.i52 = icmp eq i32 %i.df, 0
  br i1 %.not.i52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.023.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !89
  %i.di = fadd float %.122.i, %i.dh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi float [ %i.di, %bb.g ], [ %.122.i, %bb.f ] ; 2 uses
  %i.dj = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.speculated.i
  br i1 %i.dk, label %bb.f, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.e
  %.017.lcssa.i = phi float [ 0.000000e+00, %bb.e ], [ %.1.lcssa.i49, %._crit_edge.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !372
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.do = load float, ptr %i.dn, align 4, !tbaa !374
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !373
  %i.dr = fmul float %.017.lcssa.i, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.do, float %i.dr)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.042 = phi float [ %i.cq, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ %i.ds, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !235 ; 2 uses
  %.not43 = icmp eq ptr %i.du, null
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !939
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !939
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !371
  %i.ea = fmul float %i.k, %i.dz
  %i.eb = fmul float %i.i, %i.ea
  %i.ec = fmul float %i.i, %.042
  %i.ed = fadd float %i.ec, %i.eb
  %i.ee = load float, ptr %i.du, align 4, !tbaa !89
  %i.ef = fcmp ugt float %i.ed, %i.ee
  br i1 %i.ef, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !940
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !940
  br label %bb.t

.thread:                                          ; preds = %bb.j, %bb.i
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !379, !range !300, !noundef !301
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.em = add i64 %i.b, 7                         ; 2 uses
  %i.en = lshr i64 %i.em, 3                       ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !295 ; 2 uses
  %i.eq = zext i8 %i.m to i64                     ; 2 uses
  %.not45.i53 = icmp ult i64 %i.em, 64            ; 2 uses
  br i1 %.not45.i53, label %.preheader.i67, label %.lr.ph.us.i56

.lr.ph.us.i56:                                    ; preds = %bb.m, %..loopexit_crit_edge.us.i65
  %i.er = phi i64 [ %i.fd, %..loopexit_crit_edge.us.i65 ], [ 8, %bb.m ] ; 3 uses
  %.047.us.i57 = phi i64 [ %i.fc, %..loopexit_crit_edge.us.i65 ], [ 0, %bb.m ]
  %.03546.us.i58 = phi i64 [ %i.er, %..loopexit_crit_edge.us.i65 ], [ 0, %bb.m ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 %.03546.us.i58
  %i.et = load i64, ptr %i.es, align 8, !tbaa !92
  %invariant.gep.us.i59 = getelementptr i8, ptr %i.ep, i64 %.03546.us.i58
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.us.i56
  %indvars.iv.i60 = phi i64 [ 0, %.lr.ph.us.i56 ], [ %indvars.iv.next.i63, %bb.n ] ; 3 uses
  %.144.us.i61 = phi i64 [ %.047.us.i57, %.lr.ph.us.i56 ], [ %i.fc, %bb.n ]
  %i.eu = mul i64 %indvars.iv.i60, %i.en
  %gep.us.i62 = getelementptr i8, ptr %invariant.gep.us.i59, i64 %i.eu
  %i.ev = load i64, ptr %gep.us.i62, align 8, !tbaa !92
  %i.ew = and i64 %i.ev, %i.et
  %i.ex = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ew)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = trunc nuw nsw i64 %indvars.iv.i60 to i32
  %i.fa = shl i32 %i.ey, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = add i64 %.144.us.i61, %i.fb             ; 3 uses
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %i.eq
  br i1 %exitcond.not.i64, label %..loopexit_crit_edge.us.i65, label %bb.n, !llvm.loop !29

..loopexit_crit_edge.us.i65:                      ; preds = %bb.n
  %i.fd = add nuw nsw i64 %i.er, 8                ; 2 uses
  %.not.us.i66 = icmp samesign ugt i64 %i.fd, %i.en
  br i1 %.not.us.i66, label %.preheader.i67, label %.lr.ph.us.i56, !llvm.loop !30

.preheader.i67:                                   ; preds = %..loopexit_crit_edge.us.i65, %bb.m
  %.035.lcssa.i68 = phi i64 [ 0, %bb.m ], [ %i.er, %..loopexit_crit_edge.us.i65 ] ; 2 uses
  %.0.lcssa.i69 = phi i64 [ 0, %bb.m ], [ %i.fc, %..loopexit_crit_edge.us.i65 ] ; 2 uses
  %.not119 = icmp samesign ult i64 %.035.lcssa.i68, %i.en
  br i1 %.not119, label %.lr.ph.us61.i72, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86

.lr.ph.us61.i72:                                  ; preds = %.preheader.i67, %._crit_edge.us.i81
  %.255.us.i73 = phi i64 [ %i.fo, %._crit_edge.us.i81 ], [ %.0.lcssa.i69, %.preheader.i67 ]
  %.13654.us.i74 = phi i64 [ %i.fp, %._crit_edge.us.i81 ], [ %.035.lcssa.i68, %.preheader.i67 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 %.13654.us.i74
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %invariant.gep.us59.i75 = getelementptr i8, ptr %i.ep, i64 %.13654.us.i74
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.us61.i72
  %indvars.iv72.i76 = phi i64 [ 0, %.lr.ph.us61.i72 ], [ %indvars.iv.next73.i79, %bb.o ] ; 3 uses
  %.353.us.i77 = phi i64 [ %.255.us.i73, %.lr.ph.us61.i72 ], [ %i.fo, %bb.o ]
  %i.fg = mul i64 %indvars.iv72.i76, %i.en
  %gep.us60.i78 = getelementptr i8, ptr %invariant.gep.us59.i75, i64 %i.fg
  %i.fh = load i8, ptr %gep.us60.i78, align 1, !tbaa !80
  %i.fi = and i8 %i.fh, %i.ff
  %i.fj = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fi)
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = trunc nuw nsw i64 %indvars.iv72.i76 to i32
  %i.fm = shl i32 %i.fk, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = add i64 %.353.us.i77, %i.fn             ; 3 uses
  %indvars.iv.next73.i79 = add nuw nsw i64 %indvars.iv72.i76, 1 ; 2 uses
  %exitcond75.not.i80 = icmp eq i64 %indvars.iv.next73.i79, %i.eq
  br i1 %exitcond75.not.i80, label %._crit_edge.us.i81, label %bb.o, !llvm.loop !31

._crit_edge.us.i81:                               ; preds = %bb.o
  %i.fp = add nuw i64 %.13654.us.i74, 1           ; 2 uses
  %exitcond76.not.i82 = icmp eq i64 %i.fp, %i.en
  br i1 %exitcond76.not.i82, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86, label %.lr.ph.us61.i72, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86: ; preds = %._crit_edge.us.i81, %.preheader.i67
  %.2.lcssa.i83 = phi i64 [ %.0.lcssa.i69, %.preheader.i67 ], [ %i.fo, %._crit_edge.us.i81 ]
  br i1 %.not45.i53, label %.preheader.i92, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86
  %i.fq = tail call i64 @llvm.umax.i64(i64 %i.en, i64 15)
  %i.fr = add nsw i64 %i.fq, -8                   ; 2 uses
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check207 = icmp ult i64 %i.fr, 24
  br i1 %min.iters.check207, label %.lr.ph.i88.preheader242, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph.i88.preheader
  %n.vec209 = and i64 %i.ft, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec209, 3                    ; 3 uses
  %i.fv = or disjoint i64 %i.fu, 8
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <2 x i64> [ zeroinitializer, %vector.ph208 ], [ %i.gb, %vector.body210 ]
  %vec.phi213 = phi <2 x i64> [ zeroinitializer, %vector.ph208 ], [ %i.gc, %vector.body210 ]
  %i.fw = shl i64 %index211, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load214 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !92
  %wide.load215 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !92
  %i.fz = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load214)
  %i.ga = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load215)
  %i.gb = add <2 x i64> %i.fz, %vec.phi212        ; 2 uses
  %i.gc = add <2 x i64> %i.ga, %vec.phi213        ; 2 uses
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.gd, label %middle.block217, label %vector.body210, !llvm.loop !933

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = add <2 x i64> %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.ft, %n.vec209
  br i1 %cmp.n219, label %.preheader.i92, label %.lr.ph.i88.preheader242

.lr.ph.i88.preheader242:                          ; preds = %.lr.ph.i88.preheader, %middle.block217
  %.ph = phi i64 [ 8, %.lr.ph.i88.preheader ], [ %i.fv, %middle.block217 ]
  %.022.i89.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.ge, %middle.block217 ]
  %.01621.i90.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.fu, %middle.block217 ]
  br label %.lr.ph.i88

.preheader.i92:                                   ; preds = %.lr.ph.i88, %middle.block217, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86
  %.016.lcssa.i93 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86 ], [ %i.fu, %middle.block217 ], [ %i.gu, %.lr.ph.i88 ] ; 5 uses
  %.0.lcssa.i94 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit86 ], [ %i.ge, %middle.block217 ], [ %i.gy, %.lr.ph.i88 ] ; 3 uses
  %i.gf = icmp samesign ult i64 %.016.lcssa.i93, %i.en
  br i1 %i.gf, label %.lr.ph26.i97.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101

.lr.ph26.i97.preheader:                           ; preds = %.preheader.i92
  %i.gg = sub nuw i64 %i.en, %.016.lcssa.i93      ; 3 uses
  %min.iters.check224 = icmp samesign ult i64 %i.gg, 4
  br i1 %min.iters.check224, label %.lr.ph26.i97.preheader239, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph26.i97.preheader
  %n.vec226 = and i64 %i.gg, 2305843009213693948  ; 3 uses
  %i.gh = add i64 %.016.lcssa.i93, %n.vec226
  %i.gi = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i94, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.016.lcssa.i93
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 2 uses
  %vec.phi229 = phi <2 x i64> [ %i.gi, %vector.ph225 ], [ %i.gq, %vector.body227 ]
  %vec.phi230 = phi <2 x i64> [ zeroinitializer, %vector.ph225 ], [ %i.gr, %vector.body227 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index228 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %wide.load231 = load <2 x i8>, ptr %i.gk, align 1, !tbaa !80
  %wide.load232 = load <2 x i8>, ptr %i.gl, align 1, !tbaa !80
  %i.gm = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load231)
  %i.gn = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load232)
  %i.go = zext nneg <2 x i8> %i.gm to <2 x i64>
  %i.gp = zext nneg <2 x i8> %i.gn to <2 x i64>
  %i.gq = add <2 x i64> %vec.phi229, %i.go        ; 2 uses
  %i.gr = add <2 x i64> %vec.phi230, %i.gp        ; 2 uses
  %index.next233 = add nuw i64 %index228, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.gs, label %middle.block234, label %vector.body227, !llvm.loop !934

middle.block234:                                  ; preds = %vector.body227
  %bin.rdx235 = add <2 x i64> %i.gr, %i.gq
  %i.gt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx235) ; 2 uses
  %cmp.n236 = icmp eq i64 %i.gg, %n.vec226
  br i1 %cmp.n236, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101, label %.lr.ph26.i97.preheader239

.lr.ph26.i97.preheader239:                        ; preds = %.lr.ph26.i97.preheader, %middle.block234
  %.125.i98.ph = phi i64 [ %.0.lcssa.i94, %.lr.ph26.i97.preheader ], [ %i.gt, %middle.block234 ]
  %.11724.i99.ph = phi i64 [ %.016.lcssa.i93, %.lr.ph26.i97.preheader ], [ %i.gh, %middle.block234 ]
  br label %.lr.ph26.i97

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader242, %.lr.ph.i88
  %i.gu = phi i64 [ %i.gz, %.lr.ph.i88 ], [ %.ph, %.lr.ph.i88.preheader242 ] ; 3 uses
  %.022.i89 = phi i64 [ %i.gy, %.lr.ph.i88 ], [ %.022.i89.ph, %.lr.ph.i88.preheader242 ]
  %.01621.i90 = phi i64 [ %i.gu, %.lr.ph.i88 ], [ %.01621.i90.ph, %.lr.ph.i88.preheader242 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01621.i90
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !92
  %i.gx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw)
  %i.gy = add i64 %i.gx, %.022.i89                ; 2 uses
  %i.gz = add nuw nsw i64 %i.gu, 8                ; 2 uses
  %.not.i91 = icmp samesign ugt i64 %i.gz, %i.en
  br i1 %.not.i91, label %.preheader.i92, label %.lr.ph.i88, !llvm.loop !935

.lr.ph26.i97:                                     ; preds = %.lr.ph26.i97.preheader239, %.lr.ph26.i97
  %.125.i98 = phi i64 [ %i.he, %.lr.ph26.i97 ], [ %.125.i98.ph, %.lr.ph26.i97.preheader239 ]
  %.11724.i99 = phi i64 [ %i.hf, %.lr.ph26.i97 ], [ %.11724.i99.ph, %.lr.ph26.i97.preheader239 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 %.11724.i99
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !80
  %i.hc = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hb)
  %i.hd = zext nneg i8 %i.hc to i64
  %i.he = add i64 %.125.i98, %i.hd                ; 2 uses
  %i.hf = add nuw i64 %.11724.i99, 1              ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.hf, %i.en
  br i1 %exitcond.not.i100, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101, label %.lr.ph26.i97, !llvm.loop !936

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101: ; preds = %.lr.ph26.i97, %middle.block234, %.preheader.i92
  %.1.lcssa.i96 = phi i64 [ %.0.lcssa.i94, %.preheader.i92 ], [ %i.gt, %middle.block234 ], [ %i.he, %.lr.ph26.i97 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !380
  %i.hi = uitofp i64 %.1.lcssa.i96 to float
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !381
  %i.hl = uitofp i64 %.2.lcssa.i83 to float
  %i.hm = fmul float %i.hk, %i.hl
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hi, float %i.hm)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116

bb.p:                                             ; preds = %bb.l, %.thread
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !87
  %i.hq = add i64 %i.b, 7
  %i.hr = lshr i64 %i.hq, 3                       ; 2 uses
  %.not30.i102 = icmp eq i64 %i.hr, 0
  br i1 %.not30.i102, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116, label %.lr.ph27.i103

.lr.ph27.i103:                                    ; preds = %bb.p, %._crit_edge.i107
  %.01625.i104 = phi i64 [ %i.hy, %._crit_edge.i107 ], [ 0, %bb.p ] ; 3 uses
  %.01724.i105 = phi float [ %.1.lcssa.i108, %._crit_edge.i107 ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.hs = shl nuw i64 %.01625.i104, 3             ; 4 uses
  %i.ht = add nuw i64 %i.hs, 8
  %.sroa.speculated.i106 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.ht)
  %i.hu = icmp ugt i64 %i.b, %i.hs
  br i1 %i.hu, label %.lr.ph.i111, label %._crit_edge.i107

.lr.ph.i111:                                      ; preds = %.lr.ph27.i103
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01625.i104
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !80
  %i.hx = zext i8 %i.hw to i32
  br label %bb.q

._crit_edge.i107:                                 ; preds = %bb.s, %.lr.ph27.i103
  %.1.lcssa.i108 = phi float [ %.01724.i105, %.lr.ph27.i103 ], [ %.2.i115, %bb.s ] ; 2 uses
  %i.hy = add nuw nsw i64 %.01625.i104, 1         ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %i.hy, %i.hr
  br i1 %exitcond.not.i109, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116, label %.lr.ph27.i103, !llvm.loop !33

bb.q:                                             ; preds = %bb.s, %.lr.ph.i111
  %.023.i112 = phi i64 [ %i.hs, %.lr.ph.i111 ], [ %i.ig, %bb.s ] ; 3 uses
  %.122.i113 = phi float [ %.01724.i105, %.lr.ph.i111 ], [ %.2.i115, %bb.s ] ; 2 uses
  %i.hz = sub nuw i64 %.023.i112, %i.hs
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = shl nuw i32 1, %i.ia
  %i.ic = and i32 %i.ib, %i.hx
  %.not.i114 = icmp eq i32 %i.ic, 0
  br i1 %.not.i114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %.023.i112
  %i.ie = load float, ptr %i.id, align 4, !tbaa !89
  %i.if = fadd float %.122.i113, %i.ie
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i115 = phi float [ %i.if, %bb.r ], [ %.122.i113, %bb.q ] ; 2 uses
  %i.ig = add nuw i64 %.023.i112, 1               ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %.sroa.speculated.i106
  br i1 %i.ih, label %bb.q, label %._crit_edge.i107, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116: ; preds = %._crit_edge.i107, %bb.p, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101
  %.017.lcssa.i110.sink = phi float [ %i.hn, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit101 ], [ 0.000000e+00, %bb.p ], [ %.1.lcssa.i108, %._crit_edge.i107 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !237
  %i.ik = fmul float %i.k, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.im = load float, ptr %i.il, align 8, !tbaa !370
  %i.in = fneg float %i.im
  %i.io = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i110.sink, float 2.000000e+00, float %i.in)
  %i.ip = fmul float %i.ik, %i.io
  %i.iq = fadd float %.042, %i.ip
  %i.ir = fmul float %i.i, %i.iq
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116
  %.1 = phi float [ %i.ir, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit116 ], [ -inf, %bb.k ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !375
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !382  ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  tail call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %1, ptr noundef %i.g)
  %i.h = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef %1, i64 noundef %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %i.h, ptr %i.i, align 8, !tbaa !951
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !87   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %i.e, %i.q
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.e, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  tail call void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi3ELNS_9SIMDLevelE0EE15project_forwardEPKfPf(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef %1, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !952
  %i.y = uitofp i64 %i.x to float
  %sqrt = tail call nnan ninf float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv nnan float 1.000000e+00, %sqrt      ; 2 uses
  %.not119 = icmp eq i64 %i.e, 0                  ; 3 uses
  br i1 %.not119, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !383
  br label %._crit_edge106

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !87  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !89
  %wide.load150 = load <4 x float>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = fmul <4 x float> %broadcast.splat, %wide.load
  %i.af = fmul <4 x float> %broadcast.splat, %wide.load150
  store <4 x float> %i.ae, ptr %i.ac, align 4, !tbaa !89
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !941
end_hunk_4
begin_hunk_5_@_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit67
  %i.bi = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit67 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !295
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit82, label %.lr.ph27.i69

.lr.ph27.i69:                                     ; preds = %._crit_edge, %._crit_edge.i73
  %.01625.i70 = phi i64 [ %i.br, %._crit_edge.i73 ], [ 0, %._crit_edge ] ; 3 uses
  %.01724.i71 = phi float [ %.1.lcssa.i74, %._crit_edge.i73 ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.bl = shl nuw i64 %.01625.i70, 3              ; 4 uses
  %i.bm = add nuw i64 %i.bl, 8
  %.sroa.speculated.i72 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bm)
  %i.bn = icmp ugt i64 %i.b, %i.bl
  br i1 %i.bn, label %.lr.ph.i77, label %._crit_edge.i73

.lr.ph.i77:                                       ; preds = %.lr.ph27.i69
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.01625.i70
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !80
  %i.bq = zext i8 %i.bp to i32
  br label %bb.h

._crit_edge.i73:                                  ; preds = %bb.j, %.lr.ph27.i69
  %.1.lcssa.i74 = phi float [ %.01724.i71, %.lr.ph27.i69 ], [ %.2.i81, %bb.j ] ; 2 uses
  %i.br = add nuw nsw i64 %.01625.i70, 1          ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.br, %i.q
  br i1 %exitcond.not.i75, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit82, label %.lr.ph27.i69, !llvm.loop !33

bb.h:                                             ; preds = %bb.j, %.lr.ph.i77
  %.023.i78 = phi i64 [ %i.bl, %.lr.ph.i77 ], [ %i.bz, %bb.j ] ; 3 uses
  %.122.i79 = phi float [ %.01724.i71, %.lr.ph.i77 ], [ %.2.i81, %bb.j ] ; 2 uses
  %i.bs = sub nuw i64 %.023.i78, %i.bl
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = and i32 %i.bu, %i.bq
  %.not.i80 = icmp eq i32 %i.bv, 0
  br i1 %.not.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.023.i78
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !89
  %i.by = fadd float %.122.i79, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.i81 = phi float [ %i.by, %bb.i ], [ %.122.i79, %bb.h ] ; 2 uses
  %i.bz = add nuw i64 %.023.i78, 1                ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %.sroa.speculated.i72
  br i1 %i.ca, label %bb.h, label %._crit_edge.i73, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit82: ; preds = %._crit_edge.i73, %._crit_edge
  %.017.lcssa.i76 = phi float [ 0.000000e+00, %._crit_edge ], [ %.1.lcssa.i74, %._crit_edge.i73 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !385
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !386
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %.017.lcssa.i108, float %i.cc)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !387
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %.017.lcssa.i61, float %i.cf)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !388
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %.017.lcssa.i76, float %i.ci) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !239 ; 2 uses
  %.not = icmp eq ptr %i.cn, null
  br i1 %.not, label %.thread, label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %.050116 = phi i64 [ 0, %.lr.ph.new ], [ %i.dd, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.050116
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !80
  %i.cq = getelementptr i8, ptr %i.ay, i64 %.050116
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = and i8 %i.cr, %i.cp
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !295
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.050116
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !80
  %i.cv = or disjoint i64 %.050116, 1             ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = getelementptr i8, ptr %i.ay, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !80
  %i.da = and i8 %i.cz, %i.cx
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !295
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !80
  %i.dd = add nuw i64 %.050116, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !955

bb.l:                                             ; preds = %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit82
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !963
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !963
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.di = load float, ptr %i.dh, align 4, !tbaa !384
  %i.dj = fmul float %i.k, %i.di
  %i.dk = fmul float %i.i, %i.dj
  %i.dl = fmul float %i.i, %i.cl
  %i.dm = fadd float %i.dl, %i.dk
  %i.dn = load float, ptr %i.cn, align 4, !tbaa !89
  %i.do = fcmp ugt float %i.dm, %i.dn
  br i1 %i.do, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !964
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !964
  br label %bb.v

.thread:                                          ; preds = %bb.l, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit82
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !960
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !389 ; 2 uses
  %.not52 = icmp eq i8 %i.dv, 0
  br i1 %.not52, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !390, !range !300, !noundef !301
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !295 ; 2 uses
  %i.eb = zext i8 %i.dv to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.p, 64               ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.o, %..loopexit_crit_edge.us.i
  %i.ec = phi i64 [ %i.eo, %..loopexit_crit_edge.us.i ], [ 8, %bb.o ] ; 3 uses
  %.047.us.i = phi i64 [ %i.en, %..loopexit_crit_edge.us.i ], [ 0, %bb.o ]
  %.03546.us.i = phi i64 [ %i.ec, %..loopexit_crit_edge.us.i ], [ 0, %bb.o ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.03546.us.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.ea, i64 %.03546.us.i
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.en, %bb.p ]
  %i.ef = mul i64 %indvars.iv.i, %i.q
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.ef
  %i.eg = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.eh = and i64 %i.eg, %i.ee
  %i.ei = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.el = shl i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = add i64 %.144.us.i, %i.em               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next.i, %i.eb
  br i1 %exitcond.not.i83, label %..loopexit_crit_edge.us.i, label %bb.p, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.p
  %i.eo = add nuw nsw i64 %i.ec, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.eo, %i.q
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.o
  %.035.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.ec, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.o ], [ %i.en, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not110 = icmp samesign ult i64 %.035.lcssa.i, %i.q
  br i1 %.not110, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.ez, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.fa, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.13654.us.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.ea, i64 %.13654.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.q ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.ez, %bb.q ]
  %i.er = mul i64 %indvars.iv72.i, %i.q
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.er
  %i.es = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.et = and i8 %i.es, %i.eq
  %i.eu = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.et)
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.ex = shl i32 %i.ev, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = add i64 %.353.us.i, %i.ey               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.eb
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.q, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.q
  %i.fa = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.fa, %i.q
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.ez, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i87, label %.lr.ph.i85.preheader

.lr.ph.i85.preheader:                             ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.fb = tail call i64 @llvm.umax.i64(i64 %i.q, i64 15)
  %i.fc = add nsw i64 %i.fb, -8                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fc, 24
  br i1 %min.iters.check, label %.lr.ph.i85.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i85.preheader
  %n.vec = and i64 %i.fe, 4611686018427387900     ; 3 uses
  %i.ff = shl i64 %n.vec, 3                       ; 3 uses
  %i.fg = or disjoint i64 %i.ff, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fm, %vector.body ]
  %vec.phi155 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fn, %vector.body ]
  %i.fh = shl i64 %index, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !92
  %wide.load156 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !92
  %i.fk = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.fl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load156)
  %i.fm = add <2 x i64> %i.fk, %vec.phi           ; 2 uses
  %i.fn = add <2 x i64> %i.fl, %vec.phi155        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.preheader.i87, label %.lr.ph.i85.preheader177

.lr.ph.i85.preheader177:                          ; preds = %.lr.ph.i85.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i85.preheader ], [ %i.fg, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i85.preheader ], [ %i.fp, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i85.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph.i85

.preheader.i87:                                   ; preds = %.lr.ph.i85, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.ff, %middle.block ], [ %i.gf, %.lr.ph.i85 ] ; 5 uses
  %.0.lcssa.i88 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.fp, %middle.block ], [ %i.gj, %.lr.ph.i85 ] ; 3 uses
  %i.fq = icmp samesign ult i64 %.016.lcssa.i, %i.q
  br i1 %i.fq, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i87
  %i.fr = sub nuw i64 %i.q, %.016.lcssa.i         ; 3 uses
  %min.iters.check159 = icmp samesign ult i64 %i.fr, 4
  br i1 %min.iters.check159, label %.lr.ph26.i.preheader174, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec161 = and i64 %i.fr, 2305843009213693948  ; 3 uses
  %i.fs = add i64 %.016.lcssa.i, %n.vec161
  %i.ft = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i88, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.016.lcssa.i
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <2 x i64> [ %i.ft, %vector.ph160 ], [ %i.gb, %vector.body162 ]
  %vec.phi165 = phi <2 x i64> [ zeroinitializer, %vector.ph160 ], [ %i.gc, %vector.body162 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %index163 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %wide.load166 = load <2 x i8>, ptr %i.fv, align 1, !tbaa !80
  %wide.load167 = load <2 x i8>, ptr %i.fw, align 1, !tbaa !80
  %i.fx = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load166)
  %i.fy = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load167)
  %i.fz = zext nneg <2 x i8> %i.fx to <2 x i64>
  %i.ga = zext nneg <2 x i8> %i.fy to <2 x i64>
  %i.gb = add <2 x i64> %vec.phi164, %i.fz        ; 2 uses
  %i.gc = add <2 x i64> %vec.phi165, %i.ga        ; 2 uses
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.gd, label %middle.block169, label %vector.body162, !llvm.loop !957

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <2 x i64> %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %i.fr, %n.vec161
  br i1 %cmp.n171, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader174

.lr.ph26.i.preheader174:                          ; preds = %.lr.ph26.i.preheader, %middle.block169
  %.125.i.ph = phi i64 [ %.0.lcssa.i88, %.lr.ph26.i.preheader ], [ %i.ge, %middle.block169 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.fs, %middle.block169 ]
  br label %.lr.ph26.i

.lr.ph.i85:                                       ; preds = %.lr.ph.i85.preheader177, %.lr.ph.i85
  %i.gf = phi i64 [ %i.gk, %.lr.ph.i85 ], [ %.ph, %.lr.ph.i85.preheader177 ] ; 3 uses
  %.022.i = phi i64 [ %i.gj, %.lr.ph.i85 ], [ %.022.i.ph, %.lr.ph.i85.preheader177 ]
  %.01621.i = phi i64 [ %i.gf, %.lr.ph.i85 ], [ %.01621.i.ph, %.lr.ph.i85.preheader177 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.01621.i
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !92
  %i.gi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gh)
  %i.gj = add i64 %i.gi, %.022.i                  ; 2 uses
  %i.gk = add nuw nsw i64 %i.gf, 8                ; 2 uses
  %.not.i86 = icmp samesign ugt i64 %i.gk, %i.q
  br i1 %.not.i86, label %.preheader.i87, label %.lr.ph.i85, !llvm.loop !958

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader174, %.lr.ph26.i
  %.125.i = phi i64 [ %i.gp, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader174 ]
  %.11724.i = phi i64 [ %i.gq, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader174 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.11724.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !80
  %i.gn = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.gm)
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = add i64 %.125.i, %i.go                  ; 2 uses
  %i.gq = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %i.gq, %i.q
  br i1 %exitcond.not.i91, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !959

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block169, %.preheader.i87
  %.1.lcssa.i90 = phi i64 [ %.0.lcssa.i88, %.preheader.i87 ], [ %i.ge, %middle.block169 ], [ %i.gp, %.lr.ph26.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !391
  %i.gt = uitofp i64 %.1.lcssa.i90 to float
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !392
  %i.gw = uitofp i64 %.2.lcssa.i to float
  %i.gx = fmul float %i.gv, %i.gw
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gt, float %i.gx)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106

bb.r:                                             ; preds = %bb.n, %.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !87
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106, label %.lr.ph27.i93

.lr.ph27.i93:                                     ; preds = %bb.r, %._crit_edge.i97
  %.01625.i94 = phi i64 [ %i.hh, %._crit_edge.i97 ], [ 0, %bb.r ] ; 3 uses
  %.01724.i95 = phi float [ %.1.lcssa.i98, %._crit_edge.i97 ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %i.hb = shl nuw i64 %.01625.i94, 3              ; 4 uses
  %i.hc = add nuw i64 %i.hb, 8
  %.sroa.speculated.i96 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.hc)
  %i.hd = icmp ugt i64 %i.b, %i.hb
  br i1 %i.hd, label %.lr.ph.i101, label %._crit_edge.i97

.lr.ph.i101:                                      ; preds = %.lr.ph27.i93
  %i.he = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.01625.i94
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !80
  %i.hg = zext i8 %i.hf to i32
  br label %bb.s

._crit_edge.i97:                                  ; preds = %bb.u, %.lr.ph27.i93
  %.1.lcssa.i98 = phi float [ %.01724.i95, %.lr.ph27.i93 ], [ %.2.i105, %bb.u ] ; 2 uses
  %i.hh = add nuw nsw i64 %.01625.i94, 1          ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %i.hh, %i.q
  br i1 %exitcond.not.i99, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106, label %.lr.ph27.i93, !llvm.loop !33

bb.s:                                             ; preds = %bb.u, %.lr.ph.i101
  %.023.i102 = phi i64 [ %i.hb, %.lr.ph.i101 ], [ %i.hp, %bb.u ] ; 3 uses
  %.122.i103 = phi float [ %.01724.i95, %.lr.ph.i101 ], [ %.2.i105, %bb.u ] ; 2 uses
  %i.hi = sub nuw i64 %.023.i102, %i.hb
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = shl nuw i32 1, %i.hj
  %i.hl = and i32 %i.hk, %i.hg
  %.not.i104 = icmp eq i32 %i.hl, 0
  br i1 %.not.i104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.023.i102
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !89
  %i.ho = fadd float %.122.i103, %i.hn
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i105 = phi float [ %i.ho, %bb.t ], [ %.122.i103, %bb.s ] ; 2 uses
  %i.hp = add nuw i64 %.023.i102, 1               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %.sroa.speculated.i96
  br i1 %i.hq, label %bb.s, label %._crit_edge.i97, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106: ; preds = %._crit_edge.i97, %bb.r, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i100.sink = phi float [ %i.gy, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.r ], [ %.1.lcssa.i98, %._crit_edge.i97 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !241
  %i.ht = fmul float %i.k, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !383
  %i.hw = fneg float %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i100.sink, float 2.000000e+00, float %i.hw)
  %i.hy = fmul float %i.ht, %i.hx
  %i.hz = fadd float %i.cl, %i.hy
  %i.ia = fmul float %i.i, %i.hz
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106
  %.1 = phi float [ %i.ia, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit106 ], [ -inf, %bb.m ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !393  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  tail call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %1, ptr noundef %i.g)
  %i.h = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef %1, i64 noundef %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %i.h, ptr %i.i, align 8, !tbaa !973
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !87   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %i.e, %i.q
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.e, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  tail call void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EE15project_forwardEPKfPf(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef %1, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !974
  %i.y = uitofp i64 %i.x to float
  %sqrt = tail call nnan ninf float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv nnan float 1.000000e+00, %sqrt      ; 2 uses
  %.not92 = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not92, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !394
  br label %._crit_edge84

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !87  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !89
  %wide.load114 = load <4 x float>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = fmul <4 x float> %broadcast.splat, %wide.load
  %i.af = fmul <4 x float> %broadcast.splat, %wide.load114
  store <4 x float> %i.ae, ptr %i.ac, align 4, !tbaa !89
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !965

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
end_hunk_5
begin_hunk_6_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #24, !inline_history !207
  br label %_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit

_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !393  ; 7 uses
  %i.c = uitofp i64 %i.b to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !980
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !981
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !203 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !204 ; 2 uses
  %.not62 = icmp eq i64 %i.b, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !179  ; 2 uses
  %i.p = shl i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !982
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.041.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.au, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !243  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04161 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.au, %bb.b ]
  %.04260 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.b ] ; 4 uses
  %i.w = lshr i64 %.04260, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %i.x = trunc i64 %.04260 to i32
  %i.y = and i32 %i.x, 7                          ; 2 uses
  %i.z = shl nuw nsw i32 1, %i.y                  ; 2 uses
  %i.aa = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ab = zext i8 %i.aa to i32
  %i.ac = lshr i32 %i.ab, %i.y
  %i.ad = and i32 %i.ac, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.o
  %i.af = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %i.z, %i.ag
  %.not.1.i = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.p
  %i.aj = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.ak = zext i8 %i.aj to i32
  %i.al = and i32 %i.z, %i.ak
  %.not.2.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.2.i, i64 0, i64 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.04260
  %i.ao = load float, ptr %i.an, align 4, !tbaa !89
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.am
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ai
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ae
  %i.as = load float, ptr %i.ar, align 4, !tbaa !89
  %i.at = fmul float %i.ao, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.d, float %.04161) ; 2 uses
  %i.av = add nuw i64 %.04260, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !975

bb.c:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !983
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !983
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ba = load float, ptr %i.az, align 4, !tbaa !395
  %i.bb = fmul float %i.m, %i.ba
  %i.bc = fmul float %i.k, %i.bb
  %i.bd = fmul float %i.k, %.041.lcssa
  %i.be = fadd float %i.bd, %i.bc
  %i.bf = load float, ptr %i.v, align 4, !tbaa !89
  %i.bg = fcmp ugt float %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !984
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !984
  br label %bb.m

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !396 ; 2 uses
  %.not44 = icmp eq i8 %i.bl, 0
  br i1 %.not44, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !397, !range !300, !noundef !301
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bp = add i64 %i.b, 7                         ; 2 uses
  %i.bq = lshr i64 %i.bp, 3                       ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !295 ; 2 uses
  %i.bt = zext i8 %i.bl to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.bp, 64              ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.f, %..loopexit_crit_edge.us.i
  %i.bu = phi i64 [ %i.cg, %..loopexit_crit_edge.us.i ], [ 8, %bb.f ] ; 3 uses
  %.047.us.i = phi i64 [ %i.cf, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ]
  %.03546.us.i = phi i64 [ %i.bu, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03546.us.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.bs, i64 %.03546.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.cf, %bb.g ]
  %i.bx = mul i64 %indvars.iv.i, %i.bq
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.bx
  %i.by = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.bz = and i64 %i.by, %i.bw
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cd = shl i32 %i.cb, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = add i64 %.144.us.i, %i.ce               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bt
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.g, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.g
  %i.cg = add nuw nsw i64 %i.bu, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.cg, %i.bq
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.f
  %.035.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.bu, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.cf, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not54 = icmp samesign ult i64 %.035.lcssa.i, %i.bq
  br i1 %.not54, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.cr, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.cs, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %.13654.us.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.bs, i64 %.13654.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.h ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.cr, %bb.h ]
  %i.cj = mul i64 %indvars.iv72.i, %i.bq
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.cj
  %i.ck = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.cl = and i8 %i.ck, %i.ci
  %i.cm = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cl)
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.cp = shl i32 %i.cn, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add i64 %.353.us.i, %i.cq               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.bt
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.h, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.cs = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.cs, %i.bq
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.cr, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i46, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 15)
  %i.cu = add nsw i64 %i.ct, -8                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.cx = shl i64 %n.vec, 3                       ; 3 uses
  %i.cy = or disjoint i64 %i.cx, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %i.cz = shl i64 %index, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x i64>, ptr %i.da, align 8, !tbaa !92
  %wide.load97 = load <2 x i64>, ptr %i.db, align 8, !tbaa !92
  %i.dc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load97)
  %i.de = add <2 x i64> %i.dc, %vec.phi           ; 2 uses
  %i.df = add <2 x i64> %i.dd, %vec.phi96         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !976

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.df, %i.de
  %i.dh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.preheader.i46, label %.lr.ph.i.preheader118

.lr.ph.i.preheader118:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.cy, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dh, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i

.preheader.i46:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.cx, %middle.block ], [ %i.dx, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i47 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dh, %middle.block ], [ %i.eb, %.lr.ph.i ] ; 3 uses
  %i.di = icmp samesign ult i64 %.016.lcssa.i, %i.bq
  br i1 %i.di, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i46
  %i.dj = sub nuw i64 %i.bq, %.016.lcssa.i        ; 3 uses
  %min.iters.check100 = icmp samesign ult i64 %i.dj, 4
  br i1 %min.iters.check100, label %.lr.ph26.i.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec102 = and i64 %i.dj, 2305843009213693948  ; 3 uses
  %i.dk = add i64 %.016.lcssa.i, %n.vec102
  %i.dl = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i47, i64 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.016.lcssa.i
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %vec.phi105 = phi <2 x i64> [ %i.dl, %vector.ph101 ], [ %i.dt, %vector.body103 ]
  %vec.phi106 = phi <2 x i64> [ zeroinitializer, %vector.ph101 ], [ %i.du, %vector.body103 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index104 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %wide.load107 = load <2 x i8>, ptr %i.dn, align 1, !tbaa !80
  %wide.load108 = load <2 x i8>, ptr %i.do, align 1, !tbaa !80
  %i.dp = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load107)
  %i.dq = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load108)
  %i.dr = zext nneg <2 x i8> %i.dp to <2 x i64>
  %i.ds = zext nneg <2 x i8> %i.dq to <2 x i64>
  %i.dt = add <2 x i64> %vec.phi105, %i.dr        ; 2 uses
  %i.du = add <2 x i64> %vec.phi106, %i.ds        ; 2 uses
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.dv, label %middle.block110, label %vector.body103, !llvm.loop !977

middle.block110:                                  ; preds = %vector.body103
  %bin.rdx111 = add <2 x i64> %i.du, %i.dt
  %i.dw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx111) ; 2 uses
  %cmp.n112 = icmp eq i64 %i.dj, %n.vec102
  br i1 %cmp.n112, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader115

.lr.ph26.i.preheader115:                          ; preds = %.lr.ph26.i.preheader, %middle.block110
  %.125.i.ph = phi i64 [ %.0.lcssa.i47, %.lr.ph26.i.preheader ], [ %i.dw, %middle.block110 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.dk, %middle.block110 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader118, %.lr.ph.i
  %i.dx = phi i64 [ %i.ec, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader118 ] ; 3 uses
  %.022.i = phi i64 [ %i.eb, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader118 ]
  %.01621.i = phi i64 [ %i.dx, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader118 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01621.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !92
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dz)
  %i.eb = add i64 %i.ea, %.022.i                  ; 2 uses
  %i.ec = add nuw nsw i64 %i.dx, 8                ; 2 uses
  %.not.i45 = icmp samesign ugt i64 %i.ec, %i.bq
  br i1 %.not.i45, label %.preheader.i46, label %.lr.ph.i, !llvm.loop !978

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader115, %.lr.ph26.i
  %.125.i = phi i64 [ %i.eh, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader115 ]
  %.11724.i = phi i64 [ %i.ei, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader115 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 %.11724.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !80
  %i.ef = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ee)
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = add i64 %.125.i, %i.eg                  ; 2 uses
  %i.ei = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.ei, %i.bq
  br i1 %exitcond.not.i48, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !979

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block110, %.preheader.i46
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i47, %.preheader.i46 ], [ %i.dw, %middle.block110 ], [ %i.eh, %.lr.ph26.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !398
  %i.el = uitofp i64 %.1.lcssa.i to float
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.en = load float, ptr %i.em, align 8, !tbaa !399
  %i.eo = uitofp i64 %.2.lcssa.i to float
  %i.ep = fmul float %i.en, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.el, float %i.ep)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit

bb.i:                                             ; preds = %bb.e, %.thread
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.et = add i64 %i.b, 7
  %i.eu = lshr i64 %i.et, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.eu, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.i, %._crit_edge.i
  %.01625.i = phi i64 [ %i.fb, %._crit_edge.i ], [ 0, %bb.i ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i49, %._crit_edge.i ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.ev = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.ew = add nuw i64 %i.ev, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.ew)
  %i.ex = icmp ugt i64 %i.b, %i.ev
  br i1 %i.ex, label %.lr.ph.i51, label %._crit_edge.i

.lr.ph.i51:                                       ; preds = %.lr.ph27.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01625.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !80
  %i.fa = zext i8 %i.ez to i32
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.l, %.lr.ph27.i
  %.1.lcssa.i49 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fb = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %i.fb, %i.eu
  br i1 %exitcond.not.i50, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.l, %.lr.ph.i51
  %.023.i = phi i64 [ %i.ev, %.lr.ph.i51 ], [ %i.fj, %bb.l ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i51 ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fc = sub nuw i64 %.023.i, %i.ev
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = and i32 %i.fe, %i.fa
  %.not.i52 = icmp eq i32 %i.ff, 0
  br i1 %.not.i52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.023.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !89
  %i.fi = fadd float %.122.i, %i.fh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi float [ %i.fi, %bb.k ], [ %.122.i, %bb.j ] ; 2 uses
  %i.fj = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %.sroa.speculated.i
  br i1 %i.fk, label %bb.j, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.i, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i.sink = phi float [ %i.eq, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.i ], [ %.1.lcssa.i49, %._crit_edge.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !245
  %i.fn = fmul float %i.m, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !394
  %i.fq = fneg float %i.fp
  %i.fr = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i.sink, float 2.000000e+00, float %i.fq)
  %i.fs = fmul float %i.fn, %i.fr
  %i.ft = fadd float %.041.lcssa, %i.fs
  %i.fu = fmul float %i.k, %i.ft
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit
  %.1 = phi float [ %i.fu, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ], [ -inf, %bb.d ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !396
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !397
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !250
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !400  ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  tail call void @_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %1, ptr noundef %i.g)
  %i.h = tail call noundef float @_ZN5faiss15fvec_norm_L2sqrEPKfm(ptr noundef %1, i64 noundef %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %i.h, ptr %i.i, align 8, !tbaa !993
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !87   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.e, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %i.e, %i.q
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.e, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  tail call void @_ZNK5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EE15project_forwardEPKfPf(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef %1, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !994
  %i.y = uitofp i64 %i.x to float
  %sqrt = tail call nnan ninf float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv nnan float 1.000000e+00, %sqrt      ; 2 uses
  %.not92 = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not92, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !401
  br label %._crit_edge84

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !87  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !89
  %wide.load114 = load <4 x float>, ptr %i.ad, align 4, !tbaa !89
  %i.ae = fmul <4 x float> %broadcast.splat, %wide.load
  %i.af = fmul <4 x float> %broadcast.splat, %wide.load114
  store <4 x float> %i.ae, ptr %i.ac, align 4, !tbaa !89
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !985
end_hunk_6
begin_hunk_7_@_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev:bb.a
_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !400  ; 7 uses
  %i.c = uitofp i64 %i.b to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1001
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !203 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !204 ; 2 uses
  %.not62 = icmp eq i64 %i.b, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8, !tbaa !188  ; 3 uses
  %i.p = shl i64 %i.o, 1
  %i.q = mul i64 %i.o, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1002
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.041.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ba, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !247  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04161 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.b ]
  %.04260 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.b ] ; 4 uses
  %i.x = lshr i64 %.04260, 3
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.x ; 4 uses
  %i.y = trunc i64 %.04260 to i32
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %i.aa = shl nuw nsw i32 1, %i.z                 ; 3 uses
  %i.ab = load i8, ptr %invariant.gep.i, align 1, !tbaa !80
  %i.ac = zext i8 %i.ab to i32
  %i.ad = lshr i32 %i.ac, %i.z
  %i.ae = and i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.o
  %i.ag = load i8, ptr %gep.1.i, align 1, !tbaa !80
  %i.ah = zext i8 %i.ag to i32
  %i.ai = and i32 %i.aa, %i.ah
  %.not.1.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not.1.i, i64 0, i64 2
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.p
  %i.ak = load i8, ptr %gep.2.i, align 1, !tbaa !80
  %i.al = zext i8 %i.ak to i32
  %i.am = and i32 %i.aa, %i.al
  %.not.2.i = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not.2.i, i64 0, i64 4
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.q
  %i.ao = load i8, ptr %gep.3.i, align 1, !tbaa !80
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i32 %i.aa, %i.ap
  %.not.3.i = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.3.i, i64 0, i64 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.04260
  %i.at = load float, ptr %i.as, align 4, !tbaa !89
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.an
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aj
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.af
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !89
  %i.az = fmul float %i.at, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.d, float %.04161) ; 2 uses
  %i.bb = add nuw i64 %.04260, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !995

bb.c:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1003
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !1003
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !402
  %i.bh = fmul float %i.m, %i.bg
  %i.bi = fmul float %i.k, %i.bh
  %i.bj = fmul float %i.k, %.041.lcssa
  %i.bk = fadd float %i.bj, %i.bi
  %i.bl = load float, ptr %i.w, align 4, !tbaa !89
  %i.bm = fcmp ugt float %i.bk, %i.bl
  br i1 %i.bm, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !1004
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !1004
  br label %bb.m

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !403 ; 2 uses
  %.not44 = icmp eq i8 %i.br, 0
  br i1 %.not44, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !404, !range !300, !noundef !301
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bv = add i64 %i.b, 7                         ; 2 uses
  %i.bw = lshr i64 %i.bv, 3                       ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !295 ; 2 uses
  %i.bz = zext i8 %i.br to i64                    ; 2 uses
  %.not45.i = icmp ult i64 %i.bv, 64              ; 2 uses
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.f, %..loopexit_crit_edge.us.i
  %i.ca = phi i64 [ %i.cm, %..loopexit_crit_edge.us.i ], [ 8, %bb.f ] ; 3 uses
  %.047.us.i = phi i64 [ %i.cl, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ]
  %.03546.us.i = phi i64 [ %i.ca, %..loopexit_crit_edge.us.i ], [ 0, %bb.f ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.03546.us.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !92
  %invariant.gep.us.i = getelementptr i8, ptr %i.by, i64 %.03546.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.cl, %bb.g ]
  %i.cd = mul i64 %indvars.iv.i, %i.bw
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.cd
  %i.ce = load i64, ptr %gep.us.i, align 8, !tbaa !92
  %i.cf = and i64 %i.ce, %i.cc
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cf)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = add i64 %.144.us.i, %i.ck               ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bz
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.g, !llvm.loop !29

..loopexit_crit_edge.us.i:                        ; preds = %bb.g
  %i.cm = add nuw nsw i64 %i.ca, 8                ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.cm, %i.bw
  br i1 %.not.us.i, label %.preheader.i, label %.lr.ph.us.i, !llvm.loop !30

.preheader.i:                                     ; preds = %..loopexit_crit_edge.us.i, %bb.f
  %.035.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.ca, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.cl, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.not54 = icmp samesign ult i64 %.035.lcssa.i, %i.bw
  br i1 %.not54, label %.lr.ph.us61.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.cx, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.cy, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.13654.us.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %invariant.gep.us59.i = getelementptr i8, ptr %i.by, i64 %.13654.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.h ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.cx, %bb.h ]
  %i.cp = mul i64 %indvars.iv72.i, %i.bw
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.cp
  %i.cq = load i8, ptr %gep.us60.i, align 1, !tbaa !80
  %i.cr = and i8 %i.cq, %i.co
  %i.cs = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cr)
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.cv = shl i32 %i.ct, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add i64 %.353.us.i, %i.cw               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.bz
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.h, !llvm.loop !31

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.cy = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.cy, %i.bw
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !32

_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ %i.cx, %._crit_edge.us.i ]
  br i1 %.not45.i, label %.preheader.i46, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 15)
  %i.da = add nsw i64 %i.cz, -8                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.da, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.dc, 4611686018427387900     ; 3 uses
  %i.dd = shl i64 %n.vec, 3                       ; 3 uses
  %i.de = or disjoint i64 %i.dd, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.df = shl i64 %index, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !92
  %wide.load97 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !92
  %i.di = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load97)
  %i.dk = add <2 x i64> %i.di, %vec.phi           ; 2 uses
  %i.dl = add <2 x i64> %i.dj, %vec.phi96         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !996

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %.preheader.i46, label %.lr.ph.i.preheader118

.lr.ph.i.preheader118:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ 8, %.lr.ph.i.preheader ], [ %i.de, %middle.block ]
  %.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dn, %middle.block ]
  %.01621.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i

.preheader.i46:                                   ; preds = %.lr.ph.i, %middle.block, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.016.lcssa.i = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dd, %middle.block ], [ %i.ed, %.lr.ph.i ] ; 5 uses
  %.0.lcssa.i47 = phi i64 [ 0, %_ZN5faiss6rabitq23bitwise_and_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.dn, %middle.block ], [ %i.eh, %.lr.ph.i ] ; 3 uses
  %i.do = icmp samesign ult i64 %.016.lcssa.i, %i.bw
  br i1 %i.do, label %.lr.ph26.i.preheader, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i46
  %i.dp = sub nuw i64 %i.bw, %.016.lcssa.i        ; 3 uses
  %min.iters.check100 = icmp samesign ult i64 %i.dp, 4
  br i1 %min.iters.check100, label %.lr.ph26.i.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec102 = and i64 %i.dp, 2305843009213693948  ; 3 uses
  %i.dq = add i64 %.016.lcssa.i, %n.vec102
  %i.dr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.lcssa.i47, i64 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 %.016.lcssa.i
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %vec.phi105 = phi <2 x i64> [ %i.dr, %vector.ph101 ], [ %i.dz, %vector.body103 ]
  %vec.phi106 = phi <2 x i64> [ zeroinitializer, %vector.ph101 ], [ %i.ea, %vector.body103 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index104 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %wide.load107 = load <2 x i8>, ptr %i.dt, align 1, !tbaa !80
  %wide.load108 = load <2 x i8>, ptr %i.du, align 1, !tbaa !80
  %i.dv = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load107)
  %i.dw = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load108)
  %i.dx = zext nneg <2 x i8> %i.dv to <2 x i64>
  %i.dy = zext nneg <2 x i8> %i.dw to <2 x i64>
  %i.dz = add <2 x i64> %vec.phi105, %i.dx        ; 2 uses
  %i.ea = add <2 x i64> %vec.phi106, %i.dy        ; 2 uses
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.eb, label %middle.block110, label %vector.body103, !llvm.loop !997

middle.block110:                                  ; preds = %vector.body103
  %bin.rdx111 = add <2 x i64> %i.ea, %i.dz
  %i.ec = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx111) ; 2 uses
  %cmp.n112 = icmp eq i64 %i.dp, %n.vec102
  br i1 %cmp.n112, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i.preheader115

.lr.ph26.i.preheader115:                          ; preds = %.lr.ph26.i.preheader, %middle.block110
  %.125.i.ph = phi i64 [ %.0.lcssa.i47, %.lr.ph26.i.preheader ], [ %i.ec, %middle.block110 ]
  %.11724.i.ph = phi i64 [ %.016.lcssa.i, %.lr.ph26.i.preheader ], [ %i.dq, %middle.block110 ]
  br label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader118, %.lr.ph.i
  %i.ed = phi i64 [ %i.ei, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader118 ] ; 3 uses
  %.022.i = phi i64 [ %i.eh, %.lr.ph.i ], [ %.022.i.ph, %.lr.ph.i.preheader118 ]
  %.01621.i = phi i64 [ %i.ed, %.lr.ph.i ], [ %.01621.i.ph, %.lr.ph.i.preheader118 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01621.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !92
  %i.eg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ef)
  %i.eh = add i64 %i.eg, %.022.i                  ; 2 uses
  %i.ei = add nuw nsw i64 %i.ed, 8                ; 2 uses
  %.not.i45 = icmp samesign ugt i64 %i.ei, %i.bw
  br i1 %.not.i45, label %.preheader.i46, label %.lr.ph.i, !llvm.loop !998

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader115, %.lr.ph26.i
  %.125.i = phi i64 [ %i.en, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader115 ]
  %.11724.i = phi i64 [ %i.eo, %.lr.ph26.i ], [ %.11724.i.ph, %.lr.ph26.i.preheader115 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 %.11724.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !80
  %i.el = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ek)
  %i.em = zext nneg i8 %i.el to i64
  %i.en = add i64 %.125.i, %i.em                  ; 2 uses
  %i.eo = add nuw i64 %.11724.i, 1                ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.eo, %i.bw
  br i1 %exitcond.not.i48, label %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit, label %.lr.ph26.i, !llvm.loop !999

_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit: ; preds = %.lr.ph26.i, %middle.block110, %.preheader.i46
  %.1.lcssa.i = phi i64 [ %.0.lcssa.i47, %.preheader.i46 ], [ %i.ec, %middle.block110 ], [ %i.en, %.lr.ph26.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !405
  %i.er = uitofp i64 %.1.lcssa.i to float
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.et = load float, ptr %i.es, align 8, !tbaa !406
  %i.eu = uitofp i64 %.2.lcssa.i to float
  %i.ev = fmul float %i.et, %i.eu
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.er, float %i.ev)
  br label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit

bb.i:                                             ; preds = %bb.e, %.thread
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !87
  %i.ez = add i64 %i.b, 7
  %i.fa = lshr i64 %i.ez, 3                       ; 2 uses
  %.not30.i = icmp eq i64 %i.fa, 0
  br i1 %.not30.i, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.i, %._crit_edge.i
  %.01625.i = phi i64 [ %i.fh, %._crit_edge.i ], [ 0, %bb.i ] ; 3 uses
  %.01724.i = phi float [ %.1.lcssa.i49, %._crit_edge.i ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.fb = shl nuw i64 %.01625.i, 3                ; 4 uses
  %i.fc = add nuw i64 %i.fb, 8
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.fc)
  %i.fd = icmp ugt i64 %i.b, %i.fb
  br i1 %i.fd, label %.lr.ph.i51, label %._crit_edge.i

.lr.ph.i51:                                       ; preds = %.lr.ph27.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01625.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %i.fg = zext i8 %i.ff to i32
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.l, %.lr.ph27.i
  %.1.lcssa.i49 = phi float [ %.01724.i, %.lr.ph27.i ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fh = add nuw nsw i64 %.01625.i, 1            ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %i.fh, %i.fa
  br i1 %exitcond.not.i50, label %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit, label %.lr.ph27.i, !llvm.loop !33

bb.j:                                             ; preds = %bb.l, %.lr.ph.i51
  %.023.i = phi i64 [ %i.fb, %.lr.ph.i51 ], [ %i.fp, %bb.l ] ; 3 uses
  %.122.i = phi float [ %.01724.i, %.lr.ph.i51 ], [ %.2.i, %bb.l ] ; 2 uses
  %i.fi = sub nuw i64 %.023.i, %i.fb
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = and i32 %i.fk, %i.fg
  %.not.i52 = icmp eq i32 %i.fl, 0
  br i1 %.not.i52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.023.i
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !89
  %i.fo = fadd float %.122.i, %i.fn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.i = phi float [ %i.fo, %bb.k ], [ %.122.i, %bb.j ] ; 2 uses
  %i.fp = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %.sroa.speculated.i
  br i1 %i.fq, label %bb.j, label %._crit_edge.i, !llvm.loop !34

_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit: ; preds = %._crit_edge.i, %bb.i, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit
  %.017.lcssa.i.sink = phi float [ %i.ew, %_ZN5faiss6rabitq8popcountILNS_9SIMDLevelE0EEEmPKhm.exit ], [ 0.000000e+00, %bb.i ], [ %.1.lcssa.i49, %._crit_edge.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !249
  %i.ft = fmul float %i.m, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !401
  %i.fw = fneg float %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %.017.lcssa.i.sink, float 2.000000e+00, float %i.fw)
  %i.fy = fmul float %i.ft, %i.fx
  %i.fz = fadd float %.041.lcssa, %i.fy
  %i.ga = fmul float %i.k, %i.fz
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit
  %.1 = phi float [ %i.ga, %_ZN5faiss16scalar_quantizer17turboq_masked_sumILNS_9SIMDLevelE0EEEfPKfPKhm.exit ], [ -inf, %bb.d ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE9configureEhb(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %1, ptr %i.b, align 8, !tbaa !403
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 %i.a, ptr %i.c, align 1, !tbaa !404
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE23set_prescreen_thresholdEPKfb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.b, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.a, ptr %i.c, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EE25clear_prescreen_thresholdEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.a, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5faiss16scalar_quantizer29sq_select_InvertedListScannerILNS_9SIMDLevelE0EEEPNS_19InvertedListScannerENS_15ScalarQuantizer13QuantizerTypeENS_10MetricTypeEmmRKSt6vectorIfSaIfEEPKNS_5IndexEbPKNS_10IDSelectorEb(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.4", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.4", align 1 ; 5 uses
  %i.a = alloca i64, align 8                      ; 44 uses
  %i.b = alloca i64, align 8                      ; 44 uses
  %i.c = alloca ptr, align 8                      ; 18 uses
  %i.d = alloca i8, align 1                       ; 46 uses
  %i.e = alloca ptr, align 8                      ; 46 uses
  %i.f = alloca i8, align 1                       ; 44 uses
  %13 = alloca %class.anon, align 8               ; 20 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.4", align 1 ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !92
  store i64 %3, ptr %i.b, align 8, !tbaa !92
  store ptr %5, ptr %i.c, align 8, !tbaa !408
  %i.g = zext i1 %6 to i8
  store i8 %i.g, ptr %i.d, align 1, !tbaa !409
  store ptr %7, ptr %i.e, align 8, !tbaa !411
  %i.h = zext i1 %8 to i8
  store i8 %i.h, ptr %i.f, align 1, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %i.a, ptr %13, align 8, !tbaa !1005
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !1006
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.b, ptr %i.j, align 8, !tbaa !1005
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.c, ptr %i.k, align 8, !tbaa !1007
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.d, ptr %i.l, align 8, !tbaa !1008
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.e, ptr %i.m, align 8, !tbaa !1009
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.f, ptr %i.n, align 8, !tbaa !1008
  switch i32 %1, label %bb.cy [
    i32 1, label %bb.b
    i32 0, label %bb.az
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.at [
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 6, label %bb.k
    i32 4, label %bb.m
    i32 7, label %bb.o
    i32 5, label %bb.q
    i32 8, label %bb.s
    i32 9, label %bb.u
    i32 10, label %bb.v
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.y
    i32 14, label %bb.z
    i32 19, label %bb.aa
    i32 20, label %bb.ab
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 24, label %bb.ag
    i32 25, label %bb.ai
    i32 26, label %bb.ak
    i32 15, label %bb.al
    i32 16, label %bb.an
    i32 17, label %bb.ap
    i32 18, label %bb.ar
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #25 ; 20 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !92
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !408
  %i.t = load i8, ptr %i.d, align 1, !tbaa !409, !range !300, !noundef !301
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !411
  %i.v = load i8, ptr %i.f, align 1, !tbaa !409, !range !300, !noundef !301
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 -1, ptr %i.w, align 8, !tbaa !419
end_hunk_7
