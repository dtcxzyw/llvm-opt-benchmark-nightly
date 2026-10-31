Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrBuilder?download=true
inline.NumInlined: 976
inline.NumDeleted: 501
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE6rehashEv:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq i64 %i.az, %.sroa.1822.24.copyload
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bc = icmp eq i8 %i.aw, %i.t
  %i.bd = icmp eq i64 %i.az, %i.x
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph46

._crit_edge:                                      ; preds = %.lr.ph46, %bb.e
  %.lcssa = phi ptr [ %i.av, %bb.e ], [ %i.bl, %.lr.ph46 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !183
  br label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph46
  %i.bf = icmp eq i8 %i.bm, %i.t
  %i.bg = icmp eq i64 %i.bp, %i.x
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2545 = phi i64 [ %i.bi, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02129.i2644 = phi i64 [ %i.bk, %.lr.ph ], [ %i.au, %.lr.ph.preheader ]
  %i.bi = add i64 %.02030.i2545, 1                ; 3 uses
  %i.bj = add i64 %i.bi, %.02129.i2644
  %i.bk = and i64 %i.bj, %i.o                     ; 2 uses
  %.not.i15 = icmp ule i64 %i.bi, %i.o
  tail call void @llvm.assume(i1 %.not.i15)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %i.bk ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !178 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, %.sroa.16.24.copyload
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %.sroa.1822.24.copyload
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.bs = phi ptr [ %.lcssa, %._crit_edge ], [ %i.av, %.lr.ph.preheader ], [ %i.bl, %.lr.ph ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bs, ptr noundef nonnull align 8 dereferenceable(20) %i.s, i64 16, i1 false), !tbaa.struct !183
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !149
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !262
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !181
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit, %bb.d
  %i.bw = phi i64 [ %i.q, %bb.d ], [ %.pre34, %_ZN4Luau6detail14DenseHashTableINS_7CodeGen9IrBuilder11ConstantKeyESt4pairIS4_jES5_IKS4_jENS0_16ItemInterfaceMapIS4_jEENS3_15ConstantKeyHashESt8equal_toIS4_EE13insert_unsafeERS7_.exit ] ; 2 uses
  %i.bx = add nuw i64 %.01128, 1                  ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.d, label %._crit_edge30, !llvm.loop !259
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(59) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 6 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.s = load i8, ptr %2, align 8, !tbaa !163
  store i8 %i.s, ptr %i.r, align 8, !tbaa !163
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 6, ptr %i.w, align 4, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !172
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !172  ; 8 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !170 ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.af = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.q, %i.m
  %i.aj = add i64 %i.z, %i.e
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = add i64 %i.ak, 23
  %diff.check = icmp ult i64 %i.al, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  %i.am = shl i64 %n.vec, 2                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.y, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ap ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.y, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !131
  %wide.load61 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !131
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !131
  store <4 x i32> %wide.load61, ptr %i.ar, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader104

.lr.ph.i.i.i.i.i.i.preheader104:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader104, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader104 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader104 ] ; 2 uses
  %i.at = load i32, ptr %.sroa.08.012.i.i.i.i.i.i, align 4, !tbaa !131
  store i32 %i.at, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !264

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !170
  store i32 0, ptr %i.ab, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.y, ptr %i.t, align 8, !tbaa !172
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load <2 x i32>, ptr %i.ax, align 8, !tbaa !149
  store <2 x i32> %i.ay, ptr %i.v, align 8, !tbaa !149
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !172
  store i32 6, ptr %i.aw, align 4, !tbaa !171
  store i32 0, ptr %i.ax, align 8, !tbaa !170
  br label %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit

_ZN4Luau7CodeGen6IrInstC2EOS1_.exit:              ; preds = %bb.c, %.lr.ph.preheader.i.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.az, ptr noundef nonnull align 8 dereferenceable(11) %i.ba, i64 11, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit
  %i.bb = add i64 %i.q, 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvar.next, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ci, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ch, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.bc = load i8, ptr %.0911.i.i.i, align 8, !tbaa !163, !alias.scope !277
  store i8 %i.bc, ptr %.012.i.i.i, align 8, !tbaa !163, !alias.scope !276
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !170, !alias.scope !276
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20
  store i32 6, ptr %i.bg, align 4, !tbaa !171, !alias.scope !276
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 5 uses
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !172, !alias.scope !276
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !172, !alias.scope !277 ; 8 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i.i16, label %bb.e, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !170, !alias.scope !277 ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bn, 2    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %i.bp = add nsw i64 %.idx.i.i.i.i.i.i, -4       ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %3 = shl nuw i64 %indvar, 6
  %4 = add i64 %i.bb, %3
  %5 = sub i64 %i.bj, %4
  %diff.check68 = icmp ugt i64 %5, -32
  br i1 %diff.check68, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck67
  %n.vec68 = and i64 %i.br, 9223372036854775800   ; 3 uses
  %i.bs = shl i64 %n.vec68, 2                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bi, i64 %i.bs
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.bv = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.bh, i64 %i.bv ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !131, !noalias !277
  %wide.load74 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !131, !noalias !277
  %i.bx = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 4, !tbaa !131, !alias.scope !276
  store <4 x i32> %wide.load74, ptr %i.bx, align 4, !tbaa !131, !alias.scope !276
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.by, label %middle.block76, label %vector.body69, !llvm.loop !268

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.br, %n.vec68
  br i1 %cmp.n77, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102:          ; preds = %vector.memcheck67, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block76
  %.013.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck67 ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block76 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck67 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block76 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %i.bz = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !131, !noalias !277
  store i32 %i.bz, ptr %.013.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !131, !alias.scope !276
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !269

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block76
  store i32 %i.bm, ptr %i.bf, align 8, !tbaa !170, !alias.scope !276
  store i32 0, ptr %i.bl, align 8, !tbaa !170, !alias.scope !277
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !172, !alias.scope !276
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ce = load <2 x i32>, ptr %i.cd, align 8, !tbaa !149, !alias.scope !277
  store <2 x i32> %i.ce, ptr %i.bf, align 8, !tbaa !149, !alias.scope !276
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !172, !alias.scope !277
  store i32 6, ptr %i.cc, align 4, !tbaa !171, !alias.scope !277
  store i32 0, ptr %i.cd, align 8, !tbaa !170, !alias.scope !277
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cf, ptr noundef nonnull align 8 dereferenceable(11) %i.cg, i64 11, i1 false), !alias.scope !278
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !270

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN4Luau7CodeGen6IrInstC2EOS1_.exit ], [ %i.ci, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i81 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ck = add i64 %.0.lcssa.i.i.i81, 88
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %indvar82 = phi i64 [ 0, %.lr.ph.i.i.i18.preheader ], [ %indvar.next83, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 2 uses
  %.012.i.i.i19 = phi ptr [ %i.cj, %.lr.ph.i.i.i18.preheader ], [ %i.dr, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 7 uses
  %.0911.i.i.i20 = phi ptr [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.dq, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.cl = load i8, ptr %.0911.i.i.i20, align 8, !tbaa !163, !alias.scope !280
  store i8 %i.cl, ptr %.012.i.i.i19, align 8, !tbaa !163, !alias.scope !279
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store i32 0, ptr %i.co, align 8, !tbaa !170, !alias.scope !279
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 20
  store i32 6, ptr %i.cp, align 4, !tbaa !171, !alias.scope !279
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 5 uses
  store ptr %i.cq, ptr %i.cm, align 8, !tbaa !172, !alias.scope !279
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !172, !alias.scope !280 ; 8 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i.i.i.i.i21, label %bb.f, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i22

bb.f:                                             ; preds = %.lr.ph.i.i.i18
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !170, !alias.scope !280 ; 3 uses
  %i.cw = zext i32 %i.cv to i64
  %.idx.i.i.i.i.i.i26 = shl nuw nsw i64 %i.cw, 2  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i.i.i.i26
  %.not11.i.i.i.i.i.i.i.i.i.i27 = icmp eq i32 %i.cv, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i27, label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader:           ; preds = %bb.f
  %i.cy = add nsw i64 %.idx.i.i.i.i.i.i26, -4     ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.cy, 28
  br i1 %min.iters.check86, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101, label %vector.memcheck92

vector.memcheck92:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader
  %6 = shl nuw i64 %indvar82, 6
  %7 = add i64 %i.ck, %6
  %8 = sub i64 %i.cs, %7
  %diff.check93 = icmp ugt i64 %8, -32
  br i1 %diff.check93, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck92
  %n.vec88 = and i64 %i.da, 9223372036854775800   ; 3 uses
  %i.db = shl i64 %n.vec88, 2                     ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cq, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.cr, i64 %i.db
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %i.de = shl i64 %index90, 2                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.cq, i64 %i.de ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.cr, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93 = load <4 x i32>, ptr %next.gep92, align 4, !tbaa !131, !noalias !280
  %wide.load94 = load <4 x i32>, ptr %i.df, align 4, !tbaa !131, !noalias !280
  %i.dg = getelementptr i8, ptr %next.gep91, i64 16
  store <4 x i32> %wide.load93, ptr %next.gep91, align 4, !tbaa !131, !alias.scope !279
  store <4 x i32> %wide.load94, ptr %i.dg, align 4, !tbaa !131, !alias.scope !279
  %index.next95 = add nuw i64 %index90, 8         ; 2 uses
  %i.dh = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.dh, label %middle.block96, label %vector.body89, !llvm.loop !274

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %i.da, %n.vec88
  br i1 %cmp.n97, label %.lr.ph.preheader.i.i.i.i.i.i.i32, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101

.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101:        ; preds = %vector.memcheck92, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader, %middle.block96
  %.013.i.i.i.i.i.i.i.i.i.i29.ph = phi ptr [ %i.cq, %vector.memcheck92 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader ], [ %i.dc, %middle.block96 ]
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i30.ph = phi ptr [ %i.cr, %vector.memcheck92 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader ], [ %i.dd, %middle.block96 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i.i.i.i.i28:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101, %.lr.ph.i.i.i.i.i.i.i.i.i.i28
  %.013.i.i.i.i.i.i.i.i.i.i29 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.i.i.i28 ], [ %.013.i.i.i.i.i.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i30 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i28 ], [ %.sroa.08.012.i.i.i.i.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i28.preheader101 ] ; 2 uses
  %i.di = load i32, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i30, align 4, !tbaa !131, !noalias !280
  store i32 %i.di, ptr %.013.i.i.i.i.i.i.i.i.i.i29, align 4, !tbaa !131, !alias.scope !279
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i30, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i29, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.dj, %i.cx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i31, label %.lr.ph.preheader.i.i.i.i.i.i.i32, label %.lr.ph.i.i.i.i.i.i.i.i.i.i28, !llvm.loop !275

.lr.ph.preheader.i.i.i.i.i.i.i32:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i28, %middle.block96
  store i32 %i.cv, ptr %i.co, align 8, !tbaa !170, !alias.scope !279
  store i32 0, ptr %i.cu, align 8, !tbaa !170, !alias.scope !280
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i22: ; preds = %.lr.ph.i.i.i18
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !172, !alias.scope !279
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 20
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dm, align 8, !tbaa !149, !alias.scope !280
  store <2 x i32> %i.dn, ptr %i.co, align 8, !tbaa !149, !alias.scope !279
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !172, !alias.scope !280
  store i32 6, ptr %i.dl, align 4, !tbaa !171, !alias.scope !280
  store i32 0, ptr %i.dm, align 8, !tbaa !170, !alias.scope !280
  br label %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE5clearEv.exit.i.i.thread.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i.i.i32, %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.do, ptr noundef nonnull align 8 dereferenceable(11) %i.dp, i64 11, i1 false), !alias.scope !281
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 64 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.dq, %i.b
  %indvar.next83 = add i64 %indvar82, 1
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i18, !llvm.loop !270

_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.cj, %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dr, %_ZSt19__relocate_object_aIN4Luau7CodeGen6IrInstES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !177
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dv) #19
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !137
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !136
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dw, ptr %i.ds, align 8, !tbaa !177
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !147}
!1 = distinct !{!1, !147}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4Luau7CodeGen11HostIrHooksE", !11, i64 0}
!13 = !{!"bool", !7, i64 0}
!14 = !{!"_ZTSN4Luau7CodeGen8IrOpKindE", !7, i64 0}
!15 = !{!"_ZTSN4Luau7CodeGen4IrOpE", !14, i64 0, !8, i64 0}
!16 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !11, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE", !19, i64 0}
!21 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !11, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE", !24, i64 0}
!26 = !{!"p1 _ZTSN4Luau7CodeGen7IrConstE", !11, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE", !29, i64 0}
!31 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeBlockE", !11, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !34, i64 0}
!36 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeTypesE", !11, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !39, i64 0}
!41 = !{!"p1 _ZTSN4Luau7CodeGen15BytecodeMappingE", !11, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !44, i64 0}
!46 = !{!"p1 int", !11, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIjSaIjEE", !49, i64 0}
!51 = !{!"p1 _ZTSN4Luau7CodeGen20ValueRestoreLocationE", !11, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !54, i64 0}
!56 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen17StoreLocationHintEE", !11, i64 0}
!57 = !{!"long", !7, i64 0}
!58 = !{!"_ZTSSt4hashIjE"}
!59 = !{!"_ZTSSt8equal_toIjE"}
!60 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen17StoreLocationHintEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !56, i64 0, !57, i64 8, !57, i64 16, !8, i64 24, !58, i64 28, !59, i64 29}
!61 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen17StoreLocationHintESt4hashIjESt8equal_toIjEEE", !60, i64 0}
!62 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen14VmExitSyncInfoEE", !11, i64 0}
!63 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !62, i64 0, !57, i64 8, !57, i64 16, !8, i64 24, !58, i64 28, !59, i64 29}
!64 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEEE", !63, i64 0}
!65 = !{!"p1 _ZTSSt4pairIjjE", !11, i64 0}
!66 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEE", !65, i64 0, !57, i64 8, !57, i64 16, !8, i64 24, !58, i64 28, !59, i64 29}
!67 = !{!"_ZTSN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEEE", !66, i64 0}
!68 = !{!"p1 omnipotent char", !11, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIhSaIhEE", !71, i64 0}
!73 = !{!"p1 _ZTSN4Luau7CodeGen19BytecodeRegTypeInfoE", !11, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !76, i64 0}
!78 = !{!"_ZTSN4Luau7CodeGen16BytecodeTypeInfoE", !72, i64 0, !77, i64 24, !72, i64 48, !50, i64 72}
!79 = !{!"p1 _ZTS5Proto", !11, i64 0}
!80 = !{!"p1 _ZTSN4Luau7CodeGen13BlockOrderingE", !11, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !83, i64 0}
!85 = !{!"p1 _ZTSN4Luau7CodeGen11RegisterSetE", !11, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE", !88, i64 0}
!90 = !{!"_ZTSSt12_Base_bitsetILm4EE", !7, i64 0}
!91 = !{!"_ZTSSt6bitsetILm256EE", !90, i64 0}
!92 = !{!"_ZTSN4Luau7CodeGen11RegisterSetE", !91, i64 0, !13, i64 32, !7, i64 33}
!93 = !{!"_ZTSN4Luau7CodeGen7CfgInfoE", !50, i64 0, !50, i64 24, !50, i64 48, !50, i64 72, !50, i64 96, !50, i64 120, !50, i64 144, !84, i64 168, !89, i64 192, !89, i64 216, !89, i64 240, !92, i64 264, !92, i64 304}
!94 = !{!"p1 _ZTSN4Luau7CodeGen13LoweringStatsE", !11, i64 0}
!95 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !11, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !98, i64 0}
!100 = !{!"_ZTSN4Luau7CodeGen10IrFunctionE", !20, i64 0, !25, i64 24, !30, i64 48, !35, i64 72, !40, i64 96, !45, i64 120, !8, i64 144, !8, i64 148, !8, i64 152, !50, i64 160, !55, i64 184, !50, i64 208, !61, i64 232, !64, i64 264, !67, i64 296, !78, i64 328, !78, i64 424, !79, i64 520, !13, i64 528, !93, i64 536, !94, i64 880, !13, i64 888, !57, i64 896, !99, i64 904}
!101 = !{!"p1 _ZTSN4Luau7CodeGen9IrBuilder8LoopInfoE", !11, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen9IrBuilder8LoopInfoESaIS3_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
end_hunk_0
