Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AssemblyBuilderX64?download=true
inline.NumInlined: 717
inline.NumDeleted: 189
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_:bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
  %or.cond.i = icmp ult i8 %.sroa.055.0.extract.trunc.i, 2
  %i.e = icmp eq i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond5.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -128, i8 noundef zeroext -127, i8 noundef zeroext -125, i8 noundef zeroext 7)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %.sroa.055.0.extract.trunc.i, 0
  %or.cond8.i = icmp ult i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond90.i = select i1 %i.f, i1 %or.cond8.i, i1 false
  br i1 %or.cond90.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext 58, i8 noundef zeroext 59)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.extract.trunc.i, 0
  %or.cond11.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond11.i, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext 56, i8 noundef zeroext 57)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644and_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc.i = trunc i64 %1 to i8 ; 3 uses
  %.sroa.027.0.extract.trunc.i = trunc i64 %2 to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.4, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
  %or.cond.i = icmp ult i8 %.sroa.055.0.extract.trunc.i, 2
  %i.e = icmp eq i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond5.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -128, i8 noundef zeroext -127, i8 noundef zeroext -125, i8 noundef zeroext 4)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %.sroa.055.0.extract.trunc.i, 0
  %or.cond8.i = icmp ult i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond90.i = select i1 %i.f, i1 %or.cond8.i, i1 false
  br i1 %or.cond90.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext 34, i8 noundef zeroext 35)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.extract.trunc.i, 0
  %or.cond11.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond11.i, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext 32, i8 noundef zeroext 33)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643or_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc.i = trunc i64 %1 to i8 ; 3 uses
  %.sroa.027.0.extract.trunc.i = trunc i64 %2 to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.5, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
  %or.cond.i = icmp ult i8 %.sroa.055.0.extract.trunc.i, 2
  %i.e = icmp eq i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond5.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -128, i8 noundef zeroext -127, i8 noundef zeroext -125, i8 noundef zeroext 1)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %.sroa.055.0.extract.trunc.i, 0
  %or.cond8.i = icmp ult i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond90.i = select i1 %i.f, i1 %or.cond8.i, i1 false
  br i1 %or.cond90.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext 10, i8 noundef zeroext 11)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.extract.trunc.i, 0
  %or.cond11.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond11.i, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext 8, i8 noundef zeroext 9)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc.i = trunc i64 %1 to i8 ; 3 uses
  %.sroa.027.0.extract.trunc.i = trunc i64 %2 to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.6, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
  %or.cond.i = icmp ult i8 %.sroa.055.0.extract.trunc.i, 2
  %i.e = icmp eq i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond5.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -128, i8 noundef zeroext -127, i8 noundef zeroext -125, i8 noundef zeroext 6)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %.sroa.055.0.extract.trunc.i, 0
  %or.cond8.i = icmp ult i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond90.i = select i1 %i.f, i1 %or.cond8.i, i1 false
  br i1 %or.cond90.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext 50, i8 noundef zeroext 51)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.extract.trunc.i, 0
  %or.cond11.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond11.i, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext 48, i8 noundef zeroext 49)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643salENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.7, i64 %1, i64 %2, i8 noundef zeroext 4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i64 %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5.0.extract.shift = lshr i64 %2, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8 ; 3 uses
  %.sroa.416.0.extract.shift = lshr i64 %3, 32    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i64 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %.sroa.5.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %i.f = lshr i8 %.sroa.5.0.extract.trunc, 6
  %i.g = and i8 %i.f, 1
  %5 = icmp eq i8 %i.d, 1                         ; 4 uses
  %6 = icmp ugt i8 %.sroa.5.0.extract.trunc, 31
  %7 = and i1 %6, %5
  %8 = select i1 %7, i8 64, i8 0
  %9 = select i1 %i.e, i8 8, i8 %8
  %10 = or disjoint i8 %9, %i.g                   ; 2 uses
  %.not.i = icmp eq i8 %10, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or i8 %10, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.i, align 8, !tbaa !58
  store i8 %i.h, ptr %i.j, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.c, %bb.d
  %i.l = and i64 %3, 255
  %i.m = icmp eq i64 %i.l, 2                      ; 2 uses
  %i.n = icmp eq i64 %.sroa.416.0.extract.shift, 1
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.o = select i1 %5, i8 -48, i8 -47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %i.p, align 8, !tbaa !58
  store i8 %i.o, ptr %i.q, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %4, i32 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.s, align 8, !tbaa !58
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = select i1 %5, i8 -64, i8 -63
  store i8 %i.v, ptr %i.t, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %4, i32 noundef 1)
  %i.w = trunc i64 %.sroa.416.0.extract.shift to i8
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.s, align 8, !tbaa !58
  store i8 %i.w, ptr %i.x, align 1, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = select i1 %5, i8 -46, i8 -45
  store i8 %i.z, ptr %i.t, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %4, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 4294967280
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643sarENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.8, i64 %1, i64 %2, i8 noundef zeroext 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shlENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.9, i64 %1, i64 %2, i8 noundef zeroext 4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shrENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.10, i64 %1, i64 %2, i8 noundef zeroext 5)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643rolENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.11, i64 %1, i64 %2, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643rorENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeShiftEPKcNS1_10OperandX64ES5_h(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.12, i64 %1, i64 %2, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.069.0.extract.trunc = trunc i64 %1 to i8 ; 2 uses
  %.sroa.15136.0.extract.shift = lshr i64 %1, 16
  %.sroa.15136.0.extract.trunc = trunc i64 %.sroa.15136.0.extract.shift to i8 ; 17 uses
  %.sroa.25.0.extract.shift = lshr i64 %1, 24
  %.sroa.25.0.extract.trunc = trunc i64 %.sroa.25.0.extract.shift to i8
  %.sroa.033.0.extract.trunc = trunc i64 %2 to i8 ; 3 uses
  %.sroa.952.0.extract.shift = lshr i64 %2, 32    ; 5 uses
  %.sroa.952.0.extract.trunc = trunc nuw i64 %.sroa.952.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.13, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.069.0.extract.trunc, 0 ; 2 uses
  %i.e = icmp eq i8 %.sroa.033.0.extract.trunc, 2 ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.f = and i8 %.sroa.15136.0.extract.trunc, 7   ; 5 uses
  %i.g = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i8 %i.f, 4
  %i.j = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.k = and i8 %i.j, 1
  %3 = icmp eq i8 %i.f, 1
  %4 = icmp ugt i8 %.sroa.15136.0.extract.trunc, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i8 64, i8 0
  %7 = select i1 %i.i, i8 8, i8 %6
  %8 = or disjoint i8 %7, %i.k                    ; 2 uses
  %.not.i = icmp eq i8 %8, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = or i8 %8, 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.m, align 8, !tbaa !58
  store i8 %i.l, ptr %i.n, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.f, %bb.e, %bb.d
  switch i8 %i.f, label %bb.n [
    i8 1, label %bb.g
    i8 2, label %bb.j
    i8 3, label %bb.l
  ]

bb.g:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.p = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit253

bb.h:                                             ; preds = %bb.g
  %i.r = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.s = and i8 %i.r, 1                           ; 2 uses
  %i.t = icmp ult i8 %.sroa.15136.0.extract.trunc, 32
  %i.u = icmp eq i8 %i.s, 0
  %.not.i252 = and i1 %i.t, %i.u
  br i1 %.not.i252, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit253, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = or disjoint i8 %i.s, 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.w, align 8, !tbaa !58
  store i8 %i.v, ptr %i.x, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit253

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit253: ; preds = %bb.i, %bb.h, %bb.g
  %i.z = lshr i8 %.sroa.15136.0.extract.trunc, 3
  %i.aa = and i8 %i.z, 7
  %i.ab = or disjoint i8 %i.aa, -80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !58
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !17
  %i.af = trunc i64 %.sroa.952.0.extract.shift to i8
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !58
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !17
  br label %bb.ah

bb.j:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !58
  store i8 102, ptr %i.aj, align 1, !tbaa !17
  %i.al = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = and i8 %.sroa.15136.0.extract.trunc, 64
  %i.ao = icmp ne i8 %i.an, 0
  %or.cond283.not = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond283.not, label %bb.k, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit256.a

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !58
  store i8 65, ptr %i.ap, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit256.a

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit256.a: ; preds = %bb.k, %bb.j
  %i.ar = lshr i8 %.sroa.15136.0.extract.trunc, 3
  %i.as = or i8 %i.ar, -72
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.ai, align 8, !tbaa !58
  store i8 %i.as, ptr %i.at, align 1, !tbaa !17
  %i.av = trunc i64 %.sroa.952.0.extract.shift to i16
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  store i16 %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.ax, ptr %i.ai, align 8, !tbaa !58
  br label %bb.ah

bb.l:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.ay = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = and i8 %.sroa.15136.0.extract.trunc, 64
  %i.bb = icmp ne i8 %i.ba, 0
  %or.cond286.not = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond286.not, label %bb.m, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit259

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !58
  store i8 65, ptr %i.bd, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit259

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit259: ; preds = %bb.m, %bb.l
  %i.bf = lshr i8 %.sroa.15136.0.extract.trunc, 3
  %i.bg = or i8 %i.bf, -72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !58
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !17
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.952.0.extract.trunc, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !58
  br label %bb.ah

bb.n:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  %i.bm = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit262

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp eq i8 %i.f, 4
  %i.bp = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.bq = and i8 %i.bp, 1
  %9 = icmp eq i8 %i.f, 1
  %10 = icmp ugt i8 %.sroa.15136.0.extract.trunc, 31
  %11 = and i1 %10, %9
  %12 = select i1 %11, i8 64, i8 0
  %13 = select i1 %i.bo, i8 8, i8 %12
  %14 = or disjoint i8 %13, %i.bq                 ; 2 uses
  %.not.i257 = icmp eq i8 %14, 0
  br i1 %.not.i257, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit262, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = or i8 %14, 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !58
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit262

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit262: ; preds = %bb.p, %bb.o, %bb.n
  %i.bv = lshr i8 %.sroa.15136.0.extract.trunc, 3
  %i.bw = or i8 %i.bv, -72
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !58 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !58
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !17
  %i.ca = ashr i64 %2, 32
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !58 ; 2 uses
  store i64 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !58
  br label %bb.ah

bb.q:                                             ; preds = %bb.c
  %i.cd = icmp eq i8 %.sroa.069.0.extract.trunc, 1 ; 2 uses
  %or.cond5 = select i1 %i.cd, i1 %i.e, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.ce = and i8 %.sroa.25.0.extract.trunc, 15
  %i.cf = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = and i64 %1, 251658240
  %i.ci = icmp eq i64 %i.ch, 67108864
  %i.cj = select i1 %i.ci, i32 8, i32 0
  %i.ck = trunc i64 %1 to i32
  %i.cl = lshr i32 %i.ck, 13
  %i.cm = and i32 %i.cl, 2
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.cp = and i8 %i.co, 1
  %i.cq = trunc nuw nsw i32 %i.cn to i8
  %i.cr = or disjoint i8 %i.cp, %i.cq             ; 2 uses
  %.not.i263 = icmp eq i8 %i.cr, 0
  br i1 %.not.i263, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = or disjoint i8 %i.cr, 64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !58
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.t, %bb.s, %bb.r
  switch i8 %i.ce, label %bb.aa [
    i8 1, label %bb.u
    i8 2, label %bb.x
  ]

bb.u:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.cw = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.v, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit269

bb.v:                                             ; preds = %bb.u
  %i.cy = and i64 %1, 251658240
  %i.cz = icmp eq i64 %i.cy, 67108864
  %i.da = select i1 %i.cz, i32 8, i32 0
  %i.db = trunc i64 %1 to i32
  %i.dc = lshr i32 %i.db, 13
  %i.dd = and i32 %i.dc, 2
  %i.de = or disjoint i32 %i.da, %i.dd
  %i.df = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.dg = and i8 %i.df, 1
  %i.dh = trunc nuw nsw i32 %i.de to i8
  %i.di = or disjoint i8 %i.dg, %i.dh             ; 2 uses
  %.not.i268 = icmp eq i8 %i.di, 0
  br i1 %.not.i268, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit269, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = or disjoint i8 %i.di, 64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !58 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !58
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit269

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit269: ; preds = %bb.w, %bb.v, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !58 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !58
  store i8 -58, ptr %i.do, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext 0, i32 noundef 1)
  %i.dq = trunc i64 %.sroa.952.0.extract.shift to i8
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !58 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !58
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !17
  br label %bb.ah

bb.x:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !58 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !58
  store i8 102, ptr %i.du, align 1, !tbaa !17
  %i.dw = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.y, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit275

bb.y:                                             ; preds = %bb.x
  %i.dy = and i64 %1, 251658240
  %i.dz = icmp eq i64 %i.dy, 67108864
  %i.ea = select i1 %i.dz, i32 8, i32 0
  %i.eb = trunc i64 %1 to i32
  %i.ec = lshr i32 %i.eb, 13
  %i.ed = and i32 %i.ec, 2
  %i.ee = or disjoint i32 %i.ea, %i.ed
  %i.ef = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.eg = and i8 %i.ef, 1
  %i.eh = trunc nuw nsw i32 %i.ee to i8
  %i.ei = or disjoint i8 %i.eg, %i.eh             ; 2 uses
  %.not.i274 = icmp eq i8 %i.ei, 0
  br i1 %.not.i274, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit275, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = or disjoint i8 %i.ei, 64
  %i.ek = load ptr, ptr %i.dt, align 8, !tbaa !58 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store ptr %i.el, ptr %i.dt, align 8, !tbaa !58
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit275

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit275: ; preds = %bb.z, %bb.y, %bb.x
  %i.em = load ptr, ptr %i.dt, align 8, !tbaa !58 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.dt, align 8, !tbaa !58
  store i8 -57, ptr %i.em, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext 0, i32 noundef 2)
  %i.eo = trunc i64 %.sroa.952.0.extract.shift to i16
  %i.ep = load ptr, ptr %i.dt, align 8, !tbaa !58 ; 2 uses
  store i16 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store ptr %i.eq, ptr %i.dt, align 8, !tbaa !58
  br label %bb.ah

bb.aa:                                            ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.er = load i8, ptr @_ZN5FFlag19LuauCodegenRexWidthE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ab, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit281

bb.ab:                                            ; preds = %bb.aa
  %i.et = and i64 %1, 251658240
  %i.eu = icmp eq i64 %i.et, 67108864
  %i.ev = select i1 %i.eu, i32 8, i32 0
  %i.ew = trunc i64 %1 to i32
  %i.ex = lshr i32 %i.ew, 13
  %i.ey = and i32 %i.ex, 2
  %i.ez = or disjoint i32 %i.ev, %i.ey
  %i.fa = lshr i8 %.sroa.15136.0.extract.trunc, 6
  %i.fb = and i8 %i.fa, 1
  %i.fc = trunc nuw nsw i32 %i.ez to i8
  %i.fd = or disjoint i8 %i.fb, %i.fc             ; 2 uses
  %.not.i280 = icmp eq i8 %i.fd, 0
  br i1 %.not.i280, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit281, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fe = or disjoint i8 %i.fd, 64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !58 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !58
  store i8 %i.fe, ptr %i.fg, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit281

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit281: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !58 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !58
  store i8 -57, ptr %i.fj, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext 0, i32 noundef 4)
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.952.0.extract.trunc, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store ptr %i.fm, ptr %i.fi, align 8, !tbaa !58
  br label %bb.ah

bb.ad:                                            ; preds = %bb.q
  %or.cond8 = icmp ult i8 %.sroa.033.0.extract.trunc, 2
  %or.cond250 = select i1 %i.d, i1 %or.cond8, i1 false
  br i1 %or.cond250, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -118, i8 noundef zeroext -117)
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fn = icmp eq i8 %.sroa.033.0.extract.trunc, 0
  %or.cond11 = select i1 %i.cd, i1 %i.fn, i1 false
  br i1 %or.cond11, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext -120, i8 noundef zeroext -119)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit269, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit281, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit275, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit253, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit259, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit262, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit256.a, %bb.ag, %bb.af, %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !68
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !68
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !59
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !58
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = and i64 %i.fx, 4294967280
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ai, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.ah, %bb.ai
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.108, ptr noundef %1)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2)
  %i.a = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3)
  %i.n = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %bb.h, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit5

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit5:    ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = icmp eq i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit6

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit6: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit6, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit5
  %.sink7 = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit6 ], [ %i.u, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit5 ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink7, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i8 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i8 %1, 7                             ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  %i.c = lshr i8 %1, 6
  %i.d = and i8 %i.c, 1
  %2 = icmp eq i8 %i.a, 1
  %3 = icmp ugt i8 %1, 31
  %4 = and i1 %3, %2
  %5 = select i1 %4, i8 64, i8 0
  %6 = select i1 %i.b, i8 8, i8 %5
  %7 = or disjoint i8 %6, %i.d                    ; 2 uses
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i8 %7, 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i8 %i.e, ptr %i.g, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645placeEh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i8 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  store i8 %1, ptr %i.b, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649placeImm8Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !58
  store i8 %i.a, ptr %i.c, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeImm16Es(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i16 noundef signext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  store i16 %1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeImm32Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  store i32 %1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6410placeImm64El(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  store i64 %1, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i64 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.4.0.extract.shift = lshr i64 %1, 16
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 4 uses
  switch i8 %.sroa.0.0.extract.trunc, label %.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i8 %.sroa.4.0.extract.trunc, 7       ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  %i.c = lshr i8 %.sroa.4.0.extract.trunc, 6
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.a, 1
  %i.f = icmp ugt i8 %.sroa.4.0.extract.trunc, 31
  %i.g = and i1 %i.f, %i.e
  %2 = select i1 %i.g, i8 64, i8 0
  %i.h = select i1 %i.b, i8 8, i8 %2
  %i.i = or disjoint i8 %i.h, %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %1, 251658240
  %i.k = icmp eq i64 %i.j, 67108864
  %i.l = select i1 %i.k, i32 8, i32 0
  %i.m = trunc i64 %1 to i32
  %i.n = lshr i32 %i.m, 13
  %i.o = and i32 %i.n, 2
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = lshr i8 %.sroa.4.0.extract.trunc, 6
  %i.r = and i8 %i.q, 1
  %i.s = trunc nuw nsw i32 %i.p to i8
  %i.t = or disjoint i8 %i.r, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.t, %bb.c ]   ; 2 uses
  %.not = icmp eq i8 %.0, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = or i8 %.0, 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.v, align 8, !tbaa !58
  store i8 %i.u, ptr %i.w, align 1, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i64 %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.017.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.3.0.extract.shift = lshr i64 %1, 8
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 16
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 7 uses
  %.sroa.10.0.extract.shift = lshr i64 %1, 32     ; 6 uses
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i32 ; 10 uses
  switch i8 %.sroa.017.0.extract.trunc, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = shl i8 %2, 3
  %i.b = lshr i8 %.sroa.4.0.extract.trunc, 3
  %i.c = and i8 %i.b, 7
  %i.d = or disjoint i8 %i.c, %i.a
  %i.e = or i8 %i.d, -64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i8 %i.e, ptr %i.g, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.10.0.extract.shift, 0 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i64 %.sroa.10.0.extract.shift to i8
  %i.j = sext i8 %i.i to i32
  %i.k = icmp eq i32 %i.j, %.sroa.10.0.extract.trunc
  %. = select i1 %i.k, i32 1, i32 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = and i8 %.sroa.4.0.extract.trunc, 56
  %i.m = icmp ne i8 %i.l, 40                      ; 2 uses
  %not. = xor i1 %i.m, true
  %spec.select37 = zext i1 %not. to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not32 = phi i1 [ false, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %., %bb.d ], [ %spec.select37, %bb.e ] ; 3 uses
  %.not53 = icmp eq i8 %.sroa.3.0.extract.trunc, -128
  br i1 %.not53, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not54 = icmp eq i8 %.sroa.4.0.extract.trunc, -128
  br i1 %.not54, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = shl i8 %2, 3
  %i.o = and i8 %i.n, 56
  %.0.tr35 = trunc nuw nsw i32 %.0 to i8
  %i.p = shl nuw i8 %.0.tr35, 6
  %i.q = or disjoint i8 %i.p, %i.o
  %i.r = or disjoint i8 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.s, align 8, !tbaa !58
  store i8 %i.r, ptr %i.t, align 1, !tbaa !17
  %i.v = lshr i64 %1, 28
  %i.w = and i64 %i.v, 15
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN4Luau7CodeGen3X64L16getScaleEncodingEhE6scales, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = shl i8 %i.y, 6
  %i.aa = and i8 %.sroa.3.0.extract.trunc, 56
  %i.ab = or disjoint i8 %i.z, %i.aa
  %i.ac = lshr i8 %.sroa.4.0.extract.trunc, 3
  %i.ad = and i8 %i.ac, 7
  %i.ae = or disjoint i8 %i.ab, %i.ad
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !58
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !17
  br i1 %.not32, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i32 %.sroa.10.0.extract.trunc, 128
  %i.ai = icmp ult i32 %i.ah, 256
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = trunc i64 %.sroa.10.0.extract.shift to i8
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.s, align 8, !tbaa !58
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.s, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = and i64 %1, 4026531840
  %.not31 = icmp eq i64 %i.ao, 268435456
  br i1 %.not31, label %.thread52, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sum.shift = lshr i64 %1, 28
  %i.ap = shl i8 %2, 3
  %i.aq = and i8 %i.ap, 56
  %i.ar = or disjoint i8 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.as, align 8, !tbaa !58
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !17
  %i.av = and i64 %sum.shift, 15
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN4Luau7CodeGen3X64L16getScaleEncodingEhE6scales, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = shl i8 %i.ax, 6
  %i.az = and i8 %.sroa.3.0.extract.trunc, 56
  %i.ba = or disjoint i8 %i.ay, %i.az
  %i.bb = or disjoint i8 %i.ba, 5
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !58
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !17
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.10.0.extract.trunc, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bf, ptr %i.as, align 8, !tbaa !58
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit

bb.n:                                             ; preds = %bb.f
  %i.bg = and i8 %.sroa.4.0.extract.trunc, 56
  %i.bh = icmp eq i8 %i.bg, 32
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bi = shl i8 %2, 3
  %i.bj = and i8 %i.bi, 56
  %.0.tr34 = trunc nuw nsw i32 %.0 to i8
  %i.bk = shl nuw i8 %.0.tr34, 6
  %i.bl = or disjoint i8 %i.bk, %i.bj
  %i.bm = or disjoint i8 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !58
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !17
  %i.bq = lshr i64 %1, 28
  %i.br = and i64 %i.bq, 15
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN4Luau7CodeGen3X64L16getScaleEncodingEhE6scales, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = shl i8 %i.bt, 6
  %i.bv = or disjoint i8 %i.bu, 36
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !58
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !17
  br i1 %.not, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6413placeImm8Or32Ei.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.a = and i8 %.sroa.2.0.extract.trunc, 7       ; 3 uses
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !58
  store i8 102, ptr %i.d, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i8 %i.a, 4
  %i.g = icmp eq i8 %i.a, 1                       ; 2 uses
  %i.h = icmp ugt i8 %.sroa.2.0.extract.trunc, 31
  %i.i = and i1 %i.h, %i.g
  %i.j = select i1 %i.i, i32 64, i32 0            ; 2 uses
  %i.k = trunc nuw nsw i32 %i.j to i8
  %i.l = select i1 %i.f, i8 8, i8 %i.k            ; 2 uses
  %i.m = and i64 %2, 255
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i8 %.sroa.2.0.extract.trunc, 6
  %i.p = and i8 %i.o, 1
  %i.q = or disjoint i8 %i.l, %i.p
  %i.r = zext nneg i8 %i.q to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %i.s = lshr i8 %.sroa.2.0.extract.trunc, 4
  %i.t = and i8 %i.s, 4
  %i.u = zext nneg i8 %i.t to i32
  %i.v = trunc i64 %2 to i32
  %i.w = lshr i32 %i.v, 13
  %i.x = and i32 %i.w, 2
  %i.y = or disjoint i32 %i.x, %i.u
  %i.z = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.aa = and i8 %i.z, 1
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.ad = icmp eq i8 %i.ac, 1
  %i.ae = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.af = and i1 %i.ae, %i.ad
  %i.ag = select i1 %i.af, i32 64, i32 0
  %i.ah = zext nneg i8 %i.l to i32
  %i.ai = or disjoint i32 %i.y, %i.ab
  %i.aj = or disjoint i32 %i.ai, %i.ag
  %i.ak = or i32 %i.aj, %i.ah
  %i.al = or i32 %i.ak, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.al, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = trunc nuw nsw i32 %.0.i to i8
  %i.an = or i8 %i.am, 64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !58
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.ar = select i1 %i.g, i8 %3, i8 %4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.as, align 8, !tbaa !58
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !17
  %sum.shift.i = lshr i64 %1, 19
  %i.av = trunc i64 %sum.shift.i to i8
  %i.aw = and i8 %i.av, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.aw, i32 noundef 0)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = and i64 %i.bf, 4294967280
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndRegENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967280
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645mov64ENS1_11RegisterX64El(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = add i64 %i.i, -4611686018427387891
  %i.k = icmp ult i64 %i.j, 13
  br i1 %i.k, label %bb.d, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = add i64 %i.n, -4611686018427387891
  %i.p = icmp ult i64 %i.o, 13
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.l, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.14, i64 noundef 13) ; 0 uses
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %.sroa.2.0.insert.insert)
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.15, i64 noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.s = and i8 %1, 7                             ; 2 uses
  %i.t = icmp eq i8 %i.s, 4
  %i.u = lshr i8 %1, 6
  %i.v = and i8 %i.u, 1
  %3 = icmp eq i8 %i.s, 1
  %4 = icmp ugt i8 %1, 31
  %5 = and i1 %4, %3
  %6 = select i1 %5, i8 64, i8 0
  %7 = select i1 %i.t, i8 8, i8 %6
  %8 = or disjoint i8 %7, %i.v                    ; 2 uses
  %.not.i = icmp eq i8 %8, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = or i8 %8, 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.x, align 8, !tbaa !58
  store i8 %i.w, ptr %i.y, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.h, %bb.i
  %i.aa = lshr i8 %1, 3
  %i.ab = or i8 %i.aa, -72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !58
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !17
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  store i64 %2, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !68
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, 4294967280
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.j:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %.sroa.4.0.extract.shift = lshr i64 %1, 16      ; 3 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i64 %1, 24      ; 3 uses
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i64 %1, 32     ; 2 uses
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32 ; 7 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.ac [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %.sroa.4.0.extract.shift, 7
  %i.b = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.a
  %i.c = lshr i64 %1, 19
  %i.d = and i64 %i.c, 31
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.114, ptr noundef %i.f)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %.sroa.4.0.extract.trunc, 0
  %i.h = and i8 %.sroa.9.0.extract.trunc, 15
  %.not18 = icmp eq i8 %i.h, 0                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %.sroa.9.0.extract.shift, 15
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6411getSizeNameENS1_7SizeX64EE9sizeNames, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.115, ptr noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.116, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.ac

bb.g:                                             ; preds = %bb.c
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i64 %.sroa.9.0.extract.shift, 15
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6411getSizeNameENS1_7SizeX64EE9sizeNames, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.115, ptr noundef %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.117)
  %.not25 = icmp eq i8 %.sroa.4.0.extract.trunc, -128 ; 2 uses
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = and i64 %.sroa.4.0.extract.shift, 7
  %i.p = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.o
  %i.q = lshr i64 %1, 19
  %i.r = and i64 %i.q, 31
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.114, ptr noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = and i64 %1, 65280
  %.not26 = icmp eq i64 %i.u, 32768
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = select i1 %.not25, ptr @.str.120, ptr @.str.119
  %i.w = and i64 %.sroa.2.0.extract.shift, 7
  %i.x = getelementptr inbounds nuw [128 x i8], ptr @_ZZN4Luau7CodeGen3X6418AssemblyBuilderX6415getRegisterNameENS1_11RegisterX64EE5names, i64 %i.w
  %i.y = lshr i64 %1, 11
  %i.z = and i64 %i.y, 31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.v, ptr noundef %i.ab)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = lshr i8 %.sroa.9.0.extract.trunc, 4     ; 2 uses
  %.not16 = icmp eq i8 %i.ac, 1
  br i1 %.not16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = zext nneg i8 %i.ac to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.121, i32 noundef %i.ad)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not17 = icmp eq i64 %.sroa.12.0.extract.shift, 0
  br i1 %.not17, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond = icmp ult i64 %1, 42949672960
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.122, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ae = icmp sgt i32 %.sroa.12.0.extract.trunc, 0
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.123, i32 noundef %.sroa.12.0.extract.trunc)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.af = sub nsw i32 0, %.sroa.12.0.extract.trunc
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.124, i32 noundef %i.af)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s, %bb.o
  %i.ag = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = icmp eq i64 %i.al, 4611686018427387903
  br i1 %i.am, label %bb.w, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull @.str.125, i64 noundef 1) ; 0 uses
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull @.str.125, i64 noundef 1) ; 0 uses
  br label %bb.ac

end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E:bb.a
  %i.s = lshr i32 %i.r, 13
  %i.t = and i32 %i.s, 2
  %i.u = or disjoint i32 %i.t, %i.q
  %i.v = lshr i8 %.sroa.3.0.extract.trunc, 6
  %i.w = and i8 %i.v, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = and i8 %.sroa.3.0.extract.trunc, 7
  %i.z = icmp eq i8 %i.y, 1
  %i.aa = icmp ugt i8 %.sroa.3.0.extract.trunc, 31
  %i.ab = and i1 %i.aa, %i.z
  %i.ac = select i1 %i.ab, i32 64, i32 0
  %i.ad = zext nneg i8 %i.h to i32
  %i.ae = or disjoint i32 %i.u, %i.x
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = or i32 %i.ag, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.ah, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = trunc nuw nsw i32 %.0 to i8
  %i.aj = or i8 %i.ai, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !58
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6420placeRegAndModRegMemENS1_10OperandX64ES3_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(268) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %sum.shift = lshr i64 %1, 19
  %i.a = trunc i64 %sum.shift to i8
  %i.b = and i8 %i.a, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.b, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645movzxENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.351.0.insert.ext = zext i8 %1 to i64
  %.sroa.351.0.insert.shift = shl nuw nsw i64 %.sroa.351.0.insert.ext, 16
  %.sroa.250.0.insert.insert = or disjoint i64 %.sroa.351.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.17, i64 %.sroa.250.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.521.0.extract.shift = lshr i64 %2, 16
  %.sroa.521.0.extract.trunc = trunc i64 %.sroa.521.0.extract.shift to i8 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i8 %.sroa.521.0.extract.trunc, 7     ; 2 uses
  %i.g = and i8 %.sroa.6.0.extract.trunc, 15
  %i.h = select i1 %i.e, i8 %i.f, i8 %i.g
  %i.i = and i8 %1, 7                             ; 2 uses
  %i.j = icmp eq i8 %i.i, 4
  %i.k = icmp eq i8 %i.i, 1
  %i.l = icmp ugt i8 %1, 31
  %i.m = and i1 %i.l, %i.k
  %i.n = select i1 %i.m, i32 64, i32 0            ; 2 uses
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = select i1 %i.j, i8 8, i8 %i.o            ; 2 uses
  %i.q = icmp eq i64 %i.d, 2
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i8 %1, 6
  %i.s = and i8 %i.r, 1
  %i.t = or disjoint i8 %i.p, %i.s
  %i.u = zext nneg i8 %i.t to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = lshr i8 %1, 4
  %i.w = and i8 %i.v, 4
  %i.x = zext nneg i8 %i.w to i32
  %i.y = trunc i64 %2 to i32
  %i.z = lshr i32 %i.y, 13
  %i.aa = and i32 %i.z, 2
  %i.ab = or disjoint i32 %i.aa, %i.x
  %i.ac = lshr i8 %.sroa.521.0.extract.trunc, 6
  %i.ad = and i8 %i.ac, 1
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = icmp eq i8 %i.f, 1
  %i.ag = icmp ugt i8 %.sroa.521.0.extract.trunc, 31
  %i.ah = and i1 %i.ag, %i.af
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %i.aj = zext nneg i8 %i.p to i32
  %i.ak = or disjoint i32 %i.ab, %i.ae
  %i.al = or disjoint i32 %i.ak, %i.ai
  %i.am = or i32 %i.al, %i.aj
  %i.an = or i32 %i.am, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.u, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = trunc nuw nsw i32 %.0.i to i8
  %i.ap = or i8 %i.ao, 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !58
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.at, align 8, !tbaa !58
  store i8 15, ptr %i.au, align 1, !tbaa !17
  %i.aw = icmp eq i8 %i.h, 1
  %i.ax = select i1 %i.aw, i8 -74, i8 -73
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.at, align 8, !tbaa !58
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !17
  %i.ba = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.ba, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !68
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !59
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 4294967280
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643divENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.18, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 6)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.522.0.extract.shift = lshr i64 %2, 16
  %.sroa.522.0.extract.trunc = trunc i64 %.sroa.522.0.extract.shift to i8 ; 4 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %i.d = and i64 %2, 255
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i8 %.sroa.522.0.extract.trunc, 7     ; 3 uses
  %i.g = and i8 %.sroa.6.0.extract.trunc, 15
  %i.h = select i1 %i.e, i8 %i.f, i8 %i.g
  %.sroa.0.0.extract.trunc.i = trunc i64 %2 to i8
  switch i8 %.sroa.0.0.extract.trunc.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 4
  %i.j = lshr i8 %.sroa.522.0.extract.trunc, 6
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.f, 1
  %i.m = icmp ugt i8 %.sroa.522.0.extract.trunc, 31
  %i.n = and i1 %i.m, %i.l
  %6 = select i1 %i.n, i8 64, i8 0
  %i.o = select i1 %i.i, i8 8, i8 %6
  %i.p = or disjoint i8 %i.o, %i.k
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = and i64 %2, 251658240
  %i.r = icmp eq i64 %i.q, 67108864
  %i.s = select i1 %i.r, i32 8, i32 0
  %i.t = trunc i64 %2 to i32
  %i.u = lshr i32 %i.t, 13
  %i.v = and i32 %i.u, 2
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = lshr i8 %.sroa.522.0.extract.trunc, 6
  %i.y = and i8 %i.x, 1
  %i.z = trunc nuw nsw i32 %i.w to i8
  %i.aa = or disjoint i8 %i.y, %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i8 [ %i.p, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = or i8 %.0.i, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !58
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.af = icmp eq i8 %i.h, 1
  %i.ag = select i1 %i.af, i8 %3, i8 %4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !58
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %5, i32 noundef 0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !68
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 4294967280
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644idivENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.19, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643mulENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.20, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644imulENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.21, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 5)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643negENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.22, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644not_ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.23, i64 %1, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643decENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.24, i64 %1, i8 noundef zeroext -2, i8 noundef zeroext -1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643incENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6419placeUnaryModRegMemEPKcNS1_10OperandX64Ehhh(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.25, i64 %1, i8 noundef zeroext -2, i8 noundef zeroext -1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644imulENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.21, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %1, 16
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8 ; 4 uses
  %i.d = and i8 %.sroa.3.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %i.f = icmp eq i8 %i.d, 1
  %i.g = icmp ugt i8 %.sroa.3.0.extract.trunc, 31
  %i.h = and i1 %i.g, %i.f
  %i.i = select i1 %i.h, i32 64, i32 0            ; 2 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = select i1 %i.e, i8 8, i8 %i.j            ; 2 uses
  %i.l = and i64 %2, 255
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i8 %.sroa.3.0.extract.trunc, 6
  %i.o = and i8 %i.n, 1
  %i.p = or disjoint i8 %i.k, %i.o
  %i.q = zext nneg i8 %i.p to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %i.r = lshr i8 %.sroa.3.0.extract.trunc, 4
  %i.s = and i8 %i.r, 4
  %i.t = zext nneg i8 %i.s to i32
  %i.u = trunc i64 %2 to i32
  %i.v = lshr i32 %i.u, 13
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.z = and i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.ac = icmp eq i8 %i.ab, 1
  %i.ad = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.ae = and i1 %i.ad, %i.ac
  %i.af = select i1 %i.ae, i32 64, i32 0
  %i.ag = zext nneg i8 %i.k to i32
  %i.ah = or disjoint i32 %i.x, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = or i32 %i.aj, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.d ], [ %i.ak, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = trunc nuw nsw i32 %.0.i to i8
  %i.am = or i8 %i.al, 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !58
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !58
  store i8 15, ptr %i.ar, align 1, !tbaa !17
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !58
  store i8 -81, ptr %i.at, align 1, !tbaa !17
  %sum.shift.i = lshr i64 %1, 19
  %i.av = trunc i64 %sum.shift.i to i8
  %i.aw = and i8 %i.av, 31
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.aw, i32 noundef 0)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68
end_hunk_2
begin_hunk_3_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_S5_:bb.a
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3)
  %i.n = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %bb.h, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7:    ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = icmp eq i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7
  %.sink11 = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit8 ], [ %i.u, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit7 ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink11, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %4)
  %i.aa = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9:    ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = icmp eq i64 %i.aj, 4611686018427387903
  br i1 %i.ak, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10: ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9
  %.sink12 = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10 ], [ %i.ah, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9 ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink12, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.055.0.extract.trunc.i = trunc i64 %1 to i8 ; 3 uses
  %.sroa.027.0.extract.trunc.i = trunc i64 %2 to i8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.26, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i8 %.sroa.055.0.extract.trunc.i, 1
  %or.cond.i = icmp ult i8 %.sroa.055.0.extract.trunc.i, 2
  %i.e = icmp eq i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond5.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -10, i8 noundef zeroext -9, i8 noundef zeroext -9, i8 noundef zeroext 0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i8 %.sroa.055.0.extract.trunc.i, 0
  %or.cond8.i = icmp ult i8 %.sroa.027.0.extract.trunc.i, 2
  %or.cond90.i = select i1 %i.f, i1 %or.cond8.i, i1 false
  br i1 %or.cond90.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext -124, i8 noundef zeroext -123)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.extract.trunc.i, 0
  %or.cond11.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond11.i, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i64 %1, i8 noundef zeroext -124, i8 noundef zeroext -123)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6411placeBinaryEPKcNS1_10OperandX64ES5_hhhhhhhh.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.27, i64 %1, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = shl i64 %1, 8
  %.sroa.3.0.insert.ext32 = and i64 %i.d, 117440512
  %i.e = and i64 %2, -251658241
  %.sroa.04.0.insert.insert = or disjoint i64 %i.e, %.sroa.3.0.insert.ext32
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegAndRegMemENS1_10OperandX64ES3_hh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %.sroa.04.0.insert.insert, i8 noundef zeroext -115, i8 noundef zeroext -115)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644pushENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.28, i64 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.d = and i8 %.sroa.2.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %2 = lshr i8 %.sroa.2.0.extract.trunc, 6
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %i.d, 1
  %5 = icmp ugt i8 %.sroa.2.0.extract.trunc, 31
  %6 = and i1 %5, %4
  %7 = select i1 %6, i8 64, i8 0
  %8 = select i1 %i.e, i8 8, i8 %7
  %9 = or disjoint i8 %8, %3                      ; 2 uses
  %.not.i = icmp eq i8 %9, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = or i8 %9, 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.g, align 8, !tbaa !58
  store i8 %i.f, ptr %i.h, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.c, %bb.d
  %i.j = lshr i8 %.sroa.2.0.extract.trunc, 3
  %i.k = and i8 %i.j, 7
  %i.l = or disjoint i8 %i.k, 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.m, align 8, !tbaa !58
  store i8 %i.l, ptr %i.n, align 1, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !68
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = and i64 %i.x, 4294967280
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.108, ptr noundef %1)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2)
  %i.a = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.109, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643popENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.29, i64 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.d = and i8 %.sroa.2.0.extract.trunc, 7       ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %2 = lshr i8 %.sroa.2.0.extract.trunc, 6
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %i.d, 1
  %5 = icmp ugt i8 %.sroa.2.0.extract.trunc, 31
  %6 = and i1 %5, %4
  %7 = select i1 %6, i8 64, i8 0
  %8 = select i1 %i.e, i8 8, i8 %7
  %9 = or disjoint i8 %8, %3                      ; 2 uses
  %.not.i = icmp eq i8 %9, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = or i8 %9, 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.g, align 8, !tbaa !58
  store i8 %i.f, ptr %i.h, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.c, %bb.d
  %i.j = lshr i8 %.sroa.2.0.extract.trunc, 3
  %i.k = or i8 %i.j, 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.l, align 8, !tbaa !58
  store i8 %i.k, ptr %i.m, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !68
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = and i64 %i.w, 4294967280
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643retEv(ptr noundef nonnull align 8 dereferenceable(268) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.30)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !58
  store i8 -61, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = and i64 %i.o, 4294967280
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKc(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.107, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645setccENS0_12ConditionX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L21setccTextForConditionE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %i.f, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.extract.trunc.i = trunc i64 %2 to i8
  %.sroa.4.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  switch i8 %.sroa.0.0.extract.trunc.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %.sroa.4.0.extract.trunc.i, 7     ; 2 uses
  %i.h = icmp eq i8 %i.g, 4
  %i.i = lshr i8 %.sroa.4.0.extract.trunc.i, 6
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.g, 1
  %i.l = icmp ugt i8 %.sroa.4.0.extract.trunc.i, 31
  %i.m = and i1 %i.l, %i.k
  %3 = select i1 %i.m, i8 64, i8 0
  %i.n = select i1 %i.h, i8 8, i8 %3
  %i.o = or disjoint i8 %i.n, %i.j
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = and i64 %2, 251658240
  %i.q = icmp eq i64 %i.p, 67108864
  %i.r = select i1 %i.q, i32 8, i32 0
  %i.s = trunc i64 %2 to i32
  %i.t = lshr i32 %i.s, 13
  %i.u = and i32 %i.t, 2
  %i.v = or disjoint i32 %i.r, %i.u
  %i.w = lshr i8 %.sroa.4.0.extract.trunc.i, 6
  %i.x = and i8 %i.w, 1
  %i.y = trunc nuw nsw i32 %i.v to i8
  %i.z = or disjoint i8 %i.x, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i8 [ %i.o, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = or i8 %.0.i, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !58
  store i8 15, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %1 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = or i8 %i.aj, -112
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !58
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext 0, i32 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !68
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967280
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644cmovENS0_12ConditionX64ENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, i8 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L20cmovTextForConditionE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %.sroa.352.0.insert.ext = zext i8 %2 to i64
  %.sroa.352.0.insert.shift = shl nuw nsw i64 %.sroa.352.0.insert.ext, 16
  %.sroa.251.0.insert.insert = or disjoint i64 %.sroa.352.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %i.f, i64 %.sroa.251.0.insert.insert, i64 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i8 %2, 7                             ; 2 uses
  %i.h = icmp eq i8 %i.g, 4
  %i.i = icmp eq i8 %i.g, 1
  %i.j = icmp ugt i8 %2, 31
  %i.k = and i1 %i.j, %i.i
  %i.l = select i1 %i.k, i32 64, i32 0            ; 2 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = select i1 %i.h, i8 8, i8 %i.m            ; 2 uses
  %i.o = and i64 %3, 255
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i8 %2, 6
  %i.r = and i8 %i.q, 1
  %i.s = or disjoint i8 %i.n, %i.r
  %i.t = zext nneg i8 %i.s to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %3, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %i.u = lshr i8 %2, 4
  %i.v = and i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i32
  %i.x = trunc i64 %3 to i32
  %i.y = lshr i32 %i.x, 13
  %i.z = and i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, %i.w
  %i.ab = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.ac = and i8 %i.ab, 1
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.af = icmp eq i8 %i.ae, 1
  %i.ag = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.ah = and i1 %i.ag, %i.af
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %i.aj = zext nneg i8 %i.n to i32
  %i.ak = or disjoint i32 %i.aa, %i.ad
  %i.al = or disjoint i32 %i.ak, %i.ai
  %i.am = or i32 %i.al, %i.aj
  %i.an = or i32 %i.am, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = trunc nuw nsw i32 %.0.i to i8
  %i.ap = or i8 %i.ao, 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !58
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.at, align 8, !tbaa !58
  store i8 15, ptr %i.au, align 1, !tbaa !17
  %i.aw = zext i8 %1 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = or i8 %i.ay, 64
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !58
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !17
  %i.bc = lshr i8 %2, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3, i8 noundef zeroext %i.bc, i32 noundef 0)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !59
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, 4294967280
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Luau7CodeGen3X64L19jccTextForConditionE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4Luau7CodeGen3X64L16codeForConditionE, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i8 15, ptr %i.g, align 1, !tbaa !17
  %i.i = xor i8 %i.e, -128
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
end_hunk_3
begin_hunk_4_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX643bsrENS1_11RegisterX64ENS1_10OperandX64E:bb.a
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %i.r = lshr i8 %1, 4
  %i.s = and i8 %i.r, 4
  %i.t = zext nneg i8 %i.s to i32
  %i.u = trunc i64 %2 to i32
  %i.v = lshr i32 %i.u, 13
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.z = and i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.ac = icmp eq i8 %i.ab, 1
  %i.ad = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.ae = and i1 %i.ad, %i.ac
  %i.af = select i1 %i.ae, i32 64, i32 0
  %i.ag = zext nneg i8 %i.k to i32
  %i.ah = or disjoint i32 %i.x, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = or i32 %i.aj, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.d ], [ %i.ak, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = trunc nuw nsw i32 %.0.i to i8
  %i.am = or i8 %i.al, 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !58
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !58
  store i8 15, ptr %i.ar, align 1, !tbaa !17
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !58
  store i8 -67, ptr %i.at, align 1, !tbaa !17
  %i.av = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.av, i32 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !68
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !59
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = and i64 %i.be, 4294967280
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643bsfENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.314.0.insert.ext = zext i8 %1 to i64
  %.sroa.314.0.insert.shift = shl nuw nsw i64 %.sroa.314.0.insert.ext, 16
  %.sroa.213.0.insert.insert = or disjoint i64 %.sroa.314.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.38, i64 %.sroa.213.0.insert.insert, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7                             ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %i.f = icmp eq i8 %i.d, 1
  %i.g = icmp ugt i8 %1, 31
  %i.h = and i1 %i.g, %i.f
  %i.i = select i1 %i.h, i32 64, i32 0            ; 2 uses
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = select i1 %i.e, i8 8, i8 %i.j            ; 2 uses
  %i.l = and i64 %2, 255
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i8 %1, 6
  %i.o = and i8 %i.n, 1
  %i.p = or disjoint i8 %i.k, %i.o
  %i.q = zext nneg i8 %i.p to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 16
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8 ; 3 uses
  %i.r = lshr i8 %1, 4
  %i.s = and i8 %i.r, 4
  %i.t = zext nneg i8 %i.s to i32
  %i.u = trunc i64 %2 to i32
  %i.v = lshr i32 %i.u, 13
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = lshr i8 %.sroa.3.0.extract.trunc.i, 6
  %i.z = and i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = and i8 %.sroa.3.0.extract.trunc.i, 7
  %i.ac = icmp eq i8 %i.ab, 1
  %i.ad = icmp ugt i8 %.sroa.3.0.extract.trunc.i, 31
  %i.ae = and i1 %i.ad, %i.ac
  %i.af = select i1 %i.ae, i32 64, i32 0
  %i.ag = zext nneg i8 %i.k to i32
  %i.ah = or disjoint i32 %i.x, %i.aa
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = or i32 %i.aj, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.d ], [ %i.ak, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = trunc nuw nsw i32 %.0.i to i8
  %i.am = or i8 %i.al, 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !58
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit: ; preds = %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !58
  store i8 15, ptr %i.ar, align 1, !tbaa !17
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !58
  store i8 -68, ptr %i.at, align 1, !tbaa !17
  %i.av = lshr i8 %1, 3
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2, i8 noundef zeroext %i.av, i32 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !68
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !59
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = and i64 %i.be, 4294967280
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.h:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64ENS1_10OperandX64E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645bswapENS1_11RegisterX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.39, i64 %.sroa.2.0.insert.insert)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7                             ; 2 uses
  %i.e = icmp eq i8 %i.d, 4
  %i.f = lshr i8 %1, 6
  %i.g = and i8 %i.f, 1
  %2 = icmp eq i8 %i.d, 1
  %3 = icmp ugt i8 %1, 31
  %4 = and i1 %3, %2
  %5 = select i1 %4, i8 64, i8 0
  %6 = select i1 %i.e, i8 8, i8 %5
  %7 = or disjoint i8 %6, %i.g                    ; 2 uses
  %.not.i = icmp eq i8 %7, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = or i8 %7, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.i, align 8, !tbaa !58
  store i8 %i.h, ptr %i.j, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.l, align 8, !tbaa !58
  store i8 15, ptr %i.m, align 1, !tbaa !17
  %i.o = lshr i8 %1, 3
  %i.p = and i8 %i.o, 7
  %i.q = or disjoint i8 %i.p, -56
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.l, align 8, !tbaa !58
  store i8 %i.q, ptr %i.r, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !68
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = and i64 %i.ab, 4294967280
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.e:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_11RegisterX64E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643nopEj(ptr noundef nonnull align 8 dereferenceable(268) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 75 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit
  %.016 = phi i32 [ %1, %.lr.ph ], [ %i.e, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit ] ; 3 uses
  %i.e = add i32 %.016, -9
  %i.f = load i8, ptr %i.a, align 8, !tbaa !51, !range !22, !noundef !23
  %i.g = trunc nuw i8 %i.f to i1                  ; 9 uses
  switch i32 %.016, label %bb.z [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.k
    i32 5, label %bb.n
    i32 6, label %bb.q
    i32 7, label %bb.t
    i32 8, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.40)
  br label %bb.ac

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.41, i32 noundef 2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.b, align 8, !tbaa !58
  store i8 102, ptr %i.h, align 1, !tbaa !17
  br label %bb.ac

bb.h:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.42, i32 noundef 3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.j, align 1, !tbaa !17
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.l, align 1, !tbaa !17
  br label %bb.ac

bb.k:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.42, i32 noundef 4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.n, align 1, !tbaa !17
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.p, align 1, !tbaa !17
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.b, align 8, !tbaa !58
  store i8 64, ptr %i.r, align 1, !tbaa !17
  br label %bb.ac

bb.n:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.43, i32 noundef 5)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.t, align 1, !tbaa !17
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.v, align 1, !tbaa !17
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.b, align 8, !tbaa !58
  store i8 68, ptr %i.x, align 1, !tbaa !17
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !58
  store i8 0, ptr %i.z, align 1, !tbaa !17
  br label %bb.ac

bb.q:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.44, i32 noundef 6)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !58
  store i8 102, ptr %i.ab, align 1, !tbaa !17
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.ad, align 1, !tbaa !17
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !58
  store i8 31, ptr %i.af, align 1, !tbaa !17
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !58
  store i8 68, ptr %i.ah, align 1, !tbaa !17
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !58
  store i8 0, ptr %i.aj, align 1, !tbaa !17
  br label %bb.ac

bb.t:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.42, i32 noundef 7)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.b, align 8, !tbaa !58
  store i8 15, ptr %i.al, align 1, !tbaa !17
end_hunk_4
begin_hunk_5_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX645f32x4Effff:bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  store float %2, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8, !tbaa !56
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.t
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store float %3, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %0, align 8, !tbaa !56
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.t
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  store float %4, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.ai = load ptr, ptr %0, align 8, !tbaa !56
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %.neg = sub i64 %i.u, %i.aj
  %i.al = add i64 %.neg, %i.ak
  %.sroa.5.0.insert.ext = shl i64 %i.al, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, 352354305
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 352354305, -3942612990) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645f64x2Edd(ptr noundef nonnull align 8 dereferenceable(268) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = shl i64 %i.i, 1
  %i.k = icmp sgt i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.i)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.m, ptr %i.d, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.n, i64 %i.i, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.i, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !57
  %i.r = add i64 %i.q, %i.i
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.s = phi i64 [ %i.r, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.b, %bb.a ]
  %i.t = and i64 %i.s, -16                        ; 2 uses
  %i.u = add i64 %i.t, -16                        ; 3 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !57
  %i.v = load ptr, ptr %0, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store double %1, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !tbaa !56
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  store double %2, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = load ptr, ptr %0, align 8, !tbaa !56
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg = sub i64 %i.u, %i.ad
  %i.af = add i64 %.neg, %i.ae
  %.sroa.5.0.insert.ext = shl i64 %i.af, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, 352354305
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 268468225, -4026499070) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645bytesEPKvmm(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = shl i64 %i.i, 1
  %i.k = icmp sgt i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.i)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.m, ptr %i.d, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.n, i64 %i.i, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.i, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !57
  %i.r = add i64 %i.q, %i.i
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.s = phi i64 [ %i.r, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.b, %bb.a ]
  %i.t = sub i64 %i.s, %2
  %i.u = sub i64 0, %3
  %i.v = and i64 %i.t, %i.u                       ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !57
  %i.w = load ptr, ptr %0, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %1, i64 %2, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = load ptr, ptr %0, align 8, !tbaa !56
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %.neg = sub i64 %i.v, %i.ab
  %i.ad = add i64 %.neg, %i.ac
  %.sroa.5.0.insert.ext = shl i64 %i.ad, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, 268468225
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4Luau7CodeGen3X6418AssemblyBuilderX6419getInstructionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(268) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6423placeBinaryRegMemAndImmENS1_10OperandX64ES3_hhhh(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i64 %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.639.0.extract.shift = lshr i64 %1, 16
  %.sroa.639.0.extract.trunc = trunc i64 %.sroa.639.0.extract.shift to i8 ; 4 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 24
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.1.0.extract.shift = lshr i64 %2, 32      ; 3 uses
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i8 %.sroa.639.0.extract.trunc, 7     ; 3 uses
  %i.d = and i8 %.sroa.7.0.extract.trunc, 15
  %i.e = select i1 %i.b, i8 %i.c, i8 %i.d
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i8
  switch i8 %.sroa.0.0.extract.trunc.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.c, 4
  %i.g = lshr i8 %.sroa.639.0.extract.trunc, 6
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.c, 1
  %i.j = icmp ugt i8 %.sroa.639.0.extract.trunc, 31
  %i.k = and i1 %i.j, %i.i
  %7 = select i1 %i.k, i8 64, i8 0
  %i.l = select i1 %i.f, i8 8, i8 %7
  %i.m = or disjoint i8 %i.l, %i.h
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = and i64 %1, 251658240
  %i.o = icmp eq i64 %i.n, 67108864
  %i.p = select i1 %i.o, i32 8, i32 0
  %i.q = trunc i64 %1 to i32
  %i.r = lshr i32 %i.q, 13
  %i.s = and i32 %i.r, 2
  %i.t = or disjoint i32 %i.p, %i.s
  %i.u = lshr i8 %.sroa.639.0.extract.trunc, 6
  %i.v = and i8 %i.u, 1
  %i.w = trunc nuw nsw i32 %i.t to i8
  %i.x = or disjoint i8 %i.v, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i8 [ %i.m, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = or i8 %.0.i, 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !58
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.a, %bb.d, %bb.e
  %i.ac = icmp eq i8 %i.e, 1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !58
  store i8 %3, ptr %i.ae, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 1)
  %i.ag = trunc i64 %.sroa.1.0.extract.shift to i8
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !58
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.aj = trunc i64 %.sroa.1.0.extract.shift to i8 ; 2 uses
  %i.ak = sext i8 %i.aj to i32
  %i.al = icmp ne i32 %i.ak, %.sroa.1.0.extract.trunc
  %.not = icmp eq i8 %4, %5
  %or.cond = or i1 %i.al, %.not
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !58
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %5, ptr %i.an, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 1)
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !58 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !58
  store i8 %i.aj, ptr %i.ap, align 1, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %4, ptr %i.an, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 4)
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.1.0.extract.trunc, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store ptr %i.as, ptr %i.am, align 8, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !68
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = and i64 %i.bc, 4294967280
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646extendEv(ptr noundef nonnull align 8 dereferenceable(268) %0)
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX646commitEv.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logEPKcNS1_10OperandX64ES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.108, ptr noundef %1)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %2)
  %i.a = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.c, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.h, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %3)
  %i.n = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %bb.h, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9:    ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = icmp eq i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9
  %.sink15 = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit10 ], [ %i.u, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit9 ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink15, ptr noundef nonnull @.str.110, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %4)
  %i.aa = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit11

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.310) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit11:   ; preds = %bb.l
end_hunk_5
