Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZNSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE17_M_default_appendEm:bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 264                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 34937015291116576
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 34937015291116575, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 216
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 224
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.p, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.s, i8 0, i64 25, i1 false)
  %i.t = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 264 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !883

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 216
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 224
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.w, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 25, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 480
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 488
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aa, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i8 0, i64 25, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 536
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 744
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 752
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ae, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i8 0, i64 25, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 800
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1008
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1016
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ai, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.al, i8 0, i64 25, i1 false)
  %i.am = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1056 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !884

_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp ult i64 %i.n, %1
  br i1 %i.ao, label %bb.d, label %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ap = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 34937015291116575) ; 2 uses
  %i.ar = mul nuw nsw i64 %i.aq, 264
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #37 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f ; 3 uses
  %xtraiter40 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.az, %.lr.ph.i.i.i30.prol ], [ %i.at, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 216
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 224
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.au, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ax, i8 0, i64 25, i1 false)
  %i.ay = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 264 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !885

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.at, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5glTF24Mesh9PrimitiveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ay, %.lr.ph.i.i.i30.prol ]
  %i.ba = icmp ult i64 %1, 4
  br i1 %i.ba, label %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bs, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.br, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 216
  store ptr null, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 224
  store i32 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bb, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.be, i8 0, i64 25, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 272
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 480
  store ptr null, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 488
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bf, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bi, i8 0, i64 25, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 536
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 744
  store ptr null, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 752
  store i32 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bj, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bm, i8 0, i64 25, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 800
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 1008
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 1016
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.bn, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bq, i8 0, i64 25, i1 false)
  %i.br = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 1056
  %.not.i.i.i33.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !884

_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %i.bt = tail call noundef ptr @_ZSt14__relocate_a_1IPN5glTF24Mesh9PrimitiveES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.as, ptr noundef nonnull align 1 dereferenceable(1) %0) #34 ; 0 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5glTF24Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.e

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit35
  %i.bu = load ptr, ptr %i.h, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bw) #35
  br label %_ZNSt12_Vector_baseIN5glTF24Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN5glTF24Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.e
  store ptr %i.as, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw [264 x i8], ptr %i.at, i64 %1
  store ptr %i.bx, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw [264 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.by, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9PrimitiveEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5glTF24Mesh9PrimitiveESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt14__relocate_a_1IPN5glTF24Mesh9PrimitiveES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat {
bb.a:
  %.not10 = icmp eq ptr %0, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.bf, %.lr.ph ], [ %2, %bb.a ] ; 21 uses
  %.0911 = phi ptr [ %i.be, %.lr.ph ], [ %0, %bb.a ] ; 23 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.a = load i32, ptr %.0911, align 8, !alias.scope !891, !noalias !890
  store i32 %i.a, ptr %.012, align 8, !alias.scope !890, !noalias !891
  %i.b = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.d, ptr %i.b, align 8, !alias.scope !890, !noalias !891
  %4 = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %.0911, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.0911, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0911, i64 40
  %6 = load ptr, ptr %5, align 8, !alias.scope !891, !noalias !890
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !891, !noalias !890
  %7 = load <2 x ptr>, ptr %i.f, align 8, !alias.scope !891, !noalias !890
  %8 = insertelement <4 x ptr> poison, ptr %6, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %i.g, i64 1
  %10 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x ptr> %9, <4 x ptr> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %11, ptr %4, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %.0911, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !891, !noalias !890
  store ptr %i.j, ptr %i.h, align 8, !alias.scope !890, !noalias !891
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %.0911, i64 64
  %12 = load ptr, ptr %i.l, align 8, !alias.scope !891, !noalias !890
  store ptr %12, ptr %i.k, align 8, !alias.scope !890, !noalias !891
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.0911, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !891, !noalias !890
  store ptr %i.o, ptr %i.m, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.p = getelementptr inbounds nuw i8, ptr %.012, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %.0911, i64 80 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.r, ptr %i.p, align 8, !alias.scope !890, !noalias !891
  %i.s = getelementptr inbounds nuw i8, ptr %.012, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !891, !noalias !890
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.v = getelementptr inbounds nuw i8, ptr %.012, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %.0911, i64 104 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.x, ptr %i.v, align 8, !alias.scope !890, !noalias !891
  %i.y = getelementptr inbounds nuw i8, ptr %.012, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %.0911, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !891, !noalias !890
  store ptr %i.aa, ptr %i.y, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.ab = getelementptr inbounds nuw i8, ptr %.012, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911, i64 128 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !alias.scope !890, !noalias !891
  %i.ae = getelementptr inbounds nuw i8, ptr %.012, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.0911, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !891, !noalias !890
  store ptr %i.ag, ptr %i.ae, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.ah = getelementptr inbounds nuw i8, ptr %.012, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911, i64 152 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !alias.scope !890, !noalias !891
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %.0911, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !891, !noalias !890
  store ptr %i.am, ptr %i.ak, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911, i64 176 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !alias.scope !890, !noalias !891
  %i.aq = getelementptr inbounds nuw i8, ptr %.012, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !891, !noalias !890
  store ptr %i.as, ptr %i.aq, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.at = getelementptr inbounds nuw i8, ptr %.012, i64 200
  %i.au = getelementptr inbounds nuw i8, ptr %.0911, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, ptr noundef nonnull align 8 dereferenceable(28) %i.au, i64 28, i1 false), !alias.scope !892
  %i.av = getelementptr inbounds nuw i8, ptr %.012, i64 232
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911, i64 232 ; 3 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !891, !noalias !890
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !alias.scope !890, !noalias !891
  %i.ay = getelementptr inbounds nuw i8, ptr %.012, i64 248
  %i.az = getelementptr inbounds nuw i8, ptr %.0911, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !891, !noalias !890
  store ptr %i.ba, ptr %i.ay, align 8, !alias.scope !890, !noalias !891
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !891, !noalias !890
  %i.bb = getelementptr inbounds nuw i8, ptr %.012, i64 256
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911, i64 256
  %i.bd = load i8, ptr %i.bc, align 8, !range !45, !alias.scope !891, !noalias !890, !noundef !46
  store i8 %i.bd, ptr %i.bb, align 8, !alias.scope !890, !noalias !891
  tail call void @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #34, !noalias !890
  tail call void @_ZN5glTF24Mesh9Primitive10AttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.c) #34, !noalias !890
  %i.be = getelementptr inbounds nuw i8, ptr %.0911, i64 264 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.be, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !889

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bf, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(3624) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %7 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %8 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %11 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %12 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::allocator", align 1   ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::allocator", align 1   ; 4 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr @_ZN10glTFCommon17FindUIntInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.88, ptr noundef %i.i, ptr noundef %i.k) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.n = load i32, ptr %i.l, align 8
  %i.o = tail call { ptr, i32 } @_ZN5glTF28LazyDictINS_10BufferViewEE8RetrieveEj(ptr noundef nonnull align 8 dereferenceable(232) %i.m, i32 noundef %i.n) ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.o, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %.fca.0.extract53, ptr %i.p, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %.fca.1.extract54, ptr %.sroa.458.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 3
  br i1 %i.s, label %bb.d, label %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 14
  store i16 1029, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -281474976710656
  %i.y = or i64 %i.x, ptrtoint (ptr @.str.89 to i64) ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.u, align 8
  store i32 10, ptr %12, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 281474976710655
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  %i.af = load i32, ptr %1, align 8               ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ag, 5
  %i.ah = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.ai = lshr i64 ptrtoint (ptr @.str.89 to i64), 40
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = and i64 %i.y, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0    ; 2 uses
  %i.al = sext i8 %i.aj to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = select i1 %.not.i.i.i.i.i.i.i.i, i32 10, i32 %i.am ; 2 uses
  %i.ao = and i64 ptrtoint (ptr @.str.89 to i64), 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.ap, ptr %12 ; 2 uses
  %i.ar = zext i32 %i.an to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.bj, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.at = load i16, ptr %i.as, align 2
  %i.au = and i16 %i.at, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.au, 0  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = sub nsw i32 13, %i.ax
  %i.az = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.ba = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.az, i32 %i.ay
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.bf, ptr %.010.i.i.i.i.i ; 2 uses
  %i.bh = icmp eq ptr %i.aq, %i.bg
  br i1 %i.bh, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.f
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.aq, ptr %i.bg, i64 %i.ar)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_default_appendEm:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  store i32 0, ptr %i.ah, align 8
  %i.ai = add i64 %.01012.i.i.i, -8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !34

_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #37 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit ]
  store ptr null, ptr %.013.i.i.i31.prol, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store i32 0, ptr %i.aq, align 8
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !979

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i31, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store i32 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store ptr null, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  store ptr null, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  store ptr null, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  store i32 0, ptr %i.bi, align 8
  %i.bj = add i64 %.01012.i.i.i32, -8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !34

_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !alias.scope !983
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !35

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bn = load ptr, ptr %i.h, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #35
  br label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %1
  store ptr %i.bq, ptr %i.a, align 8
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.br, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9Primitive6TargetEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9Primitive6TargetEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 72                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 128102389400760775) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 72
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #37 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !989, !noalias !988
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !alias.scope !988, !noalias !989
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %4 = load ptr, ptr %i.z, align 8, !alias.scope !989, !noalias !988
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !989, !noalias !988
  %5 = load ptr, ptr %2, align 8, !alias.scope !989, !noalias !988
  %i.aa = load <2 x ptr>, ptr %3, align 8, !alias.scope !989, !noalias !988
  %6 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %5, i64 1
  %8 = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %9, ptr %i.y, align 8, !alias.scope !988, !noalias !989
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !989, !noalias !988
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !989, !noalias !988
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !alias.scope !988, !noalias !989
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !989, !noalias !988
  store ptr %i.ag, ptr %i.ae, align 8, !alias.scope !988, !noalias !989
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false), !alias.scope !989, !noalias !988
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !987

_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #35
  br label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %1
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.s
  store ptr %i.an, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5glTF24Mesh9Primitive6TargetEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !990

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  store ptr %i.u, ptr %.08.i.i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store i64 0, ptr %i.ae, align 8
  store i8 0, ptr %i.ad, align 8
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !991

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 288230376151711743) ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 5
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #37 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter48 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  store ptr %i.an, ptr %.08.i.i.i31.prol, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.an, align 8
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !992

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16 ; 2 uses
  store ptr %i.as, ptr %.08.i.i.i31, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 0, ptr %i.at, align 8
  store i8 0, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !991

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
end_hunk_1
