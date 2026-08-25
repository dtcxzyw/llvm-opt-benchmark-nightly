Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommentLexer?download=true
begin_hunk_0_@_ZNK5clang8comments5Token4dumpERKNS0_5LexerERKNS_13SourceManagerE:bb.a
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 21
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str, i64 noundef 21) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.f, ptr noundef nonnull align 1 dereferenceable(21) @.str, i64 21, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 21
  store ptr %i.m, ptr %i.e, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.p) #17 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.1, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 32, ptr %i.u, align 1
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.t, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.d, %bb.e
  %i.z = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17
  tail call void @_ZNK5clang14SourceLocation5printERN4llvm11raw_ostreamERKNS_13SourceManagerE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(776) %2) #17
  %i.aa = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #17 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.1, i64 noundef 1) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  store i8 32, ptr %i.ae, align 1
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g
  %.0.i.i8 = phi ptr [ %i.ag, %bb.f ], [ %i.aa, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, i64 noundef %i.al) #17 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull @.str.2, i64 noundef 2) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  store i16 8736, ptr %i.aq, align 1
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.h, %bb.i
  %.0.i.i11 = phi ptr [ %i.av, %bb.h ], [ %i.am, %bb.i ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %0, align 8, !tbaa !21
  %i.ay = tail call i64 @_ZNK5clang13SourceManager16getDecomposedLocENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %.sroa.0.0.copyload.i.i) ; 2 uses
  %.sroa.02.0.extract.trunc.i = trunc i64 %i.ay to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !22
  %i.az = call { ptr, i64 } @_ZNK5clang13SourceManager13getBufferDataENS_6FileIDEPb(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %.sroa.02.0.extract.trunc.i, ptr noundef nonnull %i.a) #17
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !22, !range !23, !noundef !24
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread, label %_ZNK5clang8comments5Lexer11getSpellingERKNS0_5TokenERKNS_13SourceManagerE.exit

.thread:                                          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZNK5clang8comments5Lexer11getSpellingERKNS0_5TokenERKNS_13SourceManagerE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.bc = extractvalue { ptr, i64 } %i.az, 0
  %.sroa.4.0.extract.shift.i = lshr i64 %i.ay, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.4.0.extract.shift.i ; 2 uses
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !20 ; 2 uses
  %i.bf = zext i32 %i.be to i64                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5clang8comments5Lexer11getSpellingERKNS0_5TokenERKNS_13SourceManagerE.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i11, ptr noundef %i.bd, i64 noundef %i.bf) #17
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZNK5clang8comments5Lexer11getSpellingERKNS0_5TokenERKNS_13SourceManagerE.exit
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bf
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %.thread, %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.bo, %bb.j ], [ %.0.i.i11, %bb.l ], [ %.0.i.i11, %bb.k ], [ %.0.i.i11, %.thread ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15 ; 2 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.3, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  store i16 2594, ptr %i.bu, align 1
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store ptr %i.cb, ptr %i.bt, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.m, %bb.n
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #1

declare void @_ZNK5clang14SourceLocation5printERN4llvm11raw_ostreamERKNS_13SourceManagerE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK5clang8comments5Lexer11getSpellingERKNS0_5TokenERKNS_13SourceManagerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(776) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !21
  %i.b = tail call i64 @_ZNK5clang13SourceManager16getDecomposedLocENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %.sroa.0.0.copyload.i) ; 2 uses
  %.sroa.02.0.extract.trunc = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !22
  %i.c = call { ptr, i64 } @_ZNK5clang13SourceManager13getBufferDataENS_6FileIDEPb(ptr noundef nonnull align 8 dereferenceable(776) %2, i32 %.sroa.02.0.extract.trunc, ptr noundef nonnull %i.a) #17
  %i.d = load i8, ptr %i.a, align 1, !tbaa !22, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.extract.shift
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = zext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.49.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %.sroa.08.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.49.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK5clang8comments5Lexer34resolveHTMLNamedCharacterReferenceEN4llvm9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  switch i64 %2, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 2, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i14
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i34
    i64 7, label %bb.gd
    i64 6, label %bb.ef
    i64 5, label %bb.bv
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = xor i16 %i.a, 28001
  %i.c = getelementptr i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i16
  %i.f = xor i16 %i.e, 112
  %i.g = or i16 %i.b, %i.f
  %i.h = icmp ne i16 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0                 ; 21 uses
  %i.j = load i8, ptr %1, align 1, !tbaa !25
  switch i8 %i.j, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 65, label %bb.r
    i8 80, label %bb.s
    i8 82, label %bb.v
    i8 97, label %bb.w
    i8 99, label %bb.x
    i8 100, label %bb.y
    i8 101, label %bb.z
    i8 105, label %bb.aa
    i8 112, label %bb.ab
    i8 114, label %bb.ae
    i8 115, label %bb.ah
    i8 116, label %bb.ak
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i14:          ; preds = %bb.a
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 29804
  %i.m = zext i1 %i.l to i32
  %.not.i.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i16, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i24

_ZN4llvmneENS_9StringRefES0_.exit.i.i24:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i14
  %i.n = load i16, ptr %1, align 1
  %i.o = icmp ne i16 %i.n, 29799
  %i.p = zext i1 %i.o to i32
  %.not.i.i26 = icmp eq i32 %i.p, 0               ; 2 uses
  %spec.select143 = select i1 %.not.i.i26, ptr @.str.9, ptr @.str.5
  br label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i34:          ; preds = %bb.a
  %i.q = load i32, ptr %1, align 1
  %i.r = icmp ne i32 %i.q, 1953461617
  %i.s = zext i1 %i.r to i32
  %.not.i.i36 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i36, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i44

_ZN4llvmneENS_9StringRefES0_.exit.i.i44:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i34
  %i.t = load i32, ptr %1, align 1
  %i.u = icmp ne i32 %i.t, 1936683105
  %i.v = zext i1 %i.u to i32
  %.not.i.i46 = icmp eq i32 %i.v, 0               ; 2 uses
  %spec.select132 = select i1 %.not.i.i46, ptr @.str.13, ptr @.str.5
  br label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread

_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i24, %_ZN4llvmneENS_9StringRefES0_.exit.i.i14
  %.sroa.26.4124 = phi i1 [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i14 ], [ %.not.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i24 ] ; 17 uses
  %.sroa.14.4122 = phi ptr [ @.str.7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i14 ], [ %spec.select143, %_ZN4llvmneENS_9StringRefES0_.exit.i.i24 ] ; 17 uses
  %i.w = load i8, ptr %1, align 1, !tbaa !25
  switch i8 %i.w, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 71, label %bb.b
    i8 76, label %bb.c
    i8 80, label %bb.d
    i8 88, label %bb.e
    i8 103, label %bb.f
    i8 108, label %bb.i
    i8 109, label %bb.l
    i8 110, label %bb.m
    i8 112, label %bb.p
    i8 120, label %bb.q
  ]

bb.b:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25
  switch i8 %i.y, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 84, label %bb.h
    i8 116, label %bb.h
  ]

bb.c:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25
  switch i8 %i.aa, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 84, label %bb.k
    i8 116, label %bb.k
  ]

bb.d:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %.not260.i = icmp eq i8 %i.ac, 105              ; 2 uses
  %spec.select.i = select i1 %.not260.i, i64 2, i64 0
  %spec.select444.i = select i1 %.not260.i, ptr @.str.20, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %.not259.i = icmp eq i8 %i.ae, 105              ; 2 uses
  %spec.select445.i = select i1 %.not259.i, i64 2, i64 0
  %spec.select446.i = select i1 %.not259.i, ptr @.str.21, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !25
  switch i8 %i.ag, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 101, label %bb.g
    i8 116, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.b
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.i:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !25
  switch i8 %i.ai, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 101, label %bb.j
    i8 116, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.k:                                             ; preds = %bb.i, %bb.c, %bb.c
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.l:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %.not258.i = icmp eq i8 %i.ak, 117              ; 2 uses
  %spec.select447.i = select i1 %.not258.i, i64 2, i64 0
  %spec.select448.i = select i1 %.not258.i, ptr @.str.24, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.m:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25
  switch i8 %i.am, label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit [
    i8 101, label %bb.n
    i8 117, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.o:                                             ; preds = %bb.m
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.p:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %.not257.i = icmp eq i8 %i.ao, 105              ; 2 uses
  %spec.select449.i = select i1 %.not257.i, i64 2, i64 0
  %spec.select450.i = select i1 %.not257.i, ptr @.str.27, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.q:                                             ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit49.thread118
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %.not256.i = icmp eq i8 %i.aq, 105              ; 2 uses
  %spec.select451.i = select i1 %.not256.i, i64 2, i64 0
  %spec.select452.i = select i1 %.not256.i, ptr @.str.28, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

bb.r:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = icmp ne i16 %i.as, 20557
  %i.au = zext i1 %i.at to i32
  %.not255.i = icmp eq i32 %i.au, 0               ; 2 uses
  %spec.select453.i = zext i1 %.not255.i to i64
  %spec.select454.i = select i1 %.not255.i, ptr @.str.5, ptr null
  br label %_ZN5clang8comments12_GLOBAL__N_142translateHTMLNamedCharacterReferenceToUTF8EN4llvm9StringRefE.exit

end_hunk_0
