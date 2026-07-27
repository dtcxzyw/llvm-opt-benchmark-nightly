inline.NumInlined: 1430
inline.NumDeleted: 710
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb:bb.a
  tail call void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS8_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(18) %3, ptr noundef nonnull byval(%"class.llvh::ArrayRef") align 8 %8, ptr noundef nonnull byval(%"class.llvh::ArrayRef.41") align 8 %6, i1 noundef zeroext %7)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh12SMDiagnosticC2ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE(ptr noundef nonnull align 8 dereferenceable(360) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, ptr nofree readonly captures(address_is_null) %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.56") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %11) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %.not.i.i = icmp eq ptr %3, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !26, !alias.scope !180
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !25, !alias.scope !180
  store i8 0, ptr %i.g, align 8, !tbaa !11, !alias.scope !180
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !180
  store i64 %4, ptr %i.d, align 8, !tbaa !51, !noalias !180
  %i.i = icmp ugt i64 %4, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #19 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !20, !alias.scope !180
  %i.k = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !180
  store i64 %i.k, ptr %i.g, align 8, !tbaa !11, !alias.scope !180
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %4, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %3, align 1, !tbaa !11
  store i8 %i.m, ptr %i.l, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.d, align 8, !tbaa !51, !noalias !180 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !25, !alias.scope !180
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !20, !alias.scope !180
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !180
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.r, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %6, ptr %i.s, align 4, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %7, ptr %i.t, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.v = load ptr, ptr %8, align 8, !tbaa !120, !noalias !187 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !26, !alias.scope !187
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.x, align 8, !tbaa !25, !alias.scope !187
  store i8 0, ptr %i.w, align 8, !tbaa !11, !alias.scope !187
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7

bb.h:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !137, !noalias !187 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !26, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !187
  store i64 %i.z, ptr %i.c, align 8, !tbaa !51, !noalias !187
  %i.ab = icmp ugt i64 %i.z, 15
  br i1 %i.ab, label %bb.i, label %._crit_edge.i.i.i.i5

bb.i:                                             ; preds = %bb.h
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !20, !alias.scope !187
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !187
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !11, !alias.scope !187
  br label %._crit_edge.i.i.i.i5

._crit_edge.i.i.i.i5:                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  switch i64 %i.z, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i5
  %i.af = load i8, ptr %i.v, align 1, !tbaa !11
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6

bb.k:                                             ; preds = %._crit_edge.i.i.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i5
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !187 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25, !alias.scope !187
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !20, !alias.scope !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !187
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.al = load ptr, ptr %9, align 8, !tbaa !120, !noalias !194 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i.i8, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !26, !alias.scope !194
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.an, align 8, !tbaa !25, !alias.scope !194
  store i8 0, ptr %i.am, align 8, !tbaa !11, !alias.scope !194
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11

bb.m:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !137, !noalias !194 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !26, !alias.scope !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !194
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !51, !noalias !194
  %i.ar = icmp ugt i64 %i.ap, 15
  br i1 %i.ar, label %bb.n, label %._crit_edge.i.i.i.i9

bb.n:                                             ; preds = %bb.m
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !20, !alias.scope !194
  %i.at = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !194
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !11, !alias.scope !194
  br label %._crit_edge.i.i.i.i9

._crit_edge.i.i.i.i9:                             ; preds = %bb.n, %bb.m
  %i.au = phi ptr [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  switch i64 %i.ap, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i9
  %i.av = load i8, ptr %i.al, align 1, !tbaa !11
  store i8 %i.av, ptr %i.au, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10

bb.p:                                             ; preds = %._crit_edge.i.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i9
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !194 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25, !alias.scope !194
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !20, !alias.scope !194
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !194
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.bb = load ptr, ptr %10, align 8, !tbaa !138, !noalias !195
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !141, !noalias !195 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !alias.scope !195
  %.idx.i = shl nuw nsw i64 %i.bd, 3              ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11
  %12 = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i
  br label %_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11
  %i.be = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #23, !noalias !195 ; 3 uses
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !162, !alias.scope !195
  %i.bf = getelementptr i8, ptr %i.be, i64 %.idx.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.bb, i64 %.idx.i, i1 false), !noalias !195
  br label %_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit

_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit:       ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sink.i = phi ptr [ %12, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sink.i, ptr %i.bg, align 8, !tbaa !171, !alias.scope !195
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !161, !alias.scope !195
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !198  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !201 ; 5 uses
  %.idx = mul nuw nsw i64 %i.bl, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !125
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !127
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 4, ptr %i.bp, align 4, !tbaa !128
  %i.bq = icmp ugt i64 %i.bl, 4
  br i1 %i.bq, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit
  call void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, i64 noundef %i.bl)
  %.pre.i.i = load i32, ptr %i.bo, align 8, !tbaa !127
  %.pre8.i.i = zext i32 %.pre.i.i to i64
  %.pre16.pre = load ptr, ptr %i.bi, align 8, !tbaa !125
  br label %.lr.ph.i.i.i.i.preheader.i.i

bb.q:                                             ; preds = %_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit
  %.not9.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2IPKS1_vEET_S6_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.thread, %bb.q
  %.pre-phi.i.i27 = phi i64 [ %.pre8.i.i, %.thread ], [ 0, %bb.q ]
  %.pre1626 = phi ptr [ %.pre16.pre, %.thread ], [ %i.bn, %bb.q ]
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %.pre1626, i64 %.pre-phi.i.i27
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.preheader.i.i ] ; 5 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !202
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !26
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !20 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !51
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %bb.r, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !20
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !11
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %i.cb = phi ptr [ %i.bz, %bb.r ], [ %i.bu, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.bx, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !11
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !11
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bv, i64 %i.bx, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !25
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_copyIPKS1_PS1_EEvT_S7_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !203

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_copyIPKS1_PS1_EEvT_S7_T0_.exit.loopexit.i.i: ; preds = %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre7.i.i = load i32, ptr %i.bo, align 8, !tbaa !127
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !125
  br label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2IPKS1_vEET_S6_.exit

_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2IPKS1_vEET_S6_.exit: ; preds = %bb.q, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_copyIPKS1_PS1_EEvT_S7_T0_.exit.loopexit.i.i
  %i.cj = phi ptr [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_copyIPKS1_PS1_EEvT_S7_T0_.exit.loopexit.i.i ], [ %i.bn, %bb.q ] ; 5 uses
  %i.ck = phi i32 [ %.pre7.i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_copyIPKS1_PS1_EEvT_S7_T0_.exit.loopexit.i.i ], [ 0, %bb.q ]
  %i.cl = trunc i64 %i.bl to i32
  %i.cm = add i32 %i.ck, %i.cl                    ; 4 uses
  store i32 %i.cm, ptr %i.bo, align 8, !tbaa !127
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %.idx.i12 = mul nuw nsw i64 %i.cn, 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i12 ; 3 uses
  %.not.i.i.i.i13 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i13, label %_ZN4llvh4sortIRNS_11SmallVectorINS_7SMFixItELj4EEEEEvOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2IPKS1_vEET_S6_.exit
  %i.cp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cq = shl nuw nsw i64 %i.cp, 1
  %i.cr = xor i64 %i.cq, 126
  call void @_ZSt16__introsort_loopIPN4llvh7SMFixItElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.cj, ptr noundef nonnull %i.co, i64 noundef %i.cr)
  %i.cs = icmp ugt i32 %i.cm, 16
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 768 ; 2 uses
  call void @_ZSt16__insertion_sortIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ct)
  br label %.lr.ph.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i14:                             ; preds = %.lr.ph.i.i.i.i.i.i14, %bb.v
  %.06.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i14 ], [ %i.ct, %bb.v ] ; 2 uses
  call void @_ZSt25__unguarded_linear_insertIPN4llvh7SMFixItEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull %.06.i.i.i.i.i.i)
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.cu, %i.co
  br i1 %.not.i.i.i.i.i.i15, label %_ZN4llvh4sortIRNS_11SmallVectorINS_7SMFixItELj4EEEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i14, !llvm.loop !204

bb.w:                                             ; preds = %bb.u
  call void @_ZSt16__insertion_sortIPN4llvh7SMFixItEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.co)
  br label %_ZN4llvh4sortIRNS_11SmallVectorINS_7SMFixItELj4EEEEEvOT_.exit

_ZN4llvh4sortIRNS_11SmallVectorINS_7SMFixItELj4EEEEEvOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i14, %_ZN4llvh11SmallVectorINS_7SMFixItELj4EEC2IPKS1_vEET_S6_.exit, %bb.w
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL15printSourceLineRN4llvh11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %.not104 = icmp eq i32 %i.a, 0
  br i1 %.not104, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %.0106 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %.020105 = phi i32 [ 0, %.lr.ph ], [ %i.au, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ]
  %i.e = zext i32 %.0106 to i64                   ; 2 uses
  %.sroa.speculated61 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 8 uses
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %_ZNK4llvh9StringRef4findEcm.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated61 ; 3 uses
  %i.h = sub i64 %2, %.sroa.speculated61          ; 5 uses
  %i.i = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 9, i64 noundef %i.h) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %.not25 = icmp eq i64 %i.k, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not25
  br i1 %or.cond, label %_ZNK4llvh9StringRef4findEcm.exit.thread, label %bb.f

_ZNK4llvh9StringRef4findEcm.exit.thread:          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated61 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ugt i64 %i.h, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

_ZNK4llvh9StringRef4findEcm.exit.thread.thread:   ; preds = %bb.b
  %.pre = sub nsw i64 %2, %.sroa.speculated61     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated61
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %.pre, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread

bb.d:                                             ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread.thread, %_ZNK4llvh9StringRef4findEcm.exit.thread
  %i.z = phi ptr [ %i.s, %_ZNK4llvh9StringRef4findEcm.exit.thread.thread ], [ %i.l, %_ZNK4llvh9StringRef4findEcm.exit.thread ]
  %.pre-phi118 = phi i64 [ %.pre, %_ZNK4llvh9StringRef4findEcm.exit.thread.thread ], [ %i.h, %_ZNK4llvh9StringRef4findEcm.exit.thread ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.z, i64 noundef %.pre-phi118) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread

bb.e:                                             ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.h, i1 false)
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread

bb.f:                                             ; preds = %bb.c
  %.sroa.speculated74 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated61, i64 %i.k)
  %.sroa.speculated55 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.speculated74) ; 2 uses
end_hunk_0
