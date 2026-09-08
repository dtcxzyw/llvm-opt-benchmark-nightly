Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/strfn?download=true
inline.NumInlined: 6
begin_hunk_0_@_Z4itoalPcm:bb.a
  store i8 45, ptr %i.l, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge36
  %.2 = phi i64 [ %i.k, %bb.d ], [ %.1, %._crit_edge36 ] ; 11 uses
  %.not29 = icmp eq i64 %.2, 0
  br i1 %.not29, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.a, i64 %.2      ; 3 uses
  %min.iters.check = icmp ult i64 %.2, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i64 %.2, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %.2, 24
  %n.vec = and i64 %.2, -32                       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = xor i64 %index, -1
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -15
  %i.r = getelementptr i8, ptr %i.p, i64 -31
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !11
  %wide.load40 = load <16 x i8>, ptr %i.r, align 1, !tbaa !11
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse41 = shufflevector <16 x i8> %wide.load40, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %reverse, ptr %i.s, align 1, !tbaa !11
  store <16 x i8> %reverse41, ptr %i.t, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.2, -8                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.v = xor i64 %index43, -1
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -7
  %wide.load44 = load <8 x i8>, ptr %i.x, align 1, !tbaa !11
  %reverse45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  store <8 x i8> %reverse45, ptr %i.y, align 1, !tbaa !11
  %index.next46 = add nuw i64 %index43, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next46, %n.vec42
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %.2, %n.vec42
  br i1 %cmp.n47, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.2
  store i8 0, ptr %i.aa, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.028 = phi i64 [ %i.af, %vec.epilog.scalar.ph ], [ %.028.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ab = xor i64 %.028, -1
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.028
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !11
  %i.af = add nuw i64 %.028, 1                    ; 2 uses
  %exitcond30.not = icmp eq i64 %i.af, %.2
  br i1 %exitcond30.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_Z4itoalPwm(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [50 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp slt i64 %0, 0
  %.lobit.neg = ashr i64 %0, 63
  %i.c = add i64 %2, %.lobit.neg                  ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1) ; 3 uses
  %exitcond.not31 = icmp ult i64 %i.c, 2
  br i1 %exitcond.not31, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a
  %spec.select = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %i.e, %i.d
  br i1 %exitcond.not, label %._crit_edge36, label %bb.c, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph35, %bb.b
  %.02033 = phi i64 [ 0, %.lr.ph35 ], [ %i.e, %bb.b ] ; 2 uses
  %.12232 = phi i64 [ %spec.select, %.lr.ph35 ], [ %i.g, %bb.b ] ; 3 uses
  %i.e = add nuw i64 %.02033, 1                   ; 3 uses
  %i.f = urem i64 %.12232, 10
  %i.g = udiv i64 %.12232, 10
  %i.h = trunc nuw nsw i64 %i.f to i32
  %i.i = or disjoint i32 %i.h, 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02033
  store i32 %i.i, ptr %i.j, align 4, !tbaa !14
  %.not27 = icmp samesign ult i64 %.12232, 10
  br i1 %.not27, label %._crit_edge37, label %bb.b, !llvm.loop !2

._crit_edge37:                                    ; preds = %bb.c
  br label %._crit_edge36, !llvm.loop !2

._crit_edge36:                                    ; preds = %bb.b, %._crit_edge37, %bb.a
  %.1 = phi i64 [ %i.d, %bb.a ], [ %i.e, %._crit_edge37 ], [ %i.d, %bb.b ] ; 3 uses
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge36
  %i.k = add nsw i64 %.1, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1
  store i32 45, ptr %i.l, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge36
  %.2 = phi i64 [ %i.k, %bb.d ], [ %.1, %._crit_edge36 ] ; 7 uses
  %.not29 = icmp eq i64 %.2, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr [4 x i8], ptr %i.a, i64 %.2 ; 2 uses
  %min.iters.check = icmp ult i64 %.2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %.2, -8                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = xor i64 %index, -1
  %i.o = getelementptr [4 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -12
  %i.q = getelementptr i8, ptr %i.o, i64 -28
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !14
  %wide.load39 = load <4 x i32>, ptr %i.q, align 4, !tbaa !14
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40 = shufflevector <4 x i32> %wide.load39, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %reverse, ptr %i.r, align 4, !tbaa !14
  store <4 x i32> %reverse40, ptr %i.s, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.028.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.2
  store i32 0, ptr %i.u, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028 = phi i64 [ %i.z, %scalar.ph ], [ %.028.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = xor i64 %.028, -1
  %i.w = getelementptr [4 x i8], ptr %i.m, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.028
  store i32 %i.x, ptr %i.y, align 4, !tbaa !14
  %i.z = add nuw i64 %.028, 1                     ; 2 uses
  %exitcond30.not = icmp eq i64 %i.z, %.2
  br i1 %exitcond30.not, label %._crit_edge, label %scalar.ph, !llvm.loop !31
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z7fmtitoalPwm(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #10 {
.lr.ph.a:
  %i.a = alloca [50 x i32], align 16              ; 5 uses
  %i.b = alloca [30 x i32], align 16              ; 9 uses
  %i.c = tail call ptr @localeconv() #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11    ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  %narrow = select i1 %i.g, i8 32, i8 %i.f
  %spec.store.select = sext i8 %narrow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.h = icmp slt i64 %0, 0
  %.lobit.neg.i = ashr i64 %0, 63
  %i.i = add nsw i64 %.lobit.neg.i, 29            ; 4 uses
  %exitcond.not.i24 = icmp eq i64 %i.i, 0
  br i1 %exitcond.not.i24, label %._crit_edge29, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.a
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %exitcond.not.i = icmp eq i64 %i.j, %i.i
  br i1 %exitcond.not.i, label %._crit_edge29, label %bb.b, !llvm.loop !2

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.020.i26 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %.122.i25 = phi i64 [ %spec.select.i, %.lr.ph ], [ %i.l, %bb.a ] ; 3 uses
  %i.j = add nuw nsw i64 %.020.i26, 1             ; 3 uses
  %i.k = urem i64 %.122.i25, 10
  %i.l = udiv i64 %.122.i25, 10
  %i.m = trunc nuw nsw i64 %i.k to i32
  %i.n = or disjoint i32 %i.m, 48
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.020.i26
  store i32 %i.n, ptr %i.o, align 4, !tbaa !14
  %.not27.i = icmp samesign ult i64 %.122.i25, 10
  br i1 %.not27.i, label %._crit_edge28, label %bb.a, !llvm.loop !2

._crit_edge28:                                    ; preds = %bb.b
  br label %._crit_edge29, !llvm.loop !2

._crit_edge29:                                    ; preds = %bb.a, %._crit_edge28, %.lr.ph.a
  %.1.i = phi i64 [ %i.i, %.lr.ph.a ], [ %i.j, %._crit_edge28 ], [ %i.i, %bb.a ] ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge29
  %i.p = add nsw i64 %.1.i, 1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1.i
  store i32 45, ptr %i.q, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge29
  %.2.i = phi i64 [ %i.p, %bb.c ], [ %.1.i, %._crit_edge29 ] ; 7 uses
  %.not29.i = icmp eq i64 %.2.i, 0
  br i1 %.not29.i, label %_Z4itoalPwm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = getelementptr [4 x i8], ptr %i.a, i64 %.2.i ; 2 uses
  %min.iters.check = icmp ult i64 %.2.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.2.i, -8                      ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.1 ] ; 3 uses
  %3 = xor i64 %index, -1
  %4 = getelementptr [4 x i8], ptr %i.r, i64 %3   ; 2 uses
  %i.s = getelementptr i8, ptr %4, i64 -12
  %i.t = getelementptr i8, ptr %4, i64 -28
  %wide.load.1 = load <4 x i32>, ptr %i.s, align 4, !tbaa !14
  %wide.load31.1 = load <4 x i32>, ptr %i.t, align 4, !tbaa !14
  %reverse.1 = shufflevector <4 x i32> %wide.load.1, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse32.1 = shufflevector <4 x i32> %wide.load31.1, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %reverse.1, ptr %5, align 16, !tbaa !14
  store <4 x i32> %reverse32.1, ptr %i.u, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body.1, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.1
  %cmp.n = icmp eq i64 %.2.i, %n.vec
  br i1 %cmp.n, label %_Z4itoalPwm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.028.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028.i = phi i64 [ %i.aa, %scalar.ph ], [ %.028.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = xor i64 %.028.i, -1
  %i.x = getelementptr [4 x i8], ptr %i.r, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.028.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !14
  %i.aa = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.aa, %.2.i
  br i1 %exitcond30.not.i, label %_Z4itoalPwm.exit, label %scalar.ph, !llvm.loop !33

_Z4itoalPwm.exit:                                 ; preds = %scalar.ph, %middle.block, %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.2.i
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ac = load i32, ptr %i.b, align 16, !tbaa !14 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp ugt i64 %2, 1
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %_Z4itoalPwm.exit
  %i.ag = call i64 @wcslen(ptr noundef nonnull %i.b) #14
  %i.ah = urem i64 %i.ag, 3
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = xor i32 %i.ai, 3
  store i32 %i.ac, ptr %1, align 4, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14 ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  %i.an = icmp ugt i64 %2, 2
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %i.ap = phi i32 [ %i.bd, %bb.g ], [ 2, %bb.e ]
  %i.aq = phi i32 [ %i.bb, %bb.g ], [ %i.al, %bb.e ]
  %.015 = phi i32 [ %i.ax, %bb.g ], [ 1, %bb.e ]  ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv to i32
  %i.as = add i32 %i.aj, %i.ar
  %i.at = urem i32 %i.as, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.peel.next
  %i.av = zext i32 %.015 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  store i32 %spec.store.select, ptr %i.aw, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.peel.next
  %.1 = phi i32 [ %i.ap, %bb.f ], [ %.015, %.peel.next ] ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = add i32 %.1, 1                          ; 2 uses
  %i.ay = zext i32 %.1 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14 ; 2 uses
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = add i32 %.1, 2                          ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %2, %i.be
  %i.bg = and i1 %i.bc, %i.bf
  br i1 %i.bg, label %.peel.next, label %._crit_edge.loopexit.loopexit, !llvm.loop !34

._crit_edge.loopexit.loopexit:                    ; preds = %bb.g
  %i.bh = zext i32 %i.ax to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit.loopexit, %_Z4itoalPwm.exit
  %.0.lcssa = phi i64 [ 0, %_Z4itoalPwm.exit ], [ 1, %bb.e ], [ %i.bh, %._crit_edge.loopexit.loopexit ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa
  store i32 0, ptr %i.bi, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z7GetWidePKc(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @_ZZ7GetWidePKcE6StrNum, align 4, !tbaa !40
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = icmp ugt i32 %i.b, 3
  %spec.store.select = select i1 %i.c, i32 0, i32 %i.b ; 2 uses
  store i32 %spec.store.select, ptr @_ZZ7GetWidePKcE6StrNum, align 4
  %i.d = zext i32 %spec.store.select to i64
  %i.e = getelementptr inbounds nuw [8192 x i8], ptr @_ZZ7GetWidePKcE8StrTable, i64 %i.d ; 3 uses
  %i.f = tail call noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef 2048) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8188
  store i32 0, ptr %i.g, align 4, !tbaa !14
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_Z11GetCmdParamPKwPwm(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.031 = phi ptr [ %0, %bb.a ], [ %i.j, %bb.f ]  ; 4 uses
  %i.a = load i32, ptr %.031, align 4, !tbaa !14  ; 3 uses
  switch i32 %i.a, label %.lr.ph [
    i32 32, label %bb.f
    i32 9, label %bb.f
    i32 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.b
  %.not40.not = icmp eq ptr %1, null
  %i.b = add i64 %2, -1                           ; 2 uses
  br i1 %.not40.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %bb.e
  %i.c = phi i32 [ %i.i, %bb.e ], [ %i.a, %.lr.ph ] ; 2 uses
  %.049.us.us = phi i1 [ %.1.us.us, %bb.e ], [ false, %.lr.ph ] ; 2 uses
  %.13247.us.us = phi ptr [ %i.h, %bb.e ], [ %.031, %.lr.ph ] ; 6 uses
  br i1 %.049.us.us, label %.critedge2.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  switch i32 %i.c, label %bb.e [
    i32 32, label %.critedge
    i32 9, label %.critedge
    i32 34, label %bb.d
  ]

.critedge2.us.us:                                 ; preds = %.lr.ph.split.us.split.us
  %i.d = icmp eq i32 %i.c, 34
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge2.us.us, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.13247.us.us, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = icmp ne i32 %i.f, 34                     ; 2 uses
  %spec.select = select i1 %i.g, ptr %.13247.us.us, ptr %i.e
  %spec.select89 = xor i1 %.049.us.us, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge2.us.us
  %.233.us.us = phi ptr [ %.13247.us.us, %bb.c ], [ %spec.select, %bb.d ], [ %.13247.us.us, %.critedge2.us.us ]
  %.1.us.us = phi i1 [ false, %bb.c ], [ %spec.select89, %bb.d ], [ true, %.critedge2.us.us ]
  %i.h = getelementptr inbounds nuw i8, ptr %.233.us.us, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 2 uses
  %.not.us.us = icmp eq i32 %i.i, 0
  br i1 %.not.us.us, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !41

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 4
  br label %bb.b, !llvm.loop !42

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.n
  %i.k = phi i32 [ %i.x, %bb.n ], [ %i.a, %.lr.ph ] ; 3 uses
  %.049 = phi i1 [ %.1, %bb.n ], [ false, %.lr.ph ] ; 6 uses
  %.02848 = phi i64 [ %.2, %bb.n ], [ 0, %.lr.ph ] ; 11 uses
  %.13247 = phi ptr [ %i.w, %bb.n ], [ %.031, %.lr.ph ] ; 6 uses
  br i1 %.049, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split
  switch i32 %i.k, label %bb.l [
    i32 32, label %.critedge
    i32 9, label %.critedge
    i32 34, label %bb.h
  ]

.critedge2:                                       ; preds = %.lr.ph.split.split
  %i.l = icmp eq i32 %i.k, 34
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %.critedge2
  %i.m = getelementptr inbounds nuw i8, ptr %.13247, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = icmp eq i32 %i.n, 34
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %.02848, %i.b
  br i1 %i.p, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw i64 %.02848, 1
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02848
  store i32 34, ptr %i.r, align 4, !tbaa !14
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.s = xor i1 %.049, true
  br label %bb.n

bb.l:                                             ; preds = %bb.g, %.critedge2
  %i.t = icmp ult i64 %.02848, %i.b
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = add nuw i64 %.02848, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02848
  store i32 %i.k, ptr %i.v, align 4, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.k
  %.233 = phi ptr [ %.13247, %bb.l ], [ %.13247, %bb.k ], [ %.13247, %bb.m ], [ %i.m, %bb.i ], [ %i.m, %bb.j ]
  %.2 = phi i64 [ %.02848, %bb.l ], [ %.02848, %bb.k ], [ %i.u, %bb.m ], [ %.02848, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  %.1 = phi i1 [ %.049, %bb.l ], [ %i.s, %bb.k ], [ %.049, %bb.m ], [ %.049, %bb.i ], [ %.049, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %.233, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !41

.critedge:                                        ; preds = %bb.n, %bb.g, %bb.g, %bb.e, %bb.c, %bb.c
  %.132.lcssa = phi ptr [ %.13247.us.us, %bb.c ], [ %i.h, %bb.e ], [ %.13247.us.us, %bb.c ], [ %.13247, %bb.g ], [ %.13247, %bb.g ], [ %i.w, %bb.n ] ; 2 uses
  %.028.lcssa = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.c ], [ %.02848, %bb.g ], [ %.02848, %bb.g ], [ %.2, %bb.n ]
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.028.lcssa
  store i32 0, ptr %i.y, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.critedge, %bb.o
  %.030 = phi ptr [ %.132.lcssa, %.critedge ], [ %.132.lcssa, %bb.o ], [ null, %bb.b ]
  ret ptr %.030
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"wchar_t", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12, !15, !16}
!27 = distinct !{!27, !12, !15, !16}
!28 = distinct !{!28, !12, !16, !15}
!29 = !{!"branch_weights", i32 8, i32 24}
!30 = distinct !{!30, !12, !15, !16}
!31 = distinct !{!31, !12, !16, !15}
!32 = distinct !{!32, !12, !15, !16}
!33 = distinct !{!33, !12, !16, !15}
!34 = distinct !{!34, !12, !39}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!"p1 omnipotent char", !35, i64 0}
!37 = !{!"_ZTS5lconv", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !7, i64 80, !7, i64 81, !7, i64 82, !7, i64 83, !7, i64 84, !7, i64 85, !7, i64 86, !7, i64 87, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 93}
!38 = !{!37, !36, i64 8}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = !{!8, !8, i64 0}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
end_hunk_0
