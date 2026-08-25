Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Stream?download=true
begin_hunk_0
@.str.78 = private unnamed_addr constant [7 x i8] c"faint}\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"\1B[2m\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"italic}\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"\1B[3m\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"underline}\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"\1B[4m\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"slow-blink}\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\1B[5m\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"fast-blink}\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"\1B[6m\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"negative}\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"\1B[7m\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"conceal}\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"\1B[8m\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"crossed-out}\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"\1B[9m\00", align 1
@_ZZN12lldb_private4ansi23FormatAnsiTerminalCodesB5cxx11EN4llvm9StringRefEbE7tok_hdr = linkonce_odr constant [8 x i8] c"${ansi.\00", comdat, align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN12lldb_private6StreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private6StreamD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private6StreamC2EjN4lldb9ByteOrderEb(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 20), (24, 44), (48, 72), (76, 80)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12lldb_private6StreamE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.h, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12lldb_private6Stream17RawOstreamForwardE, i64 16), ptr %i.e, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.j, align 8, !tbaa !29
  %i.k = zext i1 %3 to i8
  store i8 %i.k, ptr %i.g, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private6StreamC2Eb(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 20), (24, 44), (48, 72), (76, 80)) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12lldb_private6StreamE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.h, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12lldb_private6Stream17RawOstreamForwardE, i64 16), ptr %i.e, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.j, align 8, !tbaa !29
  %i.k = zext i1 %1 to i8
  store i8 %i.k, ptr %i.g, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12lldb_private6StreamE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12lldb_private6StreamD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN12lldb_private6Stream12SetByteOrderEN4lldb9ByteOrderE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  store i32 %1, ptr %i.a, align 4, !tbaa !13
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Stream6OffsetEjPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %2, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ...) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString", align 8 ; 11 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 1024, ptr %i.c, align 8, !tbaa !34
  %i.d = call noundef zeroext i1 @_ZN12lldb_private9VASprintfERN4llvm15SmallVectorImplIcEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %1, ptr noundef nonnull %3) #23 ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %spec.select.i = add i64 %i.e, %i.i
  %i.j = load i64, ptr %i.c, align 8, !tbaa !34
  %.not.i.i.i = icmp ult i64 %i.e, %i.j
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(1048) %2, i8 noundef signext 0)
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !33
  %i.k = add i64 %.pre.i.i, -1
  br label %_ZN4llvm11SmallStringILj1024EE5c_strEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.e
  store i8 0, ptr %i.m, align 1
  %i.n = load i64, ptr %i.b, align 8, !tbaa !33
  br label %_ZN4llvm11SmallStringILj1024EE5c_strEv.exit.i

_ZN4llvm11SmallStringILj1024EE5c_strEv.exit.i:    ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  store i64 %i.o, ptr %i.b, align 8, !tbaa !33
  %i.p = load ptr, ptr %2, align 8, !tbaa !31
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.p, i64 noundef %spec.select.i) #23, !inline_history !36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !26
  %i.x = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZN12lldb_private6Stream12PrintfVarArgEPKcP13__va_list_tag.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallStringILj1024EE5c_strEv.exit.i
  call void @free(ptr noundef %i.x) #23
  br label %_ZN12lldb_private6Stream12PrintfVarArgEPKcP13__va_list_tag.exit

_ZN12lldb_private6Stream12PrintfVarArgEPKcP13__va_list_tag.exit: ; preds = %_ZN4llvm11SmallStringILj1024EE5c_strEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private6Stream10PutSLEB128El(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.b
  %.024.i = phi i32 [ 0, %bb.b ], [ %i.k, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.0.i = phi i64 [ %1, %bb.b ], [ %i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.g = trunc i64 %.0.i to i8
  %i.h = and i8 %i.g, 127                         ; 2 uses
  %i.i = ashr i64 %.0.i, 7                        ; 2 uses
  %.not.i = icmp samesign ugt i8 %i.h, 63
  %i.j = sext i1 %.not.i to i64
  %.not30.i.not = icmp eq i64 %i.i, %i.j          ; 2 uses
  %i.k = add i32 %.024.i, 1                       ; 2 uses
  %masksel.i = select i1 %.not30.i.not, i8 0, i8 -128
  %.023.i.a = or disjoint i8 %masksel.i, %i.h     ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.l, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext %.023.i.a) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.e, align 8, !tbaa !37
  store i8 %.023.i.a, ptr %i.l, align 1, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d
  br i1 %.not30.i.not, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit, label %bb.c, !llvm.loop !40

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.p = zext i32 %i.k to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull @.str, i64 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit
  %.0 = phi i64 [ %i.p, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit ], [ %i.q, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private6Stream10PutULEB128Em(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.b
  %.019.i = phi i64 [ %1, %bb.b ], [ %i.g, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %.018.i = phi i32 [ 0, %bb.b ], [ %i.h, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.g = lshr i64 %.019.i, 7                      ; 2 uses
  %i.h = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %.not.i.not = icmp eq i64 %i.g, 0               ; 2 uses
  %i.i = trunc i64 %.019.i to i8                  ; 2 uses
  %i.j = or i8 %i.i, -128
  %.0.i = select i1 %.not.i.not, i8 %i.i, i8 %i.j ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext %.0.i) #23 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.e, align 8, !tbaa !37
  store i8 %.0.i, ptr %i.k, align 1, !tbaa !39
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d
  br i1 %.not.i.not, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, label %bb.c, !llvm.loop !42

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.o = zext nneg i32 %i.h to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull @.str.1, i64 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %.0 = phi i64 [ %i.o, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit ], [ %i.p, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i64 noundef %2) #23, !inline_history !43 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !39
  %i.l = load ptr, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a, i64 noundef 1) #23, !inline_history !44 ; 2 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !26
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %i.f, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add i64 %i.o, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 noundef signext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !39
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a, i64 noundef 1) #23, !inline_history !43 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !26
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private6Stream26PutCStringColorHighlightedEN4llvm9StringRefESt8optionalINS0_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr %1, i64 %2, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvm::Regex", align 8       ; 6 uses
  %5 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.g = load i8, ptr %i.f, align 8, !tbaa !45, !range !47, !noundef !48
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i64 noundef %2) #23, !inline_history !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26
  %i.o = add i64 %i.n, %i.l
  store i64 %i.o, ptr %i.m, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11
  %i.r = and i32 %i.q, 1
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !39
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.e, i64 noundef 1) #23, !inline_history !50
  %i.w = load i64, ptr %i.m, align 8, !tbaa !26
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.m, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.sroa.07.0.copyload = load ptr, ptr %3, align 8, !tbaa !51
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = load i8, ptr %i.y, align 8, !tbaa !53, !range !47, !noundef !48
  %i.aa = zext nneg i8 %i.z to i32
  call void @_ZN4llvm5RegexC1ENS_9StringRefENS0_10RegexFlagsE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, i32 noundef %i.aa) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
end_hunk_0
