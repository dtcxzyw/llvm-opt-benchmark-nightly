inline.NumInlined: 173
inline.NumDeleted: 95
begin_hunk_0_@_ZN6Assimp13DefaultLogger3getEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp13DefaultLogger4killEv() local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN6Assimp13DefaultLogger9m_pLoggerE, align 8 ; 4 uses
  %i.b = icmp eq ptr %i.a, @_ZN6Assimp13DefaultLogger13s_pNullLoggerE
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr @_ZN6Assimp13DefaultLogger13s_pNullLoggerE, ptr @_ZN6Assimp13DefaultLogger9m_pLoggerE, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger7OnDebugEPKc(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1040 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1040, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %1) #20 ; 0 uses
  call void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6Assimp13DefaultLogger11GetThreadIDEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(2104) %0) local_unnamed_addr #10 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = icmp eq i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.g = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i64 noundef %i.a) #22
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.h, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.a
  store i64 %i.a, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 3 uses
  %i.l = add i64 %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %1, i64 %i.l, i1 false)
  %i.m = load i64, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr = getelementptr inbounds i8, ptr %i.n, i64 %strlen
  store i16 10, ptr %endptr, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.o, align 8
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not1314 = icmp eq ptr %i.s, %i.u
  br i1 %.not1314, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.v = phi ptr [ %i.ae, %bb.g ], [ %i.u, %bb.e ]
  %.sroa.09.015 = phi ptr [ %i.af, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.015, align 8     ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, %2
  %.not7 = icmp eq i32 %i.y, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.k)
  %.pre = load ptr, ptr %i.t, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ae = phi ptr [ %i.v, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.af, %i.ae
  br i1 %.not13, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger14OnVerboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1040 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1040, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %1) #20 ; 0 uses
  call void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger6OnInfoEPKc(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1040 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1040, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef %1) #20 ; 0 uses
  call void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef nonnull %i.a, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger6OnWarnEPKc(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1040 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1040, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %1) #20 ; 0 uses
  call void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef nonnull %i.a, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13DefaultLogger7OnErrorEPKc(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1040 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1040, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %1) #20 ; 0 uses
  call void @_ZN6Assimp13DefaultLogger14WriteToStreamsEPKcNS_6Logger13ErrorSeverityE(ptr noundef nonnull align 8 dereferenceable(2104) %0, ptr noundef nonnull %i.a, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp13DefaultLogger12attachStreamEPNS_9LogStreamEj(ptr noundef nonnull align 8 captures(none) dereferenceable(2104) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.b, i32 15, i32 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.d, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.011.019 = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.011.019, align 8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %i.h, align 8
  %i.m = or i32 %i.l, %spec.store.select
  store i32 %i.m, ptr %i.h, align 8
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store i32 %spec.store.select, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.o, align 8
  %3 = load ptr, ptr %i.e, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %3, %i.q
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store ptr %i.n, ptr %3, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.s, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %._crit_edge
  %4 = load ptr, ptr %i.c, align 8                ; 4 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #23 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store ptr %i.n, ptr %i.ae, align 8
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %4, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %5 = load ptr, ptr %i.p, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %7) #21
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ad, ptr %i.c, align 8
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e, %bb.d, %bb.a
  ret i1 %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6Assimp13DefaultLogger12detachStreamEPNS_9LogStreamEj(ptr noundef nonnull align 8 captures(none) dereferenceable(2104) %0, ptr noundef readnone captures(address) %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.d, %i.f
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.sroa.011.026 = phi ptr [ %i.ap, %bb.l ], [ %i.d, %bb.b ] ; 5 uses
  %i.g = load ptr, ptr %.sroa.011.026, align 8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.k = xor i32 %2, -1
  %i.l = select i1 %i.b, i32 -16, i32 %i.k
  %i.m = load i32, ptr %i.g, align 8
  %i.n = and i32 %i.m, %i.l
  store i32 %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr %.sroa.011.026, align 8    ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.r, align 8
  %i.s = load ptr, ptr %.sroa.011.026, align 8    ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN6Assimp13LogStreamInfoD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #20, !inline_history !11
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZN6Assimp13LogStreamInfoD2Ev.exit, %bb.d
  %i.aa = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.011.026 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 8
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i64 %i.aj, 8
  br i1 %i.al, label %bb.k, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.af, align 8
  store ptr %i.am, ptr %i.ae, align 8
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %i.an = load ptr, ptr %i.e, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  store ptr %i.ao, ptr %i.e, align 8
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.c, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ false, %bb.b ], [ false, %bb.l ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6Assimp13DefaultLoggerC2ENS_6Logger11LogSeverityE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(2104) initializes((0, 12), (16, 42), (2096, 2104)) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6Assimp13DefaultLoggerE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store i64 0, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp13DefaultLoggerD2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2104) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.b, %i.d
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre6 = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre6, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6Assimp13LogStreamInfoESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.k = phi ptr [ %i.t, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.01.05 = phi ptr [ %i.u, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.01.05, align 8      ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6Assimp13LogStreamInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #20, !inline_history !11
  br label %_ZN6Assimp13LogStreamInfoD2Ev.exit

_ZN6Assimp13LogStreamInfoD2Ev.exit:               ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #21
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN6Assimp13LogStreamInfoD2Ev.exit
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %_ZN6Assimp13LogStreamInfoD2Ev.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !14
}

end_hunk_0
