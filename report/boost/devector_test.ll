Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5734

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i32 [ %.ph86, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.07.i.unr = phi i64 [ %.07.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = sub i64 %.07.i.ph, %2
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ap = phi i32 [ %i.be, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.07.i = phi i64 [ %i.bf, %scalar.ph ], [ %.07.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.ar = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !646
  %i.as = add i32 %i.ap, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.av, ptr %i.au, align 4, !tbaa !646
  %i.aw = add i32 %i.ap, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !646
  %i.ba = add i32 %i.ap, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.07.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !646
  %i.be = add i32 %i.ap, 4                        ; 2 uses
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bf = add nuw i64 %.07.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not.i.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit, label %scalar.ph, !llvm.loop !5735

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !653   ; 4 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !652 ; 4 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bg, i64 %i.bh ; 8 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bg, i64 %i.y ; 4 uses
  %.not16.i = icmp samesign eq i64 %i.bh, %i.y
  br i1 %.not16.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %i.bk = getelementptr [4 x i8], ptr %.0.i.i17, i64 %i.bh ; 6 uses
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.bl = shl i64 %i.y, 2
  %i.bm = shl i64 %i.bh, 2
  %i.bn = add i64 %i.bl, -4
  %i.bo = sub i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 3 uses
  %min.iters.check61 = icmp ult i64 %i.bo, 92
  br i1 %min.iters.check61, label %.lr.ph.i18.preheader84, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i18.preheader
  %bound050 = icmp ult ptr %i.bk, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound151 = icmp ugt ptr %i.z, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict52 = and i1 %bound050, %bound151
  %bound053 = icmp ult ptr %i.bk, %i.bj
  %bound154 = icmp ult ptr %i.bi, %i.z
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict52, %found.conflict55
  %bound056 = icmp ugt ptr %i.bj, @_ZN5boost9container4test12copyable_int5countE
  %bound157 = icmp ult ptr %i.bi, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx, %found.conflict58
  br i1 %conflict.rdx59, label %.lr.ph.i18.preheader84, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck49
  %n.vec63 = and i64 %i.bq, 9223372036854775800   ; 3 uses
  %i.br = shl i64 %n.vec63, 2                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.br
  %i.bu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next77, %vector.body64 ] ; 2 uses
  %vec.phi66 = phi <4 x i32> [ %i.bu, %vector.ph62 ], [ %i.by, %vector.body64 ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph62 ], [ %i.bz, %vector.body64 ]
  %i.bv = shl i64 %index65, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bv ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bk, i64 %i.bv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep68) ]
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5745
  %wide.load76 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !646, !alias.scope !5745
  %i.bx = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load, ptr %next.gep68, align 4, !tbaa !646, !alias.scope !5746, !noalias !5747
  store <4 x i32> %wide.load76, ptr %i.bx, align 4, !tbaa !646, !alias.scope !5746, !noalias !5747
  %i.by = add <4 x i32> %vec.phi66, splat (i32 1) ; 2 uses
  %i.bz = add <4 x i32> %vec.phi67, splat (i32 1) ; 2 uses
  %index.next77 = add nuw i64 %index65, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next77, %n.vec63
  br i1 %i.ca, label %middle.block78, label %vector.body64, !llvm.loop !5740

middle.block78:                                   ; preds = %vector.body64
  %bin.rdx79 = add <4 x i32> %i.bz, %i.by
  %i.cb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx79) ; 2 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5748, !noalias !5745
  %cmp.n80 = icmp eq i64 %i.bq, %n.vec63
  br i1 %cmp.n80, label %.lr.ph.i21.preheader, label %.lr.ph.i18.preheader84

.lr.ph.i18.preheader84:                           ; preds = %vector.memcheck49, %.lr.ph.i18.preheader, %middle.block78
  %.ph = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck49 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i18.preheader ], [ %i.cb, %middle.block78 ]
  %.018.i.ph = phi ptr [ %i.bi, %vector.memcheck49 ], [ %i.bi, %.lr.ph.i18.preheader ], [ %i.bs, %middle.block78 ]
  %.01517.i.ph = phi ptr [ %i.bk, %vector.memcheck49 ], [ %i.bk, %.lr.ph.i18.preheader ], [ %i.bt, %middle.block78 ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader84, %.lr.ph.i18
  %i.cc = phi i32 [ %i.ce, %.lr.ph.i18 ], [ %.ph, %.lr.ph.i18.preheader84 ]
  %.018.i = phi ptr [ %i.cf, %.lr.ph.i18 ], [ %.018.i.ph, %.lr.ph.i18.preheader84 ] ; 2 uses
  %.01517.i = phi ptr [ %i.cg, %.lr.ph.i18 ], [ %.01517.i.ph, %.lr.ph.i18.preheader84 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.cd = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.cd, ptr %.01517.i, align 4, !tbaa !646
  %i.ce = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cf = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.cf, %i.bj
  br i1 %.not.i19, label %.lr.ph.i21.preheader, label %.lr.ph.i18, !llvm.loop !5741

.lr.ph.i21.preheader:                             ; preds = %.lr.ph.i18, %middle.block78
  %xtraiter89 = and i64 %i.bq, 3                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol

.lr.ph.i21.prol:                                  ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21.prol
  %.06.i.prol = phi ptr [ %i.cj, %.lr.ph.i21.prol ], [ %i.bi, %.lr.ph.i21.preheader ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.i21.prol ], [ 0, %.lr.ph.i21.preheader ]
  store i32 -2147483648, ptr %.06.i.prol, align 4, !tbaa !646
  %i.ch = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol, !llvm.loop !5742

.lr.ph.i21.prol.loopexit:                         ; preds = %.lr.ph.i21.prol, %.lr.ph.i21.preheader
  %.06.i.unr = phi ptr [ %i.bi, %.lr.ph.i21.preheader ], [ %i.cj, %.lr.ph.i21.prol ]
  %i.ck = icmp ult i64 %i.bo, 12
  br i1 %i.ck, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21
  %.06.i = phi ptr [ %i.ct, %.lr.ph.i21 ], [ %.06.i.unr, %.lr.ph.i21.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.cl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  store i32 -2147483648, ptr %i.cn, align 4, !tbaa !646
  %i.co = add i32 %i.cl, -2
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !646
  %i.cq = add i32 %i.cl, -3
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !646
  %i.cs = add i32 %i.cl, -4
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  %.not.i22.3 = icmp eq ptr %i.ct, %i.bj
  br i1 %.not.i22.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cu = load i64, ptr %i.d, align 8, !tbaa !654
  %i.cv = shl i64 %i.cu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cv) #30
  %.pre43 = load i64, ptr %i.x, align 8, !tbaa !651
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cw = phi i64 [ %.pre43, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !653
  store i64 %i.p, ptr %i.d, align 8, !tbaa !643
  %i.cx = add i64 %i.cw, %2
  store i64 %i.cx, ptr %i.x, align 8, !tbaa !642
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 19 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !653
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !652
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !653    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !651  ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !654
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !176

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !642
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !652 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !259
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !646
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !176

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !641
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !654
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter168 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !646
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !646
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !5749

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !646
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !646
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !646
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !646
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !646
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !646
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !646
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !646
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !167

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %i.ca = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.ca, %i.an
  %i.cb = add i64 %reass.sub, -8
  %i.cc = ptrtoaddr ptr %i.k to i64
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.m
  %i.cg = and i64 %i.cf, 4611686018427387903      ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cg, 11
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %i.az, 2
  %i.cj = add i64 %i.ci, -1
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.n, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ba, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !646
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !646
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !646
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !646
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !5750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader161

.lr.ph.i40.i.preheader161:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader161, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !646
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !646
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !5751

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter171 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !259
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !646
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5752

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
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !259
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !646
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !646
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !646
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !259
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !646
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !677
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !646
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !169

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !259
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !646
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !5753

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa163.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.ay, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !259
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !646
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !259
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !646
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !677 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !259
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !646
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !677 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !259
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !646
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !677 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !177

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa163 = phi ptr [ %.lcssa163.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter165 = and i64 %i.ew, 1
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !259
  store i32 %i.ey, ptr %i.n, align 4, !tbaa !646
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fb = load ptr, ptr %.lcssa163, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa163, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.ay
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %i.aa = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !646
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !646
  %i.ag = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ai = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !236

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i.epil.init
  %i.ak = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !646
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit: ; preds = %.epil.preheader, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit.loopexit.unr-lcssa, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !767   ; 4 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !766 ; 3 uses
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
  %i.as = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.as, ptr %.01517.i, align 4, !tbaa !646
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i19, label %.lr.ph.i21, label %.lr.ph.i18, !llvm.loop !227

.lr.ph.i21:                                       ; preds = %.lr.ph.i18, %.lr.ph.i21
  %.06.i = phi ptr [ %i.az, %.lr.ph.i21 ], [ %i.ap, %.lr.ph.i18 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.az, %i.aq
  br i1 %.not.i22, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i21, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS5_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.an)
          to label %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge unwind label %bb.l

._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.v, align 8, !tbaa !765
  br label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.bc = phi i64 [ %.pre, %._ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit_crit_edge ], [ %i.w, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !767
  store i64 %i.o, ptr %i.d, align 8, !tbaa !759
  %i.bd = add i64 %i.bc, %2
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !758
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !795
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !795
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !225

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !767    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !766  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !765  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t
  %.not5.i = icmp samesign eq i64 %i.r, %i.t
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.06.i = phi ptr [ %i.y, %.lr.ph.i17 ], [ %i.v, %.lr.ph.i17.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i18, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17, !llvm.loop !185

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
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !759
  store ptr %i.o, ptr %0, align 8, !tbaa !767
  store i64 0, ptr %i.q, align 8, !tbaa !766
  store i64 %i.d, ptr %i.s, align 8, !tbaa !758
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 19 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !767
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !766
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !767    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !765  ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !794
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !238

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !758
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !766 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !259
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !646
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !238

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !757
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !794
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter168 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !646
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !646
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !8133

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !646
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !646
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !646
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !646
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !646
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !646
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add i64 %.020.i.i, -4                   ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !646
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !646
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !226

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.ca = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.ca, %i.an
  %i.cb = add i64 %reass.sub, -8
  %i.cc = ptrtoaddr ptr %i.k to i64
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.m
  %i.cg = and i64 %i.cf, 4611686018427387903      ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cg, 11
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %i.az, 2
  %i.cj = add i64 %i.ci, -1
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.n, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ba, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !646
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !646
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !646
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !646
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !8134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader161

.lr.ph.i40.i.preheader161:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader161, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !646
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !646
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !8135

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter171 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.prol, -1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !259
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !646
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8136

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
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !259
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !646
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !646
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !646
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !259
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !646
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !677
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !646
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !227

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !259
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !646
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !8137

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa163.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.ay, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !259
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !646
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !259
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !646
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !677 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !259
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !646
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !677 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !259
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !646
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !677 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !177

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa163 = phi ptr [ %.lcssa163.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter165 = and i64 %i.ew, 1
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !259
  store i32 %i.ey, ptr %i.n, align 4, !tbaa !646
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fb = load ptr, ptr %.lcssa163, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa163, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.ay
end_hunk_1
