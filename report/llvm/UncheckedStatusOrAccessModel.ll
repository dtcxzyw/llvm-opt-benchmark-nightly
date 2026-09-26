Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UncheckedStatusOrAccessModel?download=true
inline.NumInlined: 9309
inline.NumDeleted: 4321
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5clang8dataflow14statusor_model24buildTransferMatchSwitchERNS_10ASTContextENS0_21CFGMatchSwitchBuilderINS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEEvEE:bb.a
_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1376: ; preds = %_ZNSt14_Function_baseD2Ev.exit1374, %bb.arq, %bb.arr
  %i.gpl = load ptr, ptr %i.mu, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i1377 = icmp eq ptr %i.gpl, null
  br i1 %.not.i.i.i.i1377, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378, label %bb.ars

bb.ars:                                           ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1376
  %i.gpm = getelementptr inbounds nuw i8, ptr %i.gpl, i64 8
  %i.gpn = atomicrmw sub ptr %i.gpm, i32 1 acq_rel, align 4
  %i.gpo = icmp eq i32 %i.gpn, 1
  br i1 %i.gpo, label %bb.art, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378

bb.art:                                           ; preds = %bb.ars
  %i.gpp = load ptr, ptr %i.gpl, align 8, !tbaa !134
  %i.gpq = getelementptr inbounds nuw i8, ptr %i.gpp, i64 8
  %i.gpr = load ptr, ptr %i.gpq, align 8
  call void %i.gpr(ptr noundef nonnull align 8 dereferenceable(12) %i.gpl) #21, !inline_history !14
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1376, %bb.ars, %bb.art
  call void @llvm.lifetime.end.p0(ptr nonnull %352) #21
  %i.gps = load ptr, ptr %i.fc, align 8, !tbaa !195 ; 2 uses
  %.not.i1379 = icmp eq ptr %i.gps, null
  br i1 %.not.i1379, label %_ZNSt14_Function_baseD2Ev.exit1380, label %bb.aru

bb.aru:                                           ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378
  %i.gpt = call noundef zeroext i1 %i.gps(ptr noundef nonnull align 8 dereferenceable(32) %351, ptr noundef nonnull align 8 dereferenceable(32) %351, i32 noundef 3) #21, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit1380

_ZNSt14_Function_baseD2Ev.exit1380:               ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1378, %bb.aru
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382, label %bb.arv

bb.arv:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit1380
  %i.gpu = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gpv = atomicrmw sub ptr %i.gpu, i32 1 acq_rel, align 4
  %i.gpw = icmp eq i32 %i.gpv, 1
  br i1 %i.gpw, label %bb.arw, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382

bb.arw:                                           ; preds = %bb.arv
  %i.gpx = load ptr, ptr %i.fb, align 8, !tbaa !134
  %i.gpy = getelementptr inbounds nuw i8, ptr %i.gpx, i64 8
  %i.gpz = load ptr, ptr %i.gpy, align 8
  call void %i.gpz(ptr noundef nonnull align 8 dereferenceable(12) %i.fb) #21, !inline_history !14
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382: ; preds = %_ZNSt14_Function_baseD2Ev.exit1380, %bb.arv, %bb.arw
  %i.gqa = load ptr, ptr %i.fa, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i1383 = icmp eq ptr %i.gqa, null
  br i1 %.not.i.i.i.i1383, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1384, label %bb.arx

bb.arx:                                           ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gqa, i64 8
  %i.gqc = atomicrmw sub ptr %i.gqb, i32 1 acq_rel, align 4
  %i.gqd = icmp eq i32 %i.gqc, 1
  br i1 %i.gqd, label %bb.ary, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1384

bb.ary:                                           ; preds = %bb.arx
  %i.gqe = load ptr, ptr %i.gqa, align 8, !tbaa !134
  %i.gqf = getelementptr inbounds nuw i8, ptr %i.gqe, i64 8
  %i.gqg = load ptr, ptr %i.gqf, align 8
  call void %i.gqg(ptr noundef nonnull align 8 dereferenceable(12) %i.gqa) #21, !inline_history !14
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1384

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1384: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit1382, %bb.arx, %bb.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %350) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow14statusor_modelL49transferMakePredicateFormatterFromIsOkMatcherCallEPKNS_8CallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200 ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0) #21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.13, i64 12) #21
  %i.f = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr nonnull @.str.13, i64 12, i32 noundef %i.e) #21 ; 2 uses
  %i.g = icmp ne i32 %i.f, -1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.g)
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !270
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.j = icmp ne i64 %i.i, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !275
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !243  ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.s = load ptr, ptr %.in.i.i, align 8, !tbaa !389, !nonnull !135, !align !200
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #21
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow14statusor_modelL29transferStatusIsOkMatcherCallEPKNS_8CallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243  ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.f = load ptr, ptr %.in.i.i, align 8, !tbaa !389, !nonnull !135, !align !200
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #21
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200 ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %0) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.14, i64 10) #21
  %i.l = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.j, ptr nonnull @.str.14, i64 10, i32 noundef %i.k) #21 ; 2 uses
  %i.m = icmp ne i32 %i.l, -1
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.m)
  %i.o = sext i32 %i.l to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !270
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.p = icmp ne i64 %i.o, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !272
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !275
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow14statusor_modelL53transferMakePredicateFormatterFromStatusIsMatcherCallEPKNS_8CallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %0, align 8
  %i.e = lshr i32 %i.d, 19
  %i.f = and i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !391
  %i.j = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.i) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.14, i64 10) #21
  %i.m = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, ptr nonnull @.str.14, i64 10, i32 noundef %i.l) #21 ; 2 uses
  %i.n = icmp ne i32 %i.m, -1
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.n)
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !270
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.q = icmp ne i64 %i.p, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !272
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !275
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.w = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #21 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200 ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %0) #21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.ab = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.13, i64 12) #21
  %i.ac = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aa, ptr nonnull @.str.13, i64 12, i32 noundef %i.ab) #21 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, -1
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.ad)
  %i.af = sext i32 %i.ac to i64                   ; 2 uses
  %.phi.trans.insert.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.pre.i.i.i11 = load i32, ptr %.phi.trans.insert.i.i.i10, align 8, !tbaa !270
  %.pre6.i.i.i12 = zext i32 %.pre.i.i.i11 to i64
  %i.ag = icmp ne i64 %i.af, %.pre6.i.i.i12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !275
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.w) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow14statusor_modelL44transferAssertionResultConstructFromBoolCallEPKNS_16CXXConstructExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.c = load i16, ptr %0, align 8
  %i.d = and i16 %i.c, 511
  %.not.i.i.i.i = icmp eq i16 %i.d, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !391
  %i.g = tail call noundef ptr @_ZNK5clang8dataflow11Environment18getStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.j = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #21 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %0) #21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.o = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.12, i64 2) #21
  %i.p = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr nonnull @.str.12, i64 2, i32 noundef %i.o) #21 ; 2 uses
  %i.q = icmp ne i32 %i.p, -1
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.q)
  %i.s = sext i32 %i.p to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !270
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.t = icmp ne i64 %i.s, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !272
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !275
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS0_15StorageLocationERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.j) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang8dataflow14statusor_modelL39transferAssertionResultOperatorBoolCallEPKNS_17CXXMemberCallExprERKNS_12ast_matchers11MatchFinder11MatchResultERNS0_13TransferStateINS0_27CachedConstAccessorsLatticeINS0_11NoopLatticeEEEEE(ptr noundef nonnull %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.c = tail call noundef ptr @_ZN5clang8dataflow25getImplicitObjectLocationERKNS_17CXXMemberCallExprERKNS0_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(228) %i.b) #21 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.12, i64 2) #21
  %i.h = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr nonnull @.str.12, i64 2, i32 noundef %i.g) #21 ; 2 uses
  %i.i = icmp ne i32 %i.h, -1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !269
  tail call void @llvm.assume(i1 %i.i)
  %i.k = sext i32 %i.h to i64                     ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !270
  %.pre6.i.i.i = zext i32 %.pre.i.i.i to i64
  %i.l = icmp ne i64 %i.k, %.pre6.i.i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !272
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !275
  %i.q = tail call noundef ptr @_ZNK5clang8dataflow11Environment8getValueERKNS0_15StorageLocationE(ptr noundef nonnull align 8 dereferenceable(228) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.p) #21 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !241
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !243  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 320 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !266  ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !266
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang8dataflow5Arena11makeAtomRefENS0_4AtomE(ptr noundef nonnull align 8 dereferenceable(344) %i.v, i32 noundef %i.x) #21
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5clang8dataflow5Arena13makeBoolValueERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(344) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #21 ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !396
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !396
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang8dataflow5Arena10makeEqualsERKNS0_7FormulaES4_(ptr noundef nonnull align 8 dereferenceable(344) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.af) #21
  tail call void @_ZN5clang8dataflow11Environment6assumeERKNS0_7FormulaE(ptr noundef nonnull align 8 dereferenceable(228) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !388, !nonnull !135, !align !200
  tail call void @_ZN5clang8dataflow11Environment8setValueERKNS_4ExprERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(228) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang8dataflow14statusor_modelL28isStatusOrMemberCallWithNameEN4llvm9StringRefE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.clang::ast_matchers::internal::Matcher.60", align 8 ; 5 uses
  %4 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.1266", align 8 ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::Matcher.75", align 8 ; 5 uses
  %6 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.1077", align 8 ; 5 uses
  %7 = alloca %"class.clang::ast_matchers::internal::Matcher.122", align 8 ; 7 uses
  %8 = alloca %"class.clang::ast_matchers::internal::Matcher", align 8 ; 5 uses
  %9 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.824", align 8 ; 5 uses
  %10 = alloca %"class.clang::ast_matchers::internal::Matcher", align 8 ; 5 uses
  %11 = alloca %"class.clang::ast_matchers::internal::VariadicOperatorMatcher.1292", align 8 ; 6 uses
  %12 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.824", align 8 ; 5 uses
  %13 = alloca %"class.clang::ast_matchers::internal::PolymorphicMatcher.1204", align 8 ; 5 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 4 uses
  %14 = alloca %"class.clang::ast_matchers::internal::Matcher.105", align 8 ; 5 uses
  %15 = alloca %"class.clang::ast_matchers::internal::Matcher.106", align 8 ; 5 uses
  %16 = alloca %"class.clang::ast_matchers::internal::Matcher.105", align 8 ; 7 uses
  %17 = alloca %"class.clang::ast_matchers::internal::Matcher.219", align 8 ; 5 uses
  %18 = alloca %"class.clang::ast_matchers::internal::VariadicOperatorMatcher.1309", align 8 ; 8 uses
  %19 = alloca %"class.clang::ast_matchers::internal::Matcher.60", align 8 ; 5 uses
  %20 = alloca %"class.clang::ast_matchers::internal::Matcher.60", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_11CXXThisExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::BindableMatcher.824") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5clang12ast_matchers11cxxThisExprE)
  call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  %i.b = load i32, ptr @_ZN5clang12ast_matchers6unlessE, align 4, !tbaa !332, !noalias !2438
  store i32 %i.b, ptr %11, align 8, !tbaa !336, !alias.scope !2438
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155, !noalias !2438
  store ptr %i.f, ptr %i.d, align 8, !tbaa !155, !alias.scope !2438
  store ptr null, ptr %i.e, align 8, !tbaa !155, !noalias !2438
  call void @_ZNO5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS_4StmtEEEEEcvNS1_7MatcherIT_EEINS_4ExprEEEv(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !2442
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !2442
  call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 12, i1 false), !noalias !2442
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155, !noalias !2444 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !155, !alias.scope !2443, !noalias !2442
  %.not.i.i.i.i.i2.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i2.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 1 monotonic, align 4, !noalias !2444 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %bb.b, %bb.a
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 186) #21, !noalias !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155, !noalias !2442 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !155, !alias.scope !2442
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 4, !noalias !2442 ; 0 uses
  %.pr.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !155, !noalias !2442 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4, !noalias !2442
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !134, !noalias !2442
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2442
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i) #21, !noalias !2442, !inline_history !16
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !155, !noalias !2442 ; 4 uses
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_4ExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4, !noalias !2442
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_4ExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !134, !noalias !2442
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2442
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #21, !noalias !2442, !inline_history !17
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_4ExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
end_hunk_0
begin_hunk_1_@_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !155, !noalias !3137 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !155, !alias.scope !3137
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.m

bb.m:                                             ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i32 1 monotonic, align 4, !noalias !3137 ; 0 uses
  br label %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.m, %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EEC2IN4llvm16pointee_iteratorIPKPKNS2_7MatcherINS0_16CXXConstructExprEEESC_EEvEET_SH_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3134

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EEC2IN4llvm16pointee_iteratorIPKPKNS2_7MatcherINS0_16CXXConstructExprEEESC_EEvEET_SH_RKS4_.exit: ; preds = %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bd, %_ZSt10_ConstructIN5clang12ast_matchers8internal15DynTypedMatcherEJRKNS2_7MatcherINS0_16CXXConstructExprEEEEEvPT_DpOT0_.exit.i.i.i.i.i.i.1 ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.ac, ptr %7, align 8, !tbaa !158
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.lcssa, ptr %i.bf, align 8, !tbaa !159
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !161
  call void @_ZN5clang12ast_matchers8internal15DynTypedMatcher17constructVariadicENS2_16VariadicOperatorENS_11ASTNodeKindESt6vectorIS2_SaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 %6, i32 noundef 0, i32 312, ptr nofree noundef nonnull align 8 dereferenceable(24) %7) #21
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 312) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 12, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !155 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !155
  %.not.i.i.i.i.i4 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i4, label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit5

_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit5: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EEC2IN4llvm16pointee_iteratorIPKPKNS2_7MatcherINS0_16CXXConstructExprEEESC_EEvEET_SH_RKS4_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 1 monotonic, align 4 ; 0 uses
  %.pr35 = load ptr, ptr %i.bi, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr35, null
  br i1 %.not.i.i.i.i6, label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7, label %bb.n

bb.n:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit5
  %i.bm = getelementptr inbounds nuw i8, ptr %.pr35, i64 8
  %i.bn = atomicrmw sub ptr %i.bm, i32 1 acq_rel, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.o, label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %.pr35, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(12) %.pr35) #21, !inline_history !46
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7

_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EEC2IN4llvm16pointee_iteratorIPKPKNS2_7MatcherINS0_16CXXConstructExprEEESC_EEvEET_SH_RKS4_.exit, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit5, %bb.n, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i8, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.q, label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !134
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(12) %i.bt) #21, !inline_history !1
  br label %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit

_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit7, %bb.p, %bb.q
  %i.ca = load ptr, ptr %7, align 8, !tbaa !158   ; 3 uses
  %i.cb = load ptr, ptr %i.bf, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ck, %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i ], [ %i.ca, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !155 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw sub ptr %i.ce, i32 1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.s, label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !134
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.cd) #21, !inline_history !2
  br label %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ck, %i.cb
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5clang12ast_matchers8internal15DynTypedMatcherEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i

_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit
  %i.cl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exitthread-pre-split.i ], [ %i.ca, %_ZN5clang12ast_matchers8internal15DynTypedMatcherD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i
  %i.cm = load ptr, ptr %i.bg, align 8, !tbaa !161
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #23
  br label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit20

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit20: ; preds = %_ZSt8_DestroyIPN5clang12ast_matchers8internal15DynTypedMatcherEEvT_S5_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit3

_ZN5clang12ast_matchers8internal15BindableMatcherINS_16CXXConstructExprEEC2ERKNS1_7MatcherIS3_EE.exit3: ; preds = %bb.h, %bb.g, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EED2Ev.exit20, %_ZN5clang12ast_matchers8internal7MatcherINS_16CXXConstructExprEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !25
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !3138
  br label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !530  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3145
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !391  ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.j, align 8
  %i.m = and i16 %i.l, 511
  %i.n = icmp eq i16 %i.m, 116
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  %i.q = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #21, !noalias !3148
  store i32 %i.q, ptr %4, align 8, !tbaa !67, !alias.scope !3148
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !136, !alias.scope !3148
  %i.s = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %0, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !12
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %0, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !3149
  br label %_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED2Ev.exit

_ZN5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal23matcher_hasType1MatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BindableMatcher", align 8 ; 7 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.b = icmp ult i64 %.sroa.0.0.copyload.i.i, 16
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155, !noalias !3166 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i32 1 monotonic, align 4, !noalias !3166 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit

_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit: ; preds = %bb.b, %bb.c
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !3167 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 4, !tbaa !277, !noalias !3167
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_8QualTypeENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.h, align 8, !tbaa !134, !noalias !3167
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false), !noalias !3167
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.e, ptr %i.k, align 8, !tbaa !155, !alias.scope !3168, !noalias !3167
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = atomicrmw add ptr %i.l, i32 1 monotonic, align 4, !noalias !3169 ; 0 uses
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.d
  %i.n = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !3167 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  store i8 0, ptr %5, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 6, ptr %.sroa.410.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 6, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.o, align 8, !tbaa !155, !alias.scope !3173
  %i.p = atomicrmw add ptr %i.i, i32 1 monotonic, align 4, !noalias !3173 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 6, ptr %4, align 8, !tbaa !67, !alias.scope !3174
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !tbaa !65, !alias.scope !3174
  %i.r = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !155  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #21, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_8QualTypeEEENS1_7MatcherIS4_EEXadL_ZNS1_18makeAllOfCompositeIS4_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IS9_EEEEEEEclIJEEES5_RKS7_DpRKT_.exit
  %i.z = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #21, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6

_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit, %bb.g
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.e) #21, !inline_history !11
  br label %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit

_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEED2Ev.exit6, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit
  %.0 = phi i1 [ %i.r, %_ZN5clang12ast_matchers8internal18PolymorphicMatcherINS1_21HasDeclarationMatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_9UsingTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprENS_17ObjCInterfaceDeclEEEEEJNS1_7MatcherINS_4DeclEEEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
