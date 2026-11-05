Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/pkgitems?download=true
inline.NumInlined: 31
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_78L21ures_enumDependenciesEPKcPK12ResourceDatajS1_S1_iPFvPvS1_S1_ES5_PNS_7PackageEP10UErrorCode:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %5, 1
  %i.g = icmp ne ptr %3, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.8) #14
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.9) #14
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.l = call ptr @res_getStringNoTrace_78(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.a)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !12
  call fastcc void @_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode(ptr noundef %0, i32 noundef %2, ptr noundef %i.l, i32 noundef %i.m, i8 noundef signext 1, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %5, 2
  %i.o = icmp ne ptr %4, null
  %or.cond4 = and i1 %i.o, %i.n
  br i1 %or.cond4, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(13) @.str.10) #14
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.r = call ptr @res_getStringNoTrace_78(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !12
  call fastcc void @_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode(ptr noundef %0, i32 noundef %2, ptr noundef %i.r, i32 noundef %i.s, i8 noundef signext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.t = call ptr @res_getAlias_78(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.c)
  %i.u = load i32, ptr %i.c, align 4, !tbaa !12
  call fastcc void @_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode(ptr noundef %0, i32 noundef %2, ptr noundef %i.t, i32 noundef %i.u, i8 noundef signext 1, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread

bb.j:                                             ; preds = %bb.a
  %i.v = tail call i32 @res_countArrayItems_78(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph11, label %.thread

.lr.ph11:                                         ; preds = %bb.j
  %i.x = add nsw i32 %5, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph11, %.critedge
  %.08410 = phi i32 [ 0, %.lr.ph11 ], [ %i.ah, %.critedge ] ; 3 uses
  %.0859 = phi i8 [ 1, %.lr.ph11 ], [ %i.ab, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.y = call i32 @res_getTableItemByIndex_78(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.08410, ptr noundef nonnull %i.d) ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.aa = call fastcc noundef signext i8 @_ZN6icu_78L21ures_enumDependenciesEPKcPK12ResourceDatajS1_S1_iPFvPvS1_S1_ES5_PNS_7PackageEP10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef %i.y, ptr noundef %i.z, ptr noundef %3, i32 noundef %i.x, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.ab = and i8 %i.aa, %.0859                    ; 3 uses
  %i.ac = load i32, ptr %8, align 4, !tbaa !9
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.11, ptr noundef %0, i32 noundef %2, i32 noundef %.08410, ptr noundef %i.af, i32 noundef %i.y) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.ah = add nuw nsw i32 %.08410, 1              ; 2 uses
  %exitcond20.not = icmp eq i32 %i.ah, %i.v
  br i1 %exitcond20.not, label %.thread, label %bb.k, !llvm.loop !50

bb.m:                                             ; preds = %bb.a
  %i.ai = tail call i32 @res_countArrayItems_78(ptr noundef nonnull %1, i32 noundef %2) ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.m
  %i.ak = add nsw i32 %5, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.critedge91
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %.critedge91 ] ; 3 uses
  %i.al = tail call i32 @res_getArrayItem_78(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %.08) ; 2 uses
  %i.am = tail call fastcc noundef signext i8 @_ZN6icu_78L21ures_enumDependenciesEPKcPK12ResourceDatajS1_S1_iPFvPvS1_S1_ES5_PNS_7PackageEP10UErrorCode(ptr noundef %0, ptr noundef %1, i32 noundef %i.al, ptr noundef null, ptr noundef %3, i32 noundef %i.ak, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 0 uses
  %i.an = load i32, ptr %8, align 4, !tbaa !9
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %.critedge91, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef %2, i32 noundef %.08, i32 noundef %i.al) #11 ; 0 uses
  br label %.thread

.critedge91:                                      ; preds = %bb.n
  %i.ar = add nuw nsw i32 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.ai
  br i1 %exitcond.not, label %.thread, label %bb.n, !llvm.loop !51

.thread:                                          ; preds = %.critedge91, %.critedge, %bb.m, %bb.j, %bb.d, %bb.o, %bb.l, %bb.a, %bb.e, %bb.h, %bb.g, %bb.f, %bb.i
  %.2 = phi i8 [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.d ], [ %i.ab, %bb.l ], [ 1, %bb.m ], [ 1, %bb.o ], [ 1, %bb.j ], [ %i.ab, %.critedge ], [ 1, %.critedge91 ]
  ret i8 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @res_getPublicType_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @res_getStringNoTrace_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L10checkAliasEPKcjPKDsiaPFvPvS1_S1_ES4_P10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef signext range(i8 0, 2) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca [48 x i8], align 16               ; 6 uses
  %i.c = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %2, i32 noundef %3)
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.13, ptr noundef %0, i32 noundef %1) #11 ; 0 uses
  store i32 10, ptr %7, align 4, !tbaa !9
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !55
  %.not32 = icmp eq i16 %i.h, 47
  br i1 %.not32, label %.critedge.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !53

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.split.loop.exit
  %.0.lcssa = phi i32 [ %i.i, %.critedge.split.loop.exit ], [ %3, %bb.c ] ; 3 uses
  %i.j = tail call i32 @res_getPublicType_78(i32 noundef %1)
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.d, label %bb.e

.critedge.thread:                                 ; preds = %.preheader
  %i.l = tail call i32 @res_getPublicType_78(i32 noundef %1)
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %.thread, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.n = icmp eq i32 %.0.lcssa, 0
  br i1 %i.n, label %.thread, label %bb.g

bb.e:                                             ; preds = %.critedge.thread, %.critedge
  %.0.lcssa41 = phi i32 [ 0, %.critedge.thread ], [ %.0.lcssa, %.critedge ]
  %.not33 = icmp eq i32 %.0.lcssa41, %3
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %1) #11 ; 0 uses
  store i32 16, ptr %7, align 4, !tbaa !9
  br label %.thread

bb.g:                                             ; preds = %bb.d, %bb.e
  %.030 = phi i32 [ %3, %bb.e ], [ %.0.lcssa, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %8 = icmp samesign ugt i32 %.030, 47
  %9 = zext nneg i32 %.030 to i64                 ; 2 uses
  br i1 %8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.15, ptr noundef %0, i32 noundef %1, i64 noundef %9) #11 ; 0 uses
  store i32 15, ptr %7, align 4, !tbaa !9
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @u_UCharsToChars_78(ptr noundef %2, ptr noundef nonnull %i.b, i32 noundef %.030)
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %9
  store i8 0, ptr %i.s, align 1, !tbaa !15
  %.not34 = icmp eq i8 %4, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.t = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.0.i.i = select i1 %.not.i.i, ptr %0, ptr %i.u
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #14 ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = select i1 %.not34, i64 0, i64 4         ; 2 uses
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add i32 %i.aa, %i.ac
  %i.ae = add i32 %i.ad, %i.y                     ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 199
  br i1 %i.af, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread.i, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread.i: ; preds = %bb.i
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.7, ptr noundef nonnull %0, i64 noundef %i.ah) #11 ; 0 uses
  store i32 15, ptr %7, align 4, !tbaa !9
  br label %_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode.exit

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i: ; preds = %bb.i
  %i.aj = select i1 %.not34, ptr @.str.16, ptr @.str.4
  %sext.i.i = shl i64 %i.x, 32
  %i.ak = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %0, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ak ; 2 uses
  %sext = shl i64 %i.z, 32
  %i.am = ashr exact i64 %sext, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 16 %i.b, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %sext32.i.i = or disjoint i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aj, i64 %sext32.i.i, i1 false)
  %.pre.i = load i32, ptr %7, align 4, !tbaa !9
  %i.ao = icmp sgt i32 %.pre.i, 0
  br i1 %i.ao, label %_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i
  call void %5(ptr noundef %6, ptr noundef nonnull %0, ptr noundef nonnull %i.a), !inline_history !56
  br label %_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode.exit

_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode.exit: ; preds = %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread.i, %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.d, %bb.k, %bb.f, %bb.b
  ret void
}

declare ptr @res_getAlias_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @res_countArrayItems_78(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @res_getTableItemByIndex_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @res_getArrayItem_78(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L13checkIDSuffixEPKcS1_iS1_PFvPvS1_S1_ES2_P10UErrorCode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.0.i = select i1 %.not.i, ptr %0, ptr %i.c
  %i.d = ptrtoint ptr %.0.i to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #14
  %i.j = trunc i64 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.028.i = phi i32 [ %i.j, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #14 ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = add nsw i32 %.028.i, %i.g
  %i.n = add nsw i32 %i.m, %i.l                   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 199
  br i1 %i.o, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread, label %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread: ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = zext nneg i32 %i.n to i64
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.7, ptr noundef nonnull %0, i64 noundef %i.q) #11 ; 0 uses
  store i32 15, ptr %6, align 4, !tbaa !9
  br label %bb.e

_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit: ; preds = %bb.c
  %sext.i = shl i64 %i.f, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = sext i32 %.028.i to i64                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %1, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = shl i64 %i.k, 32
  %sext32.i = add i64 %i.w, 4294967296
  %i.x = ashr exact i64 %sext32.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %3, i64 %i.x, i1 false)
  %.pre = load i32, ptr %6, align 4, !tbaa !9
  %i.y = icmp sgt i32 %.pre, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit
  call void %4(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit.thread, %bb.d, %_ZN6icu_78L14makeTargetNameEPKcS1_iS1_PciP10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTS10UErrorCode", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{null}
!18 = distinct !{!18, !16}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = !{!"_ZTSN6icu_784ItemE", !11, i64 0, !11, i64 8, !5, i64 16, !4, i64 20, !4, i64 21}
!22 = !{!21, !11, i64 8}
!23 = !{!21, !5, i64 16}
!24 = !{!"short", !4, i64 0}
!25 = !{!"_ZTS9UDataInfo", !24, i64 0, !24, i64 2, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 12, !4, i64 16}
!26 = !{!25, !4, i64 4}
!27 = !{!25, !4, i64 5}
!28 = !{!21, !11, i64 0}
!29 = !{!"_ZTS12UDataSwapper", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!30 = !{!29, !10, i64 80}
!31 = !{!29, !10, i64 88}
!32 = !{!"p1 _ZTS11UDataMemory", !10, i64 0}
!33 = !{!"p1 int", !10, i64 0}
!34 = !{!"p1 short", !10, i64 0}
!35 = !{!"_ZTS12ResourceData", !32, i64 0, !33, i64 8, !34, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !34, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !4, i64 57, !4, i64 58, !4, i64 59}
!36 = !{!35, !4, i64 58}
!37 = !{!35, !33, i64 8}
end_hunk_0
