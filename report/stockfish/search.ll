Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii:bb.a
bb.bq:                                            ; preds = %bb.bp
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 184
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !318
  %i.my = and i8 %i.mx, 4
  %.not269 = icmp eq i8 %i.my, 0
  br i1 %.not269, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mz = icmp eq i8 %i.mp, 0
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.mt
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !25
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !25
  %i.nf = and i64 %i.ne, %i.nc                    ; 2 uses
  %i.ng = shl i64 %i.nf, 8
  %i.nh = lshr i64 %i.nf, 8
  %i.ni = select i1 %i.mz, i64 %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !25
  %i.nl = xor i64 %i.nk, -1
  %i.nm = and i64 %i.ni, %i.nl
  %.not160 = icmp eq i64 %i.nm, 0
  br i1 %.not160, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mr, i64 72
  store i64 255, ptr %i.nn, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.no = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %9) #33
  %.not161 = icmp eq ptr %i.no, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %spec.select267 = select i1 %.not161, i32 0, i32 %.10
  %i.np = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  store i64 0, ptr %i.nq, align 8, !tbaa !214
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bp, %bb.bo
  %.12 = phi i32 [ %.10, %bb.bo ], [ %spec.select267, %bb.bs ], [ %.10, %bb.br ], [ %.10, %bb.bq ], [ %.10, %bb.bp ] ; 5 uses
  %i.nr = load i32, ptr %i.v, align 8, !tbaa !253 ; 2 uses
  %i.ns = icmp sgt i32 %.12, 31506
  %i.nt = icmp slt i32 %.12, -31506
  %i.nu = select i1 %i.nt, i32 %i.nr, i32 0
  %i.nv = sub i32 0, %i.nu
  %.p.i184 = select i1 %i.ns, i32 %i.nr, i32 %i.nv
  %i.nw = add i32 %.p.i184, %.12
  %.not162 = icmp slt i32 %.12, %4
  %i.nx = select i1 %.not162, i8 1, i8 2
  %i.ny = load ptr, ptr %i.bh, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.nz = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ny) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.bg, i32 noundef %i.nw, i1 noundef zeroext %i.cq, i8 noundef zeroext %i.nx, i32 noundef 0, i16 %.sroa.059.2, i32 noundef %.2141, i8 noundef zeroext %i.nz) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bl
  %.1 = phi i32 [ %i.mj, %bb.bl ], [ %.12, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread259

.thread259:                                       ; preds = %bb.ap, %bb.ao, %bb.bu
  %.2 = phi i32 [ %.1, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.h, %.thread259
  %.3 = phi i32 [ %.2, %.thread259 ], [ %i.at, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.c, %bb.bv
  %.4 = phi i32 [ %.3, %bb.bv ], [ %i.j, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #22 {
bb.a:
  %.not = icmp eq i32 %0, 32002
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 31506
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = icmp samesign ugt i32 %0, 31753
  br i1 %i.b, label %bb.d, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.c
  %.pre = sub nsw i32 100, %2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = sub nsw i32 32000, %0
  %i.d = sub nsw i32 100, %2                      ; 2 uses
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge21, %bb.d
  %.pre-phi = phi i32 [ %.pre, %._crit_edge21 ], [ %i.d, %bb.d ]
  %i.f = sub nsw i32 31753, %0
  %i.g = icmp sgt i32 %i.f, %.pre-phi
  %i.h = sub nsw i32 %0, %1
  %spec.select = select i1 %i.g, i32 31506, i32 %i.h
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %0, -31506
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i32 %0, -31753
  br i1 %i.j, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre22 = sub nsw i32 100, %2
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = add nsw i32 %0, 32000
  %i.l = sub nsw i32 100, %2                      ; 2 uses
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi23 = phi i32 [ %.pre22, %._crit_edge ], [ %i.l, %bb.h ]
  %i.n = add nsw i32 %0, 31753
  %i.o = icmp sgt i32 %i.n, %.pre-phi23
  %i.p = add nsw i32 %1, %0
  %spec.select20 = select i1 %i.o, i32 -31506, i32 %i.p
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.h, %bb.d, %bb.a
  %.0 = phi i32 [ 32002, %bb.a ], [ 31506, %bb.d ], [ %0, %bb.f ], [ %spec.select20, %bb.i ], [ -31506, %bb.h ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

declare void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, i16, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 39 uses
  %7 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.std::tuple.201", align 8   ; 18 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.422, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !762
  %i.g = xor i1 %6, true                          ; 3 uses
  %i.h = icmp slt i32 %5, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.gb

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated884 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !253
  %i.m = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.l) #33
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.o = load atomic i64, ptr %i.n seq_cst, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 2                          ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %.not564.not = icmp sgt i32 %i.q, %4
  br i1 %.not564.not, label %bb.gb, label %._crit_edge1313

._crit_edge1313:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1313, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %._crit_edge1313 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.01030 = phi i32 [ %i.r, %._crit_edge1313 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.u, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 15 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !213  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !214
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 4, !tbaa !317
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !318
  %i.ae = icmp ne i8 %i.ad, 0                     ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !171 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !319
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 64, !tbaa !64
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.am = load ptr, ptr %i.al, align 32, !tbaa !114 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !320
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.as = load atomic i8, ptr %i.ar monotonic, align 8, !range !221, !noundef !48
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !253
  %i.aw = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.av) #33
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !253 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 245
  br i1 %i.ay, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !253
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aa, align 4, !tbaa !317, !range !221, !noundef !48
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !125
  switch i8 %i.bl, label %bb.p [
    i8 -1, label %bb.n
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @abort() #37
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.p:                                             ; preds = %bb.m
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.m, %bb.o
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.o ], [ %i.bj, %bb.m ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !127
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.af, align 4, !tbaa !171
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !138
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.ga

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.ga

bb.r:                                             ; preds = %bb.j
  %i.ca = add nsw i32 %i.ax, -32000
  %.sroa.speculated824 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.01030) ; 7 uses
  %i.cb = sub nsw i32 31999, %i.ax
  %.sroa.speculated819 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 35 uses
  %.not565 = icmp slt i32 %.sroa.speculated824, %.sroa.speculated819
  br i1 %.not565, label %bb.s, label %bb.ga

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %i.s, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.t [
    i16 65, label %bb.u
    i16 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = and i8 %i.ce, 63
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.t
  %i.cg = phi i8 [ %i.cf, %bb.t ], [ 64, %bb.s ], [ 64, %bb.s ] ; 9 uses
  %i.ch = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !322 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !322
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !323
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i32 0, ptr %i.ck, align 8, !tbaa !324
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !191 ; 4 uses
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !213 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !311 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !312 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 14
  br i1 %i.cs, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = add nsw i32 %i.cr, -14
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407
  %i.cy = xor i64 %i.cx, %i.cp
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.u, %bb.v
  %i.cz = phi i64 [ %i.cy, %bb.v ], [ %i.cp, %bb.u ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 8 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %10, ptr noundef nonnull align 8 dereferenceable(17) %i.db, i64 noundef %i.cz) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 15 uses
  %i.de = load i8, ptr %i.dc, align 4, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !762 ; 15 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.de, ptr %i.dg, align 2, !tbaa !325
  %i.dh = trunc nuw i8 %i.de to i1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 13 uses
  br i1 %i.dh, label %bb.w, label %.thread1045

bb.w:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %.sroa.0188.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !326
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !253
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !312
  %i.dp = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.do)
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !326
  %.not1169 = icmp eq i16 %i.cm, 0
  br i1 %.not1169, label %bb.y, label %bb.x

.thread1045:                                      ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  store i16 0, ptr %i.dd, align 8, !tbaa !191
  store i32 32002, ptr %i.di, align 4, !tbaa !326
  %.not1168 = icmp eq i16 %i.cm, 0
  br i1 %.not1168, label %.thread1052, label %bb.x

.thread1052:                                      ; preds = %.thread1045
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  store i8 0, ptr %i.dq, align 1, !tbaa !329
  br label %bb.ab

bb.x:                                             ; preds = %.thread1045, %bb.w
  %.sroa.0188.010431049 = phi i16 [ 0, %.thread1045 ], [ %.sroa.0188.0.copyload, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 45
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  store i8 %i.sd, ptr %i.b, align 1, !tbaa !313
  %i.se = icmp samesign ugt i32 %.11035, 5
  %or.cond31 = select i1 %6, i1 %i.se, i1 false
  br i1 %or.cond31, label %.thread1083, label %bb.cm

.thread1083:                                      ; preds = %.thread1076
  %i.sf = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.sg = icmp eq i16 %i.sf, 0
  %i.sh = icmp slt i32 %i.ci, 4
  %or.cond34.not.not = select i1 %i.sg, i1 %i.sh, i1 false
  %i.si = sext i1 %or.cond34.not.not to i32
  %spec.select1152 = add nsw i32 %.11035, %i.si
  %i.sj = add nsw i32 %.sroa.speculated819, 235
  %narrow1085 = mul nuw nsw i8 %i.sd, 63
  %i.sk = zext nneg i8 %narrow1085 to i32
  %i.sl = sub nsw i32 %i.sj, %i.sk
  br label %bb.cn

bb.cm:                                            ; preds = %.thread1076
  %i.sm = add nsw i32 %.sroa.speculated819, 235
  %narrow = mul nuw nsw i8 %i.sd, 63
  %i.sn = zext nneg i8 %narrow to i32
  %i.so = sub nsw i32 %i.sm, %i.sn
  %i.sp = icmp samesign ugt i32 %.11035, 2
  br i1 %i.sp, label %bb.cn, label %bb.cw

bb.cn:                                            ; preds = %.thread1083, %bb.cm
  %i.sq = phi i32 [ %i.sl, %.thread1083 ], [ %i.so, %bb.cm ] ; 7 uses
  %.210361086 = phi i32 [ %spec.select1152, %.thread1083 ], [ %.11035, %bb.cm ] ; 5 uses
  %i.sr = sub nsw i32 0, %i.sq                    ; 2 uses
  %i.ss = add i32 %.sroa.speculated819, -31507
  %spec.select.i684 = icmp ult i32 %i.ss, -63013
  br i1 %spec.select.i684, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.st = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %i.su = icmp ne i32 %i.st, 32002
  %i.sv = icmp slt i32 %i.st, %i.sq
  %or.cond1153 = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond1153, label %bb.cw, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %.sroa.0144.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.sw = load i32, ptr %i.ry, align 8, !tbaa !252
  %i.sx = sub nsw i32 %i.sq, %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0144.0.copyload, i32 noundef %i.sx, ptr noundef nonnull %i.sy) #33
  %i.sz = add nsw i32 %.210361086, -5
  %i.ta = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !252
  %i.td = sub nsw i32 %i.tc, %.sroa.speculated819
  %.neg591 = sdiv i32 %i.td, -315
  %i.te = add nsw i32 %i.sz, %.neg591
  %i.tf = call i32 @llvm.smax.i32(i32 %i.te, i32 0)
  %.sroa.speculated933 = call i32 @llvm.umin.i32(i32 %.210361086, i32 %i.tf) ; 3 uses
  %i.tg = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not11841232 = icmp eq i16 %i.tg, 0
  br i1 %.not11841232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cp
  %i.th = sub nsw i32 1, %i.sq                    ; 2 uses
  %i.ti = icmp ne i32 %.sroa.speculated933, 0
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.tk = add nuw nsw i32 %.sroa.speculated933, 1
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph, %.backedge1206
  %i.tl = phi i16 [ %i.tg, %.lr.ph ], [ %i.to, %.backedge1206 ] ; 5 uses
  %i.tm = icmp eq i16 %i.tl, %i.cm
  br i1 %i.tm, label %.backedge1206, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tn = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl) #33
  br i1 %i.tn, label %bb.cs, label %.backedge1206

.backedge1206:                                    ; preds = %bb.cu, %bb.cv, %bb.cq, %bb.cr
  %i.to = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1184 = icmp eq i16 %i.to, 0
  br i1 %.not1184, label %._crit_edge, label %bb.cq, !llvm.loop !772

bb.cs:                                            ; preds = %bb.cr
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !762
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef %i.tp)
  %i.tq = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 56
  %i.ts = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tr, i32 noundef %i.sr, i32 noundef %i.th)
  %i.tt = sub nsw i32 0, %i.ts                    ; 2 uses
  %i.tu = icmp sle i32 %i.sq, %i.tt
  %or.cond36 = select i1 %i.tu, i1 %i.ti, i1 false
  br i1 %or.cond36, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 56
  %i.tx = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.tw, i32 noundef %i.sr, i32 noundef %i.th, i32 noundef %.sroa.speculated933, i1 noundef zeroext %i.g)
  %i.ty = sub nsw i32 0, %i.tx
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0520 = phi i32 [ %i.ty, %bb.ct ], [ %i.tt, %bb.cs ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tl) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tj) #33
  %.not592 = icmp slt i32 %.0520, %i.sq
  br i1 %.not592, label %.backedge1206, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tz = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !253 ; 2 uses
  %i.uc = icmp sgt i32 %.0520, 31506
  %i.ud = icmp slt i32 %.0520, -31506
  %i.ue = select i1 %i.ud, i32 %i.ub, i32 0
  %i.uf = sub i32 0, %i.ue
  %.p.i687 = select i1 %i.uc, i32 %i.ub, i32 %i.uf
  %i.ug = add i32 %.p.i687, %.0520
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 45
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !329, !range !221, !noundef !48
  %i.uj = trunc nuw i8 %i.ui to i1
  %i.uk = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ul = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.uk) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.ug, i1 noundef zeroext %i.uj, i8 noundef zeroext 2, i32 noundef %i.tk, i16 %i.tl, i32 noundef %.1536, i8 noundef zeroext %i.ul) #33
  %i.um = add i32 %.0520, -31507
  %spec.select.i688 = icmp ult i32 %i.um, -63013
  br i1 %spec.select.i688, label %.backedge1206, label %.thread1087

.thread1087:                                      ; preds = %bb.cv
  %.neg593 = sub i32 %.sroa.speculated819, %i.sq
  %i.un = add i32 %.neg593, %.0520
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1079

._crit_edge:                                      ; preds = %.backedge1206, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.cw

bb.cw:                                            ; preds = %bb.co, %._crit_edge, %bb.cm, %bb.cn, %.thread1063
  %.31037 = phi i32 [ %.11035, %.thread1063 ], [ %.210361086, %bb.cn ], [ %.210361086, %bb.co ], [ %.210361086, %._crit_edge ], [ %.11035, %bb.cm ] ; 4 uses
  %i.uo = add nsw i32 %.sroa.speculated819, 418   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !336
  %i.ur = and i8 %i.uq, 2
  %.not594 = icmp eq i8 %i.ur, 0
  br i1 %.not594, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.us = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !341
  %i.uu = add nsw i32 %.31037, -4
  %.not595 = icmp slt i32 %i.ut, %i.uu
  br i1 %.not595, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uv = load i32, ptr %i.di, align 4, !tbaa !326 ; 2 uses
  %.not596 = icmp slt i32 %i.uv, %i.uo
  %i.uw = add i32 %.sroa.speculated819, -31507
  %spec.select.i689 = icmp ult i32 %i.uw, -63013
  %or.cond1154.not1185.not1188 = or i1 %spec.select.i689, %.not596
  %i.ux = add i32 %i.uv, -31507
  %spec.select.i690 = icmp ult i32 %i.ux, -63013
  %or.cond1156 = or i1 %or.cond1154.not1185.not1188, %spec.select.i690
  br i1 %or.cond1156, label %bb.cz, label %.thread1079

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.uy = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -48
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !247
  store ptr %i.va, ptr %i.f, align 16, !tbaa !342
  %i.vb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.vc = getelementptr inbounds i8, ptr %i.uy, i64 -104
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !247
  store ptr %i.vd, ptr %i.vb, align 8, !tbaa !342
  %i.ve = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.vf = getelementptr inbounds i8, ptr %i.uy, i64 -160
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !247
  store ptr %i.vg, ptr %i.ve, align 16, !tbaa !342
  %i.vh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.vi = getelementptr inbounds i8, ptr %i.uy, i64 -216
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !247
  store ptr %i.vj, ptr %i.vh, align 8, !tbaa !342
  %i.vk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.vl = getelementptr inbounds i8, ptr %i.uy, i64 -272
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !247
  store ptr %i.vm, ptr %i.vk, align 16, !tbaa !342
  %i.vn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.vo = getelementptr inbounds i8, ptr %i.uy, i64 -328
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !247
  store ptr %i.vp, ptr %i.vn, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0135.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.vs = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0135.0.copyload, i32 noundef %.31037, ptr noundef nonnull %0, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.vr, ptr noundef nonnull %i.f, ptr noundef nonnull %i.vs, i32 noundef %i.vu) #33
  %i.vv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not118912331255 = icmp eq i16 %i.vv, 0
  br i1 %.not118912331255, label %.outer..loopexit_crit_edge, label %.lr.ph1234.lr.ph

.lr.ph1234.lr.ph:                                 ; preds = %bb.cz
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.vy = zext i8 %i.ag to i64                    ; 3 uses
  %i.vz = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %spec.select660 = select i1 %6, i32 -2, i32 0
  %.neg625 = select i1 %i.ei, i32 4, i32 205
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1268 = select i1 %i.ei, i32 -73, i32 175
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg632 = select i1 %6, i32 -1945, i32 -934
  %i.wh = select i1 %6, i32 0, i32 1024
  br label %.lr.ph1234

.lr.ph1234:                                       ; preds = %.lr.ph1234.lr.ph, %.thread1092
  %indvars.iv = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %indvars.iv.next, %.thread1092 ] ; 4 uses
  %i.wi = phi i16 [ %i.vv, %.lr.ph1234.lr.ph ], [ %i.akr, %.thread1092 ]
  %.0506.ph1260 = phi i32 [ -32001, %.lr.ph1234.lr.ph ], [ %.10516, %.thread1092 ] ; 16 uses
  %.11031.ph1258 = phi i32 [ %.sroa.speculated824, %.lr.ph1234.lr.ph ], [ %.3, %.thread1092 ] ; 23 uses
  %.41038.ph1257 = phi i32 [ %.31037, %.lr.ph1234.lr.ph ], [ %.9, %.thread1092 ] ; 25 uses
  %.sroa.0827.0.ph1256 = phi i16 [ 0, %.lr.ph1234.lr.ph ], [ %.sroa.0827.2, %.thread1092 ] ; 12 uses
  %15 = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %18, %.thread1092 ] ; 13 uses
  %16 = phi i64 [ 0, %.lr.ph1234.lr.ph ], [ %17, %.thread1092 ] ; 13 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph1234, %.backedge
  %i.wj = phi i16 [ %i.wi, %.lr.ph1234 ], [ %i.wl, %.backedge ] ; 25 uses
  %i.wk = icmp eq i16 %i.wj, %i.cm
  br i1 %i.wk, label %.backedge, label %bb.db

.backedge:                                        ; preds = %bb.da, %bb.db
  %i.wl = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1189 = icmp eq i16 %i.wl, 0
  br i1 %.not1189, label %..loopexit_crit_edge, label %bb.da, !llvm.loop !773

bb.db:                                            ; preds = %bb.da
  %i.wm = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj) #33
  br i1 %i.wm, label %bb.dc, label %.backedge

bb.dc:                                            ; preds = %bb.db
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.wn = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.wp, ptr %i.wo, align 8, !tbaa !319
  %i.wq = and i16 %i.wj, 63
  %i.wr = zext nneg i16 %i.wq to i64              ; 10 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 %i.wr ; 3 uses
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !330
  %i.wu = icmp ne i8 %i.wt, 0
  %.not.i.i691 = icmp ult i16 %i.wj, -16384       ; 2 uses
  %or.cond.not.i.i692 = and i1 %.not.i.i691, %i.wu
  %i.wv = icmp slt i16 %i.wj, -16384              ; 2 uses
  %spec.select.i.i693 = or i1 %i.wv, %or.cond.not.i.i692
  %i.ww = and i16 %i.wj, 12288
  %i.wx = icmp eq i16 %i.ww, 12288                ; 2 uses
  %i.wy = or i1 %i.wx, %spec.select.i.i693        ; 3 uses
  %i.wz = lshr i16 %i.wj, 6
  %i.xa = and i16 %i.wz, 63
  %i.xb = zext nneg i16 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !330 ; 4 uses
  %i.xe = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj) #33 ; 3 uses
  %i.xf = add nsw i32 %.41038.ph1257, -1          ; 3 uses
  %i.xg = sub nsw i32 %.sroa.speculated819, %.11031.ph1258
  %i.xh = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.xi = trunc nuw i8 %i.xh to i1
  %i.xj = sext i32 %.41038.ph1257 to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.xj
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !138
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv.next
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !138
  %i.xo = mul nsw i32 %i.xn, %i.xl                ; 2 uses
  %i.xp = mul nsw i32 %i.xg, 608
  %i.xq = load i32, ptr %i.vx, align 8, !tbaa !275
  %i.xr = sdiv i32 %i.xp, %i.xq
  %i.xs = mul nsw i32 %i.xo, 119
  %i.xt = sdiv i32 %i.xs, 256
  %i.xu = select i1 %i.xi, i32 0, i32 %i.xt
  %i.xv = add i32 %i.xo, 1182
  %i.xw = sub i32 %i.xv, %i.xr
  %i.xx = add i32 %i.xw, %i.xu                    ; 2 uses
  %i.xy = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 45
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !329, !range !221, !noundef !48
  %i.yb = trunc nuw i8 %i.ya to i1
  %i.yc = add nsw i32 %i.xx, 946
  %spec.select655 = select i1 %i.yb, i32 %i.yc, i32 %i.xx ; 3 uses
  %i.yd = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 40
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.vy
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !138
  %.not597 = icmp eq i32 %i.yg, 0
  %i.yh = icmp slt i32 %.0506.ph1260, -31506
  %or.cond1157 = select i1 %.not597, i1 true, i1 %i.yh
  br i1 %or.cond1157, label %.thread1101, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yi = mul nsw i32 %.41038.ph1257, %.41038.ph1257
  %i.yj = add nuw nsw i32 %i.yi, 3
  %narrow598 = sub nuw nsw i8 2, %i.xh
  %i.yk = zext nneg i8 %narrow598 to i32
  %i.yl = udiv i32 %i.yj, %i.yk
  %i.ym = zext nneg i32 %i.yl to i64
  %.not599 = icmp samesign ult i64 %indvars.iv.next, %i.ym
  br i1 %.not599, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.neg600 = sdiv i32 %spec.select655, -1024
  %i.yn = add i32 %.neg600, %i.xf                 ; 3 uses
  %or.cond38 = or i1 %i.xe, %i.wy
  %i.yo = zext i8 %i.xd to i64                    ; 5 uses
  br i1 %or.cond38, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.yp = load i8, ptr %i.ws, align 1, !tbaa !330 ; 2 uses
  %i.yq = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.yo
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.yq, i64 %i.wr
  %i.ys = and i8 %i.yp, 7
  %i.yt = zext nneg i8 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.yr, i64 %i.yt
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !355 ; 2 uses
  %i.yw = icmp sgt i32 %i.yn, 6
  %or.cond41.not = select i1 %i.xe, i1 true, i1 %i.yw
  br i1 %or.cond41.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yx = sext i16 %i.yv to i32
  %i.yy = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !252
  %i.zb = mul nsw i32 %i.yn, 217
  %i.zc = zext i8 %i.yp to i64
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.zc
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !138
  %i.zf = mul nsw i32 %i.yx, 131
  %i.zg = sdiv i32 %i.zf, 1024
  %i.zh = add nsw i32 %i.zb, 232
  %i.zi = add i32 %i.zh, %i.zg
  %i.zj = add i32 %i.zi, %i.za
  %i.zk = add i32 %i.zj, %i.ze
  %.not605 = icmp sgt i32 %i.zk, %.11031.ph1258
  br i1 %.not605, label %bb.di, label %.thread1092

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zl = mul nsw i32 %.41038.ph1257, 166
  %i.zm = sdiv i16 %i.yv, 29
  %.sext = sext i16 %i.zm to i32
  %i.zn = add nsw i32 %i.zl, %.sext
  %.sroa.speculated779 = call i32 @llvm.smax.i32(i32 %i.zn, i32 0)
  %i.zo = icmp sgt i32 %.11031.ph1258, -1
  br i1 %i.zo, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zp = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 40
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.vy
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !138
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.yo
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !138
  %.not606 = icmp eq i32 %i.zs, %i.zu
  br i1 %.not606, label %.thread1101, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zv = sub nsw i32 0, %.sroa.speculated779
  %i.zw = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj, i32 noundef %i.zv) #33
  br i1 %i.zw, label %.thread1101, label %.thread1092, !llvm.loop !773

bb.dl:                                            ; preds = %bb.df
  %i.zx = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.zy = getelementptr inbounds nuw [128 x i8], ptr %i.zx, i64 %i.yo
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %i.wr
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !167
  %i.aab = sext i16 %i.aaa to i32
  %i.aac = load ptr, ptr %i.vb, align 8, !tbaa !342
  %i.aad = getelementptr inbounds nuw [128 x i8], ptr %i.aac, i64 %i.yo
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.aad, i64 %i.wr
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !167
  %i.aag = sext i16 %i.aaf to i32
  %i.aah = add nsw i32 %i.aag, %i.aab
  %i.aai = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aaj = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !333
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 40
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !337
  %i.aao = and i64 %i.aan, %i.aal
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !162
  %i.aar = getelementptr inbounds nuw [2048 x i8], ptr %i.aaq, i64 %i.aao
  %i.aas = getelementptr inbounds nuw [128 x i8], ptr %i.aar, i64 %i.yo
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.wr
  %i.aau = load atomic i16, ptr %i.aat monotonic, align 2
  %i.aav = sext i16 %i.aau to i32
  %i.aaw = add nsw i32 %i.aah, %i.aav             ; 2 uses
  %i.aax = mul nsw i32 %.41038.ph1257, -4083
  %i.aay = icmp slt i32 %i.aaw, %i.aax
  br i1 %i.aay, label %.thread1092, label %bb.dm, !llvm.loop !773

bb.dm:                                            ; preds = %bb.dl
  %i.aaz = zext i16 %i.wj to i64
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.aaz
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !132
  %i.abc = sext i16 %i.abb to i32
  %i.abd = mul nsw i32 %i.abc, 69
  %i.abe = sdiv i32 %i.abd, 32
  %i.abf = add nsw i32 %i.abe, %i.aaw
  %i.abg = sdiv i32 %i.abf, 3208
  %i.abh = add nsw i32 %i.abg, %i.yn              ; 3 uses
  %i.abi = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !252 ; 2 uses
  %.not1190 = icmp eq i16 %.sroa.0827.0.ph1256, 0
  %i.abl = mul nsw i32 %i.abh, 127
  %i.abm = icmp sgt i32 %i.abk, %.11031.ph1258
  %i.abn = select i1 %i.abm, i32 85, i32 0
  %i.abo = select i1 %.not1190, i32 203, i32 42
  %i.abp = add i32 %i.abo, %i.abk
  %i.abq = add i32 %i.abp, %i.abn
end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.afs = load i16, ptr %i.dd, align 8           ; 2 uses
  %.not1192 = icmp eq i16 %i.afs, 0               ; 2 uses
  %i.aft = select i1 %.not1192, i32 4369, i32 3372
  %i.afu = select i1 %6, i32 %i.aft, i32 0
  %i.afv = add i32 %.neg635, 714
  %i.afw = add i32 %i.afv, %.1526
  %i.afx = sub i32 %i.afw, %i.afr
  %.2527 = add nsw i32 %i.afx, %i.afu             ; 2 uses
  %i.afy = add nsw i32 %.2527, 1119
  %spec.select661 = select i1 %i.ei, i32 %i.afy, i32 %.2527
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afh, i64 104
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !324 ; 2 uses
  %i.agb = icmp sgt i32 %i.aga, 1
  %.not636 = icmp eq i32 %i.aga, 2
  %i.agc = select i1 %.not636, i32 256, i32 1280
  %i.agd = add nuw nsw i32 %i.agc, %i.wh
  %i.age = select i1 %i.agb, i32 %i.agd, i32 0
  %.4529 = add nsw i32 %spec.select661, %i.age    ; 2 uses
  %i.agf = icmp eq i16 %i.wj, %i.afs
  %i.agg = add nsw i32 %.4529, -2151
  %spec.select662 = select i1 %i.agf, i32 %i.agg, i32 %.4529
  br i1 %i.wy, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.agh = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 184
  %i.agj = load i8, ptr %i.agi, align 8, !tbaa !318 ; 2 uses
  %i.agk = zext i8 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.agk
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !138
  %i.agn = mul nsw i32 %i.agm, 217
  %i.ago = sdiv i32 %i.agn, 32
  %i.agp = zext i8 %i.xd to i64
  %i.agq = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.agp
  %i.agr = getelementptr inbounds nuw [16 x i8], ptr %i.agq, i64 %i.wr
  %i.ags = and i8 %i.agj, 7
  %i.agt = zext nneg i8 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.agr, i64 %i.agt
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.agv = zext i16 %i.wj to i64
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.agv
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !132
  %i.agy = sext i16 %i.agx to i32
  %i.agz = shl nsw i32 %i.agy, 1
  %i.aha = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.ahb = zext i8 %i.xd to i64                   ; 2 uses
  %i.ahc = getelementptr inbounds nuw [128 x i8], ptr %i.aha, i64 %i.ahb
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.wr
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !167
  %i.ahf = sext i16 %i.ahe to i32
  %i.ahg = add nsw i32 %i.agz, %i.ahf
  %i.ahh = load ptr, ptr %i.vb, align 8, !tbaa !342
  %i.ahi = getelementptr inbounds nuw [128 x i8], ptr %i.ahh, i64 %i.ahb
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %i.wr
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sink.in = phi ptr [ %i.ahj, %bb.ee ], [ %i.agu, %bb.ed ]
  %.sink1406 = phi i32 [ %i.ahg, %bb.ee ], [ %i.ago, %bb.ed ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !191
  %i.ahk = sext i16 %.sink to i32
  %i.ahl = add nsw i32 %.sink1406, %i.ahk         ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.afh, i64 36
  store i32 %i.ahl, ptr %i.ahm, align 4, !tbaa !323
  %i.ahn = mul nsw i32 %i.ahl, 425
  %.neg637 = sdiv i32 %i.ahn, -4096
  %i.aho = add i32 %.neg637, %spec.select662      ; 3 uses
  br i1 %6, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ahp = add nsw i32 %.61039, 1
  %i.ahq = sdiv i32 %i.aho, %i.ahp
  %i.ahr = add nsw i32 %i.ahq, %i.aho
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.6531 = phi i32 [ %i.ahr, %bb.eg ], [ %i.aho, %bb.ef ] ; 3 uses
  %i.ahs = icmp sgt i32 %.61039, 1
  %i.aht = icmp ne i64 %indvars.iv, 0
  %or.cond46 = select i1 %i.ahs, i1 %i.aht, i1 false
  br i1 %or.cond46, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %.neg640 = sdiv i32 %.6531, -1024
  %i.ahu = add i32 %.neg640, %i.afg
  %i.ahv = add nsw i32 %i.afg, 2
  %i.ahw = call i32 @llvm.smin.i32(i32 %i.ahv, i32 %i.ahu)
  %.sroa.speculated761 = call i32 @llvm.smax.i32(i32 %i.ahw, i32 1) ; 4 uses
  %i.ahx = sub nsw i32 %i.afg, %.sroa.speculated761
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.afh, i64 52
  store i32 %i.ahx, ptr %i.ahy, align 4, !tbaa !322
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.afh, i64 56
  %i.aia = xor i32 %.11031.ph1258, -1             ; 2 uses
  %i.aib = sub nsw i32 0, %.11031.ph1258          ; 2 uses
  %i.aic = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ahz, i32 noundef %i.aia, i32 noundef %i.aib, i32 noundef %.sroa.speculated761, i1 noundef zeroext true)
  %i.aid = sub nsw i32 0, %i.aic                  ; 5 uses
  %i.aie = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 52
  store i32 0, ptr %i.aif, align 4, !tbaa !322
  %i.aig = icmp slt i32 %.11031.ph1258, %i.aid
  br i1 %i.aig, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.aih = icmp slt i32 %.sroa.speculated761, %i.afg
  %i.aii = add nsw i32 %.0506.ph1260, 50
  %i.aij = icmp slt i32 %i.aii, %i.aid
  %i.aik = select i1 %i.aih, i1 %i.aij, i1 false
  %i.ail = add nsw i32 %.0506.ph1260, 9
  %i.aim = icmp sgt i32 %i.ail, %i.aid
  %i.ain = zext i1 %i.aik to i32
  %.neg641 = sext i1 %i.aim to i32
  %i.aio = add i32 %i.afg, %.neg641
  %i.aip = add i32 %i.aio, %i.ain                 ; 2 uses
  %i.aiq = icmp sgt i32 %i.aip, %.sroa.speculated761
  br i1 %i.aiq, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.air = getelementptr inbounds nuw i8, ptr %i.aie, i64 56
  %i.ais = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.air, i32 noundef %i.aia, i32 noundef %i.aib, i32 noundef %i.aip, i1 noundef zeroext %i.g)
  %i.ait = sub nsw i32 0, %i.ais
  %.pre1319 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aiu = phi ptr [ %.pre1319, %bb.ek ], [ %i.aie, %bb.ej ]
  %.1521 = phi i32 [ %i.ait, %bb.ek ], [ %i.aid, %bb.ej ]
  %i.aiv = trunc i16 %i.wj to i8
  %i.aiw = and i8 %i.aiv, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef %i.aiu, i8 noundef zeroext %i.xd, i8 noundef zeroext %i.aiw, i32 noundef 1365)
  br label %bb.en

bb.em:                                            ; preds = %bb.eh
  %i.aix = add nsw i32 %.6531, 1140
  %spec.select663 = select i1 %.not1192, i32 %i.aix, i32 %.6531 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.afh, i64 56
  %i.aiz = xor i32 %.11031.ph1258, -1
  %i.aja = sub nsw i32 0, %.11031.ph1258
  %i.ajb = icmp sgt i32 %spec.select663, 3957
  %.neg638 = sext i1 %i.ajb to i32
  %i.ajc = add i32 %i.afg, %.neg638
  %i.ajd = icmp sgt i32 %spec.select663, 5654
  %i.aje = icmp sgt i32 %i.afg, 2
  %i.ajf = select i1 %i.ajd, i1 %i.aje, i1 false
  %.neg639 = sext i1 %i.ajf to i32
  %i.ajg = add i32 %i.ajc, %.neg639
  %i.ajh = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aiy, i32 noundef %i.aiz, i32 noundef %i.aja, i32 noundef %i.ajg, i1 noundef zeroext %i.g)
  %i.aji = sub nsw i32 0, %i.ajh
  br label %bb.en

bb.en:                                            ; preds = %bb.ei, %bb.el, %bb.em
  %.3523 = phi i32 [ %i.aji, %bb.em ], [ %.1521, %bb.el ], [ %i.aid, %bb.ei ] ; 8 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.wj) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.we) #33
  %i.ajj = load ptr, ptr %i.aq, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.ajk = load atomic i8, ptr %i.ajj monotonic, align 8, !range !221, !noundef !48
  %i.ajl = trunc nuw i8 %i.ajk to i1
  br i1 %i.ajl, label %.thread1119, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ajm = icmp eq i32 %.3523, %.0506.ph1260
  br i1 %i.ajm, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.ajn = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !253
  %i.ajq = add nsw i32 %i.ajp, 2
  %i.ajr = load i32, ptr %i.wc, align 16, !tbaa !264
  %.not642 = icmp slt i32 %i.ajq, %i.ajr
  br i1 %.not642, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ajs = load atomic i64, ptr %i.wd seq_cst, align 8
  %i.ajt = and i64 %i.ajs, 14
  %i.aju = icmp eq i64 %i.ajt, 0
  br i1 %i.aju, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ajv = add i32 %.0506.ph1260, 31505
  %i.ajw = icmp ult i32 %i.ajv, 63011
  %i.ajx = zext i1 %i.ajw to i32
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %i.ajy = phi i32 [ 0, %bb.eq ], [ 0, %bb.ep ], [ 0, %bb.eo ], [ %i.ajx, %bb.er ]
  %i.ajz = add nsw i32 %i.ajy, %.3523             ; 2 uses
  %i.aka = icmp sgt i32 %i.ajz, %.0506.ph1260
  br i1 %i.aka, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.akb = icmp sgt i32 %i.ajz, %.11031.ph1258
  br i1 %i.akb, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %.not643 = icmp slt i32 %.3523, %.sroa.speculated819
  br i1 %.not643, label %bb.ev, label %.thread1126

.thread1126:                                      ; preds = %bb.eu
  store i64 %15, ptr %i.u, align 8
  store i64 %16, ptr %i.t, align 8
  %i.akc = icmp slt i32 %.2505, 2
  %i.akd = zext i1 %i.akc to i32
  %i.ake = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 48 ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !324
  %i.akh = add nsw i32 %i.akg, %i.akd
  store i32 %i.akh, ptr %i.akf, align 8, !tbaa !324
  br label %.loopexit

bb.ev:                                            ; preds = %bb.eu
  %i.aki = add i32 %.61039, -14
  %or.cond49 = icmp ult i32 %i.aki, -11
  %i.akj = add i32 %.3523, -31507
  %spec.select.i706 = icmp ult i32 %i.akj, -63013
  %or.cond1163 = select i1 %or.cond49, i1 true, i1 %spec.select.i706
  %i.akk = add nsw i32 %.61039, -2
  %spec.select1167 = select i1 %or.cond1163, i32 %.61039, i32 %i.akk
  br label %.thread1092

bb.ew:                                            ; preds = %bb.et, %bb.es
  %.7513 = phi i32 [ %.0506.ph1260, %bb.es ], [ %.3523, %bb.et ] ; 3 uses
  %i.akl = icmp ne i16 %i.wj, %.sroa.0827.0.ph1256
  %i.akm = icmp samesign ult i64 %indvars.iv, 32
  %or.cond51 = select i1 %i.akl, i1 %i.akm, i1 false
  br i1 %or.cond51, label %bb.ex, label %.thread1092

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.wy, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.akn = add i64 %16, 1
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %16
  store i16 %i.wj, ptr %i.ako, align 2, !tbaa !191
  br label %.thread1092

bb.ez:                                            ; preds = %bb.ex
  %i.akp = add i64 %15, 1
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %15
  store i16 %i.wj, ptr %i.akq, align 2, !tbaa !191
  br label %.thread1092

.thread1092:                                      ; preds = %bb.ev, %bb.dh, %bb.do, %bb.dn, %bb.dp, %bb.dl, %bb.dk, %bb.ew, %bb.ez, %bb.ey
  %17 = phi i64 [ %16, %bb.ev ], [ %i.akn, %bb.ey ], [ %16, %bb.ez ], [ %16, %bb.ew ], [ %16, %bb.dk ], [ %16, %bb.do ], [ %16, %bb.dl ], [ %16, %bb.dp ], [ %16, %bb.dn ], [ %16, %bb.dh ] ; 2 uses
  %18 = phi i64 [ %15, %bb.ev ], [ %15, %bb.ey ], [ %i.akp, %bb.ez ], [ %15, %bb.ew ], [ %15, %bb.dk ], [ %15, %bb.do ], [ %15, %bb.dl ], [ %15, %bb.dp ], [ %15, %bb.dn ], [ %15, %bb.dh ] ; 2 uses
  %.sroa.0827.2 = phi i16 [ %i.wj, %bb.ev ], [ %.sroa.0827.0.ph1256, %bb.ey ], [ %.sroa.0827.0.ph1256, %bb.ez ], [ %.sroa.0827.0.ph1256, %bb.ew ], [ %.sroa.0827.0.ph1256, %bb.dk ], [ %.sroa.0827.0.ph1256, %bb.do ], [ %.sroa.0827.0.ph1256, %bb.dl ], [ %.sroa.0827.0.ph1256, %bb.dp ], [ %.sroa.0827.0.ph1256, %bb.dn ], [ %.sroa.0827.0.ph1256, %bb.dh ] ; 2 uses
  %.9 = phi i32 [ %spec.select1167, %bb.ev ], [ %.61039, %bb.ey ], [ %.61039, %bb.ez ], [ %.61039, %bb.ew ], [ %.41038.ph1257, %bb.dk ], [ %.41038.ph1257, %bb.do ], [ %.41038.ph1257, %bb.dl ], [ %.41038.ph1257, %bb.dp ], [ %.41038.ph1257, %bb.dn ], [ %.41038.ph1257, %bb.dh ] ; 2 uses
  %.3 = phi i32 [ %.3523, %bb.ev ], [ %.11031.ph1258, %bb.ey ], [ %.11031.ph1258, %bb.ez ], [ %.11031.ph1258, %bb.ew ], [ %.11031.ph1258, %bb.dk ], [ %.11031.ph1258, %bb.do ], [ %.11031.ph1258, %bb.dl ], [ %.11031.ph1258, %bb.dp ], [ %.11031.ph1258, %bb.dn ], [ %.11031.ph1258, %bb.dh ] ; 2 uses
  %.10516 = phi i32 [ %.3523, %bb.ev ], [ %.7513, %bb.ey ], [ %.7513, %bb.ez ], [ %.7513, %bb.ew ], [ %.0506.ph1260, %bb.dk ], [ %spec.select658, %bb.do ], [ %.0506.ph1260, %bb.dl ], [ %.0506.ph1260, %bb.dp ], [ %.0506.ph1260, %bb.dn ], [ %.0506.ph1260, %bb.dh ] ; 2 uses
  %i.akr = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not11891233 = icmp eq i16 %i.akr, 0
  br i1 %.not11891233, label %.outer..loopexit_crit_edge, label %.lr.ph1234

.outer..loopexit_crit_edge:                       ; preds = %.thread1092, %bb.cz
  %.lcssa1250 = phi i64 [ 0, %bb.cz ], [ %17, %.thread1092 ]
  %.lcssa1244 = phi i64 [ 0, %bb.cz ], [ %18, %.thread1092 ]
  %split = phi i16 [ 0, %bb.cz ], [ %.sroa.0827.2, %.thread1092 ]
  %split1235 = phi i32 [ %.31037, %bb.cz ], [ %.9, %.thread1092 ]
  %split1236 = phi i32 [ %.sroa.speculated824, %bb.cz ], [ %.3, %.thread1092 ]
  %split1237 = phi i32 [ 0, %bb.cz ], [ %i.wp, %.thread1092 ]
  %split1238 = phi i32 [ -32001, %bb.cz ], [ %.10516, %.thread1092 ]
  store i64 %.lcssa1244, ptr %i.u, align 8
  store i64 %.lcssa1250, ptr %i.t, align 8
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %.backedge
  %i.aks = trunc nuw nsw i64 %indvars.iv to i32
  store i64 %15, ptr %i.u, align 8
  store i64 %16, ptr %i.t, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.outer..loopexit_crit_edge, %..loopexit_crit_edge, %.thread1126
  %.11031.ph1225 = phi i32 [ %.11031.ph1258, %.thread1126 ], [ %.11031.ph1258, %..loopexit_crit_edge ], [ %split1236, %.outer..loopexit_crit_edge ] ; 3 uses
  %.sroa.0827.3 = phi i16 [ %i.wj, %.thread1126 ], [ %.sroa.0827.0.ph1256, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ] ; 8 uses
  %.10 = phi i32 [ %.61039, %.thread1126 ], [ %.41038.ph1257, %..loopexit_crit_edge ], [ %split1235, %.outer..loopexit_crit_edge ] ; 8 uses
  %.1534 = phi i32 [ %i.wp, %.thread1126 ], [ %i.aks, %..loopexit_crit_edge ], [ %split1237, %.outer..loopexit_crit_edge ] ; 2 uses
  %.11517 = phi i32 [ %.3523, %.thread1126 ], [ %.0506.ph1260, %..loopexit_crit_edge ], [ %split1238, %.outer..loopexit_crit_edge ] ; 4 uses
  %.not644 = icmp slt i32 %.11517, %.sroa.speculated819
  %i.akt = add i32 %.11517, -31507
  %spec.select.i707 = icmp ult i32 %i.akt, -63013
  %or.cond1164 = or i1 %.not644, %spec.select.i707
  %i.aku = add i32 %.11031.ph1225, -31507
  %spec.select.i708 = icmp ult i32 %i.aku, -63013
  %or.cond1165 = select i1 %or.cond1164, i1 true, i1 %spec.select.i708
  br i1 %or.cond1165, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.loopexit
  %i.akv = mul nsw i32 %.11517, %.10
  %i.akw = add nsw i32 %i.akv, %.sroa.speculated819
  %i.akx = add nsw i32 %.10, 1
  %i.aky = sdiv i32 %i.akw, %i.akx
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.loopexit
  %.12518 = phi i32 [ %.11517, %.loopexit ], [ %i.aky, %bb.fa ] ; 7 uses
  %.not645 = icmp eq i32 %.1534, 0                ; 2 uses
  br i1 %.not645, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %.pre1321 = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  br i1 %i.eh, label %.thread1133, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.akz = getelementptr inbounds nuw i8, ptr %.pre1321, i64 44
  %i.ala = load i8, ptr %i.akz, align 4, !tbaa !317, !range !221, !noundef !48
  %i.alb = trunc nuw i8 %i.ala to i1
  br i1 %i.alb, label %bb.fe, label %bb.fq

bb.fe:                                            ; preds = %bb.fd
  %i.alc = getelementptr inbounds nuw i8, ptr %.pre1321, i64 24
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !253
  %i.ale = add nsw i32 %i.ald, -32000
  br label %bb.fq

bb.ff:                                            ; preds = %bb.fb
  %.not1196 = icmp eq i16 %.sroa.0827.3, 0
  br i1 %.not1196, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.alf = load ptr, ptr %i.a, align 8, !tbaa !762
  %.sroa.064.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.alf, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0827.3, i8 noundef zeroext %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %.10, i16 %.sroa.064.0.copyload, i32 noundef %.1534)
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 2 uses
  %i.alh = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.ali = icmp eq i16 %.sroa.0827.3, %i.alh
  %i.alj = select i1 %i.ali, i32 809, i32 -865    ; 2 uses
  %i.alk = load i16, ptr %i.alg, align 64, !tbaa !164
  %i.all = sext i16 %i.alk to i32                 ; 2 uses
  %i.alm = add nsw i32 %i.alj, %i.all
  %i.aln = call i32 @llvm.abs.i32(i32 %i.alj, i1 true)
  %i.alo = mul nsw i32 %i.aln, %i.all
  %.neg.i711 = sdiv i32 %i.alo, -8192
  %i.alp = add nsw i32 %i.alm, %.neg.i711
  %i.alq = trunc i32 %i.alp to i16
  store i16 %i.alq, ptr %i.alg, align 64, !tbaa !164
  br label %bb.fq

bb.fh:                                            ; preds = %bb.ff
  %.not52 = xor i1 %i.ae, true
  %i.alr = icmp ne i8 %i.cg, 64                   ; 2 uses
  %or.cond55 = and i1 %i.alr, %.not52
  br i1 %or.cond55, label %bb.fi, label %bb.fo

bb.fi:                                            ; preds = %bb.fh
  %i.als = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.alt = getelementptr inbounds i8, ptr %i.als, i64 -20
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !323
  %.neg646 = sdiv i32 %i.alu, -100
  %i.alv = mul nsw i32 %.10, 56
  %.sroa.speculated746 = call i32 @llvm.smin.i32(i32 %i.alv, i32 489)
  %i.alw = getelementptr inbounds i8, ptr %i.als, i64 -16
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !319
  %i.aly = icmp sgt i32 %i.alx, 8
  %i.alz = select i1 %i.aly, i32 184, i32 0
  %i.ama = getelementptr inbounds nuw i8, ptr %i.als, i64 44
  %i.amb = load i8, ptr %i.ama, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amc = trunc nuw i8 %i.amb to i1
  br i1 %i.amc, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.amd = getelementptr inbounds nuw i8, ptr %i.als, i64 32
  %i.ame = load i32, ptr %i.amd, align 8, !tbaa !252
  %i.amf = add nsw i32 %i.ame, -107
  %.not647 = icmp sgt i32 %.12518, %i.amf
  %i.amg = select i1 %.not647, i32 0, i32 147
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.amh = phi i32 [ 0, %bb.fi ], [ %i.amg, %bb.fj ]
  %i.ami = getelementptr inbounds i8, ptr %i.als, i64 -12
  %i.amj = load i8, ptr %i.ami, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amk = trunc nuw i8 %i.amj to i1
  br i1 %i.amk, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aml = getelementptr inbounds i8, ptr %i.als, i64 -24
  %i.amm = load i32, ptr %i.aml, align 8, !tbaa !252
  %i.amn = sub i32 -65, %i.amm
  %.not648 = icmp sgt i32 %.12518, %i.amn
  %i.amo = select i1 %.not648, i32 0, i32 156
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.amp = phi i32 [ 0, %bb.fk ], [ %i.amo, %bb.fl ]
  %i.amq = add i32 %.sroa.speculated746, -215
  %i.amr = add i32 %i.amq, %.neg646
  %i.ams = add nsw i32 %i.amr, %i.alz
  %i.amt = add nsw i32 %i.ams, %i.amh
  %i.amu = add nsw i32 %i.amt, %i.amp
  %.sroa.speculated741 = call i32 @llvm.smax.i32(i32 %i.amu, i32 0)
  %i.amv = mul nsw i32 %.10, 141
  %i.amw = call i32 @llvm.smin.i32(i32 %i.amv, i32 1438)
  %.sroa.speculated735 = add nsw i32 %i.amw, -87
  %i.amx = mul nsw i32 %.sroa.speculated741, %.sroa.speculated735 ; 3 uses
  %i.amy = getelementptr inbounds i8, ptr %i.als, i64 -56
  %i.amz = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 %i.amz ; 2 uses
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !330
  %i.anc = mul nsw i32 %i.amx, 203
  %i.and = sdiv i32 %i.anc, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.amy, i8 noundef zeroext %i.anb, i8 noundef zeroext %i.cg, i32 noundef %i.and)
  %i.ane = xor i8 %i.ag, 1
  %i.anf = zext i8 %i.ane to i64
  %i.ang = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.anf
  %i.anh = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ani = getelementptr inbounds i8, ptr %i.anh, i64 -28
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !234 ; 2 uses
  %i.ank = zext i16 %i.anj to i64
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %i.ang, i64 %i.ank ; 2 uses
  %i.anm = mul nsw i32 %i.amx, 243
  %i.ann = sdiv i32 %i.anm, 32768
  %.sroa.speculate.load.false.sroa.speculated.i715 = call i32 @llvm.smax.i32(i32 %i.ann, i32 -7183)
  %.sroa.speculated.i716 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i715, i32 7183) ; 2 uses
  %i.ano = load i16, ptr %i.anl, align 2, !tbaa !132
  %i.anp = sext i16 %i.ano to i32                 ; 2 uses
  %i.anq = add nsw i32 %.sroa.speculated.i716, %i.anp
  %i.anr = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i716, i1 true)
  %i.ans = mul nsw i32 %i.anr, %i.anp
  %.neg.i717 = sdiv i32 %i.ans, -7183
  %i.ant = add nsw i32 %i.anq, %.neg.i717
  %i.anu = trunc i32 %i.ant to i16
  store i16 %i.anu, ptr %i.anl, align 2, !tbaa !132
  %i.anv = load i8, ptr %i.ana, align 1, !tbaa !330 ; 2 uses
  %i.anw = and i8 %i.anv, 7
  %.not649 = icmp eq i8 %i.anw, 1
  %i.anx = and i16 %i.anj, -16384
  %.not650 = icmp eq i16 %i.anx, 16384
  %or.cond1166 = or i1 %.not650, %.not649
  br i1 %or.cond1166, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.any = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.anz = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !333
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.any, i64 40
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !337
  %i.aoe = and i64 %i.aod, %i.aob
  %i.aof = getelementptr inbounds nuw i8, ptr %i.any, i64 24
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !162
  %i.aoh = getelementptr inbounds nuw [2048 x i8], ptr %i.aog, i64 %i.aoe
  %i.aoi = zext i8 %i.anv to i64
  %i.aoj = getelementptr inbounds nuw [128 x i8], ptr %i.aoh, i64 %i.aoi
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.aoj, i64 %i.amz ; 2 uses
  %i.aol = mul nsw i32 %i.amx, 145
  %i.aom = sdiv i32 %i.aol, 4096
  %.sroa.speculate.load.false.sroa.speculated.i718 = call i32 @llvm.smax.i32(i32 %i.aom, i32 -8192)
  %.sroa.speculated.i719 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i718, i32 8192) ; 2 uses
  %i.aon = load atomic i16, ptr %i.aok monotonic, align 2
  %i.aoo = sext i16 %i.aon to i32                 ; 2 uses
  %i.aop = add nsw i32 %.sroa.speculated.i719, %i.aoo
  %i.aoq = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i719, i1 true)
  %i.aor = mul nsw i32 %i.aoq, %i.aoo
  %.neg.i720 = sdiv i32 %i.aor, -8192
  %i.aos = add nsw i32 %i.aop, %.neg.i720
  %i.aot = trunc i32 %i.aos to i16
  store atomic i16 %i.aot, ptr %i.aok monotonic, align 2
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fh
  %or.cond58 = and i1 %i.ae, %i.alr
  br i1 %or.cond58, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aou = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 184
  %i.aow = load i8, ptr %i.aov, align 8, !tbaa !318
  %i.aox = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !330
  %i.apa = zext i8 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.apa
  %i.apc = getelementptr inbounds nuw [16 x i8], ptr %i.apb, i64 %i.aox
  %i.apd = and i8 %i.aow, 7
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [2 x i8], ptr %i.apc, i64 %i.ape ; 2 uses
  %i.apg = load i16, ptr %i.apf, align 2, !tbaa !355
end_hunk_2
begin_hunk_3_@_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi:bb.a
.split.us.3:                                      ; preds = %bb.d, %.split.us.2, %.split.us.2
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -196
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !234
  switch i16 %i.bb, label %bb.e [
    i16 65, label %.split.us.4
    i16 0, label %.split.us.4
  ]

bb.e:                                             ; preds = %.split.us.3
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -216
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !247
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %i.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.e ; 2 uses
  %i.bg = mul nsw i32 %3, 291
  %i.bh = sdiv i32 %i.bg, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.3 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 -30000)
  %.sroa.speculated.i.us.3 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.3, i32 30000) ; 2 uses
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !167
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = add nsw i32 %.sroa.speculated.i.us.3, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.3, i1 true)
  %i.bm = mul nsw i32 %i.bl, %i.bj
  %.neg.i.us.3 = sdiv i32 %i.bm, -30000
  %i.bn = add nsw i32 %i.bk, %.neg.i.us.3
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %i.bf, align 2, !tbaa !167
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3, %.split.us.3
  %i.bp = getelementptr inbounds i8, ptr %0, i64 -252
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !234
  switch i16 %i.bq, label %bb.f [
    i16 65, label %.split.us.5
    i16 0, label %.split.us.5
  ]

bb.f:                                             ; preds = %.split.us.4
  %i.br = getelementptr inbounds i8, ptr %0, i64 -272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !247
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %i.bs, i64 %i.d
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.e ; 2 uses
  %i.bv = mul nsw i32 %3, 149
  %i.bw = sdiv i32 %i.bv, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.4 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 -30000)
  %.sroa.speculated.i.us.4 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.4, i32 30000) ; 2 uses
  %i.bx = load i16, ptr %i.bu, align 2, !tbaa !167
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = add nsw i32 %.sroa.speculated.i.us.4, %i.by
  %i.ca = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.4, i1 true)
  %i.cb = mul nsw i32 %i.ca, %i.by
  %.neg.i.us.4 = sdiv i32 %i.cb, -30000
  %i.cc = add nsw i32 %i.bz, %.neg.i.us.4
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bu, align 2, !tbaa !167
  br label %.split.us.5

.split.us.5:                                      ; preds = %bb.f, %.split.us.4, %.split.us.4
  %i.ce = getelementptr inbounds i8, ptr %0, i64 -308
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !234
  switch i16 %i.cf, label %bb.g [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

bb.g:                                             ; preds = %.split.us.5
  %i.cg = getelementptr inbounds i8, ptr %0, i64 -328
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !247
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.ch, i64 %i.d
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.e ; 2 uses
  %i.ck = mul nsw i32 %3, 237
  %i.cl = sdiv i32 %i.ck, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.5 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 -30000)
  %.sroa.speculated.i.us.5 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.5, i32 30000) ; 2 uses
  %i.cm = load i16, ptr %i.cj, align 2, !tbaa !167
  %i.cn = sext i16 %i.cm to i32                   ; 2 uses
  %i.co = add nsw i32 %.sroa.speculated.i.us.5, %i.cn
  %i.cp = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.5, i1 true)
  %i.cq = mul nsw i32 %i.cp, %i.cn
  %.neg.i.us.5 = sdiv i32 %i.cq, -30000
  %i.cr = add nsw i32 %i.co, %.neg.i.us.5
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %i.cj, align 2, !tbaa !167
  br label %.critedge

.split.preheader:                                 ; preds = %bb.a
  switch i16 %i.g, label %bb.h [
    i16 65, label %.split.1
    i16 0, label %.split.1
  ]

bb.h:                                             ; preds = %.split.preheader
  %i.ct = getelementptr inbounds i8, ptr %0, i64 -48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !247
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %i.cu, i64 %i.d
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.e ; 2 uses
  %i.cx = mul nsw i32 %3, 1133
  %i.cy = sdiv i32 %i.cx, 1024
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 -30088)
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 29912)
  %.sroa.speculated.i = add nsw i32 %i.da, 88     ; 2 uses
  %i.db = load i16, ptr %i.cw, align 2, !tbaa !167
  %i.dc = sext i16 %i.db to i32                   ; 2 uses
  %i.dd = add nsw i32 %.sroa.speculated.i, %i.dc
  %i.de = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.df = mul nsw i32 %i.de, %i.dc
  %.neg.i = sdiv i32 %i.df, -30000
  %i.dg = add nsw i32 %i.dd, %.neg.i
  %i.dh = trunc i32 %i.dg to i16
  store i16 %i.dh, ptr %i.cw, align 2, !tbaa !167
  br label %.split.1

.split.1:                                         ; preds = %bb.h, %.split.preheader, %.split.preheader
  %i.di = getelementptr inbounds i8, ptr %0, i64 -84
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !234
  switch i16 %i.dj, label %bb.i [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

bb.i:                                             ; preds = %.split.1
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !247
  %i.dm = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %i.d
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.e ; 2 uses
  %i.do = mul nsw i32 %3, 683
  %i.dp = sdiv i32 %i.do, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 -30000)
  %.sroa.speculated.i.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.1, i32 30000) ; 2 uses
  %i.dq = load i16, ptr %i.dn, align 2, !tbaa !167
  %i.dr = sext i16 %i.dq to i32                   ; 2 uses
  %i.ds = add nsw i32 %.sroa.speculated.i.1, %i.dr
  %i.dt = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.1, i1 true)
  %i.du = mul nsw i32 %i.dt, %i.dr
  %.neg.i.1 = sdiv i32 %i.du, -30000
  %i.dv = add nsw i32 %i.ds, %.neg.i.1
  %i.dw = trunc i32 %i.dv to i16
  store i16 %i.dw, ptr %i.dn, align 2, !tbaa !167
  br label %.critedge

.critedge:                                        ; preds = %.split.1, %.split.1, %bb.i, %.split.us.5, %.split.us.5, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 37 uses
  %7 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 4 uses
  %8 = alloca %"struct.Stockfish::StateInfo", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 16 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.425, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !762
  %i.g = icmp slt i32 %5, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.fm

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated841 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !253
  %i.l = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.k) #33
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 2                          ; 2 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %.not475.not = icmp sgt i32 %i.p, %4
  br i1 %.not475.not, label %bb.fm, label %._crit_edge1282

._crit_edge1282:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1282, %bb.d, %bb.c
  %i.r = phi ptr [ %.pre, %._crit_edge1282 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 8 uses
  %.0977 = phi i32 [ %i.q, %._crit_edge1282 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.s, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !315
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 13 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !214
  %i.y = icmp ne i64 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 44 ; 2 uses
  %i.aa = zext i1 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 4, !tbaa !317
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !318
  %i.ad = icmp ne i8 %i.ac, 0                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !171 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 64, !tbaa !64
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !114 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !320
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !273
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !253 ; 4 uses
  %.not476 = icmp sgt i32 %i.aq, %i.as
  br i1 %.not476, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ap, align 16, !tbaa !273
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.aw = load atomic i8, ptr %i.av monotonic, align 8, !range !221, !noundef !48
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.as) #33
  %.pre1294 = load i32, ptr %i.ar, align 8, !tbaa !253 ; 4 uses
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp sgt i32 %.pre1294, 245
  br i1 %i.az, label %.thread, label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ba = phi i32 [ %i.as, %bb.j ], [ %.pre1294, %bb.k ]
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bc = load i8, ptr %i.z, align 4, !tbaa !317, !range !221, !noundef !48
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !125
  switch i8 %i.bl, label %bb.q [
    i8 -1, label %bb.o
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.n, %bb.p
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.p ], [ %i.bj, %bb.n ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !127
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.ae, align 4, !tbaa !171
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !138
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.fl

bb.r:                                             ; preds = %.thread, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.fl

bb.s:                                             ; preds = %bb.l
  %i.ca = add nsw i32 %.pre1294, -32000
  %.sroa.speculated726 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.0977) ; 12 uses
  %i.cb = sub nsw i32 31999, %.pre1294
  %.sroa.speculated720 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 30 uses
  %.not477 = icmp slt i32 %.sroa.speculated726, %.sroa.speculated720
  br i1 %.not477, label %bb.t, label %bb.fl

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds i8, ptr %i.r, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.u [
    i16 65, label %bb.v
    i16 0, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = and i8 %i.ce, 63
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  %i.cg = phi i8 [ %i.cf, %bb.u ], [ 64, %bb.t ], [ 64, %bb.t ] ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !322 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !322
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !323
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store i32 0, ptr %i.ck, align 8, !tbaa !324
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !191 ; 3 uses
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !213 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !311 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !312 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 14
  br i1 %i.cs, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = add nsw i32 %i.cr, -14
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407
  %i.cy = xor i64 %i.cx, %i.cp
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.v, %bb.w
  %i.cz = phi i64 [ %i.cy, %bb.w ], [ %i.cp, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 7 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.db, i64 noundef %i.cz) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  %i.de = load i8, ptr %i.dc, align 4, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !762 ; 14 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.de, ptr %i.dg, align 2, !tbaa !325
  %i.dh = trunc nuw i8 %i.de to i1                ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  store i16 0, ptr %i.dd, align 8, !tbaa !191
  br label %bb.z

bb.y:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %.sroa.0175.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !326
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !253
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !312
  %i.dp = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.do)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.0175.01014 = phi i16 [ %.sroa.0175.0.copyload, %bb.y ], [ 0, %bb.x ] ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  store i8 %i.pp, ptr %i.b, align 1, !tbaa !313
  %i.pq = icmp samesign ugt i32 %.1983, 5
  br i1 %i.pq, label %.thread1045, label %bb.bu

.thread1045:                                      ; preds = %.thread1038
  %i.pr = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.ps = icmp eq i16 %i.pr, 0
  %i.pt = icmp slt i32 %i.ci, 4
  %or.cond26.not.not = select i1 %i.ps, i1 %i.pt, i1 false
  %i.pu = sext i1 %or.cond26.not.not to i32
  %spec.select1109 = add nsw i32 %.1983, %i.pu
  %i.pv = add nsw i32 %.sroa.speculated720, 235
  %narrow1047 = mul nuw nsw i8 %i.pp, 63
  %i.pw = zext nneg i8 %narrow1047 to i32
  %i.px = sub nsw i32 %i.pv, %i.pw
  br label %bb.bv

bb.bu:                                            ; preds = %.thread1038
  %i.py = add nsw i32 %.sroa.speculated720, 235
  %narrow = mul nuw nsw i8 %i.pp, 63
  %i.pz = zext nneg i8 %narrow to i32
  %i.qa = sub nsw i32 %i.py, %i.pz
  %i.qb = icmp samesign ugt i32 %.1983, 2
  br i1 %i.qb, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %.thread1045, %bb.bu
  %i.qc = phi i32 [ %i.px, %.thread1045 ], [ %i.qa, %bb.bu ] ; 7 uses
  %.29841048 = phi i32 [ %spec.select1109, %.thread1045 ], [ %.1983, %bb.bu ] ; 5 uses
  %i.qd = sub nsw i32 0, %i.qc                    ; 2 uses
  %i.qe = add i32 %.sroa.speculated720, -31507
  %spec.select.i583 = icmp ult i32 %i.qe, -63013
  br i1 %spec.select.i583, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qf = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %i.qg = icmp ne i32 %i.qf, 32002
  %i.qh = icmp slt i32 %i.qf, %i.qc
  %or.cond1110 = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %or.cond1110, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %.sroa.0137.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.qi = load i32, ptr %i.pk, align 8, !tbaa !252
  %i.qj = sub nsw i32 %i.qc, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0137.0.copyload, i32 noundef %i.qj, ptr noundef nonnull %i.qk) #33
  %i.ql = add nsw i32 %.29841048, -5
  %i.qm = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !252
  %i.qp = sub nsw i32 %i.qo, %.sroa.speculated720
  %.neg496 = sdiv i32 %i.qp, -315
  %i.qq = add nsw i32 %i.ql, %.neg496
  %i.qr = call i32 @llvm.smax.i32(i32 %i.qq, i32 0)
  %.sroa.speculated885 = call i32 @llvm.umin.i32(i32 %.29841048, i32 %i.qr) ; 3 uses
  %i.qs = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not11451194 = icmp eq i16 %i.qs, 0
  br i1 %.not11451194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.qt = sub nsw i32 1, %i.qc                    ; 2 uses
  %i.qu = icmp ne i32 %.sroa.speculated885, 0
  %i.qv = xor i1 %6, true
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.qx = add nuw nsw i32 %.sroa.speculated885, 1
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph, %.backedge1168
  %i.qy = phi i16 [ %i.qs, %.lr.ph ], [ %i.rb, %.backedge1168 ] ; 5 uses
  %i.qz = icmp eq i16 %i.qy, %i.cm
  br i1 %i.qz, label %.backedge1168, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ra = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy) #33
  br i1 %i.ra, label %bb.ca, label %.backedge1168

.backedge1168:                                    ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz
  %i.rb = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not1145 = icmp eq i16 %i.rb, 0
  br i1 %.not1145, label %._crit_edge, label %bb.by, !llvm.loop !775

bb.ca:                                            ; preds = %bb.bz
  %i.rc = load ptr, ptr %i.a, align 8, !tbaa !762
  call void @_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef %i.rc)
  %i.rd = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56
  %i.rf = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.re, i32 noundef %i.qd, i32 noundef %i.qt)
  %i.rg = sub nsw i32 0, %i.rf                    ; 2 uses
  %i.rh = icmp sle i32 %i.qc, %i.rg
  %or.cond28 = select i1 %i.rh, i1 %i.qu, i1 false
  br i1 %or.cond28, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ri = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.rk = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.rj, i32 noundef %i.qd, i32 noundef %i.qt, i32 noundef %.sroa.speculated885, i1 noundef zeroext %i.qv)
  %i.rl = sub nsw i32 0, %i.rk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0426 = phi i32 [ %i.rl, %bb.cb ], [ %i.rg, %bb.ca ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.qy) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.qw) #33
  %.not497 = icmp slt i32 %.0426, %i.qc
  br i1 %.not497, label %.backedge1168, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rm = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !253 ; 2 uses
  %i.rp = icmp sgt i32 %.0426, 31506
  %i.rq = icmp slt i32 %.0426, -31506
  %i.rr = select i1 %i.rq, i32 %i.ro, i32 0
  %i.rs = sub i32 0, %i.rr
  %.p.i586 = select i1 %i.rp, i32 %i.ro, i32 %i.rs
  %i.rt = add i32 %.p.i586, %.0426
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 45
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !329, !range !221, !noundef !48
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.ry = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.rx) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.rt, i1 noundef zeroext %i.rw, i8 noundef zeroext 2, i32 noundef %i.qx, i16 %i.qy, i32 noundef %.1445, i8 noundef zeroext %i.ry) #33
  %i.rz = add i32 %.0426, -31507
  %spec.select.i587 = icmp ult i32 %i.rz, -63013
  br i1 %spec.select.i587, label %.backedge1168, label %.thread1049

.thread1049:                                      ; preds = %bb.cd
  %.neg498 = sub i32 %.sroa.speculated720, %i.qc
  %i.sa = add i32 %.neg498, %.0426
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.thread1041

._crit_edge:                                      ; preds = %.backedge1168, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bw, %._crit_edge, %bb.bu, %bb.bv, %.thread1019
  %.3985 = phi i32 [ %.1983, %.thread1019 ], [ %.29841048, %bb.bv ], [ %.29841048, %bb.bw ], [ %.29841048, %._crit_edge ], [ %.1983, %bb.bu ] ; 4 uses
  %i.sb = add nsw i32 %.sroa.speculated720, 418   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 8, !tbaa !336
  %i.se = and i8 %i.sd, 2
  %.not499 = icmp eq i8 %i.se, 0
  br i1 %.not499, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sf = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !341
  %i.sh = add nsw i32 %.3985, -4
  %.not500 = icmp slt i32 %i.sg, %i.sh
  br i1 %.not500, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.si = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %.not501 = icmp slt i32 %i.si, %i.sb
  %i.sj = add i32 %.sroa.speculated720, -31507
  %spec.select.i588 = icmp ult i32 %i.sj, -63013
  %or.cond1111.not1146.not1149 = or i1 %spec.select.i588, %.not501
  %i.sk = add i32 %i.si, -31507
  %spec.select.i589 = icmp ult i32 %i.sk, -63013
  %or.cond1113 = or i1 %or.cond1111.not1146.not1149, %spec.select.i589
  br i1 %or.cond1113, label %bb.ch, label %.thread1041

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.sl = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 -48
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !247
  store ptr %i.sn, ptr %i.f, align 16, !tbaa !342
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sl, i64 -104
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !247
  store ptr %i.sq, ptr %i.so, align 8, !tbaa !342
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ss = getelementptr inbounds i8, ptr %i.sl, i64 -160
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !247
  store ptr %i.st, ptr %i.sr, align 16, !tbaa !342
  %i.su = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.sv = getelementptr inbounds i8, ptr %i.sl, i64 -216
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !247
  store ptr %i.sw, ptr %i.su, align 8, !tbaa !342
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sy = getelementptr inbounds i8, ptr %i.sl, i64 -272
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !247
  store ptr %i.sz, ptr %i.sx, align 16, !tbaa !342
  %i.ta = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.tb = getelementptr inbounds i8, ptr %i.sl, i64 -328
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !247
  store ptr %i.tc, ptr %i.ta, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.0128.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 4 uses
  %i.tf = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !253
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %14, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0128.0.copyload, i32 noundef %.3985, ptr noundef nonnull %0, ptr noundef nonnull %i.td, ptr noundef nonnull %i.te, ptr noundef nonnull %i.f, ptr noundef nonnull %i.tf, i32 noundef %i.th) #33
  %i.ti = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not115011951222 = icmp eq i16 %i.ti, 0
  br i1 %.not115011951222, label %.outer..loopexit_crit_edge, label %.lr.ph1196.lr.ph

.lr.ph1196.lr.ph:                                 ; preds = %bb.ch
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.tl = zext i8 %i.af to i64                    ; 3 uses
  %i.tm = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %spec.select560 = select i1 %6, i32 -2, i32 0
  %.neg528 = select i1 %i.eg, i32 -195, i32 6
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 11419648 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 2 uses
  %.neg1236 = select i1 %i.eg, i32 -375, i32 -127
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %.neg535 = select i1 %6, i32 -1945, i32 -934
  %i.tu = xor i1 %6, true                         ; 2 uses
  %i.tv = sub nsw i32 0, %.sroa.speculated720
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.lr.ph, %.thread1054
  %indvars.iv = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %indvars.iv.next, %.thread1054 ] ; 4 uses
  %i.tw = phi i16 [ %i.ti, %.lr.ph1196.lr.ph ], [ %i.aiv, %.thread1054 ]
  %.5980.ph1226 = phi i32 [ %.4979, %.lr.ph1196.lr.ph ], [ %.7, %.thread1054 ] ; 24 uses
  %.4986.ph1225 = phi i32 [ %.3985, %.lr.ph1196.lr.ph ], [ %.9991, %.thread1054 ] ; 24 uses
  %.sroa.0784.0.ph1224 = phi i16 [ 0, %.lr.ph1196.lr.ph ], [ %.sroa.0784.2, %.thread1054 ] ; 11 uses
  %.4999.ph1223 = phi i32 [ %.3998, %.lr.ph1196.lr.ph ], [ %.101005, %.thread1054 ] ; 15 uses
  %15 = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %18, %.thread1054 ] ; 12 uses
  %16 = phi i64 [ 0, %.lr.ph1196.lr.ph ], [ %17, %.thread1054 ] ; 12 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1196, %.backedge
  %i.tx = phi i16 [ %i.tw, %.lr.ph1196 ], [ %i.tz, %.backedge ] ; 27 uses
  %i.ty = icmp eq i16 %i.tx, %i.cm
  br i1 %i.ty, label %.backedge, label %bb.cj

.backedge:                                        ; preds = %bb.ci, %bb.cj
  %i.tz = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not1150 = icmp eq i16 %i.tz, 0
  br i1 %.not1150, label %..loopexit_crit_edge, label %bb.ci, !llvm.loop !776

bb.cj:                                            ; preds = %bb.ci
  %i.ua = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx) #33
  br i1 %i.ua, label %bb.ck, label %.backedge

bb.ck:                                            ; preds = %bb.cj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ub = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = trunc nuw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.ud, ptr %i.uc, align 8, !tbaa !319
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 56
  store ptr null, ptr %i.ue, align 8, !tbaa !254
  %i.uf = and i16 %i.tx, 63
  %i.ug = zext nneg i16 %i.uf to i64              ; 10 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ug ; 3 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !330
  %i.uj = icmp ne i8 %i.ui, 0
  %.not.i.i590 = icmp ult i16 %i.tx, -16384       ; 2 uses
  %or.cond.not.i.i591 = and i1 %.not.i.i590, %i.uj
  %i.uk = icmp slt i16 %i.tx, -16384              ; 2 uses
  %spec.select.i.i592 = or i1 %i.uk, %or.cond.not.i.i591
  %i.ul = and i16 %i.tx, 12288
  %i.um = icmp eq i16 %i.ul, 12288                ; 2 uses
  %i.un = or i1 %i.um, %spec.select.i.i592        ; 3 uses
  %i.uo = lshr i16 %i.tx, 6
  %i.up = and i16 %i.uo, 63
  %i.uq = zext nneg i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !330 ; 4 uses
  %i.ut = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx) #33 ; 3 uses
  %i.uu = add nsw i32 %.4986.ph1225, -1           ; 3 uses
  %i.uv = sub nsw i32 %.sroa.speculated720, %.5980.ph1226
  %i.uw = load i8, ptr %i.b, align 1, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = sext i32 %.4986.ph1225 to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !138
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.next
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !138
  %i.vd = mul nsw i32 %i.vc, %i.va                ; 2 uses
  %i.ve = mul nsw i32 %i.uv, 608
  %i.vf = load i32, ptr %i.tk, align 8, !tbaa !275
  %i.vg = sdiv i32 %i.ve, %i.vf
  %i.vh = mul nsw i32 %i.vd, 119
  %i.vi = sdiv i32 %i.vh, 256
  %i.vj = select i1 %i.ux, i32 0, i32 %i.vi
  %i.vk = add i32 %i.vd, 1182
  %i.vl = sub i32 %i.vk, %i.vg
  %i.vm = add i32 %i.vl, %i.vj                    ; 2 uses
  %i.vn = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 45
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !329, !range !221, !noundef !48
  %i.vq = trunc nuw i8 %i.vp to i1
  %i.vr = add nsw i32 %i.vm, 946
  %spec.select557 = select i1 %i.vq, i32 %i.vr, i32 %i.vm ; 3 uses
  %i.vs = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.tl
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !138
  %.not502 = icmp eq i32 %i.vv, 0
  %i.vw = icmp slt i32 %.4999.ph1223, -31506
  %or.cond1114 = select i1 %.not502, i1 true, i1 %i.vw
  br i1 %or.cond1114, label %.thread1063, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vx = mul nsw i32 %.4986.ph1225, %.4986.ph1225
  %i.vy = add nuw nsw i32 %i.vx, 3
  %narrow503 = sub nuw nsw i8 2, %i.uw
  %i.vz = zext nneg i8 %narrow503 to i32
  %i.wa = udiv i32 %i.vy, %i.vz
  %i.wb = zext nneg i32 %i.wa to i64
  %.not504 = icmp samesign ult i64 %indvars.iv.next, %i.wb
  br i1 %.not504, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.neg505 = sdiv i32 %spec.select557, -1024
  %i.wc = add i32 %.neg505, %i.uu                 ; 3 uses
  %or.cond30 = or i1 %i.ut, %i.un
  %i.wd = zext i8 %i.us to i64                    ; 5 uses
  br i1 %or.cond30, label %bb.co, label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.we = load i8, ptr %i.uh, align 1, !tbaa !330 ; 2 uses
  %i.wf = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.wd
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.wf, i64 %i.ug
  %i.wh = and i8 %i.we, 7
  %i.wi = zext nneg i8 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.wg, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !355 ; 2 uses
  %i.wl = icmp sgt i32 %i.wc, 6
  %or.cond33.not = select i1 %i.ut, i1 true, i1 %i.wl
  br i1 %or.cond33.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wm = sext i16 %i.wk to i32
  %i.wn = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !252
  %i.wq = mul nsw i32 %i.wc, 217
  %i.wr = zext i8 %i.we to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !138
  %i.wu = mul nsw i32 %i.wm, 131
  %i.wv = sdiv i32 %i.wu, 1024
  %i.ww = add nsw i32 %i.wq, 232
  %i.wx = add i32 %i.ww, %i.wv
  %i.wy = add i32 %i.wx, %i.wp
  %i.wz = add i32 %i.wy, %i.wt
  %.not510 = icmp sgt i32 %i.wz, %.5980.ph1226
  br i1 %.not510, label %bb.cq, label %.thread1054

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xa = mul nsw i32 %.4986.ph1225, 166
  %i.xb = sdiv i16 %i.wk, 29
  %.sext = sext i16 %i.xb to i32
  %i.xc = add nsw i32 %i.xa, %.sext
  %.sroa.speculated685 = call i32 @llvm.smax.i32(i32 %i.xc, i32 0)
  %i.xd = icmp sgt i32 %.5980.ph1226, -1
  br i1 %i.xd, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xe = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.tl
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !138
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.wd
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !138
  %.not511 = icmp eq i32 %i.xh, %i.xj
  br i1 %.not511, label %.thread1063, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.xk = sub nsw i32 0, %.sroa.speculated685
  %i.xl = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx, i32 noundef %i.xk) #33
  br i1 %i.xl, label %.thread1063, label %.thread1054, !llvm.loop !776

bb.ct:                                            ; preds = %bb.cn
  %i.xm = load ptr, ptr %i.f, align 16, !tbaa !342
  %i.xn = getelementptr inbounds nuw [128 x i8], ptr %i.xm, i64 %i.wd
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.ug
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !167
  %i.xq = sext i16 %i.xp to i32
  %i.xr = load ptr, ptr %i.so, align 8, !tbaa !342
  %i.xs = getelementptr inbounds nuw [128 x i8], ptr %i.xr, i64 %i.wd
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xs, i64 %i.ug
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !167
  %i.xv = sext i16 %i.xu to i32
  %i.xw = add nsw i32 %i.xv, %i.xq
  %i.xx = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.xy = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !333
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !337
  %i.yd = and i64 %i.yc, %i.ya
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !162
  %i.yg = getelementptr inbounds nuw [2048 x i8], ptr %i.yf, i64 %i.yd
  %i.yh = getelementptr inbounds nuw [128 x i8], ptr %i.yg, i64 %i.wd
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.yh, i64 %i.ug
  %i.yj = load atomic i16, ptr %i.yi monotonic, align 2
  %i.yk = sext i16 %i.yj to i32
  %i.yl = add nsw i32 %i.xw, %i.yk                ; 2 uses
  %i.ym = mul nsw i32 %.4986.ph1225, -4083
  %i.yn = icmp slt i32 %i.yl, %i.ym
  br i1 %i.yn, label %.thread1054, label %bb.cu, !llvm.loop !776

bb.cu:                                            ; preds = %bb.ct
  %i.yo = zext i16 %i.tx to i64
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.yo
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !132
  %i.yr = sext i16 %i.yq to i32
  %i.ys = mul nsw i32 %i.yr, 69
  %i.yt = sdiv i32 %i.ys, 32
  %i.yu = add nsw i32 %i.yt, %i.yl
  %i.yv = sdiv i32 %i.yu, 3208
  %i.yw = add nsw i32 %i.yv, %i.wc                ; 3 uses
  %i.yx = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !252 ; 2 uses
  %.not1151 = icmp eq i16 %.sroa.0784.0.ph1224, 0
  %i.za = mul nsw i32 %i.yw, 127
  %i.zb = icmp sgt i32 %i.yz, %.5980.ph1226
  %i.zc = select i1 %i.zb, i32 85, i32 0
  %i.zd = select i1 %.not1151, i32 203, i32 42
end_hunk_4
begin_hunk_5_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.aex = sext i16 %.sink to i32
  %i.aey = add nsw i32 %.sink1379, %i.aex         ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.acv, i64 36
  store i32 %i.aey, ptr %i.aez, align 4, !tbaa !323
  %i.afa = mul nsw i32 %i.aey, 425
  %.neg540 = sdiv i32 %i.afa, -4096
  %i.afb = add i32 %.neg540, %.5440               ; 3 uses
  %i.afc = icmp sgt i32 %.6988, 1
  %i.afd = icmp ne i64 %indvars.iv, 0             ; 2 uses
  %or.cond38 = select i1 %i.afc, i1 %i.afd, i1 false
  br i1 %or.cond38, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %.neg543 = sdiv i32 %i.afb, -1024
  %i.afe = add i32 %.neg543, %i.acu
  %i.aff = add nsw i32 %i.acu, 2
  %i.afg = call i32 @llvm.smin.i32(i32 %i.aff, i32 %i.afe)
  %.sroa.speculated665 = call i32 @llvm.smax.i32(i32 %i.afg, i32 1)
  %i.afh = add nuw nsw i32 %.sroa.speculated665, 1 ; 4 uses
  %i.afi = sub nsw i32 %i.acu, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %i.acv, i64 52
  store i32 %i.afi, ptr %i.afj, align 4, !tbaa !322
  %i.afk = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %i.afl = xor i32 %.5980.ph1226, -1              ; 2 uses
  %i.afm = sub nsw i32 0, %.5980.ph1226           ; 2 uses
  %i.afn = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.afk, i32 noundef %i.afl, i32 noundef %i.afm, i32 noundef %i.afh, i1 noundef zeroext true)
  %i.afo = sub nsw i32 0, %i.afn                  ; 5 uses
  %i.afp = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 52
  store i32 0, ptr %i.afq, align 4, !tbaa !322
  %i.afr = icmp slt i32 %.5980.ph1226, %i.afo
  br i1 %i.afr, label %bb.do, label %bb.dt

bb.do:                                            ; preds = %bb.dn
  %i.afs = icmp slt i32 %i.afh, %i.acu
  %i.aft = add nsw i32 %.4999.ph1223, 50
  %i.afu = icmp slt i32 %i.aft, %i.afo
  %i.afv = select i1 %i.afs, i1 %i.afu, i1 false
  %i.afw = add nsw i32 %.4999.ph1223, 9
  %i.afx = icmp sgt i32 %i.afw, %i.afo
  %i.afy = zext i1 %i.afv to i32
  %.neg544 = sext i1 %i.afx to i32
  %i.afz = add i32 %i.acu, %.neg544
  %i.aga = add i32 %i.afz, %i.afy                 ; 3 uses
  %i.agb = icmp sgt i32 %i.aga, %i.afh
  br i1 %i.agb, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afp, i64 56
  %i.agd = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.agc, i32 noundef %i.afl, i32 noundef %i.afm, i32 noundef %i.aga, i1 noundef zeroext %i.tu)
  %i.age = sub nsw i32 0, %i.agd
  %.pre1291 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.agf = phi ptr [ %.pre1291, %bb.dp ], [ %i.afp, %bb.do ]
  %.3429 = phi i32 [ %i.age, %bb.dp ], [ %i.afo, %bb.do ]
  %i.agg = trunc i16 %i.tx to i8
  %i.agh = and i8 %i.agg, 63
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef %i.agf, i8 noundef zeroext %i.us, i8 noundef zeroext %i.agh, i32 noundef 1365)
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dm
  br i1 %i.afd, label %bb.ds, label %.thread1330

bb.ds:                                            ; preds = %bb.dr
  %i.agi = add nsw i32 %i.afb, 1140
  %spec.select562 = select i1 %.not1153, i32 %i.agi, i32 %i.afb ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %i.agk = xor i32 %.5980.ph1226, -1
  %i.agl = sub nsw i32 0, %.5980.ph1226
  %i.agm = icmp sgt i32 %spec.select562, 3957
  %.neg541 = sext i1 %i.agm to i32
  %i.agn = add i32 %i.acu, %.neg541
  %i.ago = icmp sgt i32 %spec.select562, 5654
  %i.agp = icmp sgt i32 %i.acu, 2
  %i.agq = and i1 %i.agp, %i.ago
  %.neg542 = sext i1 %i.agq to i32
  %i.agr = add i32 %i.agn, %.neg542
  %i.ags = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.agj, i32 noundef %i.agk, i32 noundef %i.agl, i32 noundef %i.agr, i1 noundef zeroext %i.tu)
  %i.agt = sub nsw i32 0, %i.ags
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dn, %bb.dq, %bb.ds
  %.0993 = phi i32 [ %i.aga, %bb.dq ], [ %i.acu, %bb.dn ], [ %i.acu, %bb.ds ]
  %.5431 = phi i32 [ %.3429, %bb.dq ], [ %i.afo, %bb.dn ], [ %i.agt, %bb.ds ] ; 2 uses
  %i.agu = icmp sgt i32 %.5431, %.5980.ph1226
  br i1 %i.agu, label %.thread1330, label %bb.dx

.thread1330:                                      ; preds = %bb.dr, %bb.dt
  %.09931334 = phi i32 [ %.0993, %bb.dt ], [ %i.acu, %bb.dr ] ; 3 uses
  %i.agv = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 56 ; 2 uses
  store ptr %7, ptr %i.agw, align 8, !tbaa !254
  store i16 0, ptr %7, align 16, !tbaa !191
  %i.agx = load i16, ptr %i.dd, align 8, !tbaa !234
  %i.agy = icmp eq i16 %i.tx, %i.agx
  br i1 %i.agy, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %.thread1330
  %i.agz = load i32, ptr %i.dr, align 4, !tbaa !326 ; 2 uses
  %i.aha = icmp ne i32 %i.agz, 32002
  %i.ahb = add i32 %i.agz, -31507
  %spec.select.i605 = icmp ult i32 %i.ahb, -63013
  %or.cond1121 = and i1 %i.aha, %spec.select.i605
  %i.ahc = load i32, ptr %i.tn, align 4           ; 2 uses
  %i.ahd = icmp sgt i32 %i.ahc, 0
  %or.cond1124 = select i1 %or.cond1121, i1 %i.ahd, i1 false
  %i.ahe = icmp sgt i32 %i.ahc, 1
  %or.cond1127 = select i1 %or.cond1124, i1 true, i1 %i.ahe
  br i1 %or.cond1127, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %.sroa.speculated658 = call i32 @llvm.smax.i32(i32 %.09931334, i32 1)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %.thread1330
  %.1994 = phi i32 [ %.sroa.speculated658, %bb.dv ], [ %.09931334, %bb.du ], [ %.09931334, %.thread1330 ]
  %i.ahf = sub nsw i32 0, %.5980.ph1226
  %i.ahg = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.agw, i32 noundef %i.tv, i32 noundef %i.ahf, i32 noundef %.1994, i1 noundef zeroext false)
  %i.ahh = sub nsw i32 0, %i.ahg
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dt, %bb.dw
  %.6432 = phi i32 [ %i.ahh, %bb.dw ], [ %.5431, %bb.dt ] ; 8 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.tx) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.tr) #33
  %i.ahi = load ptr, ptr %i.au, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.ahj = load atomic i8, ptr %i.ahi monotonic, align 8, !range !221, !noundef !48
  %i.ahk = trunc nuw i8 %i.ahj to i1
  br i1 %i.ahk, label %.thread1081, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahl = icmp eq i32 %.6432, %.4999.ph1223
  br i1 %i.ahl, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.ahm = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 24
  %i.aho = load i32, ptr %i.ahn, align 8, !tbaa !253
  %i.ahp = add nsw i32 %i.aho, 2
  %i.ahq = load i32, ptr %i.tp, align 16, !tbaa !264
  %.not545 = icmp slt i32 %i.ahp, %i.ahq
  br i1 %.not545, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ahr = load atomic i64, ptr %i.tq seq_cst, align 8
  %i.ahs = and i64 %i.ahr, 14
  %i.aht = icmp eq i64 %i.ahs, 0
  br i1 %i.aht, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ahu = add i32 %.4999.ph1223, 31505
  %i.ahv = icmp ult i32 %i.ahu, 63011
  %i.ahw = zext i1 %i.ahv to i32
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %i.ahx = phi i32 [ 0, %bb.ea ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ %i.ahw, %bb.eb ]
  %i.ahy = add nsw i32 %i.ahx, %.6432             ; 2 uses
  %i.ahz = icmp sgt i32 %i.ahy, %.4999.ph1223
  br i1 %i.ahz, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.aia = icmp sgt i32 %i.ahy, %.5980.ph1226
  br i1 %i.aia, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.aib = load ptr, ptr %i.a, align 8, !tbaa !762 ; 3 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !254 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 56
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !254 ; 3 uses
  store i16 %i.tx, ptr %i.aic, align 2, !tbaa !191
  %.09.i = getelementptr inbounds nuw i8, ptr %i.aic, i64 2 ; 3 uses
  %.not10.i = icmp eq ptr %i.aie, null
  br i1 %.not10.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ee
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !234 ; 2 uses
  %.not8.i1206 = icmp eq i16 %i.aif, 0
  br i1 %.not8.i1206, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aig = phi i16 [ %i.aii, %.lr.ph.i ], [ %i.aif, %.lr.ph.i.preheader ]
  %.0711.i1208 = phi ptr [ %i.aih, %.lr.ph.i ], [ %i.aie, %.lr.ph.i.preheader ]
  %.012.i1207 = phi ptr [ %.0.i, %.lr.ph.i ], [ %.09.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.0711.i1208, i64 2 ; 2 uses
  store i16 %i.aig, ptr %.012.i1207, align 2, !tbaa !191
  %.0.i = getelementptr inbounds nuw i8, ptr %.012.i1207, i64 2 ; 2 uses
  %i.aii = load i16, ptr %i.aih, align 2, !tbaa !234 ; 2 uses
  %.not8.i = icmp eq i16 %i.aii, 0
  br i1 %.not8.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.ee
  %.0.lcssa.i = phi ptr [ %.09.i, %bb.ee ], [ %.09.i, %.lr.ph.i.preheader ], [ %.0.i, %.lr.ph.i ]
  store i16 0, ptr %.0.lcssa.i, align 2, !tbaa !191
  %.not546 = icmp slt i32 %.6432, %.sroa.speculated720
  br i1 %.not546, label %bb.ef, label %.thread1089

.thread1089:                                      ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit
  store i64 %15, ptr %i.t, align 8
  store i64 %16, ptr %i.s, align 8
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aib, i64 48 ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !324
  %i.ail = add nsw i32 %i.aik, 1
  store i32 %i.ail, ptr %i.aij, align 8, !tbaa !324
  br label %.loopexit

bb.ef:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit
  %i.aim = add i32 %.6988, -14
  %or.cond40 = icmp ult i32 %i.aim, -11
  %i.ain = add i32 %.6432, -31507
  %spec.select.i607 = icmp ult i32 %i.ain, -63013
  %or.cond1128 = select i1 %or.cond40, i1 true, i1 %spec.select.i607
  %i.aio = add nsw i32 %.6988, -2
  %spec.select1133 = select i1 %or.cond1128, i32 %.6988, i32 %i.aio
  br label %.thread1054

bb.eg:                                            ; preds = %bb.ed, %bb.ec
  %.91004 = phi i32 [ %.4999.ph1223, %bb.ec ], [ %.6432, %bb.ed ] ; 3 uses
  %i.aip = icmp ne i16 %i.tx, %.sroa.0784.0.ph1224
  %i.aiq = icmp samesign ult i64 %indvars.iv, 32
  %or.cond42 = select i1 %i.aip, i1 %i.aiq, i1 false
  br i1 %or.cond42, label %bb.eh, label %.thread1054

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.un, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.air = add i64 %16, 1
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %16
  store i16 %i.tx, ptr %i.ais, align 2, !tbaa !191
  br label %.thread1054

bb.ej:                                            ; preds = %bb.eh
  %i.ait = add i64 %15, 1
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %15
  store i16 %i.tx, ptr %i.aiu, align 2, !tbaa !191
  br label %.thread1054

.thread1054:                                      ; preds = %bb.ef, %bb.cv, %bb.cp, %bb.cw, %bb.ct, %bb.cs, %bb.eg, %bb.ej, %bb.ei
  %17 = phi i64 [ %16, %bb.cs ], [ %i.air, %bb.ei ], [ %16, %bb.ej ], [ %16, %bb.eg ], [ %16, %bb.cv ], [ %16, %bb.ct ], [ %16, %bb.cw ], [ %16, %bb.ef ], [ %16, %bb.cp ] ; 2 uses
  %18 = phi i64 [ %15, %bb.cs ], [ %15, %bb.ei ], [ %i.ait, %bb.ej ], [ %15, %bb.eg ], [ %15, %bb.cv ], [ %15, %bb.ct ], [ %15, %bb.cw ], [ %15, %bb.ef ], [ %15, %bb.cp ] ; 2 uses
  %.101005 = phi i32 [ %.4999.ph1223, %bb.cs ], [ %.91004, %bb.ei ], [ %.91004, %bb.ej ], [ %.91004, %bb.eg ], [ %spec.select1132, %bb.cv ], [ %.4999.ph1223, %bb.ct ], [ %.4999.ph1223, %bb.cw ], [ %.6432, %bb.ef ], [ %.4999.ph1223, %bb.cp ] ; 2 uses
  %.sroa.0784.2 = phi i16 [ %.sroa.0784.0.ph1224, %bb.cs ], [ %.sroa.0784.0.ph1224, %bb.ei ], [ %.sroa.0784.0.ph1224, %bb.ej ], [ %.sroa.0784.0.ph1224, %bb.eg ], [ %.sroa.0784.0.ph1224, %bb.cv ], [ %.sroa.0784.0.ph1224, %bb.ct ], [ %.sroa.0784.0.ph1224, %bb.cw ], [ %i.tx, %bb.ef ], [ %.sroa.0784.0.ph1224, %bb.cp ] ; 2 uses
  %.9991 = phi i32 [ %.4986.ph1225, %bb.cs ], [ %.6988, %bb.ei ], [ %.6988, %bb.ej ], [ %.6988, %bb.eg ], [ %.4986.ph1225, %bb.cv ], [ %.4986.ph1225, %bb.ct ], [ %.4986.ph1225, %bb.cw ], [ %spec.select1133, %bb.ef ], [ %.4986.ph1225, %bb.cp ] ; 2 uses
  %.7 = phi i32 [ %.5980.ph1226, %bb.cs ], [ %.5980.ph1226, %bb.ei ], [ %.5980.ph1226, %bb.ej ], [ %.5980.ph1226, %bb.eg ], [ %.5980.ph1226, %bb.cv ], [ %.5980.ph1226, %bb.ct ], [ %.5980.ph1226, %bb.cw ], [ %.6432, %bb.ef ], [ %.5980.ph1226, %bb.cp ] ; 2 uses
  %i.aiv = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %14) #33 ; 2 uses
  %.not11501195 = icmp eq i16 %i.aiv, 0
  br i1 %.not11501195, label %.outer..loopexit_crit_edge, label %.lr.ph1196

.outer..loopexit_crit_edge:                       ; preds = %.thread1054, %bb.ch
  %.lcssa1217 = phi i64 [ 0, %bb.ch ], [ %17, %.thread1054 ]
  %.lcssa1211 = phi i64 [ 0, %bb.ch ], [ %18, %.thread1054 ]
  %split = phi i32 [ %.3998, %bb.ch ], [ %.101005, %.thread1054 ]
  %split1197 = phi i16 [ 0, %bb.ch ], [ %.sroa.0784.2, %.thread1054 ]
  %split1198 = phi i32 [ %.3985, %bb.ch ], [ %.9991, %.thread1054 ]
  %split1199 = phi i32 [ %.4979, %bb.ch ], [ %.7, %.thread1054 ]
  %split1200 = phi i32 [ 0, %bb.ch ], [ %i.ud, %.thread1054 ]
  store i64 %.lcssa1211, ptr %i.t, align 8
  store i64 %.lcssa1217, ptr %i.s, align 8
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %.backedge
  %i.aiw = trunc nuw nsw i64 %indvars.iv to i32
  store i64 %15, ptr %i.t, align 8
  store i64 %16, ptr %i.s, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.outer..loopexit_crit_edge, %..loopexit_crit_edge, %.thread1089
  %.5980.ph1184 = phi i32 [ %.5980.ph1226, %.thread1089 ], [ %.5980.ph1226, %..loopexit_crit_edge ], [ %split1199, %.outer..loopexit_crit_edge ] ; 3 uses
  %.111006 = phi i32 [ %.6432, %.thread1089 ], [ %.4999.ph1223, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ] ; 4 uses
  %.sroa.0784.3 = phi i16 [ %i.tx, %.thread1089 ], [ %.sroa.0784.0.ph1224, %..loopexit_crit_edge ], [ %split1197, %.outer..loopexit_crit_edge ] ; 8 uses
  %.10992 = phi i32 [ %.6988, %.thread1089 ], [ %.4986.ph1225, %..loopexit_crit_edge ], [ %split1198, %.outer..loopexit_crit_edge ] ; 8 uses
  %.1443 = phi i32 [ %i.ud, %.thread1089 ], [ %i.aiw, %..loopexit_crit_edge ], [ %split1200, %.outer..loopexit_crit_edge ] ; 2 uses
  %.not547 = icmp slt i32 %.111006, %.sroa.speculated720
  %i.aix = add i32 %.111006, -31507
  %spec.select.i608 = icmp ult i32 %i.aix, -63013
  %or.cond1129 = or i1 %.not547, %spec.select.i608
  %i.aiy = add i32 %.5980.ph1184, -31507
  %spec.select.i609 = icmp ult i32 %i.aiy, -63013
  %or.cond1130 = select i1 %or.cond1129, i1 true, i1 %spec.select.i609
  br i1 %or.cond1130, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.loopexit
  %i.aiz = mul nsw i32 %.10992, %.111006
  %i.aja = add nsw i32 %i.aiz, %.sroa.speculated720
  %i.ajb = add nsw i32 %.10992, 1
  %i.ajc = sdiv i32 %i.aja, %i.ajb
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.loopexit
  %.121007 = phi i32 [ %.111006, %.loopexit ], [ %i.ajc, %bb.ek ] ; 7 uses
  %.not548 = icmp eq i32 %.1443, 0                ; 2 uses
  br i1 %.not548, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  br i1 %i.ds, label %bb.fa, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajd = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 44
  %i.ajf = load i8, ptr %i.aje, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ajg = trunc nuw i8 %i.ajf to i1
  br i1 %i.ajg, label %bb.eo, label %bb.fa

bb.eo:                                            ; preds = %bb.en
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !253
  %i.ajj = add nsw i32 %i.aji, -32000
  br label %bb.fa

bb.ep:                                            ; preds = %bb.el
  %.not1157 = icmp eq i16 %.sroa.0784.3, 0
  br i1 %.not1157, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ajk = load ptr, ptr %i.a, align 8, !tbaa !762
  %.sroa.055.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.ajk, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0784.3, i8 noundef zeroext %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %.10992, i16 %.sroa.055.0.copyload, i32 noundef %.1443)
  br label %bb.fa

bb.er:                                            ; preds = %bb.ep
  %.not43 = xor i1 %i.ad, true
  %i.ajl = icmp ne i8 %i.cg, 64                   ; 2 uses
  %or.cond46 = and i1 %i.ajl, %.not43
  br i1 %or.cond46, label %bb.es, label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.ajm = load ptr, ptr %i.a, align 8, !tbaa !762 ; 7 uses
  %i.ajn = getelementptr inbounds i8, ptr %i.ajm, i64 -20
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !323
  %.neg549 = sdiv i32 %i.ajo, -100
  %i.ajp = mul nsw i32 %.10992, 56
  %.sroa.speculated645 = call i32 @llvm.smin.i32(i32 %i.ajp, i32 489)
  %i.ajq = getelementptr inbounds i8, ptr %i.ajm, i64 -16
  %i.ajr = load i32, ptr %i.ajq, align 8, !tbaa !319
  %i.ajs = icmp sgt i32 %i.ajr, 8
  %i.ajt = select i1 %i.ajs, i32 184, i32 0
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 44
  %i.ajv = load i8, ptr %i.aju, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ajw = trunc nuw i8 %i.ajv to i1
  br i1 %i.ajw, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !252
  %i.ajz = add nsw i32 %i.ajy, -107
  %.not550 = icmp sgt i32 %.121007, %i.ajz
  %i.aka = select i1 %.not550, i32 0, i32 147
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.akb = phi i32 [ 0, %bb.es ], [ %i.aka, %bb.et ]
  %i.akc = getelementptr inbounds i8, ptr %i.ajm, i64 -12
  %i.akd = load i8, ptr %i.akc, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ake = trunc nuw i8 %i.akd to i1
  br i1 %i.ake, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akf = getelementptr inbounds i8, ptr %i.ajm, i64 -24
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !252
  %i.akh = sub i32 -65, %i.akg
  %.not551 = icmp sgt i32 %.121007, %i.akh
  %i.aki = select i1 %.not551, i32 0, i32 156
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.akj = phi i32 [ 0, %bb.eu ], [ %i.aki, %bb.ev ]
  %i.akk = add i32 %.sroa.speculated645, -215
  %i.akl = add i32 %i.akk, %.neg549
  %i.akm = add nsw i32 %i.akl, %i.ajt
  %i.akn = add nsw i32 %i.akm, %i.akb
  %i.ako = add nsw i32 %i.akn, %i.akj
  %.sroa.speculated640 = call i32 @llvm.smax.i32(i32 %i.ako, i32 0)
  %i.akp = mul nsw i32 %.10992, 141
  %i.akq = call i32 @llvm.smin.i32(i32 %i.akp, i32 1438)
  %.sroa.speculated634 = add nsw i32 %i.akq, -87
  %i.akr = mul nsw i32 %.sroa.speculated640, %.sroa.speculated634 ; 3 uses
  %i.aks = getelementptr inbounds i8, ptr %i.ajm, i64 -56
  %i.akt = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 %i.akt ; 2 uses
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !330
  %i.akw = mul nsw i32 %i.akr, 203
  %i.akx = sdiv i32 %i.akw, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.aks, i8 noundef zeroext %i.akv, i8 noundef zeroext %i.cg, i32 noundef %i.akx)
  %i.aky = xor i8 %i.af, 1
  %i.akz = zext i8 %i.aky to i64
  %i.ala = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.akz
  %i.alb = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.alc = getelementptr inbounds i8, ptr %i.alb, i64 -28
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !234 ; 2 uses
  %i.ale = zext i16 %i.ald to i64
  %i.alf = getelementptr inbounds nuw [2 x i8], ptr %i.ala, i64 %i.ale ; 2 uses
  %i.alg = mul nsw i32 %i.akr, 243
  %i.alh = sdiv i32 %i.alg, 32768
  %.sroa.speculate.load.false.sroa.speculated.i613 = call i32 @llvm.smax.i32(i32 %i.alh, i32 -7183)
  %.sroa.speculated.i614 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i613, i32 7183) ; 2 uses
  %i.ali = load i16, ptr %i.alf, align 2, !tbaa !132
  %i.alj = sext i16 %i.ali to i32                 ; 2 uses
  %i.alk = add nsw i32 %.sroa.speculated.i614, %i.alj
  %i.all = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i614, i1 true)
  %i.alm = mul nsw i32 %i.all, %i.alj
  %.neg.i615 = sdiv i32 %i.alm, -7183
  %i.aln = add nsw i32 %i.alk, %.neg.i615
  %i.alo = trunc i32 %i.aln to i16
  store i16 %i.alo, ptr %i.alf, align 2, !tbaa !132
  %i.alp = load i8, ptr %i.aku, align 1, !tbaa !330 ; 2 uses
  %i.alq = and i8 %i.alp, 7
  %.not552 = icmp eq i8 %i.alq, 1
  %i.alr = and i16 %i.ald, -16384
  %.not553 = icmp eq i16 %i.alr, 16384
  %or.cond1131 = or i1 %.not553, %.not552
  br i1 %or.cond1131, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.als = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.alt = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !333
  %i.alw = getelementptr inbounds nuw i8, ptr %i.als, i64 40
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !337
  %i.aly = and i64 %i.alx, %i.alv
  %i.alz = getelementptr inbounds nuw i8, ptr %i.als, i64 24
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !162
  %i.amb = getelementptr inbounds nuw [2048 x i8], ptr %i.ama, i64 %i.aly
  %i.amc = zext i8 %i.alp to i64
  %i.amd = getelementptr inbounds nuw [128 x i8], ptr %i.amb, i64 %i.amc
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.amd, i64 %i.akt ; 2 uses
  %i.amf = mul nsw i32 %i.akr, 145
  %i.amg = sdiv i32 %i.amf, 4096
  %.sroa.speculate.load.false.sroa.speculated.i616 = call i32 @llvm.smax.i32(i32 %i.amg, i32 -8192)
  %.sroa.speculated.i617 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i616, i32 8192) ; 2 uses
  %i.amh = load atomic i16, ptr %i.ame monotonic, align 2
  %i.ami = sext i16 %i.amh to i32                 ; 2 uses
  %i.amj = add nsw i32 %.sroa.speculated.i617, %i.ami
  %i.amk = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i617, i1 true)
  %i.aml = mul nsw i32 %i.amk, %i.ami
  %.neg.i618 = sdiv i32 %i.aml, -8192
  %i.amm = add nsw i32 %i.amj, %.neg.i618
  %i.amn = trunc i32 %i.amm to i16
  store atomic i16 %i.amn, ptr %i.ame monotonic, align 2
  br label %bb.fa

bb.ey:                                            ; preds = %bb.er
  %or.cond49 = and i1 %i.ad, %i.ajl
  br i1 %or.cond49, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.amo = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 184
  %i.amq = load i8, ptr %i.amp, align 8, !tbaa !318
  %i.amr = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !330
  %i.amu = zext i8 %i.amt to i64
  %i.amv = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.amu
  %i.amw = getelementptr inbounds nuw [16 x i8], ptr %i.amv, i64 %i.amr
  %i.amx = and i8 %i.amq, 7
  %i.amy = zext nneg i8 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [2 x i8], ptr %i.amw, i64 %i.amy ; 2 uses
  %i.ana = load i16, ptr %i.amz, align 2, !tbaa !355
  %i.anb = sext i16 %i.ana to i32                 ; 2 uses
  %i.anc = add nsw i32 %i.anb, 1012
  %i.and = mul nsw i32 %i.anb, 23
  %.neg.i619 = sdiv i32 %i.and, -243
  %i.ane = add nsw i32 %i.anc, %.neg.i619
  %i.anf = trunc i32 %i.ane to i16
  store i16 %i.anf, ptr %i.amz, align 2, !tbaa !355
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ew, %bb.ex, %bb.en, %bb.eo, %bb.em, %bb.eq, %bb.ey, %bb.ez
  %.131008 = phi i32 [ %.121007, %bb.ey ], [ %.121007, %bb.eq ], [ %.5980.ph1184, %bb.em ], [ %.121007, %bb.ez ], [ 0, %bb.en ], [ %i.ajj, %bb.eo ], [ %.121007, %bb.ex ], [ %.121007, %bb.ew ]
  %.sroa.speculated732 = call i32 @llvm.smin.i32(i32 %.31012, i32 %.131008) ; 11 uses
  %.not554 = icmp sgt i32 %.sroa.speculated732, %.5980.ph1184
end_hunk_5
