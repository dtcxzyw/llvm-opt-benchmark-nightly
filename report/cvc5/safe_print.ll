Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/safe_print?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
begin_hunk_0
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0x\00", align 1

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05
  %i.h = tail call i64 @write(i32 noundef %0, ptr noundef nonnull %i.g, i64 noundef 1)
  %.not = icmp eq i64 %i.h, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @abort() #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIlEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str, i64 noundef 1)
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #6
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, 0
  br i1 %i.e, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.1, i64 noundef 1)
  %.not.i18 = icmp eq i64 %i.f, 1
  br i1 %.not.i18, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit19: ; preds = %bb.e
  %i.g = sub nsw i64 0, %i.b
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit19
  %.120.ph = phi i64 [ %i.g, %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit19 ], [ %i.b, %bb.d ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.g
  %.021 = phi i64 [ %i.m, %bb.g ], [ 19, %.preheader ] ; 5 uses
  %.120 = phi i64 [ %i.l, %bb.g ], [ %.120.ph, %.preheader ] ; 3 uses
  %i.h = urem i64 %.120, 10
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %.021
  store i8 %i.j, ptr %i.k, align 1, !tbaa !14
  %i.l = udiv i64 %.120, 10
  %i.m = add nsw i64 %.021, -1
  %i.n = icmp sgt i64 %.120, 9
  %i.o = icmp ne i64 %.021, 0
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.h, !llvm.loop !24

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %.021
  %i.r = sub i64 20, %.021                        ; 2 uses
  %i.s = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.q, i64 noundef %i.r)
  %.not = icmp eq i64 %i.s, %i.r
  br i1 %.not, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit: ; preds = %bb.b, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIiEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %1, align 4, !tbaa !15
  %i.c = sext i32 %i.b to i64
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  call void @_ZN4cvc58internal10safe_printIlEEviRKT_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printImEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str, i64 noundef 1)
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #6
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.016 = phi i64 [ %i.j, %.preheader ], [ 19, %bb.a ] ; 5 uses
  %.01315 = phi i64 [ %i.i, %.preheader ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = urem i64 %.01315, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %.016
  store i8 %i.g, ptr %i.h, align 1, !tbaa !14
  %i.i = udiv i64 %.01315, 10
  %i.j = add nsw i64 %.016, -1
  %i.k = icmp ugt i64 %.01315, 9
  %i.l = icmp ne i64 %.016, 0
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.preheader, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %.016
  %i.o = sub i64 20, %.016                        ; 2 uses
  %i.p = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.n, i64 noundef %i.o)
  %.not = icmp eq i64 %i.p, %i.o
  br i1 %.not, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit: ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIjEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !15     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str, i64 noundef 1)
  %.not.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i, label %_ZN4cvc58internal10safe_printImEEviRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #6
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.016.i = phi i64 [ %i.k, %.preheader.i ], [ 19, %.preheader.i.preheader ] ; 4 uses
  %.01315.i = phi i64 [ %i.j, %.preheader.i ], [ %i.d, %.preheader.i.preheader ] ; 3 uses
  %i.f = urem i64 %.01315.i, 10
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %.016.i
  store i8 %i.h, ptr %i.i, align 1, !tbaa !14
  %i.j = udiv i64 %.01315.i, 10
  %i.k = add nsw i64 %.016.i, -1
  %i.l = icmp samesign ugt i64 %.01315.i, 9
  br i1 %i.l, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.preheader.i
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %.016.i
  %i.n = sub i64 20, %.016.i                      ; 2 uses
  %i.o = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.n)
  %.not.i = icmp eq i64 %i.o, %i.n
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printImEEviRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printImEEviRKT_.exit:     ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIdEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = load double, ptr %1, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = fptosi double %i.c to i64                ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !13
  call void @_ZN4cvc58internal10safe_printIlEEviRKT_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.e = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %.critedge.peel, label %bb.b

.critedge.peel:                                   ; preds = %bb.a
  %i.f = sitofp i64 %i.d to double
  %i.g = fsub double %i.c, %i.f                   ; 3 uses
  %i.h = fcmp olt double %i.g, 0.000000e+00
  %i.i = fneg double %i.g
  %.0 = select i1 %i.h, double %i.i, double %i.g
  %i.j = fmul double %.0, 1.000000e+01            ; 2 uses
  %i.k = fptosi double %i.j to i8                 ; 2 uses
  %i.l = add i8 %i.k, 48
  store i8 %i.l, ptr %i.a, align 16, !tbaa !14
  %i.m = sitofp i8 %i.k to double
  %i.n = fsub double %i.j, %i.m                   ; 2 uses
  %i.o = fcmp ogt double %i.n, 0.000000e+00
  br i1 %i.o, label %.critedge, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #6
  unreachable

.critedge:                                        ; preds = %.critedge.peel, %.critedge
  %.124 = phi double [ %i.u, %.critedge ], [ %i.n, %.critedge.peel ]
  %.01923 = phi i64 [ %i.v, %.critedge ], [ 1, %.critedge.peel ] ; 3 uses
  %i.p = fmul nnan double %.124, 1.000000e+01     ; 2 uses
  %i.q = fptosi double %i.p to i8                 ; 2 uses
  %i.r = add nuw i8 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01923
  store i8 %i.r, ptr %i.s, align 1, !tbaa !14
  %i.t = sitofp i8 %i.q to double
  %i.u = fsub double %i.p, %i.t                   ; 2 uses
  %i.v = add nuw nsw i64 %.01923, 1               ; 2 uses
  %i.w = fcmp ogt double %i.u, 0.000000e+00
  %i.x = icmp samesign ult i64 %.01923, 19
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.critedge, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %.critedge, %.critedge.peel
  %.019.lcssa = phi i64 [ 1, %.critedge.peel ], [ %i.v, %.critedge ] ; 2 uses
  %i.z = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.019.lcssa)
  %.not = icmp eq i64 %i.z, %.019.lcssa
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @abort() #6
  unreachable

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIfEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load float, ptr %1, align 4, !tbaa !28
  %i.c = fpext float %i.b to double
  store double %i.c, ptr %i.a, align 8, !tbaa !17
  call void @_ZN4cvc58internal10safe_printIdEEviRKT_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIbEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !30, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.3, i64 noundef 4)
  %.not.i = icmp eq i64 %i.c, 4
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printILm5EEEviRAT__Kc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #6
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.4, i64 noundef 5)
  %.not.i2 = icmp eq i64 %i.d, 5
  br i1 %.not.i2, label %_ZN4cvc58internal10safe_printILm5EEEviRAT__Kc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm5EEEviRAT__Kc.exit: ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printIPvEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = ptrtoint ptr %i.a to i64
  tail call void @_ZN4cvc58internal14safe_print_hexEim(i32 noundef %0, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define hidden void @_ZN4cvc58internal14safe_print_hexEim(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.5, i64 noundef 2)
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit: ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit
  %i.d = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str, i64 noundef 1)
  %.not.i21 = icmp eq i64 %i.d, 1
  br i1 %.not.i21, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #6
  unreachable

.preheader:                                       ; preds = %_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit, %.preheader
  %.023 = phi i64 [ %i.m, %.preheader ], [ 19, %_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit ] ; 4 uses
  %.01822 = phi i64 [ %i.l, %.preheader ], [ %1, %_ZN4cvc58internal10safe_printILm3EEEviRAT__Kc.exit ] ; 2 uses
  %i.e = trunc i64 %.01822 to i32
  %i.f = and i32 %i.e, 15                         ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 10
  %i.h = trunc nuw nsw i32 %i.f to i8             ; 2 uses
  %i.i = or disjoint i8 %i.h, 48
  %i.j = add nuw nsw i8 %i.h, 87
  %.sink = select i1 %i.g, i8 %i.i, i8 %i.j
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %.023
  store i8 %.sink, ptr %i.k, align 1, !tbaa !14
  %i.l = lshr i64 %.01822, 4                      ; 2 uses
  %i.m = add nsw i64 %.023, -1
  %.not26 = icmp eq i64 %i.l, 0
  br i1 %.not26, label %bb.e, label %.preheader, !llvm.loop !34

bb.e:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %.023
  %i.o = sub i64 20, %.023                        ; 2 uses
  %i.p = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.n, i64 noundef %i.o)
  %.not = icmp eq i64 %i.p, %i.o
  br i1 %.not, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN4cvc58internal10safe_printI8timespecEEviRKT_(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = alloca [20 x i8], align 16               ; 4 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !36     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str, i64 noundef 1)
  %.not.i.i = icmp eq i64 %i.e, 1
  br i1 %.not.i.i, label %_ZN4cvc58internal10safe_printImEEviRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #6
  unreachable

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.016.i = phi i64 [ %i.k, %.preheader.i ], [ 19, %bb.a ] ; 5 uses
  %.01315.i = phi i64 [ %i.j, %.preheader.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = urem i64 %.01315.i, 10
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %.016.i
  store i8 %i.h, ptr %i.i, align 1, !tbaa !14
  %i.j = udiv i64 %.01315.i, 10
  %i.k = add nsw i64 %.016.i, -1
  %i.l = icmp ugt i64 %.01315.i, 9
  %i.m = icmp ne i64 %.016.i, 0
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 %.016.i
  %i.p = sub i64 20, %.016.i                      ; 2 uses
  %i.q = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.o, i64 noundef %i.p)
  %.not.i = icmp eq i64 %i.q, %i.p
  br i1 %.not.i, label %_ZN4cvc58internal10safe_printImEEviRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printImEEviRKT_.exit:     ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.r = tail call i64 @write(i32 noundef %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %.not.i4 = icmp eq i64 %i.r, 1
  br i1 %.not.i4, label %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal10safe_printImEEviRKT_.exit
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit: ; preds = %_ZN4cvc58internal10safe_printImEEviRKT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, i8 48, i64 range(i64 0, 21) 9, i1 false), !tbaa !14
  %.not24.i = icmp eq i64 %i.t, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit, %.lr.ph22.i
  %.0.in21.i = phi i64 [ %.0.i, %.lr.ph22.i ], [ 9, %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit ] ; 2 uses
  %.01720.i = phi i64 [ %i.y, %.lr.ph22.i ], [ %i.t, %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit ] ; 3 uses
  %.0.i = add nsw i64 %.0.in21.i, -1              ; 2 uses
  %i.u = urem i64 %.01720.i, 10
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !14
  %i.y = udiv i64 %.01720.i, 10
  %i.z = icmp ugt i64 %.01720.i, 9
  %i.aa = icmp samesign ugt i64 %.0.in21.i, 1
  %i.ab = and i1 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph22.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph22.i, %_ZN4cvc58internal10safe_printILm2EEEviRAT__Kc.exit
  %i.ac = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 9)
  %.not.i6 = icmp eq i64 %i.ac, 9
  br i1 %.not.i6, label %_ZN4cvc58internal24safe_print_right_alignedEiml.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @abort() #6
  unreachable

_ZN4cvc58internal24safe_print_right_alignedEiml.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define hidden void @_ZN4cvc58internal24safe_print_right_alignedEiml(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i64 @llvm.smin.i64(i64 %2, i64 20) ; 4 uses
  %i.c = icmp sgt i64 %2, 0
  br i1 %i.c, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 48, i64 range(i64 0, 21) %i.b, i1 false), !tbaa !14
  %.not24 = icmp eq i64 %1, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader, %.lr.ph22
  %.0.in21 = phi i64 [ %.0, %.lr.ph22 ], [ %i.b, %.preheader ] ; 2 uses
  %.01720 = phi i64 [ %i.h, %.lr.ph22 ], [ %1, %.preheader ] ; 3 uses
  %.0 = add nsw i64 %.0.in21, -1                  ; 2 uses
  %i.d = urem i64 %.01720, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0
  store i8 %i.f, ptr %i.g, align 1, !tbaa !14
  %i.h = udiv i64 %.01720, 10
  %i.i = icmp ugt i64 %.01720, 9
  %i.j = icmp sgt i64 %.0.in21, 1
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph22, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph22, %bb.a, %.preheader
  %i.l = call i64 @write(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i64 %i.l, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @abort() #6
  unreachable

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!11, !11, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !12}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !11, i64 8, !6, i64 16}
!22 = !{!21, !11, i64 8}
!23 = !{!21, !19, i64 0}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
