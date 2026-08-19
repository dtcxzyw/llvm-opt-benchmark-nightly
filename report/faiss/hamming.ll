inline.NumInlined: 1832
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN5faiss25match_hamming_thres_fixSLILNS_9SIMDLevelE0EEEmPKhS3_mmimPlPi:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %.not.i62 = icmp eq i64 %2, 0
  %.not49.i63 = icmp eq i64 %3, 0
  %or.cond.i64 = or i1 %.not.i62, %.not49.i63
  br i1 %or.cond.i64, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %bb.j, %._crit_edge.us.i81
  %.046.us.i66 = phi i64 [ %.2.us.i79, %._crit_edge.us.i81 ], [ 0, %bb.j ]
  %.02545.us.i67 = phi i64 [ %i.ar, %._crit_edge.us.i81 ], [ 0, %bb.j ] ; 2 uses
  %.02644.us.i68 = phi ptr [ %.228.us.i78, %._crit_edge.us.i81 ], [ %7, %bb.j ]
  %.02943.us.i69 = phi ptr [ %.231.us.i77, %._crit_edge.us.i81 ], [ %6, %bb.j ]
  %.03242.us.i70 = phi ptr [ %i.aq, %._crit_edge.us.i81 ], [ %0, %bb.j ] ; 2 uses
  %i.ae = load <4 x i64>, ptr %.03242.us.i70, align 8, !tbaa !31, !alias.scope !871, !noalias !880
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.us.i65
  %.139.us.i71 = phi i64 [ %.046.us.i66, %.preheader.us.i65 ], [ %.2.us.i79, %bb.m ] ; 2 uses
  %.02438.us.i72 = phi i64 [ 0, %.preheader.us.i65 ], [ %i.ap, %bb.m ] ; 2 uses
  %.12737.us.i73 = phi ptr [ %.02644.us.i68, %.preheader.us.i65 ], [ %.228.us.i78, %bb.m ] ; 3 uses
  %.13036.us.i74 = phi ptr [ %.02943.us.i69, %.preheader.us.i65 ], [ %.231.us.i77, %bb.m ] ; 4 uses
  %.03335.us.i75 = phi ptr [ %1, %.preheader.us.i65 ], [ %i.ao, %bb.m ] ; 2 uses
  %i.af = load <4 x i64>, ptr %.03335.us.i75, align 8, !tbaa !31, !alias.scope !874, !noalias !881
  %i.ag = xor <4 x i64> %i.af, %i.ae
  %i.ah = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ag)
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ah)
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %.not.us.i76 = icmp slt i32 %4, %i.aj
  br i1 %.not.us.i76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.02545.us.i67, ptr %.13036.us.i74, align 8, !tbaa !31, !alias.scope !876, !noalias !882
  %i.ak = getelementptr inbounds nuw i8, ptr %.13036.us.i74, i64 8
  store i64 %.02438.us.i72, ptr %i.ak, align 8, !tbaa !31, !alias.scope !876, !noalias !882
  %i.al = getelementptr inbounds nuw i8, ptr %.13036.us.i74, i64 16
  store i32 %i.aj, ptr %.12737.us.i73, align 4, !tbaa !12, !alias.scope !878, !noalias !883
  %i.am = getelementptr inbounds nuw i8, ptr %.12737.us.i73, i64 4
  %i.an = add i64 %.139.us.i71, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.231.us.i77 = phi ptr [ %i.al, %bb.l ], [ %.13036.us.i74, %bb.k ] ; 2 uses
  %.228.us.i78 = phi ptr [ %i.am, %bb.l ], [ %.12737.us.i73, %bb.k ] ; 2 uses
  %.2.us.i79 = phi i64 [ %i.an, %bb.l ], [ %.139.us.i71, %bb.k ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03335.us.i75, i64 32
  %i.ap = add nuw i64 %.02438.us.i72, 1           ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %i.ap, %3
  br i1 %exitcond.not.i80, label %._crit_edge.us.i81, label %bb.k, !llvm.loop !884

._crit_edge.us.i81:                               ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.03242.us.i70, i64 32
  %i.ar = add nuw i64 %.02545.us.i67, 1           ; 2 uses
  %exitcond51.not.i82 = icmp eq i64 %i.ar, %2
  br i1 %exitcond51.not.i82, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i65, !llvm.loop !885

bb.n:                                             ; preds = %.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %.not.i84 = icmp eq i64 %2, 0
  %.not49.i85 = icmp eq i64 %3, 0
  %or.cond.i86 = or i1 %.not.i84, %.not49.i85
  br i1 %or.cond.i86, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i87

.preheader.us.i87:                                ; preds = %bb.n, %._crit_edge.us.i103
  %.046.us.i88 = phi i64 [ %.2.us.i101, %._crit_edge.us.i103 ], [ 0, %bb.n ]
  %.02545.us.i89 = phi i64 [ %i.bf, %._crit_edge.us.i103 ], [ 0, %bb.n ] ; 2 uses
  %.02644.us.i90 = phi ptr [ %.228.us.i100, %._crit_edge.us.i103 ], [ %7, %bb.n ]
  %.02943.us.i91 = phi ptr [ %.231.us.i99, %._crit_edge.us.i103 ], [ %6, %bb.n ]
  %.03242.us.i92 = phi ptr [ %i.be, %._crit_edge.us.i103 ], [ %0, %bb.n ] ; 2 uses
  %i.as = load <8 x i64>, ptr %.03242.us.i92, align 8, !tbaa !31, !alias.scope !886, !noalias !895
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.preheader.us.i87
  %.139.us.i93 = phi i64 [ %.046.us.i88, %.preheader.us.i87 ], [ %.2.us.i101, %bb.q ] ; 2 uses
  %.02438.us.i94 = phi i64 [ 0, %.preheader.us.i87 ], [ %i.bd, %bb.q ] ; 2 uses
  %.12737.us.i95 = phi ptr [ %.02644.us.i90, %.preheader.us.i87 ], [ %.228.us.i100, %bb.q ] ; 3 uses
  %.13036.us.i96 = phi ptr [ %.02943.us.i91, %.preheader.us.i87 ], [ %.231.us.i99, %bb.q ] ; 4 uses
  %.03335.us.i97 = phi ptr [ %1, %.preheader.us.i87 ], [ %i.bc, %bb.q ] ; 2 uses
  %i.at = load <8 x i64>, ptr %.03335.us.i97, align 8, !tbaa !31, !alias.scope !889, !noalias !896
  %i.au = xor <8 x i64> %i.at, %i.as
  %i.av = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.au)
  %i.aw = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.av)
  %i.ax = trunc nuw nsw i64 %i.aw to i32          ; 2 uses
  %.not.us.i98 = icmp slt i32 %4, %i.ax
  br i1 %.not.us.i98, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.02545.us.i89, ptr %.13036.us.i96, align 8, !tbaa !31, !alias.scope !891, !noalias !897
  %i.ay = getelementptr inbounds nuw i8, ptr %.13036.us.i96, i64 8
  store i64 %.02438.us.i94, ptr %i.ay, align 8, !tbaa !31, !alias.scope !891, !noalias !897
  %i.az = getelementptr inbounds nuw i8, ptr %.13036.us.i96, i64 16
  store i32 %i.ax, ptr %.12737.us.i95, align 4, !tbaa !12, !alias.scope !893, !noalias !898
  %i.ba = getelementptr inbounds nuw i8, ptr %.12737.us.i95, i64 4
  %i.bb = add i64 %.139.us.i93, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.231.us.i99 = phi ptr [ %i.az, %bb.p ], [ %.13036.us.i96, %bb.o ] ; 2 uses
  %.228.us.i100 = phi ptr [ %i.ba, %bb.p ], [ %.12737.us.i95, %bb.o ] ; 2 uses
  %.2.us.i101 = phi i64 [ %i.bb, %bb.p ], [ %.139.us.i93, %bb.o ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03335.us.i97, i64 64
  %i.bd = add nuw i64 %.02438.us.i94, 1           ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not.i102, label %._crit_edge.us.i103, label %bb.o, !llvm.loop !899

._crit_edge.us.i103:                              ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.03242.us.i92, i64 64
  %i.bf = add nuw i64 %.02545.us.i89, 1           ; 2 uses
  %exitcond51.not.i104 = icmp eq i64 %i.bf, %2
  br i1 %exitcond51.not.i104, label %_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit, label %.preheader.us.i87, !llvm.loop !900

bb.r:                                             ; preds = %.split, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bg, ptr %8, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !89
  store i8 0, ptr %i.bg, align 8, !tbaa !91
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef %5) #4 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bk = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bl)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %8, align 8, !tbaa !92
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !89
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.12, i64 noundef %5) #4 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bk)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t, %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.r
  %i.bq = call ptr @__cxa_allocate_exception(i64 40) #4 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss25match_hamming_thres_fixSLILNS_9SIMDLevelE0EEEmPKhS3_mmimPlPi, ptr noundef nonnull @.str.2, i32 noundef 474)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #25
          to label %bb.z unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bq) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.u ], [ %i.br, %bb.x ]
  %i.bs = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.bu = load i64, ptr %i.bg, align 8, !tbaa !91
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  resume { ptr, i32 } %.pn

_ZN5faiss24match_hamming_thres_implILm64EEEmPKmS2_mmiPlPi.exit: ; preds = %._crit_edge.us.i103, %._crit_edge.us.i81, %._crit_edge.us.i59, %._crit_edge.us.i, %bb.n, %bb.j, %bb.f, %bb.b
  %.037 = phi i64 [ %.2.us.i57, %._crit_edge.us.i59 ], [ %.2.us.i79, %._crit_edge.us.i81 ], [ %.2.us.i, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.n ], [ %.2.us.i101, %._crit_edge.us.i103 ]
  ret i64 %.037

bb.z:                                             ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5faiss11fvec2bitvecEPKfPhm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #18 {
bb.a:
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %._crit_edge30, label %.lr.ph29

._crit_edge30:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02027 = phi i64 [ %i.d, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %.02126 = phi ptr [ %i.o, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %i.a = add i64 %.02027, 8
  %umin = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.a) ; 3 uses
  %i.b = mul i64 %indvar, -8                      ; 2 uses
  %i.c = add i64 %umin, %i.b
  %i.d = add i64 %.02027, 8                       ; 3 uses
  %.not = icmp ugt i64 %i.d, %2
  %.not3237 = icmp eq i64 %2, %.02027
  %.not32 = and i1 %.not, %.not3237
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %i.e = add i64 %i.b, -1
  %i.f = add i64 %umin, %i.e
  %i.g = getelementptr [4 x i8], ptr %0, i64 %.02027 ; 5 uses
  %xtraiter = and i64 %umin, 3                    ; 4 uses
  %i.h = icmp ult i64 %i.f, 3
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i64 %i.c, %xtraiter
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.025.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %.01824.epil.init = phi i8 [ 1, %.lr.ph ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.01923.epil.init = phi i8 [ 0, %.lr.ph ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.025.epil = phi i64 [ %.025.epil.init, %.epil.preheader ], [ %i.n, %bb.b ] ; 2 uses
  %.01824.epil = phi i8 [ %.01824.epil.init, %.epil.preheader ], [ %i.m, %bb.b ] ; 2 uses
  %.01923.epil = phi i8 [ %.01923.epil.init, %.epil.preheader ], [ %.1.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %.025.epil
  %i.j = load float, ptr %i.i, align 4, !tbaa !901
  %i.k = fcmp ult float %i.j, 0.000000e+00
  %i.l = select i1 %i.k, i8 0, i8 %.01824.epil
  %.1.epil = or i8 %i.l, %.01923.epil             ; 2 uses
  %i.m = shl i8 %.01824.epil, 1
  %i.n = add nuw i64 %.025.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !903

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph29
  %.019.lcssa = phi i8 [ 0, %.lr.ph29 ], [ %.1.3, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %bb.b ]
  store i8 %.019.lcssa, ptr %.02126, align 1, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %.02126, i64 1
  %i.p = icmp ult i64 %i.d, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.p, label %.lr.ph29, label %._crit_edge30, !llvm.loop !905

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.025 = phi i64 [ 0, %.lr.ph.new ], [ %i.an, %bb.c ] ; 5 uses
  %.01824 = phi i8 [ 1, %.lr.ph.new ], [ %i.am, %bb.c ] ; 5 uses
  %.01923 = phi i8 [ 0, %.lr.ph.new ], [ %.1.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.q = getelementptr [4 x i8], ptr %i.g, i64 %.025
  %i.r = load float, ptr %i.q, align 4, !tbaa !901
  %i.s = fcmp ult float %i.r, 0.000000e+00
  %i.t = select i1 %i.s, i8 0, i8 %.01824
  %.1 = or i8 %i.t, %.01923
  %i.u = shl i8 %.01824, 1
  %i.v = getelementptr [4 x i8], ptr %i.g, i64 %.025
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !901
  %i.y = fcmp ult float %i.x, 0.000000e+00
  %i.z = select i1 %i.y, i8 0, i8 %i.u
  %.1.1 = or i8 %i.z, %.1
  %i.aa = shl i8 %.01824, 2
  %i.ab = getelementptr [4 x i8], ptr %i.g, i64 %.025
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !901
  %i.ae = fcmp ult float %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, i8 0, i8 %i.aa
  %.1.2 = or i8 %i.af, %.1.1
  %i.ag = shl i8 %.01824, 3
  %i.ah = getelementptr [4 x i8], ptr %i.g, i64 %.025
  %i.ai = getelementptr i8, ptr %i.ah, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !901
  %i.ak = fcmp ult float %i.aj, 0.000000e+00
  %i.al = select i1 %i.ak, i8 0, i8 %i.ag
  %.1.3 = or i8 %i.al, %.1.2                      ; 3 uses
  %i.am = shl i8 %.01824, 4                       ; 2 uses
  %i.an = add nuw i64 %.025, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !906
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss13fvecs2bitvecsEPKfPhmm(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !907
  store ptr %1, ptr %i.b, align 8, !tbaa !19
  store i64 %2, ptr %i.c, align 8, !tbaa !31
  store i64 %3, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.h = add i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  %i.j = icmp ugt i64 %3, 100000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !12
  call void @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.d, ptr %i.a, ptr %i.c, ptr %i.b, ptr %i.e) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #19 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i64, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit
  %i.n = add nsw i64 %.017, 1
  %.pr = load i64, ptr %4, align 8, !tbaa !31
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.o = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.l, %.lr.ph ] ; 6 uses
  %i.p = phi i64 [ %i.bl, %.lr.ph.splitthread-pre-split ], [ %i.j, %.lr.ph ]
  %.017 = phi i64 [ %i.n, %.lr.ph.splitthread-pre-split ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !907
  %i.r = mul i64 %i.o, %.017
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %5, align 8, !tbaa !19
  %i.u = load i64, ptr %6, align 8, !tbaa !31
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %_ZN5faiss11fvec2bitvecEPKfPhm.exit, label %.lr.ph29.i.preheader

.lr.ph29.i.preheader:                             ; preds = %.lr.ph.split
  %i.v = mul nsw i64 %i.u, %.017
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 2 uses
  %.02027.i = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %i.aa, %._crit_edge.i ] ; 4 uses
  %.02126.i = phi ptr [ %i.w, %.lr.ph29.i.preheader ], [ %i.al, %._crit_edge.i ] ; 2 uses
  %i.x = add i64 %.02027.i, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.x) ; 3 uses
  %i.y = mul i64 %indvar, -8                      ; 2 uses
  %i.z = add i64 %umin, %i.y
  %i.aa = add i64 %.02027.i, 8                    ; 3 uses
  %.not.i = icmp ugt i64 %i.aa, %i.o
  %.not32.i27 = icmp eq i64 %i.o, %.02027.i
  %.not32.i = and i1 %.not.i, %.not32.i27
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph29.i
  %i.ab = add i64 %i.y, -1
  %i.ac = add i64 %umin, %i.ab
  %i.ad = getelementptr [4 x i8], ptr %i.s, i64 %.02027.i ; 5 uses
  %xtraiter = and i64 %umin, 3                    ; 4 uses
  %i.ae = icmp ult i64 %i.ac, 3
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = sub i64 %i.z, %xtraiter
  br label %bb.d

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bk, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01824.i.epil.init = phi i8 [ 1, %.lr.ph.i ], [ %i.bj, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01923.i.epil.init = phi i8 [ 0, %.lr.ph.i ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.025.i.epil = phi i64 [ %.025.i.epil.init, %.epil.preheader ], [ %i.ak, %bb.c ] ; 2 uses
  %.01824.i.epil = phi i8 [ %.01824.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.c ] ; 2 uses
  %.01923.i.epil = phi i8 [ %.01923.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.af = getelementptr [4 x i8], ptr %i.ad, i64 %.025.i.epil
  %i.ag = load float, ptr %i.af, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.ah = fcmp ult float %i.ag, 0.000000e+00
  %i.ai = select i1 %i.ah, i8 0, i8 %.01824.i.epil
  %.1.i.epil = or i8 %i.ai, %.01923.i.epil        ; 2 uses
  %i.aj = shl i8 %.01824.i.epil, 1
  %i.ak = add nuw i64 %.025.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.c, !llvm.loop !914

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.c, %.lr.ph29.i
  %.019.lcssa.i = phi i8 [ 0, %.lr.ph29.i ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %bb.c ]
  store i8 %.019.lcssa.i, ptr %.02126.i, align 1, !tbaa !91, !alias.scope !912, !noalias !909
  %i.al = getelementptr inbounds nuw i8, ptr %.02126.i, i64 1
  %i.am = icmp ult i64 %i.aa, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph29.i, label %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, !llvm.loop !905

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bk, %bb.d ] ; 5 uses
  %.01824.i = phi i8 [ 1, %.lr.ph.i.new ], [ %i.bj, %bb.d ] ; 5 uses
  %.01923.i = phi i8 [ 0, %.lr.ph.i.new ], [ %.1.i.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.an = getelementptr [4 x i8], ptr %i.ad, i64 %.025.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.ap = fcmp ult float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, i8 0, i8 %.01824.i
  %.1.i = or i8 %i.aq, %.01923.i
  %i.ar = shl i8 %.01824.i, 1
  %i.as = getelementptr [4 x i8], ptr %i.ad, i64 %.025.i
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.av = fcmp ult float %i.au, 0.000000e+00
  %i.aw = select i1 %i.av, i8 0, i8 %i.ar
  %.1.i.1 = or i8 %i.aw, %.1.i
  %i.ax = shl i8 %.01824.i, 2
  %i.ay = getelementptr [4 x i8], ptr %i.ad, i64 %.025.i
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  %i.bc = select i1 %i.bb, i8 0, i8 %i.ax
  %.1.i.2 = or i8 %i.bc, %.1.i.1
  %i.bd = shl i8 %.01824.i, 3
  %i.be = getelementptr [4 x i8], ptr %i.ad, i64 %.025.i
  %i.bf = getelementptr i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !901, !alias.scope !909, !noalias !912
  %i.bh = fcmp ult float %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, i8 0, i8 %i.bd
  %.1.i.3 = or i8 %i.bi, %.1.i.2                  ; 3 uses
  %i.bj = shl i8 %.01824.i, 4                     ; 2 uses
  %i.bk = add nuw i64 %.025.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !906

_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit:      ; preds = %._crit_edge.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5faiss11fvec2bitvecEPKfPhm.exit

_ZN5faiss11fvec2bitvecEPKfPhm.exit:               ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, %.lr.ph.split
  %i.bl = phi i64 [ %.pre, %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit ], [ %i.p, %.lr.ph.split ] ; 2 uses
  %.not.not = icmp slt i64 %.017, %i.bl
  br i1 %.not.not, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !915

._crit_edge:                                      ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss13bitvecs2fvecsEPKhPfmm(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  store ptr %1, ptr %i.b, align 8, !tbaa !907
  store i64 %2, ptr %i.c, align 8, !tbaa !31
  store i64 %3, ptr %i.d, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.h = add i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  %i.j = icmp ugt i64 %3, 100000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !12
  call void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.d, ptr %i.c, ptr %i.a, ptr %i.e, ptr %i.b) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.h = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !31
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.017 = phi i64 [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = load i64, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !19
  %i.n = load i64, ptr %5, align 8, !tbaa !31
  %i.o = mul nsw i64 %i.n, %.017
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %6, align 8, !tbaa !907
  %i.r = mul i64 %i.l, %.017
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  invoke void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef %i.l, ptr noundef %i.p, ptr noundef %i.s)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.t = add nsw i64 %.017, 1
  %i.u = load i64, ptr %i.b, align 8, !tbaa !31
  %.not.not = icmp slt i64 %.017, %i.u
end_hunk_0
