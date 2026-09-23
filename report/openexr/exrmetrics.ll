Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/exrmetrics?download=true
inline.NumInlined: 1356
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorI9partStatsSaIS0_EE17_M_default_appendEm:bb.a
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 200                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 200                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 46116860184273880
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 46116860184273879, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.013.i.i.i.prol, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.p, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 184
  store ptr %i.r, ptr %i.q, align 8, !tbaa !21
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 200 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !330

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.013.i.i.i, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.v, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 184
  store ptr %i.x, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.y, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 384
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 400
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.ad, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 568
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 584
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 600
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.ah, align 4, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 768
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 784
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !21
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 800 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !331

_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !119
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #26
  unreachable

_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 46116860184273879) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 200
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter40 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.013.i.i.i31.prol, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.as, align 4, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 184
  store ptr %i.au, ptr %i.at, align 8, !tbaa !21
  %i.av = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 200 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !332

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorI9partStatsSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.013.i.i.i31, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.ay, align 4, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 168
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 184
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 200
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bb, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.bc, align 4, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 368
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 384
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 400
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bf, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.bg, align 4, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 568
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 584
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 600
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 764
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bj, i8 0, i64 200, i1 false)
  store i32 12, ptr %i.bk, align 4, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 768
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 784
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !21
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 800
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !331

_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %i.bp = tail call noundef ptr @_ZNSt6vectorI9partStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %0) #27 ; 0 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI9partStatsSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.e

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit35
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #29
  br label %_ZNSt12_Vector_baseI9partStatsSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI9partStatsSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit35, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw [200 x i8], ptr %i.ar, i64 %1
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !119
  %i.bu = getelementptr inbounds nuw [200 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bu, ptr %i.h, align 8, !tbaa !140
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9partStatsmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI9partStatsSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI9partStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIP9partStatsS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 16 uses
  %.0911.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.a = load <2 x ptr>, ptr %.0911.i.i, align 8, !tbaa !339, !alias.scope !338, !noalias !337
  store <2 x ptr> %i.a, ptr %.012.i.i, align 8, !tbaa !339, !alias.scope !337, !noalias !338
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54, !alias.scope !338, !noalias !337
  store ptr %i.d, ptr %i.b, align 8, !tbaa !54, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.0911.i.i, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %4 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24 ; 2 uses
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !339, !alias.scope !338, !noalias !337
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !339, !alias.scope !337, !noalias !338
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54, !alias.scope !338, !noalias !337
  store ptr %i.g, ptr %i.e, align 8, !tbaa !54, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %7 = load <2 x ptr>, ptr %i.i, align 8, !tbaa !339, !alias.scope !338, !noalias !337
  store <2 x ptr> %7, ptr %i.h, align 8, !tbaa !339, !alias.scope !337, !noalias !338
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54, !alias.scope !338, !noalias !337
  store ptr %i.l, ptr %i.j, align 8, !tbaa !54, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !339, !alias.scope !338, !noalias !337
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !339, !alias.scope !337, !noalias !338
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54, !alias.scope !338, !noalias !337
  store ptr %i.r, ptr %i.p, align 8, !tbaa !54, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !339, !alias.scope !338, !noalias !337
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !339, !alias.scope !337, !noalias !338
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54, !alias.scope !338, !noalias !337
  store ptr %i.x, ptr %i.v, align 8, !tbaa !54, !alias.scope !337, !noalias !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !337
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !110, !alias.scope !338, !noalias !337
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !110, !alias.scope !337, !noalias !338
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 40, i1 false), !alias.scope !340
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 184 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !21, !alias.scope !337, !noalias !338
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !25, !alias.scope !338, !noalias !337 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 184 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27, !alias.scope !338, !noalias !337 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !25, !alias.scope !337, !noalias !338
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !26, !alias.scope !338, !noalias !337
  store i64 %i.an, ptr %i.af, align 8, !tbaa !26, !alias.scope !337, !noalias !338
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !27, !alias.scope !338, !noalias !337
  br label %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.ao = phi i64 [ %i.ak, %bb.b ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !27, !alias.scope !337, !noalias !338
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !25, !alias.scope !338, !noalias !337
  store i64 0, ptr %i.ap, align 8, !tbaa !27, !alias.scope !338, !noalias !337
  store i8 0, ptr %i.ah, align 8, !tbaa !26, !alias.scope !338, !noalias !337
  tail call void @_ZN9partStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %.0911.i.i) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 200 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 200 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIP9partStatsS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !336

_ZSt12__relocate_aIP9partStatsS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.as, %_ZSt19__relocate_object_aI9partStatsS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #17

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_exrmetrics.cpp() #20 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, i64 29), align 1, !tbaa !26
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L13SCANLINEIMAGEB5cxx11E, ptr nonnull @__dso_handle) #27 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, i64 26), align 2, !tbaa !26
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L10TILEDIMAGEB5cxx11E, ptr nonnull @__dso_handle) #27 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 28), align 4, !tbaa !26
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, ptr nonnull @__dso_handle) #27 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 16), ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, align 8, !tbaa !21
  store i64 7308332244138288484, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !27
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, i64 24), align 8, !tbaa !26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7Imf_3_4L8DEEPTILEB5cxx11E, ptr nonnull @__dso_handle) #27 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { noreturn }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = distinct !{!8, !28}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !14, i64 16}
!25 = !{!24, !19, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!24, !22, i64 8}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !15, i64 0, !15, i64 4}
!30 = !{!29, !15, i64 0}
!31 = !{!29, !15, i64 4}
!32 = !{!"p1 _ZTSSt6vectorIcSaIcEE", !18, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt6vectorIcSaIcEESaIS2_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 8}
!35 = !{!33, !32, i64 0}
end_hunk_0
