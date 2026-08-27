Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanAnalysis?download=true
inline.NumInlined: 3821
inline.NumDeleted: 2022
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm15VPRegisterUsageaSERKS0_:bb.a
  %bound197 = icmp ult ptr %i.bh, %scevgep90
  %found.conflict98 = and i1 %bound096, %bound197
  %bound099 = icmp ult ptr %scevgep92, %scevgep95
  %bound1100 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %found.conflict98, %found.conflict101
  br i1 %conflict.rdx102, label %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck89
  %n.vec106 = and i64 %i.bd, 4294967292           ; 3 uses
  %i.bl = and i64 %i.bd, 3
  %i.bm = shl nuw nsw i64 %n.vec106, 3            ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bm
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next121, %vector.body107 ] ; 2 uses
  %i.bp = shl i64 %index108, 3                    ; 3 uses
  %i.bq = or disjoint i64 %i.bp, 16               ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.bi, i64 %i.bp
  %next.gep110 = getelementptr i8, ptr %i.bi, i64 %i.bq
  %next.gep111 = getelementptr i8, ptr %i.bh, i64 %i.bp
  %next.gep112 = getelementptr i8, ptr %i.bh, i64 %i.bq
  %wide.vec113 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !152
  %wide.vec116 = load <4 x i32>, ptr %next.gep112, align 4, !tbaa !152
  store <4 x i32> %wide.vec113, ptr %next.gep109, align 4, !tbaa !152
  store <4 x i32> %wide.vec116, ptr %next.gep110, align 4, !tbaa !152
  %index.next121 = add nuw i64 %index108, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next121, %n.vec106
  br i1 %i.br, label %middle.block122, label %vector.body107, !llvm.loop !496

middle.block122:                                  ; preds = %vector.body107
  %cmp.n123 = icmp eq i64 %n.vec106, %i.bd
  br i1 %cmp.n123, label %.sink.split.i.i.i.i10, label %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader

.lr.ph.i.i.i.i.i.i.i.i.i6.preheader:              ; preds = %vector.memcheck89, %bb.k, %middle.block122
  %.012.i.i.i.i.i.i.i.i.i7.ph = phi i64 [ %i.bd, %vector.memcheck89 ], [ %i.bd, %bb.k ], [ %i.bl, %middle.block122 ]
  %.0811.i.i.i.i.i.i.i.i.i8.ph = phi ptr [ %i.bi, %vector.memcheck89 ], [ %i.bi, %bb.k ], [ %i.bn, %middle.block122 ]
  %.0910.i.i.i.i.i.i.i.i.i9.ph = phi ptr [ %i.bh, %vector.memcheck89 ], [ %i.bh, %bb.k ], [ %i.bo, %middle.block122 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i6

.lr.ph.i.i.i.i.i.i.i.i.i6:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i6
  %.012.i.i.i.i.i.i.i.i.i7 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i6 ], [ %.012.i.i.i.i.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i8 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i6 ], [ %.0811.i.i.i.i.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i9 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i6 ], [ %.0910.i.i.i.i.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i.i.i.i.i6.preheader ] ; 2 uses
  %i.bs = load <2 x i32>, ptr %.0910.i.i.i.i.i.i.i.i.i9, align 4, !tbaa !152
  store <2 x i32> %i.bs, ptr %.0811.i.i.i.i.i.i.i.i.i8, align 4, !tbaa !152
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i9, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i8, i64 8
  %i.bv = add nsw i64 %.012.i.i.i.i.i.i.i.i.i7, -1
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i7, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i.i.i6, label %.sink.split.i.i.i.i10, !llvm.loop !497

bb.l:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = icmp ult i32 %i.by, %i.bc
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.be, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull %i.ca, i64 noundef %i.bd, i64 noundef 8) #14
  %.pre.i.i.i.i22 = load i32, ptr %i.bb, align 8, !tbaa !11
  %.pre37.i.i.i.i23 = zext i32 %.pre.i.i.i.i22 to i64
  br label %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16

bb.n:                                             ; preds = %bb.l
  %.not28.i.i.i.i11 = icmp eq i32 %i.bf, 0
  br i1 %.not28.i.i.i.i11, label %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 9 uses
  %i.cc = load ptr, ptr %i.az, align 8, !tbaa !8  ; 9 uses
  %min.iters.check142 = icmp ult i32 %i.bf, 16
  br i1 %min.iters.check142, label %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %bb.o
  %i.cd = shl nuw nsw i64 %i.bg, 3                ; 3 uses
  %i.ce = add nsw i64 %i.cd, -4                   ; 2 uses
  %scevgep128 = getelementptr i8, ptr %i.cc, i64 %i.ce
  %scevgep129 = getelementptr i8, ptr %i.cb, i64 %i.ce
  %scevgep130 = getelementptr nuw i8, ptr %i.cc, i64 4
  %scevgep131 = getelementptr i8, ptr %i.cc, i64 %i.cd
  %scevgep132 = getelementptr nuw i8, ptr %i.cb, i64 4
  %scevgep133 = getelementptr i8, ptr %i.cb, i64 %i.cd
  %bound0134 = icmp ult ptr %i.cc, %scevgep129
  %bound1135 = icmp ult ptr %i.cb, %scevgep128
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0137 = icmp ult ptr %scevgep130, %scevgep133
  %bound1138 = icmp ult ptr %scevgep132, %scevgep131
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %found.conflict136, %found.conflict139
  br i1 %conflict.rdx140, label %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck127
  %n.vec144 = and i64 %i.bg, 4294967292           ; 3 uses
  %i.cf = and i64 %i.bg, 3
  %i.cg = shl nuw nsw i64 %n.vec144, 3            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cc, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.cg
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next159, %vector.body145 ] ; 2 uses
  %i.cj = shl i64 %index146, 3                    ; 3 uses
  %i.ck = or disjoint i64 %i.cj, 16               ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cc, i64 %i.cj
  %next.gep148 = getelementptr i8, ptr %i.cc, i64 %i.ck
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj
  %next.gep150 = getelementptr i8, ptr %i.cb, i64 %i.ck
  %wide.vec151 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !152
  %wide.vec154 = load <4 x i32>, ptr %next.gep150, align 4, !tbaa !152
  store <4 x i32> %wide.vec151, ptr %next.gep147, align 4, !tbaa !152
  store <4 x i32> %wide.vec154, ptr %next.gep148, align 4, !tbaa !152
  %index.next159 = add nuw i64 %index146, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next159, %n.vec144
  br i1 %i.cl, label %middle.block160, label %vector.body145, !llvm.loop !498

middle.block160:                                  ; preds = %vector.body145
  %cmp.n161 = icmp eq i64 %n.vec144, %i.bg
  br i1 %cmp.n161, label %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16, label %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader

.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader:           ; preds = %vector.memcheck127, %bb.o, %middle.block160
  %.012.i.i.i.i.i32.i.i.i.i13.ph = phi i64 [ %i.bg, %vector.memcheck127 ], [ %i.bg, %bb.o ], [ %i.cf, %middle.block160 ]
  %.0811.i.i.i.i.i33.i.i.i.i14.ph = phi ptr [ %i.cc, %vector.memcheck127 ], [ %i.cc, %bb.o ], [ %i.ch, %middle.block160 ]
  %.0910.i.i.i.i.i34.i.i.i.i15.ph = phi ptr [ %i.cb, %vector.memcheck127 ], [ %i.cb, %bb.o ], [ %i.ci, %middle.block160 ]
  br label %.lr.ph.i.i.i.i.i31.i.i.i.i12

.lr.ph.i.i.i.i.i31.i.i.i.i12:                     ; preds = %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader, %.lr.ph.i.i.i.i.i31.i.i.i.i12
  %.012.i.i.i.i.i32.i.i.i.i13 = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i31.i.i.i.i12 ], [ %.012.i.i.i.i.i32.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader ] ; 2 uses
  %.0811.i.i.i.i.i33.i.i.i.i14 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i31.i.i.i.i12 ], [ %.0811.i.i.i.i.i33.i.i.i.i14.ph, %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader ] ; 2 uses
  %.0910.i.i.i.i.i34.i.i.i.i15 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i31.i.i.i.i12 ], [ %.0910.i.i.i.i.i34.i.i.i.i15.ph, %.lr.ph.i.i.i.i.i31.i.i.i.i12.preheader ] ; 2 uses
  %i.cm = load <2 x i32>, ptr %.0910.i.i.i.i.i34.i.i.i.i15, align 4, !tbaa !152
  store <2 x i32> %i.cm, ptr %.0811.i.i.i.i.i33.i.i.i.i14, align 4, !tbaa !152
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i.i15, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i.i14, i64 8
  %i.cp = add nsw i64 %.012.i.i.i.i.i32.i.i.i.i13, -1
  %i.cq = icmp samesign ugt i64 %.012.i.i.i.i.i32.i.i.i.i13, 1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i31.i.i.i.i12, label %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16, !llvm.loop !499

_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i.i31.i.i.i.i12, %middle.block160, %bb.n, %bb.m
  %.pre-phi.i.i.i.i17 = phi i64 [ %.pre37.i.i.i.i23, %bb.m ], [ %i.bd, %bb.n ], [ %i.bd, %middle.block160 ], [ %i.bd, %.lr.ph.i.i.i.i.i31.i.i.i.i12 ] ; 2 uses
  %.022.i.i.i.i18 = phi i64 [ 0, %bb.m ], [ 0, %bb.n ], [ %i.bg, %middle.block160 ], [ %i.bg, %.lr.ph.i.i.i.i.i31.i.i.i.i12 ] ; 4 uses
  %.not.i.i.i.i.i19 = icmp samesign eq i64 %.022.i.i.i.i18, %.pre-phi.i.i.i.i17
  br i1 %.not.i.i.i.i.i19, label %.sink.split.i.i.i.i10, label %bb.p

bb.p:                                             ; preds = %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16
  %i.cr = load ptr, ptr %i.ba, align 8, !tbaa !8
  %.idx36.i.i.i.i20 = shl nuw nsw i64 %.022.i.i.i.i18, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx36.i.i.i.i20
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.022.i.i.i.i18
  %i.cv = sub nsw i64 %.pre-phi.i.i.i.i17, %.022.i.i.i.i18
  %gepdiff.i.i.i.i21 = shl nsw i64 %i.cv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 4 %i.cs, i64 %gepdiff.i.i.i.i21, i1 false)
  br label %.sink.split.i.i.i.i10

.sink.split.i.i.i.i10:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i6, %middle.block122, %bb.p, %_ZSt4copyIPKSt4pairIjjEPS1_ET0_T_S6_S5_.exit35.i.i.i.i16, %bb.j
  store i32 %i.bc, ptr %i.be, align 8, !tbaa !11
  br label %_ZN4llvm14SmallMapVectorIjjLj4EEaSERKS1_.exit24

_ZN4llvm14SmallMapVectorIjjLj4EEaSERKS1_.exit24:  ; preds = %bb.a, %.sink.split.i.i.i.i10
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 16  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !152  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #14
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !500

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !501

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !247 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !247
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 40
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #14
  br label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E10destroyAllEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9map_rangeIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockESC_EEDaOT0_EUlS5_E_EEDaOT_SH_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.206") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::mapped_iterator.2", align 8 ; 6 uses
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 8 uses
  %4 = alloca %"class.llvm::mapped_iterator.2", align 8 ; 6 uses
  %5 = alloca %"class.llvm::df_iterator", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(224) %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58, !noalias !511 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !41, !noalias !511 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !alias.scope !511
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775776
  br i1 %i.j, label %bb.c, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !245

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !512, !noalias !511
  %.pre1.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !512, !noalias !511
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.l = phi ptr [ %.pre1.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.k, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !41, !alias.scope !511
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58, !alias.scope !511
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !44, !alias.scope !511
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !513

_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !58, !alias.scope !511
  call void @_ZN4llvm12map_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_EENS_15mapped_iteratorIT_SG_NSt13invoke_resultISG_JDTdeclsr3stdE7declvalISK_EEEEE4typeEEESK_SG_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::mapped_iterator.2") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(112) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #14
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58, !noalias !523 ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !41, !noalias !523 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !alias.scope !523
  %.not.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i2, label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %bb.e, label %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3, !prof !245

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3: ; preds = %bb.d
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #17
  %.pre.i.i.i4 = load ptr, ptr %i.w, align 8, !tbaa !512, !noalias !523
  %.pre1.i.i.i5 = load ptr, ptr %i.x, align 8, !tbaa !512, !noalias !523
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6

_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.af = phi ptr [ %.pre1.i.i.i5, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ %i.y, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i.i.i4, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ %i.z, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 2 uses
  %i.ah = phi ptr [ %i.ae, %_ZNSt15__new_allocatorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i3 ], [ null, %_ZN4llvm9adl_beginIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit ] ; 5 uses
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !41, !alias.scope !523
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !58, !alias.scope !523
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !44, !alias.scope !523
  %.not7.i.i.i.i.i.i.i.i.i7 = icmp eq ptr %i.ag, %i.af
  br i1 %.not7.i.i.i.i.i.i.i.i.i7, label %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i.i.i.i8:                        ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6, %.lr.ph.i.i.i.i.i.i.i.i.i8
  %.09.i.i.i.i.i.i.i.i.i9 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i8 ], [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i10 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i8 ], [ %i.ag, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i.i9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i.i.i10, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i10, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i9, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i11 = icmp eq ptr %i.al, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i11, label %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i8, !llvm.loop !513

_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i8, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6
  %.0.lcssa.i.i.i.i.i.i.i.i.i12 = phi ptr [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EEC2EmRKS9_.exit.i.i.i.i.i6 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i8 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i12, ptr %i.ai, align 8, !tbaa !58, !alias.scope !523
  call void @_ZN4llvm12map_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS5_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISA_EEEEDaOT0_EUlS4_E_EENS_15mapped_iteratorIT_SG_NSt13invoke_resultISG_JDTdeclsr3stdE7declvalISK_EEEEE4typeEEESK_SG_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::mapped_iterator.2") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(112) %5)
  call void @_ZN4llvm10make_rangeINS_15mapped_iteratorINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISB_EEEEDaOT0_EUlS5_E_RS4_EEEENSF_IT_EESM_SM_(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.206") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(120) %2, ptr nofree noundef nonnull align 8 dereferenceable(120) %4)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #15
  br label %_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN4llvm7adl_endIRNS_14iterator_rangeINS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS6_EEEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSE_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !45, !range !49, !noundef !50
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8copyFromERKS7_:bb.a
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !460
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 4) #14
  store i32 0, ptr %i.a, align 4, !tbaa !457
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !578
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !457  ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !457
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  %i.t = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.s, i64 noundef 4) #14 ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !457
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !460
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !579
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !578
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !578
  %i.ab = load ptr, ptr %1, align 8, !tbaa !460
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !579
  %i.ae = add nuw nsw i64 %i.v, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 4 %i.ab, i64 %i.w, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE15allocateBucketsEj.exit, %bb.c
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare noundef ptr @_ZNK4llvm7VPValue16getLiveInIRValueEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.75", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !135
  store ptr %i.y, ptr %i.q, align 8, !tbaa !150
  store i32 0, ptr %i.p, align 16, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !174
  %i.aa = load ptr, ptr %0, align 8, !tbaa !175
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !174
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !174
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !152
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !152
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !152
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !135    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !151
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !155  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !580

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !155
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !152
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !581

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !582

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !151
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !159
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !151
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12VPRecipeBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE5resetEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !583  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !325  ; 3 uses
  %i.i = icmp ult i32 %i.f, %i.h
  %i.j = icmp ugt i32 %i.h, 64
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !324
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  store i32 0, ptr %i.c, align 8, !tbaa !583
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.s, align 8, !tbaa !337
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i = shl nuw nsw i64 %i.y, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.x, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.v, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit ] ; 3 uses
  %i.aa = load ptr, ptr %.011.i.i, align 8, !tbaa !584
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !586
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ac, i64 noundef 16) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5clearEv.exit
  store i32 0, ptr %i.w, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %.not.i1.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i1.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE5ResetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !174 ; 2 uses
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !587
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 449
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !588
  %i.am = zext i32 %i.ag to i64
  %.idx.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %.not6.i.i = icmp eq i32 %i.ag, 1
  br i1 %.not6.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i, label %.lr.ph.i2.preheader.i

.lr.ph.i2.preheader.i:                            ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.i2.preheader.i
  %.07.i.i = phi ptr [ %i.ay, %.lr.ph.i2.i ], [ %i.ao, %.lr.ph.i2.preheader.i ] ; 3 uses
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.aq = ptrtoint ptr %.07.i.i to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sum.shift.i.i = lshr i64 %i.as, 4
  %i.at = trunc i64 %sum.shift.i.i to i32
  %i.au = and i32 %i.at, 2147483647
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.av to i64
  %i.aw = shl nuw nsw i64 448, %.sroa.speculated.i.i.i
  %i.ax = load ptr, ptr %.07.i.i, align 8, !tbaa !174
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.aw, i64 noundef 16) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i3.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i, label %.lr.ph.i2.i, !llvm.loop !589

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i: ; preds = %.lr.ph.i2.i, %bb.e
  store i32 1, ptr %i.af, align 8, !tbaa !11
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EE5ResetEv.exit
end_hunk_1
begin_hunk_2_@_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE16attachNewSubtreeERS4_PNS_15DomTreeNodeBaseIS3_EE:bb.a

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = add nuw i32 %.017.i.i.i.i.i, 1
  %i.aq = and i32 %i.ap, %i.x                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !152, !noalias !627
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !157

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
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !152 ; 2 uses
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !11
  %i.be = icmp ugt i32 %i.bd, %i.bc
  br i1 %i.be, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !327
  %.not16 = icmp eq ptr %i.bi, null
  br i1 %.not16, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %bb.e

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !70
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !606
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !583  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !325  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !325  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !583
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !324
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
  %i.t = load ptr, ptr %0, align 8, !tbaa !314
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #14
  store i32 0, ptr %i.r, align 4, !tbaa !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !325
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #14 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !325 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !314
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !324
  store i32 0, ptr %i.a, align 8, !tbaa !583
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #9 comdat align 2 {
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !152  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.z) #14
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !8   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.ac) #14
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i5.i, -1
  %i.ag = and i32 %i.af, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !628

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !629

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ah = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ai = and i32 %i.ah, 1
  %.not.i9 = icmp eq i32 %i.ai, 0
  br i1 %.not.i9, label %bb.e, label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !247 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !247
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 72
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #14
  store i32 0, ptr %i.c, align 8, !tbaa !247
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
  %i.bf = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.be, i64 noundef 8) #14 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !247
  store i32 %i.ax, ptr %i.c, align 8, !tbaa !247
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
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !152 ; 2 uses
  %.not11.i17.us = icmp eq i32 %i.cl, 0
  br i1 %.not11.i17.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, %.lr.ph21.split.us
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.next25, %i.ch
  br i1 %.not.i.us, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split.us, !llvm.loop !630

.lr.ph.us:                                        ; preds = %.lr.ph21.split.us
  %indvars.iv24.tr = trunc i64 %indvars.iv24 to i32
  %i.cm = shl i32 %indvars.iv24.tr, 5
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us: ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, %.lr.ph.us
  %.0.i18.us.us = phi i32 [ %i.cl, %.lr.ph.us ], [ %i.dc, %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us ] ; 3 uses
  %i.cn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18.us.us, i1 true)
  %i.co = or disjoint i32 %i.cn, %i.cm
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.cp ; 9 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !70
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !70
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 0, ptr %i.cv, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 2, ptr %i.cw, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i32 0, ptr %i.cz, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  store i32 2, ptr %i.da, align 4, !tbaa !12
  %i.db = add i32 %.0.i18.us.us, -1
  %i.dc = and i32 %i.db, %.0.i18.us.us            ; 2 uses
  %.not11.i.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not11.i.us.us, label %._crit_edge.split.us.us, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.us.preheader.i.i.us.us, !llvm.loop !631

.lr.ph21.split:                                   ; preds = %.lr.ph21, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !152 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.de, 0
  br i1 %.not11.i17, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21.split
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.df = shl i32 %indvars.iv.tr, 5
  br label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.de, %.lr.ph ], [ %i.en, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.dg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.di ; 9 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %i.di ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !70
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 3 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 2, ptr %i.dq, align 4, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.split.preheader.i.i
  %i.dt = icmp ugt i32 %i.ds, 2
  br i1 %i.dt, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i: ; preds = %bb.i
  %i.du = zext i32 %i.ds to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull %i.do, i64 noundef %i.du, i64 noundef 8) #14
  %.pre.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.dm, align 8, !tbaa !8
  br label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i, %bb.i
  %i.dv = phi ptr [ %.pre.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.do, %bb.i ]
  %i.dw = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ds, %bb.i ]
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !8
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 8 %i.dy, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.i.i
  store i32 %i.ds, ptr %i.dp, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i

_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i: ; preds = %.sink.split.i.i.i.i, %.split.preheader.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 3 uses
  store ptr %i.eb, ptr %i.dz, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  store i32 2, ptr %i.ed, align 4, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.1.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i.1.i.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i
  %i.eg = icmp ugt i32 %i.ef, 2
  br i1 %i.eg, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i: ; preds = %bb.j
  %i.eh = zext i32 %i.ef to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull %i.eb, i64 noundef %i.eh, i64 noundef 8) #14
  %.pre.i.1.i.i = load i32, ptr %i.ee, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.1.i.i = icmp eq i32 %.pre.i.1.i.i, 0
  br i1 %.not.i.i.i.1.i.i, label %.sink.split.i.i.1.i.i, label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i
  %.pre5.i.i = load ptr, ptr %i.dz, align 8, !tbaa !8
  br label %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i

_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i: ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i, %bb.j
  %i.ei = phi ptr [ %.pre5.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.eb, %bb.j ]
  %i.ej = phi i32 [ %.pre.i.1.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1._ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1_crit_edge.i.i ], [ %i.ef, %bb.j ]
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.ea, align 8, !tbaa !8
  %gepdiff.i.i.1.i.i = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 8 %i.el, i64 %gepdiff.i.i.1.i.i, i1 false)
  br label %.sink.split.i.i.1.i.i

.sink.split.i.i.1.i.i:                            ; preds = %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.thread.i.1.i.i, %_ZSt4copyIPKPN4llvm11VPBlockBaseEPS2_ET0_T_S7_S6_.exit30.i.i.1.i.i
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !11
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11VPBlockBaseELj2EEC2ERKS3_.exit.i.i, %.sink.split.i.i.1.i.i
  %i.em = add i32 %.0.i18, -1
  %i.en = and i32 %i.em, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.en, 0
  br i1 %.not11.i, label %._crit_edge.split, label %.split.preheader.i.i, !llvm.loop !631

._crit_edge.split:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, %.lr.ph21.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split, !llvm.loop !630

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS6_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZN4llvm13SmallDenseMapIPNS_11VPBlockBaseENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11VPBlockBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_11VPBlockBaseEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !152
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !152
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.k, align 4, !tbaa !12
  store i32 0, ptr %i.j, align 8, !tbaa !11
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !632

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.t, ptr %i.s, align 8, !tbaa !70
  br label %_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm11VPBlockBaseES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !11
  store i32 0, ptr %i.m, align 8, !tbaa !11
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E22findBucketForInsertionIS3_EEPSE_RKT_SI_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !659
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !657
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !312
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !152
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !152
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !660
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !70
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !312, !noalias !661 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !657, !noalias !661 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !311, !noalias !661 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !154

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !157, !llvm.loop !658

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !659
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.313", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !311
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !312
  store ptr %i.y, ptr %i.q, align 8, !tbaa !657
  store i32 0, ptr %i.p, align 16, !tbaa !660
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !174
  %i.aa = load ptr, ptr %0, align 8, !tbaa !659
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !174
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !174
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !152
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !152
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !152
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 40
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !312
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !657
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !311  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !657  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !311
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !666

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !tbaa.struct !667
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !152
  %i.ay = or i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !152
  %i.az = add i32 %.0.i16, -1
  %i.ba = and i32 %i.az, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !668

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !669

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !311
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !660
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !660
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !312
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 40
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !311
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS1_Lb0EEEE7InfoRecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS5_Lb0EEEE7InfoRecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SC_EEEES6_SC_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE18growAndEmplaceBackIJRKjRjEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !152
  %i.b = load i32, ptr %2, align 4, !tbaa !152
  %.sroa.2.0.insert.ext = zext i32 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.a to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !134

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.insert.insert)
  %.pre = load i32, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store i64 %.sroa.0.0.insert.insert, ptr %i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backES2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pre, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  ret ptr %i.p
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11VPBlockBaseEjELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm9GraphDiffIPNS_11VPBlockBaseELb0EE11getChildrenILb0EEENS_11SmallVectorIS2_Lj8EEES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.137") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.340", align 8 ; 5 uses
  %4 = alloca %"class.std::reverse_iterator.340", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !noalias !670
  %i.c = icmp ne i8 %i.b, 0
  %.not.not17.i.i.i = icmp eq ptr %2, null
  %.not.not.i.i.i = or i1 %.not.not17.i.i.i, %i.c
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN4llvm8childrenIPNS_11VPBlockBaseEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS6_7NodeRefE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.05.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11, !noalias !670 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361, !noalias !670 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8childrenIPNS_11VPBlockBaseEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS6_7NodeRefE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !546

_ZN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EE25getBlockWithOutgoingEdgesES2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = zext i32 %i.e to i64
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JmEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !867
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !324
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !314
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !152
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !152
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !583
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !610
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !152
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !314, !noalias !868 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324, !noalias !868 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !325, !noalias !868 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !154

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !157, !llvm.loop !866

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !867
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.84", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !325
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !314
  store ptr %i.y, ptr %i.q, align 8, !tbaa !324
  store i32 0, ptr %i.p, align 16, !tbaa !583
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !174
  %i.aa = load ptr, ptr %0, align 8, !tbaa !867
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !174
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !174
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !152
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !152
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !152
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !314    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !325  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !324  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !325
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !873

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !152
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !152
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !152
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !152
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !874

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !875

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !325
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !583
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !583
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !325
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !314, !noalias !876 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324, !noalias !876 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !325, !noalias !876 ; 4 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152, !noalias !885
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !154

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %.017.i.i.i.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70, !noalias !885
  %i.z = icmp eq ptr %1, %i.y
  br i1 %i.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152, !noalias !885
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !157

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
  %i.an = load i32, ptr %i.am, align 4, !tbaa !152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !11
  %i.aq = icmp ugt i32 %i.ap, %i.an
  br i1 %i.aq, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i
  %i.ar = zext i32 %i.an to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !327 ; 2 uses
  %.not.not = icmp eq ptr %i.av, null
  br i1 %.not.not, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread, label %bb.d

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11VPBlockBaseENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !606
  %i.ba = call noundef ptr @_ZN4llvm14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseINS_11VPBlockBaseELb0EEEE15getNodeForBlockEPS3_RS4_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(220) %2)
  %i.bb = call noundef ptr @_ZN4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE10createNodeEPS1_PNS_15DomTreeNodeBaseIS1_EE(ptr noundef nonnull align 8 dereferenceable(220) %2, ptr noundef %1, ptr noundef %i.ba)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread
  %.1 = phi ptr [ %i.bb, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit.thread ], [ %i.av, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE16updateDFSNumbersEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallVector.391", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !337, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !377
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !898
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !393
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !381
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !152
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !152
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !377
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !126
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !126
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !381, !noalias !899 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !393, !noalias !899 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394, !noalias !899 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !154

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !134

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !157, !llvm.loop !396

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !898
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.133", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !394
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !381
  store ptr %i.y, ptr %i.q, align 8, !tbaa !393
  store i32 0, ptr %i.p, align 16, !tbaa !377
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !174
  %i.aa = load ptr, ptr %0, align 8, !tbaa !898
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !174
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !174
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !152
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !152
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !152
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #14
  br label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !381    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !393
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !393  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !381
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !394
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152 ; 2 uses
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !904

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !126
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !152
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !905

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !906

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !394
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !377
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !377
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #14
  store i32 0, ptr %i.d, align 4, !tbaa !394
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7VPValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS4_EEE10InitializeERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::PostOrderTraversal", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !8, !alias.scope !907
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !11, !alias.scope !907
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !12, !alias.scope !907
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  store ptr %i.e, ptr %i.d, align 8, !tbaa !51, !alias.scope !907
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i32 8, ptr %i.f, align 8, !tbaa !342, !alias.scope !907
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 348
  store i32 0, ptr %i.g, align 4, !tbaa !343, !alias.scope !907
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !45, !alias.scope !907
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !70, !noalias !907
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE4initES4_(ptr noundef nonnull align 8 dereferenceable(424) %2, ptr noundef %.sroa.0.0.copyload.i.i)
  %i.i = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit, label %_ZN4llvm9adl_beginIRNS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

_ZN4llvm9adl_beginIRNS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !8
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !910  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm9adl_beginIRNS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE8iteratorppEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.2.05.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE8iteratorppEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !prof !134

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11VPBlockBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.sroa.2.05.i.i.i.i.i.i)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPNS0_11VPBlockBaseELj8EEEEaSEOS3_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %.sroa.2.05.i.i.i.i.i.i, ptr %i.u, align 1
  %i.v = load i32, ptr %i.o, align 8, !tbaa !11
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !11
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPNS0_11VPBlockBaseELj8EEEEaSEOS3_.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPNS0_11VPBlockBaseELj8EEEEaSEOS3_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.x = load i32, ptr %i.b, align 8, !tbaa !11
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit, label %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE8iteratorppEv.exit.i.i.i.i.i.i

_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE8iteratorppEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPNS0_11VPBlockBaseELj8EEEEaSEOS3_.exit.i.i.i.i.i.i
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(424) %2)
  %i.z = load ptr, ptr %2, align 8, !tbaa !8
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !11
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !910 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit, label %bb.b, !llvm.loop !912

_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPNS0_11VPBlockBaseELj8EEEEaSEOS3_.exit.i.i.i.i.i.i, %_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE8iteratorppEv.exit.i.i.i.i.i.i, %bb.a, %_ZN4llvm9adl_beginIRNS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.af = load i8, ptr %i.h, align 8, !tbaa !45, !range !49, !noundef !50
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !51
  call void @free(ptr noundef %i.ah) #14
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.e, %_ZN4llvm4copyINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEESt20back_insert_iteratorINS_11SmallVectorIS4_Lj8EEEEEET0_OT_SD_.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  call void @free(ptr noundef %i.ai) #14
  br label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEED2Ev.exit

_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.llvm::iterator_range.350", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = load i32, ptr %i.b, align 8, !tbaa !11
  %i.e = zext i32 %i.d to i64
end_hunk_5
begin_hunk_6_@_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE4initES4_:bb.a
  store i32 %i.aq, ptr %i.ad, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS4_Lj8EEEEENS_11GraphTraitsIS5_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
  br label %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6

_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit.thread6: ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS5_Lj8EEEEENS_11GraphTraitsIS6_EEE10StackEntryEE12emplace_backIJRS5_NS_14iterator_rangeINS_30VPHierarchicalChildrenIteratorIS5_Lb1EEEEEEEERSD_DpOT_.exit, %_ZN4llvm18PostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11SmallPtrSetIS3_Lj8EEEE10insertEdgeESt8optionalIS3_ES3_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264
  br label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !247
  br label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !925
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !247
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !247
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !247 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !247
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #14
  br label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #9 comdat align 2 {
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
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 16
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
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 15  ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i20 = icmp eq i64 %i.ab, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !152 ; 2 uses
  %.not11.i18 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !152
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.015.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !152
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !928

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa14.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !126
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !152
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !152
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !152
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.bg, align 4, !tbaa !152
  %i.bo = add i32 %.0.i19, -1
  %i.bp = and i32 %i.bo, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !929

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !930

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre27 = load i32, ptr %0, align 8
  %.pre28 = and i32 %.pre27, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.br = and i32 %i.bq, -2
  %i.bs = or disjoint i32 %.pre-phi, %i.br
  store i32 %i.bs, ptr %0, align 8
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 1
  %.not.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !247 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #14
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ce = phi i32 [ %i.bt, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7VPValueEjLj16ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bt, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cf = and i32 %i.ce, -2
  store i32 %i.cf, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !931 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !931 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !931 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !931
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 16 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !152    ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !154

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !157, !llvm.loop !936

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !152
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit, label %bb.c, !prof !134

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !937
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !937
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E22findBucketForInsertionIjEEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 7 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 40                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !152
  %i.bd = or i32 %i.az, %i.bc
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_:bb.a
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !152
  %i.s = and i32 %.024, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !154

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.025, 1
  %.0 = and i32 %i.v, %i.k                        ; 3 uses
  %i.w = zext i32 %.0 to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !152
  %i.ab = and i32 %.0, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !157, !llvm.loop !936

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !152
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !134

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !937
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.183", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 648
  br label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEC2EjNS_12DenseMapBaseISA_jS4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 40                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !247
  br label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEC2EjNS_12DenseMapBaseISA_jS4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEC2EjNS_12DenseMapBaseISA_jS4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(656) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEC2EjNS_12DenseMapBaseISA_jS4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !944
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !247
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEC2EjNS_12DenseMapBaseISA_jS4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 40               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !247
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 648
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(656) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(656) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 16
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 15
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i26 = icmp eq i64 %i.ab, 0
  br i1 %.not.i26, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !152 ; 2 uses
  %.not11.i24 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i25 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i25, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.ah ; 8 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !152 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !152
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !945

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.al ; 6 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !152
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20 ; 2 uses
  store i32 2, ptr %i.ay, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.i12 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i12, label %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.bc = icmp eq ptr %i.au, %i.ai
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_7VPValueEE12assignRemoteEOS3_.exit.i: ; preds = %bb.f
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !8
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  store i32 %i.bh, ptr %i.ay, align 4, !tbaa !12
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !8
  store i32 0, ptr %i.bg, align 4, !tbaa !12
  br label %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.bi = zext i32 %i.ba to i64                   ; 2 uses
  %i.bj = icmp ugt i32 %i.ba, 2
  br i1 %i.bj, label %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull %i.aw, i64 noundef %i.bi, i64 noundef 8) #14
  %.pre = load i32, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %.pre36 = zext i32 %.pre to i64
  %.not.i.i.i17 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i17, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.g, %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi3748 = phi i64 [ %.pre36, %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i ], [ %i.bi, %bb.g ]
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !8
  %gepdiff.i = shl nuw nsw i64 %.pre-phi3748, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 8 %i.bk, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm7VPValueES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.az, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i.sink.split, %bb.e, %bb.d
  %i.bm = shl nuw i32 1, %i.ap
  %i.bn = load i32, ptr %i.at, align 4, !tbaa !152
  %i.bo = or i32 %i.bn, %i.bm
  store i32 %i.bo, ptr %i.at, align 4, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !8  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bq) #14
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_7VPValueELj2EEC2EOS3_.exit.i, %bb.h
  %i.bt = add i32 %.0.i25, -1
  %i.bu = and i32 %i.bt, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !946

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !947

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre33 = load i32, ptr %1, align 8
  %.pre34 = load i32, ptr %0, align 8
  %.pre35 = and i32 %.pre34, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre35, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bv = phi i32 [ %.pre33, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bw = and i32 %i.bv, -2
  %i.bx = or disjoint i32 %.pre-phi, %i.bw
  store i32 %i.bx, ptr %0, align 8
  %i.by = load i32, ptr %1, align 8               ; 3 uses
  %i.bz = and i32 %i.by, 1
  %.not.i.i13 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i13, label %bb.i, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ca = load i32, ptr %i.j, align 8, !tbaa !247 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.cd = zext i32 %i.ca to i64                   ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cd, 40
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #14
  %.pre.i14 = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i, %bb.j
  %i.cj = phi i32 [ %i.by, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_11SmallVectorIPNS_7VPValueELj2EEELj16ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.by, %bb.i ], [ %.pre.i14, %bb.j ]
  %i.ck = and i32 %i.cj, -2
  store i32 %i.ck, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_15VPRegisterUsageEE10resizeImplILb0EEEvm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = icmp eq i64 %1, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %1, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.g, i64 %1
  %i.i = getelementptr inbounds nuw [144 x i8], ptr %i.g, i64 %i.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15VPRegisterUsageELb0EE13destroy_rangeEPS1_S3_(ptr noundef %i.h, ptr noundef nonnull %i.i)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = zext i32 %i.k to i64
  %i.m = icmp ugt i64 %1, %i.l
  br i1 %i.m, label %bb.e, label %._ZN4llvm15SmallVectorImplINS_15VPRegisterUsageEE7reserveEm.exit_crit_edge

._ZN4llvm15SmallVectorImplINS_15VPRegisterUsageEE7reserveEm.exit_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplINS_15VPRegisterUsageEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i64 noundef %1, i64 noundef 144, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14 ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !11
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.r
  %i.t = call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4llvm15VPRegisterUsageEES3_ET0_T_S6_S5_(ptr %i.p, ptr %i.s, ptr noundef %i.o) ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !950
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !578
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit, label %bb.d, !prof !134

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !950
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !579
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !460
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
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !152
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !152
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !578
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !152
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !152
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !152
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !460, !noalias !986 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !579, !noalias !986 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !457, !noalias !986 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !152    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !152
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !154

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !157, !llvm.loop !985

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !134

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !950
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.100", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !457
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !460
  store ptr %i.y, ptr %i.q, align 8, !tbaa !579
  store i32 0, ptr %i.p, align 16, !tbaa !578
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !174
  %i.aa = load ptr, ptr %0, align 8, !tbaa !950
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !174
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !174
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !152 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !152
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !152
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !152
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !152
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #14
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !460    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !579
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !457  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !579  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !457
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !152  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !152
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !991

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !152
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !152
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !152
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !152
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !152
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !992

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !993

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !457
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !578
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !578
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #14
  store i32 0, ptr %i.d, align 4, !tbaa !457
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 12}
!13 = !{!14, !28, i64 112}
!14 = !{!"_ZTSN4llvm13VPRegionBlockE", !15, i64 0, !28, i64 112, !28, i64 120, !29, i64 128}
!15 = !{!"_ZTSN4llvm11VPBlockBaseE", !16, i64 8, !20, i64 40, !21, i64 48, !21, i64 72, !26, i64 96, !27, i64 104}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !6, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"p1 _ZTSN4llvm13VPRegionBlockE", !10, i64 0}
!21 = !{!"_ZTSN4llvm11SmallVectorIPNS_11VPBlockBaseELj1EEE", !22, i64 0, !25, i64 16}
!22 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_11VPBlockBaseEEE", !23, i64 0}
!23 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_11VPBlockBaseELb1EEE", !24, i64 0}
!24 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_11VPBlockBaseEvEE", !9, i64 0}
!25 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_11VPBlockBaseELj1EEE", !6, i64 0}
!26 = !{!"p1 _ZTSN4llvm5VPlanE", !10, i64 0}
!27 = !{!"_ZTSN4llvm11VPBlockBase9VPBlockTyE", !6, i64 0}
!28 = !{!"p1 _ZTSN4llvm11VPBlockBaseE", !10, i64 0}
!29 = !{!"_ZTSSt10unique_ptrIN4llvm17VPCanonicalIVInfoESt14default_deleteIS1_EE", !30, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17VPCanonicalIVInfoESt14default_deleteIS1_ELb1ELb1EE", !31, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17VPCanonicalIVInfoESt14default_deleteIS1_EE", !32, i64 0}
!32 = !{!"_ZTSSt5tupleIJPN4llvm17VPCanonicalIVInfoESt14default_deleteIS1_EEE", !33, i64 0}
!33 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17VPCanonicalIVInfoESt14default_deleteIS1_EEE", !34, i64 0}
!34 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17VPCanonicalIVInfoELb0EE", !35, i64 0}
!35 = !{!"p1 _ZTSN4llvm17VPCanonicalIVInfoE", !10, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN4llvm19vp_depth_first_deepEPNS_11VPBlockBaseE: argument 0"}
!38 = distinct !{!38, !"_ZN4llvm19vp_depth_first_deepEPNS_11VPBlockBaseE"}
!39 = !{!40, !28, i64 0}
!40 = !{!"_ZTSN4llvm27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEE", !28, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm11VPBlockBaseESt8optionalINS1_30VPHierarchicalChildrenIteratorIS3_Lb1EEEEESaIS8_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSSt4pairIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEE", !10, i64 0}
!44 = !{!42, !43, i64 16}
!45 = !{!46, !48, i64 16}
!46 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !47, i64 0, !5, i64 8, !5, i64 12, !48, i64 16}
!47 = !{!"any p2 pointer", !10, i64 0}
!48 = !{!"bool", !6, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!46, !47, i64 0}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4llvm14iterator_rangeINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS0_ISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEEZNSE_ISF_SG_EEDaSI_EUlSK_E0_PSF_EEE5beginEv: argument 0"}
!54 = distinct !{!54, !"_ZNK4llvm14iterator_rangeINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS0_ISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEEZNSE_ISF_SG_EEDaSI_EUlSK_E0_PSF_EEE5beginEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK4llvm14iterator_rangeINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS0_ISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEEZNSE_ISF_SG_EEDaSI_EUlSK_E0_PSF_EEE3endEv: argument 0"}
!57 = distinct !{!57, !"_ZNK4llvm14iterator_rangeINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS0_ISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SG_EEDaSI_EUlSK_E_St20forward_iterator_tagEEZNSE_ISF_SG_EEDaSI_EUlSK_E0_PSF_EEE3endEv"}
!58 = !{!42, !43, i64 8}
!59 = !{!60, !28, i64 0}
!60 = !{!"_ZTSSt4pairIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEE", !28, i64 0, !61, i64 8}
!61 = !{!"_ZTSSt8optionalIN4llvm30VPHierarchicalChildrenIteratorIPNS0_11VPBlockBaseELb1EEEE", !62, i64 0}
!62 = !{!"_ZTSSt14_Optional_baseIN4llvm30VPHierarchicalChildrenIteratorIPNS0_11VPBlockBaseELb1EEELb1ELb1EE", !63, i64 0}
!63 = !{!"_ZTSSt17_Optional_payloadIN4llvm30VPHierarchicalChildrenIteratorIPNS0_11VPBlockBaseELb1EEELb1ELb1ELb1EE", !64, i64 0}
!64 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm30VPHierarchicalChildrenIteratorIPNS0_11VPBlockBaseELb1EEEE", !6, i64 0, !48, i64 16}
!65 = !{!64, !48, i64 16}
!66 = !{!67, !28, i64 0}
!67 = !{!"_ZTSN4llvm30VPHierarchicalChildrenIteratorIPNS_11VPBlockBaseELb1EEE", !28, i64 0, !19, i64 8}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!28, !28, i64 0}
!71 = !{!72, !73, i64 8}
!72 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !73, i64 0, !73, i64 8}
!73 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !10, i64 0}
!74 = !{!15, !27, i64 104}
!75 = distinct !{!75, !69}
!76 = !{!77, !98, i64 88}
!77 = !{!"_ZTSN4llvm12VPRecipeBaseE", !78, i64 0, !85, i64 16, !89, i64 32, !95, i64 72, !96, i64 80, !98, i64 88}
!78 = !{!"_ZTSN4llvm5VPDefE", !79, i64 8}
!79 = !{!"_ZTSN4llvm13TinyPtrVectorIPNS_13VPRecipeValueEEE", !80, i64 0}
end_hunk_8
