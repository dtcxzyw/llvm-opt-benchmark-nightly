inline.NumInlined: 231
inline.NumDeleted: 120
begin_hunk_0_@_ZN4llvh22ConvertCodePointToUTF8EjRPc:bb.a
  %i.g = call noundef i32 @_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, i32 noundef 0) #11
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !7
  store ptr %i.h, ptr %1, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i1 %.not
}

declare noundef i32 @_ZN4llvh18ConvertUTF32toUTF8EPPKjS1_PPhS3_NS_15ConversionFlagsE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh21hasUTF16ByteOrderMarkENS_8ArrayRefIcEE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !14
  switch i8 %i.b, label %.thread [
    i8 -1, label %.thread.sink.split
    i8 -2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.b, %bb.c
  %.sink4 = phi i8 [ -1, %bb.c ], [ -2, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = icmp eq i8 %i.d, %.sink4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.e, %.thread.sink.split ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh24convertUTF16ToUTF8StringENS_8ArrayRefIcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = and i64 %1, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %0, ptr %i.a, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = load i16, ptr %0, align 2, !tbaa !15     ; 2 uses
  %i.g = icmp eq i16 %i.f, -2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  %i.i = load ptr, ptr %3, align 8, !tbaa !10     ; 8 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = and i64 %i.m, 8589934590
  %.not1927 = icmp eq i64 %i.n, 0
  br i1 %.not1927, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.o = lshr exact i64 %i.m, 1                   ; 3 uses
  %i.p = and i64 %i.o, 4294967295                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp samesign ult i64 %i.p, 16
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.o, 4294967280               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.q, align 2, !tbaa !15
  %wide.load34 = load <8 x i16>, ptr %i.r, align 2, !tbaa !15
  %i.s = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.t = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load34)
  store <8 x i16> %i.s, ptr %i.q, align 2, !tbaa !15
  store <8 x i16> %i.t, ptr %i.r, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.v = and i64 %i.m, 24
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.o, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index37 ; 2 uses
  %wide.load38 = load <4 x i16>, ptr %i.w, align 2, !tbaa !15
  %i.x = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load38)
  store <4 x i16> %i.x, ptr %i.w, align 2, !tbaa !15
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.p, %n.vec36
  br i1 %cmp.n40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  store ptr %i.i, ptr %i.a, align 8, !tbaa !10
  %i.z = getelementptr i8, ptr %i.i, i64 %i.m
  %.pre = load i16, ptr %i.i, align 2, !tbaa !15
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !15
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  store i16 %rev.i, ptr %i.aa, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not19 = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not19, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.ac = phi i16 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ]
  %i.ad = phi ptr [ %i.i, %._crit_edge ], [ %0, %bb.c ]
  %.017 = phi ptr [ %i.z, %._crit_edge ], [ %i.e, %bb.c ]
  %i.ae = icmp eq i16 %i.ac, -257
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.af, ptr %i.a, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = shl i64 %1, 2
  %i.ah = or disjoint i64 %i.ag, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ah, i8 noundef signext 0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ai = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = call noundef i32 @_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.a, ptr noundef nonnull %.017, ptr noundef nonnull %i.b, ptr noundef nonnull %i.al, i32 noundef 0) #11
  %.not20 = icmp eq i32 %i.am, 0                  ; 2 uses
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.aj, align 8, !tbaa !30
  %i.an = load ptr, ptr %2, align 8, !tbaa !26
  store i8 0, ptr %i.an, align 1, !tbaa !14
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ap = load ptr, ptr %2, align 8, !tbaa !26
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.as, i8 noundef signext 0) #11
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !30 ; 4 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %4 = load i64, ptr %i.aw, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %5 = phi i64 [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %bb.j ]
  %i.az = icmp ugt i64 %i.au, %5
  br i1 %i.az, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.at, i64 noundef 0, ptr noundef null, i64 noundef 1) #11
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.k
  %i.ba = phi ptr [ %.pre.i, %bb.k ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.at
  store i8 0, ptr %i.bb, align 1, !tbaa !14
  store i64 %i.au, ptr %i.aj, align 8, !tbaa !30
  %i.bc = load ptr, ptr %2, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store i8 0, ptr %i.bd, align 1, !tbaa !14
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.bf = add i64 %i.be, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bf, i64 noundef 1) #11
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bg = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #12
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.a, %_ZNSt6vectorItSaItEED2Ev.exit
  %.1 = phi i1 [ %.not20, %_ZNSt6vectorItSaItEED2Ev.exit ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef i32 @_ZN4llvh18ConvertUTF16toUTF8EPPKtS1_PPhS3_NS_15ConversionFlagsE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh24convertUTF16ToUTF8StringENS_8ArrayRefItEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = tail call noundef zeroext i1 @_ZN4llvh24convertUTF16ToUTF8StringENS_8ArrayRefIcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 2) #11
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !33
  br label %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit

_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre.i, %bb.c ], [ %i.e, %bb.b ]
  %i.j = load ptr, ptr %2, align 8, !tbaa !37
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  store i16 0, ptr %i.l, align 1
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.n = add i64 %1, 1                            ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33
  %i.q = zext i32 %i.p to i64                     ; 4 uses
  %i.r = icmp ult i64 %i.n, %i.q
  br i1 %i.r, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.n, %i.q
  br i1 %i.s, label %bb.f, label %_ZN4llvh15SmallVectorImplItE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = zext i32 %i.u to i64
  %i.w = icmp ugt i64 %i.n, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.x, i64 noundef %i.n, i64 noundef 2) #11
  %.pre.i13 = load i32, ptr %i.o, align 8, !tbaa !33
  %.pre15.i = zext i32 %.pre.i13 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %.pre15.i, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %.not13.i = icmp samesign eq i64 %i.n, %.pre-phi.i
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.y = load ptr, ptr %2, align 8, !tbaa !37
  %i.z = getelementptr [2 x i8], ptr %i.y, i64 %.pre-phi.i
  %i.aa = sub i64 %i.n, %.pre-phi.i
  %i.ab = shl i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.z, i8 0, i64 %i.ab, i1 false), !tbaa !15
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.h, %bb.d
  %i.ac = trunc i64 %i.n to i32
  store i32 %i.ac, ptr %i.o, align 8, !tbaa !33
  %.pre = and i64 %i.n, 4294967295
  br label %_ZN4llvh15SmallVectorImplItE6resizeEm.exit

_ZN4llvh15SmallVectorImplItE6resizeEm.exit:       ; preds = %bb.e, %.sink.split.i
  %.pre-phi = phi i64 [ %i.q, %bb.e ], [ %.pre, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ad = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.pre-phi
  %i.af = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ae, i32 noundef 0) #11
  %.not = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZN4llvh15SmallVectorImplItE6resizeEm.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ah = load ptr, ptr %2, align 8, !tbaa !37
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 1                 ; 7 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !33  ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %.sink.split.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ugt i64 %i.al, %i.an
  br i1 %i.ap, label %bb.k, label %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp ugt i64 %i.al, %i.as
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.au, i64 noundef %i.al, i64 noundef 2) #11
  %.pre.i18 = load i32, ptr %i.o, align 8, !tbaa !33
  %.pre15.i19 = zext i32 %.pre.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i14 = phi i64 [ %.pre15.i19, %bb.l ], [ %i.an, %bb.k ] ; 3 uses
  %.not13.i15 = icmp samesign eq i64 %i.al, %.pre-phi.i14
  br i1 %.not13.i15, label %.sink.split.i17, label %.lr.ph.preheader.i16

.lr.ph.preheader.i16:                             ; preds = %bb.m
  %i.av = load ptr, ptr %2, align 8, !tbaa !37
  %i.aw = getelementptr [2 x i8], ptr %i.av, i64 %.pre-phi.i14
  %i.ax = sub nsw i64 %i.al, %.pre-phi.i14
  %i.ay = shl i64 %i.ax, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !15
  br label %.sink.split.i17

.sink.split.i17:                                  ; preds = %.lr.ph.preheader.i16, %bb.m, %bb.i
  %i.az = trunc i64 %i.al to i32                  ; 2 uses
  store i32 %i.az, ptr %i.o, align 8, !tbaa !33
  br label %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20

_ZN4llvh15SmallVectorImplItE6resizeEm.exit20:     ; preds = %bb.j, %.sink.split.i17
  %i.ba = phi i32 [ %i.am, %bb.j ], [ %i.az, %.sink.split.i17 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %.not.i21 = icmp ult i32 %i.ba, %i.bc
  br i1 %.not.i21, label %_ZN4llvh23SmallVectorTemplateBaseItLb1EE9push_backERKt.exit23, label %bb.n, !prof !36

bb.n:                                             ; preds = %_ZN4llvh15SmallVectorImplItE6resizeEm.exit20
end_hunk_0
