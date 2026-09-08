Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLLexer?download=true
inline.NumInlined: 1627
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm7LLLexer10ReadStringENS_5lltok4KindE:bb.a
  store i8 %i.bc, ptr %.03036.i, align 1, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.037.i, i64 3
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  store i8 92, ptr %.03036.i, align 1, !tbaa !42
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  store i8 %i.ad, ptr %.03036.i, align 1, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g
  %.1.i = phi ptr [ %i.aj, %bb.g ], [ %i.bd, %bb.k ], [ %i.be, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03036.i, i64 1 ; 2 uses
  %.not.i8 = icmp eq ptr %.1.i, %i.x
  br i1 %.not.i8, label %._crit_edge.i, label %bb.d, !llvm.loop !7

bb.o:                                             ; preds = %_ZN4llvm7LLLexer11getNextCharEv.exit.thread10, %bb.c, %._crit_edge.i
  %.1.ph = phi i32 [ %1, %._crit_edge.i ], [ %1, %bb.c ], [ 1, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread10 ]
  ret i32 %.1.ph
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(169) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42
  %i.c = add i8 %i.b, -48
  %isdigit = icmp ult i8 %i.c, 10
  br i1 %isdigit, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %.preheader
  %.pn = phi ptr [ %storemerge, %.preheader ], [ %i.a, %bb.a ] ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !67
  %i.d = load i8, ptr %storemerge, align 1, !tbaa !42
  %i.e = add i8 %i.d, -48
  %isdigit5 = icmp ult i8 %i.e, 10
  br i1 %isdigit5, label %.preheader, label %bb.b, !llvm.loop !6

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 4 uses
  %.not17.i = icmp eq ptr %i.g, %.pn
  br i1 %.not17.i, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, label %.critedge.i

bb.c:                                             ; preds = %.critedge.i
  %.not.i = icmp eq ptr %.01418.i, %.pn
  br i1 %.not.i, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.b, %bb.c
  %.01219.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.01418.i.pn = phi ptr [ %.01418.i, %bb.c ], [ %i.g, %bb.b ]
  %.01418.i = getelementptr inbounds nuw i8, ptr %.01418.i.pn, i64 1 ; 3 uses
  %i.h = mul i64 %.01219.i, 10
  %i.i = load i8, ptr %.01418.i, align 1, !tbaa !42
  %i.j = sext i8 %i.i to i64
  %i.k = add i64 %i.h, -48
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %.not15.i = icmp ult i64 %i.l, %.01219.i
  br i1 %.not15.i, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !52
  store ptr @.str, ptr %2, align 8, !tbaa !42
  store i8 3, ptr %i.m, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread

_ZN4llvm7LLLexer6atoullEPKcS2_.exit:              ; preds = %bb.c
  %i.o = trunc i64 %i.l to i32                    ; 2 uses
  %.not = icmp ult i64 %i.l, 4294967296
  br i1 %.not, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !52
  store ptr @.str.6, ptr %3, align 8, !tbaa !42
  store i8 3, ptr %i.p, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread

_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread:       ; preds = %bb.b, %bb.d, %bb.e, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  %i.r = phi i32 [ %i.o, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit ], [ %i.o, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.r, ptr %i.s, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread
  %.0 = phi i32 [ %1, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread ], [ 1, %bb.a ]
  ret i32 %.0
}

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm8ByteType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getHalfTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type11getBFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type13getX86_FP80TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type14getPPC_FP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getLabelTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type13getMetadataTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type12getX86_AMXTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getTokenTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvm5APIntC1EjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64, i8 noundef zeroext) unnamed_addr #2

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 559) i32 @_ZN4llvm7LLLexer5Lex0xEv(ptr noundef nonnull align 8 dereferenceable(169) initializes((0, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = alloca [2 x i64], align 16               ; 10 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 20 uses
  %.ptr86 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  store ptr %.ptr86, ptr %0, align 8, !tbaa !67
  %i.d = load i8, ptr %.ptr86, align 1, !tbaa !42 ; 3 uses
  %i.e = add i8 %i.d, -75
  %or.cond = icmp ult i8 %i.e, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.d [
    i8 72, label %bb.c
    i8 82, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %.ptr87 = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %.ptr87, ptr %0, align 8, !tbaa !67
  %i.f = load i8, ptr %.ptr86, align 1, !tbaa !42
  %i.g = sext i8 %i.f to i32
  %.pre = load i8, ptr %.ptr87, align 1, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %.promoted.idx = phi i64 [ 3, %bb.c ], [ 2, %bb.b ]
  %.0 = phi i32 [ %i.g, %bb.c ], [ 74, %bb.b ]    ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = tail call i32 @isxdigit(i32 noundef %i.i) #17
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.k, ptr %0, align 8, !tbaa !67
  br label %bb.ak

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.idx = phi i64 [ %.add, %.lr.ph ], [ %.promoted.idx, %bb.d ]
  %.add = add nuw nsw i64 %.idx, 1                ; 10 uses
  %.ptr85 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.add ; 2 uses
  store ptr %.ptr85, ptr %0, align 8, !tbaa !67
  %i.l = load i8, ptr %.ptr85, align 1, !tbaa !42 ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @isxdigit(i32 noundef %i.m) #17
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph
  %.ptr85.le = getelementptr inbounds nuw i8, ptr %i.c, i64 %.add ; 7 uses
  %i.o = icmp eq i8 %i.l, 46
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.p = tail call noundef i32 @_ZN4llvm7LLLexer11LexFloatStrEv(ptr noundef nonnull align 8 dereferenceable(169) %0)
  br label %bb.ak

bb.g:                                             ; preds = %._crit_edge
  %i.q = icmp eq i32 %.0, 74
  br i1 %i.q, label %.critedge.i.preheader, label %bb.l

.critedge.i.preheader:                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not17.i = icmp samesign eq i64 %.add, 2
  br i1 %.not17.i, label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit, label %.critedge.i

bb.h:                                             ; preds = %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %.ptr85.le
  br i1 %.not.i, label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.h
  %.01219.i = phi i64 [ %i.z, %bb.h ], [ 0, %.critedge.i.preheader ] ; 2 uses
  %.01418.i = phi ptr [ %i.r, %bb.h ], [ %.ptr86, %.critedge.i.preheader ] ; 2 uses
  %i.s = shl i64 %.01219.i, 4
  %i.t = load i8, ptr %.01418.i, align 1, !tbaa !42
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !56
  %i.x = sext i16 %i.w to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = add i64 %i.y, %i.s                       ; 3 uses
  %.not15.i = icmp ult i64 %i.z, %.01219.i
  br i1 %.not15.i, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !52
  store ptr @.str, ptr %4, align 8, !tbaa !42
  store i8 3, ptr %i.aa, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit

_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit:        ; preds = %bb.h, %.critedge.i.preheader, %bb.i
  %.2.i = phi i64 [ 0, %bb.i ], [ 0, %.critedge.i.preheader ], [ %i.z, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %i.ac, align 8, !tbaa !63
  store i64 %.2.i, ptr %6, align 8, !tbaa !42
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5) #15 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !63
  %i.ag = icmp ugt i32 %i.af, 64
  br i1 %i.ag, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit
  %i.ah = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #16
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ak

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  switch i32 %.0, label %bb.m [
    i32 75, label %bb.n
    i32 76, label %bb.r
    i32 77, label %bb.u
    i32 72, label %bb.x
    i32 82, label %bb.ad
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !57
  %.not.i12 = icmp samesign eq i64 %.add, 3
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.n
  %.021.lcssa.i = phi ptr [ %i.aj, %bb.n ], [ %i.ar, %.lr.ph.i ], [ %i.ba, %.lr.ph.i.1 ], [ %i.bj, %.lr.ph.i.2 ], [ %i.bs, %.lr.ph.i.3 ] ; 2 uses
  store i64 0, ptr %i.a, align 16, !tbaa !57
  %.not31.i = icmp eq ptr %.021.lcssa.i, %.ptr85.le
  br i1 %.not31.i, label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !42
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !56
  %i.ap = sext i16 %i.ao to i64
  %i.aq = and i64 %i.ap, 4294967295               ; 2 uses
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not110 = icmp samesign eq i64 %.add, 4
  br i1 %.not110, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.as = shl nuw nsw i64 %i.aq, 4
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !56
  %i.ax = sext i16 %i.aw to i64
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = add nuw nsw i64 %i.ay, %i.as            ; 2 uses
  store i64 %i.az, ptr %i.ak, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %.not111 = icmp samesign eq i64 %.add, 5
  br i1 %.not111, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.bb = shl nuw nsw i64 %i.az, 4
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !42
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !56
  %i.bg = sext i16 %i.bf to i64
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = add nuw nsw i64 %i.bh, %i.bb            ; 2 uses
  store i64 %i.bi, ptr %i.ak, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %.not112 = icmp samesign eq i64 %.add, 6
  br i1 %.not112, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bk = shl nuw nsw i64 %i.bi, 4
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !42
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !56
  %i.bp = sext i16 %i.bo to i64
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = add nuw nsw i64 %i.bq, %i.bk
  store i64 %i.br, ptr %i.ak, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  br label %._crit_edge.i

._crit_edge28.i:                                  ; preds = %.lr.ph27.i
  br i1 %i.cf, label %bb.o, label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit

.lr.ph27.i:                                       ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.bt = phi i64 [ %i.cb, %.lr.ph27.i ], [ 0, %._crit_edge.i ]
  %.025.i = phi i32 [ %i.cc, %.lr.ph27.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.124.i = phi ptr [ %i.cd, %.lr.ph27.i ], [ %.021.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bu = shl i64 %i.bt, 4
  %i.bv = load i8, ptr %.124.i, align 1, !tbaa !42
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !56
  %i.bz = sext i16 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = add i64 %i.ca, %i.bu                    ; 2 uses
  store i64 %i.cb, ptr %i.a, align 16, !tbaa !57
  %i.cc = add nuw nsw i32 %.025.i, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.124.i, i64 1 ; 2 uses
  %i.ce = icmp samesign ult i32 %.025.i, 15
  %i.cf = icmp ne ptr %i.cd, %.ptr85.le           ; 2 uses
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph27.i, label %._crit_edge28.i, !llvm.loop !3

bb.o:                                             ; preds = %._crit_edge28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ci, align 1, !tbaa !52
  store ptr @.str.1, ptr %3, align 8, !tbaa !42
  store i8 3, ptr %i.ch, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit

_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit: ; preds = %._crit_edge.i, %._crit_edge28.i, %bb.o
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 80, ptr nonnull %i.a, i64 2) #15
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !63
  %i.cm = icmp ult i32 %i.cl, 65
  br i1 %i.cm, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !42 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #16
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %bb.q, %bb.p, %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit
  %i.cp = load i64, ptr %7, align 8
  store i64 %i.cp, ptr %i.cj, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !63
  store i32 %i.cr, ptr %i.ck, align 8, !tbaa !63
  br label %bb.aj

bb.r:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @_ZN4llvm7LLLexer12HexToIntPairEPKcS2_Pm(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull %i.cs, ptr noundef nonnull %.ptr85.le, ptr noundef nonnull %i.a)
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 128, ptr nonnull %i.a, i64 2) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !63
  %i.cw = icmp ult i32 %i.cv, 65
  br i1 %i.cw, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !42 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #16
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %bb.t, %bb.s, %bb.r
  %i.cz = load i64, ptr %8, align 8
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !63
  store i32 %i.db, ptr %i.cu, align 8, !tbaa !63
  br label %bb.aj

bb.u:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @_ZN4llvm7LLLexer12HexToIntPairEPKcS2_Pm(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull %i.dc, ptr noundef nonnull %.ptr85.le, ptr noundef nonnull %i.a)
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 128, ptr nonnull %i.a, i64 2) #15
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !63
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.v

end_hunk_0
