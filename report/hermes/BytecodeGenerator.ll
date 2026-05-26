inline.NumInlined: 2660
inline.NumDeleted: 1336
begin_hunk_0_@_ZNK6hermes3hbc23BytecodeModuleGenerator15getIdentifierIDEN4llvh9StringRefE:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68, !noalias !146 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69, !noalias !146 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !78, !noalias !133
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = ptrtoint ptr %i.s to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 5
  %i.ae = add nsw i64 %i.ad, %i.z                 ; 5 uses
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ult i64 %i.ae, 16
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.z
  br label %_ZNK6hermes3hbc18StringLiteralTable15getIdentifierIDEN4llvh9StringRefE.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = lshr i64 %i.ae, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aj = ashr i64 %i.ae, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi i64 [ %i.ai, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81, !noalias !149 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 4
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.am, i64 %i.ao
  br label %_ZNK6hermes3hbc18StringLiteralTable15getIdentifierIDEN4llvh9StringRefE.exit

_ZNK6hermes3hbc18StringLiteralTable15getIdentifierIDEN4llvh9StringRefE.exit: ; preds = %bb.b, %bb.e, %bb.h
  %.pre-phi.i.i = phi i64 [ %.pre18.i.i, %bb.b ], [ %i.aa, %bb.e ], [ %i.aa, %bb.h ]
  %i.aq = phi ptr [ %.pre17.i.i, %bb.b ], [ %i.w, %bb.e ], [ %i.w, %bb.h ]
  %.sroa.13.1.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.w, %bb.e ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.5.1.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.u, %bb.e ], [ %i.am, %bb.h ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.ah, %bb.e ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !130
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85, !noalias !141
  %i.at = ptrtoint ptr %.sroa.13.1.i.i.i to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp ne ptr %.sroa.13.1.i.i.i, null
  %.neg.i.i.i = sext i1 %i.ax to i64
  %i.ay = add nsw i64 %i.aw, %.neg.i.i.i
  %i.az = shl nsw i64 %i.ay, 4
  %i.ba = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.bb = ptrtoint ptr %.sroa.5.1.i.i.i to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 5
  %i.be = ptrtoint ptr %i.as to i64
  %i.bf = sub i64 %i.be, %.pre-phi.i.i
  %i.bg = lshr exact i64 %i.bf, 5
  %i.bh = add i64 %i.az, %i.bd
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = trunc i64 %i.bi to i32
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addBigIntENS_6bigint12ParsedBigIntE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::bigint::ParsedBigInt", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !40, !align !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.g, align 16, !tbaa !152
  %i.h = call noundef i32 @_ZN6hermes6bigint19UniquingBigIntTable9addBigIntENS0_12ParsedBigIntE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %2)
  %i.i = load ptr, ptr %2, align 16, !tbaa !153   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 16, !tbaa !152
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.m) #21
  br label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit

_ZN6hermes6bigint12ParsedBigIntD2Ev.exit:         ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator9addBigIntENS_6bigint12ParsedBigIntE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::bigint::ParsedBigInt", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !44
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  store ptr %i.e, ptr %i.c, align 16, !tbaa !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = call noundef i32 @_ZN6hermes6bigint19UniquingBigIntTable9addBigIntENS0_12ParsedBigIntE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %2)
  %i.g = load ptr, ptr %2, align 16, !tbaa !153   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 16, !tbaa !152
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.k) #21
  br label %_ZN6hermes6bigint12ParsedBigIntD2Ev.exit

_ZN6hermes6bigint12ParsedBigIntD2Ev.exit:         ; preds = %bb.a, %bb.b
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !40, !align !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.d = tail call noundef i32 @_ZN6hermes19UniquingRegExpTable9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = tail call noundef i32 @_ZN6hermes19UniquingRegExpTable9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator11addFilenameEN4llvh9StringRefE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !40, !align !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.d = tail call noundef i32 @_ZN6hermes3hbc21UniquingFilenameTable11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr %1, i64 %2) #20
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = tail call noundef i32 @_ZN6hermes3hbc21UniquingFilenameTable11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %1, i64 %2) #20
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator19addExceptionHandlerENS0_23HBCExceptionHandlerInfoE(ptr noundef nonnull align 8 captures(none) dereferenceable(200) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %2, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !3
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store ptr %i.g, ptr %i.b, align 8, !tbaa !154
  br label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !156  ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = sdiv exact i64 %i.k, 12                  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 768614336404564650) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = mul nuw nsw i64 %i.o, 12
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.k ; 3 uses
  store i64 %1, ptr %i.r, align 1
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %2, ptr %.sroa.3.0..sroa_idx2, align 1, !tbaa !3
  %i.s = icmp sgt i64 %i.k, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !156
  store ptr %i.t, ptr %i.b, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.d, align 8, !tbaa !155
  br label %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6hermes3hbc23HBCExceptionHandlerInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator25patchDebugSourceLocationsERKN4llvh8DenseMapIjjNS2_12DenseMapInfoIjEENS2_6detail12DenseMapPairIjjEEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !158    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !161  ; 6 uses
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.f, align 4, !tbaa !3    ; 3 uses
  %i.l = mul i32 %i.k, 37
  %i.m = add i32 %i.i, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.l, %i.m                ; 2 uses
  %i.n = zext i32 %.02744.i.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp eq i32 %i.k, %i.p
  br i1 %i.q, label %.lr.ph.thread, label %.lr.ph.i.i, !prof !162

.lr.ph.thread:                                    ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !163
  store i32 %i.s, ptr %i.f, align 4, !tbaa !165
  %i.t = zext i32 %i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.t
  br label %.lr.ph.split.preheader

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.v = phi i32 [ %i.ab, %bb.d ], [ %i.p, %bb.c ]
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.c ]
  %.02546.i.i = phi i32 [ %i.x, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i, label %bb.d, !prof !166

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i32 %.02546.i.i, 1
  %i.y = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.y, %i.m                  ; 2 uses
  %i.z = zext i32 %.027.i.i to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = icmp eq i32 %i.k, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.lr.ph.i.i, !prof !167, !llvm.loop !168

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %i.ad = zext i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i
  %.lcssa45.sink = phi i64 [ %i.ad, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i ], [ %i.z, %bb.d ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.lcssa45.sink
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !163
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !165
  %i.ah = zext i32 %i.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph.thread, %.lr.ph
  %i.aj = phi ptr [ %i.u, %.lr.ph.thread ], [ %i.ai, %.lr.ph ]
  %i.ak = add i32 %i.i, -1                        ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !163
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us, %.lr.ph.split.us
  %.sroa.021.030.us = phi ptr [ %i.b, %.lr.ph.split.us ], [ %i.ao, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.030.us, i64 24
  store i32 %i.am, ptr %i.an, align 4, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.021.030.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.ao, %i.d
  br i1 %.not.us, label %.loopexit, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20
  %.sroa.021.030 = phi ptr [ %i.bh, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20 ], [ %i.b, %.lr.ph.split.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.021.030, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 3 uses
  %i.ar = mul i32 %i.aq, 37
  %.02744.i.i7 = and i32 %i.ar, %i.ak             ; 2 uses
  %i.as = zext i32 %.02744.i.i7 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = icmp eq i32 %i.aq, %i.au
  br i1 %i.av, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20, label %.lr.ph.i.i8, !prof !162

.lr.ph.i.i8:                                      ; preds = %.lr.ph.split, %bb.e
  %i.aw = phi i32 [ %i.bc, %bb.e ], [ %i.au, %.lr.ph.split ]
  %.02747.i.i9 = phi i32 [ %.027.i.i11, %bb.e ], [ %.02744.i.i7, %.lr.ph.split ]
  %.02546.i.i10 = phi i32 [ %i.ay, %bb.e ], [ 1, %.lr.ph.split ] ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20, label %bb.e, !prof !166

bb.e:                                             ; preds = %.lr.ph.i.i8
  %i.ay = add i32 %.02546.i.i10, 1
  %i.az = add i32 %.02546.i.i10, %.02747.i.i9
  %.027.i.i11 = and i32 %i.az, %i.ak              ; 2 uses
  %i.ba = zext i32 %.027.i.i11 to i64             ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %i.bd = icmp eq i32 %i.aq, %i.bc
  br i1 %i.bd, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20.loopexit.split.loop.exit, label %.lr.ph.i.i8, !prof !167, !llvm.loop !168

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20.loopexit.split.loop.exit: ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ba
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20: ; preds = %.lr.ph.i.i8, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20.loopexit.split.loop.exit, %.lr.ph.split
  %.sink.i.ph.pn.i15 = phi ptr [ %i.at, %.lr.ph.split ], [ %i.be, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20.loopexit.split.loop.exit ], [ %i.aj, %.lr.ph.i.i8 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i15, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !163
  store i32 %i.bg, ptr %i.ap, align 4, !tbaa !170
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.021.030, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit20, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPKS6_.exit.i19.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator22addDebugSourceLocationERKNS0_19DebugSourceLocationE(ptr noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 6 uses
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171
  %i.h = load i32, ptr %1, align 4, !tbaa !171
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !172
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173
  %.not.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !172
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.m, ptr %i.c, align 8, !tbaa !174
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775776
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 5                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 288230376151711743) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !172
  br i1 %i.e, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.b, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !172, !alias.scope !175
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.p) #21
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !180
  store ptr %i.z, ptr %i.c, align 8, !tbaa !174
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !173
  br label %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6hermes3hbc19DebugSourceLocationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator12setJumpTableEOSt6vectorIjSaIjEE(ptr noundef nonnull align 8 captures(none) dereferenceable(200) initializes((184, 192)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !183
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182
  store ptr %i.g, ptr %i.c, align 8, !tbaa !182
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit

_ZNSt6vectorIjSaIjEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator24generateBytecodeFunctionENS_8Function14DefinitionKindENS_9ValueKindEbjjj(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i8, ptr %i.a, align 8, !tbaa !184, !range !185, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.e = load i32, ptr %i.d, align 4, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.i = load i8, ptr %i.h, align 1, !tbaa !188
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.k = load i8, ptr %i.j, align 2, !tbaa !189
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 3
  br i1 %i.l, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i8 %3, -3
  %i.n = icmp eq i8 %i.m, -127
  %i.o = select i1 %i.n, i8 1, i8 2
  br label %bb.e

switch.lookup:                                    ; preds = %bb.c
  %switch.cast = trunc nuw i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %.sroa.12.0 = phi i8 [ %i.o, %bb.d ], [ %switch.masked, %switch.lookup ]
  %i.p = select i1 %4, i8 4, i8 0
  %i.q = or disjoint i8 %.sroa.12.0, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !156  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.u = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !190 ; 19 uses
  %i.v = load <2 x ptr>, ptr %1, align 8, !tbaa !44, !noalias !190
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !44, !noalias !190
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !152, !noalias !190
  store ptr %i.y, ptr %i.w, align 8, !tbaa !152, !noalias !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !190
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !3, !noalias !190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %5, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 %7, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %i.g, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 %6, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !193, !noalias !190
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 53
  store i8 %i.k, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !193, !noalias !190
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 -1, ptr %i.aa, align 8, !tbaa !194, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  store i32 -1, ptr %i.ab, align 4, !tbaa !196, !noalias !190
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i32 -1, ptr %i.ac, align 8, !tbaa !197, !noalias !190
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !156, !noalias !190
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.af = load <2 x ptr>, ptr %i.s, align 8, !tbaa !198
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !154
  %.not = icmp eq ptr %i.ag, %i.t
  %i.ah = select i1 %.not, i8 0, i8 8
  %i.ai = or disjoint i8 %i.q, %i.ah
  store i8 %i.ai, ptr %.sroa.12.0..sroa_idx, align 2, !tbaa !193, !noalias !190
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !198, !noalias !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !190
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !199, !noalias !190
  store ptr %i.u, ptr %0, align 8, !tbaa !202, !alias.scope !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) initializes((164, 169)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.b, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.i, ptr %i.j, align 4, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !183  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.h, 3
  %i.q = and i64 %i.p, 4294967292                 ; 5 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, %i.q
  %i.v = and i64 %i.u, 4294967292                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.g                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 6 uses
  %i.ac = icmp sgt i64 %i.h, 0
  br i1 %i.ac, label %bb.c, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.z) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !152
  %.pre9 = ptrtoint ptr %i.ab to i64
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.b, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %.pre-phi10 = phi i64 [ %i.g, %bb.b ], [ %.pre9, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 3 uses
  %i.af = phi ptr [ %i.e, %bb.b ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  %i.ag = phi ptr [ %i.d, %bb.b ], [ %i.ad, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !193
  %i.ah = icmp ugt i64 %i.q, %i.h
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii:bb.a
  %i.z = add i32 %.079, 3
  %i.aa = trunc nuw i32 %i.y to i8
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !193
  %i.ae = ashr i32 %.0610, 31
  %i.af = add nsw i32 %.011, -4                   ; 2 uses
  %i.ag = add i32 %.079, 4
  %.not.3 = icmp eq i32 %i.af, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !395

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator21updateJumpTableOffsetEjjj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = add i64 %i.g, %i.d
  %i.i = sub i64 %i.h, %i.e
  %i.j = trunc i64 %i.i to i32
  %i.k = sub i32 %i.j, %3                         ; 4 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !193
  %i.o = lshr i32 %i.k, 8
  %i.p = add i32 %1, 1
  %i.q = trunc i32 %i.o to i8
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 %i.q, ptr %i.t, align 1, !tbaa !193
  %i.u = lshr i32 %i.k, 16
  %i.v = add i32 %1, 2
  %i.w = trunc i32 %i.u to i8
  %i.x = zext i32 %i.v to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.w, ptr %i.z, align 1, !tbaa !193
  %i.aa = lshr i32 %i.k, 24
  %i.ab = add i32 %1, 3
  %i.ac = trunc nuw i32 %i.aa to i8
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !153
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !396
  %i.b = load ptr, ptr %0, align 8, !tbaa !397    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !398  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.k, %i.j              ; 2 uses
  %i.l = zext nneg i32 %.02944.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !396  ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !162

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.02746.i.i.i, 1
  %i.s = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.s, %i.k                ; 2 uses
  %i.t = zext i32 %.029.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !396  ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !167, !llvm.loop !399

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.y, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.aa
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !400
  br label %bb.g

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !402 ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !403 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !404
  %.not.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, label %bb.f, !prof !166

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !403
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit: ; preds = %bb.e, %bb.f
  %i.an = phi i32 [ %.pre.i, %bb.f ], [ %i.aj, %bb.e ]
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !405
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i64, ptr %i.a, align 8
  store i64 %i.ar, ptr %i.aq, align 1
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !403
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %3 = alloca %"struct.std::pair.355", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !406
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.355") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !406
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !409, !range !185, !noalias !406, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !406
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !328
  store ptr %i.i, ptr %i.f, align 8, !tbaa !328
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !410
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !412  ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !328
  store ptr %i.v, ptr %i.u, align 8, !tbaa !328
  %i.w = icmp sgt i64 %i.n, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #21
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.d, align 8, !tbaa !412
  store ptr %i.x, ptr %i.e, align 8, !tbaa !410
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.y, ptr %i.g, align 8, !tbaa !411
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !328
  %i.b = load ptr, ptr %0, align 8, !tbaa !413    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !414  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.k, %i.j              ; 2 uses
  %i.l = zext nneg i32 %.02944.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !328  ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !162

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.02746.i.i.i, 1
  %i.s = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.s, %i.k                ; 2 uses
  %i.t = zext i32 %.029.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !328  ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !167, !llvm.loop !415

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.y, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.aa
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !416
  br label %bb.g

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !403 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !404
  %.not.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit, label %bb.f, !prof !166

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !403
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit: ; preds = %bb.e, %bb.f
  %i.an = phi i32 [ %.pre.i, %bb.f ], [ %i.aj, %bb.e ]
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !405
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i64, ptr %i.a, align 8
  store i64 %i.ar, ptr %i.aq, align 1
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !403
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !403
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator19serializeScopeChainERNS_11StringTableERNS0_18DebugInfoGeneratorEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 3 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"struct.hermes::hbc::DebugScopeDescriptor::Flags", align 2 ; 6 uses
  %14 = alloca %"class.llvh::SmallVector.150", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %3, ptr %i.d, align 8, !tbaa !328
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !329  ; 2 uses
  %.not2.i = icmp eq ptr %i.g, null
  br i1 %.not2.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.g) #20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load i32, ptr %i.i, align 8, !tbaa !337
  %.not1.i = icmp eq i32 %i.j, 2
  br i1 %.not1.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !328
  br label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit

_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.o = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef %i.n) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.o, ptr %i.e, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load i32, ptr %i.r, align 8, !tbaa !161  ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit
  %i.u = mul i32 %i.o, 37
  %i.v = add i32 %i.s, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.v, %i.u              ; 2 uses
  %i.w = zext i32 %.02744.i.i.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = icmp eq i32 %i.o, %i.y
  br i1 %i.z, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit, label %.lr.ph.i.i.i, !prof !162

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %i.ag, %bb.f ], [ %i.y, %bb.e ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.f ], [ %.02744.i.i.i, %bb.e ]
  %.02546.i.i.i = phi i32 [ %i.ac, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i, label %bb.f, !prof !166

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i32 %.02546.i.i.i, 1
  %i.ad = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.ad, %i.v               ; 2 uses
  %i.ae = zext i32 %.027.i.i.i to i64             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %i.ah = icmp eq i32 %i.o, %i.ag
  br i1 %i.ah, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.loopexit, label %.lr.ph.i.i.i, !prof !167, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit
  %i.ai = zext i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ai
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.loopexit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.loopexit, %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_.exit.i ], [ %i.x, %bb.e ], [ %i.ak, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4findERKj.exit.loopexit ] ; 2 uses
  %i.al = zext i32 %i.s to i64
end_hunk_1
begin_hunk_2_@_ZN6hermes6bigint19UniquingBigIntTable9addBigIntENS0_12ParsedBigIntE:bb.a
  br label %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE9push_backEOS2_.exit

_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.d, %bb.e
  %i.bj = phi ptr [ %i.bi, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !460, !noalias !464
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit

bb.f:                                             ; preds = %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE9push_backEOS2_.exit
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !458, !noalias !464
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !467
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 504
  br label %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit

_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit: ; preds = %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE9push_backEOS2_.exit, %bb.f
  %i.bq = phi ptr [ %i.bp, %bb.f ], [ %i.bj, %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !153 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !204
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = call { ptr, i64 } @_ZN6hermes6bigint17dropExtraSignBitsEN4llvh8ArrayRefIhEE(ptr %i.bs, i64 %i.bx) #20 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  store ptr %i.bz, ptr %3, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = extractvalue { ptr, i64 } %i.by, 1
  store i64 %i.cb, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !452 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.cc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit
  %i.ce = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E20InsertIntoBucketImplIS3_EEPS8_RKS3_RKT_SC_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.cd) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !468
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 0, ptr %i.cf, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit: ; preds = %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit, %bb.g
  %.0.i.i = phi ptr [ %i.ce, %bb.g ], [ %i.cd, %_ZNSt5dequeIN6hermes6bigint12ParsedBigIntESaIS2_EE4backEv.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 %i.az, ptr %i.cg, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit, %bb.b
  %.0 = phi i32 [ %i.v, %bb.b ], [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIhEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator28initializeSerializedLiteralsEOSt6vectorIhSaIhEES5_S5_ON4llvh8DenseMapIPKNS_11InstructionESt4pairIjjENS6_12DenseMapInfoISA_EENS6_6detail12DenseMapPairISA_SC_EEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(964) initializes((848, 856), (872, 880), (896, 904), (920, 932)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 captures(none) dereferenceable(20) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !44
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152
  store ptr %i.g, ptr %i.c, align 8, !tbaa !152
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !44
  store <2 x ptr> %i.o, ptr %i.k, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  store ptr %i.q, ptr %i.m, align 8, !tbaa !152
  %.not.i.i.i.i.i5 = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #21
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6

_ZNSt6vectorIhSaIhEEaSEOS1_.exit6:                ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = load <2 x ptr>, ptr %3, align 8, !tbaa !44
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !152
  %.not.i.i.i.i.i7 = icmp eq ptr %i.v, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i7, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit8, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ad) #21
  br label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit8

_ZNSt6vectorIhSaIhEEaSEOS1_.exit8:                ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit6, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !469
  tail call void @_ZdlPv(ptr noundef %i.af) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !470
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !470
  store ptr null, ptr %4, align 8, !tbaa !470
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !3
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !3
  store i32 0, ptr %i.ai, align 8, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = load i32, ptr %i.al, align 4, !tbaa !3
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  store i32 %i.am, ptr %i.al, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !3
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !3
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19UniquingRegExpTable9addRegExpEPNS_14CompiledRegExpE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.std::pair.315", align 8    ; 7 uses
  %3 = alloca %"struct.std::pair.315", align 8    ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429, !noalias !471
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !427, !noalias !471
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !429, !noalias !471
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !427, !noalias !471
  store ptr %i.e, ptr %2, align 8, !tbaa !44, !alias.scope !471
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !45, !alias.scope !471
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.i, ptr %i.l, align 8, !tbaa !44, !alias.scope !471
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !45, !alias.scope !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.m = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !474  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !475
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !476
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not8 = icmp ne ptr %i.n, %i.s
  %.not.not = select i1 %i.m, i1 %.not8, i1 false
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !477
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !480  ; 5 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !481    ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 3 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !482
  %.not.i = icmp eq ptr %i.w, %i.ae
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.w, align 8, !tbaa !483
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.af, ptr %i.v, align 8, !tbaa !480
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #23 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.aa ; 3 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !483
  %i.am = icmp sgt i64 %i.aa, 0
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !481
  store ptr %i.an, ptr %i.v, align 8, !tbaa !480
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !482
  br label %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.w, %bb.d ], [ %i.al, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !483 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !429, !noalias !485
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !427, !noalias !485
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !429, !noalias !485
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !427, !noalias !485
  store ptr %i.as, ptr %3, align 8, !tbaa !44, !alias.scope !485
  %.sroa.45.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.au, ptr %.sroa.45.0..sroa_idx.i3, align 8, !tbaa !45, !alias.scope !485
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !44, !alias.scope !485
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !45, !alias.scope !485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ba = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !474 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.ba, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit
  %i.bc = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E20InsertIntoBucketImplIS4_EEPS9_RKS4_RKT_SD_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bb) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !468
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !468
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 0, ptr %i.be, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit: ; preds = %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit, %bb.i
  %.0.i.i = phi ptr [ %i.bc, %bb.i ], [ %i.bb, %_ZNSt6vectorIPN6hermes14CompiledRegExpESaIS2_EE9push_backERKS2_.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 %i.ac, ptr %i.bf, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit, %bb.b
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.ac, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairINS_9StringRefES3_EjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_EixEOS4_.exit ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes3hbc21UniquingFilenameTable11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator12addCJSModuleEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %1 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %1 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %2 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.r, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = add i64 %i.i, -8
  %i.u = sub i64 %i.t, %i.j                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 56
  %i.x = sub i64 %i.s, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ac = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !494, !noalias !491
  %wide.load14 = load <2 x i64>, ptr %i.ac, align 4, !alias.scope !494, !noalias !491
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !491, !noalias !494
  store <2 x i64> %wide.load14, ptr %i.ad, align 4, !alias.scope !491, !noalias !494
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !494, !noalias !491
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !491, !noalias !494
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !499

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !488
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator18addCJSModuleStaticEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %2 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.r, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = add i64 %i.i, -8
  %i.u = sub i64 %i.t, %i.j                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 56
  %i.x = sub i64 %i.s, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ac = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !503, !noalias !500
  %wide.load14 = load <2 x i64>, ptr %i.ac, align 4, !alias.scope !503, !noalias !500
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !500, !noalias !503
  store <2 x i64> %wide.load14, ptr %i.ad, align 4, !alias.scope !500, !noalias !503
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !503, !noalias !500
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !500, !noalias !503
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !506

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !488
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator17addFunctionSourceEjj(ptr noundef nonnull align 8 captures(none) dereferenceable(964) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.insert.ext = zext i32 %2 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !488
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !490  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %.sroa.5.0.insert.ext6 = zext i32 %2 to i64
  %.sroa.5.0.insert.shift7 = shl nuw i64 %.sroa.5.0.insert.ext6, 32
  %.sroa.0.0.insert.ext2 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert4 = or disjoint i64 %.sroa.5.0.insert.shift7, %.sroa.0.0.insert.ext2
  store i64 %.sroa.0.0.insert.insert4, ptr %i.r, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = add i64 %i.i, -8
  %i.u = sub i64 %i.t, %i.j                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 56
  %i.x = sub i64 %i.s, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ac = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 4, !alias.scope !510, !noalias !507
  %wide.load14 = load <2 x i64>, ptr %i.ac, align 4, !alias.scope !510, !noalias !507
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !507, !noalias !510
  store <2 x i64> %wide.load14, ptr %i.ad, align 4, !alias.scope !507, !noalias !510
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader16

.lr.ph.i.i.i.i.i.i.preheader16:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader16, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader16 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !510, !noalias !507
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !507, !noalias !510
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !513

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !490
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !488
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !489
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc23BytecodeModuleGenerator8generateEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.177") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(964) initializes((958, 959)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %4 = alloca %"class.std::vector.185", align 16  ; 7 uses
  %5 = alloca %"class.std::vector.15", align 16   ; 7 uses
  %6 = alloca %"class.std::vector.196", align 16  ; 7 uses
  %7 = alloca %"class.std::vector", align 16      ; 7 uses
  %8 = alloca %"class.std::vector.201", align 16  ; 7 uses
  %9 = alloca %"class.std::vector", align 16      ; 7 uses
  %10 = alloca %"class.hermes::hbc::DebugInfoGenerator", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %11 = alloca %"class.std::unique_ptr.208", align 8 ; 9 uses
  %12 = alloca %"class.std::unique_ptr.208", align 8 ; 3 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %14 = alloca %"class.hermes::hbc::DebugInfo", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 958
  store i8 0, ptr %i.d, align 2, !tbaa !514
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  call void @_ZNK6hermes3hbc18StringLiteralTable14getStringKindsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.185") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK6hermes3hbc18StringLiteralTable19getIdentifierHashesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 957
  %i.g = load i8, ptr %i.f, align 1, !tbaa !327, !range !185, !noundef !40
  %i.h = shl nuw nsw i8 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.j = load i8, ptr %i.i, align 8, !tbaa !515, !range !185, !noundef !40
  %i.k = or disjoint i8 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !516
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !516
  %i.p = icmp eq ptr %i.m, %i.o
  %i.q = select i1 %i.p, i8 0, i8 2
  %i.r = or disjoint i8 %i.k, %i.q
  %i.s = call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #23 ; 44 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !517
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.w, align 8, !tbaa !518, !noalias !519
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !524, !noalias !519
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 353
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.at = load <2 x ptr>, ptr %i.e, align 8, !tbaa !525, !noalias !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i8 0, i64 24, i1 false), !noalias !519
  store i8 0, ptr %i.z, align 1, !tbaa !526, !noalias !527
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !152, !noalias !527
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ax = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !44, !noalias !527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !noalias !527
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.196") align 8 %6, ptr noundef nonnull align 8 dereferenceable(104) %i.ac) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNK6hermes6bigint19UniquingBigIntTable15getDigitsBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(104) %i.ac) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNK6hermes19UniquingRegExpTable12getEntryListEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.201") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZNK6hermes19UniquingRegExpTable17getBytecodeBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #20
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !532
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !533
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(513) %i.s, i8 0, i64 24, i1 false)
  store i32 %i.ay, ptr %i.al, align 8, !tbaa !534
  %i.ba = load <2 x ptr>, ptr %4, align 16, !tbaa !563
  store <2 x ptr> %i.ba, ptr %i.am, align 8, !tbaa !563
  %i.bb = load ptr, ptr %i.ao, align 16, !tbaa !564
  store ptr %i.bb, ptr %i.an, align 8, !tbaa !564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bc = load <2 x ptr>, ptr %5, align 16, !tbaa !183
  store <2 x ptr> %i.bc, ptr %i.ap, align 8, !tbaa !183
  %i.bd = load ptr, ptr %i.ar, align 16, !tbaa !182
  store ptr %i.bd, ptr %i.aq, align 8, !tbaa !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !525
  store ptr %i.y, ptr %i.av, align 8, !tbaa !524
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store ptr %i.au, ptr %i.be, align 8, !tbaa !152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.bg = load <2 x ptr>, ptr %6, align 16, !tbaa !565
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !565
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !566
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.bl = load <2 x ptr>, ptr %7, align 16, !tbaa !44
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !152
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.bq = load <2 x ptr>, ptr %9, align 16, !tbaa !44
  store <2 x ptr> %i.bq, ptr %i.bp, align 8, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !152
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.bv = load <2 x ptr>, ptr %8, align 16, !tbaa !567
  store <2 x ptr> %i.bv, ptr %i.bu, align 8, !tbaa !567
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !568
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bz, i8 0, i64 48, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !405
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  store i32 0, ptr %i.cc, align 8, !tbaa !403
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 284
  store i32 1, ptr %i.cd, align 4, !tbaa !404
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  store i32 0, ptr %i.ce, align 8, !tbaa !569
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 308
  store i32 0, ptr %i.cf, align 4, !tbaa !570
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  store i32 0, ptr %i.cg, align 8, !tbaa !571
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i8 0, i64 40, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 360
  %i.cj = load <2 x ptr>, ptr %i.af, align 8, !tbaa !44
  store <2 x ptr> %i.cj, ptr %i.ci, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !152
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.co = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !44
  store <2 x ptr> %i.co, ptr %i.cn, align 8, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 400
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !152
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  %i.ct = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !44
  store <2 x ptr> %i.ct, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !152
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  store i32 %i.az, ptr %i.cx, align 8, !tbaa !572
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 440
  %i.cz = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !516
  store <2 x ptr> %i.cz, ptr %i.cy, align 8, !tbaa !516
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !489
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.de = load <2 x ptr>, ptr %i.l, align 8, !tbaa !516
  store <2 x ptr> %i.de, ptr %i.dd, align 8, !tbaa !516
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 480
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !489
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
end_hunk_2
