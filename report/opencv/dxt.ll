inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit733.thread791
vector.body1427:                                  ; preds = %vector.body1427, %vector.ph1423
  %index1428 = phi i64 [ 0, %vector.ph1423 ], [ %index.next1433, %vector.body1427 ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index1428 ; 2 uses
  %wide.vec1429 = load <4 x float>, ptr %i.ze, align 4, !tbaa !143 ; 2 uses
  %strided.vec1430 = shufflevector <4 x float> %wide.vec1429, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1431 = shufflevector <4 x float> %wide.vec1429, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.zf = shufflevector <2 x float> %strided.vec1430, <2 x float> %broadcast.splatinsert1425, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.zg = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> %strided.vec1431, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %interleaved.vec1432 = fmul <4 x float> %i.zf, %i.zg
  store <4 x float> %interleaved.vec1432, ptr %i.ze, align 4, !tbaa !143
  %index.next1433 = add nuw i64 %index1428, 2     ; 2 uses
  %i.zh = icmp eq i64 %index.next1433, %n.vec1424
  br i1 %i.zh, label %middle.block1434, label %vector.body1427, !llvm.loop !454

middle.block1434:                                 ; preds = %vector.body1427
  %cmp.n = icmp eq i64 %n.vec1424, %wide.trip.count1014
  br i1 %cmp.n, label %.critedge, label %.lr.ph910.preheader1491

.lr.ph910.preheader1491:                          ; preds = %.lr.ph910.preheader, %middle.block1434
  %indvars.iv1011.ph = phi i64 [ 0, %.lr.ph910.preheader ], [ %n.vec1424, %middle.block1434 ]
  %i.zi = insertelement <2 x float> poison, float %i.n, i64 0
  %i.zj = insertelement <2 x float> %i.zi, float %.0638, i64 1
  br label %.lr.ph910

.lr.ph910:                                        ; preds = %.lr.ph910.preheader1491, %.lr.ph910
  %indvars.iv1011 = phi i64 [ %indvars.iv.next1012, %.lr.ph910 ], [ %indvars.iv1011.ph, %.lr.ph910.preheader1491 ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1011 ; 2 uses
  %i.zl = load <2 x float>, ptr %i.zk, align 4, !tbaa !143
  %i.zm = fmul <2 x float> %i.zl, %i.zj
  store <2 x float> %i.zm, ptr %i.zk, align 4, !tbaa !143
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1 ; 2 uses
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1012, %wide.trip.count1014
  br i1 %exitcond1015.not, label %.critedge, label %.lr.ph910, !llvm.loop !455

bb.bv:                                            ; preds = %._crit_edge901
  br i1 %i.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.bv
  %i.zn = load i32, ptr %i.e, align 4, !tbaa !418 ; 4 uses
  %.not716902 = icmp slt i32 %i.zn, 2
  br i1 %.not716902, label %._crit_edge905, label %.lr.ph904.preheader

.lr.ph904.preheader:                              ; preds = %.preheader
  %i.zo = add nsw i32 %i.zn, -2
  %i.zp = lshr i32 %i.zo, 1                       ; 2 uses
  %narrow1516 = add nuw i32 %i.zp, 1              ; 2 uses
  %i.zq = zext i32 %narrow1516 to i64             ; 2 uses
  %xtraiter1510 = and i64 %i.zq, 1
  %i.zr = icmp eq i32 %i.zp, 0
  br i1 %i.zr, label %.lr.ph904.epil.preheader, label %.lr.ph904.preheader.new

.lr.ph904.preheader.new:                          ; preds = %.lr.ph904.preheader
  %unroll_iter1514 = and i64 %i.zq, 4294967294
  br label %.lr.ph904

.lr.ph904:                                        ; preds = %.lr.ph904, %.lr.ph904.preheader.new
  %indvars.iv1008 = phi i64 [ 0, %.lr.ph904.preheader.new ], [ %indvars.iv.next1009.1, %.lr.ph904 ] ; 3 uses
  %niter1515 = phi i64 [ 0, %.lr.ph904.preheader.new ], [ %niter1515.next.1, %.lr.ph904 ]
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4 ; 2 uses
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !414
  %i.zv = fneg float %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zs, i64 12 ; 2 uses
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !414
  %i.zy = fneg float %i.zx
  store float %i.zv, ptr %i.zt, align 4, !tbaa !414
  store float %i.zy, ptr %i.zw, align 4, !tbaa !414
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 20 ; 2 uses
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !414
  %i.aac = fneg float %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 28 ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !414
  %i.aaf = fneg float %i.aae
  store float %i.aac, ptr %i.aaa, align 4, !tbaa !414
  store float %i.aaf, ptr %i.aad, align 4, !tbaa !414
  %indvars.iv.next1009.1 = add nuw nsw i64 %indvars.iv1008, 4 ; 3 uses
  %niter1515.next.1 = add nuw nsw i64 %niter1515, 2 ; 2 uses
  %niter1515.ncmp.1 = icmp eq i64 %niter1515.next.1, %unroll_iter1514
  br i1 %niter1515.ncmp.1, label %._crit_edge905.loopexit.unr-lcssa, label %.lr.ph904, !llvm.loop !456

._crit_edge905.loopexit.unr-lcssa:                ; preds = %.lr.ph904
  %lcmp.mod1511.not = icmp eq i64 %xtraiter1510, 0
  br i1 %lcmp.mod1511.not, label %._crit_edge905.loopexit, label %.lr.ph904.epil.preheader

.lr.ph904.epil.preheader:                         ; preds = %._crit_edge905.loopexit.unr-lcssa, %.lr.ph904.preheader
  %indvars.iv1008.epil.init = phi i64 [ 0, %.lr.ph904.preheader ], [ %indvars.iv.next1009.1, %._crit_edge905.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1513 = trunc i32 %narrow1516 to i1
  call void @llvm.assume(i1 %lcmp.mod1513)
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1008.epil.init ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4 ; 2 uses
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !414
  %i.aaj = fneg float %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 12 ; 2 uses
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !414
  %i.aam = fneg float %i.aal
  store float %i.aaj, ptr %i.aah, align 4, !tbaa !414
  store float %i.aam, ptr %i.aak, align 4, !tbaa !414
  %indvars.iv.next1009.epil = add nuw nsw i64 %indvars.iv1008.epil.init, 2
  br label %._crit_edge905.loopexit

._crit_edge905.loopexit:                          ; preds = %._crit_edge905.loopexit.unr-lcssa, %.lr.ph904.epil.preheader
  %indvars.iv.next1009.lcssa = phi i64 [ %indvars.iv.next1009.1, %._crit_edge905.loopexit.unr-lcssa ], [ %indvars.iv.next1009.epil, %.lr.ph904.epil.preheader ]
  %i.aan = trunc nuw nsw i64 %indvars.iv.next1009.lcssa to i32
  br label %._crit_edge905

._crit_edge905:                                   ; preds = %._crit_edge905.loopexit, %.preheader
  %.8.lcssa = phi i32 [ 0, %.preheader ], [ %i.aan, %._crit_edge905.loopexit ]
  %i.aao = icmp slt i32 %.8.lcssa, %i.zn
  br i1 %i.aao, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %._crit_edge905
  %i.aap = zext nneg i32 %i.zn to i64
  %i.aaq = getelementptr [8 x i8], ptr %2, i64 %i.aap
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -4   ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !414
  %i.aat = fneg float %i.aas
  store float %i.aat, ptr %i.aar, align 4, !tbaa !414
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph910, %middle.block1434, %bb.bu, %._crit_edge905, %bb.bw, %bb.bv
  ret void

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
  %.pn723.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748 ], [ %.pn705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754 ], [ %.pn723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739 ], [ %.pn721, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ], [ %.pn707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751 ]
  resume { ptr, i32 } %.pn723.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R2IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = icmp sgt i32 %3, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph75.split.preheader

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph75.split.preheader168

vector.memcheck:                                  ; preds = %.lr.ph75.split.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.f)
  %i.g = shl nuw nsw i64 %smax92, 3               ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 -4
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %scevgep94 = getelementptr i8, ptr %i.i, i64 -4
  %scevgep95 = getelementptr i8, ptr %1, i64 4
  %scevgep96 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep97 = getelementptr i8, ptr %1, i64 4
  %scevgep98 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %1, %scevgep94
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %scevgep95, %scevgep98
  %bound1100 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %.lr.ph75.split.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %index ; 3 uses
  %wide.vec = load <4 x float>, ptr %i.j, align 4, !tbaa !143 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.c ; 2 uses
  %wide.vec103 = load <4 x float>, ptr %i.k, align 4, !tbaa !143 ; 2 uses
  %interleaved.vec = fadd <4 x float> %wide.vec, %wide.vec103
  store <4 x float> %interleaved.vec, ptr %i.j, align 4, !tbaa !143
  %interleaved.vec106 = fsub <4 x float> %wide.vec, %wide.vec103
  store <4 x float> %interleaved.vec106, ptr %i.k, align 4, !tbaa !143
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge76, label %.lr.ph75.split.preheader168

.lr.ph75.split.preheader168:                      ; preds = %vector.memcheck, %.lr.ph75.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph75.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph75.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph75
  %i.m = sext i32 %4 to i64                       ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.n = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %i.q = add nsw i64 %i.p, -4                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %6 = add nuw nsw i64 %i.r, %i.p                 ; 2 uses
  %scevgep114 = getelementptr i8, ptr %5, i64 8   ; 2 uses
  %scevgep115 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %scevgep120 = getelementptr i8, ptr %5, i64 12  ; 2 uses
  %scevgep121 = getelementptr i8, ptr %5, i64 %i.p ; 2 uses
  %i.s = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check146 = icmp sgt i32 %3, 9
  %ident.check108.not = icmp eq i32 %4, 1
  %or.cond167 = and i1 %min.iters.check146, %ident.check108.not
  %i.t = getelementptr i8, ptr %1, i64 %6
  %i.u = getelementptr i8, ptr %1, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 12
  %i.w = getelementptr i8, ptr %1, i64 %i.p
  %i.x = getelementptr i8, ptr %1, i64 %6
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = getelementptr i8, ptr %1, i64 %i.r
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = getelementptr i8, ptr %1, i64 %i.q
  %n.vec148 = and i64 %i.s, -4                    ; 3 uses
  %i.ac = or disjoint i64 %n.vec148, 1            ; 2 uses
  %cmp.n164 = icmp eq i64 %i.s, %n.vec148
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next87, %._crit_edge.us ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86 ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.c ; 2 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !143 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !143 ; 2 uses
  %i.ah = fadd <2 x float> %i.af, %i.ag
  store <2 x float> %i.ah, ptr %i.ad, align 4, !tbaa !143
  %i.ai = fsub <2 x float> %i.af, %i.ag
  store <2 x float> %i.ai, ptr %i.ae, align 4, !tbaa !143
  br i1 %or.cond167, label %vector.memcheck109, label %scalar.ph145.preheader

vector.memcheck109:                               ; preds = %.lr.ph.us
  %i.aj = mul i64 %i.o, %indvar                   ; 8 uses
  %scevgep119 = getelementptr i8, ptr %i.t, i64 %i.aj ; 2 uses
  %scevgep118 = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %scevgep117 = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep116 = getelementptr i8, ptr %i.ak, i64 12 ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.aa, i64 %i.aj ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep110 = getelementptr i8, ptr %i.al, i64 8 ; 2 uses
  %bound0122 = icmp ult ptr %scevgep110, %scevgep113
  %bound1123 = icmp ult ptr %scevgep112, %scevgep111
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0125 = icmp ult ptr %scevgep110, %scevgep115
  %bound1126 = icmp ult ptr %scevgep114, %scevgep111
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %found.conflict124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep112, %scevgep115
  %bound1130 = icmp ult ptr %scevgep114, %scevgep113
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep116, %scevgep119
  %bound1134 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep116, %scevgep121
  %bound1138 = icmp ult ptr %scevgep120, %scevgep117
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %scevgep118, %scevgep121
  %bound1142 = icmp ult ptr %scevgep120, %scevgep119
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  br i1 %conflict.rdx144, label %scalar.ph145.preheader, label %vector.body149

vector.body149:                                   ; preds = %vector.memcheck109, %vector.body149
  %index150 = phi i64 [ %index.next162, %vector.body149 ], [ 0, %vector.memcheck109 ] ; 2 uses
  %i.am = or disjoint i64 %index150, 1            ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.c ; 2 uses
  %wide.vec151 = load <8 x float>, ptr %i.ao, align 4, !tbaa !143 ; 2 uses
  %strided.vec152 = shufflevector <8 x float> %wide.vec151, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec153 = shufflevector <8 x float> %wide.vec151, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %5, i64 %i.am
  %wide.vec154 = load <8 x float>, ptr %i.ap, align 4, !tbaa !143 ; 2 uses
  %strided.vec155 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec156 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aq = fneg <4 x float> %strided.vec156
  %i.ar = fmul <4 x float> %strided.vec153, %i.aq
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec152, <4 x float> %strided.vec155, <4 x float> %i.ar) ; 2 uses
  %i.at = fmul <4 x float> %strided.vec152, %strided.vec156
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec153, <4 x float> %strided.vec155, <4 x float> %i.at) ; 2 uses
  %wide.vec157 = load <8 x float>, ptr %i.an, align 4, !tbaa !143 ; 2 uses
  %strided.vec158 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec159 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.av = fadd <4 x float> %strided.vec158, %i.as
  %i.aw = fadd <4 x float> %strided.vec159, %i.au
  %interleaved.vec160 = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec160, ptr %i.an, align 4, !tbaa !143
  %i.ax = fsub <4 x float> %strided.vec158, %i.as
  %i.ay = fsub <4 x float> %strided.vec159, %i.au
  %interleaved.vec161 = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec161, ptr %i.ao, align 4, !tbaa !143
  %index.next162 = add nuw i64 %index150, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next162, %n.vec148
  br i1 %i.az, label %middle.block163, label %vector.body149, !llvm.loop !458

middle.block163:                                  ; preds = %vector.body149
  br i1 %cmp.n164, label %._crit_edge.us, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %vector.memcheck109, %.lr.ph.us, %middle.block163
  %indvars.iv81.ph = phi i64 [ 1, %vector.memcheck109 ], [ 1, %.lr.ph.us ], [ %i.ac, %middle.block163 ]
  %indvars.iv79.ph = phi i64 [ %i.m, %vector.memcheck109 ], [ %i.m, %.lr.ph.us ], [ %i.ac, %middle.block163 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph145 ], [ %indvars.iv81.ph, %scalar.ph145.preheader ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph145 ], [ %indvars.iv79.ph, %scalar.ph145.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv81 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.c ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !412
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !414 ; 2 uses
  %i.bg = fneg float %i.bf
  %i.bh = load <2 x float>, ptr %i.bb, align 4, !tbaa !143 ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bg, i64 1
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bn, <2 x float> %i.bl) ; 2 uses
  %i.bp = load <2 x float>, ptr %i.ba, align 4, !tbaa !143 ; 2 uses
  %i.bq = fadd <2 x float> %i.bp, %i.bo
  store <2 x float> %i.bq, ptr %i.ba, align 4, !tbaa !143
  %i.br = fsub <2 x float> %i.bp, %i.bo
  store <2 x float> %i.br, ptr %i.bb, align 4, !tbaa !143
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, %i.m
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph145, !llvm.loop !459

._crit_edge.us:                                   ; preds = %scalar.ph145, %middle.block163
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.n ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv.next87 to i32
  %i.bt = icmp sgt i32 %2, %i.bs
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bt, label %.lr.ph.us, label %._crit_edge76, !llvm.loop !460

._crit_edge76:                                    ; preds = %.lr.ph75.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader168, %.lr.ph75.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph75.split ], [ %indvars.iv.ph, %.lr.ph75.split.preheader168 ] ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.c ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !tbaa !143 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bv, align 4, !tbaa !143 ; 2 uses
  %i.by = fadd <2 x float> %i.bw, %i.bx
  store <2 x float> %i.by, ptr %i.bu, align 4, !tbaa !143
  %i.bz = fsub <2 x float> %i.bw, %i.bx
  store <2 x float> %i.bz, ptr %i.bv, align 4, !tbaa !143
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.ca = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.ca, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !461
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R3IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 3                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp sgt i32 %3, 5
  br i1 %i.f, label %.lr.ph.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph133.split.preheader309

vector.memcheck:                                  ; preds = %.lr.ph133.split.preheader
  %smax150 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = shl nuw nsw i64 %smax150, 3              ; 6 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 -4   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  %scevgep152 = getelementptr i8, ptr %i.k, i64 -4 ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.i
  %scevgep154 = getelementptr i8, ptr %i.l, i64 -4 ; 2 uses
  %scevgep155 = getelementptr i8, ptr %1, i64 4   ; 2 uses
  %scevgep156 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep157 = getelementptr i8, ptr %1, i64 4   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep159 = getelementptr i8, ptr %1, i64 4   ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep152
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %1, %scevgep154
  %bound1162 = icmp ult ptr %1, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %1, %scevgep154
  %bound1165 = icmp ult ptr %1, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep155, %scevgep158
  %bound1169 = icmp ult ptr %scevgep157, %scevgep156
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep155, %scevgep160
  %bound1173 = icmp ult ptr %scevgep159, %scevgep156
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep157, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph133.split.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.c ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.n, align 4, !tbaa !143 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec180 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %wide.vec181 = load <8 x float>, ptr %i.o, align 4, !tbaa !143 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK2cv6DFT_R3IfEclEPNS_7ComplexIfEEiiiPKS3_:bb.a
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %scalar.ph283.preheader, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck191, %vector.body287
  %index288 = phi i64 [ %index.next304, %vector.body287 ], [ 0, %vector.memcheck191 ] ; 5 uses
  %i.cf = or disjoint i64 %index288, 1            ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %wide.vec289 = load <8 x float>, ptr %i.ch, align 4, !tbaa !143 ; 2 uses
  %strided.vec290 = shufflevector <8 x float> %wide.vec289, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec291 = shufflevector <8 x float> %wide.vec289, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cf
  %wide.vec292 = load <8 x float>, ptr %i.ci, align 4, !tbaa !143 ; 2 uses
  %strided.vec293 = shufflevector <8 x float> %wide.vec292, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec294 = shufflevector <8 x float> %wide.vec292, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cj = fneg <4 x float> %strided.vec294
  %i.ck = fmul <4 x float> %strided.vec291, %i.cj
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec290, <4 x float> %strided.vec293, <4 x float> %i.ck) ; 2 uses
  %i.cm = fmul <4 x float> %strided.vec293, %strided.vec291
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec290, <4 x float> %strided.vec294, <4 x float> %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.e ; 2 uses
  %wide.vec295 = load <8 x float>, ptr %i.co, align 4, !tbaa !143 ; 2 uses
  %strided.vec296 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec297 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cp = shl nsw i64 %i.cf, 4
  %i.cq = shl i64 %index288, 4
  %i.cr = shl i64 %index288, 4
  %i.cs = shl i64 %index288, 4
  %i.ct = getelementptr inbounds i8, ptr %5, i64 %i.cp ; 2 uses
  %i.cu = getelementptr i8, ptr %5, i64 %i.cq     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = getelementptr i8, ptr %5, i64 %i.cr     ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 48
  %i.cy = getelementptr i8, ptr %5, i64 %i.cs     ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 64
  %i.da = load float, ptr %i.ct, align 4, !tbaa !412, !alias.scope !463
  %i.db = load float, ptr %i.cv, align 4, !tbaa !412, !alias.scope !463
  %i.dc = load float, ptr %i.cx, align 4, !tbaa !412, !alias.scope !463
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !412, !alias.scope !463
  %i.de = insertelement <4 x float> poison, float %i.da, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 3 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dj = getelementptr i8, ptr %i.cu, i64 36
  %i.dk = getelementptr i8, ptr %i.cw, i64 52
  %i.dl = getelementptr i8, ptr %i.cy, i64 68
  %i.dm = load float, ptr %i.di, align 4, !tbaa !414, !alias.scope !466
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !414, !alias.scope !466
  %i.do = load float, ptr %i.dk, align 4, !tbaa !414, !alias.scope !466
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !414, !alias.scope !466
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 3 ; 2 uses
  %i.du = fneg <4 x float> %i.dt
  %i.dv = fmul <4 x float> %strided.vec297, %i.du
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec296, <4 x float> %i.dh, <4 x float> %i.dv) ; 2 uses
  %i.dx = fmul <4 x float> %i.dh, %strided.vec297
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec296, <4 x float> %i.dt, <4 x float> %i.dx) ; 2 uses
  %i.dz = fadd <4 x float> %i.cl, %i.dw           ; 2 uses
  %i.ea = fadd <4 x float> %i.cn, %i.dy           ; 2 uses
  %i.eb = fsub <4 x float> %i.cn, %i.dy
  %i.ec = fmul <4 x float> %i.eb, splat (float f0x3F5DB3D7) ; 2 uses
  %i.ed = fsub <4 x float> %i.dw, %i.cl
  %i.ee = fmul <4 x float> %i.ed, splat (float f0x3F5DB3D7) ; 2 uses
  %wide.vec298 = load <8 x float>, ptr %i.cg, align 4, !tbaa !143 ; 2 uses
  %strided.vec299 = shufflevector <8 x float> %wide.vec298, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec300 = shufflevector <8 x float> %wide.vec298, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ef = fadd <4 x float> %strided.vec299, %i.dz
  %i.eg = fadd <4 x float> %strided.vec300, %i.ea
  %interleaved.vec301 = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec301, ptr %i.cg, align 4, !tbaa !143
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec299) ; 2 uses
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec300) ; 2 uses
  %i.ej = fadd <4 x float> %i.ec, %i.eh
  %i.ek = fadd <4 x float> %i.ei, %i.ee
  %interleaved.vec302 = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec302, ptr %i.ch, align 4, !tbaa !143
  %i.el = fsub <4 x float> %i.eh, %i.ec
  %i.em = fsub <4 x float> %i.ei, %i.ee
  %interleaved.vec303 = shufflevector <4 x float> %i.el, <4 x float> %i.em, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec303, ptr %i.co, align 4, !tbaa !143
  %index.next304 = add nuw i64 %index288, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next304, %n.vec286
  br i1 %i.en, label %scalar.ph283.preheader, label %vector.body287, !llvm.loop !468

scalar.ph283.preheader:                           ; preds = %vector.body287, %vector.memcheck191, %.lr.ph.us
  %indvars.iv139.ph = phi i64 [ %i.ae, %vector.memcheck191 ], [ %i.ae, %.lr.ph.us ], [ %i.bm, %vector.body287 ]
  %indvars.iv137.ph = phi i64 [ 1, %vector.memcheck191 ], [ 1, %.lr.ph.us ], [ %i.bm, %vector.body287 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph283 ], [ %indvars.iv139.ph, %scalar.ph283.preheader ] ; 3 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph283 ], [ %indvars.iv137.ph, %scalar.ph283.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv137 ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.c ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv139 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.e ; 2 uses
  %.idx = shl nsw i64 %indvars.iv139, 4
  %i.et = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load <2 x float>, ptr %i.ep, align 4, !tbaa !143 ; 3 uses
  %i.ew = load float, ptr %i.er, align 4, !tbaa !414 ; 2 uses
  %i.ex = load float, ptr %i.eq, align 4, !tbaa !412 ; 2 uses
  %i.ey = fneg float %i.ew
  %i.ez = load <2 x float>, ptr %i.es, align 4, !tbaa !143 ; 3 uses
  %i.fa = load float, ptr %i.eu, align 4, !tbaa !414 ; 2 uses
  %i.fb = load float, ptr %i.et, align 4, !tbaa !412 ; 2 uses
  %i.fc = fneg float %i.fa
  %i.fd = insertelement <2 x float> %i.ez, float %i.ex, i64 0
  %i.fe = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.fc, i64 1
  %i.fg = fmul <2 x float> %i.fd, %i.ff
  %i.fh = insertelement <2 x float> %i.ev, float %i.fb, i64 0
  %i.fi = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = insertelement <2 x float> %i.fi, float %i.ey, i64 1
  %i.fk = fmul <2 x float> %i.fh, %i.fj
  %i.fl = shufflevector <2 x float> %i.ev, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fb, i64 1
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.fg) ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.ex, i64 1
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fr, <2 x float> %i.fk) ; 2 uses
  %i.ft = fsub <2 x float> %i.fo, %i.fs
  %i.fu = fmul <2 x float> %i.ft, splat (float f0x3F5DB3D7) ; 2 uses
  %i.fv = load <2 x float>, ptr %i.eo, align 4, !tbaa !143 ; 2 uses
  %i.fw = fadd <2 x float> %i.fo, %i.fs
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fy = fadd <2 x float> %i.fv, %i.fx
  store <2 x float> %i.fy, ptr %i.eo, align 4, !tbaa !143
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> splat (float -5.000000e-01), <2 x float> %i.fv) ; 2 uses
  %i.ga = fadd <2 x float> %i.fu, %i.fz
  store <2 x float> %i.ga, ptr %i.ep, align 4, !tbaa !143
  %i.gb = fsub <2 x float> %i.fz, %i.fu
  store <2 x float> %i.gb, ptr %i.es, align 4, !tbaa !143
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, %i.ae
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph283, !llvm.loop !469

._crit_edge.us:                                   ; preds = %scalar.ph283
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, %i.af ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv.next145 to i32
  %i.gd = icmp sgt i32 %2, %i.gc
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gd, label %.lr.ph.us, label %._crit_edge134, !llvm.loop !470

._crit_edge134:                                   ; preds = %.lr.ph133.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader309, %.lr.ph133.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split ], [ %indvars.iv.ph, %.lr.ph133.split.preheader309 ] ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.c ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.e ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !143 ; 3 uses
  %i.gi = load <2 x float>, ptr %i.gg, align 4, !tbaa !143 ; 3 uses
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 2 uses
  %i.gk = load <2 x float>, ptr %i.ge, align 4, !tbaa !143 ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gm = shufflevector <2 x float> %i.gi, <2 x float> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gn = fsub <2 x float> %i.gl, %i.gm
  %i.go = fmul <2 x float> %i.gn, splat (float f0x3F5DB3D7) ; 2 uses
  %i.gp = fadd <2 x float> %i.gj, %i.gk
  store <2 x float> %i.gp, ptr %i.ge, align 4, !tbaa !143
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> splat (float -5.000000e-01), <2 x float> %i.gk) ; 2 uses
  %i.gr = fadd <2 x float> %i.gq, %i.go
  store <2 x float> %i.gr, ptr %i.gf, align 4, !tbaa !143
  %i.gs = fsub <2 x float> %i.gq, %i.go
  store <2 x float> %i.gs, ptr %i.gg, align 4, !tbaa !143
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.gt = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.gt, label %.lr.ph133.split, label %._crit_edge134, !llvm.loop !471
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R5IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 5                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge166.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = sext i32 %i.a to i64                     ; 5 uses
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge166.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.g = sext i32 %4 to i64
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 7 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = shl nuw nsw i64 %wide.trip.count, 3      ; 11 uses
  %i.k = add nsw i64 %i.j, -4                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 6 uses
  %i.m = shl nuw nsw i64 %i.e, 4                  ; 4 uses
  %i.n = shl nuw nsw i64 %i.e, 3                  ; 6 uses
  %6 = add nuw nsw i64 %i.l, %i.n                 ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count, 4      ; 2 uses
  %i.p = getelementptr i8, ptr %5, i64 %i.o
  %i.q = mul nuw nsw i64 %wide.trip.count, 24     ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.q
  %i.s = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1 ; 2 uses
  %i.u = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -12, i64 -20>
  %i.v = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -12, i64 -20>
  %i.w = shl nuw nsw i64 %wide.trip.count, 5      ; 2 uses
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep189 = getelementptr i8, ptr %i.x, i64 -28 ; 2 uses
  %scevgep190 = getelementptr i8, ptr %5, i64 %i.k ; 2 uses
  %i.y = add nuw nsw i64 %i.l, %i.n               ; 2 uses
  %scevgep201 = getelementptr i8, ptr %5, i64 4
  %i.z = getelementptr i8, ptr %5, i64 %i.o
  %i.aa = getelementptr i8, ptr %5, i64 %i.q
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1 ; 2 uses
  %i.ad = getelementptr i8, <2 x ptr> %i.ac, <2 x i64> <i64 -8, i64 -16>
  %i.ae = getelementptr i8, <2 x ptr> %i.ac, <2 x i64> <i64 -8, i64 -16>
  %i.af = getelementptr i8, ptr %5, i64 %i.w
  %scevgep204 = getelementptr i8, ptr %i.af, i64 -24 ; 2 uses
  %scevgep205 = getelementptr i8, ptr %5, i64 %i.j ; 2 uses
  %i.ag = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 5 uses
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep201, i64 0 ; 5 uses
  %i.ai = shufflevector <2 x ptr> %i.ad, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ugt i32 %3, 44
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %i.am = getelementptr i8, ptr %1, i64 %i.y
  %i.an = getelementptr i8, ptr %i.am, i64 %i.j
  %i.ao = getelementptr i8, ptr %1, i64 %i.y
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = getelementptr i8, ptr %1, i64 %i.n
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.j
  %i.as = getelementptr i8, ptr %1, i64 %i.n
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = getelementptr i8, ptr %1, i64 %i.m
  %i.av = getelementptr i8, ptr %i.au, i64 %i.j
  %i.aw = getelementptr i8, ptr %1, i64 %i.m
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %1, i64 %i.l
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.j
  %i.ba = getelementptr i8, ptr %1, i64 %i.l
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = getelementptr i8, ptr %1, i64 %i.j
  %i.bd = getelementptr i8, ptr %1, i64 %6
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.j
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = getelementptr i8, ptr %1, i64 %6
  %i.bh = getelementptr i8, ptr %1, i64 %i.n
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.j
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = getelementptr i8, ptr %1, i64 %i.n
  %i.bl = getelementptr i8, ptr %1, i64 %i.m
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.j
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = getelementptr i8, ptr %1, i64 %i.m
  %i.bp = getelementptr i8, ptr %1, i64 %i.l
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.j
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = getelementptr i8, ptr %1, i64 %i.l
  %i.bt = getelementptr i8, ptr %1, i64 %i.k
  %i.bu = insertelement <4 x ptr> %i.al, ptr %scevgep189, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep190, i64 3 ; 4 uses
  %i.bw = insertelement <4 x ptr> %i.ak, ptr %scevgep189, i64 2
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep190, i64 3
  %i.by = insertelement <4 x ptr> %i.aj, ptr %scevgep204, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep205, i64 3 ; 4 uses
  %i.ca = insertelement <4 x ptr> %i.ai, ptr %scevgep204, i64 2
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep205, i64 3
  %i.cc = and i64 %wide.trip.count, 3             ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = select i1 %i.cd, i64 4, i64 %i.cc
  %n.vec = sub nsw i64 %wide.trip.count, %i.ce    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv172 ; 2 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ] ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader
  %i.cg = mul i64 %i.i, %indvar                   ; 20 uses
  %scevgep200 = getelementptr i8, ptr %i.an, i64 %i.cg ; 5 uses
  %scevgep199 = getelementptr i8, ptr %i.ap, i64 %i.cg ; 5 uses
  %scevgep198 = getelementptr i8, ptr %i.ar, i64 %i.cg ; 5 uses
  %scevgep197 = getelementptr i8, ptr %i.at, i64 %i.cg ; 5 uses
  %scevgep196 = getelementptr i8, ptr %i.av, i64 %i.cg ; 5 uses
  %scevgep195 = getelementptr i8, ptr %i.ax, i64 %i.cg ; 5 uses
  %scevgep194 = getelementptr i8, ptr %i.az, i64 %i.cg ; 5 uses
  %scevgep193 = getelementptr i8, ptr %i.bb, i64 %i.cg ; 5 uses
  %scevgep192 = getelementptr i8, ptr %i.bc, i64 %i.cg ; 5 uses
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep191 = getelementptr i8, ptr %i.ch, i64 4 ; 5 uses
  %scevgep186 = getelementptr i8, ptr %i.bf, i64 %i.cg ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.bg, i64 %i.cg ; 5 uses
  %scevgep184 = getelementptr i8, ptr %i.bj, i64 %i.cg ; 5 uses
  %scevgep183 = getelementptr i8, ptr %i.bk, i64 %i.cg ; 5 uses
  %scevgep182 = getelementptr i8, ptr %i.bn, i64 %i.cg ; 5 uses
  %scevgep181 = getelementptr i8, ptr %i.bo, i64 %i.cg ; 5 uses
  %scevgep180 = getelementptr i8, ptr %i.br, i64 %i.cg ; 5 uses
  %scevgep179 = getelementptr i8, ptr %i.bs, i64 %i.cg ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.bt, i64 %i.cg ; 5 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %i.cg ; 5 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep180
  %bound1 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %scevgep, %scevgep182
  %bound1207 = icmp ult ptr %scevgep181, %scevgep178
  %found.conflict208 = and i1 %bound0206, %bound1207
  %bound0209 = icmp ult ptr %scevgep, %scevgep184
  %bound1210 = icmp ult ptr %scevgep183, %scevgep178
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0213 = icmp ult ptr %scevgep, %scevgep186
  %bound1214 = icmp ult ptr %scevgep185, %scevgep178
  %found.conflict215 = and i1 %bound0213, %bound1214
  %i.ci = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cj = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ck = icmp ult <4 x ptr> %i.cj, %i.bv
  %i.cl = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.cm = icmp ult <4 x ptr> %i.ag, %i.cl
  %i.cn = shufflevector <4 x i1> %i.cm, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.co = and <4 x i1> %i.ck, %i.cn
  %bound0233 = icmp ult ptr %scevgep179, %scevgep182
  %bound1234 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0237 = icmp ult ptr %scevgep179, %scevgep184
  %bound1238 = icmp ult ptr %scevgep183, %scevgep180
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0241 = icmp ult ptr %scevgep179, %scevgep186
  %bound1242 = icmp ult ptr %scevgep185, %scevgep180
  %found.conflict243 = and i1 %bound0241, %bound1242
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cr = icmp ult <4 x ptr> %i.cq, %i.bv
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep180, i64 0
  %i.ct = icmp ult <4 x ptr> %i.ag, %i.cs
  %i.cu = shufflevector <4 x i1> %i.ct, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cv = and <4 x i1> %i.cr, %i.cu
  %bound0261 = icmp ult ptr %scevgep181, %scevgep184
  %bound1262 = icmp ult ptr %scevgep183, %scevgep182
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %scevgep181, %scevgep186
  %bound1266 = icmp ult ptr %scevgep185, %scevgep182
  %found.conflict267 = and i1 %bound0265, %bound1266
  %i.cw = insertelement <4 x ptr> poison, ptr %scevgep181, i64 0
  %i.cx = shufflevector <4 x ptr> %i.cw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cy = icmp ult <4 x ptr> %i.cx, %i.bv
  %i.cz = insertelement <4 x ptr> poison, ptr %scevgep182, i64 0
  %i.da = icmp ult <4 x ptr> %i.ag, %i.cz
  %i.db = shufflevector <4 x i1> %i.da, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dc = and <4 x i1> %i.cy, %i.db
  %bound0285 = icmp ult ptr %scevgep183, %scevgep186
  %bound1286 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict287 = and i1 %bound0285, %bound1286
  %i.dd = insertelement <4 x ptr> poison, ptr %scevgep183, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = icmp ult <4 x ptr> %i.de, %i.bv
  %i.dg = insertelement <4 x ptr> poison, ptr %scevgep184, i64 0
  %i.dh = icmp ult <4 x ptr> %i.ag, %i.dg
  %i.di = shufflevector <4 x i1> %i.dh, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dj = and <4 x i1> %i.df, %i.di
  %i.dk = insertelement <4 x ptr> poison, ptr %scevgep185, i64 0
  %i.dl = shufflevector <4 x ptr> %i.dk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dm = icmp ult <4 x ptr> %i.dl, %i.bx
  %i.dn = insertelement <4 x ptr> poison, ptr %scevgep186, i64 0
  %i.do = icmp ult <4 x ptr> %i.ag, %i.dn
  %i.dp = shufflevector <4 x i1> %i.do, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dq = and <4 x i1> %i.dm, %i.dp
  %bound0321 = icmp ult ptr %scevgep191, %scevgep194
  %bound1322 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict323 = and i1 %bound0321, %bound1322
  %bound0325 = icmp ult ptr %scevgep191, %scevgep196
  %bound1326 = icmp ult ptr %scevgep195, %scevgep192
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0329 = icmp ult ptr %scevgep191, %scevgep198
  %bound1330 = icmp ult ptr %scevgep197, %scevgep192
  %found.conflict331 = and i1 %bound0329, %bound1330
  %bound0333 = icmp ult ptr %scevgep191, %scevgep200
  %bound1334 = icmp ult ptr %scevgep199, %scevgep192
  %found.conflict335 = and i1 %bound0333, %bound1334
  %i.dr = insertelement <4 x ptr> poison, ptr %scevgep191, i64 0
  %i.ds = shufflevector <4 x ptr> %i.dr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dt = icmp ult <4 x ptr> %i.ds, %i.bz
  %i.du = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.dv = icmp ult <4 x ptr> %i.ah, %i.du
  %i.dw = shufflevector <4 x i1> %i.dv, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dx = and <4 x i1> %i.dt, %i.dw
  %bound0353 = icmp ult ptr %scevgep193, %scevgep196
  %bound1354 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0357 = icmp ult ptr %scevgep193, %scevgep198
  %bound1358 = icmp ult ptr %scevgep197, %scevgep194
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0361 = icmp ult ptr %scevgep193, %scevgep200
  %bound1362 = icmp ult ptr %scevgep199, %scevgep194
  %found.conflict363 = and i1 %bound0361, %bound1362
  %i.dy = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.dz = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ea = icmp ult <4 x ptr> %i.dz, %i.bz
  %i.eb = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.ec = icmp ult <4 x ptr> %i.ah, %i.eb
  %i.ed = shufflevector <4 x i1> %i.ec, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ee = and <4 x i1> %i.ea, %i.ed
  %bound0381 = icmp ult ptr %scevgep195, %scevgep198
  %bound1382 = icmp ult ptr %scevgep197, %scevgep196
  %found.conflict383 = and i1 %bound0381, %bound1382
  %bound0385 = icmp ult ptr %scevgep195, %scevgep200
  %bound1386 = icmp ult ptr %scevgep199, %scevgep196
  %found.conflict387 = and i1 %bound0385, %bound1386
  %i.ef = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.eg = shufflevector <4 x ptr> %i.ef, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eh = icmp ult <4 x ptr> %i.eg, %i.bz
  %i.ei = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.ej = icmp ult <4 x ptr> %i.ah, %i.ei
  %i.ek = shufflevector <4 x i1> %i.ej, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.el = and <4 x i1> %i.eh, %i.ek
  %bound0405 = icmp ult ptr %scevgep197, %scevgep200
  %bound1406 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict407 = and i1 %bound0405, %bound1406
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep197, i64 0
  %i.en = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eo = icmp ult <4 x ptr> %i.en, %i.bz
  %i.ep = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.eq = icmp ult <4 x ptr> %i.ah, %i.ep
  %i.er = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.es = and <4 x i1> %i.eo, %i.er
  %i.et = insertelement <4 x ptr> poison, ptr %scevgep199, i64 0
  %i.eu = shufflevector <4 x ptr> %i.et, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ev = icmp ult <4 x ptr> %i.eu, %i.cb
  %i.ew = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0
  %i.ex = icmp ult <4 x ptr> %i.ah, %i.ew
  %i.ey = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ez = and <4 x i1> %i.ev, %i.ey
  %rdx.op = or <4 x i1> %i.co, %i.cv
  %rdx.op461 = or <4 x i1> %rdx.op, %i.dc
  %rdx.op462 = or <4 x i1> %rdx.op461, %i.dj
  %rdx.op463 = or <4 x i1> %rdx.op462, %i.dq
  %rdx.op464 = or <4 x i1> %rdx.op463, %i.dx
  %rdx.op465 = or <4 x i1> %rdx.op464, %i.ee
  %rdx.op466 = or <4 x i1> %rdx.op465, %i.el
  %rdx.op467 = or <4 x i1> %rdx.op466, %i.es
  %rdx.op468 = or <4 x i1> %rdx.op467, %i.ez
  %i.fa = bitcast <4 x i1> %rdx.op468 to i4
  %i.fb = icmp ne i4 %i.fa, 0
  %op.rdx = or i1 %i.fb, %found.conflict
  %op.rdx469 = or i1 %found.conflict208, %found.conflict211
  %op.rdx470 = or i1 %found.conflict215, %found.conflict235
  %op.rdx471 = or i1 %found.conflict239, %found.conflict243
  %op.rdx472 = or i1 %found.conflict263, %found.conflict267
  %op.rdx473 = or i1 %found.conflict287, %found.conflict323
  %op.rdx474 = or i1 %found.conflict327, %found.conflict331
  %op.rdx475 = or i1 %found.conflict335, %found.conflict355
  %op.rdx476 = or i1 %found.conflict359, %found.conflict363
  %op.rdx477 = or i1 %found.conflict383, %found.conflict387
  %op.rdx478 = or i1 %op.rdx, %op.rdx469
  %op.rdx479 = or i1 %op.rdx470, %op.rdx471
  %op.rdx480 = or i1 %op.rdx472, %op.rdx473
  %op.rdx481 = or i1 %op.rdx474, %op.rdx475
  %op.rdx482 = or i1 %op.rdx476, %op.rdx477
  %op.rdx483 = or i1 %op.rdx478, %op.rdx479
  %op.rdx484 = or i1 %op.rdx480, %op.rdx481
  %op.rdx485 = or i1 %op.rdx482, %found.conflict407
  %op.rdx486 = or i1 %op.rdx483, %op.rdx484
  %op.rdx487 = or i1 %op.rdx486, %op.rdx485
  br i1 %op.rdx487, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.fc = or disjoint i64 %index, 1               ; 3 uses
  %i.fd = or disjoint i64 %index, 2               ; 3 uses
  %i.fe = or disjoint i64 %index, 3               ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.e ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.e ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.f ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fi, align 4, !tbaa !143 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec441 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %5, i64 %index
  %wide.vec442 = load <8 x float>, ptr %i.fj, align 4, !tbaa !143 ; 2 uses
  %strided.vec443 = shufflevector <8 x float> %wide.vec442, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec444 = shufflevector <8 x float> %wide.vec442, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fk = fneg <4 x float> %strided.vec444
  %i.fl = fmul <4 x float> %strided.vec441, %i.fk
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec443, <4 x float> %i.fl) ; 2 uses
  %i.fn = fmul <4 x float> %strided.vec443, %strided.vec441
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec444, <4 x float> %i.fn) ; 2 uses
  %wide.vec445 = load <8 x float>, ptr %i.fh, align 4, !tbaa !143 ; 2 uses
  %strided.vec446 = shufflevector <8 x float> %wide.vec445, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec447 = shufflevector <8 x float> %wide.vec445, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fp = shl nsw i64 %index, 5
  %i.fq = shl nsw i64 %i.fc, 5
  %i.fr = shl nsw i64 %i.fd, 5
  %i.fs = shl nsw i64 %i.fe, 5
end_hunk_1
begin_hunk_2_@_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit.thread804
  br i1 %min.iters.check1435, label %.lr.ph923.preheader1496, label %vector.ph1436

vector.ph1436:                                    ; preds = %.lr.ph923.preheader
  %n.vec1437 = and i64 %wide.trip.count1027, 2147483646 ; 3 uses
  %i.xt = insertelement <2 x double> poison, double %i.m, i64 0
  %i.xu = insertelement <2 x double> %i.xt, double %.0638, i64 1 ; 2 uses
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1441, %vector.body1438 ] ; 3 uses
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index1439 ; 2 uses
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index1439
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.xv, align 8
  %wide.load1440 = load <2 x double>, ptr %i.xx, align 8
  %i.xy = fmul <2 x double> %i.xu, %wide.load
  %i.xz = fmul <2 x double> %i.xu, %wide.load1440
  store <2 x double> %i.xy, ptr %i.xv, align 8
  store <2 x double> %i.xz, ptr %i.xx, align 8
  %index.next1441 = add nuw i64 %index1439, 2     ; 2 uses
  %i.ya = icmp eq i64 %index.next1441, %n.vec1437
  br i1 %i.ya, label %middle.block1442, label %vector.body1438, !llvm.loop !530

middle.block1442:                                 ; preds = %vector.body1438
  %cmp.n = icmp eq i64 %n.vec1437, %wide.trip.count1027
  br i1 %cmp.n, label %.critedge, label %.lr.ph923.preheader1496

.lr.ph923.preheader1496:                          ; preds = %.lr.ph923.preheader, %middle.block1442
  %indvars.iv1024.ph = phi i64 [ 0, %.lr.ph923.preheader ], [ %n.vec1437, %middle.block1442 ]
  %i.yb = insertelement <2 x double> poison, double %i.m, i64 0
  %i.yc = insertelement <2 x double> %i.yb, double %.0638, i64 1
  br label %.lr.ph923

.lr.ph923:                                        ; preds = %.lr.ph923.preheader1496, %.lr.ph923
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %.lr.ph923 ], [ %indvars.iv1024.ph, %.lr.ph923.preheader1496 ] ; 2 uses
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1024 ; 2 uses
  %i.ye = load <2 x double>, ptr %i.yd, align 8, !tbaa !228
  %i.yf = fmul <2 x double> %i.yc, %i.ye
  store <2 x double> %i.yf, ptr %i.yd, align 8, !tbaa !228
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 2 uses
  %exitcond1028.not = icmp eq i64 %indvars.iv.next1025, %wide.trip.count1027
  br i1 %exitcond1028.not, label %.critedge, label %.lr.ph923, !llvm.loop !531

bb.bv:                                            ; preds = %._crit_edge914
  br i1 %i.i, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.bv
  %i.yg = load i32, ptr %i.e, align 4, !tbaa !418 ; 4 uses
  %.not716915 = icmp slt i32 %i.yg, 2
  br i1 %.not716915, label %._crit_edge918, label %.lr.ph917.preheader

.lr.ph917.preheader:                              ; preds = %.preheader
  %i.yh = add nsw i32 %i.yg, -2
  %i.yi = lshr i32 %i.yh, 1                       ; 2 uses
  %narrow1521 = add nuw i32 %i.yi, 1              ; 2 uses
  %i.yj = zext i32 %narrow1521 to i64             ; 2 uses
  %xtraiter1515 = and i64 %i.yj, 1
  %i.yk = icmp eq i32 %i.yi, 0
  br i1 %i.yk, label %.lr.ph917.epil.preheader, label %.lr.ph917.preheader.new

.lr.ph917.preheader.new:                          ; preds = %.lr.ph917.preheader
  %unroll_iter1519 = and i64 %i.yj, 4294967294
  br label %.lr.ph917

.lr.ph917:                                        ; preds = %.lr.ph917, %.lr.ph917.preheader.new
  %indvars.iv1021 = phi i64 [ 0, %.lr.ph917.preheader.new ], [ %indvars.iv.next1022.1, %.lr.ph917 ] ; 3 uses
  %niter1520 = phi i64 [ 0, %.lr.ph917.preheader.new ], [ %niter1520.next.1, %.lr.ph917 ]
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 2 uses
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !410
  %i.yo = fneg double %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 24 ; 2 uses
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !410
  %i.yr = fneg double %i.yq
  store double %i.yo, ptr %i.ym, align 8, !tbaa !410
  store double %i.yr, ptr %i.yp, align 8, !tbaa !410
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 40 ; 2 uses
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !410
  %i.yv = fneg double %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 56 ; 2 uses
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !410
  %i.yy = fneg double %i.yx
  store double %i.yv, ptr %i.yt, align 8, !tbaa !410
  store double %i.yy, ptr %i.yw, align 8, !tbaa !410
  %indvars.iv.next1022.1 = add nuw nsw i64 %indvars.iv1021, 4 ; 3 uses
  %niter1520.next.1 = add nuw nsw i64 %niter1520, 2 ; 2 uses
  %niter1520.ncmp.1 = icmp eq i64 %niter1520.next.1, %unroll_iter1519
  br i1 %niter1520.ncmp.1, label %._crit_edge918.loopexit.unr-lcssa, label %.lr.ph917, !llvm.loop !532

._crit_edge918.loopexit.unr-lcssa:                ; preds = %.lr.ph917
  %lcmp.mod1516.not = icmp eq i64 %xtraiter1515, 0
  br i1 %lcmp.mod1516.not, label %._crit_edge918.loopexit, label %.lr.ph917.epil.preheader

.lr.ph917.epil.preheader:                         ; preds = %._crit_edge918.loopexit.unr-lcssa, %.lr.ph917.preheader
  %indvars.iv1021.epil.init = phi i64 [ 0, %.lr.ph917.preheader ], [ %indvars.iv.next1022.1, %._crit_edge918.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1518 = trunc i32 %narrow1521 to i1
  call void @llvm.assume(i1 %lcmp.mod1518)
  %i.yz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1021.epil.init ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  %i.zb = load double, ptr %i.za, align 8, !tbaa !410
  %i.zc = fneg double %i.zb
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 24 ; 2 uses
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !410
  %i.zf = fneg double %i.ze
  store double %i.zc, ptr %i.za, align 8, !tbaa !410
  store double %i.zf, ptr %i.zd, align 8, !tbaa !410
  %indvars.iv.next1022.epil = add nuw nsw i64 %indvars.iv1021.epil.init, 2
  br label %._crit_edge918.loopexit

._crit_edge918.loopexit:                          ; preds = %._crit_edge918.loopexit.unr-lcssa, %.lr.ph917.epil.preheader
  %indvars.iv.next1022.lcssa = phi i64 [ %indvars.iv.next1022.1, %._crit_edge918.loopexit.unr-lcssa ], [ %indvars.iv.next1022.epil, %.lr.ph917.epil.preheader ]
  %i.zg = trunc nuw nsw i64 %indvars.iv.next1022.lcssa to i32
  br label %._crit_edge918

._crit_edge918:                                   ; preds = %._crit_edge918.loopexit, %.preheader
  %.8.lcssa = phi i32 [ 0, %.preheader ], [ %i.zg, %._crit_edge918.loopexit ]
  %i.zh = icmp slt i32 %.8.lcssa, %i.yg
  br i1 %i.zh, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %._crit_edge918
  %i.zi = zext nneg i32 %i.yg to i64
  %i.zj = getelementptr [16 x i8], ptr %2, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 -8     ; 2 uses
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !410
  %i.zm = fneg double %i.zl
  store double %i.zm, ptr %i.zk, align 8, !tbaa !410
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph923, %middle.block1442, %bb.bu, %._crit_edge918, %bb.bw, %bb.bv
  ret void

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
  %.pn723.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748 ], [ %.pn705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754 ], [ %.pn723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739 ], [ %.pn721, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ], [ %.pn707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751 ]
  resume { ptr, i32 } %.pn723.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R2IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 2                           ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = icmp sgt i32 %3, 3
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph75.split.preheader

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  %min.iters.check = icmp ugt i32 %2, 11
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph75.split.preheader163

.lr.ph75.split.preheader163:                      ; preds = %vector.memcheck, %.lr.ph75.split.preheader
  br label %.lr.ph75.split

vector.memcheck:                                  ; preds = %.lr.ph75.split.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.f)
  %i.g = shl nuw nsw i64 %smax92, 4               ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 -8
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %scevgep94 = getelementptr i8, ptr %i.i, i64 -8
  %scevgep95 = getelementptr i8, ptr %1, i64 8
  %scevgep96 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep97 = getelementptr i8, ptr %1, i64 8
  %scevgep98 = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %1, %scevgep94
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %scevgep95, %scevgep98
  %bound1100 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  br i1 %conflict.rdx, label %.lr.ph75.split.preheader163, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %1, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.j, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.c ; 2 uses
  %wide.load103 = load <2 x double>, ptr %i.k, align 8 ; 2 uses
  %i.l = fadd <2 x double> %wide.load, %wide.load103
  %i.m = fsub <2 x double> %wide.load, %wide.load103
  store <2 x double> %i.l, ptr %i.j, align 8
  store <2 x double> %i.m, ptr %i.k, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.n = icmp eq i64 %index.next, %i.f
  br i1 %i.n, label %._crit_edge76, label %vector.body, !llvm.loop !533

.lr.ph.us.preheader:                              ; preds = %.lr.ph75
  %i.o = sext i32 %4 to i64                       ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.p = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = shl nuw nsw i64 %wide.trip.count, 4      ; 4 uses
  %i.s = add nsw i64 %i.r, -8                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.c, 4                  ; 3 uses
  %6 = add nuw nsw i64 %i.t, %i.r                 ; 2 uses
  %scevgep112 = getelementptr i8, ptr %5, i64 16  ; 2 uses
  %scevgep113 = getelementptr i8, ptr %5, i64 %i.s ; 2 uses
  %scevgep118 = getelementptr i8, ptr %5, i64 24  ; 2 uses
  %scevgep119 = getelementptr i8, ptr %5, i64 %i.r ; 2 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check144 = icmp sgt i32 %3, 9
  %ident.check106.not = icmp eq i32 %4, 1
  %or.cond162 = and i1 %min.iters.check144, %ident.check106.not
  %i.v = getelementptr i8, ptr %1, i64 %6
  %i.w = getelementptr i8, ptr %1, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = getelementptr i8, ptr %1, i64 %i.r
  %i.z = getelementptr i8, ptr %1, i64 %6
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %i.ab = getelementptr i8, ptr %1, i64 %i.t
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = getelementptr i8, ptr %1, i64 %i.s
  %n.vec146 = and i64 %i.u, -2                    ; 2 uses
  %i.ae = or i64 %i.u, 1                          ; 2 uses
  %cmp.n159 = icmp eq i64 %i.u, %n.vec146
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next87, %._crit_edge.us ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv86 ; 5 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load <2 x double>, ptr %i.af, align 8, !tbaa !228 ; 2 uses
  %i.ai = load <2 x double>, ptr %i.ag, align 8, !tbaa !228 ; 2 uses
  %i.aj = fadd <2 x double> %i.ah, %i.ai
  store <2 x double> %i.aj, ptr %i.af, align 8, !tbaa !228
  %i.ak = fsub <2 x double> %i.ah, %i.ai
  store <2 x double> %i.ak, ptr %i.ag, align 8, !tbaa !228
  br i1 %or.cond162, label %vector.memcheck107, label %scalar.ph143.preheader

vector.memcheck107:                               ; preds = %.lr.ph.us
  %i.al = mul i64 %i.q, %indvar                   ; 8 uses
  %scevgep117 = getelementptr i8, ptr %i.v, i64 %i.al ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.x, i64 %i.al ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.y, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %scevgep114 = getelementptr i8, ptr %i.am, i64 24 ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.ad, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %scevgep108 = getelementptr i8, ptr %i.an, i64 16 ; 2 uses
  %bound0120 = icmp ult ptr %scevgep108, %scevgep111
  %bound1121 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict122 = and i1 %bound0120, %bound1121
  %bound0123 = icmp ult ptr %scevgep108, %scevgep113
  %bound1124 = icmp ult ptr %scevgep112, %scevgep109
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %found.conflict122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep110, %scevgep113
  %bound1128 = icmp ult ptr %scevgep112, %scevgep111
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep114, %scevgep117
  %bound1132 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep114, %scevgep119
  %bound1136 = icmp ult ptr %scevgep118, %scevgep115
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep116, %scevgep119
  %bound1140 = icmp ult ptr %scevgep118, %scevgep117
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  br i1 %conflict.rdx142, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.memcheck107, %vector.body147
  %index148 = phi i64 [ %index.next157, %vector.body147 ], [ 0, %vector.memcheck107 ] ; 2 uses
  %i.ao = or disjoint i64 %index148, 1            ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.c ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.aq, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec149 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ao
  %wide.vec150 = load <4 x double>, ptr %i.ar, align 8, !tbaa !228 ; 2 uses
  %strided.vec151 = shufflevector <4 x double> %wide.vec150, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec152 = shufflevector <4 x double> %wide.vec150, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.as = fneg <2 x double> %strided.vec152
  %i.at = fmul <2 x double> %strided.vec149, %i.as
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec151, <2 x double> %i.at) ; 2 uses
  %i.av = fmul <2 x double> %strided.vec, %strided.vec152
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec149, <2 x double> %strided.vec151, <2 x double> %i.av) ; 2 uses
  %wide.vec153 = load <4 x double>, ptr %i.ap, align 8, !tbaa !228 ; 2 uses
  %strided.vec154 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec155 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ax = fadd <2 x double> %strided.vec154, %i.au
  %i.ay = fadd <2 x double> %strided.vec155, %i.aw
  %interleaved.vec = shufflevector <2 x double> %i.ax, <2 x double> %i.ay, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ap, align 8, !tbaa !228
  %i.az = fsub <2 x double> %strided.vec154, %i.au
  %i.ba = fsub <2 x double> %strided.vec155, %i.aw
  %interleaved.vec156 = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec156, ptr %i.aq, align 8, !tbaa !228
  %index.next157 = add nuw i64 %index148, 2       ; 2 uses
  %i.bb = icmp eq i64 %index.next157, %n.vec146
  br i1 %i.bb, label %middle.block158, label %vector.body147, !llvm.loop !534

middle.block158:                                  ; preds = %vector.body147
  br i1 %cmp.n159, label %._crit_edge.us, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.memcheck107, %.lr.ph.us, %middle.block158
  %indvars.iv81.ph = phi i64 [ 1, %vector.memcheck107 ], [ 1, %.lr.ph.us ], [ %i.ae, %middle.block158 ]
  %indvars.iv79.ph = phi i64 [ %i.o, %vector.memcheck107 ], [ %i.o, %.lr.ph.us ], [ %i.ae, %middle.block158 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph143 ], [ %indvars.iv81.ph, %scalar.ph143.preheader ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph143 ], [ %indvars.iv79.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv81 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.c ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !408
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !410 ; 2 uses
  %i.bi = fneg double %i.bh
  %i.bj = load <2 x double>, ptr %i.bd, align 8, !tbaa !228 ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bi, i64 1
  %i.bm = fmul <2 x double> %i.bj, %i.bl
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bp, <2 x double> %i.bn) ; 2 uses
  %i.br = load <2 x double>, ptr %i.bc, align 8, !tbaa !228 ; 2 uses
  %i.bs = fadd <2 x double> %i.br, %i.bq
  store <2 x double> %i.bs, ptr %i.bc, align 8, !tbaa !228
  %i.bt = fsub <2 x double> %i.br, %i.bq
  store <2 x double> %i.bt, ptr %i.bd, align 8, !tbaa !228
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, %i.o
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph143, !llvm.loop !535

._crit_edge.us:                                   ; preds = %scalar.ph143, %middle.block158
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.p ; 2 uses
  %i.bu = trunc nuw i64 %indvars.iv.next87 to i32
  %i.bv = icmp sgt i32 %2, %i.bu
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bv, label %.lr.ph.us, label %._crit_edge76, !llvm.loop !536

._crit_edge76:                                    ; preds = %vector.body, %.lr.ph75.split, %._crit_edge.us, %bb.a
  ret void

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader163, %.lr.ph75.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph75.split ], [ 0, %.lr.ph75.split.preheader163 ] ; 2 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.c ; 2 uses
  %i.by = load <2 x double>, ptr %i.bw, align 8, !tbaa !228 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bx, align 8, !tbaa !228 ; 2 uses
  %i.ca = fadd <2 x double> %i.by, %i.bz
  store <2 x double> %i.ca, ptr %i.bw, align 8, !tbaa !228
  %i.cb = fsub <2 x double> %i.by, %i.bz
  store <2 x double> %i.cb, ptr %i.bx, align 8, !tbaa !228
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.cc = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.cc, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !537
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 3                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp sgt i32 %3, 5
  br i1 %i.f, label %.lr.ph.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 9
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph133.split.preheader309

vector.memcheck:                                  ; preds = %.lr.ph133.split.preheader
  %smax150 = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = shl nuw nsw i64 %smax150, 4              ; 6 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 -8   ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  %scevgep152 = getelementptr i8, ptr %i.k, i64 -8 ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.i
  %scevgep154 = getelementptr i8, ptr %i.l, i64 -8 ; 2 uses
  %scevgep155 = getelementptr i8, ptr %1, i64 8   ; 2 uses
  %scevgep156 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep157 = getelementptr i8, ptr %1, i64 8   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %scevgep159 = getelementptr i8, ptr %1, i64 8   ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep152
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %1, %scevgep154
  %bound1162 = icmp ult ptr %1, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %1, %scevgep154
  %bound1165 = icmp ult ptr %1, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep155, %scevgep158
  %bound1169 = icmp ult ptr %scevgep157, %scevgep156
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep155, %scevgep160
  %bound1173 = icmp ult ptr %scevgep159, %scevgep156
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %scevgep157, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph133.split.preheader309, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.n, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec180 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.e ; 2 uses
  %wide.vec181 = load <4 x double>, ptr %i.o, align 8, !tbaa !228 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_:bb.a
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep206, %scevgep209
  %bound1276 = icmp ult ptr %scevgep208, %scevgep207
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep206, %scevgep211
  %bound1280 = icmp ult ptr %scevgep210, %scevgep207
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %scalar.ph283.preheader, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck191, %vector.body287
  %index288 = phi i64 [ %index.next304, %vector.body287 ], [ 0, %vector.memcheck191 ] ; 3 uses
  %i.cc = or disjoint i64 %index288, 1            ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.c ; 2 uses
  %wide.vec289 = load <4 x double>, ptr %i.ce, align 8, !tbaa !228 ; 2 uses
  %strided.vec290 = shufflevector <4 x double> %wide.vec289, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec291 = shufflevector <4 x double> %wide.vec289, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %5, i64 %i.cc
  %wide.vec292 = load <4 x double>, ptr %i.cf, align 8, !tbaa !228 ; 2 uses
  %strided.vec293 = shufflevector <4 x double> %wide.vec292, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec294 = shufflevector <4 x double> %wide.vec292, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = fneg <2 x double> %strided.vec294
  %i.ch = fmul <2 x double> %strided.vec291, %i.cg
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec290, <2 x double> %strided.vec293, <2 x double> %i.ch) ; 2 uses
  %i.cj = fmul <2 x double> %strided.vec293, %strided.vec291
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec290, <2 x double> %strided.vec294, <2 x double> %i.cj) ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.e ; 2 uses
  %wide.vec295 = load <4 x double>, ptr %i.cl, align 8, !tbaa !228 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cm = shl nsw i64 %i.cc, 5
  %i.cn = shl i64 %index288, 5
  %i.co = getelementptr inbounds i8, ptr %5, i64 %i.cm ; 2 uses
  %i.cp = getelementptr i8, ptr %5, i64 %i.cn     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 64
  %i.cr = load double, ptr %i.co, align 8, !tbaa !408, !alias.scope !539
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !408, !alias.scope !539
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = getelementptr i8, ptr %i.cp, i64 72
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !410, !alias.scope !542
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !410, !alias.scope !542
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1 ; 2 uses
  %i.db = fneg <2 x double> %i.da
  %i.dc = fmul <2 x double> %strided.vec297, %i.db
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec296, <2 x double> %i.cu, <2 x double> %i.dc) ; 2 uses
  %i.de = fmul <2 x double> %i.cu, %strided.vec297
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec296, <2 x double> %i.da, <2 x double> %i.de) ; 2 uses
  %i.dg = fadd <2 x double> %i.ci, %i.dd          ; 2 uses
  %i.dh = fadd <2 x double> %i.ck, %i.df          ; 2 uses
  %i.di = fsub <2 x double> %i.ck, %i.df
  %i.dj = fmul <2 x double> %i.di, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.dk = fsub <2 x double> %i.dd, %i.ci
  %i.dl = fmul <2 x double> %i.dk, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %wide.vec298 = load <4 x double>, ptr %i.cd, align 8, !tbaa !228 ; 2 uses
  %strided.vec299 = shufflevector <4 x double> %wide.vec298, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec300 = shufflevector <4 x double> %wide.vec298, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dm = fadd <2 x double> %strided.vec299, %i.dg
  %i.dn = fadd <2 x double> %strided.vec300, %i.dh
  %interleaved.vec301 = shufflevector <2 x double> %i.dm, <2 x double> %i.dn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec301, ptr %i.cd, align 8, !tbaa !228
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec299) ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec300) ; 2 uses
  %i.dq = fadd <2 x double> %i.dj, %i.do
  %i.dr = fadd <2 x double> %i.dp, %i.dl
  %interleaved.vec302 = shufflevector <2 x double> %i.dq, <2 x double> %i.dr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec302, ptr %i.ce, align 8, !tbaa !228
  %i.ds = fsub <2 x double> %i.do, %i.dj
  %i.dt = fsub <2 x double> %i.dp, %i.dl
  %interleaved.vec303 = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec303, ptr %i.cl, align 8, !tbaa !228
  %index.next304 = add nuw i64 %index288, 2       ; 2 uses
  %i.du = icmp eq i64 %index.next304, %n.vec286
  br i1 %i.du, label %scalar.ph283.preheader, label %vector.body287, !llvm.loop !544

scalar.ph283.preheader:                           ; preds = %vector.body287, %vector.memcheck191, %.lr.ph.us
  %indvars.iv139.ph = phi i64 [ %i.ae, %vector.memcheck191 ], [ %i.ae, %.lr.ph.us ], [ %i.bj, %vector.body287 ]
  %indvars.iv137.ph = phi i64 [ 1, %vector.memcheck191 ], [ 1, %.lr.ph.us ], [ %i.bj, %vector.body287 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph283 ], [ %indvars.iv139.ph, %scalar.ph283.preheader ] ; 3 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph283 ], [ %indvars.iv137.ph, %scalar.ph283.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv137 ; 4 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.c ; 3 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !408 ; 2 uses
  %i.dy = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv139 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !410 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.e ; 3 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !408 ; 2 uses
  %.idx = shl nsw i64 %indvars.iv139, 5
  %i.ee = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !410 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load double, ptr %i.eb, align 8, !tbaa !410 ; 2 uses
  %i.ej = load double, ptr %i.dy, align 8, !tbaa !408 ; 2 uses
  %i.ek = fneg double %i.ei
  %i.el = load double, ptr %i.eh, align 8, !tbaa !410 ; 2 uses
  %i.em = load double, ptr %i.ee, align 8, !tbaa !408 ; 2 uses
  %i.en = fneg double %i.el
  %i.eo = fmul double %i.ej, %i.ea
  %i.ep = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ea, i64 1
  %i.er = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ek, i64 1
  %i.et = fmul <2 x double> %i.eq, %i.es
  %i.eu = fmul double %i.eg, %i.en
  %i.ev = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.ed, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.em, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eu, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.fa) ; 2 uses
  %i.fc = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.dx, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.ej, i64 1
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ff, <2 x double> %i.et) ; 2 uses
  %i.fh = fsub <2 x double> %i.fb, %i.fg
  %i.fi = fmul <2 x double> %i.fh, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fj = load <2 x double>, ptr %i.dv, align 8, !tbaa !228 ; 2 uses
  %i.fk = fadd <2 x double> %i.fb, %i.fg
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = fadd <2 x double> %i.fj, %i.fl
  store <2 x double> %i.fm, ptr %i.dv, align 8, !tbaa !228
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fj) ; 2 uses
  %i.fo = fadd <2 x double> %i.fi, %i.fn
  store <2 x double> %i.fo, ptr %i.dw, align 8, !tbaa !228
  %i.fp = fsub <2 x double> %i.fn, %i.fi
  store <2 x double> %i.fp, ptr %i.ec, align 8, !tbaa !228
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, %i.ae
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph283, !llvm.loop !545

._crit_edge.us:                                   ; preds = %scalar.ph283
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, %i.af ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv.next145 to i32
  %i.fr = icmp sgt i32 %2, %i.fq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fr, label %.lr.ph.us, label %._crit_edge134, !llvm.loop !546

._crit_edge134:                                   ; preds = %.lr.ph133.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader309, %.lr.ph133.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split ], [ %indvars.iv.ph, %.lr.ph133.split.preheader309 ] ; 2 uses
  %i.fs = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.c ; 2 uses
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.e ; 2 uses
  %i.fv = load <2 x double>, ptr %i.ft, align 8, !tbaa !228 ; 3 uses
  %i.fw = load <2 x double>, ptr %i.fu, align 8, !tbaa !228 ; 3 uses
  %i.fx = fadd <2 x double> %i.fv, %i.fw          ; 2 uses
  %i.fy = load <2 x double>, ptr %i.fs, align 8, !tbaa !228 ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.ga = shufflevector <2 x double> %i.fw, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.gb = fsub <2 x double> %i.fz, %i.ga
  %i.gc = fmul <2 x double> %i.gb, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.gd = fadd <2 x double> %i.fx, %i.fy
  store <2 x double> %i.gd, ptr %i.fs, align 8, !tbaa !228
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fy) ; 2 uses
  %i.gf = fadd <2 x double> %i.ge, %i.gc
  store <2 x double> %i.gf, ptr %i.ft, align 8, !tbaa !228
  %i.gg = fsub <2 x double> %i.ge, %i.gc
  store <2 x double> %i.gg, ptr %i.fu, align 8, !tbaa !228
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.gh = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.gh, label %.lr.ph133.split, label %._crit_edge134, !llvm.loop !547
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R5IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 5                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge166.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = sext i32 %i.a to i64                     ; 5 uses
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge166.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.g = sext i32 %4 to i64
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 7 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = shl nuw nsw i64 %wide.trip.count, 4      ; 11 uses
  %i.k = add nsw i64 %i.j, -8                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.f, 4                  ; 6 uses
  %i.m = shl nuw nsw i64 %i.e, 5                  ; 4 uses
  %i.n = shl nuw nsw i64 %i.e, 4                  ; 6 uses
  %6 = add nuw nsw i64 %i.l, %i.n                 ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count, 5      ; 2 uses
  %i.p = getelementptr i8, ptr %5, i64 %i.o
  %i.q = mul nuw nsw i64 %wide.trip.count, 48     ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.q
  %i.s = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1 ; 2 uses
  %i.u = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -24, i64 -40>
  %i.v = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -24, i64 -40>
  %i.w = shl nuw nsw i64 %wide.trip.count, 6      ; 2 uses
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep189 = getelementptr i8, ptr %i.x, i64 -56 ; 2 uses
  %scevgep190 = getelementptr i8, ptr %5, i64 %i.k ; 2 uses
  %i.y = add nuw nsw i64 %i.l, %i.n               ; 2 uses
  %scevgep201 = getelementptr i8, ptr %5, i64 8
  %i.z = getelementptr i8, ptr %5, i64 %i.o
  %i.aa = getelementptr i8, ptr %5, i64 %i.q
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1 ; 2 uses
  %i.ad = getelementptr i8, <2 x ptr> %i.ac, <2 x i64> <i64 -16, i64 -32>
  %i.ae = getelementptr i8, <2 x ptr> %i.ac, <2 x i64> <i64 -16, i64 -32>
  %i.af = getelementptr i8, ptr %5, i64 %i.w
  %scevgep204 = getelementptr i8, ptr %i.af, i64 -48 ; 2 uses
  %scevgep205 = getelementptr i8, ptr %5, i64 %i.j ; 2 uses
  %i.ag = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 5 uses
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep201, i64 0 ; 5 uses
  %i.ai = shufflevector <2 x ptr> %i.ad, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ugt i32 %3, 44
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %i.am = getelementptr i8, ptr %1, i64 %i.y
  %i.an = getelementptr i8, ptr %i.am, i64 %i.j
  %i.ao = getelementptr i8, ptr %1, i64 %i.y
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %1, i64 %i.n
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.j
  %i.as = getelementptr i8, ptr %1, i64 %i.n
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = getelementptr i8, ptr %1, i64 %i.m
  %i.av = getelementptr i8, ptr %i.au, i64 %i.j
  %i.aw = getelementptr i8, ptr %1, i64 %i.m
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = getelementptr i8, ptr %1, i64 %i.l
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.j
  %i.ba = getelementptr i8, ptr %1, i64 %i.l
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = getelementptr i8, ptr %1, i64 %i.j
  %i.bd = getelementptr i8, ptr %1, i64 %6
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.j
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  %i.bg = getelementptr i8, ptr %1, i64 %6
  %i.bh = getelementptr i8, ptr %1, i64 %i.n
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.j
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = getelementptr i8, ptr %1, i64 %i.n
  %i.bl = getelementptr i8, ptr %1, i64 %i.m
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.j
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = getelementptr i8, ptr %1, i64 %i.m
  %i.bp = getelementptr i8, ptr %1, i64 %i.l
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.j
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = getelementptr i8, ptr %1, i64 %i.l
  %i.bt = getelementptr i8, ptr %1, i64 %i.k
  %i.bu = insertelement <4 x ptr> %i.al, ptr %scevgep189, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep190, i64 3 ; 4 uses
  %i.bw = insertelement <4 x ptr> %i.ak, ptr %scevgep189, i64 2
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep190, i64 3
  %i.by = insertelement <4 x ptr> %i.aj, ptr %scevgep204, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep205, i64 3 ; 4 uses
  %i.ca = insertelement <4 x ptr> %i.ai, ptr %scevgep204, i64 2
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep205, i64 3
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv172 ; 2 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ] ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader
  %i.cd = mul i64 %i.i, %indvar                   ; 20 uses
  %scevgep200 = getelementptr i8, ptr %i.an, i64 %i.cd ; 5 uses
  %scevgep199 = getelementptr i8, ptr %i.ap, i64 %i.cd ; 5 uses
  %scevgep198 = getelementptr i8, ptr %i.ar, i64 %i.cd ; 5 uses
  %scevgep197 = getelementptr i8, ptr %i.at, i64 %i.cd ; 5 uses
  %scevgep196 = getelementptr i8, ptr %i.av, i64 %i.cd ; 5 uses
  %scevgep195 = getelementptr i8, ptr %i.ax, i64 %i.cd ; 5 uses
  %scevgep194 = getelementptr i8, ptr %i.az, i64 %i.cd ; 5 uses
  %scevgep193 = getelementptr i8, ptr %i.bb, i64 %i.cd ; 5 uses
  %scevgep192 = getelementptr i8, ptr %i.bc, i64 %i.cd ; 5 uses
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %scevgep191 = getelementptr i8, ptr %i.ce, i64 8 ; 5 uses
  %scevgep186 = getelementptr i8, ptr %i.bf, i64 %i.cd ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.bg, i64 %i.cd ; 5 uses
  %scevgep184 = getelementptr i8, ptr %i.bj, i64 %i.cd ; 5 uses
  %scevgep183 = getelementptr i8, ptr %i.bk, i64 %i.cd ; 5 uses
  %scevgep182 = getelementptr i8, ptr %i.bn, i64 %i.cd ; 5 uses
  %scevgep181 = getelementptr i8, ptr %i.bo, i64 %i.cd ; 5 uses
  %scevgep180 = getelementptr i8, ptr %i.br, i64 %i.cd ; 5 uses
  %scevgep179 = getelementptr i8, ptr %i.bs, i64 %i.cd ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.bt, i64 %i.cd ; 5 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %i.cd ; 5 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep180
  %bound1 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %scevgep, %scevgep182
  %bound1207 = icmp ult ptr %scevgep181, %scevgep178
  %found.conflict208 = and i1 %bound0206, %bound1207
  %bound0209 = icmp ult ptr %scevgep, %scevgep184
  %bound1210 = icmp ult ptr %scevgep183, %scevgep178
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0213 = icmp ult ptr %scevgep, %scevgep186
  %bound1214 = icmp ult ptr %scevgep185, %scevgep178
  %found.conflict215 = and i1 %bound0213, %bound1214
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = icmp ult <4 x ptr> %i.cg, %i.bv
  %i.ci = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.cj = icmp ult <4 x ptr> %i.ag, %i.ci
  %i.ck = shufflevector <4 x i1> %i.cj, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cl = and <4 x i1> %i.ch, %i.ck
  %bound0233 = icmp ult ptr %scevgep179, %scevgep182
  %bound1234 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0237 = icmp ult ptr %scevgep179, %scevgep184
  %bound1238 = icmp ult ptr %scevgep183, %scevgep180
  %found.conflict239 = and i1 %bound0237, %bound1238
  %bound0241 = icmp ult ptr %scevgep179, %scevgep186
  %bound1242 = icmp ult ptr %scevgep185, %scevgep180
  %found.conflict243 = and i1 %bound0241, %bound1242
  %i.cm = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0
  %i.cn = shufflevector <4 x ptr> %i.cm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.co = icmp ult <4 x ptr> %i.cn, %i.bv
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep180, i64 0
  %i.cq = icmp ult <4 x ptr> %i.ag, %i.cp
  %i.cr = shufflevector <4 x i1> %i.cq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cs = and <4 x i1> %i.co, %i.cr
  %bound0261 = icmp ult ptr %scevgep181, %scevgep184
  %bound1262 = icmp ult ptr %scevgep183, %scevgep182
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %scevgep181, %scevgep186
  %bound1266 = icmp ult ptr %scevgep185, %scevgep182
  %found.conflict267 = and i1 %bound0265, %bound1266
  %i.ct = insertelement <4 x ptr> poison, ptr %scevgep181, i64 0
  %i.cu = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cv = icmp ult <4 x ptr> %i.cu, %i.bv
  %i.cw = insertelement <4 x ptr> poison, ptr %scevgep182, i64 0
  %i.cx = icmp ult <4 x ptr> %i.ag, %i.cw
  %i.cy = shufflevector <4 x i1> %i.cx, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cz = and <4 x i1> %i.cv, %i.cy
  %bound0285 = icmp ult ptr %scevgep183, %scevgep186
  %bound1286 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict287 = and i1 %bound0285, %bound1286
  %i.da = insertelement <4 x ptr> poison, ptr %scevgep183, i64 0
  %i.db = shufflevector <4 x ptr> %i.da, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dc = icmp ult <4 x ptr> %i.db, %i.bv
  %i.dd = insertelement <4 x ptr> poison, ptr %scevgep184, i64 0
  %i.de = icmp ult <4 x ptr> %i.ag, %i.dd
  %i.df = shufflevector <4 x i1> %i.de, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dg = and <4 x i1> %i.dc, %i.df
  %i.dh = insertelement <4 x ptr> poison, ptr %scevgep185, i64 0
  %i.di = shufflevector <4 x ptr> %i.dh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dj = icmp ult <4 x ptr> %i.di, %i.bx
  %i.dk = insertelement <4 x ptr> poison, ptr %scevgep186, i64 0
  %i.dl = icmp ult <4 x ptr> %i.ag, %i.dk
  %i.dm = shufflevector <4 x i1> %i.dl, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dn = and <4 x i1> %i.dj, %i.dm
  %bound0321 = icmp ult ptr %scevgep191, %scevgep194
  %bound1322 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict323 = and i1 %bound0321, %bound1322
  %bound0325 = icmp ult ptr %scevgep191, %scevgep196
  %bound1326 = icmp ult ptr %scevgep195, %scevgep192
  %found.conflict327 = and i1 %bound0325, %bound1326
  %bound0329 = icmp ult ptr %scevgep191, %scevgep198
  %bound1330 = icmp ult ptr %scevgep197, %scevgep192
  %found.conflict331 = and i1 %bound0329, %bound1330
  %bound0333 = icmp ult ptr %scevgep191, %scevgep200
  %bound1334 = icmp ult ptr %scevgep199, %scevgep192
  %found.conflict335 = and i1 %bound0333, %bound1334
  %i.do = insertelement <4 x ptr> poison, ptr %scevgep191, i64 0
  %i.dp = shufflevector <4 x ptr> %i.do, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dq = icmp ult <4 x ptr> %i.dp, %i.bz
  %i.dr = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.ds = icmp ult <4 x ptr> %i.ah, %i.dr
  %i.dt = shufflevector <4 x i1> %i.ds, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.du = and <4 x i1> %i.dq, %i.dt
  %bound0353 = icmp ult ptr %scevgep193, %scevgep196
  %bound1354 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0357 = icmp ult ptr %scevgep193, %scevgep198
  %bound1358 = icmp ult ptr %scevgep197, %scevgep194
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0361 = icmp ult ptr %scevgep193, %scevgep200
  %bound1362 = icmp ult ptr %scevgep199, %scevgep194
  %found.conflict363 = and i1 %bound0361, %bound1362
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = icmp ult <4 x ptr> %i.dw, %i.bz
  %i.dy = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.dz = icmp ult <4 x ptr> %i.ah, %i.dy
  %i.ea = shufflevector <4 x i1> %i.dz, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eb = and <4 x i1> %i.dx, %i.ea
  %bound0381 = icmp ult ptr %scevgep195, %scevgep198
  %bound1382 = icmp ult ptr %scevgep197, %scevgep196
  %found.conflict383 = and i1 %bound0381, %bound1382
  %bound0385 = icmp ult ptr %scevgep195, %scevgep200
  %bound1386 = icmp ult ptr %scevgep199, %scevgep196
  %found.conflict387 = and i1 %bound0385, %bound1386
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.ed = shufflevector <4 x ptr> %i.ec, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ee = icmp ult <4 x ptr> %i.ed, %i.bz
  %i.ef = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.eg = icmp ult <4 x ptr> %i.ah, %i.ef
  %i.eh = shufflevector <4 x i1> %i.eg, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ei = and <4 x i1> %i.ee, %i.eh
  %bound0405 = icmp ult ptr %scevgep197, %scevgep200
  %bound1406 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict407 = and i1 %bound0405, %bound1406
  %i.ej = insertelement <4 x ptr> poison, ptr %scevgep197, i64 0
  %i.ek = shufflevector <4 x ptr> %i.ej, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.el = icmp ult <4 x ptr> %i.ek, %i.bz
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.en = icmp ult <4 x ptr> %i.ah, %i.em
  %i.eo = shufflevector <4 x i1> %i.en, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ep = and <4 x i1> %i.el, %i.eo
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep199, i64 0
  %i.er = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.es = icmp ult <4 x ptr> %i.er, %i.cb
  %i.et = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0
  %i.eu = icmp ult <4 x ptr> %i.ah, %i.et
  %i.ev = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ew = and <4 x i1> %i.es, %i.ev
  %rdx.op = or <4 x i1> %i.cl, %i.cs
  %rdx.op461 = or <4 x i1> %rdx.op, %i.cz
  %rdx.op462 = or <4 x i1> %rdx.op461, %i.dg
  %rdx.op463 = or <4 x i1> %rdx.op462, %i.dn
  %rdx.op464 = or <4 x i1> %rdx.op463, %i.du
  %rdx.op465 = or <4 x i1> %rdx.op464, %i.eb
  %rdx.op466 = or <4 x i1> %rdx.op465, %i.ei
  %rdx.op467 = or <4 x i1> %rdx.op466, %i.ep
  %rdx.op468 = or <4 x i1> %rdx.op467, %i.ew
  %i.ex = bitcast <4 x i1> %rdx.op468 to i4
  %i.ey = icmp ne i4 %i.ex, 0
  %op.rdx = or i1 %i.ey, %found.conflict
  %op.rdx469 = or i1 %found.conflict208, %found.conflict211
  %op.rdx470 = or i1 %found.conflict215, %found.conflict235
  %op.rdx471 = or i1 %found.conflict239, %found.conflict243
  %op.rdx472 = or i1 %found.conflict263, %found.conflict267
  %op.rdx473 = or i1 %found.conflict287, %found.conflict323
  %op.rdx474 = or i1 %found.conflict327, %found.conflict331
  %op.rdx475 = or i1 %found.conflict335, %found.conflict355
  %op.rdx476 = or i1 %found.conflict359, %found.conflict363
  %op.rdx477 = or i1 %found.conflict383, %found.conflict387
  %op.rdx478 = or i1 %op.rdx, %op.rdx469
  %op.rdx479 = or i1 %op.rdx470, %op.rdx471
  %op.rdx480 = or i1 %op.rdx472, %op.rdx473
  %op.rdx481 = or i1 %op.rdx474, %op.rdx475
  %op.rdx482 = or i1 %op.rdx476, %op.rdx477
  %op.rdx483 = or i1 %op.rdx478, %op.rdx479
  %op.rdx484 = or i1 %op.rdx480, %op.rdx481
  %op.rdx485 = or i1 %op.rdx482, %found.conflict407
  %op.rdx486 = or i1 %op.rdx483, %op.rdx484
  %op.rdx487 = or i1 %op.rdx486, %op.rdx485
  br i1 %op.rdx487, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 7 uses
  %i.ez = or disjoint i64 %index, 1               ; 3 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %index ; 4 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.e ; 4 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.e ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.f ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.fd, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec441 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fe = getelementptr inbounds [16 x i8], ptr %5, i64 %index
  %wide.vec442 = load <4 x double>, ptr %i.fe, align 8, !tbaa !228 ; 2 uses
  %strided.vec443 = shufflevector <4 x double> %wide.vec442, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec444 = shufflevector <4 x double> %wide.vec442, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ff = fneg <2 x double> %strided.vec444
  %i.fg = fmul <2 x double> %strided.vec441, %i.ff
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec443, <2 x double> %i.fg) ; 2 uses
  %i.fi = fmul <2 x double> %strided.vec443, %strided.vec441
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec444, <2 x double> %i.fi) ; 2 uses
  %wide.vec445 = load <4 x double>, ptr %i.fc, align 8, !tbaa !228 ; 2 uses
  %strided.vec446 = shufflevector <4 x double> %wide.vec445, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec447 = shufflevector <4 x double> %wide.vec445, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fk = shl nsw i64 %index, 6
  %i.fl = shl nsw i64 %i.ez, 6
  %i.fm = getelementptr inbounds i8, ptr %5, i64 %i.fk ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %5, i64 %i.fl ; 2 uses
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !408, !alias.scope !548
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !408, !alias.scope !548
end_hunk_3
