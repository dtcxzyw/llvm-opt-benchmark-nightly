Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5872
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser13restoreLocalsEj:bb.a

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.08 = phi i64 [ %i.h, %.lr.ph ], [ %i.r, %bb.e ]
  %i.r = add i64 %.08, -1                         ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  store ptr %i.w, ptr %i.x, align 8, !tbaa !114
  %i.y = icmp ugt i64 %i.r, %i.i
  br i1 %i.y, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser25incrementRecursionCounterEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1232) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !317
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !317
  %i.d = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.e = icmp ugt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull @.str.320, ptr noundef %1) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser9parseStatEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.Luau::AstName", align 8    ; 5 uses
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %6 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %7 = alloca %"struct.Luau::Location", align 8   ; 7 uses
  %8 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %9 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %10 = alloca %"struct.Luau::AstArray.172", align 8 ; 4 uses
  %11 = alloca %"struct.Luau::AstArray", align 8  ; 5 uses
  %12 = alloca %"struct.Luau::AstArray.171", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  switch i32 %i.d, label %bb.y [
    i32 300, label %bb.b
    i32 311, label %bb.c
    i32 293, label %bb.d
    i32 298, label %bb.e
    i32 306, label %bb.f
    i32 299, label %_ZN4Luau6Parser25getAttributeStartLocationERKNS_8AstArrayIPNS_7AstAttrEEEPKNS_10TempVectorIPNS_11CstAttrListEEERKNS_8LocationE.exit
    i32 302, label %bb.u
    i32 307, label %bb.v
    i32 292, label %bb.w
    i32 284, label %bb.x
    i32 285, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau6Parser7parseIfEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4Luau6Parser10parseWhileEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN4Luau6Parser7parseDoEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN4Luau6Parser8parseForEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN4Luau6Parser11parseRepeatEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

_ZN4Luau6Parser25getAttributeStartLocationERKNS_8AstArrayIPNS_7AstAttrEEEPKNS_10TempVectorIPNS_11CstAttrListEEERKNS_8LocationE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.sroa.032.0.copyload33.i = load i64, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !231
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 0, ptr %i.a, align 1, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr null, ptr %2, align 8, !tbaa !341
  %i.k = call noundef ptr @_ZN4Luau6Parser17parseFunctionNameERbRNS_7AstNameE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57   ; 5 uses
  %i.n = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !31
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4Luau6Parser25getAttributeStartLocationERKNS_8AstArrayIPNS_7AstAttrEEEPKNS_10TempVectorIPNS_11CstAttrListEEERKNS_8LocationE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !344
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !345, !range !66, !noundef !67
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.h:                                             ; preds = %bb.g, %_ZN4Luau6Parser25getAttributeStartLocationERKNS_8AstArrayIPNS_7AstAttrEEEPKNS_10TempVectorIPNS_11CstAttrListEEERKNS_8LocationE.exit
  %i.u = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !31
  %i.v = icmp eq i32 %i.m, %i.u
  br i1 %i.v, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !349
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !341 ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !341 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !350
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.al = lshr i64 %i.ak, 4
  %i.am = lshr i64 %i.ak, 9
  %i.an = xor i64 %i.al, %i.am
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !215
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i.i.i = phi i64 [ %i.an, %bb.l ], [ %i.au, %bb.o ]
  %.01828.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.at, %bb.o ]
  %.01929.i.i.i.i = and i64 %.pn.i.i.i.i, %i.aj   ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.01929.i.i.i.i ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !341 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ae
  br i1 %i.ar, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp eq ptr %i.aq, %i.af
  br i1 %i.as, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add i64 %.01828.i.i.i.i, 1              ; 3 uses
  %i.au = add i64 %i.at, %.01929.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.at, %i.aj
  br i1 %.not.i.i.i.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.m, !llvm.loop !10

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i: ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !352
  %.not.i40 = icmp eq ptr %i.aw, null
  %i.ax = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4
  %i.ay = icmp eq i32 %i.m, %i.ax
  %or.cond10.i = select i1 %.not.i40, i1 true, i1 %i.ay
  br i1 %or.cond10.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

bb.p:                                             ; preds = %bb.h
  %.old.i = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4, !tbaa !31
  %.old9.i = icmp eq i32 %i.m, %.old.i
  br i1 %.old9.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit: ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.p
  %i.az = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !31
  %i.ba = icmp eq i32 %i.m, %i.az
  br i1 %i.ba, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %i.bb = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.bc = trunc nuw i8 %i.bb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  br i1 %i.bc, label %bb.r, label %.lr.ph.i.i

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call noundef ptr @_ZN4Luau6Parser17reportLValueErrorEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %i.k)
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %bb.q
  %13 = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.bg = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 noundef 8) ; 2 uses
  store ptr %i.k, ptr %i.bg, align 8, !tbaa !53
  store ptr %i.bg, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.bh, align 8
  %i.bi = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.244)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i, %bb.r
  %i.bj = phi ptr [ %i.bd, %bb.r ], [ %i.bi, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread: ; preds = %bb.n, %bb.o, %bb.k, %bb.j, %bb.g, %bb.i, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.p, %bb.s, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %.098 = phi ptr [ %i.k, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit ], [ %i.bj, %bb.s ], [ %i.k, %bb.p ], [ %i.k, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i ], [ %i.k, %bb.i ], [ %i.k, %bb.g ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %i.k, %bb.o ], [ %i.k, %bb.n ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1184 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !31
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !326, !range !66, !noundef !67
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = call { ptr, ptr } @_ZN4Luau6Parser17parseFunctionBodyEbRKNS_6LexemeERKNS_7AstNameEPKNS0_4NameERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext false, ptr noundef null)
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 2 uses
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !211
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1184 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %.sroa.032.0.copyload33.i, ptr %4, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.cb = load i64, ptr %i.ca, align 4
  store i64 %i.cb, ptr %i.bz, align 8
  %i.cc = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 noundef 48) ; 3 uses
  call void @_ZN4Luau15AstStatFunctionC1ERKNS_8LocationEPNS_7AstExprEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %.098, ptr noundef %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !353, !range !66, !noundef !67
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit

bb.t:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 noundef 32) ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ch, align 4
  call void @_ZN4Luau15CstStatFunctionC1ENS_8PositionE(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 %.sroa.0.0.copyload.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !354
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit

_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit: ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.au

bb.u:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.036.0.copyload = load i64, ptr %i.cl, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.cm = call noundef ptr @_ZN4Luau6Parser10parseLocalENS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %.sroa.036.0.copyload, i64 poison, i64 %.sroa.036.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.au

bb.v:                                             ; preds = %bb.a
  %i.cn = tail call noundef ptr @_ZN4Luau6Parser11parseReturnEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.w:                                             ; preds = %bb.a
  %i.co = tail call noundef ptr @_ZN4Luau6Parser10parseBreakEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.x:                                             ; preds = %bb.a, %bb.a
  %i.cp = tail call noundef ptr @_ZN4Luau6Parser18parseAttributeStatEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.au

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !58
  %i.cr = tail call noundef ptr @_ZN4Luau6Parser16parsePrimaryExprEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext true) ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !57
  %i.cu = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !31
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cz = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 noundef 40) ; 2 uses
  tail call void @_ZN4Luau11AstStatExprC1ERKNS_8LocationEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull %i.cr)
  br label %.critedge10

bb.aa:                                            ; preds = %bb.y
  %i.da = load i32, ptr %i.c, align 8, !tbaa !119 ; 2 uses
  switch i32 %i.da, label %bb.ac [
    i32 44, label %bb.ab
    i32 61, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.db = tail call noundef ptr @_ZN4Luau6Parser15parseAssignmentEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull %i.cr)
  br label %.critedge10

bb.ac:                                            ; preds = %bb.aa
  %switch.tableidx.i = add i32 %i.da, -270        ; 2 uses
  %i.dc = icmp ugt i32 %switch.tableidx.i, 7
  br i1 %i.dc, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.ac
  %i.dd = tail call noundef ptr @_ZN4Luau6Parser23parseCompoundAssignmentEPNS_7AstExprENS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull %i.cr, i32 noundef %switch.tableidx.i)
  br label %.critedge10

bb.ad:                                            ; preds = %bb.ac
  %i.de = tail call ptr @_ZN4Luau13getIdentifierEPNS_7AstExprE(ptr noundef nonnull %i.cr) ; 7 uses
  %.not.i41 = icmp eq ptr %i.de, null
  br i1 %.not.i41, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.ad
  %i.df = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %.thread100

bb.ae:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %.sroa.031.0.copyload = load i64, ptr %i.dh, align 4
  %i.di = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i1 noundef zeroext false, i64 %.sroa.031.0.copyload)
  br label %.critedge10

.thread100:                                       ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.dj = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.dk = trunc nuw i8 %i.dj to i1                ; 3 uses
  br i1 %i.dk, label %_ZNK4Luau7AstNameeqEPKc.exit43, label %_ZNK4Luau7AstNameeqEPKc.exit45

_ZNK4Luau7AstNameeqEPKc.exit43:                   ; preds = %.thread100
  %i.dl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.af, label %_ZNK4Luau7AstNameeqEPKc.exit45

bb.af:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit43
  %i.dn = call noundef ptr @_ZN4Luau6Parser14parseClassStatERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext false)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit45:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit43, %.thread100
  %i.do = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(7) @.str.154) #40
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ag:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit45
  %i.dq = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.sroa.023.0.copyload = load i32, ptr %i.c, align 8, !tbaa !230 ; 2 uses
  %.sroa.8.0.copyload = load i64, ptr %i.cq, align 4
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.928.0.copyload = load ptr, ptr %.sroa.928.0..sroa_idx, align 8, !tbaa !44 ; 4 uses
  switch i32 %.sroa.023.0.copyload, label %bb.ai [
    i32 302, label %.critedge
    i32 299, label %.critedge
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ds = icmp eq i32 %.sroa.023.0.copyload, 281
  %.not.i46 = icmp ne ptr %.sroa.928.0.copyload, null
  %or.cond.not = select i1 %i.ds, i1 %.not.i46, i1 false
  br i1 %or.cond.not, label %_ZNK4Luau7AstNameeqEPKc.exit47, label %_ZNK4Luau7AstNameeqEPKc.exit57

_ZNK4Luau7AstNameeqEPKc.exit47:                   ; preds = %bb.ai
  %i.dt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.155) #40
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit47
  br i1 %i.dk, label %_ZNK4Luau7AstNameeqEPKc.exit49, label %_ZNK4Luau7AstNameeqEPKc.exit51

_ZNK4Luau7AstNameeqEPKc.exit49:                   ; preds = %bb.aj
  %i.dv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %.critedge, label %_ZNK4Luau7AstNameeqEPKc.exit51

.critedge:                                        ; preds = %_ZNK4Luau7AstNameeqEPKc.exit47, %bb.ah, %bb.ah, %_ZNK4Luau7AstNameeqEPKc.exit49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.dx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.dy = call noundef ptr @_ZN4Luau6Parser16parseExportValueERKNS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 %.sroa.022.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit51:                   ; preds = %bb.aj, %_ZNK4Luau7AstNameeqEPKc.exit49
  %i.dz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sroa.928.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ak, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ak:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit51
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ec = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.eb, i1 noundef zeroext true, i64 %.sroa.8.0.copyload)
  br label %.critedge10

bb.al:                                            ; preds = %bb.ag
  br i1 %i.dk, label %bb.am, label %.critedge12

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !44 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ee, null
  br i1 %.not.i52, label %.critedge12, label %_ZNK4Luau7AstNameeqEPKc.exit53

_ZNK4Luau7AstNameeqEPKc.exit53:                   ; preds = %bb.am
  %i.ef = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ee, ptr noundef nonnull dereferenceable(6) @.str.153) #40
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.an, label %.critedge12

bb.an:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit53
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.eh = call noundef ptr @_ZN4Luau6Parser14parseClassStatERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext true)
  br label %.critedge10

.critedge12:                                      ; preds = %bb.am, %bb.al, %_ZNK4Luau7AstNameeqEPKc.exit53
  %i.ei = load i32, ptr %i.c, align 8, !tbaa !119
  %i.ej = icmp eq i32 %i.ei, 281
  br i1 %i.ej, label %bb.ao, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ao:                                            ; preds = %.critedge12
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !44 ; 2 uses
  %.not.i54 = icmp eq ptr %i.el, null
  br i1 %.not.i54, label %_ZNK4Luau7AstNameeqEPKc.exit57, label %_ZNK4Luau7AstNameeqEPKc.exit55

_ZNK4Luau7AstNameeqEPKc.exit55:                   ; preds = %bb.ao
  %i.em = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.el, ptr noundef nonnull dereferenceable(5) @.str.152) #40
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ap, label %_ZNK4Luau7AstNameeqEPKc.exit57

bb.ap:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit55
  %.sroa.019.0.copyload = load i64, ptr %i.cq, align 4
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ep = tail call noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.eo, i1 noundef zeroext true, i64 %.sroa.019.0.copyload)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit57:                   ; preds = %bb.ao, %bb.ai, %_ZNK4Luau7AstNameeqEPKc.exit51, %_ZNK4Luau7AstNameeqEPKc.exit45, %_ZNK4Luau7AstNameeqEPKc.exit55, %.critedge12
  %i.eq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(9) @.str.156) #40
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.aq, label %_ZNK4Luau7AstNameeqEPKc.exit59

bb.aq:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit57
  %i.es = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.et = tail call noundef ptr @_ZN4Luau6Parser13parseContinueERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.es)
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit59:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit57
  %i.eu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(6) @.str.155) #40
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ar, label %.thread119

bb.ar:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit59
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.sroa.016.0.copyload = load i64, ptr %i.ew, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ex = call noundef ptr @_ZN4Luau6Parser10parseLocalENS_8LocationENS_8PositionERKNS_8AstArrayIPNS_7AstAttrEEEbPNS_10TempVectorIPNS_11CstAttrListEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %.sroa.016.0.copyload, i64 poison, i64 %.sroa.016.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.critedge10

.thread119:                                       ; preds = %_ZNK4Luau7AstNameeqEPKc.exit59
  %i.ey = load i8, ptr %0, align 8, !tbaa !357, !range !66, !noundef !67
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZNK4Luau7AstNameeqEPKc.exit61, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread

_ZNK4Luau7AstNameeqEPKc.exit61:                   ; preds = %.thread119
  %i.fa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(8) @.str.157) #40
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.as, label %_ZNK4Luau7AstNameeqEPKc.exit61.thread

bb.as:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.fd = call noundef ptr @_ZN4Luau6Parser16parseDeclarationERKNS_8LocationERKNS_8AstArrayIPNS_7AstAttrEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %.critedge10

_ZNK4Luau7AstNameeqEPKc.exit61.thread:            ; preds = %bb.ad, %.thread119, %_ZNK4Luau7AstNameeqEPKc.exit61
  %i.fe = load <2 x i32>, ptr %7, align 8
  %i.ff = load <2 x i32>, ptr %i.cq, align 4
  %i.fg = icmp eq <2 x i32> %i.fe, %i.ff          ; 2 uses
  %i.fh = extractelement <2 x i1> %i.fg, i64 0
  %i.fi = extractelement <2 x i1> %i.fg, i64 1
  %i.fj = select i1 %i.fi, i1 %i.fh, i1 false
  br i1 %i.fj, label %_ZNK4Luau8LocationeqERKS0_.exit, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit:                  ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.fm = load <2 x i32>, ptr %i.fk, align 8
  %i.fn = load <2 x i32>, ptr %i.fl, align 4
  %i.fo = icmp eq <2 x i32> %i.fm, %i.fn          ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fo, i64 0
  %i.fq = extractelement <2 x i1> %i.fo, i64 1
  %i.fr = select i1 %i.fq, i1 %i.fp, i1 false
  br i1 %i.fr, label %bb.at, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

bb.at:                                            ; preds = %_ZNK4Luau8LocationeqERKS0_.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit.thread:           ; preds = %_ZNK4Luau7AstNameeqEPKc.exit61.thread, %bb.at, %_ZNK4Luau8LocationeqERKS0_.exit
  %14 = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.fu = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 noundef 8) ; 2 uses
  store ptr %i.cr, ptr %i.fu, align 8, !tbaa !53
  store ptr %i.fu, ptr %11, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.fw = call noundef ptr (ptr, ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportStatErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEERKNS4_IPNS_7AstStatEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.158)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %.critedge10

.critedge10:                                      ; preds = %bb.ae, %bb.af, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.as, %_ZNK4Luau8LocationeqERKS0_.exit.thread, %bb.ak, %.critedge, %.thread, %bb.ab, %bb.z
  %.3 = phi ptr [ %i.cz, %bb.z ], [ %i.db, %bb.ab ], [ %i.dd, %.thread ], [ %i.di, %bb.ae ], [ %i.dn, %bb.af ], [ %i.et, %bb.aq ], [ %i.ex, %bb.ar ], [ %i.fd, %bb.as ], [ %i.fw, %_ZNK4Luau8LocationeqERKS0_.exit.thread ], [ %i.ep, %bb.ap ], [ %i.eh, %bb.an ], [ %i.dy, %.critedge ], [ %i.ec, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.au

bb.au:                                            ; preds = %.critedge10, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.4 = phi ptr [ %.3, %.critedge10 ], [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.cc, %_ZN4Luau6Parser17parseFunctionStatERKNS_8AstArrayIPNS_7AstAttrEEEPNS_10TempVectorIPNS_11CstAttrListEEE.exit ], [ %i.cm, %bb.u ], [ %i.cn, %bb.v ], [ %i.co, %bb.w ], [ %i.cp, %bb.x ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser7parseIfEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional.182", align 16 ; 5 uses
  %2 = alloca %"class.std::optional.182", align 4 ; 6 uses
  %3 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 7 uses
  %.sroa.043.0.copyload = load i64, ptr %i.b, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.c = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %.sroa.039.0.copyload = load i32, ptr %i.a, align 8, !tbaa !230 ; 2 uses
  %i.d = load <2 x i64>, ptr %i.b, align 4
  %.sroa.4.0.copyload = load i64, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i8 0, ptr %i.e, align 16, !tbaa !359
  %.not.i = icmp eq i32 %.sroa.039.0.copyload, 308
  br i1 %.not.i, label %bb.b, label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 308, ptr noundef nonnull @.str.159) ; 0 uses
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  store <2 x i64> %i.d, ptr %1, align 16
  store i8 1, ptr %i.e, align 16, !tbaa !359
  br label %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit

_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit: ; preds = %bb.b, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = tail call noundef ptr @_ZN4Luau6Parser17parseBlockNoScopeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !inline_history !112 ; 4 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !110  ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %i.v = and i64 %i.n, 4294967295                 ; 6 uses
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.f

._crit_edge.loopexit.i.i:                         ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %.pre9.i.i = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.pre10.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre11.i.i = ptrtoint ptr %.pre9.i.i to i64
  %.pre13.i.i = sub i64 %.pre10.i.i, %.pre11.i.i
  %.pre15.i.i = ashr exact i64 %.pre13.i.i, 3
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %.pre-phi16.i.i = phi i64 [ %.pre15.i.i, %._crit_edge.loopexit.i.i ], [ %i.u, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ] ; 3 uses
  %i.y = phi ptr [ %.pre9.i.i, %._crit_edge.loopexit.i.i ], [ %i.q, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ]
  %i.z = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.p, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ]
  %i.aa = icmp ult i64 %.pre-phi16.i.i, %i.v
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = sub nuw nsw i64 %i.v, %.pre-phi16.i.i
  tail call void @_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ab), !inline_history !112
  br label %_ZN4Luau6Parser10parseBlockEv.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = icmp ugt i64 %.pre-phi16.i.i, %i.v
  br i1 %i.ac, label %bb.e, label %_ZN4Luau6Parser10parseBlockEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN4Luau6Parser10parseBlockEv.exit, label %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !110
  br label %_ZN4Luau6Parser10parseBlockEv.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ae, %bb.f ]
  %i.ae = add i64 %.08.i.i, -1                    ; 3 uses
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !114 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !112
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !114
  %i.al = icmp ugt i64 %i.ae, %i.v
  br i1 %i.al, label %bb.f, label %._crit_edge.loopexit.i.i, !llvm.loop !3

_ZN4Luau6Parser10parseBlockEv.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPPN4Luau8AstLocalES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 0, ptr %i.am, align 4, !tbaa !359
  %i.an = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.an, label %bb.m [
    i32 295, label %bb.g
    i32 294, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7
  ]

bb.g:                                             ; preds = %_ZN4Luau6Parser10parseBlockEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 1, ptr %i.ao, align 8, !tbaa !362
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !317 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !317
  %i.as = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.at = icmp ugt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.160) #37
  unreachable

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i8 1, ptr %i.am, align 4, !tbaa !359
  %i.au = tail call noundef ptr @_ZN4Luau6Parser7parseIfEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 2 uses
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %.sroa.529.0.copyload31 = load i64, ptr %.sroa.529.0..sroa_idx30, align 4
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !317
  br label %bb.q

_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7: ; preds = %_ZN4Luau6Parser10parseBlockEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  store i8 1, ptr %i.am, align 4, !tbaa !359
  %.sroa.5.0.copyload24 = load i64, ptr %i.b, align 4
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.545.0..sroa_idx, align 4
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = tail call noundef ptr @_ZN4Luau6Parser17parseBlockNoScopeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !inline_history !112 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = and i64 %i.bb, 4294967295               ; 6 uses
  %i.bk = icmp ugt i64 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i12, label %._crit_edge.i.i8

.lr.ph.i.i12:                                     ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.l

._crit_edge.loopexit.i.i14:                       ; preds = %bb.l
  %.pre.i.i15 = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %.pre9.i.i16 = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.pre10.i.i17 = ptrtoint ptr %.pre.i.i15 to i64
  %.pre11.i.i18 = ptrtoint ptr %.pre9.i.i16 to i64
  %.pre13.i.i19 = sub i64 %.pre10.i.i17, %.pre11.i.i18
  %.pre15.i.i20 = ashr exact i64 %.pre13.i.i19, 3
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %._crit_edge.loopexit.i.i14, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7
  %.pre-phi16.i.i9 = phi i64 [ %.pre15.i.i20, %._crit_edge.loopexit.i.i14 ], [ %i.bi, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7 ] ; 3 uses
  %i.bm = phi ptr [ %.pre9.i.i16, %._crit_edge.loopexit.i.i14 ], [ %i.be, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7 ]
  %i.bn = phi ptr [ %.pre.i.i15, %._crit_edge.loopexit.i.i14 ], [ %i.bd, %_ZNSt8optionalIN4Luau8LocationEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit7 ]
  %i.bo = icmp ult i64 %.pre-phi16.i.i9, %i.bj
end_hunk_0
begin_hunk_1_@_ZN4Luau6Parser16parsePrimaryExprEb:bb.a

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 4, !noalias !614 ; 2 uses
  %i.y = load i64, ptr %i.h, align 8, !tbaa !61, !noalias !614
  store i64 %i.y, ptr %3, align 8, !tbaa !61, !alias.scope !614
  store i64 %.sroa.0.0.copyload.i, ptr %i.i, align 8, !alias.scope !614
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx4.i, align 8, !alias.scope !614
  br label %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit

_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %i.d, ptr %4, align 8
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx4.i, align 8
  store i64 %i.aa, ptr %i.l, align 8
  %i.ab = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef 80) ; 2 uses
  call void @_ZN4Luau16AstExprIndexNameC1ERKNS_8LocationEPNS_7AstExprERKNS_7AstNameES3_RKNS_8PositionEc(ptr noundef nonnull align 8 dereferenceable(73) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %2, i8 noundef signext 46)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.r

bb.h:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.ac = call noundef ptr @_ZN4Luau6Parser14parseIndexExprENS_8PositionEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %i.d, ptr noundef %.0)
  br label %bb.r

bb.i:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.ad = call noundef ptr @_ZN4Luau6Parser15parseMethodCallENS_8PositionEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %i.d, ptr noundef %.0)
  br label %bb.r

bb.j:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  br i1 %1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !408
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !406
  %.not = icmp eq i32 %i.af, %i.ag
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4Luau6Parser24reportAmbiguousCallErrorEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ah = call noundef ptr @_ZN4Luau6Parser17parseFunctionArgsEPNS_7AstExprEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0, i1 noundef zeroext false)
  br label %bb.r

bb.n:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.ai = call noundef ptr @_ZN4Luau6Parser17parseFunctionArgsEPNS_7AstExprEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0, i1 noundef zeroext false)
  br label %bb.r

bb.o:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.aj = icmp eq i32 %i.m, 60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br i1 %i.aj, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  %i.ak = load i32, ptr %5, align 8, !tbaa !119
  %i.al = icmp eq i32 %i.ak, 60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %i.al, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.am = call noundef ptr @_ZN4Luau6Parser34parseExplicitTypeInstantiationExprENS_8PositionERNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(28) %.0)
  br label %bb.r

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.loopexit

bb.r:                                             ; preds = %bb.h, %bb.m, %bb.q, %bb.n, %bb.i, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit
  %.1 = phi ptr [ %i.ab, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit ], [ %i.ac, %bb.h ], [ %i.ad, %bb.i ], [ %i.ah, %bb.m ], [ %i.ai, %bb.n ], [ %i.am, %bb.q ]
  %i.an = load i32, ptr %i.f, align 4, !tbaa !317
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !317
  %i.ap = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.aq = icmp ugt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.s, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, !llvm.loop !613

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.284) #37
  unreachable

.loopexit:                                        ; preds = %bb.p, %.critedge, %bb.l
  store i32 %i.g, ptr %i.f, align 4, !tbaa !317
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15parseAssignmentEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 6 uses
  %4 = alloca %"class.Luau::TempVector.197", align 8 ; 9 uses
  %5 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %6 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %7 = alloca %"struct.Luau::AstArray", align 8   ; 6 uses
  %8 = alloca %"struct.Luau::AstArray", align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 5 uses
  %i.d = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !31
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !344
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !345, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !31
  %i.l = icmp eq i32 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.q = load i64, ptr %i.p, align 8, !tbaa !349
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !341  ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !341  ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.y = load i64, ptr %i.x, align 8, !tbaa !350
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.ak, %bb.j ]
  %.01828.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.aj, %bb.j ]
  %.01929.i.i.i.i = and i64 %.pn.i.i.i.i, %i.z    ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.01929.i.i.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !341 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %i.ag, %i.v
  br i1 %i.ai, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add i64 %.01828.i.i.i.i, 1              ; 3 uses
  %i.ak = add i64 %i.aj, %.01929.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.aj, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.h, !llvm.loop !10

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %.not.i = icmp eq ptr %i.am, null
  %i.an = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4
  %i.ao = icmp eq i32 %i.c, %i.an
  %or.cond10.i = select i1 %.not.i, i1 true, i1 %i.ao
  br i1 %or.cond10.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

bb.k:                                             ; preds = %bb.c
  %.old.i = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4, !tbaa !31
  %.old9.i = icmp eq i32 %i.c, %.old.i
  br i1 %.old9.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit: ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.k
  %i.ap = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !31
  %i.aq = icmp eq i32 %i.c, %i.ap
  br i1 %i.aq, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %i.ar = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  br i1 %i.as, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = tail call noundef ptr @_ZN4Luau6Parser17reportLValueErrorEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1)
  br label %bb.n

.lr.ph.i.i:                                       ; preds = %bb.l
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.aw = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !53
  store ptr %i.aw, ptr %2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.244)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i, %bb.m
  %i.az = phi ptr [ %i.at, %bb.m ], [ %i.ay, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread: ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %bb.b, %bb.d, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.k, %bb.n, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %.0143 = phi ptr [ %1, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit ], [ %i.az, %bb.n ], [ %1, %bb.k ], [ %1, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i ], [ %1, %bb.d ], [ %1, %bb.b ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.j ], [ %1, %bb.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 10 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !323 ; 4 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 4 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 8 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 10 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !378
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !129
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 6 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !192
  %.not.i.i = icmp eq ptr %i.bc, %i.bq
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread
  store ptr %.0143, ptr %i.bc, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit

bb.p:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread
  %i.bs = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bs, label %.invoke, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.v, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bh
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #35
          to label %.noexc28 unwind label %.loopexit.split-lp ; 4 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bg ; 2 uses
  store ptr %.0143, ptr %i.bz, align 8, !tbaa !53
  %i.ca = icmp sgt i64 %i.bg, 0
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.q, %.noexc28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !192
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ce) #36
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.by, ptr %i.ba, align 8, !tbaa !191
  store ptr %i.cb, ptr %i.bb, align 8, !tbaa !323
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !192
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit

_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit: ; preds = %bb.o, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !119 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 44
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.au
  %.sroa.12.0168 = phi i64 [ 0, %.lr.ph ], [ %.sroa.12.1, %bb.au ] ; 2 uses
  %.sroa.13.0167 = phi i64 [ 1, %.lr.ph ], [ %i.go, %bb.au ]
  %i.cs = load i8, ptr %i.cj, align 8, !tbaa !353, !range !66, !noundef !67
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !378 ; 5 uses
  %i.cv = load ptr, ptr %i.cl, align 8, !tbaa !130
  %.not.i.i29 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = load i64, ptr %i.ck, align 4
  store i64 %i.cw, ptr %i.cu, align 4
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !378
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cy, ptr %i.bj, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEE9push_backERKS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.bi, align 8, !tbaa !129 ; 5 uses
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %.invoke, label %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i30, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #35
          to label %.noexc33 unwind label %.loopexit147 ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc
  %i.dm = load i64, ptr %i.ck, align 4
  store i64 %i.dm, ptr %i.dl, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cu
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc33, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %i.dk, %.noexc33 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %.noexc33 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !633, !noalias !632
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !632, !noalias !633
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cu
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc33
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dk, %.noexc33 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !130
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dt) #36
  br label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.dk, ptr %i.bi, align 8, !tbaa !129
  store ptr %i.dq, ptr %i.bj, align 8, !tbaa !378
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.du, ptr %i.cl, align 8, !tbaa !130
  br label %_ZN4Luau10TempVectorINS_8PositionEE9push_backERKS1_.exit

_ZN4Luau10TempVectorINS_8PositionEE9push_backERKS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.dv = add i64 %.sroa.12.0168, 1
  br label %bb.x

.loopexit147:                                     ; preds = %bb.x, %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4Luau6Parser15parseAssignmentEPNS_7AstExprE:bb.a
  %i.pi = load ptr, ptr %i.bj, align 8, !tbaa !385
  %.not.i.i.i98 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i.i.i98, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit100, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i99

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i99: ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit
  store ptr %i.ph, ptr %i.bj, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit100

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit100:  ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i99
  %i.pj = load ptr, ptr %i.ba, align 8, !tbaa !386
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %i.bg ; 2 uses
  %i.pl = load ptr, ptr %i.bb, align 8, !tbaa !386
  %.not.i.i.i101 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not.i.i.i101, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit103, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i102

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i102: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit100
  store ptr %i.pk, ptr %i.bb, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit103

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit103:  ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit100, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i102
  ret ptr %i.lg

bb.bk:                                            ; preds = %bb.bg, %bb.bi, %bb.bh, %bb.bf, %bb.bc
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.oq, %bb.bc ], [ %.pn, %bb.bf ], [ %i.ot, %bb.bg ], [ %i.ov, %bb.bi ], [ %i.ou, %bb.bh ]
  %i.pm = load ptr, ptr %5, align 8, !tbaa !384, !nonnull !67, !align !337 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !385
  %i.po = load i64, ptr %i.hf, align 8, !tbaa !380
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.pn, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !385
  %.not.i.i.i104 = icmp eq ptr %i.pp, %i.pr
  br i1 %.not.i.i.i104, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit106, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i105

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i105: ; preds = %bb.bk
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit106

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit106:  ; preds = %bb.bk, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ps = load ptr, ptr %4, align 8, !tbaa !383, !nonnull !67, !align !337 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !386
  %i.pu = load i64, ptr %i.gw, align 8, !tbaa !374
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !386
  %.not.i.i.i107 = icmp eq ptr %i.pv, %i.px
  br i1 %.not.i.i.i107, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit109, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i108

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i108: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit106
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit109

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit109:  ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit106, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %.loopexit147, %.loopexit.split-lp, %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit109, %bb.ao, %bb.bb
  %.pn24.pn = phi { ptr, i32 } [ %i.op, %bb.bb ], [ %.pn17.pn.pn.pn, %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit109 ], [ %i.fr, %bb.ao ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit147 ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  %i.py = load ptr, ptr %i.bi, align 8, !tbaa !385
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.bo ; 2 uses
  %i.qa = load ptr, ptr %i.bj, align 8, !tbaa !385
  %.not.i.i.i110 = icmp eq ptr %i.pz, %i.qa
  br i1 %.not.i.i.i110, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit112, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i111

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i111: ; preds = %bb.bl
  store ptr %i.pz, ptr %i.bj, align 8, !tbaa !378
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit112

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit112:  ; preds = %bb.bl, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i111
  %i.qb = load ptr, ptr %i.ba, align 8, !tbaa !386
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 %i.bg ; 2 uses
  %i.qd = load ptr, ptr %i.bb, align 8, !tbaa !386
  %.not.i.i.i113 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not.i.i.i113, label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit115, label %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i114

_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i114: ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit112
  store ptr %i.qc, ptr %i.bb, align 8, !tbaa !323
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit115

_ZN4Luau10TempVectorIPNS_7AstExprEED2Ev.exit115:  ; preds = %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit112, %_ZSt8_DestroyIPPN4Luau7AstExprES2_EvT_S4_RSaIT0_E.exit.i.i.i.i114
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967304) i64 @_ZN4Luau6Parser15parseCompoundOpERKNS_6LexemeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !119
  %switch.tableidx = add i32 %i.a, -270           ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 8
  %switch.idx.cast = zext i32 %switch.tableidx to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.9.0 = select i1 %i.b, i64 %switch.offset, i64 0
  ret i64 %.sroa.9.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser23parseCompoundAssignmentEPNS_7AstExprENS_13AstExprBinary2OpE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !57   ; 5 uses
  %i.d = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !31
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !344
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i8, ptr %i.h, align 8, !tbaa !345, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !31
  %i.l = icmp eq i32 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.q = load i64, ptr %i.p, align 8, !tbaa !349
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !341  ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !341  ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.y = load i64, ptr %i.x, align 8, !tbaa !350
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.ak, %bb.j ]
  %.01828.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.aj, %bb.j ]
  %.01929.i.i.i.i = and i64 %.pn.i.i.i.i, %i.z    ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.01929.i.i.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !341 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %i.ag, %i.v
  br i1 %i.ai, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add i64 %.01828.i.i.i.i, 1              ; 3 uses
  %i.ak = add i64 %i.aj, %.01929.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.aj, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.h, !llvm.loop !10

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %.not.i = icmp eq ptr %i.am, null
  %i.an = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4
  %i.ao = icmp eq i32 %i.c, %i.an
  %or.cond10.i = select i1 %.not.i, i1 true, i1 %i.ao
  br i1 %or.cond10.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

bb.k:                                             ; preds = %bb.c
  %.old.i = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4, !tbaa !31
  %.old9.i = icmp eq i32 %i.c, %.old.i
  br i1 %.old9.i, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit: ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.k
  %i.ap = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !31
  %i.aq = icmp eq i32 %i.c, %i.ap
  br i1 %i.aq, label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %i.ar = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  br i1 %i.as, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = tail call noundef ptr @_ZN4Luau6Parser17reportLValueErrorEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1)
  br label %bb.n

.lr.ph.i.i:                                       ; preds = %bb.l
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.aw = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !53
  store ptr %i.aw, ptr %3, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.244)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i, %bb.m
  %i.az = phi ptr [ %i.at, %bb.m ], [ %i.ay, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread

_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread: ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %bb.b, %bb.d, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i, %bb.k, %bb.n, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit
  %.0 = phi ptr [ %1, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit ], [ %i.az, %bb.n ], [ %1, %bb.k ], [ %1, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit.i ], [ %1, %bb.d ], [ %1, %bb.b ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = load i64, ptr %i.ba, align 4
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.bc = call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.bg = load i64, ptr %i.bf, align 4
  store i64 %i.bg, ptr %4, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bj = load i64, ptr %i.bi, align 4
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef 56) ; 3 uses
  call void @_ZN4Luau21AstStatCompoundAssignC1ERKNS_8LocationENS_13AstExprBinary2OpEPNS_7AstExprES7_(ptr noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %2, ptr noundef %.0, ptr noundef %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !353, !range !66, !noundef !67
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.bp = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 noundef 12) ; 2 uses
  call void @_ZN4Luau21CstStatCompoundAssignC1ENS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, i64 %i.bb)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !354
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4Luau6Parser12isExprLValueEPNS_7AstExprE.exit.thread
  ret ptr %i.bk
}

declare ptr @_ZN4Luau13getIdentifierEPNS_7AstExprE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser14parseTypeAliasERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %5 = alloca %"class.std::optional.223", align 8 ; 10 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 5 uses
  %7 = alloca %"struct.Luau::AstArray.192", align 8 ; 6 uses
  %8 = alloca %"struct.Luau::Position", align 8   ; 5 uses
  %9 = alloca %"struct.std::pair.231", align 8    ; 6 uses
  %10 = alloca %"struct.Luau::Location", align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.d = icmp eq i32 %i.c, 299
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau6Parser17parseTypeFunctionERKNS_8LocationEbNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i1 noundef zeroext %2, i64 %3)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %.not.i = icmp eq i32 %i.c, 281
  br i1 %.not.i, label %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread, label %_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZN4Luau6Parser12parseNameOptEPKc.exit.thread:    ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44, !noalias !636
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.i = ptrtoint ptr %i.g to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !636
  store i64 %i.i, ptr %5, align 8, !tbaa !61, !alias.scope !636
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.j, align 8, !tbaa !410, !alias.scope !636
  br label %bb.d

_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.c
  tail call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.181), !noalias !636
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  store i64 %i.n, ptr %5, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !410
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6Parser12parseNameOptEPKc.exit.thread, %_ZNSt8optionalIN4Luau6Parser4NameEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i64 -1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store i64 -1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !353, !range !66, !noundef !67
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4Luau6Parser20parseGenericTypeListEbPNS_8PositionEPNS_8AstArrayIS1_EES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.231") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext true, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_ZN4Luau6Parser20parseGenericTypeListEbPNS_8PositionEPNS_8AstArrayIS1_EES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.231") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext true, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = load i32, ptr %i.b, align 8, !tbaa !119
  %.not.i.i = icmp eq i32 %i.s, 61
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load i64, ptr %i.t, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 61, ptr noundef nonnull @.str.182) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi i64 [ %i.u, %bb.h ], [ -1, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !317  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !58
  %i.z = load i32, ptr %i.b, align 8, !tbaa !119
  switch i32 %i.z, label %bb.k [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.aa = call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !411
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  store i32 %i.x, ptr %i.w, align 4, !tbaa !317
  br label %_ZN4Luau6Parser9parseTypeEb.exit

_ZN4Luau6Parser9parseTypeEb.exit:                 ; preds = %bb.j, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ab, %bb.k ], [ null, %bb.j ], [ null, %bb.j ]
  %i.ac = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !411 ; 2 uses
  store i32 %i.x, ptr %i.w, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.af = load i64, ptr %1, align 4
  store i64 %i.af, ptr %10, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ai = load i64, ptr %i.ah, align 4
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef 104) ; 3 uses
  call void @_ZN4Luau16AstStatTypeAliasC1ERKNS_8LocationERKNS_7AstNameES3_RKNS_8AstArrayIPNS_14AstGenericTypeEEERKNS7_IPNS_18AstGenericTypePackEEEPNS_7AstTypeEb(ptr noundef nonnull align 8 dereferenceable(97) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef %i.ac, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.al = load i8, ptr %i.o, align 8, !tbaa !353, !range !66, !noundef !67
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4Luau6Parser9parseTypeEb.exit
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.ao = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef 56) ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %6, align 8
  %.sroa.02.0.copyload.i = load ptr, ptr %7, align 8, !tbaa !385
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !41
  %.sroa.01.0.copyload.i = load i64, ptr %8, align 8
  call void @_ZN4Luau16CstStatTypeAliasC1ENS_8PositionES1_NS_8AstArrayIS1_EES1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 %3, i64 %.sroa.03.0.copyload.i, ptr %.sroa.02.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 %.sroa.01.0.copyload.i, i64 %storemerge)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !354
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4Luau6Parser9parseTypeEb.exit
end_hunk_2
begin_hunk_3_@_ZN4Luau6Parser14parseCharArrayEPNS_8AstArrayIcEE:bb.a
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i5.prol.loopexit, label %.lr.ph.i.i5.prol, !llvm.loop !897

.lr.ph.i.i5.prol.loopexit:                        ; preds = %.lr.ph.i.i5.prol, %.lr.ph.i.i5.preheader
  %.010.i.i6.unr = phi i64 [ %.010.i.i6.ph, %.lr.ph.i.i5.preheader ], [ %i.bz, %.lr.ph.i.i5.prol ]
  %i.ca = icmp ult i64 %i.bv, 3
  br i1 %i.ca, label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph.i.i5.prol.loopexit, %.lr.ph.i.i5
  %.010.i.i6 = phi i64 [ %i.cq, %.lr.ph.i.i5 ], [ %.010.i.i6.unr, %.lr.ph.i.i5.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.010.i.i6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.010.i.i6
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !44
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !44
  %i.ce = add nuw i64 %.010.i.i6, 1               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !44
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !44
  %i.ci = add nuw i64 %.010.i.i6, 2               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !44
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !44
  %i.cm = add nuw i64 %.010.i.i6, 3               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !44
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !44
  %i.cq = add nuw i64 %.010.i.i6, 4
  %exitcond.not.i.i7.3 = icmp eq i64 %i.cm, %i.bd
  br i1 %exitcond.not.i.i7.3, label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8, label %.lr.ph.i.i5, !llvm.loop !898

_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8: ; preds = %.lr.ph.i.i5.prol.loopexit, %.lr.ph.i.i5, %vec.epilog.middle.block49, %middle.block36
  %.pre.i9 = load i64, ptr %i.g, align 8, !tbaa !45
  br label %_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12

_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12: ; preds = %bb.g, %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8
  %i.cr = phi i64 [ -1, %bb.g ], [ %.pre.i9, %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8 ]
  %i.cs = phi ptr [ null, %bb.g ], [ %i.bi, %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit.i8 ]
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %1)
  store ptr %i.cs, ptr %0, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx13, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12, %bb.e
  %.sink = phi i8 [ 1, %_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12 ], [ 0, %bb.e ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ct, align 8, !tbaa !445
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser17parseTableIndexerENS_14AstTableAccessESt8optionalINS_8LocationEENS_6LexemeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Parser::TableIndexerResult") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, i32 noundef %2, ptr nofree noundef readonly byval(%"class.std::optional.182") align 8 captures(none) %3, ptr nofree noundef readonly byval(%"struct.Luau::Lexeme") align 8 captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %6 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %7 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !317  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !58
  %i.e = load i32, ptr %i.c, align 8, !tbaa !119
  switch i32 %i.e, label %bb.b [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %1, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !411
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  store i32 %i.b, ptr %i.a, align 4, !tbaa !317
  br label %_ZN4Luau6Parser9parseTypeEb.exit

_ZN4Luau6Parser9parseTypeEb.exit:                 ; preds = %bb.a, %bb.a, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ], [ null, %bb.a ]
  %i.h = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(16) %6), !inline_history !411
  store i32 %i.b, ptr %i.a, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.i = load i32, ptr %4, align 8, !tbaa !119
  store i32 %i.i, ptr %7, align 4, !tbaa !319
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i64, ptr %i.k, align 4              ; 3 uses
  store i64 %i.l, ptr %i.j, align 4
  %i.m = load i32, ptr %i.c, align 8, !tbaa !119
  %.not.i = icmp eq i32 %i.m, 93
  br i1 %.not.i, label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread, label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread: ; preds = %_ZN4Luau6Parser9parseTypeEb.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.c

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit: ; preds = %_ZN4Luau6Parser9parseTypeEb.exit
  call void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %1, i32 noundef 93, ptr noundef nonnull readonly align 4 dereferenceable(12) %7, ptr noundef null)
  %i.n = tail call noundef zeroext i1 @_ZN4Luau6Parser28expectMatchAndConsumeRecoverEcRKNS0_11MatchLexemeEb(ptr noundef nonnull align 8 dereferenceable(1232) %1, i8 noundef signext 93, ptr nonnull readonly align 4 poison, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.03.0.copyload = load i64, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit, %bb.c
  %.sroa.03.0 = phi i64 [ %.sroa.03.0.copyload, %bb.c ], [ -1, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit ]
  %i.p = load i32, ptr %i.c, align 8, !tbaa !119
  %.not.i.i = icmp eq i32 %i.p, 58
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload = load i64, ptr %i.q, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %1, i32 noundef 58, ptr noundef nonnull @.str.258) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.e ], [ -1, %bb.f ]
  %i.s = load i32, ptr %i.a, align 4, !tbaa !317  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !58
  %i.t = load i32, ptr %i.c, align 8, !tbaa !119
  switch i32 %i.t, label %bb.h [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit11
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit11
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = tail call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %1, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !411
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  store i32 %i.s, ptr %i.a, align 4, !tbaa !317
  br label %_ZN4Luau6Parser9parseTypeEb.exit11

_ZN4Luau6Parser9parseTypeEb.exit11:               ; preds = %bb.g, %bb.g, %bb.h
  %.0.i10 = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ], [ null, %bb.g ]
  %i.w = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef %.0.i10, ptr noundef nonnull align 4 dereferenceable(16) %5), !inline_history !411 ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.aa = load i64, ptr %i.z, align 4
  %i.ab = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef 56) ; 7 uses
  store ptr %i.h, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false)
  store ptr %i.ab, ptr %0, align 8, !tbaa !451
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.03.0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.ae, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17reportLValueErrorEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %4 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !31
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !345, !range !66, !noundef !67
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.l = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !53
  store ptr %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !427
  %i.p = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.242, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !348, !range !66, !noundef !67
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4
  %.not39 = icmp eq i32 %i.b, %i.s
  %or.cond = select i1 %i.r, i1 %.not39, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.v = load i64, ptr %i.u, align 8, !tbaa !349
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !341  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !341 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !350
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ag = lshr i64 %i.af, 4
  %i.ah = lshr i64 %i.af, 9
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.ap, %bb.i ]
  %.01828.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ao, %bb.i ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.ae       ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.01929.i.i.i ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !341 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq ptr %i.al, %i.aa
  br i1 %i.an, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.ap = add i64 %i.ao, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ao, %i.ae
  br i1 %.not.i.i.i, label %.thread, label %bb.g, !llvm.loop !10

_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !352 ; 3 uses
  %.not.not = icmp eq ptr %i.ar, null
  br i1 %.not.not, label %.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.au = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !53
  store ptr %i.au, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !432
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !427
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !899
  %i.bb = add i32 %i.ba, 1
  %i.bc = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.243, ptr noundef %i.ay, i32 noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

.thread:                                          ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %_ZN4Luau6Parser16getMatchingClassEPNS_7AstExprE.exit, %bb.c
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.bf = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.bf, align 8, !tbaa !53
  store ptr %i.bf, ptr %4, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.bg, align 8
  %i.bh = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.244)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i23, %.thread, %.lr.ph.i.i
  %.1 = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.bh, %.thread ], [ %i.bc, %.lr.ph.i.i23 ]
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
  %i.s = shl i64 %i.cb, 3
  %i.t = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 noundef %i.s)
          to label %.lr.ph.i.i.preheader unwind label %bb.l ; 8 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %min.iters.check = icmp ult i64 %.01032, 13
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = add i64 %i.j, %i.u
  %i.w = add i64 %.pre33.pre48, %i.i
  %i.x = sub i64 %i.w, %i.v
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !114
  %wide.load49 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !114
  store <2 x ptr> %wide.load49, ptr %i.ab, align 8, !tbaa !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph.i.i.preheader50

.lr.ph.i.i.preheader50:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ad = sub i64 %.01032, %.010.i.i.ph
  %xtraiter = and i64 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader50, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader50 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader50 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.prol
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.010.i.i.prol
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !114
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !114
  %i.ah = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !901

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader50
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader50 ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = icmp ult i64 %i.ad, 3
  br i1 %i.ai, label %.loopexit.loopexit, label %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN4Luau6Parser13parseTypePackEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i64, ptr %i.p, align 4
  store i64 %i.q, ptr %i.o, align 8
  %i.r = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef 40) ; 2 uses
  call void @_ZN4Luau19AstTypePackVariadicC1ERKNS_8LocationEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.d, 281
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  %i.t = load i32, ptr %3, align 8, !tbaa !119
  %i.u = icmp eq i32 %i.t, 262
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.c, align 8, !tbaa !119, !noalias !925
  %.not.i.i = icmp eq i32 %i.v, 281
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44, !noalias !925
  %.sroa.47.8.copyload = load i64, ptr %i.w, align 4
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !925
  %.sroa.0.0.copyload.pre = load i64, ptr %i.w, align 4
  br label %_ZN4Luau6Parser9parseNameEPKc.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.278), !noalias !925
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 4, !noalias !926 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !61, !noalias !926
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %_ZN4Luau6Parser9parseNameEPKc.exit

_ZN4Luau6Parser9parseNameEPKc.exit:               ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.h ]
  %.sroa.47.0 = phi i64 [ %.sroa.47.8.copyload, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.h ]
  %.sink.i = phi ptr [ %i.y, %bb.g ], [ %i.ab, %bb.h ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !119
  %.not.i = icmp eq i32 %i.ac, 262
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit
  %i.ad = call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 262, ptr noundef nonnull @.str.279) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

bb.j:                                             ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit: ; preds = %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i64 %.sroa.47.0, ptr %4, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.ag, align 8
  %i.ah = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 noundef 40) ; 4 uses
  call void @_ZN4Luau18AstTypePackGenericC1ERKNS_8LocationENS_7AstNameE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr %.sink.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !353, !range !66, !noundef !67
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.am = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef 12) ; 2 uses
  call void @_ZN4Luau18CstTypePackGenericC1ENS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 %.sroa.0.0.copyload)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !354
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.l

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.l

bb.l:                                             ; preds = %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit, %bb.k, %.critedge, %bb.e, %_ZN4Luau6Parser9parseTypeEb.exit
  %.0 = phi ptr [ %i.r, %_ZN4Luau6Parser9parseTypeEb.exit ], [ null, %.critedge ], [ null, %bb.e ], [ %i.ah, %bb.k ], [ %i.ah, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15parseReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %2 = alloca %"struct.Luau::Lexeme", align 8     ; 5 uses
  %3 = alloca %"struct.Luau::Lexeme", align 8     ; 7 uses
  %4 = alloca %"struct.Luau::AstTypeList", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.Luau::TempVector.256", align 8 ; 13 uses
  %6 = alloca %"class.Luau::TempVector.257", align 8 ; 10 uses
  %7 = alloca %"class.Luau::TempVector.198", align 8 ; 11 uses
  %8 = alloca %"class.Luau::TempVector.198", align 8 ; 10 uses
  %9 = alloca %"struct.Luau::Location", align 16  ; 11 uses
  %10 = alloca %"struct.Luau::Parser::MatchLexeme", align 4 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.Luau::Location", align 16 ; 5 uses
  %12 = alloca %"struct.Luau::AstTypeList", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"struct.Luau::AstTypeList", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"struct.Luau::AstArray.172", align 8 ; 5 uses
  %15 = alloca %"struct.Luau::AstArray.221", align 8 ; 2 uses
  %16 = alloca %"struct.Luau::AstArray.255", align 8 ; 3 uses
  %17 = alloca %"struct.Luau::AstArray.268", align 8 ; 3 uses
  %18 = alloca %"struct.Luau::AstArray.192", align 8 ; 6 uses
  %19 = alloca %"struct.Luau::AstArray.192", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %21 = alloca %"struct.Luau::AstTypeList", align 8 ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !317
  %i.i = add i32 %i.h, 1                          ; 3 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !317
  %i.j = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.k = icmp ugt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.257) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !231
  %i.o = load i32, ptr %i.n, align 8, !tbaa !119  ; 3 uses
  switch i32 %i.o, label %bb.c [
    i32 40, label %bb.h
    i32 262, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.p = icmp eq i32 %i.o, 281
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  br i1 %i.p, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.m)
  %i.q = load i32, ptr %2, align 8, !tbaa !119
  %i.r = icmp eq i32 %i.q, 262
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %i.r, label %bb.e, label %._ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit_crit_edge

._ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit_crit_edge: ; preds = %bb.d
  %.pre186 = load i32, ptr %i.g, align 4, !tbaa !317
  %.pre187 = load i32, ptr %i.n, align 8, !tbaa !119
  br label %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit

.critedge.i:                                      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit

bb.e:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %bb.d
  %i.s = call noundef ptr @_ZN4Luau6Parser13parseTypePackEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.bj

_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit:  ; preds = %._ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit_crit_edge, %.critedge.i
  %i.t = phi i32 [ %.pre187, %._ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit_crit_edge ], [ %i.o, %.critedge.i ]
  %i.u = phi i32 [ %.pre186, %._ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit_crit_edge ], [ %i.i, %.critedge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !58
  switch i32 %i.t, label %bb.f [
    i32 124, label %_ZN4Luau6Parser9parseTypeEb.exit
    i32 38, label %_ZN4Luau6Parser9parseTypeEb.exit
  ]

bb.f:                                             ; preds = %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit
  %i.w = call { ptr, ptr } @_ZN4Luau6Parser15parseSimpleTypeEbb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !411
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  store i32 %i.u, ptr %i.g, align 4, !tbaa !317
  br label %_ZN4Luau6Parser9parseTypeEb.exit

_ZN4Luau6Parser9parseTypeEb.exit:                 ; preds = %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit, %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit, %bb.f
  %.0.i62 = phi ptr [ %i.x, %bb.f ], [ null, %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit ], [ null, %_ZN4LuauL19shouldParseTypePackERNS_5LexerE.exit ]
  %i.y = call noundef ptr @_ZN4Luau6Parser15parseTypeSuffixEPNS_7AstTypeERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.0.i62, ptr noundef nonnull align 4 dereferenceable(16) %1), !inline_history !411 ; 2 uses
  store i32 %i.u, ptr %i.g, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !336, !nonnull !67, !align !337 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ab = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 noundef 8) ; 2 uses
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !325
  store ptr %i.ab, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.ad, align 8, !tbaa !440
  %i.ae = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 noundef 56) ; 4 uses
  call void @_ZN4Luau19AstTypePackExplicitC1ERKNS_8LocationENS_11AstTypeListE(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull byval(%"struct.Luau::AstTypeList") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !353, !range !66, !noundef !67
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.bj

bb.g:                                             ; preds = %_ZN4Luau6Parser9parseTypeEb.exit
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.aj = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef 40) ; 2 uses
  call void @_ZN4Luau19CstTypePackExplicitC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !354
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bj

bb.h:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1052 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !499
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !435
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !171
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  store i64 %i.az, ptr %i.as, align 8, !tbaa !500
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !497
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !501
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !488
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !133
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 5
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !502
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr %i.bl, ptr %7, align 8, !tbaa !377
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !378
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !129
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !380
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store ptr %i.bv, ptr %8, align 8, !tbaa !377
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !378
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !129
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  store i64 %i.cd, ptr %i.bw, align 8, !tbaa !380
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !381
  %i.cf = load i32, ptr %i.n, align 8, !tbaa !119
  %.not40 = icmp eq i32 %i.cf, 41
  br i1 %.not40, label %bb.j, label %.invoke

.invoke:                                          ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !353, !range !66, !noundef !67
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  %i.cj = select i1 %i.ci, ptr %7, ptr null
  %i.ck = select i1 %i.ci, ptr %8, ptr null
  %i.cl = invoke noundef ptr @_ZN4Luau6Parser13parseTypeListERNS_10TempVectorIPNS_7AstTypeEEERNS1_ISt8optionalISt4pairINS_7AstNameENS_8LocationEEEEEPNS1_INS_8PositionEEESG_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.cj, ptr noundef %i.ck)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.invoke
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.j:                                             ; preds = %.invoke, %bb.h
  %.022 = phi ptr [ null, %bb.h ], [ %i.cl, %.invoke ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cp = load i64, ptr %i.cn, align 4            ; 2 uses
  store i64 %i.cp, ptr %9, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cs = load i64, ptr %i.cr, align 4
  store i64 %i.cs, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ct = load i32, ptr %3, align 8, !tbaa !119
  store i32 %i.ct, ptr %10, align 4, !tbaa !319
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i64 %i.cp, ptr %i.cu, align 4
  %i.cv = load i32, ptr %i.n, align 8, !tbaa !119
  %.not.i = icmp eq i32 %i.cv, 41
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 41, ptr noundef nonnull readonly align 4 dereferenceable(12) %10, ptr noundef null)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.k
  %i.cw = invoke noundef zeroext i1 @_ZN4Luau6Parser28expectMatchAndConsumeRecoverEcRKNS0_11MatchLexemeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef signext 41, ptr nonnull readonly align 4 poison, i1 noundef zeroext true)
          to label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
          to label %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread unwind label %bb.t

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.m

_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit.thread, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cy = load i64, ptr %i.cx, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit, %bb.m
  %storemerge = phi i64 [ %i.cy, %bb.m ], [ -1, %_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb.exit ] ; 3 uses
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1052 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !31
  %i.dc = add i32 %i.db, -1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !31
  %i.dd = load i32, ptr %i.n, align 8, !tbaa !119
  %.not41 = icmp ne i32 %i.dd, 263
  %i.de = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %or.cond177 = select i1 %.not41, i1 %i.df, i1 false
  br i1 %or.cond177, label %bb.o, label %bb.ap

bb.o:                                             ; preds = %bb.n
  %i.dg = load i64, ptr %i.ba, align 8, !tbaa !497 ; 10 uses
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %i.di = icmp eq ptr %.022, null
  br i1 %i.di, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.dl = load ptr, ptr %5, align 8, !tbaa !498, !nonnull !67, !align !337
  %i.dm = load i64, ptr %i.as, align 8, !tbaa !500
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !171
  %i.do = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 noundef 40)
          to label %.noexc66 unwind label %bb.u   ; 4 uses

.noexc66:                                         ; preds = %bb.q
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !325
  invoke void @_ZN4Luau12AstTypeGroupC1ERKNS_8LocationEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef %i.dq)
          to label %_ZN4Luau9Allocator5allocINS_12AstTypeGroupEJRKNS_8LocationERKPNS_7AstTypeEEEEPT_DpOT0_.exit unwind label %bb.u

_ZN4Luau9Allocator5allocINS_12AstTypeGroupEJRKNS_8LocationERKPNS_7AstTypeEEEEPT_DpOT0_.exit: ; preds = %.noexc66
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !353, !range !66, !noundef !67
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZN4Luau9Allocator5allocINS_12AstTypeGroupEJRKNS_8LocationERKPNS_7AstTypeEEEEPT_DpOT0_.exit
  %i.du = load ptr, ptr %i.dj, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.dv = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 noundef 12)
          to label %.noexc68 unwind label %bb.v   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4Luau6Parser21parseTableConstructorEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cv

bb.cr:                                            ; preds = %.noexc160, %.loopexit282, %.lr.ph.preheader.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.cw

bb.cs:                                            ; preds = %.noexc169, %.loopexit, %.lr.ph.preheader.i.i162
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %_ZN4Luau9Allocator5allocINS_12CstExprTableEJNS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn64 = phi { ptr, i32 } [ %i.jv, %bb.ct ], [ %i.ju, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cq, %_ZN4Luau9Allocator5allocINS_12AstExprTableEJNS_8LocationENS_8AstArrayINS2_4ItemEEEEEEPT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !1159
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.o ; 2 uses
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !1159
  %.not.i.i.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.cv
  store ptr %i.jx, ptr %i.j, align 8, !tbaa !1150
  br label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit

_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit: ; preds = %bb.cv, %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.jz = load ptr, ptr %i.b, align 8, !tbaa !1160
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.h ; 2 uses
  %i.kb = load ptr, ptr %i.c, align 8, !tbaa !1160
  %.not.i.i.i171 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not.i.i.i171, label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit
  store ptr %i.ka, ptr %i.c, align 8, !tbaa !1149
  br label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit

_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit, %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  ret ptr %i.iw

bb.cw:                                            ; preds = %.loopexit294, %.loopexit.split-lp295, %.loopexit289, %.loopexit.split-lp290, %.loopexit309, %.loopexit.split-lp310, %bb.co, %bb.cu, %bb.cr, %bb.ch, %bb.bq, %bb.au, %bb.ai
  %.pn68 = phi { ptr, i32 } [ %i.jt, %bb.cr ], [ %lpad.loopexit.split-lp292, %.loopexit.split-lp290 ], [ %.pn54.pn.pn.pn.pn.pn.pn.pn, %bb.ai ], [ %.pn47.pn.pn.pn.pn, %bb.bq ], [ %i.dq, %bb.au ], [ %i.ia, %bb.ch ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp310 ], [ %i.id, %bb.co ], [ %.pn64, %bb.cu ], [ %lpad.loopexit311, %.loopexit309 ], [ %lpad.loopexit291, %.loopexit289 ], [ %lpad.loopexit296, %.loopexit294 ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !1159
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.o ; 2 uses
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !1159
  %.not.i.i.i172 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i.i172, label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174, label %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173

_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173: ; preds = %bb.cw
  store ptr %i.kd, ptr %i.j, align 8, !tbaa !1150
  br label %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174

_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174: ; preds = %bb.cw, %_ZSt8_DestroyIPN4Luau12CstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i173
  %i.kf = load ptr, ptr %i.b, align 8, !tbaa !1160
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.h ; 2 uses
  %i.kh = load ptr, ptr %i.c, align 8, !tbaa !1160
  %.not.i.i.i175 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not.i.i.i175, label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177, label %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176

_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174
  store ptr %i.kg, ptr %i.c, align 8, !tbaa !1149
  br label %_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177

_ZN4Luau10TempVectorINS_12AstExprTable4ItemEED2Ev.exit177: ; preds = %_ZN4Luau10TempVectorINS_12CstExprTable4ItemEED2Ev.exit174, %_ZSt8_DestroyIPN4Luau12AstExprTable4ItemES2_EvT_S4_RSaIT0_E.exit.i.i.i.i176
  resume { ptr, i32 } %.pn68
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser15parseIfElseExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %.sroa.011.0.copyload = load i64, ptr %i.c, align 4
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.d = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %i.e = load i32, ptr %i.b, align 8, !tbaa !119
  %.not.i = icmp eq i32 %i.e, 308                 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i64, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 308, ptr noundef nonnull @.str.295) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.g, %bb.b ], [ -1, %bb.c ]
  %i.i = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %i.j = load i64, ptr %i.c, align 4
  %i.k = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.l = icmp eq i32 %i.k, 295                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !317  ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !317
  %i.p = load i32, ptr @_ZN4FInt18LuauRecursionLimitE, align 8, !tbaa !332
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_ZN4Luau10ParseError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.284) #37
  unreachable

_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit: ; preds = %bb.e
  %i.r = tail call noundef ptr @_ZN4Luau6Parser15parseIfElseExprEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  store i32 %i.n, ptr %i.m, align 4, !tbaa !317
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %.not.i3 = icmp eq i32 %i.k, 294                ; 2 uses
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 294, ptr noundef nonnull @.str.295) ; 0 uses
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4

_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4: ; preds = %bb.h, %bb.i
  %i.t = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %.014 = phi i1 [ true, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ], [ %.not.i3, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4 ]
  %.013 = phi ptr [ %i.r, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ], [ %i.t, %_ZN4Luau6Parser16expectAndConsumeENS_6Lexeme4TypeEPKc.exit4 ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.013, i64 20
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !336, !nonnull !67, !align !337
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i64 %.sroa.011.0.copyload, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.0.copyload, ptr %i.w, align 8
  %i.x = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef 72) ; 3 uses
  call void @_ZN4Luau13AstExprIfElseC1ERKNS_8LocationEPNS_7AstExprEbS5_bS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %i.d, i1 noundef zeroext %.not.i, ptr noundef %i.i, i1 noundef zeroext %.014, ptr noundef %.013)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i8, ptr %i.y, align 8, !tbaa !353, !range !66, !noundef !67
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.ac = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 noundef 24) ; 2 uses
  call void @_ZN4Luau13CstExprIfElseC1ENS_8PositionES1_b(ptr noundef nonnull align 4 dereferenceable(21) %i.ac, i64 %storemerge, i64 %i.j, i1 noundef zeroext %i.l)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.x, ptr %i.a, align 8, !tbaa !354
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret ptr %i.x
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN4Luau6Parser23reportFunctionArgsErrorEPNS_7AstExprEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::AstArray", align 8   ; 5 uses
  %4 = alloca %"struct.Luau::Location", align 8   ; 6 uses
  %5 = alloca %"struct.Luau::AstArray", align 8   ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  br i1 %2, label %bb.b, label %.lr.ph.i.i11

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !406
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !408
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.lr.ph.i.i11, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.g = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !53
  store ptr %i.g, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.290)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.e

.lr.ph.i.i11:                                     ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i64, ptr %i.j, align 4
  store i64 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.k, align 4
  store i64 %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.q = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef 8) ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !53
  store ptr %i.q, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.s = load ptr, ptr %6, align 8, !tbaa !43
  %i.t = invoke noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportExprErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstExprEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.291, ptr noundef %i.s)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i11
  %i.u = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i11
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !44
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i
  %.0 = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %1) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.c = load ptr, ptr %2, align 8, !tbaa !43
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull @.str.322, ptr noundef nonnull %1, ptr noundef %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !44
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.o = load ptr, ptr %3, align 8, !tbaa !43
  invoke void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull @.str.323, ptr noundef %i.o)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !44
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9Allocator5allocINS_12CstTypeGroupEJRNS_8PositionEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 12) ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 4
  tail call void @_ZN4Luau12CstTypeGroupC1ENS_8PositionE(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 %.sroa.0.0.copyload)
  ret ptr %i.a
}

declare noundef i32 @_ZNK4Luau6Lexeme9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !43     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45   ; 4 uses
  %i.d = add i64 %i.c, 1                          ; 9 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !336, !nonnull !67, !align !337
  %i.h = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %i.d) ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 4
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = sub i64 %i.e, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !44
end_hunk_5
