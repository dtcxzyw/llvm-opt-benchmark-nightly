Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommentParser?download=true
begin_hunk_0_@_ZN5clang8comments6Parser18parseVerbatimBlockEv:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #11
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.q, %bb.r
  %.sroa.0.0.i = phi i64 [ %i.bx, %bb.r ], [ 0, %bb.q ]
  %i.by = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !25 ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = icmp eq i32 %i.bz, 0
  br i1 %i.cb, label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !151, !nonnull !37, !align !38 ; 4 uses
  %i.cd = shl nuw nsw i64 %i.ca, 3                ; 4 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !68 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !79
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %bb.s
  %i.ck = inttoptr i64 %i.cg to ptr
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !68
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.cl = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, i64 noundef %i.cd, i64 noundef %i.cd, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi ptr [ %i.ce, %bb.t ], [ %i.cl, %bb.u ] ; 4 uses
  %.not.i22 = icmp eq i32 %i.bz, 1
  br i1 %.not.i22, label %bb.w, label %bb.v, !prof !165

bb.v:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i.i, ptr align 8 %i.by, i64 %i.cd, i1 false)
  br label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit

bb.w:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !260
  store ptr %i.cm, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !260
  br label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit

_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.v, %bb.w
  %.sroa.05.0.i = phi ptr [ null, %_ZN4llvm9StringRefC2EPKc.exit ], [ %.0.i.i.i.i.i.i, %bb.v ], [ %.0.i.i.i.i.i.i, %bb.w ]
  store ptr %.sroa.05.0.i, ptr %8, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ca, ptr %i.cn, align 8
  call void @_ZN5clang8comments4Sema24actOnVerbatimBlockFinishEPNS0_20VerbatimBlockCommentENS_14SourceLocationEN4llvm9StringRefENS5_8ArrayRefIPNS0_24VerbatimBlockLineCommentEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.bv, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i20, ptr %i.bw, i64 %.sroa.0.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.151") align 8 %8) #11
  %i.co = load i32, ptr %i.g, align 8, !tbaa !25  ; 3 uses
  %.not.i.i25 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i25, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit
  %i.cp = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !37, !align !38
  call void @_ZN5clang8comments5Lexer3lexERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #11
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit26

bb.y:                                             ; preds = %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !23, !noalias !262
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !93
  %i.cu = add i32 %i.co, -1
  store i32 %i.cu, ptr %i.g, align 8, !tbaa !25, !noalias !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit26

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments24VerbatimBlockLineCommentELb1EE9push_backES4_.exit
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !37, !align !38 ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.cx = load i32, ptr %i.ab, align 8, !tbaa !25 ; 3 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp eq i32 %i.cx, 0
  br i1 %i.cz, label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !151, !nonnull !37, !align !38 ; 4 uses
  %i.db = shl nuw nsw i64 %i.cy, 3                ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !68 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = add i64 %i.db, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !79
  %i.dh = icmp ult i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.ab, label %bb.ac, !prof !66

bb.ab:                                            ; preds = %bb.aa
  %i.di = inttoptr i64 %i.de to ptr
  store ptr %i.di, ptr %i.da, align 8, !tbaa !68
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i28

bb.ac:                                            ; preds = %bb.aa
  %i.dj = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.da, i64 noundef %i.db, i64 noundef %i.db, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i28

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i28: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i29 = phi ptr [ %i.dc, %bb.ab ], [ %i.dj, %bb.ac ] ; 4 uses
  %.not.i30 = icmp eq i32 %i.cx, 1
  br i1 %.not.i30, label %bb.ae, label %bb.ad, !prof !165

bb.ad:                                            ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i28
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i.i29, ptr align 8 %i.cw, i64 %i.db, i1 false)
  br label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit34

bb.ae:                                            ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIPN5clang8comments24VerbatimBlockLineCommentEEEPT_m.exit.i.i28
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !260
  store ptr %i.dk, ptr %.0.i.i.i.i.i.i29, align 8, !tbaa !260
  br label %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit34

_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit34: ; preds = %bb.z, %bb.ad, %bb.ae
  %.sroa.05.0.i31 = phi ptr [ null, %bb.z ], [ %.0.i.i.i.i.i.i29, %bb.ad ], [ %.0.i.i.i.i.i.i29, %bb.ae ]
  store ptr %.sroa.05.0.i31, ptr %9, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cy, ptr %i.dl, align 8
  call void @_ZN5clang8comments4Sema24actOnVerbatimBlockFinishEPNS0_20VerbatimBlockCommentENS_14SourceLocationEN4llvm9StringRefENS5_8ArrayRefIPNS0_24VerbatimBlockLineCommentEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.cv, ptr noundef %i.f, i32 0, ptr nonnull @.str, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.151") align 8 %9) #11
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit26

_ZN5clang8comments6Parser12consumeTokenEv.exit26: ; preds = %bb.y, %bb.x, %_ZN5clang8comments4Sema9copyArrayIPNS0_24VerbatimBlockLineCommentEEEN4llvm8ArrayRefIT_EES8_.exit34
  %i.dm = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.aa
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIPN5clang8comments24VerbatimBlockLineCommentELj8EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit26
  call void @free(ptr noundef %i.dm) #11
  br label %_ZN4llvm11SmallVectorIPN5clang8comments24VerbatimBlockLineCommentELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang8comments24VerbatimBlockLineCommentELj8EED2Ev.exit: ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit26, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %i.f
}

declare noundef ptr @_ZN5clang8comments4Sema23actOnVerbatimBlockStartENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(168), i32, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang8comments4Sema22actOnVerbatimBlockLineENS_14SourceLocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(168), i32, ptr, i64) local_unnamed_addr #2

declare void @_ZN5clang8comments4Sema24actOnVerbatimBlockFinishEPNS0_20VerbatimBlockCommentENS_14SourceLocationEN4llvm9StringRefENS5_8ArrayRefIPNS0_24VerbatimBlockLineCommentEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, i32, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.151") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang8comments6Parser17parseVerbatimLineEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.clang::comments::Token", align 8 ; 4 uses
  %2 = alloca %"class.clang::comments::Token", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.sroa.016.0.copyload = load i32, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.517.0.copyload = load i32, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !39
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.618.0.copyload = load i32, ptr %.sroa.618.0..sroa_idx, align 4, !tbaa !39
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !37, !align !38
  tail call void @_ZN5clang8comments5Lexer3lexERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #11
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !noalias !265
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !93
  %i.j = add i32 %i.c, -1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !25, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit

_ZN5clang8comments6Parser12consumeTokenEv.exit:   ; preds = %bb.b, %bb.c
  %i.k = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !80
  %i.l = icmp eq i32 %i.k, 11
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !39
  %i.m = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !41
  %i.n = load i32, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !42
  %i.o = zext i32 %i.n to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit
  %i.p = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.618.0.copyload, i32 1)
  %.sroa.0.0.i = add i32 %i.p, %.sroa.016.0.copyload
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.e ]
  %.sroa.014.0 = phi ptr [ %i.m, %bb.d ], [ @.str, %bb.e ]
  %.sroa.015.0 = phi i32 [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.i, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27, !nonnull !37, !align !38
  %i.s = tail call noundef ptr @_ZN5clang8comments4Sema17actOnVerbatimLineENS_14SourceLocationEjS2_N4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(168) %i.r, i32 %.sroa.016.0.copyload, i32 noundef %.sroa.517.0.copyload, i32 %.sroa.015.0, ptr %.sroa.014.0, i64 %.sroa.6.0) #11
  %i.t = load i32, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %.not.i.i10 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !37, !align !38
  tail call void @_ZN5clang8comments5Lexer3lexERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #11
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit11

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23, !noalias !268
  %i.x = zext i32 %i.t to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !93
  %i.aa = add i32 %i.t, -1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !25, !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit11

_ZN5clang8comments6Parser12consumeTokenEv.exit11: ; preds = %bb.g, %bb.h
  ret ptr %i.s
}

declare noundef ptr @_ZN5clang8comments4Sema17actOnVerbatimLineENS_14SourceLocationEjS2_N4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(168), i32, i32 noundef, i32, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang8comments6Parser17parseBlockContentEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80
  switch i32 %i.b, label %bb.e [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 12, label %bb.b
    i32 18, label %bb.b
    i32 7, label %bb.c
    i32 10, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call noundef ptr @_ZN5clang8comments6Parser28parseParagraphOrBlockCommandEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5clang8comments6Parser18parseVerbatimBlockEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN5clang8comments6Parser17parseVerbatimLineEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang8comments6Parser16parseFullCommentEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.clang::comments::Token", align 8 ; 4 uses
  %2 = alloca %"class.clang::comments::Token", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.152", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang8comments6Parser12consumeTokenEv.exit
  %i.g = load i32, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !37, !align !38
  tail call void @_ZN5clang8comments5Lexer3lexERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #11
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !23, !noalias !271
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !93
  %i.m = add i32 %i.g, -1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !25, !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang8comments6Parser12consumeTokenEv.exit

_ZN5clang8comments6Parser12consumeTokenEv.exit:   ; preds = %bb.c, %bb.d
  %i.n = load i32, ptr %i.b, align 4, !tbaa !80   ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit, %bb.a
  %.pr = phi i32 [ %i.c, %bb.a ], [ %i.n, %_ZN5clang8comments6Parser12consumeTokenEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.r, align 4, !tbaa !26
  %.not8 = icmp eq i32 %.pr, 0
  br i1 %.not8, label %._crit_edge11.thread, label %.lr.ph10

._crit_edge11.thread:                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27, !nonnull !37, !align !38
  br label %_ZN5clang8comments4Sema9copyArrayIPNS0_19BlockContentCommentEEEN4llvm8ArrayRefIT_EES8_.exit

.lr.ph10:                                         ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5clang8comments6Parser12consumeTokenEv.exit2, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit
  %i.w = phi i32 [ %i.ai, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit ], [ %i.ar, %_ZN5clang8comments6Parser12consumeTokenEv.exit2 ] ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge11, label %bb.e, !llvm.loop !275

bb.e:                                             ; preds = %.lr.ph10, %.loopexit
  %i.x = phi i32 [ %.pr, %.lr.ph10 ], [ %i.w, %.loopexit ]
  switch i32 %i.x, label %bb.i [
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 12, label %bb.f
    i32 18, label %bb.f
    i32 7, label %bb.g
    i32 10, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = call noundef ptr @_ZN5clang8comments6Parser28parseParagraphOrBlockCommandEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %_ZN5clang8comments6Parser17parseBlockContentEv.exit

bb.g:                                             ; preds = %bb.e
  %i.z = call noundef ptr @_ZN5clang8comments6Parser18parseVerbatimBlockEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %_ZN5clang8comments6Parser17parseBlockContentEv.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = call noundef ptr @_ZN5clang8comments6Parser17parseVerbatimLineEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  br label %_ZN5clang8comments6Parser17parseBlockContentEv.exit

bb.i:                                             ; preds = %bb.e
  unreachable

_ZN5clang8comments6Parser17parseBlockContentEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !25  ; 2 uses
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !26
  %.not.i = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i, label %bb.k, label %bb.j, !prof !66

bb.j:                                             ; preds = %_ZN5clang8comments6Parser17parseBlockContentEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit

bb.k:                                             ; preds = %_ZN5clang8comments6Parser17parseBlockContentEv.exit
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %3, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  store ptr %.0.i, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !25
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.q, align 8, !tbaa !25
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit: ; preds = %bb.j, %bb.k
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !80  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang8comments19BlockContentCommentELb1EE9push_backES4_.exit, %_ZN5clang8comments6Parser12consumeTokenEv.exit2
  %i.ak = load i32, ptr %i.u, align 8, !tbaa !25  ; 3 uses
  %.not.i.i1 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i1, label %bb.l, label %bb.m
end_hunk_0
