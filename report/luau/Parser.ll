Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser13parseExprListERNS_10TempVectorIPNS_7AstExprEEEPNS1_INS_8PositionEEE:bb.a

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.d, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit

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
  %i.r = add nuw i64 %.0825, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %.0825, 13
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
  %.0825 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.g ] ; 6 uses
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

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit:     ; preds = %.loopexit, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.cl, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.12.0.lcssa39, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

bb.h:                                             ; preds = %.lr.ph.preheader.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit21, %.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %i.co, %bb.h ], [ %lpad.loopexit, %.loopexit21 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.g ; 2 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !385
  %.not.i.i.i12 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i12, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13: ; preds = %bb.i
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14:   ; preds = %bb.i, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17parseFunctionNameERbRNS_7AstNameE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Position", align 8   ; 4 uses
  %4 = alloca %"struct.Luau::Parser::Name", align 8 ; 6 uses
  %5 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 4 uses
  %7 = alloca %"struct.Luau::Parser::Name", align 8 ; 8 uses
  %8 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq i32 %i.b, 281
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = ptrtoint ptr %i.e to i64
  store i64 %i.f, ptr %2, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef ptr @_ZN4Luau6Parser13parseNameExprEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.166) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !317
  %i.j = load i32, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.k = icmp eq i32 %i.j, 46
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.aa, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = load i64, ptr %i.l, align 4, !tbaa !31
  store i64 %i.r, ptr %3, align 8, !tbaa !31
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.s = load i32, ptr %i.a, align 8, !tbaa !119, !noalias !772
  %.not.i.i = icmp eq i32 %i.s, 281
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !44, !noalias !772
  %i.u = ptrtoint ptr %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !772
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !31
  br label %_ZN4Luau6Parser9parseNameEPKc.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.167), !noalias !772
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4, !tbaa !31, !noalias !771 ; 3 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !61, !noalias !771
  store i64 %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !31, !alias.scope !771
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !31, !alias.scope !771
end_hunk_0
begin_hunk_1_@_ZN4Luau6Parser17reportLValueErrorEPNS_7AstExprE:bb.a
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.aq, %bb.i ]
  %.01828.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ap, %bb.i ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.af       ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.01929.i.i.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !341 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp eq ptr %i.am, %i.ab
  br i1 %i.ao, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.aq = add i64 %i.ap, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ap, %i.af
  br i1 %.not.i.i.i, label %.thread, label %bb.g, !llvm.loop !10

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352 ; 3 uses
  %.not.not = icmp eq ptr %i.as, null
  br i1 %.not.not, label %.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.aw = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !53
  store ptr %i.aw, ptr %3, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !427
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !899
  %i.bd = add i32 %i.bc, 1
  %i.be = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.243, ptr noundef %i.ba, i32 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

.thread:                                          ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.bi = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.bi, align 8, !tbaa !53
  store ptr %i.bi, ptr %4, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.bj, align 8
  %i.bk = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.244)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i23, %.thread, %.lr.ph.i.i
  %.1 = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.bk, %.thread ], [ %i.be, %.lr.ph.i.i23 ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 56
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1
  %i.m = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 56) ; 2 uses
  call void @_ZN4Luau12AstExprErrorC1ERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEj(ptr noundef nonnull align 8 dereferenceable(52) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.m
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4Luau6Parser16parseExportValueERKNS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEEENK3$_0clENS_7AstNameES3_"(ptr %.0.val, ptr %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::AstName", align 8    ; 2 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 512 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 528
  %i.c = load i64, ptr %i.b, align 8, !tbaa !398
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 536
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !341  ; 2 uses
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 520
  %i.i = load i64, ptr %i.h, align 8, !tbaa !429
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.l = lshr i64 %i.k, 4
  %i.m = lshr i64 %i.k, 9
  %i.n = xor i64 %i.l, %i.m
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !208
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.f ]
  %.01828.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.f ]
  %.01929.i.i = and i64 %.pn.i.i, %i.j            ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.01929.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !341  ; 2 uses
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_8LocationESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.q, %i.f
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.u = add i64 %i.t, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.t, %i.j
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !12

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.v = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4Luau12DenseHashMapINS_7AstNameENS_8LocationESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !58
  br label %_ZN4Luau12DenseHashMapINS_7AstNameENS_8LocationESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit

_ZN4Luau12DenseHashMapINS_7AstNameENS_8LocationESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_.exit: ; preds = %bb.d, %.loopexit
  %.not.i3 = phi i1 [ true, %.loopexit ], [ false, %bb.d ]
  ret i1 %.not.i3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser24prepareFunctionArgumentsERKNS_8LocationEbRKNS_10TempVectorINS0_7BindingEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.291") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::Parser::Binding", align 8 ; 6 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  store i64 %i.b, ptr %5, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, i8 0, i64 17, i1 false)
  %i.d = call noundef ptr @_ZN4Luau6Parser9pushLocalERKNS0_7BindingE(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 8 dereferenceable(41) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !370
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  br label %bb.d

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %.pre33.pre = load ptr, ptr %i.e, align 8, !tbaa !229 ; 2 uses
  %.pre33.pre48 = ptrtoaddr ptr %.pre33.pre to i64
  %i.p = getelementptr i8, ptr %.pre33.pre, i64 %i.k ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.s = shl i64 %i.cc, 3
  %i.t = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 noundef %i.s)
          to label %.lr.ph.i.i.preheader unwind label %bb.l ; 8 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.u = add nuw i64 %.01032, 1                   ; 3 uses
  %min.iters.check = icmp ult i64 %.01032, 13
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %i.j, %i.v
  %i.x = add i64 %.pre33.pre48, %i.i
  %i.y = sub i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.y, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !114
  %wide.load49 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %wide.load, ptr %i.z, align 8, !tbaa !114
  store <2 x ptr> %wide.load49, ptr %i.ac, align 8, !tbaa !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph.i.i.preheader50

.lr.ph.i.i.preheader50:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ae = sub i64 %.01032, %.010.i.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader50, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader50 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader50 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.prol
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i.i.prol
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !114
  %i.ai = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !901

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader50
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader50 ], [ %i.ai, %.lr.ph.i.i.prol ]
  %i.aj = icmp ult i64 %i.ae, 3
  br i1 %i.aj, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !114
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !114
  %i.an = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !114
  %i.ar = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  store ptr %i.au, ptr %i.as, align 8, !tbaa !114
  %i.av = add nuw i64 %.010.i.i, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !114
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !114
  %i.az = add nuw i64 %.010.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %i.av, %.01032
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !902

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.01032 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.k ] ; 6 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !382, !nonnull !67, !align !337
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !369
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !184
  %i.bd = getelementptr [48 x i8], ptr %i.bc, i64 %i.bb
  %i.be = getelementptr [48 x i8], ptr %i.bd, i64 %.01032
  %i.bf = invoke noundef ptr @_ZN4Luau6Parser9pushLocalERKNS0_7BindingE(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 8 dereferenceable(41) %i.be)
          to label %bb.e unwind label %.loopexit28 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !110 ; 4 uses
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !114
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bi, ptr %i.f, align 8, !tbaa !110
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !111 ; 4 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.h, label %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #35
          to label %.noexc13 unwind label %.loopexit28 ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store ptr %i.bf, ptr %i.bv, align 8, !tbaa !114
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %.noexc13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.by = load ptr, ptr %i.o, align 8, !tbaa !181
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.ca) #36
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !111
  store ptr %i.bx, ptr %i.f, align 8, !tbaa !110
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  %i.cc = add nuw i64 %.01032, 1                  ; 4 uses
  %i.cd = load i64, ptr %i.l, align 8, !tbaa !370
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.d, label %.lr.ph.preheader.i.i, !llvm.loop !903

.loopexit28:                                      ; preds = %bb.d, %_ZNKSt6vectorIPN4Luau8AstLocalESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !229
  %.pre34 = load ptr, ptr %i.f, align 8, !tbaa !229
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.loopexit
  %.sroa.12.0.lcssa45 = phi i64 [ %i.cc, %.loopexit.loopexit ], [ 0, %bb.c ]
  %i.cf = phi ptr [ %.pre34, %.loopexit.loopexit ], [ %i.g, %bb.c ]
  %i.cg = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.h, %bb.c ]
  %i.ch = phi ptr [ %i.t, %.loopexit.loopexit ], [ null, %bb.c ]
  store ptr %.0, ptr %0, align 8, !tbaa !905
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !229
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0.lcssa45, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.k ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, %i.cf
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %.loopexit
  store ptr %i.cj, ptr %i.f, align 8, !tbaa !110
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit:    ; preds = %.loopexit, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  ret void

bb.l:                                             ; preds = %.lr.ph.preheader.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit28, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.l ], [ %lpad.loopexit, %.loopexit28 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !229
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.k ; 2 uses
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !229
  %.not.i.i.i14 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i.i14, label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit16, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i15

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i15: ; preds = %bb.m
  store ptr %i.cm, ptr %i.f, align 8, !tbaa !110
  br label %_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit16

_ZN4Luau10TempVectorIPNS_8AstLocalEED2Ev.exit16:  ; preds = %bb.m, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17parseOptionalTypeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq i32 %i.b, 58
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !317  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !58
  %i.g = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.g, label %bb.c [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !411
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  store i32 %i.e, ptr %i.d, align 4, !tbaa !317
  br label %_ZN4Luau6Parser9parseTypeEb.exit

_ZN4Luau6Parser9parseTypeEb.exit:                 ; preds = %bb.b, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.b ]
  %i.j = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !411
  store i32 %i.e, ptr %i.d, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4Luau6Parser9parseTypeEb.exit
  %.0 = phi ptr [ %i.j, %_ZN4Luau6Parser9parseTypeEb.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser29parseVariadicArgumentTypePackEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %2 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %3 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.d = icmp eq i32 %i.c, 281
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.e)
  %i.f = load i32, ptr %2, align 8, !tbaa !119
  %i.g = icmp eq i32 %i.f, 262
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.h = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
end_hunk_1
