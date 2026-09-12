Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_tctable_lite?download=true
inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser13TestMiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.s = and i64 %i.r, 128
  %.not33.i = icmp eq i64 %i.s, 0
  br i1 %.not33.i, label %bb.g, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.u, ptr %i.d, align 1, !tbaa !51
  %i.v = call noundef i64 asm "ror $$7,$0\0A\09movb $1,${0:b}", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.d, i64 %i.r) #32, !srcloc !103 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = and i64 %i.v, 128
  %.not34.i = icmp eq i64 %i.w, 0
  br i1 %.not34.i, label %bb.f, label %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 28)
  %i.y = trunc i64 %i.x to i32
  %i.z = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %2) #31, !srcloc !104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ab = call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 14)
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 3
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ah = call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 7)
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ak = zext nneg i8 %i.e to i32
  br label %bb.k

_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit: ; preds = %bb.e
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, ptr %0, align 8, !tbaa !64
  %i.al = call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %1, ptr poison, ptr poison, i64 poison, ptr noundef %5, i64 noundef %6)
  br label %_ZN6google8protobuf8internal8TcParser9MiniParseILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.ph = phi i32 [ %i.ak, %bb.j ], [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ] ; 5 uses
  %.0.i.ph = phi ptr [ %i.g, %bb.j ], [ %i.aa, %bb.f ], [ %i.ad, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = lshr i32 %.0.ph, 3                      ; 4 uses
  %i.an = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !43
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %i.aq, %i.an
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = add nsw i32 %i.am, -1                   ; 3 uses
  %i.au = icmp ult i32 %i.at, 32
  br i1 %i.au, label %bb.l, label %bb.n, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44 ; 2 uses
  %i.ax = shl nuw i32 1, %i.at                    ; 2 uses
  %i.ay = and i32 %i.aw, %i.ax
  %.not57.i = icmp eq i32 %i.ay, 0
  br i1 %.not57.i, label %bb.m, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, !prof !42

bb.m:                                             ; preds = %bb.l
  %i.az = add i32 %i.ax, -1
  %i.ba = and i32 %i.aw, %i.az
  %i.bb = call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ba)
  %i.bc = sub nsw i32 %i.at, %i.bb
  br label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit

bb.n:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !45
  %i.bf = zext i16 %i.be to i64
  %i.bg = add i64 %i.bf, %i.an
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %.0.copyload65.i = load i32, ptr %i.bh, align 2 ; 2 uses
  %i.bi = icmp ult i32 %i.am, %.0.copyload65.i
  br i1 %i.bi, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.q
  %.pn.i = phi ptr [ %i.cf, %bb.q ], [ %i.bh, %bb.n ] ; 2 uses
  %.0.copyload66.i = phi i32 [ %.0.copyload.i, %bb.q ], [ %.0.copyload65.i, %bb.n ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn.i, i64 6 ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %i.bk = load i16, ptr %.in.i, align 2, !tbaa !46 ; 2 uses
  %i.bl = zext i16 %i.bk to i32
  %i.bm = sub nuw nsw i32 %i.am, %.0.copyload66.i ; 2 uses
  %i.bn = lshr i32 %i.bm, 4                       ; 2 uses
  %.not61.i = icmp samesign ult i32 %i.bn, %i.bl
  br i1 %.not61.i, label %bb.o, label %bb.q, !prof !42

bb.o:                                             ; preds = %.lr.ph.i
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !46
  %i.bs = and i32 %i.bm, 15                       ; 2 uses
  %i.bt = zext i16 %i.br to i32                   ; 2 uses
  %i.bu = shl nuw nsw i32 1, %i.bs                ; 2 uses
  %i.bv = and i32 %i.bu, %i.bt
  %.not.i5 = icmp eq i32 %i.bv, 0
  br i1 %.not.i5, label %bb.p, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !46
  %i.by = add nuw nsw i32 %i.bu, 65535
  %i.bz = and i32 %i.by, %i.bt
  %i.ca = zext i16 %i.bx to i32
  %i.cb = call noundef range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bz)
  %i.cc = sub nsw i32 %i.bs, %i.cb
  %i.cd = add nsw i32 %i.cc, %i.ca
  br label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit

bb.q:                                             ; preds = %.lr.ph.i
  %i.ce = zext i16 %i.bk to i64
  %.idx.i = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i ; 2 uses
  %.0.copyload.i = load i32, ptr %i.cf, align 2   ; 2 uses
  %i.cg = icmp ult i32 %i.am, %.0.copyload.i
  br i1 %i.cg, label %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, label %.lr.ph.i, !llvm.loop !0

_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit: ; preds = %bb.m, %bb.p
  %.sink80.i = phi i32 [ %i.cd, %bb.p ], [ %i.bc, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ch = zext i32 %.sink80.i to i64
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %i.ch ; 3 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.an
  %i.cl = shl i64 %i.ck, 32
  %i.cm = zext i32 %.0.ph to i64
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !62
  %i.cq = and i16 %i.cp, 15
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobuf8internal8TcParser9MiniParseILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmE15kMiniParseTable, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !64 ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.ph, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !61
  %i.cu = call noundef ptr %i.ct(ptr noundef %1, ptr noundef nonnull %.0.i.ph, ptr noundef %3, i64 %i.cn, ptr noundef %5, i64 noundef %6), !inline_history !277
  br label %_ZN6google8protobuf8internal8TcParser9MiniParseILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread: ; preds = %bb.q, %bb.o, %bb.n, %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !105 ; 2 uses
  store ptr %i.cw, ptr %0, align 8, !tbaa !64
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.ph, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = zext i32 %.0.ph to i64
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8
  %i.cy = call noundef ptr %i.cw(ptr noundef %1, ptr noundef nonnull %.0.i.ph, ptr noundef %3, i64 %i.cx, ptr noundef %5, i64 noundef %6), !inline_history !277
  br label %_ZN6google8protobuf8internal8TcParser9MiniParseILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser9MiniParseILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit, %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread, %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit
  %i.cz = phi ptr [ %i.al, %_ZN6google8protobuf8internal14ReadTagInlinedEPKcPj.exit ], [ %i.cy, %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit.thread ], [ %i.cu, %_ZN6google8protobuf8internal8TcParser14FindFieldEntryEPKNS1_16TcParseTableBaseEj.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !279
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser10MpFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = musttail call noundef ptr %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5)
  ret ptr %i.c
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastEndG1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser16FastEndGroupImplIhEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser16FastEndGroupImplIhEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %i.c = trunc i64 %3 to i32
  %6 = lshr i32 %i.c, 16
  %i.d = add nsw i32 %6, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.d, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %5 to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastEndG2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser16FastEndGroupImplItEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser16FastEndGroupImplItEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %i.c = trunc i64 %3 to i32
  %6 = lshr exact i32 %i.c, 16
  %i.d = add nsw i32 %6, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.d, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %5 to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !108    ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.g, ptr noundef %i.g, ptr noundef %2) ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.c, i32 0, i32 3, i32 1)
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.l, align 8, !tbaa !19
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.r = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %i.q, ptr noundef %i.q, ptr noundef %2) ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !64
  %i.s = load ptr, ptr %1, align 8, !tbaa !108
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 2, ptr %i.w, align 4, !tbaa !111
  store i32 2, ptr %i.l, align 8, !tbaa !19
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i: ; preds = %bb.c
  %i.x = add nsw i64 %i.i, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !109 ; 5 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !112
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !20

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ad = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef %2) ; 0 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !108
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !111
  %.pre21.i = load i32, ptr %i.z, align 8, !tbaa !109
  br label %bb.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %i.aa
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.am = add nsw i32 %i.aa, 1
  store i32 %i.am, ptr %i.z, align 8, !tbaa !19
  %i.an = sext i32 %i.aa to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  %.1.i.pre = load ptr, ptr %i.ao, align 8, !tbaa !64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, %bb.g
  %i.ap = phi i32 [ %.pre21.i, %bb.g ], [ %i.aa, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.aq = phi i32 [ %.pre.i, %bb.g ], [ %i.aj, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ]
  %.015.i = phi ptr [ %i.ah, %bb.g ], [ %i.y, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.as = add nsw i32 %i.aq, 1
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !111
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.au = add nsw i32 %i.ap, 1
  store i32 %i.au, ptr %i.z, align 8, !tbaa !19
  %i.av = sext i32 %i.ap to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.az = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay, ptr noundef %i.ay, ptr noundef %2) ; 2 uses
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !64
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %bb.i
  %.1.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.e ], [ %i.r, %bb.f ], [ %i.az, %bb.i ], [ %.1.i.pre, %bb.h ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMdS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.d, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.aj, %bb.d ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ap = add nsw i64 %i.an, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.g:                                             ; preds = %bb.e
  %i.as = inttoptr i64 %i.an to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i10 = phi ptr [ %i.ar, %bb.f ], [ %i.as, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.ax = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %.0.i.i10)
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !51  ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = icmp sgt i8 %i.az, -1
  br i1 %i.bb, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.h

.noexc.i:                                         ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bd = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ay, i32 noundef %i.ba) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bd, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.bd, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.h, !prof !129

bb.h:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1142 = phi i32 [ %i.ba, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i41 = phi ptr [ %i.bc, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !130 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93, !noalias !283 ; 2 uses
  %i.bj = ptrtoint ptr %storemerge.i41 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add nsw i32 %.0.i1142, %i.bm            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 0)
  %i.bo = sext i32 %.sroa.speculated.i to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %i.bo
  store ptr %i.bp, ptr %2, align 8, !tbaa !92, !noalias !283
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !94, !noalias !283
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !94, !noalias !283
  %i.bs = sub nsw i32 %i.br, %i.bn
  %i.bt = add nsw i32 %i.bf, -1
  store i32 %i.bt, ptr %i.be, align 8, !tbaa !130
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0 = phi ptr [ %storemerge.i41, %bb.i ], [ %i.dd, %bb.m ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.bv, %bb.i ], [ %i.co, %bb.m ] ; 3 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !91
  %i.bz = load ptr, ptr %2, align 8, !tbaa !92
  %i.ca = icmp ult ptr %.0, %i.bz
  br i1 %i.ca, label %.noexc7, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.cc = ptrtoint ptr %.0 to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 3 uses
  %i.cg = load i32, ptr %i.bq, align 4, !tbaa !94
  %i.ch = icmp eq i32 %i.cg, %i.cf
  br i1 %i.ch, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp sgt i32 %i.cf, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp eq ptr %i.ck, null
  %or.cond.i.i = select i1 %i.ci, i1 %i.cl, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.k
  %i.cm = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.cf, i32 noundef %i.by) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cm, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.cm, 1
  %i.cn = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.cn, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.j, %.noexc
  %.250 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.j ] ; 2 uses
  %i.co = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -56
  %.0.copyload.i.i = load i16, ptr %.250, align 1 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -48
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !96
  %i.cs = zext i8 %i.cr to i16
  %i.ct = and i16 %.0.copyload.i.i, %i.cs
  %i.cu = zext nneg i16 %i.ct to i64              ; 2 uses
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp eq i64 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = lshr exact i64 %i.cu, 3
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cz, align 8, !tbaa !51
  %i.da = zext i16 %.0.copyload.i.i to i64
  %i.db = xor i64 %.sroa.01.0.copyload.i.i, %i.da
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !99
  %i.dd = tail call noundef ptr %i.dc(ptr noundef %i.bu, ptr noundef nonnull %.250, ptr noundef nonnull %2, i64 %i.db, ptr noundef nonnull %i.cp, i64 noundef 0), !inline_history !282 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.noexc.thread, label %bb.m

bb.m:                                             ; preds = %.noexc7
  %i.df = load i32, ptr %i.bx, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i6, label %bb.j, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.m, %.noexc7, %.noexc, %bb.l
  %.1 = phi ptr [ %spec.select, %bb.l ], [ %i.dd, %bb.m ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.l ], [ %i.co, %bb.m ], [ %i.co, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 1
  %.not14.i.i = icmp eq i8 %i.di, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.n, !prof !42

bb.n:                                             ; preds = %.noexc.thread
  %i.dj = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !100
  %i.dl = tail call noundef ptr %i.dk(ptr noundef %i.bu, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !282
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.n, %.noexc.thread
  %.013.i.i = phi ptr [ %i.dl, %bb.n ], [ %.1, %.noexc.thread ]
  %i.dm = load i32, ptr %i.be, align 8, !tbaa !130
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.be, align 8, !tbaa !130
  %i.do = load i32, ptr %i.bq, align 4, !tbaa !94
  %i.dp = add nsw i32 %i.do, %i.bs                ; 2 uses
  store i32 %i.dp, ptr %i.bq, align 4, !tbaa !94
  %i.dq = load i32, ptr %i.bx, align 8, !tbaa !30
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.o, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, !prof !42

bb.o:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !93
  %.sroa.speculated.i15 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 0)
  %i.dt = sext i32 %.sroa.speculated.i15 to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store ptr %i.du, ptr %2, align 8, !tbaa !92
  br label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %bb.o, %.noexc.i, %bb.h
  %.113.i = phi ptr [ null, %.noexc.i ], [ null, %bb.h ], [ %.013.i.i, %bb.o ], [ null, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ]
  ret ptr %.113.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMdS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.d, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.aj, %bb.d ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ap = add nsw i64 %i.an, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.g:                                             ; preds = %bb.e
  %i.as = inttoptr i64 %i.an to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i10 = phi ptr [ %i.ar, %bb.f ], [ %i.as, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.ax = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %.0.i.i10)
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !51  ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = icmp sgt i8 %i.az, -1
  br i1 %i.bb, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.h

.noexc.i:                                         ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bd = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ay, i32 noundef %i.ba) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bd, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.bd, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.h, !prof !129

bb.h:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1143 = phi i32 [ %i.ba, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i42 = phi ptr [ %i.bc, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !130 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93, !noalias !287 ; 2 uses
  %i.bj = ptrtoint ptr %storemerge.i42 to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add nsw i32 %.0.i1143, %i.bm            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 0)
  %i.bo = sext i32 %.sroa.speculated.i to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %i.bo
  store ptr %i.bp, ptr %2, align 8, !tbaa !92, !noalias !287
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !94, !noalias !287
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !94, !noalias !287
  %i.bs = sub nsw i32 %i.br, %i.bn
  %i.bt = add nsw i32 %i.bf, -1
  store i32 %i.bt, ptr %i.be, align 8, !tbaa !130
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0 = phi ptr [ %storemerge.i42, %bb.i ], [ %i.dd, %bb.m ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.bv, %bb.i ], [ %i.co, %bb.m ] ; 3 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !91
  %i.bz = load ptr, ptr %2, align 8, !tbaa !92
  %i.ca = icmp ult ptr %.0, %i.bz
  br i1 %i.ca, label %.noexc7, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.cc = ptrtoint ptr %.0 to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 3 uses
  %i.cg = load i32, ptr %i.bq, align 4, !tbaa !94
  %i.ch = icmp eq i32 %i.cg, %i.cf
  br i1 %i.ch, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ci = icmp sgt i32 %i.cf, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp eq ptr %i.ck, null
  %or.cond.i.i = select i1 %i.ci, i1 %i.cl, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.k
  %i.cm = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.cf, i32 noundef %i.by) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cm, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.cm, 1
  %i.cn = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.cn, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.j, %.noexc
  %.251 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.j ] ; 2 uses
  %i.co = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -56
  %.0.copyload.i.i15 = load i16, ptr %.251, align 1 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -48
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !96
  %i.cs = zext i8 %i.cr to i16
  %i.ct = and i16 %.0.copyload.i.i15, %i.cs
  %i.cu = zext nneg i16 %i.ct to i64              ; 2 uses
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp eq i64 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = lshr exact i64 %i.cu, 3
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cz, align 8, !tbaa !51
  %i.da = zext i16 %.0.copyload.i.i15 to i64
  %i.db = xor i64 %.sroa.01.0.copyload.i.i, %i.da
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !99
  %i.dd = tail call noundef ptr %i.dc(ptr noundef %i.bu, ptr noundef nonnull %.251, ptr noundef nonnull %2, i64 %i.db, ptr noundef nonnull %i.cp, i64 noundef 0), !inline_history !286 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.noexc.thread, label %bb.m

bb.m:                                             ; preds = %.noexc7
  %i.df = load i32, ptr %i.bx, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i6, label %bb.j, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.m, %.noexc7, %.noexc, %bb.l
  %.1 = phi ptr [ %spec.select, %bb.l ], [ %i.dd, %bb.m ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.l ], [ %i.co, %bb.m ], [ %i.co, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 1
  %.not14.i.i = icmp eq i8 %i.di, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.n, !prof !42

bb.n:                                             ; preds = %.noexc.thread
  %i.dj = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !100
  %i.dl = tail call noundef ptr %i.dk(ptr noundef %i.bu, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !286
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.n, %.noexc.thread
  %.013.i.i = phi ptr [ %i.dl, %bb.n ], [ %.1, %.noexc.thread ]
  %i.dm = load i32, ptr %i.be, align 8, !tbaa !130
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.be, align 8, !tbaa !130
  %i.do = load i32, ptr %i.bq, align 4, !tbaa !94
  %i.dp = add nsw i32 %i.do, %i.bs                ; 2 uses
  store i32 %i.dp, ptr %i.bq, align 4, !tbaa !94
  %i.dq = load i32, ptr %i.bx, align 8, !tbaa !30
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.o, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, !prof !42

bb.o:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !93
  %.sroa.speculated.i16 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 0)
  %i.dt = sext i32 %.sroa.speculated.i16 to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store ptr %i.du, ptr %2, align 8, !tbaa !92
  br label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %bb.o, %.noexc.i, %bb.h
  %.113.i = phi ptr [ null, %.noexc.i ], [ null, %bb.h ], [ %.013.i.i, %bb.o ], [ null, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ]
  ret ptr %.113.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGdS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !51
  %i.d = lshr i64 %3, 16
  %i.e = and i64 %i.d, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %5
  %i.h = load i16, ptr %4, align 8, !tbaa !25
  %i.i = trunc i64 %i.g to i32
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = or i32 %i.l, %i.i
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  %i.n = lshr i64 %3, 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = lshr i64 %3, 24
  %i.q = ptrtoint ptr %4 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.q
  %i.v = inttoptr i64 %i.u to ptr
  %6 = and i64 %i.p, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %6
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.y), !inline_history !7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.ak, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !52  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41 ; 3 uses
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.g:                                             ; preds = %bb.e
  %i.at = inttoptr i64 %i.ao to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i5 = phi ptr [ %i.as, %bb.f ], [ %i.at, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %i.ay = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef %i.ax, ptr noundef %i.ax, ptr noundef %.0.i.i5) ; 2 uses
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.az = phi ptr [ %i.al, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %i.ay, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.ba = zext i8 %i.c to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !130 ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !130
  %i.be = icmp slt i32 %i.bc, 1
  br i1 %i.be, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !91
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %i.bf, %bb.h ], [ %i.cs, %bb.l ] ; 4 uses
  %.0.i.i = phi ptr [ %i.bj, %bb.h ], [ %i.cd, %bb.l ] ; 3 uses
  %i.bn = load i32, ptr %i.bg, align 4, !tbaa !91
  %i.bo = load ptr, ptr %2, align 8, !tbaa !92
  %i.bp = icmp ult ptr %.0, %i.bo
  br i1 %i.bp, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !93
  %i.br = ptrtoint ptr %.0 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = load i32, ptr %i.bl, align 4, !tbaa !94
  %i.bw = icmp eq i32 %i.bv, %i.bu
  br i1 %i.bw, label %bb.k, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp sgt i32 %i.bu, 0
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, null
  %or.cond.i.i = select i1 %i.bx, i1 %i.ca, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.j
  %i.cb = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bu, i32 noundef %i.bn) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cb, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.cb, 1
  %i.cc = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.cc, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24: ; preds = %bb.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.227 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.cd = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -56
  %.0.copyload.i.i = load i16, ptr %.227, align 1 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -48
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !96
  %i.ch = zext i8 %i.cg to i16
  %i.ci = and i16 %.0.copyload.i.i, %i.ch
  %i.cj = zext nneg i16 %i.ci to i64              ; 2 uses
  %i.ck = and i64 %i.cj, 7
  %i.cl = icmp eq i64 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = lshr exact i64 %i.cj, 3
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.co, align 8, !tbaa !51
  %i.cp = zext i16 %.0.copyload.i.i to i64
  %i.cq = xor i64 %.sroa.01.0.copyload.i.i, %i.cp
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !99
  %i.cs = tail call noundef ptr %i.cr(ptr noundef %i.az, ptr noundef nonnull %.227, ptr noundef nonnull %2, i64 %i.cq, ptr noundef nonnull %i.ce, i64 noundef 0), !inline_history !288 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24
  %i.cu = load i32, ptr %i.bm, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %bb.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.l, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cs, %bb.l ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.k ], [ %i.cd, %bb.l ], [ %i.cd, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = and i8 %i.cw, 1
  %.not14.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.cy = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !100
  %i.da = tail call noundef ptr %i.cz(ptr noundef %i.az, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !289
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.m
  %.013.i.i = phi ptr [ %i.da, %bb.m ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  %i.db = load <2 x i32>, ptr %i.bb, align 8, !tbaa !19
  %i.dc = add nsw <2 x i32> %i.db, <i32 1, i32 -1>
  store <2 x i32> %i.dc, ptr %i.bb, align 8, !tbaa !19
  %i.dd = load i32, ptr %i.bm, align 8, !tbaa !30
  %i.de = icmp eq i32 %i.dd, %i.ba
  store i32 0, ptr %i.bm, align 8, !tbaa !30
  %..i = select i1 %i.de, ptr %.013.i.i, ptr null, !prof !42
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit: ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %.1.i = phi ptr [ %..i, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ], [ null, %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGdS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.d, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.aj, %bb.d ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.ap = add nsw i64 %i.an, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.g:                                             ; preds = %bb.e
  %i.as = inttoptr i64 %i.an to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i5 = phi ptr [ %i.ar, %bb.f ], [ %i.as, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.ax = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %.0.i.i5) ; 2 uses
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ay = phi ptr [ %i.ak, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %i.ax, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.az = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i = shl i32 %i.az, 24
  %i.ba = ashr exact i32 %sext.i, 24
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !130
  %i.bg = icmp slt i32 %i.be, 1
  br i1 %i.bg, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !91
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !91
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %i.bh, %bb.h ], [ %i.cu, %bb.l ] ; 4 uses
  %.0.i.i = phi ptr [ %i.bl, %bb.h ], [ %i.cf, %bb.l ] ; 3 uses
  %i.bp = load i32, ptr %i.bi, align 4, !tbaa !91
  %i.bq = load ptr, ptr %2, align 8, !tbaa !92
  %i.br = icmp ult ptr %.0, %i.bq
  br i1 %i.br, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.bt = ptrtoint ptr %.0 to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32                  ; 3 uses
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !94
  %i.by = icmp eq i32 %i.bx, %i.bw
  br i1 %i.by, label %bb.k, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp sgt i32 %i.bw, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.cb, null
  %or.cond.i.i = select i1 %i.bz, i1 %i.cc, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.j
  %i.cd = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bw, i32 noundef %i.bp) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cd, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.cd, 1
  %i.ce = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ce, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25: ; preds = %bb.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.228 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.cf = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -56
  %.0.copyload.i.i7 = load i16, ptr %.228, align 1 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -48
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !96
  %i.cj = zext i8 %i.ci to i16
  %i.ck = and i16 %.0.copyload.i.i7, %i.cj
  %i.cl = zext nneg i16 %i.ck to i64              ; 2 uses
  %i.cm = and i64 %i.cl, 7
  %i.cn = icmp eq i64 %i.cm, 0
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = lshr exact i64 %i.cl, 3
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cq, align 8, !tbaa !51
  %i.cr = zext i16 %.0.copyload.i.i7 to i64
  %i.cs = xor i64 %.sroa.01.0.copyload.i.i, %i.cr
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !99
  %i.cu = tail call noundef ptr %i.ct(ptr noundef %i.ay, ptr noundef nonnull %.228, ptr noundef nonnull %2, i64 %i.cs, ptr noundef nonnull %i.cg, i64 noundef 0), !inline_history !290 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25
  %i.cw = load i32, ptr %i.bo, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %bb.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.l, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cu, %bb.l ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.k ], [ %i.cf, %bb.l ], [ %i.cf, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = and i8 %i.cy, 1
  %.not14.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.da = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !100
  %i.dc = tail call noundef ptr %i.db(ptr noundef %i.ay, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !291
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.m
  %.013.i.i = phi ptr [ %i.dc, %bb.m ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  %i.dd = load <2 x i32>, ptr %i.bd, align 8, !tbaa !19
  %i.de = add nsw <2 x i32> %i.dd, <i32 1, i32 -1>
  store <2 x i32> %i.de, ptr %i.bd, align 8, !tbaa !19
  %i.df = load i32, ptr %i.bo, align 8, !tbaa !30
  %i.dg = icmp eq i32 %i.df, %i.bc
  store i32 0, ptr %i.bo, align 8, !tbaa !30
  %..i = select i1 %i.dg, ptr %.013.i.i, ptr null, !prof !42
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit: ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %.1.i = phi ptr [ %..i, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ], [ null, %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i10 = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aj = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.ai, ptr noundef %i.ai, ptr noundef %.0.i.i10)
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.c, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = icmp sgt i8 %i.al, -1
  br i1 %i.an, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.g

.noexc.i:                                         ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.ap = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ak, i32 noundef %i.am) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ap, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ap, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.g, !prof !129

bb.g:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i40 = phi i32 [ %i.am, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i39 = phi ptr [ %i.ao, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !130 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93, !noalias !295 ; 2 uses
  %i.av = ptrtoint ptr %storemerge.i39 to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %.0.i40, %i.ay              ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.az, i32 0)
  %i.ba = sext i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 %i.ba
  store ptr %i.bb, ptr %2, align 8, !tbaa !92, !noalias !295
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94, !noalias !295
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !94, !noalias !295
  %i.be = sub nsw i32 %i.bd, %i.az
  %i.bf = add nsw i32 %i.ar, -1
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !130
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %storemerge.i39, %bb.h ], [ %i.cp, %bb.l ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.bh, %bb.h ], [ %i.ca, %bb.l ] ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !91
  %i.bl = load ptr, ptr %2, align 8, !tbaa !92
  %i.bm = icmp ult ptr %.0, %i.bl
  br i1 %i.bm, label %.noexc7, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !93
  %i.bo = ptrtoint ptr %.0 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.bt = icmp eq i32 %i.bs, %i.br
  br i1 %i.bt, label %bb.k, label %.noexc

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp sgt i32 %i.br, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, null
  %or.cond.i.i = select i1 %i.bu, i1 %i.bx, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.j
  %i.by = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.br, i32 noundef %i.bk) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.by, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.by, 1
  %i.bz = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bz, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.i, %.noexc
  %.248 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.i ] ; 2 uses
  %i.ca = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -56
  %.0.copyload.i.i = load i16, ptr %.248, align 1 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -48
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !96
  %i.ce = zext i8 %i.cd to i16
  %i.cf = and i16 %.0.copyload.i.i, %i.ce
  %i.cg = zext nneg i16 %i.cf to i64              ; 2 uses
  %i.ch = and i64 %i.cg, 7
  %i.ci = icmp eq i64 %i.ch, 0
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = lshr exact i64 %i.cg, 3
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cl, align 8, !tbaa !51
  %i.cm = zext i16 %.0.copyload.i.i to i64
  %i.cn = xor i64 %.sroa.01.0.copyload.i.i, %i.cm
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !99
  %i.cp = tail call noundef ptr %i.co(ptr noundef %i.bg, ptr noundef nonnull %.248, ptr noundef nonnull %2, i64 %i.cn, ptr noundef nonnull %i.cb, i64 noundef 0), !inline_history !294 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.noexc.thread, label %bb.l

bb.l:                                             ; preds = %.noexc7
  %i.cr = load i32, ptr %i.bj, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i6, label %bb.i, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.l, %.noexc7, %.noexc, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cp, %bb.l ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.k ], [ %i.ca, %bb.l ], [ %i.ca, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = and i8 %i.ct, 1
  %.not14.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %.noexc.thread
  %i.cv = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !100
  %i.cx = tail call noundef ptr %i.cw(ptr noundef %i.bg, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !294
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.m, %.noexc.thread
  %.013.i.i = phi ptr [ %i.cx, %bb.m ], [ %.1, %.noexc.thread ]
  %i.cy = load i32, ptr %i.aq, align 8, !tbaa !130
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.aq, align 8, !tbaa !130
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.db = add nsw i32 %i.da, %i.be                ; 2 uses
  store i32 %i.db, ptr %i.bc, align 4, !tbaa !94
  %i.dc = load i32, ptr %i.bj, align 8, !tbaa !30
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.n, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, !prof !42

bb.n:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !93
  %.sroa.speculated.i14 = tail call i32 @llvm.smin.i32(i32 %i.db, i32 0)
  %i.df = sext i32 %.sroa.speculated.i14 to i64
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  store ptr %i.dg, ptr %2, align 8, !tbaa !92
  br label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %bb.n, %.noexc.i, %bb.g
  %.113.i = phi ptr [ null, %.noexc.i ], [ null, %bb.g ], [ %.013.i.i, %bb.n ], [ null, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ]
  ret ptr %.113.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i10 = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aj = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.ai, ptr noundef %i.ai, ptr noundef %.0.i.i10)
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.c, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = icmp sgt i8 %i.al, -1
  br i1 %i.an, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.g

.noexc.i:                                         ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.ap = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ak, i32 noundef %i.am) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ap, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ap, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.g, !prof !129

bb.g:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i41 = phi i32 [ %i.am, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i40 = phi ptr [ %i.ao, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !130 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93, !noalias !299 ; 2 uses
  %i.av = ptrtoint ptr %storemerge.i40 to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %.0.i41, %i.ay              ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.az, i32 0)
  %i.ba = sext i32 %.sroa.speculated.i to i64
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 %i.ba
  store ptr %i.bb, ptr %2, align 8, !tbaa !92, !noalias !299
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94, !noalias !299
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !94, !noalias !299
  %i.be = sub nsw i32 %i.bd, %i.az
  %i.bf = add nsw i32 %i.ar, -1
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !130
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !52  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %storemerge.i40, %bb.h ], [ %i.cp, %bb.l ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.bh, %bb.h ], [ %i.ca, %bb.l ] ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !91
  %i.bl = load ptr, ptr %2, align 8, !tbaa !92
  %i.bm = icmp ult ptr %.0, %i.bl
  br i1 %i.bm, label %.noexc7, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !93
  %i.bo = ptrtoint ptr %.0 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.bt = icmp eq i32 %i.bs, %i.br
  br i1 %i.bt, label %bb.k, label %.noexc

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp sgt i32 %i.br, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, null
  %or.cond.i.i = select i1 %i.bu, i1 %i.bx, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.j
  %i.by = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.br, i32 noundef %i.bk) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.by, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.by, 1
  %i.bz = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bz, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.i, %.noexc
  %.249 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.i ] ; 2 uses
  %i.ca = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -56
  %.0.copyload.i.i14 = load i16, ptr %.249, align 1 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -48
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !96
  %i.ce = zext i8 %i.cd to i16
  %i.cf = and i16 %.0.copyload.i.i14, %i.ce
  %i.cg = zext nneg i16 %i.cf to i64              ; 2 uses
  %i.ch = and i64 %i.cg, 7
  %i.ci = icmp eq i64 %i.ch, 0
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = lshr exact i64 %i.cg, 3
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cl, align 8, !tbaa !51
  %i.cm = zext i16 %.0.copyload.i.i14 to i64
  %i.cn = xor i64 %.sroa.01.0.copyload.i.i, %i.cm
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !99
  %i.cp = tail call noundef ptr %i.co(ptr noundef %i.bg, ptr noundef nonnull %.249, ptr noundef nonnull %2, i64 %i.cn, ptr noundef nonnull %i.cb, i64 noundef 0), !inline_history !298 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.noexc.thread, label %bb.l

bb.l:                                             ; preds = %.noexc7
  %i.cr = load i32, ptr %i.bj, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i6, label %bb.i, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.l, %.noexc7, %.noexc, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cp, %bb.l ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.k ], [ %i.ca, %bb.l ], [ %i.ca, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = and i8 %i.ct, 1
  %.not14.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %.noexc.thread
  %i.cv = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !100
  %i.cx = tail call noundef ptr %i.cw(ptr noundef %i.bg, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !298
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.m, %.noexc.thread
  %.013.i.i = phi ptr [ %i.cx, %bb.m ], [ %.1, %.noexc.thread ]
  %i.cy = load i32, ptr %i.aq, align 8, !tbaa !130
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.aq, align 8, !tbaa !130
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.db = add nsw i32 %i.da, %i.be                ; 2 uses
  store i32 %i.db, ptr %i.bc, align 4, !tbaa !94
  %i.dc = load i32, ptr %i.bj, align 8, !tbaa !30
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.n, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, !prof !42

bb.n:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !93
  %.sroa.speculated.i15 = tail call i32 @llvm.smin.i32(i32 %i.db, i32 0)
  %i.df = sext i32 %.sroa.speculated.i15 to i64
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  store ptr %i.dg, ptr %2, align 8, !tbaa !92
  br label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %bb.n, %.noexc.i, %bb.g
  %.113.i = phi ptr [ null, %.noexc.i ], [ null, %bb.g ], [ %.013.i.i, %bb.n ], [ null, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ]
  ret ptr %.113.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGtS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !51
  %i.d = lshr i64 %3, 16
  %i.e = and i64 %i.d, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %5
  %i.h = load i16, ptr %4, align 8, !tbaa !25
  %i.i = trunc i64 %i.g to i32
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = or i32 %i.l, %i.i
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  %i.n = lshr i64 %3, 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = lshr i64 %3, 24
  %i.q = ptrtoint ptr %4 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.q
  %i.v = inttoptr i64 %i.u to ptr
  %6 = and i64 %i.p, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !51 ; 2 uses
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !41  ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i5 = phi ptr [ %i.ae, %bb.e ], [ %i.af, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.ak = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef %.0.i.i5) ; 2 uses
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.c, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.al = phi ptr [ %i.x, %bb.c ], [ %i.ak, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.am = zext i8 %i.c to i32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !130
  %i.aq = icmp slt i32 %i.ao, 1
  br i1 %i.aq, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !91
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0 = phi ptr [ %i.ar, %bb.g ], [ %i.ce, %bb.k ] ; 4 uses
  %.0.i.i = phi ptr [ %i.av, %bb.g ], [ %i.bp, %bb.k ] ; 3 uses
  %i.az = load i32, ptr %i.as, align 4, !tbaa !91
  %i.ba = load ptr, ptr %2, align 8, !tbaa !92
  %i.bb = icmp ult ptr %.0, %i.ba
  br i1 %i.bb, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !93
  %i.bd = ptrtoint ptr %.0 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  %i.bh = load i32, ptr %i.ax, align 4, !tbaa !94
  %i.bi = icmp eq i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.j, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp sgt i32 %i.bg, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, null
  %or.cond.i.i = select i1 %i.bj, i1 %i.bm, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.i
  %i.bn = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bg, i32 noundef %i.az) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bn, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bn, 1
  %i.bo = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bo, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23: ; preds = %bb.h, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.226 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.h ] ; 2 uses
  %i.bp = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -56
  %.0.copyload.i.i = load i16, ptr %.226, align 1 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -48
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !96
  %i.bt = zext i8 %i.bs to i16
  %i.bu = and i16 %.0.copyload.i.i, %i.bt
  %i.bv = zext nneg i16 %i.bu to i64              ; 2 uses
  %i.bw = and i64 %i.bv, 7
  %i.bx = icmp eq i64 %i.bw, 0
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = lshr exact i64 %i.bv, 3
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ca, align 8, !tbaa !51
  %i.cb = zext i16 %.0.copyload.i.i to i64
  %i.cc = xor i64 %.sroa.01.0.copyload.i.i, %i.cb
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.ce = tail call noundef ptr %i.cd(ptr noundef %i.al, ptr noundef nonnull %.226, ptr noundef nonnull %2, i64 %i.cc, ptr noundef nonnull %i.bq, i64 noundef 0), !inline_history !300 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23
  %i.cg = load i32, ptr %i.ay, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.k, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.j
  %.1 = phi ptr [ %spec.select, %bb.j ], [ %i.ce, %bb.k ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.j ], [ %i.bp, %bb.k ], [ %i.bp, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread23 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = and i8 %i.ci, 1
  %.not14.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.ck = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.cm = tail call noundef ptr %i.cl(ptr noundef %i.al, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !301
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.l
  %.013.i.i = phi ptr [ %i.cm, %bb.l ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  %i.cn = load <2 x i32>, ptr %i.an, align 8, !tbaa !19
  %i.co = add nsw <2 x i32> %i.cn, <i32 1, i32 -1>
  store <2 x i32> %i.co, ptr %i.an, align 8, !tbaa !19
  %i.cp = load i32, ptr %i.ay, align 8, !tbaa !30
  %i.cq = icmp eq i32 %i.cp, %i.am
  store i32 0, ptr %i.ay, align 8, !tbaa !30
  %..i = select i1 %i.cq, ptr %.013.i.i, ptr null, !prof !42
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit: ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %.1.i = phi ptr [ %..i, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ], [ null, %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGtS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void asm sideeffect "prefetcht0 192($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !113
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !114
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = lshr i64 %3, 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i5 = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aj = tail call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.ai, ptr noundef %i.ai, ptr noundef %.0.i.i5) ; 2 uses
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !52
  br label %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit

_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.c, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ak = phi ptr [ %i.w, %bb.c ], [ %i.aj, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.al = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i = shl i32 %i.al, 24
  %i.am = ashr exact i32 %sext.i, 24
  %i.an = add nsw i32 %i.am, %i.al
  %i.ao = lshr i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !130 ; 2 uses
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !130
  %i.as = icmp slt i32 %i.aq, 1
  br i1 %i.as, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0 = phi ptr [ %i.at, %bb.g ], [ %i.cg, %bb.k ] ; 4 uses
  %.0.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.br, %bb.k ] ; 3 uses
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !91
  %i.bc = load ptr, ptr %2, align 8, !tbaa !92
  %i.bd = icmp ult ptr %.0, %i.bc
  br i1 %i.bd, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.bf = ptrtoint ptr %.0 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = load i32, ptr %i.az, align 4, !tbaa !94
  %i.bk = icmp eq i32 %i.bj, %i.bi
  br i1 %i.bk, label %bb.j, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp sgt i32 %i.bi, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  %or.cond.i.i = select i1 %i.bl, i1 %i.bo, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.i
  %i.bp = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bi, i32 noundef %i.bb) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bp, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bp, 1
  %i.bq = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bq, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24: ; preds = %bb.h, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.227 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.h ] ; 2 uses
  %i.br = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -56
  %.0.copyload.i.i7 = load i16, ptr %.227, align 1 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -48
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !96
  %i.bv = zext i8 %i.bu to i16
  %i.bw = and i16 %.0.copyload.i.i7, %i.bv
  %i.bx = zext nneg i16 %i.bw to i64              ; 2 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = icmp eq i64 %i.by, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = lshr exact i64 %i.bx, 3
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.cd = zext i16 %.0.copyload.i.i7 to i64
  %i.ce = xor i64 %.sroa.01.0.copyload.i.i, %i.cd
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !99
  %i.cg = tail call noundef ptr %i.cf(ptr noundef %i.ak, ptr noundef nonnull %.227, ptr noundef nonnull %2, i64 %i.ce, ptr noundef nonnull %i.bs, i64 noundef 0), !inline_history !302 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24
  %i.ci = load i32, ptr %i.ba, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.k, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.j
  %.1 = phi ptr [ %spec.select, %bb.j ], [ %i.cg, %bb.k ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.j ], [ %i.br, %bb.k ], [ %i.br, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread24 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, 1
  %.not14.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.cm = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !100
  %i.co = tail call noundef ptr %i.cn(ptr noundef %i.ak, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !303
  br label %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.l
  %.013.i.i = phi ptr [ %i.co, %bb.l ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  %i.cp = load <2 x i32>, ptr %i.ap, align 8, !tbaa !19
  %i.cq = add nsw <2 x i32> %i.cp, <i32 1, i32 -1>
  store <2 x i32> %i.cq, ptr %i.ap, align 8, !tbaa !19
  %i.cr = load i32, ptr %i.ba, align 8, !tbaa !30
  %i.cs = icmp eq i32 %i.cr, %i.ao
  store i32 0, ptr %i.ba, align 8, !tbaa !30
  %..i = select i1 %i.cs, ptr %.013.i.i, ptr null, !prof !42
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit: ; preds = %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %.1.i = phi ptr [ %..i, %_ZZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit ], [ null, %_ZN6google8protobuf8internal8TcParser27SingularParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit ]
  ret ptr %.1.i
}

; Function Attrs: cold mustprogress noinline noreturn uwtable
define noalias noundef nonnull ptr @_ZN6google8protobuf8internal8TcParser8FastMlS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 %3, ptr nofree noundef readnone captures(none) %4, i64 noundef %5) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 717) #30
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 13, ptr nonnull @.str.70)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i unwind label %bb.b

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i: ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.b

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  unreachable

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn uwtable
define noalias noundef nonnull ptr @_ZN6google8protobuf8internal8TcParser8FastMlS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 %3, ptr nofree noundef readnone captures(none) %4, i64 noundef %5) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 717) #30
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 13, ptr nonnull @.str.70)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i unwind label %bb.b

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i: ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.b

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  unreachable

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #29
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMdR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i10 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i8, ptr %1, align 1, !tbaa !51
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = lshr i64 %3, 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %bb.f
  %.0.i11 = phi ptr [ %i.al, %bb.f ], [ %i.af, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i11, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %.013.i.i, %bb.q ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.au = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.0.i11, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %.0.i.i10) ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !tbaa !51  ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = icmp sgt i8 %i.av, -1
  br i1 %i.ax, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %bb.h

.noexc.i:                                         ; preds = %bb.g
  %i.az = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.at, i32 noundef %i.aw) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.az, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.az, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.h, !prof !129

bb.h:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1257 = phi i32 [ %i.aw, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i56 = phi ptr [ %i.ay, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.ba = load i32, ptr %i.am, align 8, !tbaa !130 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !93, !noalias !308 ; 2 uses
  %i.bd = ptrtoint ptr %storemerge.i56 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add nsw i32 %.0.i1257, %i.bg            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 0)
  %i.bi = sext i32 %.sroa.speculated.i to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bc, i64 %i.bi
  store ptr %i.bj, ptr %2, align 8, !tbaa !92, !noalias !308
  %i.bk = load i32, ptr %i.ao, align 4, !tbaa !94, !noalias !308
  store i32 %i.bh, ptr %i.ao, align 4, !tbaa !94, !noalias !308
  %i.bl = sub nsw i32 %i.bk, %i.bh
  %i.bm = add nsw i32 %i.ba, -1
  store i32 %i.bm, ptr %i.am, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0 = phi ptr [ %storemerge.i56, %bb.i ], [ %i.cr, %bb.m ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.ap, %bb.i ], [ %i.cc, %bb.m ] ; 3 uses
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !91
  %i.bo = load ptr, ptr %2, align 8, !tbaa !92
  %i.bp = icmp ult ptr %.0, %i.bo
  br i1 %i.bp, label %.noexc7, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.br = ptrtoint ptr %.0 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !94
  %i.bw = icmp eq i32 %i.bv, %i.bu
  br i1 %i.bw, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bu, 0
  %i.by = load ptr, ptr %i.as, align 8
  %i.bz = icmp eq ptr %i.by, null
  %or.cond.i.i = select i1 %i.bx, i1 %i.bz, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.k
  %i.ca = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bu, i32 noundef %i.bn) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ca, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ca, 1
  %i.cb = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.cb, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.j, %.noexc
  %.265 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.j ] ; 2 uses
  %i.cc = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -56
  %.0.copyload.i.i = load i16, ptr %.265, align 1 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -48
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !96
  %i.cg = zext i8 %i.cf to i16
  %i.ch = and i16 %.0.copyload.i.i, %i.cg
  %i.ci = zext nneg i16 %i.ch to i64              ; 2 uses
  %i.cj = and i64 %i.ci, 7
  %i.ck = icmp eq i64 %i.cj, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = lshr exact i64 %i.ci, 3
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cn, align 8, !tbaa !51
  %i.co = zext i16 %.0.copyload.i.i to i64
  %i.cp = xor i64 %.sroa.01.0.copyload.i.i, %i.co
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !99
  %i.cr = tail call noundef ptr %i.cq(ptr noundef %i.au, ptr noundef nonnull %.265, ptr noundef nonnull %2, i64 %i.cp, ptr noundef nonnull %i.cd, i64 noundef 0), !inline_history !306 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.noexc.thread, label %bb.m

bb.m:                                             ; preds = %.noexc7
  %i.ct = load i32, ptr %i.ar, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i6, label %bb.j, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.m, %.noexc7, %.noexc, %bb.l
  %.1 = phi ptr [ %spec.select, %bb.l ], [ %i.cr, %bb.m ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.l ], [ %i.cc, %bb.m ], [ %i.cc, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = and i8 %i.cv, 1
  %.not14.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.n, !prof !42

bb.n:                                             ; preds = %.noexc.thread
  %i.cx = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.cz = tail call noundef ptr %i.cy(ptr noundef %i.au, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !306
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.n, %.noexc.thread
  %.013.i.i = phi ptr [ %i.cz, %bb.n ], [ %.1, %.noexc.thread ] ; 7 uses
  %i.da = load i32, ptr %i.am, align 8, !tbaa !130
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.am, align 8, !tbaa !130
  %i.dc = load i32, ptr %i.ao, align 4, !tbaa !94
  %i.dd = add nsw i32 %i.dc, %i.bl                ; 2 uses
  store i32 %i.dd, ptr %i.ao, align 4, !tbaa !94
  %i.de = load i32, ptr %i.ar, align 8, !tbaa !30
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, !prof !42

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.dg = load ptr, ptr %i.an, align 8, !tbaa !93
  %.sroa.speculated.i16 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 0)
  %i.dh = sext i32 %.sroa.speculated.i16 to i64
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 %i.dh ; 2 uses
  store ptr %i.di, ptr %2, align 8, !tbaa !92
  %i.dj = icmp eq ptr %.013.i.i, null
  br i1 %i.dj, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.o, !prof !132

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %.noexc.i, %bb.h, %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.dk = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.dk

bb.o:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.dl = icmp ult ptr %.013.i.i, %i.di
  br i1 %i.dl, label %bb.q, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.dm = load i16, ptr %4, align 8, !tbaa !25
  %i.dn = trunc i64 %i.f to i32
  %i.do = zext i16 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !19
  %i.dr = or i32 %i.dq, %i.dn
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.q:                                             ; preds = %bb.o
  %i.ds = load i8, ptr %.013.i.i, align 1, !tbaa !51
  %i.dt = icmp eq i8 %i.ds, %i.n
  br i1 %i.dt, label %bb.g, label %bb.r, !llvm.loop !307

bb.r:                                             ; preds = %bb.q
  %.0.copyload.i.i17 = load i16, ptr %.013.i.i, align 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !96
  %i.dw = zext i8 %i.dv to i16
  %i.dx = and i16 %.0.copyload.i.i17, %i.dw
  %i.dy = zext nneg i16 %i.dx to i64              ; 2 uses
  %i.dz = and i64 %i.dy, 7
  %i.ea = icmp eq i64 %i.dz, 0
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = lshr exact i64 %i.dy, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ee, align 8, !tbaa !51
  %i.ef = zext i16 %.0.copyload.i.i17 to i64
  %i.eg = xor i64 %.sroa.01.0.copyload.i, %i.ef
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !99
  %i.ei = musttail call noundef ptr %i.eh(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.eg, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.ei
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMdR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i10 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.n = lshr i64 %3, 24
  %i.o = ptrtoint ptr %4 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.o
  %i.t = inttoptr i64 %i.s to ptr
  %6 = and i64 %i.n, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %6
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = lshr i64 %3, 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.w), !inline_history !7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.w), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %bb.f
  %.0.i11 = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i11, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %.013.i.i, %bb.q ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.at = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.0.i11, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.0.i.i10) ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !51  ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = icmp sgt i8 %i.au, -1
  br i1 %i.aw, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  br label %bb.h

.noexc.i:                                         ; preds = %bb.g
  %i.ay = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.as, i32 noundef %i.av) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ay, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ay, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.h, !prof !129

bb.h:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1259 = phi i32 [ %i.av, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i58 = phi ptr [ %i.ax, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.az = load i32, ptr %i.al, align 8, !tbaa !130 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !93, !noalias !313 ; 2 uses
  %i.bc = ptrtoint ptr %storemerge.i58 to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add nsw i32 %.0.i1259, %i.bf            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 0)
  %i.bh = sext i32 %.sroa.speculated.i to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 %i.bh
  store ptr %i.bi, ptr %2, align 8, !tbaa !92, !noalias !313
  %i.bj = load i32, ptr %i.an, align 4, !tbaa !94, !noalias !313
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !94, !noalias !313
  %i.bk = sub nsw i32 %i.bj, %i.bg
  %i.bl = add nsw i32 %i.az, -1
  store i32 %i.bl, ptr %i.al, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0 = phi ptr [ %storemerge.i58, %bb.i ], [ %i.cq, %bb.m ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.ao, %bb.i ], [ %i.cb, %bb.m ] ; 3 uses
  %i.bm = load i32, ptr %i.ap, align 4, !tbaa !91
  %i.bn = load ptr, ptr %2, align 8, !tbaa !92
  %i.bo = icmp ult ptr %.0, %i.bn
  br i1 %i.bo, label %.noexc7, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.bq = ptrtoint ptr %.0 to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32                  ; 3 uses
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !94
  %i.bv = icmp eq i32 %i.bu, %i.bt
  br i1 %i.bv, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp sgt i32 %i.bt, 0
  %i.bx = load ptr, ptr %i.ar, align 8
  %i.by = icmp eq ptr %i.bx, null
  %or.cond.i.i = select i1 %i.bw, i1 %i.by, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.k
  %i.bz = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bt, i32 noundef %i.bm) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bz, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bz, 1
  %i.ca = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ca, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.j, %.noexc
  %.267 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.j ] ; 2 uses
  %i.cb = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -56
  %.0.copyload.i.i16 = load i16, ptr %.267, align 1 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -48
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !96
  %i.cf = zext i8 %i.ce to i16
  %i.cg = and i16 %.0.copyload.i.i16, %i.cf
  %i.ch = zext nneg i16 %i.cg to i64              ; 2 uses
  %i.ci = and i64 %i.ch, 7
  %i.cj = icmp eq i64 %i.ci, 0
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = lshr exact i64 %i.ch, 3
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cm, align 8, !tbaa !51
  %i.cn = zext i16 %.0.copyload.i.i16 to i64
  %i.co = xor i64 %.sroa.01.0.copyload.i.i, %i.cn
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !99
  %i.cq = tail call noundef ptr %i.cp(ptr noundef %i.at, ptr noundef nonnull %.267, ptr noundef nonnull %2, i64 %i.co, ptr noundef nonnull %i.cc, i64 noundef 0), !inline_history !311 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.noexc.thread, label %bb.m

bb.m:                                             ; preds = %.noexc7
  %i.cs = load i32, ptr %i.aq, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i6, label %bb.j, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.m, %.noexc7, %.noexc, %bb.l
  %.1 = phi ptr [ %spec.select, %bb.l ], [ %i.cq, %bb.m ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.l ], [ %i.cb, %bb.m ], [ %i.cb, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = and i8 %i.cu, 1
  %.not14.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.n, !prof !42

bb.n:                                             ; preds = %.noexc.thread
  %i.cw = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !100
  %i.cy = tail call noundef ptr %i.cx(ptr noundef %i.at, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !311
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.n, %.noexc.thread
  %.013.i.i = phi ptr [ %i.cy, %bb.n ], [ %.1, %.noexc.thread ] ; 6 uses
  %i.cz = load i32, ptr %i.al, align 8, !tbaa !130
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.al, align 8, !tbaa !130
  %i.db = load i32, ptr %i.an, align 4, !tbaa !94
  %i.dc = add nsw i32 %i.db, %i.bk                ; 2 uses
  store i32 %i.dc, ptr %i.an, align 4, !tbaa !94
  %i.dd = load i32, ptr %i.aq, align 8, !tbaa !30
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, !prof !42

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !93
  %.sroa.speculated.i17 = tail call i32 @llvm.smin.i32(i32 %i.dc, i32 0)
  %i.dg = sext i32 %.sroa.speculated.i17 to i64
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg ; 2 uses
  store ptr %i.dh, ptr %2, align 8, !tbaa !92
  %i.di = icmp eq ptr %.013.i.i, null
  br i1 %i.di, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.o, !prof !132

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %.noexc.i, %bb.h, %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.dj = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.dj

bb.o:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.dk = icmp ult ptr %.013.i.i, %i.dh
  br i1 %i.dk, label %bb.q, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.dl = load i16, ptr %4, align 8, !tbaa !25
  %i.dm = trunc i64 %i.f to i32
  %i.dn = zext i16 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = or i32 %i.dp, %i.dm
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.q:                                             ; preds = %bb.o
  %.0.copyload.i.i18 = load i16, ptr %.013.i.i, align 1 ; 3 uses
  %i.dr = icmp eq i16 %.0.copyload.i.i18, %.0.copyload.i.i
  br i1 %i.dr, label %bb.g, label %bb.r, !llvm.loop !312

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !96
  %i.du = zext i8 %i.dt to i16
  %i.dv = and i16 %.0.copyload.i.i18, %i.du
  %i.dw = zext nneg i16 %i.dv to i64              ; 2 uses
  %i.dx = and i64 %i.dw, 7
  %i.dy = icmp eq i64 %i.dx, 0
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = lshr exact i64 %i.dw, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ec, align 8, !tbaa !51
  %i.ed = zext i16 %.0.copyload.i.i18 to i64
  %i.ee = xor i64 %.sroa.01.0.copyload.i, %i.ed
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !99
  %i.eg = musttail call noundef ptr %i.ef(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.ee, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.eg
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGdR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i5 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = lshr i64 %3, 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.x), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %bb.f
  %.0.i6 = phi ptr [ %i.al, %bb.f ], [ %i.af, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.am = zext i8 %i.n to i32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i6, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %.013.i.i, %bb.p ]
  %i.au = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.0.i6, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %.0.i.i5) ; 2 uses
  %i.av = load i32, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.an, align 8, !tbaa !130
  %i.ax = icmp slt i32 %i.av, 1
  br i1 %i.ax, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.az = load i32, ptr %i.ao, align 4, !tbaa !91
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ao, align 4, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %i.ay, %bb.h ], [ %i.cf, %bb.l ] ; 4 uses
  %.0.i.i = phi ptr [ %i.ap, %bb.h ], [ %i.bq, %bb.l ] ; 3 uses
  %i.bb = load i32, ptr %i.ao, align 4, !tbaa !91
  %i.bc = load ptr, ptr %2, align 8, !tbaa !92
  %i.bd = icmp ult ptr %.0, %i.bc
  br i1 %i.bd, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !93
  %i.bf = ptrtoint ptr %.0 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = load i32, ptr %i.ar, align 4, !tbaa !94
  %i.bk = icmp eq i32 %i.bj, %i.bi
  br i1 %i.bk, label %bb.k, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp sgt i32 %i.bi, 0
  %i.bm = load ptr, ptr %i.at, align 8
  %i.bn = icmp eq ptr %i.bm, null
  %or.cond.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.j
  %i.bo = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bi, i32 noundef %i.bb) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bo, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bo, 1
  %i.bp = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bp, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39: ; preds = %bb.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.242 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.bq = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -56
  %.0.copyload.i.i = load i16, ptr %.242, align 1 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -48
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !96
  %i.bu = zext i8 %i.bt to i16
  %i.bv = and i16 %.0.copyload.i.i, %i.bu
  %i.bw = zext nneg i16 %i.bv to i64              ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp eq i64 %i.bx, 0
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = lshr exact i64 %i.bw, 3
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cb, align 8, !tbaa !51
  %i.cc = zext i16 %.0.copyload.i.i to i64
  %i.cd = xor i64 %.sroa.01.0.copyload.i.i, %i.cc
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cf = tail call noundef ptr %i.ce(ptr noundef %i.au, ptr noundef nonnull %.242, ptr noundef nonnull %2, i64 %i.cd, ptr noundef nonnull %i.br, i64 noundef 0), !inline_history !314 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39
  %i.ch = load i32, ptr %i.as, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i, label %bb.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.l, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cf, %bb.l ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.k ], [ %i.bq, %bb.l ], [ %i.bq, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = and i8 %i.cj, 1
  %.not14.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.cl = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cn = tail call noundef ptr %i.cm(ptr noundef %i.au, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !315
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.m
  %.013.i.i = phi ptr [ %i.cn, %bb.m ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ] ; 7 uses
  %i.co = load <2 x i32>, ptr %i.an, align 8, !tbaa !19
  %i.cp = add nsw <2 x i32> %i.co, <i32 1, i32 -1>
  store <2 x i32> %i.cp, ptr %i.an, align 8, !tbaa !19
  %i.cq = load i32, ptr %i.as, align 8, !tbaa !30
  %i.cr = icmp ne i32 %i.cq, %i.am
  store i32 0, ptr %i.as, align 8, !tbaa !30
  %i.cs = icmp eq ptr %.013.i.i, null
  %or.cond = select i1 %i.cr, i1 true, i1 %i.cs, !prof !133
  br i1 %or.cond, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.n, !prof !133

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread: ; preds = %bb.g, %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.ct = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ct

bb.n:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cu = load ptr, ptr %2, align 8, !tbaa !92
  %i.cv = icmp ult ptr %.013.i.i, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.cw = load i16, ptr %4, align 8, !tbaa !25
  %i.cx = trunc i64 %i.f to i32
  %i.cy = zext i16 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !19
  %i.db = or i32 %i.da, %i.cx
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.p:                                             ; preds = %bb.n
  %i.dc = load i8, ptr %.013.i.i, align 1, !tbaa !51
  %i.dd = icmp eq i8 %i.dc, %i.n
  br i1 %i.dd, label %bb.g, label %bb.q, !llvm.loop !316

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i.i8 = load i16, ptr %.013.i.i, align 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !96
  %i.dg = zext i8 %i.df to i16
  %i.dh = and i16 %.0.copyload.i.i8, %i.dg
  %i.di = zext nneg i16 %i.dh to i64              ; 2 uses
  %i.dj = and i64 %i.di, 7
  %i.dk = icmp eq i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = lshr exact i64 %i.di, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dp = zext i16 %.0.copyload.i.i8 to i64
  %i.dq = xor i64 %.sroa.01.0.copyload.i, %i.dp
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !99
  %i.ds = musttail call noundef ptr %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.dq, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.ds
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGdR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i5 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1    ; 2 uses
  %i.n = lshr i64 %3, 24
  %i.o = ptrtoint ptr %4 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.o
  %i.t = inttoptr i64 %i.s to ptr
  %6 = and i64 %i.n, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %6
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = lshr i64 %3, 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.w), !inline_history !7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !20

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.w), !inline_history !7
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, %bb.f
  %.0.i6 = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ] ; 2 uses
  %i.al = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i = shl i32 %i.al, 24
  %i.am = ashr exact i32 %sext.i, 24
  %i.an = add nsw i32 %i.am, %i.al
  %i.ao = lshr i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i6, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %.013.i.i, %bb.p ]
  %i.aw = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.0.i6, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %.0.i.i5) ; 2 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !130 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.ap, align 8, !tbaa !130
  %i.az = icmp slt i32 %i.ax, 1
  br i1 %i.az, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.bb = load i32, ptr %i.aq, align 4, !tbaa !91
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.aq, align 4, !tbaa !91
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %i.ba, %bb.h ], [ %i.ch, %bb.l ] ; 4 uses
  %.0.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !91
  %i.be = load ptr, ptr %2, align 8, !tbaa !92
  %i.bf = icmp ult ptr %.0, %i.be
  br i1 %i.bf, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !93
  %i.bh = ptrtoint ptr %.0 to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = load i32, ptr %i.at, align 4, !tbaa !94
  %i.bm = icmp eq i32 %i.bl, %i.bk
  br i1 %i.bm, label %bb.k, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp sgt i32 %i.bk, 0
  %i.bo = load ptr, ptr %i.av, align 8
  %i.bp = icmp eq ptr %i.bo, null
  %or.cond.i.i = select i1 %i.bn, i1 %i.bp, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.j
  %i.bq = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bk, i32 noundef %i.bd) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bq, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bq, 1
  %i.br = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.br, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41: ; preds = %bb.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.244 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.i ] ; 2 uses
  %i.bs = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -56
  %.0.copyload.i.i8 = load i16, ptr %.244, align 1 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -48
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !96
  %i.bw = zext i8 %i.bv to i16
  %i.bx = and i16 %.0.copyload.i.i8, %i.bw
  %i.by = zext nneg i16 %i.bx to i64              ; 2 uses
  %i.bz = and i64 %i.by, 7
  %i.ca = icmp eq i64 %i.bz, 0
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = lshr exact i64 %i.by, 3
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.cd, align 8, !tbaa !51
  %i.ce = zext i16 %.0.copyload.i.i8 to i64
  %i.cf = xor i64 %.sroa.01.0.copyload.i.i, %i.ce
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !99
  %i.ch = tail call noundef ptr %i.cg(ptr noundef %i.aw, ptr noundef nonnull %.244, ptr noundef nonnull %2, i64 %i.cf, ptr noundef nonnull %i.bt, i64 noundef 0), !inline_history !317 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41
  %i.cj = load i32, ptr %i.au, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %bb.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.l, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.ch, %bb.l ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.k ], [ %i.bs, %bb.l ], [ %i.bs, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = and i8 %i.cl, 1
  %.not14.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.cn = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !100
  %i.cp = tail call noundef ptr %i.co(ptr noundef %i.aw, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !318
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.m
  %.013.i.i = phi ptr [ %i.cp, %bb.m ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ] ; 6 uses
  %i.cq = load <2 x i32>, ptr %i.ap, align 8, !tbaa !19
  %i.cr = add nsw <2 x i32> %i.cq, <i32 1, i32 -1>
  store <2 x i32> %i.cr, ptr %i.ap, align 8, !tbaa !19
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !30
  %i.ct = icmp ne i32 %i.cs, %i.ao
  store i32 0, ptr %i.au, align 8, !tbaa !30
  %i.cu = icmp eq ptr %.013.i.i, null
  %or.cond = select i1 %i.ct, i1 true, i1 %i.cu, !prof !133
  br i1 %or.cond, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.n, !prof !133

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread: ; preds = %bb.g, %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cv = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cv

bb.n:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cw = load ptr, ptr %2, align 8, !tbaa !92
  %i.cx = icmp ult ptr %.013.i.i, %i.cw
  br i1 %i.cx, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.cy = load i16, ptr %4, align 8, !tbaa !25
  %i.cz = trunc i64 %i.f to i32
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19
  %i.dd = or i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.p:                                             ; preds = %bb.n
  %.0.copyload.i.i9 = load i16, ptr %.013.i.i, align 1 ; 3 uses
  %i.de = icmp eq i16 %.0.copyload.i.i9, %.0.copyload.i.i
  br i1 %i.de, label %bb.g, label %bb.q, !llvm.loop !319

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !96
  %i.dh = zext i8 %i.dg to i16
  %i.di = and i16 %.0.copyload.i.i9, %i.dh
  %i.dj = zext nneg i16 %i.di to i64              ; 2 uses
  %i.dk = and i64 %i.dj, 7
  %i.dl = icmp eq i64 %i.dk, 0
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = lshr exact i64 %i.dj, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dp, align 8, !tbaa !51
  %i.dq = zext i16 %.0.copyload.i.i9 to i64
  %i.dr = xor i64 %.sroa.01.0.copyload.i, %i.dq
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !99
  %i.dt = musttail call noundef ptr %i.ds(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.dr, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.dt
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i10 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i8, ptr %1, align 1, !tbaa !51
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.w = lshr i64 %3, 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.013.i.i, %bb.p ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.ag = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %.0.i.i10) ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !51  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = icmp sgt i8 %i.ah, -1
  br i1 %i.aj, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %bb.g

.noexc.i:                                         ; preds = %bb.f
  %i.al = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.af, i32 noundef %i.ai) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.al, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.al, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.g, !prof !129

bb.g:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1155 = phi i32 [ %i.ai, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i54 = phi ptr [ %i.ak, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.am = load i32, ptr %i.y, align 8, !tbaa !130 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !93, !noalias !324 ; 2 uses
  %i.ap = ptrtoint ptr %storemerge.i54 to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = add nsw i32 %.0.i1155, %i.as            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 0)
  %i.au = sext i32 %.sroa.speculated.i to i64
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 %i.au
  store ptr %i.av, ptr %2, align 8, !tbaa !92, !noalias !324
  %i.aw = load i32, ptr %i.aa, align 4, !tbaa !94, !noalias !324
  store i32 %i.at, ptr %i.aa, align 4, !tbaa !94, !noalias !324
  %i.ax = sub nsw i32 %i.aw, %i.at
  %i.ay = add nsw i32 %i.am, -1
  store i32 %i.ay, ptr %i.y, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %storemerge.i54, %bb.h ], [ %i.cd, %bb.l ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.ab, %bb.h ], [ %i.bo, %bb.l ] ; 3 uses
  %i.az = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ba = load ptr, ptr %2, align 8, !tbaa !92
  %i.bb = icmp ult ptr %.0, %i.ba
  br i1 %i.bb, label %.noexc7, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.bd = ptrtoint ptr %.0 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32                  ; 3 uses
  %i.bh = load i32, ptr %i.aa, align 4, !tbaa !94
  %i.bi = icmp eq i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.k, label %.noexc

bb.k:                                             ; preds = %bb.j
  %i.bj = icmp sgt i32 %i.bg, 0
  %i.bk = load ptr, ptr %i.ae, align 8
  %i.bl = icmp eq ptr %i.bk, null
  %or.cond.i.i = select i1 %i.bj, i1 %i.bl, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.j
  %i.bm = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bg, i32 noundef %i.az) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bm, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bm, 1
  %i.bn = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bn, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.i, %.noexc
  %.263 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.i ] ; 2 uses
  %i.bo = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56
  %.0.copyload.i.i = load i16, ptr %.263, align 1 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -48
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !96
  %i.bs = zext i8 %i.br to i16
  %i.bt = and i16 %.0.copyload.i.i, %i.bs
  %i.bu = zext nneg i16 %i.bt to i64              ; 2 uses
  %i.bv = and i64 %i.bu, 7
  %i.bw = icmp eq i64 %i.bv, 0
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = lshr exact i64 %i.bu, 3
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bz, align 8, !tbaa !51
  %i.ca = zext i16 %.0.copyload.i.i to i64
  %i.cb = xor i64 %.sroa.01.0.copyload.i.i, %i.ca
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.cd = tail call noundef ptr %i.cc(ptr noundef %i.ag, ptr noundef nonnull %.263, ptr noundef nonnull %2, i64 %i.cb, ptr noundef nonnull %i.bp, i64 noundef 0), !inline_history !322 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.noexc.thread, label %bb.l

bb.l:                                             ; preds = %.noexc7
  %i.cf = load i32, ptr %i.ad, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i6, label %bb.i, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.l, %.noexc7, %.noexc, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cd, %bb.l ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.k ], [ %i.bo, %bb.l ], [ %i.bo, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = and i8 %i.ch, 1
  %.not14.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %.noexc.thread
  %i.cj = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !100
  %i.cl = tail call noundef ptr %i.ck(ptr noundef %i.ag, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !322
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.m, %.noexc.thread
  %.013.i.i = phi ptr [ %i.cl, %bb.m ], [ %.1, %.noexc.thread ] ; 7 uses
  %i.cm = load i32, ptr %i.y, align 8, !tbaa !130
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.y, align 8, !tbaa !130
  %i.co = load i32, ptr %i.aa, align 4, !tbaa !94
  %i.cp = add nsw i32 %i.co, %i.ax                ; 2 uses
  store i32 %i.cp, ptr %i.aa, align 4, !tbaa !94
  %i.cq = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, !prof !42

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !93
  %.sroa.speculated.i15 = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 0)
  %i.ct = sext i32 %.sroa.speculated.i15 to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct ; 2 uses
  store ptr %i.cu, ptr %2, align 8, !tbaa !92
  %i.cv = icmp eq ptr %.013.i.i, null
  br i1 %i.cv, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.n, !prof !132

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %.noexc.i, %bb.g, %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.cw = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cw

bb.n:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.cx = icmp ult ptr %.013.i.i, %i.cu
  br i1 %i.cx, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.cy = load i16, ptr %4, align 8, !tbaa !25
  %i.cz = trunc i64 %i.f to i32
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19
  %i.dd = or i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.p:                                             ; preds = %bb.n
  %i.de = load i8, ptr %.013.i.i, align 1, !tbaa !51
  %i.df = icmp eq i8 %i.de, %i.n
  br i1 %i.df, label %bb.f, label %bb.q, !llvm.loop !323

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i.i16 = load i16, ptr %.013.i.i, align 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !96
  %i.di = zext i8 %i.dh to i16
  %i.dj = and i16 %.0.copyload.i.i16, %i.di
  %i.dk = zext nneg i16 %i.dj to i64              ; 2 uses
  %i.dl = and i64 %i.dk, 7
  %i.dm = icmp eq i64 %i.dl, 0
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = lshr exact i64 %i.dk, 3
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dq, align 8, !tbaa !51
  %i.dr = zext i16 %.0.copyload.i.i16 to i64
  %i.ds = xor i64 %.sroa.01.0.copyload.i, %i.dr
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !99
  %i.du = musttail call noundef ptr %i.dt(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.ds, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.du
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i10 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.n = lshr i64 %3, 24
  %i.o = ptrtoint ptr %4 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.o
  %i.t = inttoptr i64 %i.s to ptr
  %6 = and i64 %i.n, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.v = lshr i64 %3, 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.p, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.013.i.i, %bb.p ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %.0.i.i10) ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !51  ; 2 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = icmp sgt i8 %i.ag, -1
  br i1 %i.ai, label %.noexc.i.thread, label %.noexc.i

.noexc.i.thread:                                  ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  br label %bb.g

.noexc.i:                                         ; preds = %bb.f
  %i.ak = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ae, i32 noundef %i.ah) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ak, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ak, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.g, !prof !129

bb.g:                                             ; preds = %.noexc.i.thread, %.noexc.i
  %.0.i1157 = phi i32 [ %i.ah, %.noexc.i.thread ], [ %.fca.1.extract.i, %.noexc.i ]
  %storemerge.i56 = phi ptr [ %i.aj, %.noexc.i.thread ], [ %.fca.0.extract.i, %.noexc.i ] ; 2 uses
  %i.al = load i32, ptr %i.x, align 8, !tbaa !130 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !93, !noalias !329 ; 2 uses
  %i.ao = ptrtoint ptr %storemerge.i56 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nsw i32 %.0.i1157, %i.ar            ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 0)
  %i.at = sext i32 %.sroa.speculated.i to i64
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 %i.at
  store ptr %i.au, ptr %2, align 8, !tbaa !92, !noalias !329
  %i.av = load i32, ptr %i.z, align 4, !tbaa !94, !noalias !329
  store i32 %i.as, ptr %i.z, align 4, !tbaa !94, !noalias !329
  %i.aw = sub nsw i32 %i.av, %i.as
  %i.ax = add nsw i32 %i.al, -1
  store i32 %i.ax, ptr %i.x, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi ptr [ %storemerge.i56, %bb.h ], [ %i.cc, %bb.l ] ; 4 uses
  %.0.i.i5 = phi ptr [ %i.aa, %bb.h ], [ %i.bn, %bb.l ] ; 3 uses
  %i.ay = load i32, ptr %i.ab, align 4, !tbaa !91
  %i.az = load ptr, ptr %2, align 8, !tbaa !92
  %i.ba = icmp ult ptr %.0, %i.az
  br i1 %i.ba, label %.noexc7, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.bc = ptrtoint ptr %.0 to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 3 uses
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !94
  %i.bh = icmp eq i32 %i.bg, %i.bf
  br i1 %i.bh, label %bb.k, label %.noexc

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp sgt i32 %i.bf, 0
  %i.bj = load ptr, ptr %i.ad, align 8
  %i.bk = icmp eq ptr %i.bj, null
  %or.cond.i.i = select i1 %i.bi, i1 %i.bk, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %.noexc.thread

.noexc:                                           ; preds = %bb.j
  %i.bl = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.bf, i32 noundef %i.ay) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bl, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bl, 1
  %i.bm = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bm, label %.noexc.thread, label %.noexc7

.noexc7:                                          ; preds = %bb.i, %.noexc
  %.265 = phi ptr [ %.fca.0.extract.i.i, %.noexc ], [ %.0, %bb.i ] ; 2 uses
  %i.bn = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i5) #31, !srcloc !95 ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -56
  %.0.copyload.i.i15 = load i16, ptr %.265, align 1 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -48
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !96
  %i.br = zext i8 %i.bq to i16
  %i.bs = and i16 %.0.copyload.i.i15, %i.br
  %i.bt = zext nneg i16 %i.bs to i64              ; 2 uses
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.bu, 0
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr exact i64 %i.bt, 3
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.by, align 8, !tbaa !51
  %i.bz = zext i16 %.0.copyload.i.i15 to i64
  %i.ca = xor i64 %.sroa.01.0.copyload.i.i, %i.bz
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !99
  %i.cc = tail call noundef ptr %i.cb(ptr noundef %i.af, ptr noundef nonnull %.265, ptr noundef nonnull %2, i64 %i.ca, ptr noundef nonnull %i.bo, i64 noundef 0), !inline_history !327 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.noexc.thread, label %bb.l

bb.l:                                             ; preds = %.noexc7
  %i.ce = load i32, ptr %i.ac, align 8, !tbaa !30
  %.not.i.i6 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i6, label %bb.i, label %.noexc.thread, !llvm.loop !5

.noexc.thread:                                    ; preds = %bb.l, %.noexc7, %.noexc, %bb.k
  %.1 = phi ptr [ %spec.select, %bb.k ], [ %i.cc, %bb.l ], [ null, %.noexc7 ], [ %.fca.0.extract.i.i, %.noexc ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i5, %bb.k ], [ %i.bn, %bb.l ], [ %i.bn, %.noexc7 ], [ %.0.i.i5, %.noexc ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = and i8 %i.cg, 1
  %.not14.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.m, !prof !42

bb.m:                                             ; preds = %.noexc.thread
  %i.ci = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !100
  %i.ck = tail call noundef ptr %i.cj(ptr noundef %i.af, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !327
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %bb.m, %.noexc.thread
  %.013.i.i = phi ptr [ %i.ck, %bb.m ], [ %.1, %.noexc.thread ] ; 6 uses
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !130
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.x, align 8, !tbaa !130
  %i.cn = load i32, ptr %i.z, align 4, !tbaa !94
  %i.co = add nsw i32 %i.cn, %i.aw                ; 2 uses
  store i32 %i.co, ptr %i.z, align 4, !tbaa !94
  %i.cp = load i32, ptr %i.ac, align 8, !tbaa !30
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, !prof !42

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !93
  %.sroa.speculated.i16 = tail call i32 @llvm.smin.i32(i32 %i.co, i32 0)
  %i.cs = sext i32 %.sroa.speculated.i16 to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs ; 2 uses
  store ptr %i.ct, ptr %2, align 8, !tbaa !92
  %i.cu = icmp eq ptr %.013.i.i, null
  br i1 %i.cu, label %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread, label %bb.n, !prof !132

_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit.thread: ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, %.noexc.i, %bb.g, %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.cv = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cv

bb.n:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext27ParseLengthDelimitedInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb0ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_RKT_.exit
  %i.cw = icmp ult ptr %.013.i.i, %i.ct
  br i1 %i.cw, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.cx = load i16, ptr %4, align 8, !tbaa !25
  %i.cy = trunc i64 %i.f to i32
  %i.cz = zext i16 %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !19
  %i.dc = or i32 %i.db, %i.cy
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.p:                                             ; preds = %bb.n
  %.0.copyload.i.i17 = load i16, ptr %.013.i.i, align 1 ; 3 uses
  %i.dd = icmp eq i16 %.0.copyload.i.i17, %.0.copyload.i.i
  br i1 %i.dd, label %bb.f, label %bb.q, !llvm.loop !328

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !96
  %i.dg = zext i8 %i.df to i16
  %i.dh = and i16 %.0.copyload.i.i17, %i.dg
  %i.di = zext nneg i16 %i.dh to i64              ; 2 uses
  %i.dj = and i64 %i.di, 7
  %i.dk = icmp eq i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = lshr exact i64 %i.di, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.do, align 8, !tbaa !51
  %i.dp = zext i16 %.0.copyload.i.i17 to i64
  %i.dq = xor i64 %.sroa.01.0.copyload.i, %i.dp
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !99
  %i.ds = musttail call noundef ptr %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.dq, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.ds
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGtR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i5 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.n = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %i.o = lshr i64 %3, 24
  %i.p = ptrtoint ptr %4 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i32 %i.r to i64
  %i.t = add i64 %i.s, %i.p
  %i.u = inttoptr i64 %i.t to ptr
  %6 = and i64 %i.o, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !tbaa !51 ; 2 uses
  %i.w = lshr i64 %3, 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = zext i8 %i.n to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.013.i.i, %bb.o ]
  %i.ag = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %.0.i.i5) ; 2 uses
  %i.ah = load i32, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !130
  %i.aj = icmp slt i32 %i.ah, 1
  br i1 %i.aj, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.al = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aa, align 4, !tbaa !91
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0 = phi ptr [ %i.ak, %bb.g ], [ %i.br, %bb.k ] ; 4 uses
  %.0.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.bc, %bb.k ] ; 3 uses
  %i.an = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ao = load ptr, ptr %2, align 8, !tbaa !92
  %i.ap = icmp ult ptr %.0, %i.ao
  br i1 %i.ap, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.ar = ptrtoint ptr %.0 to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = load i32, ptr %i.ad, align 4, !tbaa !94
  %i.aw = icmp eq i32 %i.av, %i.au
  br i1 %i.aw, label %bb.j, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp sgt i32 %i.au, 0
  %i.ay = load ptr, ptr %i.af, align 8
  %i.az = icmp eq ptr %i.ay, null
  %or.cond.i.i = select i1 %i.ax, i1 %i.az, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.i
  %i.ba = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.au, i32 noundef %i.an) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ba, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ba, 1
  %i.bb = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bb, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37: ; preds = %bb.h, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.240 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.h ] ; 2 uses
  %i.bc = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -56
  %.0.copyload.i.i = load i16, ptr %.240, align 1 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -48
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !96
  %i.bg = zext i8 %i.bf to i16
  %i.bh = and i16 %.0.copyload.i.i, %i.bg
  %i.bi = zext nneg i16 %i.bh to i64              ; 2 uses
  %i.bj = and i64 %i.bi, 7
  %i.bk = icmp eq i64 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = lshr exact i64 %i.bi, 3
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bn, align 8, !tbaa !51
  %i.bo = zext i16 %.0.copyload.i.i to i64
  %i.bp = xor i64 %.sroa.01.0.copyload.i.i, %i.bo
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !99
  %i.br = tail call noundef ptr %i.bq(ptr noundef %i.ag, ptr noundef nonnull %.240, ptr noundef nonnull %2, i64 %i.bp, ptr noundef nonnull %i.bd, i64 noundef 0), !inline_history !330 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37
  %i.bt = load i32, ptr %i.ae, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.k, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.j
  %.1 = phi ptr [ %spec.select, %bb.j ], [ %i.br, %bb.k ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.j ], [ %i.bc, %bb.k ], [ %i.bc, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread37 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 1
  %.not14.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.bx = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !100
  %i.bz = tail call noundef ptr %i.by(ptr noundef %i.ag, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !331
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.l
  %.013.i.i = phi ptr [ %i.bz, %bb.l ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ] ; 7 uses
  %i.ca = load <2 x i32>, ptr %i.z, align 8, !tbaa !19
  %i.cb = add nsw <2 x i32> %i.ca, <i32 1, i32 -1>
  store <2 x i32> %i.cb, ptr %i.z, align 8, !tbaa !19
  %i.cc = load i32, ptr %i.ae, align 8, !tbaa !30
  %i.cd = icmp ne i32 %i.cc, %i.y
  store i32 0, ptr %i.ae, align 8, !tbaa !30
  %i.ce = icmp eq ptr %.013.i.i, null
  %or.cond = select i1 %i.cd, i1 true, i1 %i.ce, !prof !133
  br i1 %or.cond, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.m, !prof !133

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread: ; preds = %bb.f, %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cf = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cf

bb.m:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplIhLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.cg = load ptr, ptr %2, align 8, !tbaa !92
  %i.ch = icmp ult ptr %.013.i.i, %i.cg
  br i1 %i.ch, label %bb.o, label %bb.n, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.ci = load i16, ptr %4, align 8, !tbaa !25
  %i.cj = trunc i64 %i.f to i32
  %i.ck = zext i16 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = or i32 %i.cm, %i.cj
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.o:                                             ; preds = %bb.m
  %i.co = load i8, ptr %.013.i.i, align 1, !tbaa !51
  %i.cp = icmp eq i8 %i.co, %i.n
  br i1 %i.cp, label %bb.f, label %bb.p, !llvm.loop !332

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i.i7 = load i16, ptr %.013.i.i, align 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !96
  %i.cs = zext i8 %i.cr to i16
  %i.ct = and i16 %.0.copyload.i.i7, %i.cs
  %i.cu = zext nneg i16 %i.ct to i64              ; 2 uses
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp eq i64 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = lshr exact i64 %i.cu, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.da, align 8, !tbaa !51
  %i.db = zext i16 %.0.copyload.i.i7 to i64
  %i.dc = xor i64 %.sroa.01.0.copyload.i, %i.db
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !99
  %i.de = musttail call noundef ptr %i.dd(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.dc, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.de
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastGtR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "prefetcht0 256($0)", "r,~{dirflag},~{fpsr},~{flags}"(ptr %1) #26, !srcloc !131
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i5 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1    ; 2 uses
  %i.n = lshr i64 %3, 24
  %i.o = ptrtoint ptr %4 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = add i64 %i.r, %i.o
  %i.t = inttoptr i64 %i.s to ptr
  %6 = and i64 %i.n, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %6
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !51 ; 2 uses
  %i.v = lshr i64 %3, 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = zext i16 %.0.copyload.i.i to i32         ; 2 uses
  %sext.i = shl i32 %i.x, 24
  %i.y = ashr exact i32 %sext.i, 24
  %i.z = add nsw i32 %i.y, %i.x
  %i.aa = lshr i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.013.i.i, %bb.o ]
  %i.ai = tail call noundef ptr @_ZN6google8protobuf8internal8TcParser10AddMessageEPKNS1_16TcParseTableBaseERNS1_20RepeatedPtrFieldBaseEPNS0_5ArenaE(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %.0.i.i5) ; 2 uses
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !130 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !130
  %i.al = icmp slt i32 %i.aj, 1
  br i1 %i.al, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.an = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !91
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0 = phi ptr [ %i.am, %bb.g ], [ %i.bt, %bb.k ] ; 4 uses
  %.0.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.be, %bb.k ] ; 3 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.aq = load ptr, ptr %2, align 8, !tbaa !92
  %i.ar = icmp ult ptr %.0, %i.aq
  br i1 %i.ar, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.at = ptrtoint ptr %.0 to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %i.ax = load i32, ptr %i.af, align 4, !tbaa !94
  %i.ay = icmp eq i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.j:                                             ; preds = %bb.i
  %i.az = icmp sgt i32 %i.aw, 0
  %i.ba = load ptr, ptr %i.ah, align 8
  %i.bb = icmp eq ptr %i.ba, null
  %or.cond.i.i = select i1 %i.az, i1 %i.bb, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.i
  %i.bc = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.aw, i32 noundef %i.ap) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.bc, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.bc, 1
  %i.bd = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.bd, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39: ; preds = %bb.h, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.242 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.h ] ; 2 uses
  %i.be = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i) #31, !srcloc !95 ; 6 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -56
  %.0.copyload.i.i7 = load i16, ptr %.242, align 1 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -48
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !96
  %i.bi = zext i8 %i.bh to i16
  %i.bj = and i16 %.0.copyload.i.i7, %i.bi
  %i.bk = zext nneg i16 %i.bj to i64              ; 2 uses
  %i.bl = and i64 %i.bk, 7
  %i.bm = icmp eq i64 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = lshr exact i64 %i.bk, 3
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bp, align 8, !tbaa !51
  %i.bq = zext i16 %.0.copyload.i.i7 to i64
  %i.br = xor i64 %.sroa.01.0.copyload.i.i, %i.bq
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !99
  %i.bt = tail call noundef ptr %i.bs(ptr noundef %i.ai, ptr noundef nonnull %.242, ptr noundef nonnull %2, i64 %i.br, ptr noundef nonnull %i.bf, i64 noundef 0), !inline_history !333 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39
  %i.bv = load i32, ptr %i.ag, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !5

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.k, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.j
  %.1 = phi ptr [ %spec.select, %bb.j ], [ %i.bt, %bb.k ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i.i = phi ptr [ %.0.i.i, %bb.j ], [ %i.be, %bb.k ], [ %i.be, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ], [ %.0.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.1.i.i, i64 -47
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, 1
  %.not14.i.i = icmp eq i8 %i.by, 0
  br i1 %.not14.i.i, label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.bz = getelementptr inbounds i8, ptr %.1.i.i, i64 -16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cb = tail call noundef ptr %i.ca(ptr noundef %i.ai, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !334
  br label %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit

_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.l
  %.013.i.i = phi ptr [ %i.cb, %bb.l ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ] ; 6 uses
  %i.cc = load <2 x i32>, ptr %i.ab, align 8, !tbaa !19
  %i.cd = add nsw <2 x i32> %i.cc, <i32 1, i32 -1>
  store <2 x i32> %i.cd, ptr %i.ab, align 8, !tbaa !19
  %i.ce = load i32, ptr %i.ag, align 8, !tbaa !30
  %i.cf = icmp ne i32 %i.ce, %i.aa
  store i32 0, ptr %i.ag, align 8, !tbaa !30
  %i.cg = icmp eq ptr %.013.i.i, null
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg, !prof !133
  br i1 %or.cond, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread, label %bb.m, !prof !133

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES7_PS2_NS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlS7_E_EES7_S7_jRKT_.exit.thread: ; preds = %bb.f, %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.ch = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ch

bb.m:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser27RepeatedParseMessageAuxImplItLb1ELb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlS5_E_clES5_.exit
  %i.ci = load ptr, ptr %2, align 8, !tbaa !92
  %i.cj = icmp ult ptr %.013.i.i, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.n, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.ck = load i16, ptr %4, align 8, !tbaa !25
  %i.cl = trunc i64 %i.f to i32
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !19
  %i.cp = or i32 %i.co, %i.cl
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !19
  ret ptr %.013.i.i

bb.o:                                             ; preds = %bb.m
  %.0.copyload.i.i8 = load i16, ptr %.013.i.i, align 1 ; 3 uses
  %i.cq = icmp eq i16 %.0.copyload.i.i8, %.0.copyload.i.i
  br i1 %i.cq, label %bb.f, label %bb.p, !llvm.loop !335

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !96
  %i.ct = zext i8 %i.cs to i16
  %i.cu = and i16 %.0.copyload.i.i8, %i.ct
  %i.cv = zext nneg i16 %i.cu to i64              ; 2 uses
  %i.cw = and i64 %i.cv, 7
  %i.cx = icmp eq i64 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = lshr exact i64 %i.cv, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.db, align 8, !tbaa !51
  %i.dc = zext i16 %.0.copyload.i.i8 to i64
  %i.dd = xor i64 %.sroa.01.0.copyload.i, %i.dc
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !99
  %i.df = musttail call noundef ptr %i.de(ptr noundef nonnull %0, ptr noundef nonnull %.013.i.i, ptr noundef nonnull %2, i64 %i.dd, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.df
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastF32S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = lshr i64 %3, 16
  %i.e = and i64 %i.d, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %5                          ; 2 uses
  %.0.copyload.i.i = load i32, ptr %i.c, align 1
  %i.h = lshr i64 %3, 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  store i32 %.0.copyload.i.i, ptr %i.i, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !92
  %i.l = icmp ult ptr %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %4, align 8, !tbaa !25
  %i.n = trunc i64 %i.g to i32
  %i.o = zext i16 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.cg = zext i8 %i.cf to i16
  %i.ch = and i16 %.0.copyload.i.i, %i.cg
  %i.ci = zext nneg i16 %i.ch to i64              ; 2 uses
  %i.cj = and i64 %i.ci, 7
  %i.ck = icmp eq i64 %i.cj, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = lshr exact i64 %i.ci, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.co, align 8, !tbaa !51
  %i.cp = zext i16 %.0.copyload.i.i to i64
  %i.cq = xor i64 %.sroa.01.0.copyload.i, %i.cp
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !99
  %i.cs = musttail call noundef ptr %i.cr(ptr noundef %0, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2, i64 %i.cq, ptr noundef nonnull %4, i64 noundef %5), !inline_history !4
  ret ptr %i.cs
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf8internal8TcParser14AddUnknownEnumEPNS0_11MessageLiteEPKNS1_16TcParseTableBaseEji(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.b(ptr noundef null, ptr noundef null, ptr noundef null, i64 0, ptr noundef null, i64 noundef 0), !inline_history !140
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !370
  %i.e = lshr i32 %2, 3
  tail call void %i.d(ptr noundef %0, i32 noundef %i.e, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser21MpUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %i.d = sext i8 %i.c to i64                      ; 2 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %bb.p, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.g = load i8, ptr %i.b, align 1, !tbaa !51
  %i.h = sext i8 %i.g to i64
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 -128, i64 7) ; 4 uses
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %bb.o, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.l = load i8, ptr %i.f, align 1, !tbaa !51
  %i.m = sext i8 %i.l to i64
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 -128, i64 14) ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.n, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.k, align 1, !tbaa !51
  %i.r = sext i8 %i.q to i64
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 -128, i64 21)
  %i.t = and i64 %i.s, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.n, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.w = load i8, ptr %i.p, align 1, !tbaa !51
  %i.x = sext i8 %i.w to i64
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 -128, i64 28)
  %i.z = and i64 %i.y, %i.n                       ; 4 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.n, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !51
  %i.ad = sext i8 %i.ac to i64
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 -128, i64 35)
  %i.af = and i64 %i.ae, %i.t                     ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  br i1 %i.ag, label %bb.n, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !51
  %i.aj = sext i8 %i.ai to i64
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 -128, i64 42)
  %i.al = and i64 %i.ak, %i.z                     ; 4 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.n, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !51
  %i.ap = sext i8 %i.ao to i64
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 -128, i64 49)
  %i.ar = and i64 %i.aq, %i.af                    ; 6 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.n, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.au = load i8, ptr %i.an, align 1, !tbaa !51
  %i.av = zext i8 %i.au to i64
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 -128, i64 56)
  %i.ax = and i64 %i.aw, %i.al                    ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  br i1 %i.ay, label %bb.n, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !51  ; 3 uses
  %i.bb = icmp eq i8 %i.ba, 1
  br i1 %i.bb, label %bb.n, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp sgt i8 %i.ba, -1
  br i1 %.not.i, label %bb.l, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.bc = and i8 %i.ba, 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.ax) #31, !srcloc !138
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.065 = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.v, %bb.e ], [ %i.ab, %bb.f ], [ %i.ah, %bb.g ], [ %i.an, %bb.h ], [ %i.at, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.m ], [ %i.az, %bb.l ]
  %.050 = phi i64 [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.al, %bb.g ], [ %i.al, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ], [ %i.be, %bb.m ], [ %i.ax, %bb.l ]
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ]
  %i.bf = and i64 %.0, %.050
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.166 = phi ptr [ %i.f, %bb.b ], [ %.065, %bb.n ]
  %.1 = phi i64 [ %i.i, %bb.b ], [ %i.bf, %bb.n ]
  %i.bg = and i64 %.1, %i.d
  br label %bb.p

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.k
  %i.bh = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.bh

bb.p:                                             ; preds = %bb.o, %bb.a
  %.051.ph = phi i64 [ %i.d, %bb.a ], [ %i.bg, %bb.o ]
  %.0.i.ph = phi ptr [ %i.b, %bb.a ], [ %.166, %bb.o ] ; 4 uses
  %i.bi = trunc i64 %.051.ph to i32
  tail call void @_ZN6google8protobuf8internal8TcParser14AddUnknownEnumEPNS0_11MessageLiteEPKNS1_16TcParseTableBaseEji(ptr noundef %0, ptr noundef %4, i32 noundef %i.a, i32 noundef %i.bi)
  %i.bj = load ptr, ptr %2, align 8, !tbaa !92
  %i.bk = icmp ult ptr %.0.i.ph, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i16, ptr %4, align 8, !tbaa !25
  %i.bm = trunc i64 %5 to i32
  %i.bn = zext i16 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19
  %i.bq = or i32 %i.bp, %i.bm
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !19
  ret ptr %.0.i.ph

bb.r:                                             ; preds = %bb.p
  %.0.copyload.i.i = load i16, ptr %.0.i.ph, align 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !96
  %i.bt = zext i8 %i.bs to i16
  %i.bu = and i16 %.0.copyload.i.i, %i.bt
  %i.bv = zext nneg i16 %i.bu to i64              ; 2 uses
  %i.bw = and i64 %i.bv, 7
  %i.bx = icmp eq i64 %i.bw, 0
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = lshr exact i64 %i.bv, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.cb, align 8, !tbaa !51
  %i.cc = zext i16 %.0.copyload.i.i to i64
  %i.cd = xor i64 %.sroa.01.0.copyload.i, %i.cc
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cf = musttail call noundef ptr %i.ce(ptr noundef %0, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2, i64 %i.cd, ptr noundef nonnull %4, i64 noundef %5), !inline_history !4
  ret ptr %i.cf
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 24
  %i.d = ptrtoint ptr %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %6 = and i64 %i.c, 255
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !51    ; 2 uses
  %i.n = sext i8 %i.m to i64                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, -1
  br i1 %i.o, label %bb.r, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.q = load i8, ptr %i.l, align 1, !tbaa !51
  %i.r = sext i8 %i.q to i64
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 -128, i64 7) ; 4 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.q, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !51
  %i.w = sext i8 %i.v to i64
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 -128, i64 14) ; 4 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.p, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !51
  %i.ab = sext i8 %i.aa to i64
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 -128, i64 21)
  %i.ad = and i64 %i.ac, %i.s                     ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.p, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 28)
  %i.aj = and i64 %i.ai, %i.x                     ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.p, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.am = load i8, ptr %i.af, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 35)
  %i.ap = and i64 %i.ao, %i.ad                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.al, align 1, !tbaa !51
  %i.at = sext i8 %i.as to i64
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 -128, i64 42)
  %i.av = and i64 %i.au, %i.aj                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.p, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 49)
  %i.bb = and i64 %i.ba, %i.ap                    ; 6 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 56)
  %i.bh = and i64 %i.bg, %i.av                    ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !51  ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %.not.i5 = icmp sgt i8 %i.bk, -1
  br i1 %.not.i5, label %bb.n, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bm = and i8 %i.bk, 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bh) #31, !srcloc !138
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.068 = phi ptr [ %i.u, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %.053 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ], [ %i.av, %bb.i ], [ %i.av, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %i.bo, %bb.o ], [ %i.bh, %bb.n ]
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ], [ %i.bb, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %i.bp = and i64 %.0, %.053
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.169 = phi ptr [ %i.p, %bb.d ], [ %.068, %bb.p ]
  %.1 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.p ]
  %i.bq = and i64 %.1, %i.n
  br label %bb.r

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.m
  %i.br = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.br

bb.r:                                             ; preds = %bb.q, %bb.c
  %.054.ph = phi i64 [ %i.n, %bb.c ], [ %i.bq, %bb.q ]
  %.0.i.ph = phi ptr [ %i.l, %bb.c ], [ %.169, %bb.q ] ; 4 uses
  %i.bs = trunc i64 %.054.ph to i32               ; 3 uses
  %i.bt = ptrtoint ptr %.sroa.03.0.copyload.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bt to i32
  %i.bu = icmp sge i32 %i.bs, %.sroa.0.0.extract.trunc.i
  %.sroa.0.4.extract.shift.i = lshr i64 %i.bt, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.bv = icmp sle i32 %i.bs, %.sroa.0.4.extract.trunc.i
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %bb.t, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.bx = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.bx

bb.t:                                             ; preds = %bb.r
  %i.by = lshr i64 %3, 16
  %i.bz = and i64 %i.by, 255
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = or i64 %i.ca, %5                        ; 2 uses
  %i.cc = lshr i64 %3, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  store i32 %i.bs, ptr %i.cd, align 4, !tbaa !19
  %i.ce = load ptr, ptr %2, align 8, !tbaa !92
  %i.cf = icmp ult ptr %.0.i.ph, %i.ce
  br i1 %i.cf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i16, ptr %4, align 8, !tbaa !25
  %i.ch = trunc i64 %i.cb to i32
  %i.ci = zext i16 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19
  %i.cl = or i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !19
  ret ptr %.0.i.ph

bb.v:                                             ; preds = %bb.t
  %.0.copyload.i.i = load i16, ptr %.0.i.ph, align 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !96
  %i.co = zext i8 %i.cn to i16
  %i.cp = and i16 %.0.copyload.i.i, %i.co
  %i.cq = zext nneg i16 %i.cp to i64              ; 2 uses
  %i.cr = and i64 %i.cq, 7
  %i.cs = icmp eq i64 %i.cr, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = lshr exact i64 %i.cq, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.cw, align 8, !tbaa !51
  %i.cx = zext i16 %.0.copyload.i.i to i64
  %i.cy = xor i64 %.sroa.01.0.copyload.i, %i.cx
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !99
  %i.da = musttail call noundef ptr %i.cz(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2, i64 %i.cy, ptr noundef nonnull %4, i64 noundef %i.cb), !inline_history !4
  ret ptr %i.da
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 24
  %i.d = ptrtoint ptr %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %6 = and i64 %i.c, 255
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !51    ; 2 uses
  %i.n = sext i8 %i.m to i64                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, -1
  br i1 %i.o, label %bb.r, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.l, align 1, !tbaa !51
  %i.r = sext i8 %i.q to i64
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 -128, i64 7) ; 4 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.q, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !51
  %i.w = sext i8 %i.v to i64
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 -128, i64 14) ; 4 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.p, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !51
  %i.ab = sext i8 %i.aa to i64
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 -128, i64 21)
  %i.ad = and i64 %i.ac, %i.s                     ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.p, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 28)
  %i.aj = and i64 %i.ai, %i.x                     ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.p, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.af, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 35)
  %i.ap = and i64 %i.ao, %i.ad                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.as = load i8, ptr %i.al, align 1, !tbaa !51
  %i.at = sext i8 %i.as to i64
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 -128, i64 42)
  %i.av = and i64 %i.au, %i.aj                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.p, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 49)
  %i.bb = and i64 %i.ba, %i.ap                    ; 6 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 56)
  %i.bh = and i64 %i.bg, %i.av                    ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !51  ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %.not.i5 = icmp sgt i8 %i.bk, -1
  br i1 %.not.i5, label %bb.n, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bm = and i8 %i.bk, 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bh) #31, !srcloc !138
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.068 = phi ptr [ %i.u, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %.053 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ], [ %i.av, %bb.i ], [ %i.av, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %i.bo, %bb.o ], [ %i.bh, %bb.n ]
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ], [ %i.bb, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %i.bp = and i64 %.0, %.053
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.169 = phi ptr [ %i.p, %bb.d ], [ %.068, %bb.p ]
  %.1 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.p ]
  %i.bq = and i64 %.1, %i.n
  br label %bb.r

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.m
  %i.br = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.br

bb.r:                                             ; preds = %bb.q, %bb.c
  %.054.ph = phi i64 [ %i.n, %bb.c ], [ %i.bq, %bb.q ]
  %.0.i.ph = phi ptr [ %i.l, %bb.c ], [ %.169, %bb.q ] ; 4 uses
  %i.bs = trunc i64 %.054.ph to i32               ; 3 uses
  %i.bt = ptrtoint ptr %.sroa.03.0.copyload.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bt to i32
  %i.bu = icmp sge i32 %i.bs, %.sroa.0.0.extract.trunc.i
  %.sroa.0.4.extract.shift.i = lshr i64 %i.bt, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.bv = icmp sle i32 %i.bs, %.sroa.0.4.extract.trunc.i
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %bb.t, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.bx = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.bx

bb.t:                                             ; preds = %bb.r
  %i.by = lshr exact i64 %3, 16
  %i.bz = and i64 %i.by, 255
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = or i64 %i.ca, %5                        ; 2 uses
  %i.cc = lshr i64 %3, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  store i32 %i.bs, ptr %i.cd, align 4, !tbaa !19
  %i.ce = load ptr, ptr %2, align 8, !tbaa !92
  %i.cf = icmp ult ptr %.0.i.ph, %i.ce
  br i1 %i.cf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i16, ptr %4, align 8, !tbaa !25
  %i.ch = trunc i64 %i.cb to i32
  %i.ci = zext i16 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19
  %i.cl = or i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !19
  ret ptr %.0.i.ph

bb.v:                                             ; preds = %bb.t
  %.0.copyload.i.i = load i16, ptr %.0.i.ph, align 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !96
  %i.co = zext i8 %i.cn to i16
  %i.cp = and i16 %.0.copyload.i.i, %i.co
  %i.cq = zext nneg i16 %i.cp to i64              ; 2 uses
  %i.cr = and i64 %i.cq, 7
  %i.cs = icmp eq i64 %i.cr, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = lshr exact i64 %i.cq, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.cw, align 8, !tbaa !51
  %i.cx = zext i16 %.0.copyload.i.i to i64
  %i.cy = xor i64 %.sroa.01.0.copyload.i, %i.cx
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !99
  %i.da = musttail call noundef ptr %i.cz(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %2, i64 %i.cy, ptr noundef nonnull %4, i64 noundef %i.cb), !inline_history !4
  ret ptr %i.da
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 24
  %i.d = ptrtoint ptr %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %6 = and i64 %i.c, 255
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !51 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !51    ; 2 uses
  %i.n = sext i8 %i.m to i64                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, -1
  br i1 %i.o, label %bb.r, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.q = load i8, ptr %i.l, align 1, !tbaa !51
  %i.r = sext i8 %i.q to i64
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 -128, i64 7) ; 4 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.q, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !51
  %i.w = sext i8 %i.v to i64
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 -128, i64 14) ; 4 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.p, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !51
  %i.ab = sext i8 %i.aa to i64
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 -128, i64 21)
  %i.ad = and i64 %i.ac, %i.s                     ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.p, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 28)
  %i.aj = and i64 %i.ai, %i.x                     ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.p, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.am = load i8, ptr %i.af, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 35)
  %i.ap = and i64 %i.ao, %i.ad                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.al, align 1, !tbaa !51
  %i.at = sext i8 %i.as to i64
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 -128, i64 42)
  %i.av = and i64 %i.au, %i.aj                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.p, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 49)
  %i.bb = and i64 %i.ba, %i.ap                    ; 6 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 56)
  %i.bh = and i64 %i.bg, %i.av                    ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !51  ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %.not.i6 = icmp sgt i8 %i.bk, -1
  br i1 %.not.i6, label %bb.n, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bm = and i8 %i.bk, 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bh) #31, !srcloc !138
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.070 = phi ptr [ %i.u, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %.055 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ], [ %i.av, %bb.i ], [ %i.av, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %i.bo, %bb.o ], [ %i.bh, %bb.n ]
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ], [ %i.bb, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %i.bp = and i64 %.0, %.055
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.171 = phi ptr [ %i.p, %bb.d ], [ %.070, %bb.p ]
  %.1 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.p ]
  %i.bq = and i64 %.1, %i.n
  br label %bb.r

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.m
  %i.br = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.br

bb.r:                                             ; preds = %bb.q, %bb.c
  %.056.ph = phi i64 [ %i.n, %bb.c ], [ %i.bq, %bb.q ] ; 2 uses
  %.0.i7.ph = phi ptr [ %i.l, %bb.c ], [ %.171, %bb.q ] ; 4 uses
  %i.bs = trunc i64 %.056.ph to i32               ; 3 uses
  %i.bt = load i32, ptr %.sroa.03.0.copyload.i, align 4, !tbaa !19 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = lshr i32 %i.bt, 16
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %sext = shl i64 %.056.ph, 32
  %i.bx = ashr exact i64 %sext, 32
  %sext.i = shl i64 %i.bu, 48
  %i.by = ashr exact i64 %sext.i, 48
  %i.bz = sub nsw i64 %i.bx, %i.by                ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  br i1 %i.ca, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19 ; 3 uses
  %i.cd = sub nuw nsw i64 %i.bz, %i.bw            ; 3 uses
  %.mask.i = and i32 %i.cc, 65535
  %i.ce = zext nneg i32 %.mask.i to i64
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.t, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.cg = lshr i32 %i.cc, 16
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i32 %i.cc, 5
  %i.cj = and i32 %i.ci, 2047
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.0.i = phi i64 [ 0, %bb.t ], [ %i.ct, %bb.v ]  ; 3 uses
  %i.cn = icmp ult i64 %.0.i, %i.ch
  br i1 %i.cn, label %bb.v, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !19 ; 2 uses
  %.not.i5 = icmp eq i32 %i.cp, %i.bs
  %i.cq = shl nuw nsw i64 %.0.i, 1
  %i.cr = icmp sgt i32 %i.cp, %i.bs
  %i.cs = select i1 %i.cr, i64 1, i64 2
  %i.ct = add nuw nsw i64 %i.cs, %i.cq
  br i1 %.not.i5, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.u, !llvm.loop !8

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit: ; preds = %bb.s
  %i.cu = lshr i64 %i.cd, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.cy = trunc nuw nsw i64 %i.cd to i32
  %i.cz = and i32 %i.cy, 31
  %i.da = lshr i32 %i.cx, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77, !prof !132

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77: ; preds = %bb.u, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.dc = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.dc

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread: ; preds = %bb.v, %bb.r, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.dd = lshr i64 %3, 16
  %i.de = and i64 %i.dd, 255
  %i.df = shl nuw i64 1, %i.de
  %i.dg = or i64 %i.df, %5                        ; 2 uses
  %i.dh = lshr i64 %3, 48
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  store i32 %i.bs, ptr %i.di, align 4, !tbaa !19
  %i.dj = load ptr, ptr %2, align 8, !tbaa !92
  %i.dk = icmp ult ptr %.0.i7.ph, %i.dj
  br i1 %i.dk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %i.dl = load i16, ptr %4, align 8, !tbaa !25
  %i.dm = trunc i64 %i.dg to i32
  %i.dn = zext i16 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = or i32 %i.dp, %i.dm
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !19
  ret ptr %.0.i7.ph

bb.x:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %.0.copyload.i.i = load i16, ptr %.0.i7.ph, align 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !96
  %i.dt = zext i8 %i.ds to i16
  %i.du = and i16 %.0.copyload.i.i, %i.dt
  %i.dv = zext nneg i16 %i.du to i64              ; 2 uses
  %i.dw = and i64 %i.dv, 7
  %i.dx = icmp eq i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = lshr exact i64 %i.dv, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.eb, align 8, !tbaa !51
  %i.ec = zext i16 %.0.copyload.i.i to i64
  %i.ed = xor i64 %.sroa.01.0.copyload.i, %i.ec
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !99
  %i.ef = musttail call noundef ptr %i.ee(ptr noundef nonnull %0, ptr noundef nonnull %.0.i7.ph, ptr noundef nonnull %2, i64 %i.ed, ptr noundef nonnull %4, i64 noundef %i.dg), !inline_history !4
  ret ptr %i.ef
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvS2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 24
  %i.d = ptrtoint ptr %4 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %6 = and i64 %i.c, 255
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !51 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !51    ; 2 uses
  %i.n = sext i8 %i.m to i64                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, -1
  br i1 %i.o, label %bb.r, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.l, align 1, !tbaa !51
  %i.r = sext i8 %i.q to i64
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 -128, i64 7) ; 4 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.q, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !51
  %i.w = sext i8 %i.v to i64
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 -128, i64 14) ; 4 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.p, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !51
  %i.ab = sext i8 %i.aa to i64
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 -128, i64 21)
  %i.ad = and i64 %i.ac, %i.s                     ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.p, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 28)
  %i.aj = and i64 %i.ai, %i.x                     ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.p, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.af, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 35)
  %i.ap = and i64 %i.ao, %i.ad                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.p, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.as = load i8, ptr %i.al, align 1, !tbaa !51
  %i.at = sext i8 %i.as to i64
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 -128, i64 42)
  %i.av = and i64 %i.au, %i.aj                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.p, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 49)
  %i.bb = and i64 %i.ba, %i.ap                    ; 6 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.p, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 56)
  %i.bh = and i64 %i.bg, %i.av                    ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !51  ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  %.not.i6 = icmp sgt i8 %i.bk, -1
  br i1 %.not.i6, label %bb.n, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bm = and i8 %i.bk, 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bh) #31, !srcloc !138
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.070 = phi ptr [ %i.u, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ], [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %.055 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.aj, %bb.g ], [ %i.aj, %bb.h ], [ %i.av, %bb.i ], [ %i.av, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %i.bo, %bb.o ], [ %i.bh, %bb.n ]
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ], [ %i.bb, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %i.bp = and i64 %.0, %.055
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.171 = phi ptr [ %i.p, %bb.d ], [ %.070, %bb.p ]
  %.1 = phi i64 [ %i.s, %bb.d ], [ %i.bp, %bb.p ]
  %i.bq = and i64 %.1, %i.n
  br label %bb.r

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.m
  %i.br = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.br

bb.r:                                             ; preds = %bb.q, %bb.c
  %.056.ph = phi i64 [ %i.n, %bb.c ], [ %i.bq, %bb.q ] ; 2 uses
  %.0.i7.ph = phi ptr [ %i.l, %bb.c ], [ %.171, %bb.q ] ; 4 uses
  %i.bs = trunc i64 %.056.ph to i32               ; 3 uses
  %i.bt = load i32, ptr %.sroa.03.0.copyload.i, align 4, !tbaa !19 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = lshr i32 %i.bt, 16
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %sext = shl i64 %.056.ph, 32
  %i.bx = ashr exact i64 %sext, 32
  %sext.i = shl i64 %i.bu, 48
  %i.by = ashr exact i64 %sext.i, 48
  %i.bz = sub nsw i64 %i.bx, %i.by                ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  br i1 %i.ca, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19 ; 3 uses
  %i.cd = sub nuw nsw i64 %i.bz, %i.bw            ; 3 uses
  %.mask.i = and i32 %i.cc, 65535
  %i.ce = zext nneg i32 %.mask.i to i64
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.t, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.cg = lshr i32 %i.cc, 16
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i32 %i.cc, 5
  %i.cj = and i32 %i.ci, 2047
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.0.i = phi i64 [ 0, %bb.t ], [ %i.ct, %bb.v ]  ; 3 uses
  %i.cn = icmp ult i64 %.0.i, %i.ch
  br i1 %i.cn, label %bb.v, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !19 ; 2 uses
  %.not.i5 = icmp eq i32 %i.cp, %i.bs
  %i.cq = shl nuw nsw i64 %.0.i, 1
  %i.cr = icmp sgt i32 %i.cp, %i.bs
  %i.cs = select i1 %i.cr, i64 1, i64 2
  %i.ct = add nuw nsw i64 %i.cs, %i.cq
  br i1 %.not.i5, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.u, !llvm.loop !8

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit: ; preds = %bb.s
  %i.cu = lshr i64 %i.cd, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.cy = trunc nuw nsw i64 %i.cd to i32
  %i.cz = and i32 %i.cy, 31
  %i.da = lshr i32 %i.cx, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77, !prof !132

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread77: ; preds = %bb.u, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.dc = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.dc

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread: ; preds = %bb.v, %bb.r, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.dd = lshr exact i64 %3, 16
  %i.de = and i64 %i.dd, 255
  %i.df = shl nuw i64 1, %i.de
  %i.dg = or i64 %i.df, %5                        ; 2 uses
  %i.dh = lshr i64 %3, 48
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh
  store i32 %i.bs, ptr %i.di, align 4, !tbaa !19
  %i.dj = load ptr, ptr %2, align 8, !tbaa !92
  %i.dk = icmp ult ptr %.0.i7.ph, %i.dj
  br i1 %i.dk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %i.dl = load i16, ptr %4, align 8, !tbaa !25
  %i.dm = trunc i64 %i.dg to i32
  %i.dn = zext i16 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = or i32 %i.dp, %i.dm
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !19
  ret ptr %.0.i7.ph

bb.x:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %.0.copyload.i.i = load i16, ptr %.0.i7.ph, align 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !96
  %i.dt = zext i8 %i.ds to i16
  %i.du = and i16 %.0.copyload.i.i, %i.dt
  %i.dv = zext nneg i16 %i.du to i64              ; 2 uses
  %i.dw = and i64 %i.dv, 7
  %i.dx = icmp eq i64 %i.dw, 0
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = lshr exact i64 %i.dv, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.eb, align 8, !tbaa !51
  %i.ec = zext i16 %.0.copyload.i.i to i64
  %i.ed = xor i64 %.sroa.01.0.copyload.i, %i.ec
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !99
  %i.ef = musttail call noundef ptr %i.ee(ptr noundef nonnull %0, ptr noundef nonnull %.0.i7.ph, ptr noundef nonnull %2, i64 %i.ed, ptr noundef nonnull %4, i64 noundef %i.dg), !inline_history !4
  ret ptr %i.ef
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6google8protobuf8internal8TcParser18GetUnknownFieldOpsEPKNS1_16TcParseTableBaseE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = tail call noundef ptr %i.b(ptr noundef null, ptr noundef null, ptr noundef null, i64 0, ptr noundef null, i64 noundef 0)
  ret ptr %i.c
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.p = load i8, ptr %1, align 1, !tbaa !51
  %i.q = lshr i64 %3, 24
  %i.r = ptrtoint ptr %4 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.r
  %i.w = inttoptr i64 %i.v to ptr
  %6 = and i64 %i.q, 255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.y = ptrtoint ptr %.sroa.03.0.copyload.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.y to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %i.y, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.0.i7.ph, %bb.ab ] ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !51  ; 2 uses
  %i.ae = sext i8 %i.ad to i64                    ; 2 uses
  %i.af = icmp sgt i8 %i.ad, -1
  br i1 %i.af, label %bb.u, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !51
  %i.ai = sext i8 %i.ah to i64
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 -128, i64 7) ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.t, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 14) ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %bb.s, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !51
  %i.as = sext i8 %i.ar to i64
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 -128, i64 21)
  %i.au = and i64 %i.at, %i.aj                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, -1
  br i1 %i.av, label %bb.s, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !51
  %i.ay = sext i8 %i.ax to i64
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 -128, i64 28)
  %i.ba = and i64 %i.az, %i.ao                    ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.s, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !51
  %i.be = sext i8 %i.bd to i64
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 -128, i64 35)
  %i.bg = and i64 %i.bf, %i.au                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.s, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.bk = sext i8 %i.bj to i64
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 -128, i64 42)
  %i.bm = and i64 %i.bl, %i.ba                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.s, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bq = sext i8 %i.bp to i64
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 -128, i64 49)
  %i.bs = and i64 %i.br, %i.bg                    ; 6 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.s, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bw = zext i8 %i.bv to i64
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 -128, i64 56)
  %i.by = and i64 %i.bx, %i.bm                    ; 5 uses
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.s, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 3 uses
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !51  ; 3 uses
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %.not.i6 = icmp sgt i8 %i.cb, -1
  br i1 %.not.i6, label %bb.q, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.cd = and i8 %i.cb, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.by) #31, !srcloc !138
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.073 = phi ptr [ %i.al, %bb.h ], [ %i.aq, %bb.i ], [ %i.aw, %bb.j ], [ %i.bc, %bb.k ], [ %i.bi, %bb.l ], [ %i.bo, %bb.m ], [ %i.bu, %bb.n ], [ %i.ca, %bb.o ], [ %i.ca, %bb.r ], [ %i.ca, %bb.q ]
  %.058 = phi i64 [ %i.ao, %bb.h ], [ %i.ao, %bb.i ], [ %i.ba, %bb.j ], [ %i.ba, %bb.k ], [ %i.bm, %bb.l ], [ %i.bm, %bb.m ], [ %i.by, %bb.n ], [ %i.by, %bb.o ], [ %i.cf, %bb.r ], [ %i.by, %bb.q ]
  %.0 = phi i64 [ %i.aj, %bb.h ], [ %i.au, %bb.i ], [ %i.au, %bb.j ], [ %i.bg, %bb.k ], [ %i.bg, %bb.l ], [ %i.bs, %bb.m ], [ %i.bs, %bb.n ], [ %i.bs, %bb.o ], [ %i.bs, %bb.r ], [ %i.bs, %bb.q ]
  %i.cg = and i64 %.0, %.058
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.174 = phi ptr [ %i.ag, %bb.g ], [ %.073, %bb.s ]
  %.1 = phi i64 [ %i.aj, %bb.g ], [ %i.cg, %bb.s ]
  %i.ch = and i64 %.1, %i.ae
  br label %bb.u

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.p
  %i.ci = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ci

bb.u:                                             ; preds = %bb.t, %bb.f
  %.059.ph = phi i64 [ %i.ae, %bb.f ], [ %i.ch, %bb.t ]
  %.0.i7.ph = phi ptr [ %i.ac, %bb.f ], [ %.174, %bb.t ] ; 6 uses
  %i.cj = trunc i64 %.059.ph to i32               ; 3 uses
  %i.ck = icmp sge i32 %i.cj, %.sroa.0.0.extract.trunc.i
  %i.cl = icmp sle i32 %i.cj, %.sroa.0.4.extract.trunc.i
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.w, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cn = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cn

bb.w:                                             ; preds = %bb.u
  %i.co = load i32, ptr %i.h, align 4, !tbaa !135
  %i.cp = and i32 %i.co, 1
  %i.cq = icmp eq i32 %i.cp, 0                    ; 3 uses
  %i.cr = load i32, ptr %i.z, align 4, !tbaa !137 ; 4 uses
  br i1 %i.cq, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !51
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i = phi ptr [ %i.cs, %bb.x ], [ %i.h, %bb.w ]
  %i.cu = phi i32 [ %i.ct, %bb.x ], [ 2, %bb.w ]
  %i.cv = icmp eq i32 %i.cr, %i.cu
  %i.cw = add nsw i32 %i.cr, 1                    ; 3 uses
  br i1 %i.cv, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, !prof !20

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i, i1 noundef zeroext %i.cq, i32 noundef %i.cr, i32 noundef %i.cw)
  %i.cx = load ptr, ptr %i.aa, align 8, !tbaa !51
  %.pre38.i = load i32, ptr %i.z, align 4, !tbaa !137
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %i.cy = phi i32 [ %.pre38.i, %bb.y ], [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.pn.i = phi ptr [ %i.cx, %bb.y ], [ %.0.v.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ] ; 2 uses
  %.0.i8 = phi i1 [ false, %bb.y ], [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.029.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  store i32 %i.cw, ptr %i.z, align 4, !tbaa !137
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.029.i, i64 %i.cz
  store i32 %i.cj, ptr %i.da, align 4, !tbaa !19
  %i.db = load i32, ptr %i.z, align 4, !tbaa !137
  %i.dc = icmp eq i32 %i.cw, %i.db
  tail call void @llvm.assume(i1 %i.dc)
  br i1 %.0.i8, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i
  %i.dd = load ptr, ptr %i.aa, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, %bb.z
  %.sink120 = phi ptr [ %i.dd, %bb.z ], [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i ]
  %i.de = icmp eq ptr %.pn.i, %.sink120
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load ptr, ptr %2, align 8, !tbaa !92
  %i.dg = icmp ult ptr %.0.i7.ph, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.dh = load i16, ptr %4, align 8, !tbaa !25
  %i.di = trunc i64 %i.f to i32
  %i.dj = zext i16 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %i.dm = or i32 %i.dl, %i.di
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !19
  ret ptr %.0.i7.ph

bb.ab:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.dn = load i8, ptr %.0.i7.ph, align 1, !tbaa !51
  %i.do = icmp eq i8 %i.dn, %i.p
  br i1 %i.do, label %bb.f, label %bb.ac, !llvm.loop !371

bb.ac:                                            ; preds = %bb.ab
  %.0.copyload.i.i = load i16, ptr %.0.i7.ph, align 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !96
  %i.dr = zext i8 %i.dq to i16
  %i.ds = and i16 %.0.copyload.i.i, %i.dr
  %i.dt = zext nneg i16 %i.ds to i64              ; 2 uses
  %i.du = and i64 %i.dt, 7
  %i.dv = icmp eq i64 %i.du, 0
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = lshr exact i64 %i.dt, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dz, align 8, !tbaa !51
  %i.ea = zext i16 %.0.copyload.i.i to i64
  %i.eb = xor i64 %.sroa.01.0.copyload.i, %i.ea
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !99
  %i.ed = musttail call noundef ptr %i.ec(ptr noundef nonnull %0, ptr noundef nonnull %.0.i7.ph, ptr noundef nonnull %2, i64 %i.eb, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.ed
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.p = lshr i64 %3, 24
  %i.q = ptrtoint ptr %4 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.q
  %i.v = inttoptr i64 %i.u to ptr
  %6 = and i64 %i.p, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.x = ptrtoint ptr %.sroa.03.0.copyload.i to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.x to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %i.x, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.0.i7.ph, %bb.ab ] ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !51  ; 2 uses
  %i.ad = sext i8 %i.ac to i64                    ; 2 uses
  %i.ae = icmp sgt i8 %i.ac, -1
  br i1 %i.ae, label %bb.u, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 7) ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %bb.t, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.al = load i8, ptr %i.af, align 1, !tbaa !51
  %i.am = sext i8 %i.al to i64
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 -128, i64 14) ; 4 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.s, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.ar = sext i8 %i.aq to i64
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 -128, i64 21)
  %i.at = and i64 %i.as, %i.ai                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.s, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !51
  %i.ax = sext i8 %i.aw to i64
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 -128, i64 28)
  %i.az = and i64 %i.ay, %i.an                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.s, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !51
  %i.bd = sext i8 %i.bc to i64
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 -128, i64 35)
  %i.bf = and i64 %i.be, %i.at                    ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.s, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.bj = sext i8 %i.bi to i64
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 -128, i64 42)
  %i.bl = and i64 %i.bk, %i.az                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  br i1 %i.bm, label %bb.s, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.bp = sext i8 %i.bo to i64
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 -128, i64 49)
  %i.br = and i64 %i.bq, %i.bf                    ; 6 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.s, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !51
  %i.bv = zext i8 %i.bu to i64
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 -128, i64 56)
  %i.bx = and i64 %i.bw, %i.bl                    ; 5 uses
  %i.by = icmp sgt i64 %i.bx, -1
  br i1 %i.by, label %bb.s, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !51  ; 3 uses
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %.not.i6 = icmp sgt i8 %i.ca, -1
  br i1 %.not.i6, label %bb.q, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.cc = and i8 %i.ca, 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bx) #31, !srcloc !138
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.075 = phi ptr [ %i.ak, %bb.h ], [ %i.ap, %bb.i ], [ %i.av, %bb.j ], [ %i.bb, %bb.k ], [ %i.bh, %bb.l ], [ %i.bn, %bb.m ], [ %i.bt, %bb.n ], [ %i.bz, %bb.o ], [ %i.bz, %bb.r ], [ %i.bz, %bb.q ]
  %.060 = phi i64 [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bx, %bb.n ], [ %i.bx, %bb.o ], [ %i.ce, %bb.r ], [ %i.bx, %bb.q ]
  %.0 = phi i64 [ %i.ai, %bb.h ], [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ], [ %i.br, %bb.m ], [ %i.br, %bb.n ], [ %i.br, %bb.o ], [ %i.br, %bb.r ], [ %i.br, %bb.q ]
  %i.cf = and i64 %.0, %.060
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.176 = phi ptr [ %i.af, %bb.g ], [ %.075, %bb.s ]
  %.1 = phi i64 [ %i.ai, %bb.g ], [ %i.cf, %bb.s ]
  %i.cg = and i64 %.1, %i.ad
  br label %bb.u

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.p
  %i.ch = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ch

bb.u:                                             ; preds = %bb.t, %bb.f
  %.061.ph = phi i64 [ %i.ad, %bb.f ], [ %i.cg, %bb.t ]
  %.0.i7.ph = phi ptr [ %i.ab, %bb.f ], [ %.176, %bb.t ] ; 5 uses
  %i.ci = trunc i64 %.061.ph to i32               ; 3 uses
  %i.cj = icmp sge i32 %i.ci, %.sroa.0.0.extract.trunc.i
  %i.ck = icmp sle i32 %i.ci, %.sroa.0.4.extract.trunc.i
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.w, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cm = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.cm

bb.w:                                             ; preds = %bb.u
  %i.cn = load i32, ptr %i.h, align 4, !tbaa !135
  %i.co = and i32 %i.cn, 1
  %i.cp = icmp eq i32 %i.co, 0                    ; 3 uses
  %i.cq = load i32, ptr %i.y, align 4, !tbaa !137 ; 4 uses
  br i1 %i.cp, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !51
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i = phi ptr [ %i.cr, %bb.x ], [ %i.h, %bb.w ]
  %i.ct = phi i32 [ %i.cs, %bb.x ], [ 2, %bb.w ]
  %i.cu = icmp eq i32 %i.cq, %i.ct
  %i.cv = add nsw i32 %i.cq, 1                    ; 3 uses
  br i1 %i.cu, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, !prof !20

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i, i1 noundef zeroext %i.cp, i32 noundef %i.cq, i32 noundef %i.cv)
  %i.cw = load ptr, ptr %i.z, align 8, !tbaa !51
  %.pre38.i = load i32, ptr %i.y, align 4, !tbaa !137
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %i.cx = phi i32 [ %.pre38.i, %bb.y ], [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.pn.i = phi ptr [ %i.cw, %bb.y ], [ %.0.v.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ] ; 2 uses
  %.0.i8 = phi i1 [ false, %bb.y ], [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.029.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  store i32 %i.cv, ptr %i.y, align 4, !tbaa !137
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %.029.i, i64 %i.cy
  store i32 %i.ci, ptr %i.cz, align 4, !tbaa !19
  %i.da = load i32, ptr %i.y, align 4, !tbaa !137
  %i.db = icmp eq i32 %i.cv, %i.da
  tail call void @llvm.assume(i1 %i.db)
  br i1 %.0.i8, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i
  %i.dc = load ptr, ptr %i.z, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, %bb.z
  %.sink122 = phi ptr [ %i.dc, %bb.z ], [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i ]
  %i.dd = icmp eq ptr %.pn.i, %.sink122
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load ptr, ptr %2, align 8, !tbaa !92
  %i.df = icmp ult ptr %.0.i7.ph, %i.de
  br i1 %i.df, label %bb.ab, label %bb.aa, !prof !42

bb.aa:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.dg = load i16, ptr %4, align 8, !tbaa !25
  %i.dh = trunc i64 %i.f to i32
  %i.di = zext i16 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19
  %i.dl = or i32 %i.dk, %i.dh
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !19
  ret ptr %.0.i7.ph

bb.ab:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %.0.copyload.i.i9 = load i16, ptr %.0.i7.ph, align 1 ; 3 uses
  %i.dm = icmp eq i16 %.0.copyload.i.i9, %.0.copyload.i.i
  br i1 %i.dm, label %bb.f, label %bb.ac, !llvm.loop !372

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !96
  %i.dp = zext i8 %i.do to i16
  %i.dq = and i16 %.0.copyload.i.i9, %i.dp
  %i.dr = zext nneg i16 %i.dq to i64              ; 2 uses
  %i.ds = and i64 %i.dr, 7
  %i.dt = icmp eq i64 %i.ds, 0
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = lshr exact i64 %i.dr, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dx, align 8, !tbaa !51
  %i.dy = zext i16 %.0.copyload.i.i9 to i64
  %i.dz = xor i64 %.sroa.01.0.copyload.i, %i.dy
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !99
  %i.eb = musttail call noundef ptr %i.ea(ptr noundef nonnull %0, ptr noundef nonnull %.0.i7.ph, ptr noundef nonnull %2, i64 %i.dz, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.eb
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.p = load i8, ptr %1, align 1, !tbaa !51
  %i.q = lshr i64 %3, 24
  %i.r = ptrtoint ptr %4 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %i.u, %i.r
  %i.w = inttoptr i64 %i.v to ptr
  %6 = and i64 %i.q, 255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !51 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.0.i9.ph, %bb.ad ] ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !51  ; 2 uses
  %i.ae = sext i8 %i.ad to i64                    ; 2 uses
  %i.af = icmp sgt i8 %i.ad, -1
  br i1 %i.af, label %bb.u, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !51
  %i.ai = sext i8 %i.ah to i64
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 -128, i64 7) ; 4 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %bb.t, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !51
  %i.an = sext i8 %i.am to i64
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 -128, i64 14) ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %bb.s, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !51
  %i.as = sext i8 %i.ar to i64
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 -128, i64 21)
  %i.au = and i64 %i.at, %i.aj                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, -1
  br i1 %i.av, label %bb.s, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !51
  %i.ay = sext i8 %i.ax to i64
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 -128, i64 28)
  %i.ba = and i64 %i.az, %i.ao                    ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.s, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !51
  %i.be = sext i8 %i.bd to i64
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 -128, i64 35)
  %i.bg = and i64 %i.bf, %i.au                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.s, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.bk = sext i8 %i.bj to i64
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 -128, i64 42)
  %i.bm = and i64 %i.bl, %i.ba                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.s, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bq = sext i8 %i.bp to i64
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 -128, i64 49)
  %i.bs = and i64 %i.br, %i.bg                    ; 6 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.s, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bw = zext i8 %i.bv to i64
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 -128, i64 56)
  %i.by = and i64 %i.bx, %i.bm                    ; 5 uses
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.s, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 3 uses
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !51  ; 3 uses
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %.not.i8 = icmp sgt i8 %i.cb, -1
  br i1 %.not.i8, label %bb.q, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.cd = and i8 %i.cb, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.by) #31, !srcloc !138
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.075 = phi ptr [ %i.al, %bb.h ], [ %i.aq, %bb.i ], [ %i.aw, %bb.j ], [ %i.bc, %bb.k ], [ %i.bi, %bb.l ], [ %i.bo, %bb.m ], [ %i.bu, %bb.n ], [ %i.ca, %bb.o ], [ %i.ca, %bb.r ], [ %i.ca, %bb.q ]
  %.060 = phi i64 [ %i.ao, %bb.h ], [ %i.ao, %bb.i ], [ %i.ba, %bb.j ], [ %i.ba, %bb.k ], [ %i.bm, %bb.l ], [ %i.bm, %bb.m ], [ %i.by, %bb.n ], [ %i.by, %bb.o ], [ %i.cf, %bb.r ], [ %i.by, %bb.q ]
  %.0 = phi i64 [ %i.aj, %bb.h ], [ %i.au, %bb.i ], [ %i.au, %bb.j ], [ %i.bg, %bb.k ], [ %i.bg, %bb.l ], [ %i.bs, %bb.m ], [ %i.bs, %bb.n ], [ %i.bs, %bb.o ], [ %i.bs, %bb.r ], [ %i.bs, %bb.q ]
  %i.cg = and i64 %.0, %.060
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.176 = phi ptr [ %i.ag, %bb.g ], [ %.075, %bb.s ]
  %.1 = phi i64 [ %i.aj, %bb.g ], [ %i.cg, %bb.s ]
  %i.ch = and i64 %.1, %i.ae
  br label %bb.u

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.p
  %i.ci = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ci

bb.u:                                             ; preds = %bb.t, %bb.f
  %.061.ph = phi i64 [ %i.ae, %bb.f ], [ %i.ch, %bb.t ] ; 2 uses
  %.0.i9.ph = phi ptr [ %i.ac, %bb.f ], [ %.176, %bb.t ] ; 6 uses
  %i.cj = trunc i64 %.061.ph to i32               ; 3 uses
  %i.ck = load i32, ptr %.sroa.03.0.copyload.i, align 4, !tbaa !19 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = lshr i32 %i.ck, 16
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %sext = shl i64 %.061.ph, 32
  %i.co = ashr exact i64 %sext, 32
  %sext.i = shl i64 %i.cl, 48
  %i.cp = ashr exact i64 %sext.i, 48
  %i.cq = sub nsw i64 %i.co, %i.cp                ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  br i1 %i.cr, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cs = load i32, ptr %i.y, align 4, !tbaa !19  ; 3 uses
  %i.ct = sub nuw nsw i64 %i.cq, %i.cn            ; 3 uses
  %.mask.i = and i32 %i.cs, 65535
  %i.cu = zext nneg i32 %.mask.i to i64
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.w, !prof !42

bb.w:                                             ; preds = %bb.v
  %i.cw = lshr i32 %i.cs, 16
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = lshr i32 %i.cs, 5
  %i.cz = and i32 %i.cy, 2047
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.0.i6 = phi i64 [ 0, %bb.w ], [ %i.dj, %bb.y ] ; 3 uses
  %i.dd = icmp ult i64 %.0.i6, %i.cx
  br i1 %i.dd, label %bb.y, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread82

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0.i6
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19 ; 2 uses
  %.not.i7 = icmp eq i32 %i.df, %i.cj
  %i.dg = shl nuw nsw i64 %.0.i6, 1
  %i.dh = icmp sgt i32 %i.df, %i.cj
  %i.di = select i1 %i.dh, i64 1, i64 2
  %i.dj = add nuw nsw i64 %i.di, %i.dg
  br i1 %.not.i7, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.x, !llvm.loop !8

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit: ; preds = %bb.v
  %i.dk = lshr i64 %i.ct, 5
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !19
  %i.do = trunc nuw nsw i64 %i.ct to i32
  %i.dp = and i32 %i.do, 31
  %i.dq = lshr i32 %i.dn, %i.dp
  %i.dr = trunc i32 %i.dq to i1
  br i1 %i.dr, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread82, !prof !132

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread82: ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, %bb.x
  %i.ds = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ds

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread: ; preds = %bb.y, %bb.u, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !135
  %i.du = and i32 %i.dt, 1
  %i.dv = icmp eq i32 %i.du, 0                    ; 3 uses
  %i.dw = load i32, ptr %i.z, align 4, !tbaa !137 ; 4 uses
  br i1 %i.dv, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %i.dx = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !51
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.z, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %.0.v.i.i.i = phi ptr [ %i.dx, %bb.z ], [ %i.h, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread ]
  %i.dz = phi i32 [ %i.dy, %bb.z ], [ 2, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread ]
  %i.ea = icmp eq i32 %i.dw, %i.dz
  %i.eb = add nsw i32 %i.dw, 1                    ; 3 uses
  br i1 %i.ea, label %bb.aa, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, !prof !20

bb.aa:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i, i1 noundef zeroext %i.dv, i32 noundef %i.dw, i32 noundef %i.eb)
  %i.ec = load ptr, ptr %i.aa, align 8, !tbaa !51
  %.pre38.i = load i32, ptr %i.z, align 4, !tbaa !137
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i: ; preds = %bb.aa, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %i.ed = phi i32 [ %.pre38.i, %bb.aa ], [ %i.dw, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.pn.i = phi ptr [ %i.ec, %bb.aa ], [ %.0.v.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ] ; 2 uses
  %.0.i10 = phi i1 [ false, %bb.aa ], [ %i.dv, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.029.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  store i32 %i.eb, ptr %i.z, align 4, !tbaa !137
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.029.i, i64 %i.ee
  store i32 %i.cj, ptr %i.ef, align 4, !tbaa !19
  %i.eg = load i32, ptr %i.z, align 4, !tbaa !137
  %i.eh = icmp eq i32 %i.eb, %i.eg
  tail call void @llvm.assume(i1 %i.eh)
  br i1 %.0.i10, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i
  %i.ei = load ptr, ptr %i.aa, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, %bb.ab
  %.sink143 = phi ptr [ %i.ei, %bb.ab ], [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i ]
  %i.ej = icmp eq ptr %.pn.i, %.sink143
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = load ptr, ptr %2, align 8, !tbaa !92
  %i.el = icmp ult ptr %.0.i9.ph, %i.ek
  br i1 %i.el, label %bb.ad, label %bb.ac, !prof !42

bb.ac:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.em = load i16, ptr %4, align 8, !tbaa !25
  %i.en = trunc i64 %i.f to i32
  %i.eo = zext i16 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !19
  %i.er = or i32 %i.eq, %i.en
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !19
  ret ptr %.0.i9.ph

bb.ad:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.es = load i8, ptr %.0.i9.ph, align 1, !tbaa !51
  %i.et = icmp eq i8 %i.es, %i.p
  br i1 %i.et, label %bb.f, label %bb.ae, !llvm.loop !373

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i.i = load i16, ptr %.0.i9.ph, align 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !96
  %i.ew = zext i8 %i.ev to i16
  %i.ex = and i16 %.0.copyload.i.i, %i.ew
  %i.ey = zext nneg i16 %i.ex to i64              ; 2 uses
  %i.ez = and i64 %i.ey, 7
  %i.fa = icmp eq i64 %i.ez, 0
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = lshr exact i64 %i.ey, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fb ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.fe, align 8, !tbaa !51
  %i.ff = zext i16 %.0.copyload.i.i to i64
  %i.fg = xor i64 %.sroa.01.0.copyload.i, %i.ff
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !99
  %i.fi = musttail call noundef ptr %i.fh(ptr noundef nonnull %0, ptr noundef nonnull %.0.i9.ph, ptr noundef nonnull %2, i64 %i.fg, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.fi
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.p = lshr i64 %3, 24
  %i.q = ptrtoint ptr %4 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.t, %i.q
  %i.v = inttoptr i64 %i.u to ptr
  %6 = and i64 %i.p, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %6
  %.sroa.03.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !51 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %.0.i = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit ], [ %.0.i9.ph, %bb.ad ] ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !51  ; 2 uses
  %i.ad = sext i8 %i.ac to i64                    ; 2 uses
  %i.ae = icmp sgt i8 %i.ac, -1
  br i1 %i.ae, label %bb.u, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !51
  %i.ah = sext i8 %i.ag to i64
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 -128, i64 7) ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %bb.t, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.al = load i8, ptr %i.af, align 1, !tbaa !51
  %i.am = sext i8 %i.al to i64
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 -128, i64 14) ; 4 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.s, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.ar = sext i8 %i.aq to i64
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 -128, i64 21)
  %i.at = and i64 %i.as, %i.ai                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.s, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !51
  %i.ax = sext i8 %i.aw to i64
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 -128, i64 28)
  %i.az = and i64 %i.ay, %i.an                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.s, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !51
  %i.bd = sext i8 %i.bc to i64
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 -128, i64 35)
  %i.bf = and i64 %i.be, %i.at                    ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.s, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.bj = sext i8 %i.bi to i64
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 -128, i64 42)
  %i.bl = and i64 %i.bk, %i.az                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  br i1 %i.bm, label %bb.s, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.bp = sext i8 %i.bo to i64
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 -128, i64 49)
  %i.br = and i64 %i.bq, %i.bf                    ; 6 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.s, label %bb.n, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !51
  %i.bv = zext i8 %i.bu to i64
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 -128, i64 56)
  %i.bx = and i64 %i.bw, %i.bl                    ; 5 uses
  %i.by = icmp sgt i64 %i.bx, -1
  br i1 %i.by, label %bb.s, label %bb.o, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !51  ; 3 uses
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %.not.i8 = icmp sgt i8 %i.ca, -1
  br i1 %.not.i8, label %bb.q, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.cc = and i8 %i.ca, 1
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.bx) #31, !srcloc !138
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.077 = phi ptr [ %i.ak, %bb.h ], [ %i.ap, %bb.i ], [ %i.av, %bb.j ], [ %i.bb, %bb.k ], [ %i.bh, %bb.l ], [ %i.bn, %bb.m ], [ %i.bt, %bb.n ], [ %i.bz, %bb.o ], [ %i.bz, %bb.r ], [ %i.bz, %bb.q ]
  %.062 = phi i64 [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bx, %bb.n ], [ %i.bx, %bb.o ], [ %i.ce, %bb.r ], [ %i.bx, %bb.q ]
  %.0 = phi i64 [ %i.ai, %bb.h ], [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ], [ %i.br, %bb.m ], [ %i.br, %bb.n ], [ %i.br, %bb.o ], [ %i.br, %bb.r ], [ %i.br, %bb.q ]
  %i.cf = and i64 %.0, %.062
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.g
  %.178 = phi ptr [ %i.af, %bb.g ], [ %.077, %bb.s ]
  %.1 = phi i64 [ %i.ai, %bb.g ], [ %i.cf, %bb.s ]
  %i.cg = and i64 %.1, %i.ad
  br label %bb.u

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %bb.p
  %i.ch = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.ch

bb.u:                                             ; preds = %bb.t, %bb.f
  %.063.ph = phi i64 [ %i.ad, %bb.f ], [ %i.cg, %bb.t ] ; 2 uses
  %.0.i9.ph = phi ptr [ %i.ab, %bb.f ], [ %.178, %bb.t ] ; 5 uses
  %i.ci = trunc i64 %.063.ph to i32               ; 3 uses
  %i.cj = load i32, ptr %.sroa.03.0.copyload.i, align 4, !tbaa !19 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = lshr i32 %i.cj, 16
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %sext = shl i64 %.063.ph, 32
  %i.cn = ashr exact i64 %sext, 32
  %sext.i = shl i64 %i.ck, 48
  %i.co = ashr exact i64 %sext.i, 48
  %i.cp = sub nsw i64 %i.cn, %i.co                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  br i1 %i.cq, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.v, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cr = load i32, ptr %i.x, align 4, !tbaa !19  ; 3 uses
  %i.cs = sub nuw nsw i64 %i.cp, %i.cm            ; 3 uses
  %.mask.i = and i32 %i.cr, 65535
  %i.ct = zext nneg i32 %.mask.i to i64
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, label %bb.w, !prof !42

bb.w:                                             ; preds = %bb.v
  %i.cv = lshr i32 %i.cr, 16
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i32 %i.cr, 5
  %i.cy = and i32 %i.cx, 2047
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.0.i6 = phi i64 [ 0, %bb.w ], [ %i.di, %bb.y ] ; 3 uses
  %i.dc = icmp ult i64 %.0.i6, %i.cw
  br i1 %i.dc, label %bb.y, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread84

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.0.i6
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !19 ; 2 uses
  %.not.i7 = icmp eq i32 %i.de, %i.ci
  %i.df = shl nuw nsw i64 %.0.i6, 1
  %i.dg = icmp sgt i32 %i.de, %i.ci
  %i.dh = select i1 %i.dg, i64 1, i64 2
  %i.di = add nuw nsw i64 %i.dh, %i.df
  br i1 %.not.i7, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %bb.x, !llvm.loop !8

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit: ; preds = %bb.v
  %i.dj = lshr i64 %i.cs, 5
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload.i, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !19
  %i.dn = trunc nuw nsw i64 %i.cs to i32
  %i.do = and i32 %i.dn, 31
  %i.dp = lshr i32 %i.dm, %i.do
  %i.dq = trunc i32 %i.dp to i1
  br i1 %i.dq, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread, label %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread84, !prof !132

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread84: ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit, %bb.x
  %i.dr = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser23FastUnknownEnumFallbackEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef %2, i64 poison, ptr noundef nonnull %4, i64 noundef %i.f)
  ret ptr %i.dr

_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread: ; preds = %bb.y, %bb.u, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit
  %i.ds = load i32, ptr %i.h, align 4, !tbaa !135
  %i.dt = and i32 %i.ds, 1
  %i.du = icmp eq i32 %i.dt, 0                    ; 3 uses
  %i.dv = load i32, ptr %i.y, align 4, !tbaa !137 ; 4 uses
  br i1 %i.du, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %i.dw = load ptr, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !51
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.z, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread
  %.0.v.i.i.i = phi ptr [ %i.dw, %bb.z ], [ %i.h, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread ]
  %i.dy = phi i32 [ %i.dx, %bb.z ], [ 2, %_ZN6google8protobuf8internal19ValidateEnumInlinedEiPKj.exit.thread ]
  %i.dz = icmp eq i32 %i.dv, %i.dy
  %i.ea = add nsw i32 %i.dv, 1                    ; 3 uses
  br i1 %i.dz, label %bb.aa, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, !prof !20

bb.aa:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i, i1 noundef zeroext %i.du, i32 noundef %i.dv, i32 noundef %i.ea)
  %i.eb = load ptr, ptr %i.z, align 8, !tbaa !51
  %.pre38.i = load i32, ptr %i.y, align 4, !tbaa !137
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i: ; preds = %bb.aa, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %i.ec = phi i32 [ %.pre38.i, %bb.aa ], [ %i.dv, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.pn.i = phi ptr [ %i.eb, %bb.aa ], [ %.0.v.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ] ; 2 uses
  %.0.i10 = phi i1 [ false, %bb.aa ], [ %i.du, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ]
  %.029.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  store i32 %i.ea, ptr %i.y, align 4, !tbaa !137
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %.029.i, i64 %i.ed
  store i32 %i.ci, ptr %i.ee, align 4, !tbaa !19
  %i.ef = load i32, ptr %i.y, align 4, !tbaa !137
  %i.eg = icmp eq i32 %i.ea, %i.ef
  tail call void @llvm.assume(i1 %i.eg)
  br i1 %.0.i10, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i
  %i.eh = load ptr, ptr %i.z, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i, %bb.ab
  %.sink145 = phi ptr [ %i.eh, %bb.ab ], [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i ]
  %i.ei = icmp eq ptr %.pn.i, %.sink145
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = load ptr, ptr %2, align 8, !tbaa !92
  %i.ek = icmp ult ptr %.0.i9.ph, %i.ej
  br i1 %i.ek, label %bb.ad, label %bb.ac, !prof !42

bb.ac:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %i.el = load i16, ptr %4, align 8, !tbaa !25
  %i.em = trunc i64 %i.f to i32
  %i.en = zext i16 %i.el to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !19
  %i.eq = or i32 %i.ep, %i.em
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !19
  ret ptr %.0.i9.ph

bb.ad:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit
  %.0.copyload.i.i11 = load i16, ptr %.0.i9.ph, align 1 ; 3 uses
  %i.er = icmp eq i16 %.0.copyload.i.i11, %.0.copyload.i.i
  br i1 %i.er, label %bb.f, label %bb.ae, !llvm.loop !374

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.et = load i8, ptr %i.es, align 8, !tbaa !96
  %i.eu = zext i8 %i.et to i16
  %i.ev = and i16 %.0.copyload.i.i11, %i.eu
  %i.ew = zext nneg i16 %i.ev to i64              ; 2 uses
  %i.ex = and i64 %i.ew, 7
  %i.ey = icmp eq i64 %i.ex, 0
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = lshr exact i64 %i.ew, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.fc, align 8, !tbaa !51
  %i.fd = zext i16 %.0.copyload.i.i11 to i64
  %i.fe = xor i64 %.sroa.01.0.copyload.i, %i.fd
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !99
  %i.fg = musttail call noundef ptr %i.ff(ptr noundef nonnull %0, ptr noundef nonnull %.0.i9.ph, ptr noundef nonnull %2, i64 %i.fe, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !4
  ret ptr %i.fg
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErP1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %class.anon.241, align 8            ; 9 uses
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !51
  %i.d = lshr i64 %3, 16
  %i.e = and i64 %i.d, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %5
  %i.h = load i16, ptr %4, align 8, !tbaa !25
  %i.i = trunc i64 %i.g to i32
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = or i32 %i.l, %i.i
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.t, %bb.d ]
  %i.u = lshr i64 %3, 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = lshr i64 %3, 24
  %i.y = ptrtoint ptr %4 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = inttoptr i64 %i.ac to ptr
  %7 = and i64 %i.x, 255
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %7
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.01.0.copyload.i, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.v, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.0.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.w, ptr noundef nonnull byval(%class.anon.241) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %i.af
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastErP2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %class.anon.244, align 8            ; 9 uses
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.t = lshr i64 %3, 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = lshr i64 %3, 24
  %i.x = ptrtoint ptr %4 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = inttoptr i64 %i.ab to ptr
  %7 = and i64 %i.w, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %7
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.01.0.copyload.i, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.u, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.0.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser10PackedEnumItLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.v, ptr noundef nonnull byval(%class.anon.244) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %i.ae
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvP1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %class.anon.247, align 8            ; 9 uses
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !51
  %i.d = lshr i64 %3, 16
  %i.e = and i64 %i.d, 255
  %i.f = shl nuw i64 1, %i.e
  %i.g = or i64 %i.f, %5
  %i.h = load i16, ptr %4, align 8, !tbaa !25
  %i.i = trunc i64 %i.g to i32
  %i.j = zext i16 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = or i32 %i.l, %i.i
  store i32 %i.m, ptr %i.k, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumIhLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.t, %bb.d ]
  %i.u = lshr i64 %3, 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = lshr i64 %3, 24
  %i.y = ptrtoint ptr %4 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = inttoptr i64 %i.ac to ptr
  %7 = and i64 %i.x, 255
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %7
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.01.0.copyload.i, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.v, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.0.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.af = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser10PackedEnumIhLt1024EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.w, ptr noundef nonnull byval(%class.anon.247) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %i.af
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvP2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %6 = alloca %class.anon.250, align 8            ; 9 uses
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit: ; preds = %bb.a
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5
  %i.g = load i16, ptr %4, align 8, !tbaa !25
  %i.h = trunc i64 %i.f to i32
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.j, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal8TcParser10PackedEnumItLt1024EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.exit
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.t = lshr i64 %3, 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = lshr i64 %3, 24
  %i.x = ptrtoint ptr %4 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = inttoptr i64 %i.ab to ptr
  %7 = and i64 %i.w, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %7
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.01.0.copyload.i, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.u, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.0.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser10PackedEnumItLt1024EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %i.v, ptr noundef nonnull byval(%class.anon.250) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %i.ae
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastEr0S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51    ; 2 uses
  %i.e = lshr i64 %3, 24
  %i.f = trunc i64 %i.e to i8
  %i.g = icmp ugt i8 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.h = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.h

bb.e:                                             ; preds = %bb.c
  %i.i = zext i8 %i.d to i32
  %i.j = lshr i64 %3, 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.m = lshr i64 %3, 16
  %i.n = and i64 %i.m, 255
  %i.o = shl nuw i64 1, %i.n
  %i.p = or i64 %i.o, %5                          ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !92
  %i.r = icmp ult ptr %i.l, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i16, ptr %4, align 8, !tbaa !25
  %i.t = trunc i64 %i.p to i32
  %i.u = zext i16 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = or i32 %i.w, %i.t
  store i32 %i.x, ptr %i.v, align 4, !tbaa !19
  ret ptr %i.l

bb.g:                                             ; preds = %bb.e
  %.0.copyload.i.i = load i16, ptr %i.l, align 1  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !96
  %i.aa = zext i8 %i.z to i16
  %i.ab = and i16 %.0.copyload.i.i, %i.aa
  %i.ac = zext nneg i16 %i.ab to i64              ; 2 uses
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp eq i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = lshr exact i64 %i.ac, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ai, align 8, !tbaa !51
  %i.aj = zext i16 %.0.copyload.i.i to i64
  %i.ak = xor i64 %.sroa.01.0.copyload.i, %i.aj
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.am = musttail call noundef ptr %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %2, i64 %i.ak, ptr noundef nonnull %4, i64 noundef %i.p), !inline_history !4
  ret ptr %i.am
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastEr0S2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51    ; 2 uses
  %i.e = lshr i64 %3, 24
  %i.f = trunc i64 %i.e to i8
  %i.g = icmp ugt i8 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.h = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.h

bb.e:                                             ; preds = %bb.c
  %i.i = zext i8 %i.d to i32
  %i.j = lshr i64 %3, 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 4 uses
  %i.m = lshr exact i64 %3, 16
  %i.n = and i64 %i.m, 255
  %i.o = shl nuw i64 1, %i.n
  %i.p = or i64 %i.o, %5                          ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !92
  %i.r = icmp ult ptr %i.l, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i16, ptr %4, align 8, !tbaa !25
  %i.t = trunc i64 %i.p to i32
  %i.u = zext i16 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = or i32 %i.w, %i.t
  store i32 %i.x, ptr %i.v, align 4, !tbaa !19
  ret ptr %i.l

bb.g:                                             ; preds = %bb.e
  %.0.copyload.i.i = load i16, ptr %i.l, align 1  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !96
  %i.aa = zext i8 %i.z to i16
  %i.ab = and i16 %.0.copyload.i.i, %i.aa
  %i.ac = zext nneg i16 %i.ab to i64              ; 2 uses
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp eq i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = lshr exact i64 %i.ac, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ai, align 8, !tbaa !51
  %i.aj = zext i16 %.0.copyload.i.i to i64
  %i.ak = xor i64 %.sroa.01.0.copyload.i, %i.aj
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.am = musttail call noundef ptr %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %2, i64 %i.ak, ptr noundef nonnull %4, i64 noundef %i.p), !inline_history !4
  ret ptr %i.am
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastEr1S1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !51    ; 2 uses
  %i.e = lshr i64 %3, 24
  %i.f = trunc i64 %i.e to i8
  %i.g = add i8 %i.d, -1
  %or.cond.not = icmp ult i8 %i.g, %i.f
  br i1 %or.cond.not, label %bb.d, label %.critedge.i, !prof !142

.critedge.i:                                      ; preds = %bb.c
  %i.h = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.h

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.d to i32
  %i.j = lshr i64 %3, 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.m = lshr i64 %3, 16
  %i.n = and i64 %i.m, 255
  %i.o = shl nuw i64 1, %i.n
  %i.p = or i64 %i.o, %5                          ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !92
  %i.r = icmp ult ptr %i.l, %i.q
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i16, ptr %4, align 8, !tbaa !25
  %i.t = trunc i64 %i.p to i32
  %i.u = zext i16 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 2 uses
end_hunk_1
