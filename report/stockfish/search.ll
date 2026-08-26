Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.amx = phi i32 [ 0, %bb.eo ], [ %i.amw, %bb.ep ]
  %i.amy = getelementptr inbounds i8, ptr %2, i64 -12
  %i.amz = load i8, ptr %i.amy, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.anb = load i32, ptr %i.ii, align 8, !tbaa !252
  %i.anc = sub i32 -65, %i.anb
  %.not461 = icmp sgt i32 %.4750, %i.anc
  %i.and = select i1 %.not461, i32 0, i32 156
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ane = phi i32 [ 0, %bb.eq ], [ %i.and, %bb.er ]
  %i.anf = add i32 %.sroa.speculated553, -215
  %i.ang = add i32 %i.anf, %.neg459
  %i.anh = add nsw i32 %i.ang, %i.amr
  %i.ani = add nsw i32 %i.anh, %i.amx
  %i.anj = add nsw i32 %i.ani, %i.ane
  %.sroa.speculated548 = call i32 @llvm.smax.i32(i32 %i.anj, i32 0)
  %i.ank = mul nsw i32 %.4740.ph978, 141
  %i.anl = call i32 @llvm.smin.i32(i32 %i.ank, i32 1438)
  %.sroa.speculated542 = add nsw i32 %i.anl, -87
  %i.anm = mul nsw i32 %.sroa.speculated548, %.sroa.speculated542 ; 3 uses
  %i.ann = getelementptr inbounds i8, ptr %2, i64 -56
  %i.ano = zext nneg i8 %i.aj to i64              ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ano ; 2 uses
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !330
  %i.anr = mul nsw i32 %i.anm, 203
  %i.ans = sdiv i32 %i.anr, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.ann, i8 noundef zeroext %i.anq, i8 noundef zeroext %i.aj, i32 noundef %i.ans)
  %i.ant = xor i8 %i.q, 1
  %i.anu = zext i8 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.anu
  %i.anw = load i16, ptr %i.af, align 4, !tbaa !234 ; 2 uses
  %i.anx = zext i16 %i.anw to i64
  %i.any = getelementptr inbounds nuw [2 x i8], ptr %i.anv, i64 %i.anx ; 2 uses
  %i.anz = mul nsw i32 %i.anm, 243
  %i.aoa = sdiv i32 %i.anz, 32768
  %.sroa.speculate.load.false.sroa.speculated.i518 = call i32 @llvm.smax.i32(i32 %i.aoa, i32 -7183)
  %.sroa.speculated.i519 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i518, i32 7183) ; 2 uses
  %i.aob = load i16, ptr %i.any, align 2, !tbaa !132
  %i.aoc = sext i16 %i.aob to i32                 ; 2 uses
  %i.aod = add nsw i32 %.sroa.speculated.i519, %i.aoc
  %i.aoe = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i519, i1 true)
  %i.aof = mul nsw i32 %i.aoe, %i.aoc
  %.neg.i520 = sdiv i32 %i.aof, -7183
  %i.aog = add nsw i32 %i.aod, %.neg.i520
  %i.aoh = trunc i32 %i.aog to i16
  store i16 %i.aoh, ptr %i.any, align 2, !tbaa !132
  %i.aoi = load i8, ptr %i.anp, align 1, !tbaa !330 ; 2 uses
  %i.aoj = and i8 %i.aoi, 7
  %.not462 = icmp eq i8 %i.aoj, 1
  %i.aok = and i16 %i.anw, -16384
  %.not463 = icmp eq i16 %i.aok, 16384
  %or.cond915 = or i1 %.not463, %.not462
  br i1 %or.cond915, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aol = load ptr, ptr %i.de, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aom = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !333
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aol, i64 40
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !337
  %i.aor = and i64 %i.aoq, %i.aoo
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aol, i64 24
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !162
  %i.aou = getelementptr inbounds nuw [2048 x i8], ptr %i.aot, i64 %i.aor
  %i.aov = zext i8 %i.aoi to i64
  %i.aow = getelementptr inbounds nuw [128 x i8], ptr %i.aou, i64 %i.aov
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.aow, i64 %i.ano ; 2 uses
  %i.aoy = mul nsw i32 %i.anm, 145
  %i.aoz = sdiv i32 %i.aoy, 4096
  %.sroa.speculate.load.false.sroa.speculated.i521 = call i32 @llvm.smax.i32(i32 %i.aoz, i32 -8192)
  %.sroa.speculated.i522 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i521, i32 8192) ; 2 uses
  %i.apa = load atomic i16, ptr %i.aox monotonic, align 2
  %i.apb = sext i16 %i.apa to i32                 ; 2 uses
  %i.apc = add nsw i32 %.sroa.speculated.i522, %i.apb
  %i.apd = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i522, i1 true)
  %i.ape = mul nsw i32 %i.apd, %i.apb
  %.neg.i523 = sdiv i32 %i.ape, -8192
  %i.apf = add nsw i32 %i.apc, %.neg.i523
  %i.apg = trunc i32 %i.apf to i16
  store atomic i16 %i.apg, ptr %i.aox monotonic, align 2
  br label %bb.ew

bb.eu:                                            ; preds = %bb.en
  %or.cond33 = and i1 %i.o, %i.amk
  br i1 %or.cond33, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aph = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 184
  %i.apj = load i8, ptr %i.api, align 8, !tbaa !318
  %i.apk = zext nneg i8 %i.aj to i64              ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %1, i64 %i.apk
  %i.apm = load i8, ptr %i.apl, align 1, !tbaa !330
  %i.apn = zext i8 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [1024 x i8], ptr %i.ro, i64 %i.apn
  %i.app = getelementptr inbounds nuw [16 x i8], ptr %i.apo, i64 %i.apk
  %i.apq = and i8 %i.apj, 7
  %i.apr = zext nneg i8 %i.apq to i64
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %i.app, i64 %i.apr ; 2 uses
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !355
  %i.apu = sext i16 %i.apt to i32                 ; 2 uses
  %i.apv = add nsw i32 %i.apu, 1012
  %i.apw = mul nsw i32 %i.apu, 23
  %.neg.i524 = sdiv i32 %i.apw, -243
  %i.apx = add nsw i32 %i.apv, %.neg.i524
  %i.apy = trunc i32 %i.apx to i16
  store i16 %i.apy, ptr %i.aps, align 2, !tbaa !355
  br label %bb.ew

bb.ew:                                            ; preds = %bb.es, %bb.et, %bb.ek, %bb.ei, %bb.em, %bb.eu, %bb.ev
  %.5751 = phi i32 [ %.4750, %bb.eu ], [ %.4750, %bb.em ], [ %.0369.ph969, %bb.ei ], [ %.4750, %bb.ev ], [ %.4750, %bb.es ], [ %i.amj, %bb.ek ], [ %.4750, %bb.et ]
  %.5751.fr = freeze i32 %.5751
  %spec.select916 = call i32 @llvm.smin.i32(i32 %.5751.fr, i32 32001)
  br label %.thread888

.thread888:                                       ; preds = %bb.ew, %bb.ej
  %i.apz = phi i32 [ 0, %bb.ej ], [ %spec.select916, %bb.ew ] ; 11 uses
  %.not464 = icmp sgt i32 %i.apz, %.0369.ph969
  br i1 %.not464, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %.thread888
  %i.aqa = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.aqb = trunc nuw i8 %i.aqa to i1
  br i1 %i.aqb, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aqc = getelementptr inbounds i8, ptr %2, i64 -11
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.aqe = phi i8 [ 1, %bb.ex ], [ %i.aqd, %bb.ey ]
  store i8 %i.aqe, ptr %i.ct, align 1, !tbaa !329
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.thread888
  br i1 %i.cp, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aqf = load i64, ptr %i.bk, align 8, !tbaa !270
  %.not465 = icmp eq i64 %i.aqf, 0
  br i1 %.not465, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aqg = load i32, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.aqh = icmp sgt i32 %i.apz, 31506
  %i.aqi = icmp slt i32 %i.apz, -31506
  %i.aqj = select i1 %i.aqi, i32 %i.aqg, i32 0
  %i.aqk = sub i32 0, %i.aqj
  %.p.i526 = select i1 %i.aqh, i32 %i.aqg, i32 %i.aqk
  %i.aql = add i32 %.p.i526, %i.apz
  %i.aqm = load i8, ptr %i.ct, align 1, !tbaa !329, !range !221, !noundef !48
  %i.aqn = trunc nuw i8 %i.aqm to i1
  %.not466 = icmp slt i32 %i.apz, %4
  %.not941 = icmp eq i16 %.sroa.0623.3, 0
  %i.aqo = select i1 %.not941, i8 1, i8 3
  %i.aqp = select i1 %.not466, i8 %i.aqo, i8 2
  %i.aqq = call i32 @llvm.smin.i32(i32 %.4740.ph978, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aqq, 6
  %.in.sroa.speculated = select i1 %.not458, i32 %.in.sroa.speculate.load., i32 %.4740.ph978
  %i.aqr = load ptr, ptr %i.bd, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aqs = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aqr) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef %i.aql, i1 noundef zeroext %i.aqn, i8 noundef zeroext %i.aqp, i32 noundef %.in.sroa.speculated, i16 %.sroa.0623.3, i32 noundef %.1388, i8 noundef zeroext %i.aqs) #33
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.aqt = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aqu = trunc nuw i8 %i.aqt to i1
  br i1 %i.aqu, label %.thread874, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aqv = icmp ne i16 %.sroa.0623.3, 0           ; 3 uses
  br i1 %i.aqv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aqw = and i16 %.sroa.0623.3, 63
  %i.aqx = zext nneg i16 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqx
  %i.aqz = load i8, ptr %i.aqy, align 1, !tbaa !330
  %i.ara = icmp ne i8 %i.aqz, 0
  %.not.i528 = icmp ult i16 %.sroa.0623.3, -16384
  %or.cond.not.i = and i1 %.not.i528, %i.ara
  %i.arb = icmp slt i16 %.sroa.0623.3, -16384
  %spec.select.i529 = or i1 %i.arb, %or.cond.not.i
  br i1 %spec.select.i529, label %.thread874, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.arc = load i32, ptr %i.id, align 8, !tbaa !252 ; 2 uses
  %i.ard = icmp sle i32 %i.apz, %i.arc
  %i.are = xor i1 %i.aqv, %i.ard
  br i1 %i.are, label %bb.fh, label %.thread874

bb.fh:                                            ; preds = %bb.fg
  %i.arf = sub nsw i32 %i.apz, %i.arc
  %i.arg = mul nsw i32 %i.arf, %.4740.ph978       ; 2 uses
  %16 = sdiv i32 %i.arg, 10
  %i.arh = sdiv i32 %i.arg, 8
  %17 = select i1 %i.aqv, i32 %16, i32 %i.arh
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %17, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val474 = load ptr, ptr %i.de, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %2, ptr %.val474, i32 noundef %.sroa.speculated)
  br label %.thread874

.thread874:                                       ; preds = %bb.co, %bb.fd, %bb.ff, %bb.fg, %bb.fh
  %.9 = phi i32 [ %i.apz, %bb.fd ], [ %i.apz, %bb.fh ], [ %i.apz, %bb.fg ], [ %i.apz, %bb.ff ], [ 0, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread851

.thread851:                                       ; preds = %bb.bq, %bb.bd, %.thread865, %bb.ax, %bb.be, %.thread874
  %.10 = phi i32 [ %.9, %.thread874 ], [ %i.ln, %bb.ax ], [ %i.qq, %.thread865 ], [ %i.mm, %bb.be ], [ %i.qr, %bb.bq ], [ %i.mm, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.fi

bb.fi:                                            ; preds = %.thread851, %bb.b
  %.11 = phi i32 [ %i.c, %bb.b ], [ %.10, %.thread851 ]
  ret i32 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = load ptr, ptr %1, align 8, !tbaa !189    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.i = load ptr, ptr %0, align 8, !tbaa !189    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i, !prof !357

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 2
  br i1 %i.p, label %bb.e, label %bb.f, !prof !358

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 2
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %i.c, align 2, !tbaa !191
  store i16 %i.r, ptr %i.o, align 2, !tbaa !191
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !189    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !189
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !190
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 2
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !358

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 2
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i16, ptr %i.c, align 2, !tbaa !191
  store i16 %i.ae, ptr %i.i, align 2, !tbaa !191
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 2
  br i1 %i.af, label %bb.o, label %bb.p, !prof !358

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !189
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !192 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !189
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !192
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 2
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i16, ptr %i.c, align 2, !tbaa !191
  store i16 %i.ah, ptr %i.i, align 2, !tbaa !191
  br label %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 2, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 2
  br i1 %i.an, label %bb.r, label %bb.s, !prof !358

bb.r:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ai, ptr align 2 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %_ZSt4copyIPN9Stockfish4MoveES2_ET0_T_S4_S3_.exit
  %i.ao = icmp eq i64 %i.am, 2
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i16, ptr %i.ak, align 2, !tbaa !191
  store i16 %i.ap, ptr %i.ai, align 2, !tbaa !191
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !189
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !192
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN9Stockfish4MoveESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(10) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !359

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.e = sdiv i64 %i.d, 1000000
  store i64 %i.e, ptr @_ZZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng.0, align 8, !tbaa !360
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish6Search5Skill9pick_bestERKSt6vectorINS0_8RootMoveESaIS3_EEmE3rng) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !233    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !238  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.aml = load i8, ptr %i.amk, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amm = trunc nuw i8 %i.aml to i1
  br i1 %i.amm, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.amn = getelementptr inbounds i8, ptr %i.alu, i64 -24
  %i.amo = load i32, ptr %i.amn, align 8, !tbaa !252
  %i.amp = sub i32 -65, %i.amo
  %.not648 = icmp sgt i32 %.12518, %i.amp
  %i.amq = select i1 %.not648, i32 0, i32 156
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.amr = phi i32 [ 0, %bb.fk ], [ %i.amq, %bb.fl ]
  %i.ams = add i32 %.sroa.speculated746, -215
  %i.amt = add i32 %i.ams, %.neg646
  %i.amu = add nsw i32 %i.amt, %i.amb
  %i.amv = add nsw i32 %i.amu, %i.amj
  %i.amw = add nsw i32 %i.amv, %i.amr
  %.sroa.speculated741 = call i32 @llvm.smax.i32(i32 %i.amw, i32 0)
  %i.amx = mul nsw i32 %.10, 141
  %i.amy = call i32 @llvm.smin.i32(i32 %i.amx, i32 1438)
  %.sroa.speculated735 = add nsw i32 %i.amy, -87
  %i.amz = mul nsw i32 %.sroa.speculated741, %.sroa.speculated735 ; 3 uses
  %i.ana = getelementptr inbounds i8, ptr %i.alu, i64 -56
  %i.anb = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 %i.anb ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !330
  %i.ane = mul nsw i32 %i.amz, 203
  %i.anf = sdiv i32 %i.ane, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.ana, i8 noundef zeroext %i.and, i8 noundef zeroext %i.cg, i32 noundef %i.anf)
  %i.ang = xor i8 %i.ag, 1
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.anh
  %i.anj = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ank = getelementptr inbounds i8, ptr %i.anj, i64 -28
  %i.anl = load i16, ptr %i.ank, align 2, !tbaa !234 ; 2 uses
  %i.anm = zext i16 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.ani, i64 %i.anm ; 2 uses
  %i.ano = mul nsw i32 %i.amz, 243
  %i.anp = sdiv i32 %i.ano, 32768
  %.sroa.speculate.load.false.sroa.speculated.i715 = call i32 @llvm.smax.i32(i32 %i.anp, i32 -7183)
  %.sroa.speculated.i716 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i715, i32 7183) ; 2 uses
  %i.anq = load i16, ptr %i.ann, align 2, !tbaa !132
  %i.anr = sext i16 %i.anq to i32                 ; 2 uses
  %i.ans = add nsw i32 %.sroa.speculated.i716, %i.anr
  %i.ant = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i716, i1 true)
  %i.anu = mul nsw i32 %i.ant, %i.anr
  %.neg.i717 = sdiv i32 %i.anu, -7183
  %i.anv = add nsw i32 %i.ans, %.neg.i717
  %i.anw = trunc i32 %i.anv to i16
  store i16 %i.anw, ptr %i.ann, align 2, !tbaa !132
  %i.anx = load i8, ptr %i.anc, align 1, !tbaa !330 ; 2 uses
  %i.any = and i8 %i.anx, 7
  %.not649 = icmp eq i8 %i.any, 1
  %i.anz = and i16 %i.anl, -16384
  %.not650 = icmp eq i16 %i.anz, 16384
  %or.cond1166 = or i1 %.not650, %.not649
  br i1 %or.cond1166, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aoa = load ptr, ptr %i.ej, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.aob = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !333
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoa, i64 40
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !337
  %i.aog = and i64 %i.aof, %i.aod
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !162
  %i.aoj = getelementptr inbounds nuw [2048 x i8], ptr %i.aoi, i64 %i.aog
  %i.aok = zext i8 %i.anx to i64
  %i.aol = getelementptr inbounds nuw [128 x i8], ptr %i.aoj, i64 %i.aok
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.aol, i64 %i.anb ; 2 uses
  %i.aon = mul nsw i32 %i.amz, 145
  %i.aoo = sdiv i32 %i.aon, 4096
  %.sroa.speculate.load.false.sroa.speculated.i718 = call i32 @llvm.smax.i32(i32 %i.aoo, i32 -8192)
  %.sroa.speculated.i719 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i718, i32 8192) ; 2 uses
  %i.aop = load atomic i16, ptr %i.aom monotonic, align 2
  %i.aoq = sext i16 %i.aop to i32                 ; 2 uses
  %i.aor = add nsw i32 %.sroa.speculated.i719, %i.aoq
  %i.aos = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i719, i1 true)
  %i.aot = mul nsw i32 %i.aos, %i.aoq
  %.neg.i720 = sdiv i32 %i.aot, -8192
  %i.aou = add nsw i32 %i.aor, %.neg.i720
  %i.aov = trunc i32 %i.aou to i16
  store atomic i16 %i.aov, ptr %i.aom monotonic, align 2
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fh
  %or.cond58 = and i1 %i.ae, %i.alt
  br i1 %or.cond58, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aow = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 184
  %i.aoy = load i8, ptr %i.aox, align 8, !tbaa !318
  %i.aoz = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !330
  %i.apc = zext i8 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [1024 x i8], ptr %i.vr, i64 %i.apc
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.apd, i64 %i.aoz
  %i.apf = and i8 %i.aoy, 7
  %i.apg = zext nneg i8 %i.apf to i64
  %i.aph = getelementptr inbounds nuw [2 x i8], ptr %i.ape, i64 %i.apg ; 2 uses
  %i.api = load i16, ptr %i.aph, align 2, !tbaa !355
  %i.apj = sext i16 %i.api to i32                 ; 2 uses
  %i.apk = add nsw i32 %i.apj, 1012
  %i.apl = mul nsw i32 %i.apj, 23
  %.neg.i721 = sdiv i32 %i.apl, -243
  %i.apm = add nsw i32 %i.apk, %.neg.i721
  %i.apn = trunc i32 %i.apm to i16
  store i16 %i.apn, ptr %i.aph, align 2, !tbaa !355
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fm, %bb.fn, %bb.fd, %bb.fe, %bb.fg, %bb.fo, %bb.fp
  %.13519 = phi i32 [ %.12518, %bb.fg ], [ %.12518, %bb.fm ], [ %.12518, %bb.fp ], [ %.12518, %bb.fo ], [ 0, %bb.fd ], [ %i.alg, %bb.fe ], [ %.12518, %bb.fn ] ; 3 uses
  %.not651 = icmp sgt i32 %.13519, %.11031.ph1225
  %.pre1299.pre = load ptr, ptr %i.a, align 8, !tbaa !762 ; 2 uses
  br i1 %.not651, label %bb.ft, label %.thread1133

.thread1133:                                      ; preds = %bb.fq, %bb.fc
  %i.apo = phi ptr [ %.pre1297, %bb.fc ], [ %.pre1299.pre, %bb.fq ] ; 3 uses
  %.135191136 = phi i32 [ %.11031.ph1225, %bb.fc ], [ %.13519, %bb.fq ]
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 45 ; 2 uses
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !329, !range !221, !noundef !48
  %i.apr = trunc nuw i8 %i.apq to i1
  br i1 %i.apr, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread1133
  %i.aps = getelementptr inbounds i8, ptr %i.apo, i64 -11
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.thread1133
  %i.apu = phi i8 [ 1, %.thread1133 ], [ %i.apt, %bb.fr ]
  store i8 %i.apu, ptr %i.app, align 1, !tbaa !329
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fq
  %.pre1299 = phi ptr [ %i.apo, %bb.fs ], [ %.pre1299.pre, %bb.fq ] ; 3 uses
  %.135191137 = phi i32 [ %.135191136, %bb.fs ], [ %.13519, %bb.fq ] ; 10 uses
  br i1 %i.eh, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.apv = getelementptr inbounds nuw i8, ptr %.pre1299, i64 24
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !253 ; 2 uses
  %i.apx = icmp sgt i32 %.135191137, 31506
  %i.apy = icmp slt i32 %.135191137, -31506
  %i.apz = select i1 %i.apy, i32 %i.apw, i32 0
  %i.aqa = sub i32 0, %i.apz
  %.p.i722 = select i1 %i.apx, i32 %i.apw, i32 %i.aqa
  %i.aqb = add i32 %.p.i722, %.135191137
  %i.aqc = getelementptr inbounds nuw i8, ptr %.pre1299, i64 45
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !329, !range !221, !noundef !48
  %i.aqe = trunc nuw i8 %i.aqd to i1
  %.not652 = icmp slt i32 %.135191137, %.sroa.speculated819
  %i.aqf = select i1 %.not652, i8 1, i8 2
  %i.aqg = call i32 @llvm.smin.i32(i32 %.10, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aqg, 6
  %.in.sroa.speculated = select i1 %.not645, i32 %.in.sroa.speculate.load., i32 %.10
  %i.aqh = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aqi = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aqh) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.aqb, i1 noundef zeroext %i.aqe, i8 noundef zeroext %i.aqf, i32 noundef %.in.sroa.speculated, i16 %.sroa.0827.3, i32 noundef %.1526, i8 noundef zeroext %i.aqi) #33
  %.pre1298 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.aqj = phi ptr [ %.pre1298, %bb.fu ], [ %.pre1299, %bb.ft ] ; 3 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 44
  %i.aql = load i8, ptr %i.aqk, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aqm = trunc nuw i8 %i.aql to i1
  br i1 %i.aqm, label %.thread1119, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aqn = icmp ne i16 %.sroa.0827.3, 0           ; 3 uses
  br i1 %i.aqn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aqo = and i16 %.sroa.0827.3, 63
  %i.aqp = zext nneg i16 %i.aqo to i64
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqp
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !330
  %i.aqs = icmp ne i8 %i.aqr, 0
  %.not.i724 = icmp ult i16 %.sroa.0827.3, -16384
  %or.cond.not.i = and i1 %.not.i724, %i.aqs
  %i.aqt = icmp slt i16 %.sroa.0827.3, -16384
  %spec.select.i725 = or i1 %i.aqt, %or.cond.not.i
  br i1 %spec.select.i725, label %.thread1119, label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !252 ; 2 uses
  %i.aqw = icmp sle i32 %.135191137, %i.aqv
  %i.aqx = xor i1 %i.aqn, %i.aqw
  br i1 %i.aqx, label %bb.fz, label %.thread1119

bb.fz:                                            ; preds = %bb.fy
  %i.aqy = sub nsw i32 %.135191137, %i.aqv
  %i.aqz = mul nsw i32 %i.aqy, %.10               ; 2 uses
  %15 = sdiv i32 %i.aqz, 10
  %i.ara = sdiv i32 %i.aqz, 8
  %16 = select i1 %i.aqn, i32 %15, i32 %i.ara
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %16, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val668 = load ptr, ptr %i.ej, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aqj, ptr %.val668, i32 noundef %.sroa.speculated)
  br label %.thread1119

.thread1119:                                      ; preds = %bb.en, %bb.dz, %bb.fv, %bb.fx, %bb.fy, %bb.fz
  %.20 = phi i32 [ %i.acu, %bb.dz ], [ %.135191137, %bb.fz ], [ %.135191137, %bb.fy ], [ %.135191137, %bb.fx ], [ %.135191137, %bb.fv ], [ 0, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.thread1079

.thread1079:                                      ; preds = %bb.cy, %bb.ck, %.thread1087, %bb.ce, %bb.bt, %.thread1054, %bb.cl, %bb.bf, %.thread1119, %bb.ca, %bb.bg
  %.21 = phi i32 [ %.20, %.thread1119 ], [ %i.lb, %bb.bf ], [ %i.pq, %bb.ca ], [ %i.un, %.thread1087 ], [ %i.rk, %bb.cl ], [ %i.qg, %bb.ce ], [ %i.mt, %bb.bt ], [ %i.lf, %bb.bg ], [ %i.uo, %bb.cy ], [ %i.lb, %.thread1054 ], [ %i.rk, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ga

bb.ga:                                            ; preds = %bb.r, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.q, %.thread1079
  %.22 = phi i32 [ %.21, %.thread1079 ], [ %i.bz, %bb.q ], [ %i.bu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ %.sroa.speculated824, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.gb

bb.gb:                                            ; preds = %bb.e, %bb.ga, %bb.b
  %.23 = phi i32 [ %i.i, %bb.b ], [ %.22, %bb.ga ], [ %i.r, %bb.e ]
  ret i32 %.23
}

declare void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164), ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef, ptr noundef) unnamed_addr #6

declare i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %6 = alloca %"class.std::tuple.201", align 8    ; 15 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %7 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %8 = alloca %"struct.Stockfish::MoveList", align 8 ; 4 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !253
  %i.e = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.d) #33
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2                          ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %.not.not = icmp sgt i32 %i.i, %4
  br i1 %.not.not, label %bb.bu, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0243 = phi i32 [ %i.j, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !214
  %i.o = icmp ne i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 4, !tbaa !317
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %i.t = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.s) #33
  %.pr = load i32, ptr %i.r, align 8, !tbaa !253
  %i.u = icmp sgt i32 %.pr, 245                   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %.thread, label %bb.k

bb.f:                                             ; preds = %bb.d
  br i1 %i.u, label %.thread, label %bb.bt

.thread:                                          ; preds = %bb.e, %bb.f
  %i.v = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.bt, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 noundef %.sroa.0.0.copyload.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw [160 x i8], ptr %i.ab, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !125
  switch i8 %i.ae, label %bb.j [
    i8 -1, label %bb.h
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.j:                                             ; preds = %bb.g
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.g, %bb.i
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.af, %bb.i ], [ %i.ac, %bb.g ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !171
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !138
  %i.ao = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.ag, ptr noundef nonnull align 64 dereferenceable(327680) %i.ah, i32 noundef %i.an) #33
  br label %bb.bt

bb.k:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !213 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !311 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.at = load i32, ptr %i.as, align 4, !tbaa !312 ; 2 uses
  %i.au = icmp slt i32 %i.at, 14
  br i1 %i.au, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add nsw i32 %i.at, -14
  %i.aw = lshr i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = add i64 %i.ay, 1442695040888963407
  %i.ba = xor i64 %i.az, %i.ar
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.k, %bb.l
  %i.bb = phi i64 [ %i.ba, %bb.l ], [ %i.ar, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %6, ptr noundef nonnull align 8 dereferenceable(17) %i.bd, i64 noundef %i.bb) #33
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 4, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 46 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !325
  %i.bi = trunc nuw i8 %i.bg to i1                ; 2 uses
  br i1 %i.bi, label %bb.m, label %.thread256

bb.m:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !326 ; 12 uses
  %i.bl = load i32, ptr %i.r, align 8, !tbaa !253 ; 2 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !312 ; 4 uses
  %.not.i = icmp eq i32 %i.bk, 32002
  br i1 %.not.i, label %.thread458, label %bb.n

.thread458:                                       ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 25
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !760, !range !221, !noundef !48
  %i.br = trunc nuw i8 %i.bq to i1
  br label %.thread257

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp sgt i32 %i.bk, 31506
  br i1 %i.bs, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp samesign ugt i32 %i.bk, 31753
  br i1 %i.bt, label %bb.p, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.o
  %.pre.i = sub nsw i32 100, %i.bo
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = sub nsw i32 32000, %i.bk
  %i.bv = sub nsw i32 100, %i.bo                  ; 2 uses
  %i.bw = icmp sgt i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.v, label %bb.q

end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.ake = getelementptr inbounds i8, ptr %i.ajo, i64 -12
  %i.akf = load i8, ptr %i.ake, align 4, !tbaa !317, !range !221, !noundef !48
  %i.akg = trunc nuw i8 %i.akf to i1
  br i1 %i.akg, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akh = getelementptr inbounds i8, ptr %i.ajo, i64 -24
  %i.aki = load i32, ptr %i.akh, align 8, !tbaa !252
  %i.akj = sub i32 -65, %i.aki
  %.not551 = icmp sgt i32 %.121007, %i.akj
  %i.akk = select i1 %.not551, i32 0, i32 156
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.akl = phi i32 [ 0, %bb.eu ], [ %i.akk, %bb.ev ]
  %i.akm = add i32 %.sroa.speculated645, -215
  %i.akn = add i32 %i.akm, %.neg549
  %i.ako = add nsw i32 %i.akn, %i.ajv
  %i.akp = add nsw i32 %i.ako, %i.akd
  %i.akq = add nsw i32 %i.akp, %i.akl
  %.sroa.speculated640 = call i32 @llvm.smax.i32(i32 %i.akq, i32 0)
  %i.akr = mul nsw i32 %.10992, 141
  %i.aks = call i32 @llvm.smin.i32(i32 %i.akr, i32 1438)
  %.sroa.speculated634 = add nsw i32 %i.aks, -87
  %i.akt = mul nsw i32 %.sroa.speculated640, %.sroa.speculated634 ; 3 uses
  %i.aku = getelementptr inbounds i8, ptr %i.ajo, i64 -56
  %i.akv = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 %i.akv ; 2 uses
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !330
  %i.aky = mul nsw i32 %i.akt, 203
  %i.akz = sdiv i32 %i.aky, 16384
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.aku, i8 noundef zeroext %i.akx, i8 noundef zeroext %i.cg, i32 noundef %i.akz)
  %i.ala = xor i8 %i.af, 1
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.alb
  %i.ald = load ptr, ptr %i.a, align 8, !tbaa !762
  %i.ale = getelementptr inbounds i8, ptr %i.ald, i64 -28
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !234 ; 2 uses
  %i.alg = zext i16 %i.alf to i64
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %i.alc, i64 %i.alg ; 2 uses
  %i.ali = mul nsw i32 %i.akt, 243
  %i.alj = sdiv i32 %i.ali, 32768
  %.sroa.speculate.load.false.sroa.speculated.i613 = call i32 @llvm.smax.i32(i32 %i.alj, i32 -7183)
  %.sroa.speculated.i614 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i613, i32 7183) ; 2 uses
  %i.alk = load i16, ptr %i.alh, align 2, !tbaa !132
  %i.all = sext i16 %i.alk to i32                 ; 2 uses
  %i.alm = add nsw i32 %.sroa.speculated.i614, %i.all
  %i.aln = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i614, i1 true)
  %i.alo = mul nsw i32 %i.aln, %i.all
  %.neg.i615 = sdiv i32 %i.alo, -7183
  %i.alp = add nsw i32 %i.alm, %.neg.i615
  %i.alq = trunc i32 %i.alp to i16
  store i16 %i.alq, ptr %i.alh, align 2, !tbaa !132
  %i.alr = load i8, ptr %i.akw, align 1, !tbaa !330 ; 2 uses
  %i.als = and i8 %i.alr, 7
  %.not552 = icmp eq i8 %i.als, 1
  %i.alt = and i16 %i.alf, -16384
  %.not553 = icmp eq i16 %i.alt, 16384
  %or.cond1131 = or i1 %.not553, %.not552
  br i1 %or.cond1131, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alu = load ptr, ptr %i.eh, align 8, !tbaa !139, !nonnull !48, !align !49 ; 2 uses
  %i.alv = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !333
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 40
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !337
  %i.ama = and i64 %i.alz, %i.alx
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 24
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !162
  %i.amd = getelementptr inbounds nuw [2048 x i8], ptr %i.amc, i64 %i.ama
  %i.ame = zext i8 %i.alr to i64
  %i.amf = getelementptr inbounds nuw [128 x i8], ptr %i.amd, i64 %i.ame
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %i.amf, i64 %i.akv ; 2 uses
  %i.amh = mul nsw i32 %i.akt, 145
  %i.ami = sdiv i32 %i.amh, 4096
  %.sroa.speculate.load.false.sroa.speculated.i616 = call i32 @llvm.smax.i32(i32 %i.ami, i32 -8192)
  %.sroa.speculated.i617 = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i616, i32 8192) ; 2 uses
  %i.amj = load atomic i16, ptr %i.amg monotonic, align 2
  %i.amk = sext i16 %i.amj to i32                 ; 2 uses
  %i.aml = add nsw i32 %.sroa.speculated.i617, %i.amk
  %i.amm = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i617, i1 true)
  %i.amn = mul nsw i32 %i.amm, %i.amk
  %.neg.i618 = sdiv i32 %i.amn, -8192
  %i.amo = add nsw i32 %i.aml, %.neg.i618
  %i.amp = trunc i32 %i.amo to i16
  store atomic i16 %i.amp, ptr %i.amg monotonic, align 2
  br label %bb.fa

bb.ey:                                            ; preds = %bb.er
  %or.cond49 = and i1 %i.ad, %i.ajn
  br i1 %or.cond49, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.amq = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 184
  %i.ams = load i8, ptr %i.amr, align 8, !tbaa !318
  %i.amt = zext nneg i8 %i.cg to i64              ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 %i.amt
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !330
  %i.amw = zext i8 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [1024 x i8], ptr %i.te, i64 %i.amw
  %i.amy = getelementptr inbounds nuw [16 x i8], ptr %i.amx, i64 %i.amt
  %i.amz = and i8 %i.ams, 7
  %i.ana = zext nneg i8 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %i.amy, i64 %i.ana ; 2 uses
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !355
  %i.and = sext i16 %i.anc to i32                 ; 2 uses
  %i.ane = add nsw i32 %i.and, 1012
  %i.anf = mul nsw i32 %i.and, 23
  %.neg.i619 = sdiv i32 %i.anf, -243
  %i.ang = add nsw i32 %i.ane, %.neg.i619
  %i.anh = trunc i32 %i.ang to i16
  store i16 %i.anh, ptr %i.anb, align 2, !tbaa !355
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ew, %bb.ex, %bb.en, %bb.eo, %bb.em, %bb.eq, %bb.ey, %bb.ez
  %.131008 = phi i32 [ %.121007, %bb.ey ], [ %.121007, %bb.eq ], [ %.5980.ph1184, %bb.em ], [ %.121007, %bb.ez ], [ 0, %bb.en ], [ %i.ajl, %bb.eo ], [ %.121007, %bb.ex ], [ %.121007, %bb.ew ]
  %.sroa.speculated732 = call i32 @llvm.smin.i32(i32 %.31012, i32 %.131008) ; 11 uses
  %.not554 = icmp sgt i32 %.sroa.speculated732, %.5980.ph1184
  %.pre1269.pre = load ptr, ptr %i.a, align 8, !tbaa !762 ; 5 uses
  br i1 %.not554, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ani = getelementptr inbounds nuw i8, ptr %.pre1269.pre, i64 45 ; 2 uses
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !329, !range !221, !noundef !48
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.anl = getelementptr inbounds i8, ptr %.pre1269.pre, i64 -11
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !329, !range !221, !noundef !48
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.ann = phi i8 [ 1, %bb.fb ], [ %i.anm, %bb.fc ]
  store i8 %i.ann, ptr %i.ani, align 1, !tbaa !329
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fa
  br i1 %i.ds, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ano = getelementptr inbounds nuw i8, ptr %.pre1269.pre, i64 24
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !253 ; 2 uses
  %i.anq = icmp sgt i32 %.sroa.speculated732, 31506
  %i.anr = icmp slt i32 %.sroa.speculated732, -31506
  %i.ans = select i1 %i.anr, i32 %i.anp, i32 0
  %i.ant = sub i32 0, %i.ans
  %.p.i621 = select i1 %i.anq, i32 %i.anp, i32 %i.ant
  %i.anu = add i32 %.p.i621, %.sroa.speculated732
  %i.anv = getelementptr inbounds nuw i8, ptr %.pre1269.pre, i64 45
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !329, !range !221, !noundef !48
  %i.anx = trunc nuw i8 %i.anw to i1
  %.not555 = icmp slt i32 %.sroa.speculated732, %.sroa.speculated720
  %.not1158 = icmp eq i16 %.sroa.0784.3, 0
  %i.any = select i1 %.not1158, i8 1, i8 3
  %i.anz = select i1 %.not555, i8 %i.any, i8 2
  %i.aoa = call i32 @llvm.smin.i32(i32 %.10992, i32 239)
  %.in.sroa.speculate.load. = add nsw i32 %i.aoa, 6
  %.in.sroa.speculated = select i1 %.not548, i32 %.in.sroa.speculate.load., i32 %.10992
  %i.aob = load ptr, ptr %i.da, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.aoc = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aob) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.anu, i1 noundef zeroext %i.anx, i8 noundef zeroext %i.anz, i32 noundef %.in.sroa.speculated, i16 %.sroa.0784.3, i32 noundef %.1436, i8 noundef zeroext %i.aoc) #33
  %.pre1268 = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aod = phi ptr [ %.pre1268, %bb.ff ], [ %.pre1269.pre, %bb.fe ] ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 44
  %i.aof = load i8, ptr %i.aoe, align 4, !tbaa !317, !range !221, !noundef !48
  %i.aog = trunc nuw i8 %i.aof to i1
  br i1 %i.aog, label %.thread1081, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aoh = icmp ne i16 %.sroa.0784.3, 0           ; 3 uses
  br i1 %i.aoh, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aoi = and i16 %.sroa.0784.3, 63
  %i.aoj = zext nneg i16 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 %i.aoj
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !330
  %i.aom = icmp ne i8 %i.aol, 0
  %.not.i623 = icmp ult i16 %.sroa.0784.3, -16384
  %or.cond.not.i = and i1 %.not.i623, %i.aom
  %i.aon = icmp slt i16 %.sroa.0784.3, -16384
  %spec.select.i624 = or i1 %i.aon, %or.cond.not.i
  br i1 %spec.select.i624, label %.thread1081, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aod, i64 32
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !252 ; 2 uses
  %i.aoq = icmp sle i32 %.sroa.speculated732, %i.aop
  %i.aor = xor i1 %i.aoh, %i.aoq
  br i1 %i.aor, label %bb.fk, label %.thread1081

bb.fk:                                            ; preds = %bb.fj
  %i.aos = sub nsw i32 %.sroa.speculated732, %i.aop
  %i.aot = mul nsw i32 %i.aos, %.10992            ; 2 uses
  %15 = sdiv i32 %i.aot, 10
  %i.aou = sdiv i32 %i.aot, 8
  %16 = select i1 %i.aoh, i32 %15, i32 %i.aou
  %.sroa.speculate.load.false.sroa.speculated = call i32 @llvm.smax.i32(i32 %16, i32 -256)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 256)
  %.val569 = load ptr, ptr %i.eh, align 8, !tbaa !139
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.aod, ptr %.val569, i32 noundef %.sroa.speculated)
  br label %.thread1081

.thread1081:                                      ; preds = %bb.dx, %bb.dg, %bb.fg, %bb.fi, %bb.fj, %bb.fk
  %.18 = phi i32 [ %i.aai, %bb.dg ], [ %.sroa.speculated732, %bb.fg ], [ %.sroa.speculated732, %bb.fk ], [ %.sroa.speculated732, %bb.fj ], [ %.sroa.speculated732, %bb.fi ], [ 0, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %.thread1041

.thread1041:                                      ; preds = %bb.cg, %bb.bs, %.thread1049, %bb.bm, %bb.bd, %bb.bt, %.thread1081
  %.19 = phi i32 [ %.18, %.thread1081 ], [ %i.kk, %bb.bd ], [ %i.sa, %.thread1049 ], [ %i.ow, %bb.bt ], [ %i.ns, %bb.bm ], [ %i.sb, %bb.cg ], [ %i.ow, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.fl

bb.fl:                                            ; preds = %bb.s, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.r, %.thread1041
  %.20 = phi i32 [ %.19, %.thread1041 ], [ %i.bz, %bb.r ], [ %i.bu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ %.sroa.speculated726, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.fm

bb.fm:                                            ; preds = %bb.e, %bb.fl, %bb.b
  %.21 = phi i32 [ %i.h, %bb.b ], [ %.20, %bb.fl ], [ %i.q, %bb.e ]
  ret i32 %.21
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(14279296) %2, i16 %3, i8 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %6, i32 noundef %7, i16 %8, i32 noundef range(i32 1, 0) %9) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 917504 ; 6 uses
  %i.b = mul nsw i32 %7, 116
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 1596)
  %.sroa.speculated76 = add nsw i32 %i.c, -81
  %i.d = icmp eq i16 %3, %8
  %i.e = select i1 %i.d, i32 347, i32 0
  %i.f = add nsw i32 %.sroa.speculated76, %i.e
  %i.g = getelementptr inbounds i8, ptr %1, i64 -56
  %i.h = getelementptr inbounds i8, ptr %1, i64 -20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !323
  %i.j = sdiv i32 %i.i, 32
  %i.k = add nsw i32 %i.f, %i.j                   ; 2 uses
  %i.l = mul nsw i32 %7, 848
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 2653)
  %.sroa.speculated = add nsw i32 %i.m, -207
  %.neg = mul i32 %9, -17
  %i.n = add i32 %.sroa.speculated, %.neg         ; 3 uses
  %i.o = and i16 %3, 63
  %i.p = zext nneg i16 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !330   ; 2 uses
  %i.s = icmp ne i8 %i.r, 0
  %.not.i.i = icmp ult i16 %3, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.s
  %i.t = icmp slt i16 %3, -16384
  %spec.select.i.i = or i1 %i.t, %or.cond.not.i.i
  %i.u = and i16 %3, 12288
  %i.v = icmp eq i16 %i.u, 12288
  %i.w = or i1 %i.v, %spec.select.i.i
  br i1 %i.w, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = mul nsw i32 %i.k, 455
  %i.y = sdiv i32 %i.x, 512
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %3, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !315 ; 7 uses
  %.idx = shl nuw nsw i64 %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %.not88 = icmp eq i64 %i.aa, 0
  br i1 %.not88, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = mul nsw i32 %i.n, 1085
  %i.ad = sdiv i32 %i.ac, 1024                    ; 3 uses
  %.sroa.09.0.copyload.peel = load i16, ptr %5, align 8, !tbaa !191
  %i.ae = sub nsw i32 0, %i.ad                    ; 5 uses
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel, i32 noundef %i.ae)
  %.not.peel = icmp eq i64 %i.aa, 1
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 2
  %.sroa.09.0.copyload.peel97 = load i16, ptr %i.af, align 2, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel97, i32 noundef %i.ae)
  %.not.peel99 = icmp eq i64 %i.aa, 2
  br i1 %.not.peel99, label %.loopexit, label %.peel.next96

.peel.next96:                                     ; preds = %.peel.next
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.09.0.copyload.peel101 = load i16, ptr %i.ag, align 4, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel101, i32 noundef %i.ae)
  %.not.peel103 = icmp eq i64 %i.aa, 3
  br i1 %.not.peel103, label %.loopexit, label %.peel.next100

.peel.next100:                                    ; preds = %.peel.next96
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 6
  %.sroa.09.0.copyload.peel105 = load i16, ptr %i.ah, align 2, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel105, i32 noundef %i.ae)
  %.not.peel107 = icmp eq i64 %i.aa, 4
  br i1 %.not.peel107, label %.loopexit, label %.peel.next104

.peel.next104:                                    ; preds = %.peel.next100
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.09.0.copyload.peel109 = load i16, ptr %i.ai, align 8, !tbaa !191
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload.peel109, i32 noundef %i.ae)
  %.not.peel111 = icmp eq i64 %i.aa, 5
  br i1 %.not.peel111, label %.loopexit, label %.peel.next108

.peel.next108:                                    ; preds = %.peel.next104
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 10
  br label %bb.d

bb.d:                                             ; preds = %.peel.next108, %bb.d
  %.06090 = phi i32 [ 5, %.peel.next108 ], [ %i.ak, %bb.d ] ; 2 uses
  %.06189 = phi ptr [ %i.aj, %.peel.next108 ], [ %i.ao, %bb.d ] ; 2 uses
  %.sroa.09.0.copyload = load i16, ptr %.06189, align 2, !tbaa !191
  %i.ak = add nuw nsw i32 %.06090, 1              ; 2 uses
  %i.al = add nsw i32 %.06090, -4
  %i.am = mul nsw i32 %i.al, %i.ad
  %i.an = sdiv i32 %i.am, %i.ak
  %.neg122 = sub nsw i32 %i.an, %i.ad
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1, ptr noundef nonnull align 64 dereferenceable(14279296) %2, i16 %.sroa.09.0.copyload, i32 noundef %.neg122)
  %i.ao = getelementptr inbounds nuw i8, ptr %.06189, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ab
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !777

bb.e:                                             ; preds = %bb.a
  %i.ap = lshr i16 %3, 6
  %i.aq = and i16 %i.ap, 63
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !330
  %i.au = and i8 %i.r, 7
  %i.av = zext i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.p
  %i.ay = zext nneg i8 %i.au to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = mul nsw i32 %i.k, 1395
  %i.bb = sdiv i32 %i.ba, 1024
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 -10692)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 10692) ; 2 uses
  %i.bc = load i16, ptr %i.az, align 2, !tbaa !355
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = add nsw i32 %.sroa.speculated.i, %i.bd
  %i.bf = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %.neg.i = sdiv i32 %i.bg, -10692
  %i.bh = add nsw i32 %i.be, %.neg.i
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %i.az, align 2, !tbaa !355
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.peel.next, %.peel.next96, %.peel.next100, %.peel.next104, %bb.b, %bb.e
  %.not65 = icmp eq i8 %4, 64
  br i1 %.not65, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !319
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -10
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !325, !range !221, !noundef !48
  %narrow = add nuw nsw i8 %i.bm, 1
  %i.bn = zext nneg i8 %narrow to i32
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !213
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !318
  %.not66 = icmp eq i8 %i.bs, 0
  br i1 %.not66, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = zext i8 %4 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !330
  %i.bw = mul i32 %i.n, -602
  %i.bx = sdiv i32 %i.bw, 1024
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %i.g, i8 noundef zeroext %i.bv, i8 noundef zeroext %4, i32 noundef %i.bx)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !315 ; 2 uses
  %.idx95 = shl i64 %i.bz, 1                      ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 %.idx95
  %.not6791 = icmp eq i64 %i.bz, 0
  br i1 %.not6791, label %._crit_edge, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.i
  %i.cb = mul i32 %i.n, -1448
end_hunk_2
