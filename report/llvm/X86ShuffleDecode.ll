Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ShuffleDecode?download=true
inline.NumInlined: 131
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm16DecodePSRLDQMaskEjjRNS_15SmallVectorImplIiEE:bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %spec.store.select)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store i32 %spec.store.select, ptr %i.l, align 1
  %i.m = load i32, ptr %i.a, align 8, !tbaa !10
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.d, %bb.e
  %i.o = add nuw nsw i32 %.01112, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17DecodePALIGNRMaskEjjRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %.not18 = icmp eq i32 %0, 0
  br i1 %.not18, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.a = add i32 %0, -16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.01319 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.d = add i32 %.01319, 16                      ; 2 uses
  %.not = icmp eq i32 %i.d, %0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !40

bb.c:                                             ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.01217 = phi i32 [ 0, %.preheader ], [ %i.p, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.e = add i32 %.01217, %1                      ; 2 uses
  %i.f = icmp ugt i32 %i.e, 15
  %i.g = select i1 %i.f, i32 %i.a, i32 0
  %.0 = add i32 %i.e, %.01319
  %i.h = add i32 %.0, %i.g                        ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.h)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %2, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i32, ptr %i.b, align 8, !tbaa !10
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.d, %bb.e
  %i.p = add nuw nsw i32 %.01217, 1               ; 2 uses
  %.not16 = icmp eq i32 %i.p, 16
  br i1 %.not16, label %bb.b, label %bb.c, !llvm.loop !41
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16DecodeVALIGNMaskEjjRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = and i32 %1, %i.a
  %.not7 = icmp eq i32 %0, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.m, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.e = add i32 %.08, %i.b                       ; 2 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.e)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  store i32 %i.e, ptr %i.j, align 1
  %i.k = load i32, ptr %i.c, align 8, !tbaa !10
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.c, %bb.d
  %i.m = add nuw i32 %.08, 1                      ; 2 uses
  %.not = icmp eq i32 %i.m, %0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !42
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15DecodePSHUFMaskEjjjRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %1, %0
  %i.b = lshr i32 %i.a, 7                         ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1)
  %i.c = udiv i32 %0, %spec.store.select          ; 4 uses
  %.not27 = icmp eq i32 %0, 0
  br i1 %.not27, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not2324 = icmp ugt i32 %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  br i1 %.not2324, label %._crit_edge30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = and i32 %2, 255
  %i.g = mul nuw i32 %i.f, 16843009
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01929 = phi i32 [ %i.h, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.02028 = phi i32 [ %i.j, %._crit_edge ], [ %i.g, %.preheader.preheader ]
  br label %bb.b

._crit_edge30:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.h = add i32 %.01929, %i.c                    ; 2 uses
  %.not = icmp eq i32 %i.h, %0
  br i1 %.not, label %._crit_edge30, label %.preheader, !llvm.loop !43

bb.b:                                             ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.026 = phi i32 [ 0, %.preheader ], [ %i.s, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ]
  %.125 = phi i32 [ %.02028, %.preheader ], [ %i.j, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.i = urem i32 %.125, %i.c
  %i.j = udiv i32 %.125, %i.c                     ; 2 uses
  %i.k = add i32 %i.i, %.01929                    ; 2 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.k)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.d:                                             ; preds = %bb.b
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %3, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  store i32 %i.k, ptr %i.p, align 1
  %i.q = load i32, ptr %i.d, align 8, !tbaa !10
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.c, %bb.d
  %i.s = add nuw i32 %.026, 1                     ; 2 uses
  %.not23 = icmp eq i32 %i.s, %i.c
  br i1 %.not23, label %._crit_edge, label %bb.b, !llvm.loop !44
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17DecodePSHUFHWMaskEjjRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %.not27 = icmp eq i32 %0, 0
  br i1 %.not27, label %._crit_edge, label %.preheader23.lr.ph

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %i.c = and i32 %1, 3
  %invariant.op = or disjoint i32 %i.c, 4
  %i.d = lshr i32 %1, 2
  %i.e = and i32 %i.d, 3
  %invariant.op44 = or disjoint i32 %i.e, 4
  %i.f = lshr i32 %1, 4
  %i.g = and i32 %i.f, 3
  %invariant.op46 = or disjoint i32 %i.g, 4
  %3 = lshr i32 %1, 6
  %4 = and i32 %3, 3
  %invariant.op48 = or disjoint i32 %4, 4
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3
  %.01828 = phi i32 [ 0, %.preheader23.lr.ph ], [ %i.bo, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3 ] ; 10 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !12

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.01828)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.c:                                             ; preds = %.preheader23
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store i32 %.01828, ptr %i.l, align 1
  %i.m = load i32, ptr %i.a, align 8, !tbaa !10
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %.pre, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = or disjoint i32 %.01828, 1               ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.1 = icmp ult i32 %i.o, %i.q
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.p)
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.r = zext i32 %i.o to i64
  %i.s = load ptr, ptr %2, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %i.p, ptr %i.t, align 1
  %i.u = load i32, ptr %i.a, align 8, !tbaa !10
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1: ; preds = %bb.e, %bb.d
  %i.w = phi i32 [ %i.v, %bb.e ], [ %.pre29, %bb.d ] ; 2 uses
  %i.x = or disjoint i32 %.01828, 2               ; 2 uses
  %i.y = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.2 = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.x)
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  store i32 %i.x, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2: ; preds = %bb.g, %bb.f
  %i.ae = phi i32 [ %i.ad, %bb.g ], [ %.pre30, %bb.f ] ; 2 uses
  %i.af = or disjoint i32 %.01828, 3              ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.3 = icmp ult i32 %i.ae, %i.ag
  br i1 %.not.i.3, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.af)
  %.pre31 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2
  %i.ah = zext i32 %i.ae to i64
  %i.ai = load ptr, ptr %2, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  store i32 %i.af, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !10
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3: ; preds = %bb.i, %bb.h
  %i.am = phi i32 [ %i.al, %bb.i ], [ %.pre31, %bb.h ] ; 2 uses
  %.reass = or disjoint i32 %.01828, %invariant.op ; 2 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !12

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.reass)
  %.pre32 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %2, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  store i32 %.reass, ptr %i.aq, align 1
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !10
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22: ; preds = %bb.j, %bb.k
  %i.at = phi i32 [ %.pre32, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %.reass45 = or disjoint i32 %.01828, %invariant.op44 ; 2 uses
  %i.au = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21.1 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i21.1, label %bb.m, label %bb.l, !prof !12

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.reass45)
  %.pre33 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %2, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  store i32 %.reass45, ptr %i.ax, align 1
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !10
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1: ; preds = %bb.m, %bb.l
  %i.ba = phi i32 [ %i.az, %bb.m ], [ %.pre33, %bb.l ] ; 2 uses
  %.reass47 = or disjoint i32 %.01828, %invariant.op46 ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21.2 = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i21.2, label %bb.o, label %bb.n, !prof !12

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.reass47)
  %.pre34 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.2

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1
  %i.bc = zext i32 %i.ba to i64
  %i.bd = load ptr, ptr %2, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  store i32 %.reass47, ptr %i.be, align 1
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.2

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.2: ; preds = %bb.o, %bb.n
  %i.bh = phi i32 [ %i.bg, %bb.o ], [ %.pre34, %bb.n ] ; 2 uses
  %.reass49 = or disjoint i32 %.01828, %invariant.op48 ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21.3 = icmp ult i32 %i.bh, %i.bi
  br i1 %.not.i21.3, label %bb.q, label %bb.p, !prof !12

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.2
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.reass49)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.2
  %i.bj = zext i32 %i.bh to i64
  %i.bk = load ptr, ptr %2, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  store i32 %.reass49, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !10
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3: ; preds = %bb.q, %bb.p
  %i.bo = add i32 %.01828, 8                      ; 2 uses
  %.not = icmp eq i32 %i.bo, %0
  br i1 %.not, label %._crit_edge, label %.preheader23, !llvm.loop !45
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17DecodePSHUFLWMaskEjjRNS_15SmallVectorImplIiEE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %.not27 = icmp eq i32 %0, 0
  br i1 %.not27, label %._crit_edge, label %.preheader23.lr.ph

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %i.c = and i32 %1, 3
  %i.d = lshr i32 %1, 2
  %i.e = and i32 %i.d, 3
  %i.f = lshr i32 %1, 4
  %i.g = and i32 %i.f, 3
  %i.h = lshr i32 %1, 6
  %i.i = and i32 %i.h, 3
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3
  %.01828 = phi i32 [ 0, %.preheader23.lr.ph ], [ %i.bv, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3 ] ; 9 uses
  %i.j = or disjoint i32 %i.c, %.01828            ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.k, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !12

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.3, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.j)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.c:                                             ; preds = %.preheader23
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %2, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 %i.j, ptr %i.o, align 1
  %i.p = load i32, ptr %i.a, align 8, !tbaa !10
  %i.q = add i32 %i.p, 1                          ; 2 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %.pre, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = or disjoint i32 %i.e, %.01828            ; 2 uses
  %i.t = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.1 = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !12

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.s)
  %.pre29 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %2, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  store i32 %i.s, ptr %i.w, align 1
  %i.x = load i32, ptr %i.a, align 8, !tbaa !10
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1: ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %i.y, %bb.e ], [ %.pre29, %bb.d ] ; 2 uses
  %i.aa = or disjoint i32 %i.g, %.01828           ; 2 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.2 = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.2, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aa)
  %.pre30 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  %i.ac = zext i32 %i.z to i64
  %i.ad = load ptr, ptr %2, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.aa, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2: ; preds = %bb.g, %bb.f
  %i.ah = phi i32 [ %i.ag, %bb.g ], [ %.pre30, %bb.f ] ; 2 uses
  %i.ai = or disjoint i32 %i.i, %.01828           ; 2 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i.3 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.3, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ai)
  %.pre31 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %2, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak
  store i32 %i.ai, ptr %i.am, align 1
  %i.an = load i32, ptr %i.a, align 8, !tbaa !10
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3: ; preds = %bb.i, %bb.h
  %i.ap = phi i32 [ %i.ao, %bb.i ], [ %.pre31, %bb.h ] ; 2 uses
  %i.aq = or disjoint i32 %.01828, 4              ; 2 uses
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !12

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aq)
  %.pre32 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.3
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 %i.aq, ptr %i.au, align 1
  %i.av = load i32, ptr %i.a, align 8, !tbaa !10
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22: ; preds = %bb.j, %bb.k
  %i.ax = phi i32 [ %.pre32, %bb.j ], [ %i.aw, %bb.k ] ; 2 uses
  %i.ay = or disjoint i32 %.01828, 5              ; 2 uses
  %i.az = load i32, ptr %i.b, align 4, !tbaa !11
  %.not.i21.1 = icmp ult i32 %i.ax, %i.az
  br i1 %.not.i21.1, label %bb.m, label %bb.l, !prof !12

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ay)
  %.pre33 = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22
  %i.ba = zext i32 %i.ax to i64
  %i.bb = load ptr, ptr %2, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba
  store i32 %i.ay, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !10
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %i.a, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit22.1

end_hunk_0
