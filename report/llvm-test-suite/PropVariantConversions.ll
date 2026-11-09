Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PropVariantConversions?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0
%class.CStringBase.0 = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%04d-%02d-%02d\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [11 x i8] c" %02d:%02d\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [2 x i32] [i32 43, i32 0], align 4, !guid !11
@.str.4 = private unnamed_addr constant [2 x i32] [i32 45, i32 0], align 4, !guid !12
@_ZTIi = external constant ptr

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 !guid !20 {
bb.a:
  %4 = alloca %struct._FILETIME, align 4          ; 5 uses
  %5 = alloca %struct.LARGE_INTEGER, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = call i32 @LocalFileTimeToFileTime(ptr noundef nonnull %0, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = load i32, ptr %4, align 4, !tbaa !23
  %i.i = zext i32 %i.h to i64
  %i.j = or disjoint i64 %i.g, %i.i
  store i64 %i.j, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.k = call noundef zeroext i8 @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj(ptr noundef nonnull %5, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.l = load i32, ptr %i.a, align 4, !tbaa !7
  %i.m = zext i32 %i.l to i64
  store i64 %i.m, ptr %i.b, align 8, !tbaa !28
  %i.n = call ptr @localtime(ptr noundef nonnull %i.b) #13 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = add nsw i32 %i.p, 1900
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = add nsw i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %i.w = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.v) #13 ; 0 uses
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.aa, i32 noundef %i.ac) #13 ; 0 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !35
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ag) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @LocalFileTimeToFileTime(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_Z25RtlTimeToSecondsSince1970PK13LARGE_INTEGERPj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23ConvertFileTimeToStringRK9_FILETIMEbb(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !37 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull %i.a, i1 noundef zeroext %2, i1 noundef zeroext %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.d = trunc i64 %strlen.i.i to i32             ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = sext i32 %i.e to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #15 ; 3 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !39
  store i8 0, ptr %i.i, align 1, !tbaa !15
  store i32 %i.e, ptr %i.g, align 4, !tbaa !40
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.l, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.i, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.k, ptr %.04.i.i, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !36

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.d, ptr %i.c, align 8, !tbaa !41
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %_Z16GetUnicodeStringRK11CStringBaseIcE.exit unwind label %bb.c

_Z16GetUnicodeStringRK11CStringBaseIcE.exit:      ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.m = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.m) #16
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.c:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN11CStringBaseIcED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.p) #16
  br label %_ZN11CStringBaseIcED2Ev.exit4

_ZN11CStringBaseIcED2Ev.exit4:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %i.o
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_Z26ConvertPropVariantToStringRK14tagPROPVARIANT(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 !guid !57 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %i.c = alloca [32 x i32], align 16              ; 5 uses
  %i.d = alloca [32 x i32], align 16              ; 5 uses
  %i.e = alloca [32 x i32], align 16              ; 5 uses
  %i.f = alloca [32 x i32], align 16              ; 5 uses
  %i.g = alloca [32 x i32], align 16              ; 5 uses
  %i.h = load i16, ptr %1, align 8, !tbaa !19
  switch i16 %i.h, label %bb.e [
    i16 0, label %_ZN11CStringBaseIwEC2Ev.exit
    i16 8, label %bb.b
    i16 17, label %._crit_edge.i.i.i
    i16 18, label %._crit_edge.i.i.i22
    i16 19, label %._crit_edge.i.i.i29
    i16 21, label %._crit_edge.i.i.i36
    i16 64, label %bb.c
    i16 2, label %._crit_edge.i.i.i43
    i16 3, label %._crit_edge.i.i.i49
    i16 20, label %._crit_edge.i.i.i56
    i16 11, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64
  ]

_ZN11CStringBaseIwEC2Ev.exit:                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.j, ptr %0, align 8, !tbaa !60
  store i32 0, ptr %i.j, align 4, !tbaa !62
  store i32 4, ptr %i.k, align 4, !tbaa !63
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.m)
  %i.o = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.p = add nsw i32 %i.o, 1                      ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = zext nneg i32 %i.p to i64
  %i.t = icmp slt i32 %i.o, -1
  %i.u = shl nuw nsw i64 %i.s, 2
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #15 ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !60
  store i32 0, ptr %i.w, align 4, !tbaa !62
  store i32 %i.p, ptr %i.r, align 4, !tbaa !63
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.b, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.z, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.b ] ; 2 uses
  %.0.i.i = phi ptr [ %i.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.y = load i32, ptr %.0.i.i, align 4, !tbaa !62 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.y, ptr %.04.i.i, align 4, !tbaa !62
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !42

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.o, ptr %i.n, align 8, !tbaa !64
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !15
  %i.ac = zext i8 %i.ab to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13, !noalias !65
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.ac, ptr noundef nonnull %i.g), !noalias !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !65
  %wcslen.i.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.g), !noalias !65
  %i.ad = trunc i64 %wcslen.i.i.i to i32          ; 3 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = icmp slt i32 %i.ad, -1
  %i.aj = shl nuw nsw i64 %i.ah, 2
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #15, !noalias !65 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !60, !alias.scope !65
  store i32 0, ptr %i.al, align 4, !tbaa !62, !noalias !65
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !63, !alias.scope !65
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %._crit_edge.i.i.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ao, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.al, %._crit_edge.i.i.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.am, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.g, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.an = load i32, ptr %.0.i.i.i, align 4, !tbaa !62, !noalias !65 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.an, ptr %.04.i.i.i, align 4, !tbaa !62, !noalias !65
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %_ZL21ConvertUInt64ToStringy.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, !llvm.loop !42

_ZL21ConvertUInt64ToStringy.exit:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ad, ptr %i.ap, align 8, !tbaa !64, !alias.scope !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13, !noalias !65
  br label %bb.f

._crit_edge.i.i.i22:                              ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !15
  %i.as = zext i16 %i.ar to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13, !noalias !66
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.as, ptr noundef nonnull %i.f), !noalias !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !66
  %wcslen.i.i.i21 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.f), !noalias !66
  %i.at = trunc i64 %wcslen.i.i.i21 to i32        ; 3 uses
  %i.au = add nsw i32 %i.at, 1                    ; 3 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = icmp slt i32 %i.at, -1
  %i.az = shl nuw nsw i64 %i.ax, 2
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #15, !noalias !66 ; 3 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !60, !alias.scope !66
  store i32 0, ptr %i.bb, align 4, !tbaa !62, !noalias !66
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !63, !alias.scope !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23:    ; preds = %._crit_edge.i.i.i22, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23
  %.04.i.i.i24 = phi ptr [ %i.be, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23 ], [ %i.bb, %._crit_edge.i.i.i22 ] ; 2 uses
  %.0.i.i.i25 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23 ], [ %i.f, %._crit_edge.i.i.i22 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i25, i64 4
  %i.bd = load i32, ptr %.0.i.i.i25, align 4, !tbaa !62, !noalias !66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04.i.i.i24, i64 4
  store i32 %i.bd, ptr %.04.i.i.i24, align 4, !tbaa !62, !noalias !66
  %.not.i.i.i26 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i26, label %_ZL21ConvertUInt64ToStringy.exit27, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23, !llvm.loop !42

_ZL21ConvertUInt64ToStringy.exit27:               ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.at, ptr %i.bf, align 8, !tbaa !64, !alias.scope !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13, !noalias !66
  br label %bb.f

._crit_edge.i.i.i29:                              ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !15
  %i.bi = zext i32 %i.bh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13, !noalias !67
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.bi, ptr noundef nonnull %i.e), !noalias !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !67
  %wcslen.i.i.i28 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.e), !noalias !67
  %i.bj = trunc i64 %wcslen.i.i.i28 to i32        ; 3 uses
  %i.bk = add nsw i32 %i.bj, 1                    ; 3 uses
  %i.bl = icmp ne i32 %i.bk, 0
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = icmp slt i32 %i.bj, -1
  %i.bp = shl nuw nsw i64 %i.bn, 2
  %i.bq = select i1 %i.bo, i64 -1, i64 %i.bp
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #15, !noalias !67 ; 3 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !60, !alias.scope !67
  store i32 0, ptr %i.br, align 4, !tbaa !62, !noalias !67
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !63, !alias.scope !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30:    ; preds = %._crit_edge.i.i.i29, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30
  %.04.i.i.i31 = phi ptr [ %i.bu, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30 ], [ %i.br, %._crit_edge.i.i.i29 ] ; 2 uses
  %.0.i.i.i32 = phi ptr [ %i.bs, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30 ], [ %i.e, %._crit_edge.i.i.i29 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i32, i64 4
  %i.bt = load i32, ptr %.0.i.i.i32, align 4, !tbaa !62, !noalias !67 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i.i.i31, i64 4
  store i32 %i.bt, ptr %.04.i.i.i31, align 4, !tbaa !62, !noalias !67
  %.not.i.i.i33 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i33, label %_ZL21ConvertUInt64ToStringy.exit34, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30, !llvm.loop !42

_ZL21ConvertUInt64ToStringy.exit34:               ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i30
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bj, ptr %i.bv, align 8, !tbaa !64, !alias.scope !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13, !noalias !67
  br label %bb.f

._crit_edge.i.i.i36:                              ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !68
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.bx, ptr noundef nonnull %i.d), !noalias !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !68
  %wcslen.i.i.i35 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.d), !noalias !68
  %i.by = trunc i64 %wcslen.i.i.i35 to i32        ; 3 uses
  %i.bz = add nsw i32 %i.by, 1                    ; 3 uses
  %i.ca = icmp ne i32 %i.bz, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cc = zext nneg i32 %i.bz to i64
  %i.cd = icmp slt i32 %i.by, -1
  %i.ce = shl nuw nsw i64 %i.cc, 2
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #15, !noalias !68 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !60, !alias.scope !68
  store i32 0, ptr %i.cg, align 4, !tbaa !62, !noalias !68
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !63, !alias.scope !68
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37:    ; preds = %._crit_edge.i.i.i36, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37
  %.04.i.i.i38 = phi ptr [ %i.cj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37 ], [ %i.cg, %._crit_edge.i.i.i36 ] ; 2 uses
  %.0.i.i.i39 = phi ptr [ %i.ch, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37 ], [ %i.d, %._crit_edge.i.i.i36 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i39, i64 4
  %i.ci = load i32, ptr %.0.i.i.i39, align 4, !tbaa !62, !noalias !68 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.04.i.i.i38, i64 4
  store i32 %i.ci, ptr %.04.i.i.i38, align 4, !tbaa !62, !noalias !68
  %.not.i.i.i40 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i40, label %_ZL21ConvertUInt64ToStringy.exit41, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37, !llvm.loop !42

_ZL21ConvertUInt64ToStringy.exit41:               ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i37
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.by, ptr %i.ck, align 8, !tbaa !64, !alias.scope !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !68
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_Z23ConvertFileTimeToStringRK9_FILETIMEbb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %i.cl, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.f

._crit_edge.i.i.i43:                              ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !15
  %i.co = sext i16 %i.cn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !69
  call void @_Z20ConvertInt64ToStringxPw(i64 noundef %i.co, ptr noundef nonnull %i.c), !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !69
  %wcslen.i.i.i42 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c), !noalias !69
  %i.cp = trunc i64 %wcslen.i.i.i42 to i32        ; 3 uses
  %i.cq = add nsw i32 %i.cp, 1                    ; 3 uses
  %i.cr = icmp ne i32 %i.cq, 0
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = icmp slt i32 %i.cp, -1
  %i.cv = shl nuw nsw i64 %i.ct, 2
  %i.cw = select i1 %i.cu, i64 -1, i64 %i.cv
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #15, !noalias !69 ; 3 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !60, !alias.scope !69
  store i32 0, ptr %i.cx, align 4, !tbaa !62, !noalias !69
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !63, !alias.scope !69
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44:    ; preds = %._crit_edge.i.i.i43, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44
  %.04.i.i.i45 = phi ptr [ %i.da, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44 ], [ %i.cx, %._crit_edge.i.i.i43 ] ; 2 uses
  %.0.i.i.i46 = phi ptr [ %i.cy, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44 ], [ %i.c, %._crit_edge.i.i.i43 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i46, i64 4
  %i.cz = load i32, ptr %.0.i.i.i46, align 4, !tbaa !62, !noalias !69 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.04.i.i.i45, i64 4
  store i32 %i.cz, ptr %.04.i.i.i45, align 4, !tbaa !62, !noalias !69
  %.not.i.i.i47 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i47, label %_ZL20ConvertInt64ToStringx.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44, !llvm.loop !42

_ZL20ConvertInt64ToStringx.exit:                  ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i44
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cp, ptr %i.db, align 8, !tbaa !64, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !69
  br label %bb.f

._crit_edge.i.i.i49:                              ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !15
  %i.de = sext i32 %i.dd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !70
  call void @_Z20ConvertInt64ToStringxPw(i64 noundef %i.de, ptr noundef nonnull %i.b), !noalias !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !70
  %wcslen.i.i.i48 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b), !noalias !70
  %i.df = trunc i64 %wcslen.i.i.i48 to i32        ; 3 uses
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  %i.dh = icmp ne i32 %i.dg, 0
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = icmp slt i32 %i.df, -1
  %i.dl = shl nuw nsw i64 %i.dj, 2
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl
  %i.dn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #15, !noalias !70 ; 3 uses
  store ptr %i.dn, ptr %0, align 8, !tbaa !60, !alias.scope !70
  store i32 0, ptr %i.dn, align 4, !tbaa !62, !noalias !70
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !63, !alias.scope !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50:    ; preds = %._crit_edge.i.i.i49, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50
  %.04.i.i.i51 = phi ptr [ %i.dq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50 ], [ %i.dn, %._crit_edge.i.i.i49 ] ; 2 uses
  %.0.i.i.i52 = phi ptr [ %i.do, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50 ], [ %i.b, %._crit_edge.i.i.i49 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i52, i64 4
  %i.dp = load i32, ptr %.0.i.i.i52, align 4, !tbaa !62, !noalias !70 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.04.i.i.i51, i64 4
  store i32 %i.dp, ptr %.04.i.i.i51, align 4, !tbaa !62, !noalias !70
  %.not.i.i.i53 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i53, label %_ZL20ConvertInt64ToStringx.exit54, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50, !llvm.loop !42

_ZL20ConvertInt64ToStringx.exit54:                ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i50
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.df, ptr %i.dr, align 8, !tbaa !64, !alias.scope !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !70
  br label %bb.f

._crit_edge.i.i.i56:                              ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !71
  call void @_Z20ConvertInt64ToStringxPw(i64 noundef %i.dt, ptr noundef nonnull %i.a), !noalias !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !71
  %wcslen.i.i.i55 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a), !noalias !71
  %i.du = trunc i64 %wcslen.i.i.i55 to i32        ; 3 uses
  %i.dv = add nsw i32 %i.du, 1                    ; 3 uses
  %i.dw = icmp ne i32 %i.dv, 0
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = icmp slt i32 %i.du, -1
  %i.ea = shl nuw nsw i64 %i.dy, 2
  %i.eb = select i1 %i.dz, i64 -1, i64 %i.ea
  %i.ec = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eb) #15, !noalias !71 ; 3 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !60, !alias.scope !71
  store i32 0, ptr %i.ec, align 4, !tbaa !62, !noalias !71
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !63, !alias.scope !71
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57:    ; preds = %._crit_edge.i.i.i56, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57
  %.04.i.i.i58 = phi ptr [ %i.ef, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57 ], [ %i.ec, %._crit_edge.i.i.i56 ] ; 2 uses
  %.0.i.i.i59 = phi ptr [ %i.ed, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57 ], [ %i.a, %._crit_edge.i.i.i56 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i59, i64 4
  %i.ee = load i32, ptr %.0.i.i.i59, align 4, !tbaa !62, !noalias !71 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.04.i.i.i58, i64 4
  store i32 %i.ee, ptr %.04.i.i.i58, align 4, !tbaa !62, !noalias !71
  %.not.i.i.i60 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i60, label %_ZL20ConvertInt64ToStringx.exit61, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57, !llvm.loop !42

_ZL20ConvertInt64ToStringx.exit61:                ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i57
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.du, ptr %i.eg, align 8, !tbaa !64, !alias.scope !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !71
  br label %bb.f

_ZN11CStringBaseIwE11SetCapacityEi.exit.i64:      ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #15 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not = icmp eq i16 %i.ei, 0
  %.str.3..str.4 = select i1 %.not, ptr @.str.4, ptr @.str.3
  store ptr %i.ek, ptr %0, align 8, !tbaa !60
  store i32 0, ptr %i.ek, align 4, !tbaa !62
  store i32 2, ptr %i.el, align 4, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64
  %.04.i.i65 = phi ptr [ %i.ek, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.eo, %bb.d ] ; 2 uses
  %.0.i.i66 = phi ptr [ %.str.3..str.4, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i64 ], [ %i.em, %bb.d ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 4
  %i.en = load i32, ptr %.0.i.i66, align 4, !tbaa !62 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04.i.i65, i64 4
  store i32 %i.en, ptr %.04.i.i65, align 4, !tbaa !62
  %.not.i.i67 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i67, label %_ZN11CStringBaseIwEC2EPKw.exit78, label %bb.d, !llvm.loop !42

_ZN11CStringBaseIwEC2EPKw.exit78:                 ; preds = %bb.d
  store i32 1, ptr %i.ej, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ep = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 150245, ptr %i.ep, align 16, !tbaa !7
  tail call void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit78, %_ZL20ConvertInt64ToStringx.exit61, %_ZL20ConvertInt64ToStringx.exit54, %_ZL20ConvertInt64ToStringx.exit, %bb.c, %_ZL21ConvertUInt64ToStringy.exit41, %_ZL21ConvertUInt64ToStringy.exit34, %_ZL21ConvertUInt64ToStringy.exit27, %_ZL21ConvertUInt64ToStringy.exit, %_ZN11CStringBaseIwEC2EPKw.exit, %_ZN11CStringBaseIwEC2Ev.exit
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 !guid !72 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !19
  switch i16 %i.a, label %bb.f [
    i16 17, label %bb.b
    i16 18, label %bb.c
    i16 19, label %bb.d
    i16 21, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15
  %i.d = zext i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !15
  %i.g = zext i16 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = zext i32 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 151199, ptr %i.m, align 16, !tbaa !7
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  ret i64 %.0
}

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_Z21ConvertUInt64ToStringyPw(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z20ConvertInt64ToStringxPw(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -8705918940719928049}
!9 = !{i64 2706475694444378580}
!10 = !{i64 7347619167809920760}
!11 = !{i64 5009442639247900438}
!12 = !{i64 -2808701299715759922}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"short", !5, i64 0}
!18 = !{!"_ZTS14tagPROPVARIANT", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !5, i64 8}
!19 = !{!18, !17, i64 0}
!20 = !{i64 1215108541210696377}
!21 = !{!"_ZTS9_FILETIME", !6, i64 0, !6, i64 4}
!22 = !{!21, !6, i64 4}
!23 = !{!21, !6, i64 0}
!24 = !{!"long long", !5, i64 0}
!25 = !{!"_ZTS13LARGE_INTEGER", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTS2tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !27, i64 40, !14, i64 48}
!30 = !{!29, !6, i64 20}
!31 = !{!29, !6, i64 16}
!32 = !{!29, !6, i64 12}
!33 = !{!29, !6, i64 8}
!34 = !{!29, !6, i64 4}
end_hunk_0
