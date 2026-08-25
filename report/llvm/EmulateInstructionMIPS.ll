Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionMIPS?download=true
begin_hunk_0_@_ZN22EmulateInstructionMIPS14Emulate_B16_MMERN4llvm6MCInstE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.y, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN22EmulateInstructionMIPS17Emulate_Branch_MMERN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(541) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 10 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !194
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.j = load i8, ptr %i.i, align 1, !tbaa !217
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.f
  %i.q = load i32, ptr %i.p, align 4, !tbaa !126
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK4llvm11MCInstrInfo7getNameEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #18
  br label %_ZNK4llvm11MCInstrInfo7getNameEj.exit

_ZNK4llvm11MCInstrInfo7getNameEj.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  store ptr %i.s, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 %.sroa.0.0.i.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !139
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = trunc i64 %i.ah to i32                  ; 7 uses
  %i.aj = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef 37, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 8 uses
  %i.al = load i8, ptr %i.a, align 1, !tbaa !136, !range !161, !noundef !162
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.c, label %bb.s

bb.c:                                             ; preds = %_ZNK4llvm11MCInstrInfo7getNameEj.exit
  %i.an = zext i16 %i.af to i32
  %i.ao = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.an, i64 noundef 0, ptr noundef nonnull %i.a) #18
  %i.ap = trunc i64 %i.ao to i32                  ; 6 uses
  %i.aq = load i8, ptr %i.a, align 1, !tbaa !136, !range !161, !noundef !162
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.as = load i64, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.at = icmp eq i64 %i.as, 9
  br i1 %i.at, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %bb.d
  %i.au = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.424, i64 9) #18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %i.aw = icmp eq i32 %i.ap, 0
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = add nsw i32 %i.ak, %i.ai
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = add i32 %i.ak, %i.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !70
  %i.bb = add i32 %i.ay, %i.ba
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.pre = load i64, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.bc = icmp eq i64 %.pre, 9
  br i1 %i.bc, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.bd = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.426, i64 9) #18
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46._ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread_crit_edge

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46._ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread_crit_edge: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46
  %.pre61 = load i64, ptr %i.u, align 8, !tbaa !134
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread

bb.h:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46
  %.not44 = icmp eq i32 %i.ap, 0
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.ak, %i.ai
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

bb.j:                                             ; preds = %bb.h
  %i.bg = add i32 %i.ak, %i.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !70
  %i.bj = add i32 %i.bg, %i.bi
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread: ; preds = %bb.d, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46._ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread_crit_edge, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.bk = phi i64 [ %.pre61, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46._ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread_crit_edge ], [ %.pre, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ], [ %i.as, %bb.d ] ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 8
  br i1 %i.bl, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread
  %i.bm = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.428, i64 8) #18
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47.thread

bb.k:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47
  %i.bo = icmp eq i32 %i.ap, 0
  %i.bp = add nsw i32 %i.ak, 4
  %i.bq = select i1 %i.bo, i32 %i.ai, i32 0
  %spec.select = add nsw i32 %i.bp, %i.bq
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47
  %.pre62 = load i64, ptr %i.u, align 8, !tbaa !134 ; 2 uses
  %i.br = icmp eq i64 %.pre62, 8
  br i1 %i.br, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47.thread
  %i.bs = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.430, i64 8) #18
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48._ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread_crit_edge

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48._ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread_crit_edge: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48
  %.pre63 = load i64, ptr %i.u, align 8, !tbaa !134
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread

bb.l:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48
  %.not = icmp eq i32 %i.ap, 0
  %i.bu = add nsw i32 %i.ak, 4
  %i.bv = select i1 %.not, i32 0, i32 %i.ai
  %spec.select70 = add nsw i32 %i.bu, %i.bv
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48._ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread_crit_edge, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47.thread
  %i.bw = phi i64 [ %.pre63, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48._ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread_crit_edge ], [ %.pre62, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit47.thread ], [ %i.bk, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit46.thread ]
  %i.bx = icmp eq i64 %i.bw, 10
  br i1 %i.bx, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread
  %i.by = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.432, i64 10) #18
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.m, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread

bb.m:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49
  %i.ca = icmp sgt i32 %i.ap, -1
  %. = select i1 %i.ca, i32 %i.ai, i32 6
  %.038.a = add nsw i32 %., %i.ak
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49
  %.pre64 = load i64, ptr %i.u, align 8, !tbaa !134
  %i.cb = icmp eq i64 %.pre64, 10
  br i1 %i.cb, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread
  %i.cc = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.434, i64 10) #18
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.n, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

bb.n:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50
  %i.ce = icmp sgt i32 %i.ap, -1
  %.45 = select i1 %i.ce, i32 %i.ai, i32 6
  %.139 = add nsw i32 %.45, %i.ak
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread: ; preds = %bb.l, %bb.k, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread, %bb.j, %bb.i, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50, %bb.n, %bb.m, %bb.f, %bb.g
  %.042 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread ], [ 0, %bb.l ], [ 0, %bb.k ], [ 6, %bb.m ], [ 6, %bb.n ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50 ]
  %.041 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.j ], [ false, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread ], [ false, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread ], [ false, %bb.l ], [ false, %bb.k ], [ true, %bb.m ], [ true, %bb.n ], [ false, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50 ]
  %.240 = phi i32 [ %i.ax, %bb.f ], [ %i.bb, %bb.g ], [ %i.bf, %bb.i ], [ %i.bj, %bb.j ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit49.thread ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit48.thread ], [ %spec.select70, %bb.l ], [ %spec.select, %bb.k ], [ %.038.a, %bb.m ], [ %.139, %bb.n ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 13, ptr %3, align 8, !tbaa !156
  %i.cg = add i32 %i.ai, %i.k
  %i.ch = zext i32 %i.cg to i64
  store i32 7, ptr %i.cf, align 4, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !17
  %i.cj = sext i32 %.240 to i64
  %i.ck = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef 37, i64 noundef %i.cj) #18
  br i1 %i.ck, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread
  br i1 %.041, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = add i64 %.042, %i.aj
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef 31, i64 noundef %i.cm) #18
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread, %bb.q
  %.0 = phi i1 [ true, %bb.q ], [ false, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit50.thread ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.c, %_ZNK4llvm11MCInstrInfo7getNameEj.exit
  %.2 = phi i1 [ false, %_ZNK4llvm11MCInstrInfo7getNameEj.exit ], [ %.0, %bb.r ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN22EmulateInstructionMIPS18Emulate_JALRx16_MMERN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(541) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !126
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK4llvm11MCInstrInfo7getNameEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #18
  br label %_ZNK4llvm11MCInstrInfo7getNameEj.exit

_ZNK4llvm11MCInstrInfo7getNameEj.exit:            ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  store ptr %i.m, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !154
  %i.ab = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef 37, i64 noundef 0, ptr noundef nonnull %i.a) #18
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !136, !range !161, !noundef !162
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK4llvm11MCInstrInfo7getNameEj.exit
  %i.ae = zext i16 %i.aa to i32
  %i.af = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.ae, i64 noundef 0, ptr noundef nonnull %i.a) #18
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !136, !range !161, !noundef !162
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i64 %i.o, 9
  br i1 %i.ai, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %bb.d
  %i.aj = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.436, i64 9) #18
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit._ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread_crit_edge

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit._ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread_crit_edge: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.pre = load i64, ptr %i.p, align 8, !tbaa !134
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit._ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread_crit_edge, %bb.d
  %i.al = phi i64 [ %.pre, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit._ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread_crit_edge ], [ %i.o, %bb.d ]
  %i.am = icmp eq i64 %i.al, 10
  br i1 %i.am, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.an = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.438, i64 10) #18
  %i.ao = icmp eq i32 %i.an, 0
  %spec.select = select i1 %i.ao, i64 4, i64 0
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.07 = phi i64 [ 6, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ], [ %spec.select, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 8, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 13, ptr %i.ap, align 4, !tbaa !160
  %i.aq = and i64 %i.af, 4294967295
  %i.ar = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef 37, i64 noundef %i.aq) #18
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread
  %i.as = add i64 %.07, %i.ab
  %i.at = and i64 %i.as, 4294967295
  %i.au = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef 31, i64 noundef %i.at) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread
  %.0 = phi i1 [ false, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit8.thread ], [ %i.au, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %_ZNK4llvm11MCInstrInfo7getNameEj.exit
  %.2 = phi i1 [ false, %_ZNK4llvm11MCInstrInfo7getNameEj.exit ], [ %.0, %bb.f ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN22EmulateInstructionMIPS12Emulate_JALxERN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(541) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !205
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !126
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK4llvm11MCInstrInfo7getNameEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #18
  br label %_ZNK4llvm11MCInstrInfo7getNameEj.exit

_ZNK4llvm11MCInstrInfo7getNameEj.exit:            ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  store ptr %i.m, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef 37, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.v = load i8, ptr %i.a, align 1, !tbaa !136, !range !161, !noundef !162
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK4llvm11MCInstrInfo7getNameEj.exit
  %i.x = icmp eq i64 %i.o, 7
  br i1 %i.x, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %bb.c
  %i.y = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.444, i64 7) #18
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %i.aa = and i64 %i.u, 4160749568
  %i.ab = or i64 %i.aa, %i.t
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.pre = load i64, ptr %i.p, align 8, !tbaa !134
  %i.ac = icmp eq i64 %.pre, 7
  br i1 %i.ac, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.ad = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.446, i64 7) #18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread

bb.e:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12
  %i.af = and i64 %i.u, 4026531840
  %i.ag = or i64 %i.af, %i.t
  br label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12.thread: ; preds = %bb.c, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12, %bb.e, %bb.d
  %.010 = phi i64 [ %i.ab, %bb.d ], [ %i.ag, %bb.e ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit12 ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ], [ 0, %bb.c ]
end_hunk_0
