Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42025
inline.NumDeleted: 5233
loop-unroll.NumCompletelyUnrolled: 340
loop-unroll.NumRuntimeUnrolled: 847
loop-unroll.NumUnrolled: 1202
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %i.am = add nuw i64 %.07.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5565

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i32 [ %.ph88, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.07.i.unr = phi i64 [ %.07.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = sub i64 %.07.i.ph, %2
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ap = phi i32 [ %i.be, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.07.i = phi i64 [ %i.bf, %scalar.ph ], [ %.07.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.ar = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !2521
  %i.as = add i32 %i.ap, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.av, ptr %i.au, align 4, !tbaa !2521
  %i.aw = add i32 %i.ap, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !2521
  %i.ba = add i32 %i.ap, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !2521
  %i.be = add i32 %i.ap, 4                        ; 2 uses
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = add nuw i64 %.07.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not.i.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit, label %scalar.ph, !llvm.loop !5566

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !2530  ; 4 uses
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.b ; 8 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bg, i64 %i.y ; 4 uses
  %.not16.i = icmp samesign eq i64 %i.b, %i.y
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %i.bj = getelementptr [4 x i8], ptr %.0.i.i17, i64 %i.b ; 6 uses
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 3 uses
  %i.bk = shl i64 %i.y, 2
  %i.bl = shl i64 %i.b, 2
  %i.bm = add i64 %i.bk, -4
  %i.bn = sub i64 %i.bm, %i.bl                    ; 3 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.bn, 92
  br i1 %min.iters.check63, label %.lr.ph.i18.preheader86, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i18.preheader
  %bound052 = icmp ult ptr %i.bj, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound153 = icmp ugt ptr %i.z, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict54 = and i1 %bound052, %bound153
  %bound055 = icmp ult ptr %i.bj, %i.bi
  %bound156 = icmp ult ptr %i.bh, %i.z
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx = or i1 %found.conflict54, %found.conflict57
  %bound058 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound159 = icmp ult ptr %i.bh, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx, %found.conflict60
  br i1 %conflict.rdx61, label %.lr.ph.i18.preheader86, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck51
  %n.vec65 = and i64 %i.bp, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec65, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.bq
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next79, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.bt, %vector.ph64 ], [ %i.bx, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %i.by, %vector.body66 ]
  %i.bu = shl i64 %index67, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bj, i64 %i.bu ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep70) ]
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !2521, !alias.scope !5567
  %wide.load78 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !2521, !alias.scope !5567
  %i.bw = getelementptr i8, ptr %next.gep70, i64 16
  store <4 x i32> %wide.load, ptr %next.gep70, align 4, !tbaa !2521, !alias.scope !5570, !noalias !5572
  store <4 x i32> %wide.load78, ptr %i.bw, align 4, !tbaa !2521, !alias.scope !5570, !noalias !5572
  %i.bx = add <4 x i32> %vec.phi68, splat (i32 1) ; 2 uses
  %i.by = add <4 x i32> %vec.phi69, splat (i32 1) ; 2 uses
  %index.next79 = add nuw i64 %index67, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next79, %n.vec65
  br i1 %i.bz, label %middle.block80, label %vector.body66, !llvm.loop !5574

middle.block80:                                   ; preds = %vector.body66
  %bin.rdx81 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx81) ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18, !alias.scope !5575, !noalias !5567
  %cmp.n82 = icmp eq i64 %i.bp, %n.vec65
  br i1 %cmp.n82, label %.lr.ph.i21.preheader, label %.lr.ph.i18.preheader86

.lr.ph.i18.preheader86:                           ; preds = %vector.memcheck51, %.lr.ph.i18.preheader, %middle.block80
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck51 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i18.preheader ], [ %i.ca, %middle.block80 ]
  %.018.i.ph = phi ptr [ %i.bh, %vector.memcheck51 ], [ %i.bh, %.lr.ph.i18.preheader ], [ %i.br, %middle.block80 ]
  %.01517.i.ph = phi ptr [ %i.bj, %vector.memcheck51 ], [ %i.bj, %.lr.ph.i18.preheader ], [ %i.bs, %middle.block80 ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader86, %.lr.ph.i18
  %i.cb = phi i32 [ %i.cd, %.lr.ph.i18 ], [ %.ph, %.lr.ph.i18.preheader86 ]
  %.018.i = phi ptr [ %i.ce, %.lr.ph.i18 ], [ %.018.i.ph, %.lr.ph.i18.preheader86 ] ; 2 uses
  %.01517.i = phi ptr [ %i.cf, %.lr.ph.i18 ], [ %.01517.i.ph, %.lr.ph.i18.preheader86 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.cc = load i32, ptr %.018.i, align 4, !tbaa !2521
  store i32 %i.cc, ptr %.01517.i, align 4, !tbaa !2521
  %i.cd = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.ce, %i.bi
  br i1 %.not.i19, label %.lr.ph.i21.preheader, label %.lr.ph.i18, !llvm.loop !5576

.lr.ph.i21.preheader:                             ; preds = %.lr.ph.i18, %middle.block80
  %xtraiter91 = and i64 %i.bp, 3                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol

.lr.ph.i21.prol:                                  ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21.prol
  %.06.i.prol = phi ptr [ %i.ci, %.lr.ph.i21.prol ], [ %i.bh, %.lr.ph.i21.preheader ] ; 2 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i21.prol ], [ 0, %.lr.ph.i21.preheader ]
  store i32 -2147483648, ptr %.06.i.prol, align 4, !tbaa !2521
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol, !llvm.loop !5577

.lr.ph.i21.prol.loopexit:                         ; preds = %.lr.ph.i21.prol, %.lr.ph.i21.preheader
  %.06.i.unr = phi ptr [ %i.bh, %.lr.ph.i21.preheader ], [ %i.ci, %.lr.ph.i21.prol ]
  %i.cj = icmp ult i64 %i.bn, 12
  br i1 %i.cj, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21
  %.06.i = phi ptr [ %i.cs, %.lr.ph.i21 ], [ %.06.i.unr, %.lr.ph.i21.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2521
  %i.ck = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.cl = add i32 %i.ck, -1
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !2521
  %i.cn = add i32 %i.ck, -2
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !2521
  %i.cp = add i32 %i.ck, -3
  store i32 %i.cp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -2147483648, ptr %i.cq, align 4, !tbaa !2521
  %i.cr = add i32 %i.ck, -4
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  %.not.i22.3 = icmp eq ptr %i.cs, %i.bi
  br i1 %.not.i22.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !2534

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.ct = shl i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.ct) #30
  %.pre45 = load i64, ptr %i.x, align 8, !tbaa !2533
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cu = phi i64 [ %.pre45, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !2530
  store i64 %i.p, ptr %i.d, align 8, !tbaa !2519
  %i.cv = add i64 %i.cu, %2
  store i64 %i.cv, ptr %i.x, align 8, !tbaa !2518
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2696

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !2530
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2532
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !2530   ; 5 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2533 ; 7 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 15 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2535
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2521
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !5578

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !2518
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2532 ; 7 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 14 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2521
  %i.ai = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !5578

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub i64 %i.ab, %i.a                     ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !2517
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2535
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i49.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ba ; 7 uses
  %xtraiter169 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.bb, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i58.prol ], [ %i.o, %bb.j ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bc = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bd = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !2521
  store i32 %i.bd, ptr %.01618.i.i.prol, align 4, !tbaa !2521
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !5579

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bc, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp ult i64 %.06.i.i, 3
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bw, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.ca, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2521
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2521
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !2521
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !2521
  %i.bp = add i32 %i.bk, 2
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !2521
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !2521
  %i.bt = add i32 %i.bk, 3
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bw = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !2521
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !2521
  %i.by = add i32 %i.bk, 4
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !4995

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %i.cb = shl nuw nsw i64 %i.n, 2
  %i.cc = add i64 %i.cb, %i.l
  %i.cd = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.cd, %i.ao
  %i.ce = add i64 %reass.sub, -8
  %i.cf = add i64 %i.cc, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 76
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %.06.i.i, 2
  %i.cj = add i64 %i.ci, 35
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2521
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2521
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2521
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !2521
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !5580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader162

.lr.ph.i40.i.preheader162:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader162, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2521
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2521
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !5581

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter172 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2521
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5582

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2521
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2521
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2521
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2521
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !5583

.lr.ph.i49.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i, %.lr.ph.i49.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i49.i ], [ %1, %.lr.ph.i49.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i49.i ], [ %i.dt, %.lr.ph.i49.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2521
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2521
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i50.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i50.i, label %.lr.ph.i.i53.i.preheader, label %.lr.ph.i49.i, !llvm.loop !5002

.lr.ph.i.i53.i.preheader:                         ; preds = %.lr.ph.i49.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %.lr.ph.i.i53.i.preheader, %.lr.ph.i.i53.i.prol
  %.09.i.i54.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i53.i.prol ], [ %i.az, %.lr.ph.i.i53.i.preheader ]
  %.048.i.i55.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i53.i.prol ], [ %1, %.lr.ph.i.i53.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i56.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i53.i.prol ], [ %2, %.lr.ph.i.i53.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i53.i.prol ], [ 0, %.lr.ph.i.i53.i.preheader ]
  %i.dz = add i64 %.09.i.i54.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i56.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i55.i.prol, align 4, !tbaa !2521
  %i.ec = load ptr, ptr %.sroa.0.07.i.i56.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i55.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !5584

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %.lr.ph.i.i53.i.preheader
  %.lcssa164.unr = phi ptr [ poison, %.lr.ph.i.i53.i.preheader ], [ %i.ec, %.lr.ph.i.i53.i.prol ]
  %.09.i.i54.i.unr = phi i64 [ %i.az, %.lr.ph.i.i53.i.preheader ], [ %i.dz, %.lr.ph.i.i53.i.prol ]
  %.048.i.i55.i.unr = phi ptr [ %1, %.lr.ph.i.i53.i.preheader ], [ %i.ed, %.lr.ph.i.i53.i.prol ]
  %.sroa.0.07.i.i56.i.unr = phi ptr [ %2, %.lr.ph.i.i53.i.preheader ], [ %i.ec, %.lr.ph.i.i53.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.09.i.i54.i = phi i64 [ %i.er, %.lr.ph.i.i53.i ], [ %.09.i.i54.i.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.048.i.i55.i = phi ptr [ %i.ev, %.lr.ph.i.i53.i ], [ %.048.i.i55.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i56.i = phi ptr [ %i.eu, %.lr.ph.i.i53.i ], [ %.sroa.0.07.i.i56.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i56.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i55.i, align 4, !tbaa !2521
  %i.eh = load ptr, ptr %.sroa.0.07.i.i56.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2521
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2521
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 12
  %i.er = add i64 %.09.i.i54.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2521
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 16
  %.not.i.i57.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i57.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i, label %.lr.ph.i.i53.i, !llvm.loop !5583

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i: ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.lcssa164 = phi ptr [ %.lcssa164.unr, %.lr.ph.i.i53.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i53.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter166 = and i64 %i.ew, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i61.i.prol.loopexit, label %.lr.ph.i.i61.i.prol

.lr.ph.i.i61.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2521
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa164, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i61.i.prol.loopexit

.lr.ph.i.i61.i.prol.loopexit:                     ; preds = %.lr.ph.i.i61.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i ], [ %i.fd, %.lr.ph.i.i61.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i ], [ %i.fc, %.lr.ph.i.i61.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa164, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit59.i ], [ %i.fb, %.lr.ph.i.i61.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %i.aa = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !2521
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !2521
  %i.ag = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ai = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !7976

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.epil.init
  %i.ak = load i32, ptr %3, align 4, !tbaa !2521
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !2521
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit: ; preds = %.epil.preheader, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !5842  ; 4 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !5844 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.w ; 2 uses
  %.not16.i = icmp samesign eq i64 %i.ao, %i.w
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i17, i64 %i.ao
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %.018.i = phi ptr [ %i.av, %.lr.ph.i18 ], [ %i.ap, %.lr.ph.i18.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.aw, %.lr.ph.i18 ], [ %i.ar, %.lr.ph.i18.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.as = load i32, ptr %.018.i, align 4, !tbaa !2521
  store i32 %i.as, ptr %.01517.i, align 4, !tbaa !2521
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i19, label %.lr.ph.i21, label %.lr.ph.i18, !llvm.loop !7785

.lr.ph.i21:                                       ; preds = %.lr.ph.i18, %.lr.ph.i21
  %.06.i = phi ptr [ %i.az, %.lr.ph.i21 ], [ %i.ap, %.lr.ph.i18 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2521
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.az, %i.aq
  br i1 %.not.i22, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i21, !llvm.loop !5846

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.an)
          to label %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge unwind label %bb.l

._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.v, align 8, !tbaa !5845
  br label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.bc = phi i64 [ %.pre, %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge ], [ %i.w, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !5842
  store i64 %i.o, ptr %i.d, align 8, !tbaa !5833
  %i.bd = add i64 %i.bc, %2
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !5832
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23allocate_and_copy_rangeIPKS3_EEvT_SA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.c:                                             ; preds = %.split
  %i.f = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.c, i64 noundef 4) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7806
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !7806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !2521
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !2521
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !7727

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !5842   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !5844 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !5845 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t
  %.not5.i = icmp samesign eq i64 %i.r, %i.t
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.06.i = phi ptr [ %i.y, %.lr.ph.i17 ], [ %i.v, %.lr.ph.i17.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !2521
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i18, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17, !llvm.loop !5846

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i17, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not.i19 = icmp eq ptr %i.p, null
  br i1 %.not.i19, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.p)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %bb.e, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !5833
  store ptr %i.o, ptr %0, align 8, !tbaa !5842
  store i64 0, ptr %i.q, align 8, !tbaa !5844
  store i64 %i.d, ptr %i.s, align 8, !tbaa !5832
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !2636 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2696

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !5842
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !5844
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !5842   ; 5 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !5845 ; 7 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 15 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !7704
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !2521
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !2636 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !8101

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !5832
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !5844 ; 7 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 14 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !2521
  %i.ai = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !2636 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !8101

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub i64 %i.ab, %i.a                     ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !5831
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !7704
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i49.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ba ; 7 uses
  %xtraiter169 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.bb, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i58.prol ], [ %i.o, %bb.j ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bc = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bd = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !2521
  store i32 %i.bd, ptr %.01618.i.i.prol, align 4, !tbaa !2521
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !8102

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bc, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp ult i64 %.06.i.i, 3
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bw, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.ca, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !2521
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !2521
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !2521
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !2521
  %i.bp = add i32 %i.bk, 2
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !2521
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !2521
  %i.bt = add i32 %i.bk, 3
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bw = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !2521
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !2521
  %i.by = add i32 %i.bk, 4
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !7779

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.cb = shl nuw nsw i64 %i.n, 2
  %i.cc = add i64 %i.cb, %i.l
  %i.cd = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.cd, %i.ao
  %i.ce = add i64 %reass.sub, -8
  %i.cf = add i64 %i.cc, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 76
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %.06.i.i, 2
  %i.cj = add i64 %i.ci, 35
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.o, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.bb, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.bb, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !2521
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !2521
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !2521
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !2521
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !8103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader162

.lr.ph.i40.i.preheader162:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader162, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader162 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2521
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2521
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !8104

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter172 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter174 = phi i64 [ %prol.iter174.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !2521
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !2636 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8105

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !2521
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2636 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !18
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !2521
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !2636 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !2521
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !2636 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2521
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !2636
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !5583

.lr.ph.i49.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i, %.lr.ph.i49.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i49.i ], [ %1, %.lr.ph.i49.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i49.i ], [ %i.dt, %.lr.ph.i49.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !2521
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !2521
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i50.i = icmp eq ptr %i.dx, %i.o
  br i1 %.not.i50.i, label %.lr.ph.i.i53.i.preheader, label %.lr.ph.i49.i, !llvm.loop !7785

.lr.ph.i.i53.i.preheader:                         ; preds = %.lr.ph.i49.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %.lr.ph.i.i53.i.preheader, %.lr.ph.i.i53.i.prol
  %.09.i.i54.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i53.i.prol ], [ %i.az, %.lr.ph.i.i53.i.preheader ]
  %.048.i.i55.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i53.i.prol ], [ %1, %.lr.ph.i.i53.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i56.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i53.i.prol ], [ %2, %.lr.ph.i.i53.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i53.i.prol ], [ 0, %.lr.ph.i.i53.i.preheader ]
  %i.dz = add i64 %.09.i.i54.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i56.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !18
  store i32 %i.eb, ptr %.048.i.i55.i.prol, align 4, !tbaa !2521
  %i.ec = load ptr, ptr %.sroa.0.07.i.i56.i.prol, align 8, !tbaa !2636 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i55.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !8106

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %.lr.ph.i.i53.i.preheader
  %.lcssa164.unr = phi ptr [ poison, %.lr.ph.i.i53.i.preheader ], [ %i.ec, %.lr.ph.i.i53.i.prol ]
  %.09.i.i54.i.unr = phi i64 [ %i.az, %.lr.ph.i.i53.i.preheader ], [ %i.dz, %.lr.ph.i.i53.i.prol ]
  %.048.i.i55.i.unr = phi ptr [ %1, %.lr.ph.i.i53.i.preheader ], [ %i.ed, %.lr.ph.i.i53.i.prol ]
  %.sroa.0.07.i.i56.i.unr = phi ptr [ %2, %.lr.ph.i.i53.i.preheader ], [ %i.ec, %.lr.ph.i.i53.i.prol ]
  %i.ee = icmp ult i64 %i.az, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.09.i.i54.i = phi i64 [ %i.er, %.lr.ph.i.i53.i ], [ %.09.i.i54.i.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.048.i.i55.i = phi ptr [ %i.ev, %.lr.ph.i.i53.i ], [ %.048.i.i55.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i56.i = phi ptr [ %i.eu, %.lr.ph.i.i53.i ], [ %.sroa.0.07.i.i56.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i56.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18
  store i32 %i.eg, ptr %.048.i.i55.i, align 4, !tbaa !2521
  %i.eh = load ptr, ptr %.sroa.0.07.i.i56.i, align 8, !tbaa !2636 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !18
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !2521
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !2636 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !2521
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !2636 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 12
  %i.er = add i64 %.09.i.i54.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !18
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !2521
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !2636 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i55.i, i64 16
  %.not.i.i57.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i57.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i, label %.lr.ph.i.i53.i, !llvm.loop !5583

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i: ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.lcssa164 = phi ptr [ %.lcssa164.unr, %.lr.ph.i.i53.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i53.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter166 = and i64 %i.ew, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i.i61.i.prol.loopexit, label %.lr.ph.i.i61.i.prol

.lr.ph.i.i61.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !18
  store i32 %i.ey, ptr %i.o, align 4, !tbaa !2521
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !18
  %i.fb = load ptr, ptr %.lcssa164, align 8, !tbaa !2636
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i61.i.prol.loopexit

.lr.ph.i.i61.i.prol.loopexit:                     ; preds = %.lr.ph.i.i61.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i ], [ %i.fd, %.lr.ph.i.i61.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i ], [ %i.fc, %.lr.ph.i.i61.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa164, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit59.i ], [ %i.fb, %.lr.ph.i.i61.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.az
end_hunk_1
