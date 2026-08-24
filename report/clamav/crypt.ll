Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crypt?download=true
inline.NumInlined: 110
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_:bb.a
  br label %_ZN9CryptData8SetKey13EPKc.exit

_ZN9CryptData8SetKey13EPKc.exit.loopexit:         ; preds = %.lr.ph.i
  store i8 %i.s, ptr %i.k, align 8, !tbaa !8
  store i8 %i.t, ptr %i.m, align 1, !tbaa !8
  store i8 %i.v, ptr %i.l, align 2, !tbaa !8
  br label %_ZN9CryptData8SetKey13EPKc.exit

_ZN9CryptData8SetKey13EPKc.exit.loopexit19:       ; preds = %.lr.ph.i17
  %i.aw = trunc i32 %i.ao to i16
  store i16 %i.aw, ptr %i.ae, align 8, !tbaa !11
  store i16 %i.as, ptr %i.ad, align 2, !tbaa !11
  br label %_ZN9CryptData8SetKey13EPKc.exit

_ZN9CryptData8SetKey13EPKc.exit:                  ; preds = %_ZN9CryptData8SetKey13EPKc.exit.loopexit19, %_ZN9CryptData8SetKey13EPKc.exit.loopexit, %bb.e, %bb.d, %bb.h, %bb.g, %bb.f, %bb.c
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 512)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZN9CryptData8SetKey13EPKc.exit
  %.0 = phi i1 [ true, %_ZN9CryptData8SetKey13EPKc.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN11SecPassword3GetEPwm(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z10WideToCharPKwPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z6GetRndPhm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %class.RarTime, align 8             ; 5 uses
  %i.a = tail call noalias ptr @fopen64(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @fread(ptr noundef %0, i64 noundef %1, i64 noundef 1, ptr noundef nonnull %i.a)
  %i.c = icmp eq i64 %i.b, %1
  %i.d = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br i1 %i.c, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !64
  call void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.e = call noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.f = call i64 @clock() #18
  %i.g = add i64 %i.f, %i.e                       ; 3 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZL13TimeRandomizePhm.exit, label %iter.check

iter.check:                                       ; preds = %.critedge
  %_ZZL13TimeRandomizePhmE5Count.promoted.i = load i32, ptr @_ZZL13TimeRandomizePhmE5Count, align 4 ; 5 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %1, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %1, 12
  %n.vec = and i64 %1, -16                        ; 5 uses
  %i.i = trunc i64 %n.vec to i32
  %i.j = add i32 %_ZZL13TimeRandomizePhmE5Count.promoted.i, %i.i ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <16 x i32> poison, i32 %_ZZL13TimeRandomizePhmE5Count.promoted.i, i64 0
  %broadcast.splat12 = shufflevector <16 x i32> %broadcast.splatinsert11, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat12, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind13 = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next14, %vector.body ] ; 2 uses
  %i.k = shl <16 x i64> %vec.ind, splat (i64 3)
  %i.l = and <16 x i64> %i.k, splat (i64 56)
  %i.m = lshr <16 x i64> %broadcast.splat, %i.l
  %i.n = xor <16 x i64> %i.m, %vec.ind
  %i.o = zext <16 x i32> %vec.ind13 to <16 x i64>
  %i.p = add <16 x i64> %i.n, %i.o
  %i.q = trunc <16 x i64> %i.p to <16 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.q, ptr %i.r, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next14 = add <16 x i32> %vec.ind13, splat (i32 16)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.resume.val = phi i32 [ %i.j, %vec.epilog.iter.check ], [ %_ZZL13TimeRandomizePhmE5Count.promoted.i, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %1, -4                       ; 4 uses
  %i.t = trunc i64 %n.vec15 to i32
  %i.u = add i32 %_ZZL13TimeRandomizePhmE5Count.promoted.i, %i.t ; 2 uses
  %broadcast.splatinsert16 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat17 = shufflevector <4 x i64> %broadcast.splatinsert16, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat19 = shufflevector <4 x i64> %broadcast.splatinsert18, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction20 = or disjoint <4 x i64> %broadcast.splat19, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction23 = add <4 x i32> %broadcast.splat22, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind25 = phi <4 x i64> [ %induction20, %vec.epilog.ph ], [ %vec.ind.next28, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind26 = phi <4 x i32> [ %induction23, %vec.epilog.ph ], [ %vec.ind.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.v = shl <4 x i64> %vec.ind25, splat (i64 3)
  %i.w = and <4 x i64> %i.v, splat (i64 56)
  %i.x = lshr <4 x i64> %broadcast.splat17, %i.w
  %i.y = xor <4 x i64> %i.x, %vec.ind25
  %i.z = zext <4 x i32> %vec.ind26 to <4 x i64>
  %i.aa = add <4 x i64> %i.y, %i.z
  %i.ab = trunc <4 x i64> %i.aa to <4 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index24
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !8
  %index.next27 = add nuw i64 %index24, 4         ; 2 uses
  %vec.ind.next28 = add nuw <4 x i64> %vec.ind25, splat (i64 4)
  %vec.ind.next29 = add <4 x i32> %vec.ind26, splat (i32 4)
  %i.ad = icmp eq i64 %index.next27, %n.vec15
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %1, %n.vec15
  br i1 %cmp.n30, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %_ZZL13TimeRandomizePhmE5Count.promoted.i, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.u, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.aj, %.lr.ph.i ]
  store i32 %.lcssa, ptr @_ZZL13TimeRandomizePhmE5Count, align 4, !tbaa !13
  br label %_ZL13TimeRandomizePhm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.ae = phi i32 [ %i.aj, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = shl i64 %.08.i, 3
  %i.ag = and i64 %i.af, 56
  %i.ah = lshr i64 %i.g, %i.ag
  %i.ai = xor i64 %i.ah, %.08.i
  %i.aj = add i32 %i.ae, 1                        ; 2 uses
  %i.ak = zext i32 %i.ae to i64
  %i.al = add i64 %i.ai, %i.ak
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !8
  %i.ao = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !68

_ZL13TimeRandomizePhm.exit:                       ; preds = %.critedge, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.c

bb.c:                                             ; preds = %_ZL13TimeRandomizePhm.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIwSaIwEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !73

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !62
  store i32 %i.r, ptr %i.o, align 4, !tbaa !62
  br label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  br label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit

_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit: ; preds = %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !71
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !73

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4, !tbaa !62
  store i32 %i.z, ptr %i.i, align 4, !tbaa !62
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !73

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !70
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !69 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !70
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !69
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !62
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !62
  br label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

_ZSt4copyIPwS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !73

bb.r:                                             ; preds = %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !62
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !62
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

declare void @_Z11sha256_initP14sha256_context(ptr noundef) local_unnamed_addr #3

declare void @_Z14sha256_processP14sha256_contextPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z11sha256_doneP14sha256_contextPh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11SecPasswordC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #15

declare void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !10}
!15 = !{!16, !17, i64 940}
!16 = !{!"_ZTS9CryptData", !6, i64 0, !5, i64 320, !6, i64 328, !5, i64 936, !17, i64 940, !18, i64 944, !6, i64 1208, !6, i64 2232, !6, i64 2488, !6, i64 2504, !6, i64 2508}
!17 = !{!"_ZTS12CRYPT_METHOD", !6, i64 0}
!18 = !{!"_ZTS8Rijndael", !19, i64 0, !5, i64 4, !6, i64 8, !6, i64 24}
!19 = !{!"bool", !6, i64 0}
!20 = distinct !{!20, !10}
end_hunk_0
