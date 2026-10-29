Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dayperiodrules?download=true
inline.NumInlined: 77
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6icu_7814DayPeriodRules22getEndHourForDayPeriodENS0_9DayPeriodER10UErrorCode:bb.a
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  %i.cj = icmp eq i32 %i.ci, %1
  br i1 %i.cj, label %.loopexit, label %.preheader31.13

.preheader31.13:                                  ; preds = %.preheader31.12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !35
  %i.cm = icmp eq i32 %i.cl, %1
  br i1 %i.cm, label %.loopexit, label %.preheader31.14

.preheader31.14:                                  ; preds = %.preheader31.13
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.cp = icmp eq i32 %i.co, %1
  br i1 %i.cp, label %.loopexit, label %.preheader31.15

.preheader31.15:                                  ; preds = %.preheader31.14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.cs = icmp eq i32 %i.cr, %1
  br i1 %i.cs, label %.loopexit, label %.preheader31.16

.preheader31.16:                                  ; preds = %.preheader31.15
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !35
  %i.cv = icmp eq i32 %i.cu, %1
  br i1 %i.cv, label %.loopexit, label %.preheader31.17

.preheader31.17:                                  ; preds = %.preheader31.16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !35
  %i.cy = icmp eq i32 %i.cx, %1
  br i1 %i.cy, label %.loopexit, label %.preheader31.18

.preheader31.18:                                  ; preds = %.preheader31.17
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !35
  %i.db = icmp eq i32 %i.da, %1
  br i1 %i.db, label %.loopexit, label %.preheader31.19

.preheader31.19:                                  ; preds = %.preheader31.18
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = icmp eq i32 %i.dd, %1
  br i1 %i.de, label %.loopexit, label %.preheader31.20

.preheader31.20:                                  ; preds = %.preheader31.19
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !35
  %i.dh = icmp eq i32 %i.dg, %1
  br i1 %i.dh, label %.loopexit, label %.preheader31.21

.preheader31.21:                                  ; preds = %.preheader31.20
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = icmp eq i32 %i.dj, %1
  br i1 %i.dk, label %.loopexit, label %.preheader31.22

.preheader31.22:                                  ; preds = %.preheader31.21
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !35
  %i.dn = icmp eq i32 %i.dm, %1                   ; 2 uses
  %brmerge = or i1 %i.dn, %i.e
  %.mux = select i1 %i.dn, i32 2, i32 1
  br i1 %brmerge, label %.loopexit, label %.thread

.thread:                                          ; preds = %.preheader31.22, %.preheader.21
  store i32 1, ptr %2, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader31.22, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14, %.preheader.15, %.preheader.16, %.preheader.17, %.preheader.18, %.preheader.19, %.preheader.20, %.preheader.21, %.preheader31.preheader, %.preheader31.1, %.preheader31.2, %.preheader31.3, %.preheader31.4, %.preheader31.5, %.preheader31.6, %.preheader31.7, %.preheader31.8, %.preheader31.9, %.preheader31.10, %.preheader31.11, %.preheader31.12, %.preheader31.13, %.preheader31.14, %.preheader31.15, %.preheader31.16, %.preheader31.17, %.preheader31.18, %.preheader31.19, %.preheader31.20, %.preheader31.21, %bb.b, %bb.a, %.thread, %bb.c
  %.2 = phi i32 [ 22, %.preheader.21 ], [ -1, %bb.a ], [ 12, %bb.c ], [ -1, %.thread ], [ %1, %bb.b ], [ 24, %.preheader31.preheader ], [ 23, %.preheader31.1 ], [ 22, %.preheader31.2 ], [ 21, %.preheader31.3 ], [ 20, %.preheader31.4 ], [ 19, %.preheader31.5 ], [ 18, %.preheader31.6 ], [ 17, %.preheader31.7 ], [ 16, %.preheader31.8 ], [ 15, %.preheader31.9 ], [ 14, %.preheader31.10 ], [ 13, %.preheader31.11 ], [ 12, %.preheader31.12 ], [ 11, %.preheader31.13 ], [ 10, %.preheader31.14 ], [ 9, %.preheader31.15 ], [ 8, %.preheader31.16 ], [ 7, %.preheader31.17 ], [ 6, %.preheader31.18 ], [ 5, %.preheader31.19 ], [ 4, %.preheader31.20 ], [ 3, %.preheader31.21 ], [ %.mux, %.preheader31.22 ], [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 11, %.preheader.10 ], [ 12, %.preheader.11 ], [ 13, %.preheader.12 ], [ 14, %.preheader.13 ], [ 15, %.preheader.14 ], [ 16, %.preheader.15 ], [ 17, %.preheader.16 ], [ 18, %.preheader.17 ], [ 19, %.preheader.18 ], [ 20, %.preheader.19 ], [ 21, %.preheader.20 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 12) i32 @_ZN6icu_7814DayPeriodRules22getDayPeriodFromStringEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.4) #17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.tail12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.5) #17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.tail12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.6) #17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.tail12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.7) #17
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.tail12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.8) #17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.tail12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.9) #17
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.tail12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.10) #17
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.tail12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.11) #17
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.tail12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.12) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.tail12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.13) #17
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.tail12, label %sub_0

sub_0:                                            ; preds = %bb.j
  %i.u = load i8, ptr %0, align 1
  switch i8 %i.u, label %.tail12 [
    i8 97, label %sub_1
    i8 112, label %sub_114
  ]

sub_1:                                            ; preds = %sub_0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %.not17 = icmp eq i8 %i.w, 109
  br i1 %.not17, label %.tail12.sink.split, label %.tail12

sub_114:                                          ; preds = %sub_0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %.not19 = icmp eq i8 %i.y, 109
  br i1 %.not19, label %.tail12.sink.split, label %.tail12

.tail12.sink.split:                               ; preds = %sub_114, %sub_1
  %.sink23 = phi i32 [ 10, %sub_1 ], [ 11, %sub_114 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 0
  %spec.select = select i1 %i.ab, i32 %.sink23, i32 -1
  br label %.tail12

.tail12:                                          ; preds = %.tail12.sink.split, %sub_0, %sub_1, %sub_114, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %sub_1 ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ -1, %sub_0 ], [ -1, %sub_114 ], [ %spec.select, %.tail12.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN6icu_7814DayPeriodRules3addEiiNS0_9DayPeriodE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(100) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.not7 = icmp eq i32 %1, %2
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.08 = phi i32 [ %1, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.b = icmp eq i32 %.08, 24
  %spec.store.select = select i1 %i.b, i32 0, i32 %.08 ; 2 uses
  %i.c = sext i32 %spec.store.select to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  store i32 %3, ptr %i.d, align 4, !tbaa !35
  %i.e = add nsw i32 %spec.store.select, 1        ; 2 uses
  %.not = icmp eq i32 %i.e, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7814DayPeriodRules14allHoursAreSetEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(100) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <16 x i32>, ptr %i.a, align 4
  %.fr = freeze <16 x i32> %i.b
  %i.c = icmp eq <16 x i32> %.fr, splat (i32 -1)  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %i.d, align 4
  %.fr77 = freeze <4 x i32> %i.e
  %i.f = icmp eq <4 x i32> %.fr77, splat (i32 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = load i32, ptr %i.g, align 4
  %1 = icmp eq i32 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i32, ptr %i.i, align 4
  %.fr78 = freeze i32 %i.j
  %2 = icmp eq i32 %.fr78, -1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp ne i32 %i.l, -1
  %i.n = shufflevector <16 x i1> %i.c, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.n, %i.f
  %i.o = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <16 x i1> %i.o, <16 x i1> %i.c, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.q = bitcast <16 x i1> %i.p to i16
  %3 = icmp ne i16 %i.q, 0
  %op.rdx = select i1 %3, i1 true, i1 %1
  %4 = freeze i1 %op.rdx
  %5 = or i1 %4, %2
  %not. = xor i1 %5, true
  %op.rdx76 = select i1 %not., i1 %i.m, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp ne i32 %i.s, -1
  %narrow = select i1 %op.rdx76, i1 %i.t, i1 false
  %i.u = zext i1 %narrow to i8
  ret i8 %i.u
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7822DayPeriodRulesDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %"class.icu_78::ResourceTable", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::ResourceTable", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %10 = alloca %"class.icu_78::ResourceTable", align 8 ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.c = load ptr, ptr %2, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.f = load i32, ptr %4, align 4, !tbaa !20
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.preheader45, label %.loopexit

.preheader45:                                     ; preds = %bb.a
  %i.h = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not3950 = icmp eq i8 %i.h, 0
  br i1 %.not3950, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.preheader45
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph52, %bb.t
  %.03251 = phi i32 [ 0, %.lr.ph52 ], [ %i.cm, %bb.t ]
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(8) @.str.17) #17
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.p = load ptr, ptr %2, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.s = load i32, ptr %4, align 4, !tbaa !20
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.c
  %i.u = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not4248 = icmp eq i8 %i.u, 0
  br i1 %.not4248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.03549 = phi i32 [ %i.bg, %bb.k ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !55
  store i32 0, ptr %i.a, align 4, !tbaa !26, !noalias !55
  %i.v = load ptr, ptr %2, align 8, !tbaa !25, !noalias !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !55
  %i.y = call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4), !noalias !55, !inline_history !1
  store ptr %i.y, ptr %6, align 8, !tbaa !43, !noalias !55
  %i.z = load i32, ptr %i.a, align 4, !tbaa !26, !noalias !55
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef %i.z)
          to label %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.u, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %6, align 8, !tbaa !43, !noalias !55
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ab) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !55
  br label %common.resume

_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit: ; preds = %.lr.ph
  %i.ac = load ptr, ptr %6, align 8, !tbaa !43, !noalias !55
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ac) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.i, ptr %5, align 8, !tbaa !33
  store i32 40, ptr %i.j, align 8, !tbaa !56
  store i8 0, ptr %i.k, align 4, !tbaa !32
  store i32 0, ptr %i.l, align 8, !tbaa !31
  store i8 0, ptr %i.i, align 1, !tbaa !27
  %i.ad = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit
  %i.ae = load ptr, ptr %5, align 8, !tbaa !33    ; 6 uses
  %i.af = load i32, ptr %4, align 4, !tbaa !20
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %sub_0.i.i, label %_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i

sub_0.i.i:                                        ; preds = %bb.e
  %i.ah = load i8, ptr %i.ae, align 1
  %.not.i.i = icmp eq i8 %i.ah, 115
  br i1 %.not.i.i, label %sub_1.i.i, label %.sink.split.i.i

sub_1.i.i:                                        ; preds = %sub_0.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not33.i.i = icmp eq i8 %i.aj, 101
  br i1 %.not33.i.i, label %.tail.i.i, label %.sink.split.i.i

.tail.i.i:                                        ; preds = %sub_1.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 116
  br i1 %i.am, label %.preheader.i.i, label %.sink.split.i.i

.preheader.i.i:                                   ; preds = %.tail.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27  ; 2 uses
  %.not2630.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not2630.i.i, label %.sink.split.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 3, %.preheader.i.i ]
  %i.ap = phi i8 [ %i.aw, %bb.f ], [ %i.ao, %.preheader.i.i ] ; 2 uses
  %.01832.i.i = phi i32 [ %i.au, %bb.f ], [ 0, %.preheader.i.i ]
  %i.aq = add i8 %i.ap, -48
  %or.cond.i.i = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.i, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ar = zext nneg i8 %i.ap to i32
  %i.as = mul nsw i32 %.01832.i.i, 10
  %i.at = add nsw i32 %i.ar, -48
  %i.au = add i32 %i.at, %i.as                    ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27  ; 2 uses
  %.not26.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not26.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.ax = icmp eq i32 %i.au, 0
  br i1 %i.ax, label %.sink.split.i.i, label %_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %.preheader.i.i, %.tail.i.i, %sub_1.i.i, %sub_0.i.i
  store i32 3, ptr %4, align 4, !tbaa !20
  br label %_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i

_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i.i, %bb.e
  %.3.i.i = phi i32 [ -1, %bb.e ], [ %i.au, %._crit_edge.i.i ], [ -1, %.sink.split.i.i ]
  %i.ay = load i8, ptr %i.k, align 4, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i
  invoke void @uprv_free_78(ptr noundef %i.ae)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #16
  unreachable

bb.i:                                             ; preds = %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.j:                                             ; preds = %bb.g, %_ZN6icu_7822DayPeriodRulesDataSink11parseSetNumEPKcR10UErrorCode.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.bc = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_14dataE, align 8, !tbaa !13
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.bf = invoke i32 @uhash_puti_78(ptr noundef %i.bd, ptr noundef %i.be, i32 noundef %.3.i.i, ptr noundef nonnull %4)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.bg = add nuw nsw i32 %.03549, 1              ; 2 uses
  %i.bh = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not42 = icmp eq i8 %i.bh, 0
end_hunk_0
