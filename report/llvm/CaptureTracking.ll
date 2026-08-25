Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CaptureTracking?download=true
inline.NumInlined: 512
inline.NumDeleted: 373
begin_hunk_0_@_ZN4llvm23DetermineUseCaptureKindERKNS_3UseEPKNS_5ValueE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %i.j, align 8, !tbaa !85
  %i.l = icmp eq i8 %i.k, 14
  br i1 %i.l, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 8192
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !87
  switch i32 %i.q, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread [
    i32 255, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit
    i32 258, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit
    i32 260, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit
    i32 262, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit
    i32 257, label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit: ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 268435455
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %.inv = icmp slt i8 %i.aa, 0
  %spec.select42 = select i1 %.inv, i8 0, i8 3
  br label %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit, %bb.h, %bb.g, %bb.e, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, %bb.f
  %.039 = phi i8 [ %spec.select42, %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.e ], [ 0, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 268435455
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.af
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 5
  %i.al = trunc i64 %i.ak to i32
  %i.am = tail call i16 @_ZNK4llvm8CallBase14getCaptureInfoEj(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i32 noundef %i.al) #17 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.am to i8
  %.sroa.4.0.extract.shift = and i16 %i.am, -256
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm8CallBase15onlyReadsMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %i.b) #17
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 255
  %i.at = icmp eq i32 %i.as, 7
  %spec.select = select i1 %i.at, i8 3, i8 15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread
  %.0 = phi i8 [ 15, %_ZN4llvm8dyn_castINS_12MemIntrinsicENS_8CallBaseEEEDcPT0_.exit.thread ], [ %spec.select, %bb.i ]
  %i.au = and i8 %.0, %.sroa.0.0.extract.trunc
  %i.av = or i8 %i.au, %.039
  br label %bb.ac

bb.k:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !93
  %i.ay = trunc i16 %i.ax to i1
  %spec.select43 = select i1 %i.ay, i8 3, i8 0
  br label %bb.ac

bb.l:                                             ; preds = %bb.b
  %i.az = tail call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %_ZNK4llvm11Instruction11getMetadataEj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef 44) #19
  br label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = tail call noundef zeroext i8 @_ZN4llvm6MDNode19toCaptureComponentsEPKS0_(ptr noundef %.0.i) #17
  br label %bb.ac

bb.o:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !93
  %i.bh = trunc i16 %i.bg to i1
  %spec.select44 = select i1 %i.bh, i8 3, i8 0
  br label %bb.ac

bb.p:                                             ; preds = %bb.b
  %i.bi = tail call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !93
  %i.bm = trunc i16 %i.bl to i1
  %spec.select45 = select i1 %i.bm, i8 3, i8 0
  br label %bb.ac

bb.r:                                             ; preds = %bb.b
  %i.bn = tail call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = tail call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !93
  %i.bt = trunc i16 %i.bs to i1
  %spec.select46 = select i1 %i.bt, i8 3, i8 0
  br label %bb.ac

bb.u:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = and i32 %i.bx, 254
  %spec.select.i = icmp eq i32 %i.by, 18          ; 2 uses
  %spec.select47 = select i1 %spec.select.i, i8 15, i8 0
  %i.bz = select i1 %spec.select.i, i16 0, i16 3840
  br label %bb.ac

bb.v:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.ac

bb.w:                                             ; preds = %bb.b
  %i.ca = tail call noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %i.cb = sub i32 1, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = and i32 %i.cd, 1073741824
  %.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.y:                                             ; preds = %bb.w
  %i.ch = and i32 %i.cd, 268435455
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.cj
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.x, %bb.y
  %i.cl = phi ptr [ %i.cg, %bb.x ], [ %i.ck, %bb.y ]
  %i.cm = zext i32 %i.cb to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !86
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !85
  %i.cq = icmp eq i8 %i.cp, 9
  br i1 %i.cq, label %bb.z, label %.critedge

bb.z:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !93
  %i.ct = and i16 %i.cs, 62
  %i.cu = icmp eq i16 %i.ct, 32
  br i1 %i.cu, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %0, align 8, !tbaa !86
  %i.cw = icmp eq ptr %i.cv, %1
  br i1 %i.cw, label %bb.ac, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.z, %_ZNK4llvm4User10getOperandEj.exit, %bb.aa
  br label %bb.ac

bb.ab:                                            ; preds = %bb.b
  br label %bb.ac

bb.ac:                                            ; preds = %bb.u, %bb.t, %bb.q, %bb.o, %bb.k, %bb.aa, %bb.r, %bb.s, %bb.p, %bb.b, %bb.d, %bb.c, %bb.a, %.critedge, %bb.j, %bb.ab, %bb.v, %_ZNK4llvm11Instruction11getMetadataEj.exit
  %.sroa.24.0 = phi i16 [ 0, %.critedge ], [ 0, %bb.ab ], [ 0, %bb.a ], [ 3840, %bb.c ], [ %.sroa.4.0.extract.shift, %bb.j ], [ 0, %bb.d ], [ 0, %bb.aa ], [ 3840, %bb.v ], [ 0, %_ZNK4llvm11Instruction11getMetadataEj.exit ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.o ], [ %i.bz, %bb.u ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.t ]
  %.sroa.038.0 = phi i8 [ 3, %.critedge ], [ 15, %bb.ab ], [ 15, %bb.a ], [ 0, %bb.c ], [ %i.av, %bb.j ], [ 0, %bb.d ], [ 1, %bb.aa ], [ 0, %bb.v ], [ %i.be, %_ZNK4llvm11Instruction11getMetadataEj.exit ], [ 0, %bb.b ], [ %spec.select43, %bb.k ], [ 15, %bb.s ], [ 15, %bb.p ], [ %spec.select44, %bb.o ], [ %spec.select47, %bb.u ], [ 15, %bb.r ], [ %spec.select45, %bb.q ], [ %spec.select46, %bb.t ]
  %.sroa.038.0.insert.ext = zext i8 %.sroa.038.0 to i16
  %.sroa.038.0.insert.insert = or disjoint i16 %.sroa.24.0, %.sroa.038.0.insert.ext
  ret i16 %.sroa.038.0.insert.insert
}

declare noundef zeroext i1 @_ZN4llvm59isIntrinsicReturningPointerAliasingArgumentWithoutCapturingEPKNS_8CallBaseEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

declare i16 @_ZNK4llvm8CallBase14getCaptureInfoEj(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK4llvm8CallBase15onlyReadsMemoryEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #8

declare noundef i32 @_ZNK4llvm3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef zeroext i8 @_ZN4llvm6MDNode19toCaptureComponentsEPKS0_(ptr noundef) local_unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120SimpleCaptureTrackerD0Ev(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12_GLOBAL__N_120SimpleCaptureTracker11tooManyUsesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(34) initializes((32, 34)) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !29    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.b, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.b, ptr %i.d, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZN12_GLOBAL__N_120SimpleCaptureTracker8capturedEPKN4llvm3UseENS1_14UseCaptureInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(34) %0, ptr nofree noundef readonly captures(none) %1, i16 %2) unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i16 %2 to i8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !29
  %i.c = and i8 %i.b, %.sroa.0.0.extract.trunc    ; 3 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !107
  %i.g = or i8 %i.f, %i.c
  store i8 %i.g, ptr %i.e, align 1, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = load i8, ptr %i.i, align 8, !tbaa !85
  %i.k = icmp eq i8 %i.j, 31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !107 ; 2 uses
  br i1 %i.k, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = or i8 %.pre, %i.c                        ; 2 uses
  store i8 %i.l, ptr %.phi.trans.insert, align 8, !tbaa !107
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.m = phi i8 [ %i.l, %bb.c ], [ %.pre, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  %i.r = tail call noundef zeroext i1 %i.o(i64 noundef %i.q, i8 noundef zeroext %i.m) #17, !inline_history !110
  %not. = xor i1 %i.r, true
  %i.s = zext i1 %not. to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.s, %._crit_edge ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114CapturesBeforeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12_GLOBAL__N_114CapturesBefore11tooManyUsesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((26, 27)) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.b, ptr %i.c, align 2, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 3) i32 @_ZN12_GLOBAL__N_114CapturesBefore8capturedEPKN4llvm3UseENS1_14UseCaptureInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i16 %2) unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i16 %2 to i8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !85
  %i.d = icmp ne i8 %i.c, 31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !18
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !72, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !112
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = icmp ugt i32 %i.v, %i.t
  br i1 %i.w, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i: ; preds = %bb.c
  %i.x = zext i32 %i.t to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit

_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = tail call noundef zeroext i1 @_ZN4llvm22isPotentiallyReachableEPKNS_11InstructionES2_PKNS_15SmallPtrSetImplIPNS_10BasicBlockEEEPKNS_13DominatorTreeEPKNS_8LoopInfoEPKNS_9CycleInfoE(ptr noundef nonnull %i.b, ptr noundef %i.i, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef %i.ad, ptr noundef null) #17
  br i1 %i.ae, label %bb.d, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread

bb.d:                                             ; preds = %.split, %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !75
  %i.ah = and i8 %i.ag, %.sroa.0.0.extract.trunc  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !107
  %i.al = or i8 %i.ak, %i.ah                      ; 2 uses
  store i8 %i.al, ptr %i.aj, align 2, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !109
  %i.aq = tail call noundef zeroext i1 %i.an(i64 noundef %i.ap, i8 noundef zeroext %i.al) #17, !inline_history !110
  %not. = xor i1 %i.aq, true
  %i.ar = zext i1 %not. to i32
  br label %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread

_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit.thread: ; preds = %bb.a, %bb.c, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i, %.split, %bb.d, %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit, %bb.e
  %.0 = phi i32 [ 2, %bb.a ], [ 2, %_ZN12_GLOBAL__N_114CapturesBefore13isSafeToPruneEPN4llvm11InstructionE.exit ], [ %i.ar, %bb.e ], [ 1, %bb.d ], [ 2, %.split ], [ 2, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.i ], [ 2, %bb.c ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN4llvm22isPotentiallyReachableEPKNS_11InstructionES2_PKNS_15SmallPtrSetImplIPNS_10BasicBlockEEEPKNS_13DominatorTreeEPKNS_8LoopInfoEPKNS_9CycleInfoE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_116EarliestCapturesD0Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_116EarliestCaptures11tooManyUsesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(42) initializes((32, 42)) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !79    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.b, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 41
end_hunk_0
