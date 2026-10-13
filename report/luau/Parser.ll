Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser13parseExprListERNS_10TempVectorIPNS_7AstExprEEEPNS1_INS_8PositionEEE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !191  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !53
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #36
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !191
  store ptr %i.v, ptr %i.c, align 8, !tbaa !323
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.e, align 8, !tbaa !192
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit

_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %storemerge.in16 = load i64, ptr %i.aa, align 8, !tbaa !375
  %storemerge17 = add i64 %storemerge.in16, 1
  store i64 %storemerge17, ptr %i.aa, align 8, !tbaa !375
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119
  %i.ad = icmp eq i32 %i.ac, 44
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit
  %.not = icmp eq ptr %2, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4Luau10TempVectorINS_8PositionEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ae)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.af = load i32, ptr %i.ab, align 8, !tbaa !119
  %i.ag = icmp eq i32 %i.af, 41
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0) ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !383, !nonnull !67, !align !337 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !323 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !192
  %.not.i.i5 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12

bb.m:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !191 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.n, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6: ; preds = %bb.m
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i7, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.ah, ptr %i.ba, align 8, !tbaa !53
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.o, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i10, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !192
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #36
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11: ; preds = %bb.p, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !191
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !323
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !192
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12

_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12: ; preds = %bb.l, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11
  %storemerge.in = load i64, ptr %i.aa, align 8, !tbaa !375
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.aa, align 8, !tbaa !375
  %i.bh = load i32, ptr %i.ab, align 8, !tbaa !119
  %i.bi = icmp eq i32 %i.bh, 44
  br i1 %i.bi, label %bb.g, label %.loopexit, !llvm.loop !752

.loopexit:                                        ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12, %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN4Luau6Parser31extractAnnotationColonPositionsERKNS_10TempVectorINS0_7BindingEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !370  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !130
  br label %bb.b

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.l = ptrtoaddr ptr %i.cf to i64
  %i.m = getelementptr i8, ptr %i.cf, i64 %i.g    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.p = shl i64 %i.ci, 3
  %i.q = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef %i.p)
          to label %.lr.ph.i.i.preheader unwind label %bb.h ; 8 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.r = add i64 %.0825, 1                        ; 4 uses
  %min.iters.check = icmp ult i64 %i.r, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = add i64 %i.f, %i.s
  %i.u = add i64 %i.e, %i.l
  %i.v = sub i64 %i.u, %i.t
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 4, !tbaa !31
  %wide.load46 = load <2 x i64>, ptr %i.y, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 4, !tbaa !31
  store <2 x i64> %wide.load46, ptr %i.z, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph.i.i.preheader47

.lr.ph.i.i.preheader47:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ab = sub i64 %.0825, %.010.i.i.ph
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader47, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader47 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader47 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.010.i.i.prol
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.010.i.i.prol
  %i.ae = load i64, ptr %i.ad, align 4, !tbaa !31
  store i64 %i.ae, ptr %i.ac, align 4, !tbaa !31
  %i.af = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !754

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader47
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader47 ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ag = icmp ult i64 %i.ab, 3
  br i1 %i.ag, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.010.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.010.i.i
  %i.aj = load i64, ptr %i.ai, align 4, !tbaa !31
  store i64 %i.aj, ptr %i.ah, align 4, !tbaa !31
  %i.ak = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 4, !tbaa !31
  store i64 %i.an, ptr %i.al, align 4, !tbaa !31
  %i.ao = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 4, !tbaa !31
  store i64 %i.ar, ptr %i.ap, align 4, !tbaa !31
  %i.as = add nuw i64 %.010.i.i, 3                ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.as
  %i.av = load i64, ptr %i.au, align 4, !tbaa !31
  store i64 %i.av, ptr %i.at, align 4, !tbaa !31
  %i.aw = add nuw i64 %.010.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %i.as, %.0825
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !755

.loopexit21:                                      ; preds = %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.ax = phi i64 [ %i.i, %.lr.ph ], [ %i.ce, %bb.g ]
  %i.ay = phi ptr [ %i.d, %.lr.ph ], [ %i.cf, %bb.g ] ; 6 uses
  %i.az = phi ptr [ %.pre, %.lr.ph ], [ %i.cg, %bb.g ] ; 5 uses
  %i.ba = phi ptr [ %i.c, %.lr.ph ], [ %i.ch, %bb.g ] ; 3 uses
  %.0825 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.g ] ; 5 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !382, !nonnull !67, !align !337
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !369
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !184
  %i.be = getelementptr [48 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr [48 x i8], ptr %i.be, i64 %.0825
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = load i64, ptr %i.bg, align 4, !tbaa !31
  store i64 %i.bh, ptr %i.ba, align 4, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !378
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bj = ptrtoint ptr %i.az to i64
  %i.bk = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.e, label %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #35
          to label %.noexc11 unwind label %.loopexit21 ; 6 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  %i.bv = load i64, ptr %i.bg, align 4, !tbaa !31
  store i64 %i.bv, ptr %i.bu, align 4, !tbaa !31
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc11, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bt, %.noexc11 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %.noexc11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !761, !noalias !760
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !31, !alias.scope !760, !noalias !761
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc11
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc11 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !130
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #36
  br label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !129
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !378
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !130
  %.pre27 = load i64, ptr %i.h, align 8, !tbaa !370
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %i.ce = phi i64 [ %.pre27, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ax, %bb.c ] ; 2 uses
  %i.cf = phi ptr [ %i.bt, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ay, %bb.c ] ; 3 uses
  %i.cg = phi ptr [ %i.cd, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.az, %bb.c ]
  %i.ch = phi ptr [ %i.bz, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bi, %bb.c ]
  %i.ci = add nuw i64 %.0825, 1                   ; 4 uses
  %i.cj = icmp ult i64 %i.ci, %i.ce
  br i1 %i.cj, label %bb.b, label %.lr.ph.preheader.i.i, !llvm.loop !759

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %.pre28 = load ptr, ptr %i.b, align 8, !tbaa !385
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.loopexit
  %.sroa.12.0.lcssa39 = phi i64 [ %i.ci, %.loopexit.loopexit ], [ 0, %bb.a ]
  %i.ck = phi ptr [ %.pre28, %.loopexit.loopexit ], [ %i.c, %bb.a ]
  %i.cl = phi ptr [ %i.q, %.loopexit.loopexit ], [ null, %bb.a ]
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.loopexit
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit

end_hunk_0
