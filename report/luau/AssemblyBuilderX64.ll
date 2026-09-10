Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AssemblyBuilderX64?download=true
inline.NumInlined: 717
inline.NumDeleted: 189
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelEv:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.m, align 4, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.p, ptr %i.l, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !62   ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.312) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #22 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i32 -1, ptr %i.ac, align 4, !tbaa !74
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !62
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !51, !range !22, !noundef !23
  %i.al = trunc nuw i8 %i.ak to i1
  %.sroa.3.0.insert.ext5 = shl i64 %i.j, 32
  %.sroa.01.0.insert.ext2 = zext i32 %i.b to i64
  %.sroa.01.0.insert.insert4 = or disjoint i64 %.sroa.3.0.insert.ext5, %.sroa.01.0.insert.ext2 ; 2 uses
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit._crit_edge

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %.sroa.01.0.insert.insert4)
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit._crit_edge

_ZNSt6vectorIjSaIjEE9push_backEOj.exit._crit_edge: ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.g
  ret i64 %.sroa.01.0.insert.insert4
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull @.str.111, i32 noundef %.sroa.0.0.extract.trunc)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !72
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !53
  store i32 %i.d, ptr %1, align 4, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.h, align 4, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.k, ptr %i.g, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !62   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775804
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.312) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951)
  %i.u = select i1 %i.s, i64 2305843009213693951, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store i32 -1, ptr %i.x, align 4, !tbaa !74
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !62
  store ptr %i.z, ptr %i.g, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !63
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = load i32, ptr %1, align 4, !tbaa !72
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  store i32 %i.al, ptr %i.as, align 4, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load i8, ptr %i.at, align 8, !tbaa !51, !range !22, !noundef !23
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643logENS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %.sroa.0.0.copyload)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 318799873, -3976167422) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643i32Ei(ptr noundef nonnull align 8 dereferenceable(268) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i32 %1, -1                      ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load i64, ptr %i.h, align 8, !tbaa !78
  %i.j = add i64 %i.i, -1                         ; 3 uses
  %i.k = zext i32 %1 to i64
  %i.l = and i64 %i.j, %i.k
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.r, %bb.g ]
  %.01931.i.i = phi i64 [ %i.l, %bb.d ], [ %i.t, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01931.i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !74   ; 2 uses
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %i.o, %i.f
  br i1 %i.q, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.s = add i64 %i.r, %.01931.i.i
  %i.t = and i64 %i.s, %i.j
  %.not.i.i = icmp ugt i64 %i.r, %i.j
  br i1 %.not.i.i, label %.critedge, label %bb.e, !llvm.loop !0

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01931.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !74
  br label %bb.u

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %i.z = icmp ult i64 %i.y, 4
  br i1 %i.z, label %bb.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.i:                                             ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 8 uses
  %i.ag = shl i64 %i.af, 1
  %i.ah = icmp sgt i64 %i.af, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.af)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp slt i64 %i.af, 0
  br i1 %i.ai, label %bb.l, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.l, %bb.k, %bb.j
  %i.ak = phi ptr [ %.pre.i, %bb.j ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ], [ %i.ac, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ak, i64 %i.af, i1 false)
  %i.am = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.af, i1 false)
  %i.an = load i64, ptr %i.x, align 8, !tbaa !57
  %i.ao = add i64 %i.an, %i.af
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %.critedge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.ap = phi i64 [ %i.ao, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.y, %.critedge ]
  %i.aq = and i64 %i.ap, -4
  %i.ar = add i64 %i.aq, -4                       ; 3 uses
  store i64 %i.ar, ptr %i.x, align 8, !tbaa !57
  %i.as = load ptr, ptr %0, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i32 %1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = load ptr, ptr %0, align 8, !tbaa !56
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %.neg = sub i64 %i.ar, %i.ax
  %i.az = add i64 %.neg, %i.ay
  %i.ba = trunc i64 %i.az to i32                  ; 3 uses
  br i1 %.not, label %bb.u, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !77 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !78 ; 4 uses
  %i.bg = mul i64 %i.bf, 3
  %i.bh = lshr i64 %i.bg, 2
  %.not.i.i15 = icmp ult i64 %i.bd, %i.bh
  br i1 %.not.i.i15, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp eq i64 %i.bd, 0
  br i1 %i.bi, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !74 ; 2 uses
  %i.bl = icmp eq i32 %1, %i.bk
  br i1 %i.bl, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %i.bf, -1                       ; 3 uses
  %i.bn = zext i32 %1 to i64
  %i.bo = and i64 %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.01832.i.i.i = phi i64 [ 0, %bb.p ], [ %i.bu, %bb.s ]
  %.01931.i.i.i = phi i64 [ %i.bo, %bb.p ], [ %i.bw, %bb.s ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.01931.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !74 ; 2 uses
  %i.bs = icmp eq i32 %i.br, %1
  br i1 %i.bs, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp eq i32 %i.br, %i.bk
  br i1 %i.bt, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.bv = add i64 %i.bu, %.01931.i.i.i
  %i.bw = and i64 %i.bv, %i.bm
  %.not.i.i.i16 = icmp ugt i64 %i.bu, %i.bm
  br i1 %.not.i.i.i16, label %.loopexit.i.i, label %bb.q, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  %.pre.i17 = load i64, ptr %i.be, align 8, !tbaa !78
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.q, %.loopexit.i.i, %bb.m
  %i.bx = phi i64 [ %.pre.i17, %.loopexit.i.i ], [ %i.bf, %bb.m ], [ %i.bf, %bb.q ]
  %i.by = add i64 %i.bx, -1                       ; 3 uses
  %i.bz = zext i32 %1 to i64
  %i.ca = and i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = load ptr, ptr %i.bb, align 8, !tbaa !61 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !74 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !74 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, %i.cd
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.t, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.ca, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.co, %bb.t ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.02134.i.lcssa5.i
  store i32 %1, ptr %i.ch, align 4, !tbaa !80
  %i.ci = load i64, ptr %i.bc, align 8, !tbaa !77
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bc, align 8, !tbaa !77
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.t
  %i.ck = phi i32 [ %i.cq, %bb.t ], [ %i.cf, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.co, %bb.t ], [ %i.ca, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.cm, %bb.t ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.cl = icmp eq i32 %i.ck, %1
  br i1 %i.cl, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.cm = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.cn = add i64 %i.cm, %.02134.i7.i
  %i.co = and i64 %i.cn, %i.by                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.cm, %i.by
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !74 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.cd
  br i1 %i.cr, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %i.cs = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.ba, ptr %i.cu, align 4, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit, %bb.h
  %.sroa.9.0 = phi i32 [ %i.w, %bb.h ], [ %i.ba, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit ], [ %i.ba, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit ]
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 318799873
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.f

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
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  %.pre = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.i, 0
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.m, ptr %i.d, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.n, i64 %i.i, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.i, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !57
  %i.r = add i64 %i.q, %i.i
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.a
  %i.s = phi i64 [ %i.r, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ %i.b, %bb.a ]
  %i.t = sub i64 %i.s, %1
  %i.u = sub i64 0, %2
  %i.v = and i64 %i.t, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !57
  ret i64 %i.v
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 335577089, -3959390206) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643i64El(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, -1                      ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = icmp eq i64 %1, %i.f
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %1, %bb.d ], [ %i.q, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.p, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.j            ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.01929.i.i ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82   ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %i.m, %i.f
  br i1 %i.o, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.q = add i64 %i.p, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.p, %i.j
  br i1 %.not.i.i, label %.critedge, label %bb.e, !llvm.loop !1

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !74
  br label %bb.t

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.v = icmp ult i64 %i.u, 8
  br i1 %i.v, label %bb.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.i:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = shl i64 %i.ab, 1
  %i.ad = icmp sgt i64 %i.ab, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.ab)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %bb.l, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.af
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.af, ptr %i.w, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.l, %bb.k, %bb.j
  %i.ag = phi ptr [ %.pre.i, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ag, i64 %i.ab, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ab, i1 false)
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !57
  %i.ak = add i64 %i.aj, %i.ab
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %.critedge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.al = phi i64 [ %i.ak, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.u, %.critedge ]
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, -8                       ; 3 uses
  store i64 %i.an, ptr %i.t, align 8, !tbaa !57
  %i.ao = load ptr, ptr %0, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i64 %1, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.as = load ptr, ptr %0, align 8, !tbaa !56
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %.neg = sub i64 %i.an, %i.at
  %i.av = add i64 %.neg, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  br i1 %.not, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !83 ; 4 uses
  %i.bc = mul i64 %i.bb, 3
  %i.bd = lshr i64 %i.bc, 2
  %.not.i.i15 = icmp ult i64 %i.az, %i.bd
  br i1 %.not.i.i15, label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq i64 %i.az, 0
  br i1 %i.be, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !82 ; 2 uses
  %i.bh = icmp eq i64 %1, %i.bg
  br i1 %i.bh, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add i64 %i.bb, -1                       ; 2 uses
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i.i = phi i64 [ %1, %bb.p ], [ %i.bp, %bb.s ]
  %.01828.i.i.i = phi i64 [ 0, %bb.p ], [ %i.bo, %bb.s ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.bi       ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.01929.i.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !82 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %1
  br i1 %i.bm, label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp eq i64 %i.bl, %i.bg
  br i1 %i.bn, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.bp = add i64 %i.bo, %.01929.i.i.i
  %.not.i.i.i16 = icmp ugt i64 %i.bo, %i.bi
  br i1 %.not.i.i.i16, label %.loopexit.i.i, label %bb.q, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  tail call void @_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ax)
  %.pre.i17 = load i64, ptr %i.ba, align 8, !tbaa !83
  br label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.q, %.loopexit.i.i, %bb.m
  %i.bq = phi i64 [ %.pre.i17, %.loopexit.i.i ], [ %i.bb, %bb.m ], [ %i.bb, %bb.q ]
  %i.br = add i64 %i.bq, -1                       ; 3 uses
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !82 ; 2 uses
  %.02131.i5.i = and i64 %i.br, %1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.02131.i5.i ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !82 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.bu
  br i1 %i.bx, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i
  %i.by = icmp eq i64 %i.bw, %1
  br i1 %i.by, label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, label %.lr.ph

._crit_edge.i:                                    ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i
  %.lcssa.i = phi ptr [ %i.bv, %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i ], [ %i.ce, %.lr.ph ] ; 2 uses
  store i64 %1, ptr %.lcssa.i, align 8, !tbaa !85
  %i.bz = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.ay, align 8, !tbaa !81
  br label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.cb = icmp eq i64 %i.cf, %1
  br i1 %i.cb, label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02030.i6.i29 = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02131.i7.i28 = phi i64 [ %.02131.i.i, %.lr.ph.i ], [ %.02131.i5.i, %.lr.ph.i.preheader ]
  %i.cc = add i64 %.02030.i6.i29, 1               ; 3 uses
  %i.cd = add i64 %i.cc, %.02131.i7.i28
  %.not.i3.i = icmp ule i64 %i.cc, %i.br
  tail call void @llvm.assume(i1 %.not.i3.i)
  %.02131.i.i = and i64 %i.cd, %i.br              ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.02131.i.i ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.bu
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %i.ch = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.bv, %.lr.ph.i.preheader ], [ %i.ce, %.lr.ph.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.aw, ptr %i.ci, align 4, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit, %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, %bb.h
  %.sroa.9.0 = phi i32 [ %i.s, %bb.h ], [ %i.aw, %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit ], [ %i.aw, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit ]
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 335577089
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 318799873, -3976167422) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643f32Ef(ptr noundef nonnull align 8 dereferenceable(268) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast float %1 to i32                  ; 9 uses
  %.not = icmp eq i32 %i.a, -1                    ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = icmp eq i32 %i.g, %i.a
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load i64, ptr %i.i, align 8, !tbaa !78
  %i.k = add i64 %i.j, -1                         ; 3 uses
  %i.l = zext i32 %i.a to i64
  %i.m = and i64 %i.k, %i.l
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.01832.i.i = phi i64 [ 0, %bb.d ], [ %i.s, %bb.g ]
  %.01931.i.i = phi i64 [ %i.m, %bb.d ], [ %i.u, %bb.g ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01931.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !74   ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.a
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %i.p, %i.g
  br i1 %i.r, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i64 %.01832.i.i, 1                   ; 3 uses
  %i.t = add i64 %i.s, %.01931.i.i
  %i.u = and i64 %i.t, %i.k
  %.not.i.i = icmp ugt i64 %i.s, %i.k
  br i1 %.not.i.i, label %.critedge, label %bb.e, !llvm.loop !0

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01931.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !74
  br label %bb.u

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.i:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 8 uses
  %i.ah = shl i64 %i.ag, 1
  %i.ai = icmp sgt i64 %i.ag, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.ag)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp slt i64 %i.ag, 0
  br i1 %i.aj, label %bb.l, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ak
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.l, %bb.k, %bb.j
  %i.al = phi ptr [ %.pre.i, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.ad, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.al, i64 %i.ag, i1 false)
  %i.an = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 0, i64 %i.ag, i1 false)
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !57
  %i.ap = add i64 %i.ao, %i.ag
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %.critedge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.aq = phi i64 [ %i.ap, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.z, %.critedge ]
  %i.ar = and i64 %i.aq, -4
  %i.as = add i64 %i.ar, -4                       ; 3 uses
  store i64 %i.as, ptr %i.y, align 8, !tbaa !57
  %i.at = load ptr, ptr %0, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store float %1, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ax = load ptr, ptr %0, align 8, !tbaa !56
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %.neg = sub i64 %i.as, %i.ay
  %i.ba = add i64 %.neg, %i.az
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  br i1 %.not, label %bb.u, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !77 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !78 ; 4 uses
  %i.bh = mul i64 %i.bg, 3
  %i.bi = lshr i64 %i.bh, 2
  %.not.i.i14 = icmp ult i64 %i.be, %i.bi
  br i1 %.not.i.i14, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp eq i64 %i.be, 0
  br i1 %i.bj, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !74 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, %i.a
  br i1 %i.bm, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = add i64 %i.bg, -1                       ; 3 uses
  %i.bo = zext i32 %i.a to i64
  %i.bp = and i64 %i.bn, %i.bo
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.01832.i.i.i = phi i64 [ 0, %bb.p ], [ %i.bv, %bb.s ]
  %.01931.i.i.i = phi i64 [ %i.bp, %bb.p ], [ %i.bx, %bb.s ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.01931.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !74 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, %i.a
  br i1 %i.bt, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i32 %i.bs, %i.bl
  br i1 %i.bu, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = add i64 %.01832.i.i.i, 1                ; 3 uses
  %i.bw = add i64 %i.bv, %.01931.i.i.i
  %i.bx = and i64 %i.bw, %i.bn
  %.not.i.i.i15 = icmp ugt i64 %i.bv, %i.bn
  br i1 %.not.i.i.i15, label %.loopexit.i.i, label %bb.q, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
  %.pre.i16 = load i64, ptr %i.bf, align 8, !tbaa !78
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.q, %.loopexit.i.i, %bb.m
  %i.by = phi i64 [ %.pre.i16, %.loopexit.i.i ], [ %i.bg, %bb.m ], [ %i.bg, %bb.q ]
  %i.bz = add i64 %i.by, -1                       ; 3 uses
  %i.ca = zext i32 %i.a to i64
  %i.cb = and i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !61 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !74 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %i.ce
  br i1 %i.ch, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.t, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i
  %.02134.i.lcssa5.i = phi i64 [ %i.cb, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ], [ %i.cp, %bb.t ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.02134.i.lcssa5.i
  store float %1, ptr %i.ci, align 4, !tbaa !80
  %i.cj = load i64, ptr %i.bd, align 8, !tbaa !77
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.bd, align 8, !tbaa !77
  br label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i, %bb.t
  %i.cl = phi i32 [ %i.cr, %bb.t ], [ %i.cg, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %.02134.i7.i = phi i64 [ %i.cp, %bb.t ], [ %i.cb, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ] ; 2 uses
  %.02035.i6.i = phi i64 [ %i.cn, %bb.t ], [ 0, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjiES2_IKjiENS0_16ItemInterfaceMapIjiEESt4hashIjESt8equal_toIjEE14rehash_if_fullERS4_.exit.i ]
  %i.cm = icmp eq i32 %i.cl, %i.a
  br i1 %i.cm, label %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.cn = add i64 %.02035.i6.i, 1                 ; 3 uses
  %i.co = add i64 %i.cn, %.02134.i7.i
  %i.cp = and i64 %i.co, %i.bz                    ; 3 uses
  %.not.i3.i = icmp ule i64 %i.cn, %i.bz
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !74 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, %i.ce
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %i.ct = phi i64 [ %.02134.i.lcssa5.i, %._crit_edge.i ], [ %.02134.i7.i, %.lr.ph.i ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.bb, ptr %i.cv, align 4, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit, %bb.h
  %.sroa.9.0 = phi i32 [ %i.x, %bb.h ], [ %i.bb, %_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEEixERKj.exit ], [ %i.bb, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit ]
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 318799873
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 335577089, -3959390206) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643f64Ed(ptr noundef nonnull align 8 dereferenceable(268) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 10 uses
  %.not = icmp eq i64 %i.a, -1                    ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i64, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.a
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load i64, ptr %i.i, align 8, !tbaa !83
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.a, %bb.d ], [ %i.r, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.q, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.01929.i.i ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.a
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %i.n, %i.g
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.r = add i64 %i.q, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i, label %.critedge, label %bb.e, !llvm.loop !1

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  br label %bb.t

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.w = icmp ult i64 %i.v, 8
  br i1 %i.w, label %bb.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

bb.i:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 8 uses
  %i.ad = shl i64 %i.ac, 1
  %i.ae = icmp sgt i64 %i.ac, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 noundef %i.ac)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.af = icmp slt i64 %i.ac, 0
  br i1 %i.af, label %bb.l, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.ag
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.l, %bb.k, %bb.j
  %i.ah = phi ptr [ %.pre.i, %bb.j ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.z, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 1 %i.ah, i64 %i.ac, i1 false)
  %i.aj = load ptr, ptr %0, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ac, i1 false)
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !57
  %i.al = add i64 %i.ak, %i.ac
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit: ; preds = %.critedge, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i
  %i.am = phi i64 [ %i.al, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i ], [ %i.v, %.critedge ]
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, -8                       ; 3 uses
  store i64 %i.ao, ptr %i.u, align 8, !tbaa !57
  %i.ap = load ptr, ptr %0, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store double %1, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.at = load ptr, ptr %0, align 8, !tbaa !56
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %.neg = sub i64 %i.ao, %i.au
  %i.aw = add i64 %.neg, %i.av
  %i.ax = trunc i64 %i.aw to i32                  ; 3 uses
  br i1 %.not, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83 ; 4 uses
  %i.bd = mul i64 %i.bc, 3
  %i.be = lshr i64 %i.bd, 2
  %.not.i.i14 = icmp ult i64 %i.ba, %i.be
  br i1 %.not.i.i14, label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %i.ba, 0
  br i1 %i.bf, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !82 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.a
  br i1 %i.bi, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = add i64 %i.bc, -1                       ; 2 uses
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i.i = phi i64 [ %i.a, %bb.p ], [ %i.bq, %bb.s ]
  %.01828.i.i.i = phi i64 [ 0, %bb.p ], [ %i.bp, %bb.s ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.bj       ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.01929.i.i.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !82 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.a
  br i1 %i.bn, label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp eq i64 %i.bm, %i.bh
  br i1 %i.bo, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.bq = add i64 %i.bp, %.01929.i.i.i
  %.not.i.i.i15 = icmp ugt i64 %i.bp, %i.bj
  br i1 %.not.i.i.i15, label %.loopexit.i.i, label %bb.q, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  tail call void @_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  %.pre.i16 = load i64, ptr %i.bb, align 8, !tbaa !83
  br label %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i

_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i: ; preds = %bb.q, %.loopexit.i.i, %bb.m
  %i.br = phi i64 [ %.pre.i16, %.loopexit.i.i ], [ %i.bc, %bb.m ], [ %i.bc, %bb.q ]
  %i.bs = add i64 %i.br, -1                       ; 3 uses
  %i.bt = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !82 ; 2 uses
  %.02131.i5.i = and i64 %i.bs, %i.a              ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.02131.i5.i ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !82 ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.bv
  br i1 %i.by, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i
  %i.bz = icmp eq i64 %i.bx, %i.a
  br i1 %i.bz, label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, label %.lr.ph

._crit_edge.i:                                    ; preds = %.lr.ph, %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i
  %.lcssa.i = phi ptr [ %i.bw, %_ZN4Luau6detail14DenseHashTableImSt4pairImiES2_IKmiENS0_16ItemInterfaceMapImiEESt4hashImESt8equal_toImEE14rehash_if_fullERS4_.exit.i ], [ %i.cf, %.lr.ph ] ; 2 uses
  store double %1, ptr %.lcssa.i, align 8, !tbaa !85
  %i.ca = load i64, ptr %i.az, align 8, !tbaa !81
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.az, align 8, !tbaa !81
  br label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.cc = icmp eq i64 %i.cg, %i.a
  br i1 %i.cc, label %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02030.i6.i28 = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02131.i7.i27 = phi i64 [ %.02131.i.i, %.lr.ph.i ], [ %.02131.i5.i, %.lr.ph.i.preheader ]
  %i.cd = add i64 %.02030.i6.i28, 1               ; 3 uses
  %i.ce = add i64 %i.cd, %.02131.i7.i27
  %.not.i3.i = icmp ule i64 %i.cd, %i.bs
  tail call void @llvm.assume(i1 %.not.i3.i)
  %.02131.i.i = and i64 %i.ce, %i.bs              ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.02131.i.i ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !82 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.bv
  br i1 %i.ch, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %i.ci = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.bw, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.ax, ptr %i.cj, align 4, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit, %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit, %bb.h
  %.sroa.9.0 = phi i32 [ %i.t, %bb.h ], [ %i.ax, %_ZN4Luau12DenseHashMapImiSt4hashImESt8equal_toImEEixERKm.exit ], [ %i.ax, %_ZN4Luau7CodeGen3X6418AssemblyBuilderX6412allocateDataEmm.exit ]
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift = shl nuw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 335577089
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 352354305, -3942612990) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645u32x4Ejjjj(ptr noundef nonnull align 8 dereferenceable(268) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.t = and i64 %i.s, -16                        ; 4 uses
  %i.u = add i64 %i.t, -16                        ; 3 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !57
  %i.v = load ptr, ptr %0, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i32 %1, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !tbaa !56
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 -12
  store i32 %2, ptr %i.z, align 1
  %i.aa = load ptr, ptr %0, align 8, !tbaa !56
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.t
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store i32 %3, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %0, align 8, !tbaa !56
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.t
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  store i32 %4, ptr %i.af, align 1
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
define dso_local range(i64 352354305, -3942612990) i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645f32x4Effff(ptr noundef nonnull align 8 dereferenceable(268) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.t = and i64 %i.s, -16                        ; 4 uses
  %i.u = add i64 %i.t, -16                        ; 3 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !57
  %i.v = load ptr, ptr %0, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store float %1, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !tbaa !56
  %i.y = getelementptr i8, ptr %i.x, i64 %i.t
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
  %i.g = select i1 %i.f, i8 8, i8 0
  %i.h = lshr i8 %.sroa.639.0.extract.trunc, 6
  %i.i = and i8 %i.h, 1
  %i.j = or disjoint i8 %i.g, %i.i
  %i.k = icmp eq i8 %i.c, 1
  %i.l = icmp ugt i8 %.sroa.639.0.extract.trunc, 31
  %i.m = and i1 %i.l, %i.k
  %i.n = select i1 %i.m, i8 64, i8 0
  %i.o = or disjoint i8 %i.j, %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = and i64 %1, 251658240
  %i.q = icmp eq i64 %i.p, 67108864
  %i.r = select i1 %i.q, i32 8, i32 0
  %i.s = trunc i64 %1 to i32
  %i.t = lshr i32 %i.s, 13
  %i.u = and i32 %i.t, 2
  %i.v = or disjoint i32 %i.r, %i.u
  %i.w = lshr i8 %.sroa.639.0.extract.trunc, 6
  %i.x = and i8 %i.w, 1
  %i.y = trunc nuw nsw i32 %i.v to i8
  %i.z = or disjoint i8 %i.x, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i8 [ %i.o, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.not.i = icmp eq i8 %.0.i, 0
  br i1 %.not.i, label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = or i8 %.0.i, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !58
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !17
  br label %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit

_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit: ; preds = %bb.a, %bb.d, %bb.e
  %i.ae = icmp eq i8 %i.e, 1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !58
  store i8 %3, ptr %i.ag, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 1)
  %i.ai = trunc i64 %.sroa.1.0.extract.shift to i8
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !58
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %_ZN4Luau7CodeGen3X6418AssemblyBuilderX648placeRexENS1_10OperandX64E.exit
  %i.al = trunc i64 %.sroa.1.0.extract.shift to i8 ; 2 uses
  %i.am = sext i8 %i.al to i32
  %i.an = icmp ne i32 %i.am, %.sroa.1.0.extract.trunc
  %.not = icmp eq i8 %4, %5
  %or.cond = or i1 %i.an, %.not
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !58
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %5, ptr %i.ap, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 1)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !58
  store i8 %i.al, ptr %i.ar, align 1, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 %4, ptr %i.ap, align 1, !tbaa !17
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX6414placeModRegMemENS1_10OperandX64Ehi(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %1, i8 noundef zeroext %6, i32 noundef 4)
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 2 uses
  store i32 %.sroa.1.0.extract.trunc, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !68
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248
end_hunk_0
