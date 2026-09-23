Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LanguageFeatures?download=true
inline.NumInlined: 9821
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@l_Lean_Lsp_instToJsonDocumentHighlightParams_toJson:bb.a
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !10
  br label %lean_inc.exit59

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit59, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit59

lean_inc.exit59:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = and i64 %i.k, 1
  %.not.i57 = icmp eq i64 %i.l, 0
  br i1 %.not.i57, label %bb.g, label %lean_inc.exit

bb.g:                                             ; preds = %lean_inc.exit59
  %.val.i.i60 = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i60, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %.val.i.i60, 1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc.exit

bb.i:                                             ; preds = %bb.g
  %.not.i.i61 = icmp eq i32 %.val.i.i60, 0
  br i1 %.not.i.i61, label %lean_inc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit59, %bb.h, %bb.i, %bb.j
  %i.p = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_inc.exit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %0, align 8, !tbaa !10
  br label %bb.o

bb.l:                                             ; preds = %lean_inc.exit
  %.not.i54 = icmp eq i32 %i.p, 0
  br i1 %.not.i54, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.s = tail call ptr @l_Lean_Lsp_instToJsonTextDocumentIdentifier_toJson(ptr noundef %i.b) #10
  store ptr %i.s, ptr %i.c, align 8, !tbaa !13
  store ptr @l_Lean_Lsp_instFromJsonCompletionParams_fromJson___closed__0_value, ptr %i.a, align 8, !tbaa !13
  br label %bb.q

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.t = tail call ptr @l_Lean_Lsp_instToJsonTextDocumentIdentifier_toJson(ptr noundef %i.b) #10
  tail call void @lean_inc_heartbeat() #10
  %i.u = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.p, label %lean_alloc_ctor.exit

bb.p:                                             ; preds = %bb.o
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.u, align 4, !tbaa !10
  store i32 131096, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @l_Lean_Lsp_instFromJsonCompletionParams_fromJson___closed__0_value, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.y, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %lean_alloc_ctor.exit, %bb.n
  %.051 = phi ptr [ %0, %bb.n ], [ %i.u, %lean_alloc_ctor.exit ]
  tail call void @lean_inc_heartbeat() #10
  %i.z = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %lean_alloc_ctor.exit63

bb.r:                                             ; preds = %bb.q
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit63:                           ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !10
  store i32 16908312, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.051, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8, !tbaa !13
  %i.ae = tail call ptr @l_Lean_Lsp_instToJsonPosition_toJson(ptr noundef %i.d) #10
  tail call void @lean_inc_heartbeat() #10
  %i.af = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.s, label %lean_alloc_ctor.exit64

bb.s:                                             ; preds = %lean_alloc_ctor.exit63
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit64:                           ; preds = %lean_alloc_ctor.exit63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 1, ptr %i.af, align 4, !tbaa !10
  store i32 131096, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @l_Lean_Lsp_instFromJsonCompletionParams_fromJson___closed__9_value, ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.t, label %lean_alloc_ctor.exit65

bb.t:                                             ; preds = %lean_alloc_ctor.exit64
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit65:                           ; preds = %lean_alloc_ctor.exit64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !10
  store i32 16908312, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.af, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.ap = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.u, label %lean_alloc_ctor.exit66

bb.u:                                             ; preds = %lean_alloc_ctor.exit65
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit66:                           ; preds = %lean_alloc_ctor.exit65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 1, ptr %i.ap, align 4, !tbaa !10
  store i32 16908312, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.au = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.v, label %lean_alloc_ctor.exit67

bb.v:                                             ; preds = %lean_alloc_ctor.exit66
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit67:                           ; preds = %lean_alloc_ctor.exit66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !10
  store i32 16908312, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.z, ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.ap, ptr %i.ay, align 8, !tbaa !13
  %i.az = tail call ptr @l___private_Init_Data_List_Impl_0__List_flatMapTR_go___at___00Lean_Lsp_instToJsonCompletionOptions_toJson_spec__1(ptr noundef nonnull %i.au, ptr noundef nonnull @l_Lean_Lsp_instToJsonCompletionOptions_toJson___closed__0_value) ; 5 uses
  %i.ba = tail call ptr @l_Lean_Json_mkObj(ptr noundef %i.az) #10
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.w, label %lean_dec.exit

bb.w:                                             ; preds = %lean_alloc_ctor.exit67
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !10 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !10
  br label %lean_dec.exit

bb.y:                                             ; preds = %bb.w
  %.not.i55 = icmp eq i32 %i.bd, 0
  br i1 %.not.i55, label %lean_dec.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.az) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.z, %bb.y, %bb.x, %lean_alloc_ctor.exit67
  ret ptr %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_DocumentHighlightKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_DocumentHighlightKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_DocumentHighlightKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Lsp_DocumentHighlightKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_DocumentHighlightKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_DocumentHighlightKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_DocumentHighlightKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_DocumentHighlightKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_DocumentHighlightKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_DocumentHighlightKind_text_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson:bb.a
lean_inc.exit81:                                  ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  tail call void @lean_inc_heartbeat() #10
  %i.av = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.aa, label %lean_alloc_ctor.exit95

bb.aa:                                            ; preds = %lean_inc.exit81
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit95:                           ; preds = %lean_inc.exit81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 1, ptr %i.av, align 4, !tbaa !10
  store i32 65552, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.al, ptr %i.ay, align 8, !tbaa !13
  br label %lean_dec.exit

lean_obj_tag.exit91.thread:                       ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit91
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !10
  %i.bb = icmp eq i32 %.val, 1
  br i1 %i.bb, label %lean_dec.exit, label %bb.ab

bb.ab:                                            ; preds = %lean_obj_tag.exit91.thread
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i79 = icmp eq i64 %i.bd, 0
  br i1 %.not.i79, label %bb.ac, label %lean_inc.exit

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i96 = load i32, ptr %i.ba, align 4, !tbaa !10 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i96, 0
  br i1 %i.be, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.bf = add nuw i32 %.val.i.i96, 1
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i97 = icmp eq i32 %.val.i.i96, 0
  br i1 %.not.i.i97, label %lean_inc.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  br i1 %.not.i86, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %lean_inc.exit
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !10  ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %bb.ag
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !10
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %.not.i77 = icmp eq i32 %i.bh, 0
  br i1 %.not.i77, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #10
  br label %bb.ak

bb.ak:                                            ; preds = %lean_inc.exit, %bb.ah, %bb.ai, %bb.aj
  tail call void @lean_inc_heartbeat() #10
  %i.bk = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.al, label %lean_alloc_ctor.exit99

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit99:                           ; preds = %bb.ak
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 1, ptr %i.bk, align 4, !tbaa !10
  store i32 16842768, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ba, ptr %i.bn, align 8, !tbaa !13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit91.thread, %lean_alloc_ctor.exit99, %lean_alloc_ctor.exit95, %lean_dec.exit67, %lean_alloc_ctor.exit, %bb.r
  %.3 = phi ptr [ %i.av, %lean_alloc_ctor.exit95 ], [ %i.ae, %lean_alloc_ctor.exit ], [ %.065, %bb.r ], [ %i.b, %lean_dec.exit67 ], [ %i.bk, %lean_alloc_ctor.exit99 ], [ %i.b, %lean_obj_tag.exit91.thread ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__4_once seq_cst, align 4, !tbaa !17
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__4, ptr noundef nonnull @l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__4_once, ptr noundef nonnull @_init_l_Lean_Lsp_instFromJsonFoldingRangeParams_fromJson___closed__4) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @lean_string_append(ptr noundef %.0.i, ptr noundef nonnull @l_Lean_Lsp_instFromJsonCompletionOptions_fromJson___closed__12_value) #10
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Lsp_instToJsonFoldingRangeParams_toJson(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Lsp_instToJsonTextDocumentIdentifier_toJson(ptr noundef %0) #10
  tail call void @lean_inc_heartbeat() #10
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !10
  store i32 131096, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_Lsp_instFromJsonCompletionParams_fromJson___closed__0_value, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %lean_alloc_ctor.exit19

bb.c:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit19:                           ; preds = %lean_alloc_ctor.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !10
  store i32 16908312, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.b, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %lean_alloc_ctor.exit20

bb.d:                                             ; preds = %lean_alloc_ctor.exit19
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit20:                           ; preds = %lean_alloc_ctor.exit19
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !10
  store i32 16908312, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.p, align 8, !tbaa !13
  %i.q = tail call ptr @l___private_Init_Data_List_Impl_0__List_flatMapTR_go___at___00Lean_Lsp_instToJsonCompletionOptions_toJson_spec__1(ptr noundef nonnull %i.l, ptr noundef nonnull @l_Lean_Lsp_instToJsonCompletionOptions_toJson___closed__0_value) ; 5 uses
  %i.r = tail call ptr @l_Lean_Json_mkObj(ptr noundef %i.q) #10
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 1
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %lean_dec.exit

bb.e:                                             ; preds = %lean_alloc_ctor.exit20
  %i.u = load i32, ptr %i.q, align 4, !tbaa !10   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.e
  %.not.i18 = icmp eq i32 %i.u, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %lean_alloc_ctor.exit20
  ret ptr %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_FoldingRangeKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_FoldingRangeKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_FoldingRangeKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Lsp_FoldingRangeKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_FoldingRangeKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_FoldingRangeKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_FoldingRangeKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_FoldingRangeKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_FoldingRangeKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_FoldingRangeKind_comment_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
end_hunk_1
begin_hunk_2_@l_Lean_Lsp_instToJsonSignatureHelp_toJson:bb.a

bb.e:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i43 = load i32, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i43, 0
  br i1 %i.j, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw i32 %.val.i.i43, 1
  store i32 %i.k, ptr %i.g, align 4, !tbaa !10
  br label %lean_inc.exit42

bb.g:                                             ; preds = %bb.e
  %.not.i.i44 = icmp eq i32 %.val.i.i43, 0
  br i1 %.not.i.i44, label %lean_inc.exit42, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit42

lean_inc.exit42:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_inc_ref.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 1
  %.not.i40 = icmp eq i64 %i.p, 0
  br i1 %.not.i40, label %bb.i, label %lean_inc.exit

bb.i:                                             ; preds = %lean_inc.exit42
  %.val.i.i46 = load i32, ptr %i.n, align 4, !tbaa !10 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i46, 0
  br i1 %i.q, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.r = add nuw i32 %.val.i.i46, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !10
  br label %lean_inc.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i47 = icmp eq i32 %.val.i.i46, 0
  br i1 %.not.i.i47, label %lean_inc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit42
  %i.t = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_inc.exit
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit39

bb.n:                                             ; preds = %lean_inc.exit
  %.not.i38 = icmp eq i32 %i.t, 0
  br i1 %.not.i38, label %lean_dec_ref.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit39

lean_dec_ref.exit39:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.w = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load i64, ptr %i.w, align 8, !tbaa !15
  %i.x = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Array_toJson___at___00Lean_Lsp_instToJsonSignatureHelp_toJson_spec__0_spec__0(i64 noundef %.val.i, i64 noundef 0, ptr noundef nonnull %i.b)
  tail call void @lean_inc_heartbeat() #10
  %i.y = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.p, label %l_Array_toJson___at___00Lean_Lsp_instToJsonSignatureHelp_toJson_spec__0.exit

bb.p:                                             ; preds = %lean_dec_ref.exit39
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

l_Array_toJson___at___00Lean_Lsp_instToJsonSignatureHelp_toJson_spec__0.exit: ; preds = %lean_dec_ref.exit39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.y, align 4, !tbaa !10
  store i32 67174416, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.q, label %lean_alloc_ctor.exit

bb.q:                                             ; preds = %l_Array_toJson___at___00Lean_Lsp_instToJsonSignatureHelp_toJson_spec__0.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %l_Array_toJson___at___00Lean_Lsp_instToJsonSignatureHelp_toJson_spec__0.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !10
  store i32 131096, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @l_Lean_Lsp_instFromJsonSignatureHelp_fromJson___closed__0_value, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.ah = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.r, label %lean_alloc_ctor.exit49

bb.r:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit49:                           ; preds = %lean_alloc_ctor.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 1, ptr %i.ah, align 4, !tbaa !10
  store i32 16908312, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.al, align 8, !tbaa !13
  %i.am = tail call ptr @l_Lean_Json_opt___at___00Lean_Lsp_instToJsonSignatureInformation_toJson_spec__1(ptr noundef nonnull @l_Lean_Lsp_instFromJsonSignatureHelp_fromJson___closed__9_value, ptr noundef %i.g)
  %i.an = tail call ptr @l_Lean_Json_opt___at___00Lean_Lsp_instToJsonSignatureInformation_toJson_spec__1(ptr noundef nonnull @l_Lean_Lsp_instFromJsonSignatureInformation_fromJson___closed__14_value, ptr noundef %i.n)
  tail call void @lean_inc_heartbeat() #10
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.s, label %lean_alloc_ctor.exit50

bb.s:                                             ; preds = %lean_alloc_ctor.exit49
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit50:                           ; preds = %lean_alloc_ctor.exit49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !10
  store i32 16908312, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.as, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.at = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %lean_alloc_ctor.exit51

bb.t:                                             ; preds = %lean_alloc_ctor.exit50
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit51:                           ; preds = %lean_alloc_ctor.exit50
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !10
  store i32 16908312, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #10
  %i.ay = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.u, label %lean_alloc_ctor.exit52

bb.u:                                             ; preds = %lean_alloc_ctor.exit51
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit52:                           ; preds = %lean_alloc_ctor.exit51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 1, ptr %i.ay, align 4, !tbaa !10
  store i32 16908312, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ah, ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !13
  %i.bd = tail call ptr @l___private_Init_Data_List_Impl_0__List_flatMapTR_go___at___00Lean_Lsp_instToJsonCompletionOptions_toJson_spec__1(ptr noundef nonnull %i.ay, ptr noundef nonnull @l_Lean_Lsp_instToJsonCompletionOptions_toJson___closed__0_value) ; 5 uses
  %i.be = tail call ptr @l_Lean_Json_mkObj(ptr noundef %i.bd) #10
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %bb.v, label %lean_dec.exit

bb.v:                                             ; preds = %lean_alloc_ctor.exit52
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !10 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.bd, align 4, !tbaa !10
  br label %lean_dec.exit

bb.x:                                             ; preds = %bb.v
  %.not.i37 = icmp eq i32 %i.bh, 0
  br i1 %.not.i37, label %lean_dec.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_alloc_ctor.exit52
  ret ptr %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Lsp_SignatureHelpTriggerKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Lsp_SignatureHelpTriggerKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Lsp_SignatureHelpTriggerKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Lsp_SignatureHelpTriggerKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Lsp_SignatureHelpTriggerKind_invoked_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
end_hunk_2
