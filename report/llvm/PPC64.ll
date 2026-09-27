Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPC64?download=true
inline.NumInlined: 2032
inline.NumDeleted: 911
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE1ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.e, ptr %54, align 8, !tbaa !547
  %i.f = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 6 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !648
  %i.g = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 %2, ptr %i.g, align 8, !tbaa !649
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.i = lshr i64 %i.b, 3                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !544
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef 32) #25
  br label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %i.o = call fastcc noundef zeroext i1 @_ZL20missingTlsGdLdMarkerIN4llvm6object13Elf_Crel_ImplILb1EEEEbRN3lld3elf16InputSectionBaseENS5_6RelocsIT_EE(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %i.b, ptr %.sroa.24.0.copyload)
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1898
  %i.r = load i8, ptr %i.q, align 2, !tbaa !650, !range !524, !noundef !525
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i
  %i.u = phi i1 [ false, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i ], [ %i.t, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  %i.v = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.v, ptr %55, align 8, !tbaa !653, !alias.scope !840
  %i.w = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.x = and i64 %i.b, 4
  %.not.i.i.i = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not.i.i.i, i8 2, i8 3
  store i8 %i.y, ptr %i.w, align 4, !tbaa !654, !alias.scope !840
  %i.z = getelementptr inbounds nuw i8, ptr %55, i64 5
  %i.aa = trunc i64 %i.b to i8
  %i.ab = and i8 %i.aa, 3
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !655, !alias.scope !840
  %i.ac = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %.sroa.24.0.copyload, ptr %i.ac, align 8, !tbaa !656, !alias.scope !840
  %i.ad = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.v, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !840
  br i1 %.not4.i.i.i, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i

_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i:    ; preds = %bb.e
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %.pre.i = load i32, ptr %55, align 8, !tbaa !653
  %i.ae = icmp eq i32 %.pre.i, 0
  br i1 %i.ae, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %55, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %55, i64 24
  %.sroa.3149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %67, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.am = getelementptr inbounds nuw i8, ptr %66, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %65, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %64, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %61, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %62, i64 72 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %60, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %49, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %52, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 7 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %47, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %68, i64 40 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %68, i64 72 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i, %.lr.ph.i
  %i.db = load i32, ptr %i.af, align 4, !tbaa !657 ; 19 uses
  %i.dc = load i32, ptr %i.ag, align 8, !tbaa !658 ; 2 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !633   ; 4 uses
  %i.de = zext i32 %i.dc to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !635
  %.not.i.i = icmp ugt i64 %i.dg, %i.de
  br i1 %.not.i.i, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %53, ptr noundef nonnull align 8 dereferenceable(3472) %i.di) #25
  %i.dj = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %53, ptr noundef nonnull align 8 dereferenceable(184) %i.dd) #25 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28 ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 22
  br i1 %i.dr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.dn, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 22
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i: ; preds = %bb.i, %bb.h
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i:        ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i, %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !636
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.de
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !601 ; 40 uses
  %i.ea = load i64, ptr %i.ad, align 8, !tbaa !659 ; 23 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 22 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !534
  %i.ed = icmp eq i8 %i.ec, 4
  %i.ee = icmp ne i32 %i.dc, 0
  %or.cond.i = and i1 %i.ee, %i.ed
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i
  %i.ef = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %54, ptr noundef nonnull align 8 dereferenceable(45) %i.dz, i64 noundef %i.ea) #25
  br i1 %i.ef, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i
  %.sroa.3149.0.copyload.i = load i64, ptr %.sroa.3149.0..sroa_idx.i, align 8, !tbaa !596 ; 46 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2169
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !660, !range !524, !noundef !525
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = icmp eq i32 %i.db, 51
  %or.cond229.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond229.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 2504
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.en, i64 noundef 0) #25
  %i.ep = add i64 %.sroa.3149.0.copyload.i, 32768
  %i.eq = add i64 %i.ep, %i.eo
  br label %71

bb.l:                                             ; preds = %bb.k
  switch i32 %i.db, label %bb.ci [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
    i32 3, label %bb.co
    i32 56, label %bb.co
    i32 6, label %bb.co
    i32 5, label %bb.co
    i32 110, label %bb.co
    i32 39, label %bb.co
    i32 40, label %bb.co
    i32 41, label %bb.co
    i32 42, label %bb.co
    i32 4, label %bb.co
    i32 57, label %bb.co
    i32 1, label %bb.co
    i32 38, label %bb.co
    i32 250, label %bb.m
    i32 252, label %bb.m
    i32 251, label %bb.m
    i32 26, label %bb.m
    i32 44, label %bb.m
    i32 132, label %bb.m
    i32 14, label %bb.v
    i32 58, label %bb.v
    i32 17, label %bb.v
    i32 16, label %bb.v
    i32 15, label %bb.v
    i32 59, label %bb.v
    i32 133, label %bb.w
    i32 123, label %bb.x
    i32 47, label %bb.aa
    i32 63, label %bb.aa
    i32 49, label %.thread213.i.a
    i32 48, label %bb.ab
    i32 50, label %.thread213.i.a
    i32 64, label %.thread213.i.a
    i32 51, label %71
    i32 11, label %.thread221.i
    i32 10, label %.thread221.i
    i32 116, label %bb.af
    i32 69, label %bb.ag
    i32 72, label %bb.ag
    i32 70, label %bb.ag
    i32 71, label %bb.ag
    i32 95, label %bb.ag
    i32 96, label %bb.ag
    i32 97, label %bb.ag
    i32 98, label %bb.ag
    i32 99, label %bb.ag
    i32 100, label %bb.ag
    i32 146, label %bb.ag
    i32 90, label %bb.ah
    i32 88, label %bb.ah
    i32 87, label %bb.ah
    i32 89, label %bb.ah
    i32 150, label %bb.ap
    i32 67, label %bb.ax
    i32 79, label %bb.bc
    i32 82, label %bb.bc
    i32 81, label %bb.bc
    i32 80, label %bb.bc
    i32 148, label %bb.bc
    i32 107, label %bb.bn
    i32 108, label %bb.bn
    i32 83, label %bb.bv
    i32 86, label %bb.bv
    i32 85, label %bb.bv
    i32 84, label %bb.bv
    i32 149, label %bb.bv
    i32 74, label %bb.cc
    i32 101, label %bb.cc
    i32 77, label %bb.cc
    i32 76, label %bb.cc
    i32 103, label %bb.cc
    i32 104, label %bb.cc
    i32 105, label %bb.cc
    i32 106, label %bb.cc
    i32 75, label %bb.cc
    i32 102, label %bb.cc
    i32 78, label %bb.cc
    i32 147, label %bb.cc
    i32 94, label %bb.cf
    i32 92, label %bb.cf
    i32 91, label %bb.cf
    i32 93, label %bb.cf
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.es = load i8, ptr %i.er, align 4
  %i.et = and i8 %i.es, 15
  %i.eu = icmp eq i8 %i.et, 10
  br i1 %i.eu, label %bb.n, label %bb.o, !prof !661

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.ew = atomicrmw or ptr %i.ev, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = and i16 %i.ey, 1
  %.not.i95.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i95.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fa = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.dz) #25
  br i1 %i.fa, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fb = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2169
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !660, !range !524, !noundef !525
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef 15, i32 %i.db, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.sroa.3149.0.copyload.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  store i32 15, ptr %52, align 8, !tbaa !604
  store i32 %i.db, ptr %i.co, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cp, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cq, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cr, align 8, !tbaa !637
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 104 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 112 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !543 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 116
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !544
  %.not.i.i.i.i = icmp ult i32 %i.fi, %i.fk
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t, !prof !530

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %52)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fl = zext i32 %i.fi to i64
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !545
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %52, i64 32, i1 false)
  %i.fo = load i32, ptr %i.fh, align 8, !tbaa !543
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fh, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.v:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  br label %bb.co

bb.w:                                             ; preds = %bb.l
  br label %bb.co

bb.x:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 1909
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !638, !range !524, !noundef !525
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.y, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ft = load ptr, ptr %i.cn, align 8, !tbaa !664
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ea
  %i.fv = getelementptr i8, ptr %i.eg, i64 2154
  %.val.i96.i = load i8, ptr %i.fv, align 2, !tbaa !523, !range !524, !noundef !525
  %i.fw = getelementptr i8, ptr %i.eg, i64 2156
  %.val2.i.i = load i32, ptr %i.fw, align 4, !tbaa !526
  %.val3.i.i = load i64, ptr %i.fu, align 1       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val2.i.i, 1
  %i.fx = call i64 @llvm.bswap.i64(i64 %.val3.i.i)
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %.val3.i.i, i64 %i.fx
  %i.fy = shl nuw nsw i8 %.val.i96.i, 5
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = lshr i64 %spec.select.i.i.i.i.i.i.i, %i.fz
  %i.gb = and i64 %i.ga, 4227858432
  %i.gc = icmp eq i64 %i.gb, 3825205248
  br i1 %i.gc, label %bb.z, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

bb.z:                                             ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eg, i64 2504
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 168
  store atomic i8 1, ptr %i.gf monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %.0.i202.i = phi i32 [ 21, %bb.z ], [ 6, %bb.x ], [ 6, %bb.y ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef %.0.i202.i, i32 123, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.sroa.3149.0.copyload.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.aa:                                            ; preds = %bb.l, %bb.l
  %i.gg = load ptr, ptr %1, align 8, !tbaa !633
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i8 1, ptr %i.gh, align 8, !tbaa !665
  br label %.thread213.i.a

bb.ab:                                            ; preds = %bb.l
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.gj = load i8, ptr %i.gi, align 4
  %i.gk = and i8 %i.gj, 15
  %i.gl = icmp eq i8 %i.gk, 3
  br i1 %i.gl, label %bb.ac, label %.thread213.i.a

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load i8, ptr %i.eb, align 2, !tbaa !534
  %i.gn = icmp eq i8 %i.gm, 1
  br i1 %i.gn, label %bb.ad, label %.thread213.i.a

bb.ad:                                            ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !596
  %.not.i97.i = icmp eq i64 %.sroa.2.0.copyload.i, 4
  br i1 %.not.i97.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %.thread213.i.a

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.sroa.07.0.copyload.i = load ptr, ptr %i.gq, align 8, !tbaa !597
  %i.gr = load i32, ptr %.sroa.07.0.copyload.i, align 1
  %i.gs = icmp ne i32 %i.gr, 1668248622
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %.thread213.i.a

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eg, i64 3184 ; 2 uses
  %i.gw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gv) #25 ; 2 uses
  %.not.i.i99.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i99.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.gw) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  store ptr %i.dz, ptr %56, align 8, !tbaa !631
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cm, align 8, !tbaa !666
  %i.gz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %56), !noalias !841 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  %i.ha = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gv) #25 ; 0 uses
  br label %.thread213.i.a

71:                                               ; preds = %bb.l, %.thread.i
  %.0199.i = phi i64 [ %i.eq, %.thread.i ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  br label %.thread213.i.a

.thread221.i:                                     ; preds = %bb.l, %bb.l
  br label %bb.co

bb.af:                                            ; preds = %bb.l
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 116, i64 noundef %i.ea, i64 noundef %.sroa.3149.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(39) %i.dz)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ag:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.hb = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %54, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i32 %i.db) #25
  br i1 %i.hb, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.co

bb.ah:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.hc = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1898
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !650, !range !524, !noundef !525
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %._crit_edge236.i, label %bb.ai

._crit_edge236.i:                                 ; preds = %bb.ah
  %.pre237.i.a = load ptr, ptr %i.f, align 8, !tbaa !648
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.hh = load i16, ptr %i.hg, align 1
  %i.hi = and i16 %i.hh, 1
  %.not.i100.i = icmp eq i16 %i.hi, 0
  %.pre238.i = load ptr, ptr %i.f, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i100.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  store i32 31, ptr %50, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ce, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cf, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cg, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ch, align 8, !tbaa !637
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 104 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 112 ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !543 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 116
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !544
  %.not.i.i.i101.i = icmp ult i32 %i.hl, %i.hn
  br i1 %.not.i.i.i101.i, label %bb.al, label %bb.ak, !prof !530

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %50)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i

bb.al:                                            ; preds = %bb.aj
  %i.ho = zext i32 %i.hl to i64
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !545
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false)
  %i.hr = load i32, ptr %i.hk, align 8, !tbaa !543
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hk, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.am:                                            ; preds = %bb.ai, %._crit_edge236.i
  %i.ht = phi ptr [ %.pre237.i.a, %._crit_edge236.i ], [ %.pre238.i, %bb.ai ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.hv = atomicrmw or ptr %i.hu, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  store i32 5, ptr %51, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ci, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cj, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.ck, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cl, align 8, !tbaa !637
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 112 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !543 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 116
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !544
  %.not.i.i19.i.i = icmp ult i32 %i.hy, %i.ia
  br i1 %.not.i.i19.i.i, label %bb.ao, label %bb.an, !prof !530

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %51)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ib = zext i32 %i.hy to i64
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !545
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %51, i64 32, i1 false)
  %i.ie = load i32, ptr %i.hx, align 8, !tbaa !543
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.hx, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ap:                                            ; preds = %bb.l
  %i.ig = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1898
  %i.ii = load i8, ptr %i.ih, align 2, !tbaa !650, !range !524, !noundef !525
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %._crit_edge233.i.a, label %bb.aq

._crit_edge233.i.a:                               ; preds = %bb.ap
  %.pre234.i.a = load ptr, ptr %i.f, align 8, !tbaa !648
  br label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.il = load i16, ptr %i.ik, align 1
  %i.im = and i16 %i.il, 1
  %.not.i103.i = icmp eq i16 %i.im, 0
  %.pre235.i = load ptr, ptr %i.f, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i103.i, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  store i32 31, ptr %48, align 8, !tbaa !604
  store i32 150, ptr %i.bw, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.bx, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.by, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.bz, align 8, !tbaa !637
  %i.in = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 104 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 112 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !543 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 116
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !544
  %.not.i.i.i106.i = icmp ult i32 %i.ip, %i.ir
  br i1 %.not.i.i.i106.i, label %bb.at, label %bb.as, !prof !530

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %48)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i

bb.at:                                            ; preds = %bb.ar
  %i.is = zext i32 %i.ip to i64
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !545
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %48, i64 32, i1 false)
  %i.iv = load i32, ptr %i.io, align 8, !tbaa !543
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.io, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.au:                                            ; preds = %bb.aq, %._crit_edge233.i.a
  %i.ix = phi ptr [ %.pre234.i.a, %._crit_edge233.i.a ], [ %.pre235.i, %bb.aq ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.iz = atomicrmw or ptr %i.iy, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  store i32 6, ptr %49, align 8, !tbaa !604
  store i32 150, ptr %i.ca, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cb, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cc, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cd, align 8, !tbaa !637
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 104 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 112 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !543 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 116
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !544
  %.not.i.i19.i104.i = icmp ult i32 %i.jc, %i.je
  br i1 %.not.i.i19.i104.i, label %bb.aw, label %bb.av, !prof !530

bb.av:                                            ; preds = %bb.au
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %49)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i

bb.aw:                                            ; preds = %bb.au
  %i.jf = zext i32 %i.jc to i64
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !545
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %49, i64 32, i1 false)
  %i.ji = load i32, ptr %i.jb, align 8, !tbaa !543
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jb, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ax:                                            ; preds = %bb.l
  %i.jk = getelementptr inbounds nuw i8, ptr %i.eg, i64 1898
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !650, !range !524, !noundef !525
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.jo = load i16, ptr %i.jn, align 1
  %i.jp = and i16 %i.jo, 1
  %.not94.i = icmp eq i16 %i.jp, 0
  br i1 %.not94.i, label %bb.az, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
end_hunk_0
begin_hunk_1_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE1ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i123.i, label %bb.cb, label %bb.ca, !prof !530

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %65)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i

bb.cb:                                            ; preds = %bb.bz
  %i.ms = zext i32 %i.mq to i64
  %i.mt = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mt, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.mu, ptr noundef nonnull align 8 dereferenceable(32) %65, i64 32, i1 false)
  %i.mv = load i32, ptr %i.al, align 8, !tbaa !543
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.cc:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  store i32 3, ptr %66, align 8, !tbaa !604
  store i32 %i.db, ptr %i.am, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.an, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.ao, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ap, align 8, !tbaa !637
  %i.mx = load i32, ptr %i.al, align 8, !tbaa !543 ; 2 uses
  %i.my = load i32, ptr %i.j, align 4, !tbaa !544
  %.not.i.i125.i = icmp ult i32 %i.mx, %i.my
  br i1 %.not.i.i125.i, label %bb.ce, label %bb.cd, !prof !530

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %66)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i

bb.ce:                                            ; preds = %bb.cc
  %i.mz = zext i32 %i.mx to i64
  %i.na = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.na, i64 %i.mz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  %i.nc = load i32, ptr %i.al, align 8, !tbaa !543
  %i.nd = add i32 %i.nc, 1
  store i32 %i.nd, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.cf:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.nf = atomicrmw or ptr %i.ne, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  store i32 43, ptr %67, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ah, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.ai, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.aj, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ak, align 8, !tbaa !637
  %i.ng = load i32, ptr %i.al, align 8, !tbaa !543 ; 2 uses
  %i.nh = load i32, ptr %i.j, align 4, !tbaa !544
  %.not.i.i127.i = icmp ult i32 %i.ng, %i.nh
  br i1 %.not.i.i127.i, label %bb.ch, label %bb.cg, !prof !530

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %67)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i

bb.ch:                                            ; preds = %bb.cf
  %i.ni = zext i32 %i.ng to i64
  %i.nj = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.nk = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %67, i64 32, i1 false)
  %i.nl = load i32, ptr %i.al, align 8, !tbaa !543
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ci:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %68, ptr noundef nonnull align 8 dereferenceable(3472) %i.eg) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.no = load ptr, ptr %i.cn, align 8, !tbaa !664
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25, !noalias !842
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %47, ptr noundef nonnull align 8 dereferenceable(3472) %i.nn, ptr noundef %i.np) #25, !noalias !842
  store ptr %i.ct, ptr %69, align 8, !tbaa !589, !alias.scope !842
  %i.nq = load ptr, ptr %i.cs, align 8, !tbaa !590, !noalias !842 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.cu
  br i1 %i.nr, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ns = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !842 ; 3 uses
  %i.nt = icmp ult i64 %i.ns, 16
  call void @llvm.assume(i1 %i.nt)
  %i.nu = add nuw nsw i64 %i.ns, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.nu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ci
  store ptr %i.nq, ptr %69, align 8, !tbaa !590, !alias.scope !842
  %i.nv = load i64, ptr %i.cu, align 8, !tbaa !592, !noalias !842
  store i64 %i.nv, ptr %i.ct, align 8, !tbaa !592, !alias.scope !842
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !842
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cj
  %i.nw = phi i64 [ %i.ns, %bb.cj ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %i.nw, ptr %i.cv, align 8, !tbaa !591, !alias.scope !842
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !590, !noalias !842
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !842
  store i8 0, ptr %i.cu, align 8, !tbaa !592, !noalias !842
  %i.nx = load ptr, ptr %i.cw, align 8, !tbaa !590, !noalias !842 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.cx
  br i1 %i.ny, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.nz = load i64, ptr %i.cx, align 8, !tbaa !592, !noalias !842
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #28
  %.pre2.i.i = load ptr, ptr %i.cs, align 8, !tbaa !590, !noalias !842 ; 2 uses
  %i.ob = icmp eq ptr %.pre2.i.i, %i.cu
  br i1 %i.ob, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.oc = load i64, ptr %i.cu, align 8, !tbaa !592, !noalias !842
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i, i64 noundef %i.od) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25, !noalias !842
  %i.oe = load ptr, ptr %69, align 8, !tbaa !590
  %i.of = load i64, ptr %i.cv, align 8, !tbaa !591
  %i.og = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef %i.oe, i64 noundef %i.of) #25 ; 0 uses
  %i.oh = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.oi = load ptr, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = icmp ult i64 %i.ol, 20
  br i1 %i.om, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i
  %i.on = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i

bb.cl:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.oi, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.oo = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  store ptr %i.op, ptr %i.da, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i: ; preds = %bb.cl, %bb.ck
  %i.oq = zext i32 %i.db to i64
  %i.or = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 noundef %i.oq) #25 ; 0 uses
  %i.os = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.ot = load ptr, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = icmp ult i64 %i.ow, 17
  br i1 %i.ox, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i
  %i.oy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i

bb.cn:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ot, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.oz = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 17
  store ptr %i.pa, ptr %i.da, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i: ; preds = %bb.cn, %bb.cm
  %i.pb = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %68, ptr noundef nonnull %i.dz) #25 ; 0 uses
  %i.pc = load ptr, ptr %69, align 8, !tbaa !590  ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ct
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i
  %i.pe = load i64, ptr %i.ct, align 8, !tbaa !592
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %68) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

.thread213.i.a:                                   ; preds = %71, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.l, %bb.l, %bb.l
  %.092215.i = phi i32 [ 11, %bb.ad ], [ 11, %bb.l ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ 65, %71 ], [ 11, %bb.ab ], [ 11, %bb.ac ], [ 11, %bb.aa ], [ 11, %bb.l ], [ 11, %bb.l ]
  %.0200213.i = phi i64 [ %.sroa.3149.0.copyload.i, %bb.ad ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %.sroa.3149.0.copyload.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ %.0199.i, %71 ], [ %.sroa.3149.0.copyload.i, %bb.ab ], [ %.sroa.3149.0.copyload.i, %bb.ac ], [ %.sroa.3149.0.copyload.i, %bb.aa ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  %i.pg = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 2504
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !21
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 168
  store atomic i8 1, ptr %i.pj monotonic, align 1
  br label %bb.co

bb.co:                                            ; preds = %.thread213.i.a, %bb.ag, %.thread221.i, %bb.w, %bb.v, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %.092214.i = phi i32 [ %.092215.i, %.thread213.i.a ], [ 0, %bb.l ], [ 5, %bb.v ], [ 6, %bb.w ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 31, %bb.ag ], [ 64, %.thread221.i ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ]
  %.0200212.i = phi i64 [ %.0200213.i, %.thread213.i.a ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.v ], [ %.sroa.3149.0.copyload.i, %bb.w ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.ag ], [ %.sroa.3149.0.copyload.i, %.thread221.i ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef %.092214.i, i32 %i.db, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.0200212.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i: ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit122.i, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit120.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit115.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit113.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit111.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i, %bb.ay, %bb.ax, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i, %bb.ag, %bb.af, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i, %bb.r, %bb.l, %bb.j
  %i.pk = load i32, ptr %55, align 8, !tbaa !653
  %i.pl = add i32 %i.pk, -1                       ; 2 uses
  store i32 %i.pl, ptr %55, align 8, !tbaa !653
  %.not.i136.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i136.i, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i

_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %.pre240.i = load i32, ptr %55, align 8, !tbaa !653
  %i.pm = icmp eq i32 %.pre240.i, 0
  br i1 %i.pm, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.f, !llvm.loop !820

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i, %bb.e, %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  br label %bb.js

bb.cp:                                            ; preds = %bb.a
  %i.pn = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !845 ; 4 uses
  %.not = icmp eq i64 %i.po, 0
  br i1 %.not, label %bb.ge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.sroa.01.0.copyload = load ptr, ptr %70, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.pq, ptr %33, align 8, !tbaa !547
  %i.pr = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 7 uses
  store ptr %1, ptr %i.pr, align 8, !tbaa !648
  %i.ps = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 %2, ptr %i.ps, align 8, !tbaa !649
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !544
  %i.pw = zext i32 %i.pv to i64
  %i.px = icmp ugt i64 %i.po, %i.pw
  br i1 %i.px, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i, label %.lr.ph.outer.i.preheader.i

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i: ; preds = %bb.cq
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull %i.py, i64 noundef %i.po, i64 noundef 32) #25
  br label %.lr.ph.outer.i.preheader.i

.lr.ph.outer.i.preheader.i:                       ; preds = %bb.cq, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i
  %.idx.i272.pn.i = shl nuw nsw i64 %i.po, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.idx.i272.pn.i ; 4 uses
  br label %.lr.ph.outer.i.i

.lr.ph.outer.i.i:                                 ; preds = %.thread.i.i, %.lr.ph.outer.i.preheader.i
  %.01636.ph.i.i = phi ptr [ %i.qd, %.thread.i.i ], [ %.sroa.01.0.copyload, %.lr.ph.outer.i.preheader.i ]
  %.01735.ph.i.i = phi i1 [ true, %.thread.i.i ], [ false, %.lr.ph.outer.i.preheader.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cr, %.lr.ph.outer.i.i
  %.01636.i.i = phi ptr [ %i.qc, %bb.cr ], [ %.01636.ph.i.i, %.lr.ph.outer.i.i ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.qa, align 1
  %i.qb = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  switch i32 %i.qb, label %bb.cr [
    i32 107, label %.loopexit.i
    i32 108, label %.loopexit.i
    i32 79, label %.thread.i.i
    i32 82, label %.thread.i.i
    i32 81, label %.thread.i.i
    i32 80, label %.thread.i.i
    i32 83, label %.thread.i.i
    i32 86, label %.thread.i.i
    i32 85, label %.thread.i.i
    i32 84, label %.thread.i.i
  ]

bb.cr:                                            ; preds = %.lr.ph.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 16 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.qc, %i.pz
  br i1 %.not.i.i58, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 16 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.qd, %i.pz
  br i1 %.not38.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.outer.i.i

._crit_edge.i.i:                                  ; preds = %bb.cr
  br i1 %.01735.ph.i.i, label %._crit_edge.thread.i.i, label %.loopexit.i

._crit_edge.thread.i.i:                           ; preds = %.thread.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.qe = load ptr, ptr %1, align 8, !tbaa !633
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %32, ptr noundef nonnull align 8 dereferenceable(3472) %i.qg) #25
  %i.qh = load ptr, ptr %1, align 8, !tbaa !633
  %i.qi = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %32, ptr noundef %i.qh) #25 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 64
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !27
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 72 ; 3 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !28 ; 2 uses
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = icmp ult i64 %i.qp, 108
  br i1 %i.qq, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.thread.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.qs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qr, ptr noundef nonnull @.str.16, i64 noundef 108) #25 ; 0 uses
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

bb.ct:                                            ; preds = %._crit_edge.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.qm, ptr noundef nonnull align 1 dereferenceable(108) @.str.16, i64 108, i1 false)
  %i.qt = load ptr, ptr %i.ql, align 8, !tbaa !28
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 108
  store ptr %i.qu, ptr %i.ql, align 8, !tbaa !28
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i: ; preds = %bb.ct, %bb.cs
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.lr.ph.i14

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %._crit_edge.i.i
  %i.qv = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1898
  %i.qx = load i8, ptr %i.qw, align 2, !tbaa !650, !range !524, !noundef !525
  %i.qy = trunc nuw i8 %i.qx to i1
  %i.qz = xor i1 %i.qy, true
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.loopexit.i, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i
  %i.ra = phi i1 [ false, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i ], [ %i.qz, %.loopexit.i ] ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.rc = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.re = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.rh = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ri = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.rl = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.rq = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.rt = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.rw = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.rx = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.rz = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.sc = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.se = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.sh = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.si = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.sk = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.sl = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.sp = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sr = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ss = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.su = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.tb = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.tc = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tf = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.ti = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 7 uses
  %.phi.trans.insert.i.i15 = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.tq = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %45, i64 64 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 6 uses
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, %.lr.ph.i14
  %.0240.i = phi ptr [ %.sroa.01.0.copyload, %.lr.ph.i14 ], [ %i.agm, %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18 ] ; 30 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.tu, align 1 ; 3 uses
  %i.tv = trunc i64 %.0.copyload.i.i.i.i.i.i to i32 ; 19 uses
  %i.tw = lshr i64 %.0.copyload.i.i.i.i.i.i, 32   ; 3 uses
  %i.tx = load ptr, ptr %1, align 8, !tbaa !633   ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !635
  %.not.i110.i = icmp ugt i64 %i.tz, %i.tw
  br i1 %.not.i110.i, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %31, ptr noundef nonnull align 8 dereferenceable(3472) %i.ub) #25
  %i.uc = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %31, ptr noundef nonnull align 8 dereferenceable(184) %i.tx) #25 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 64
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !27
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 72 ; 3 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !28 ; 2 uses
  %i.uh = ptrtoint ptr %i.ue to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = icmp ult i64 %i.uj, 22
  br i1 %i.uk, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.um = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ul, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ug, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.un = load ptr, ptr %i.uf, align 8, !tbaa !28
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 22
  store ptr %i.uo, ptr %i.uf, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i: ; preds = %bb.cx, %bb.cw
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16:      ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i, %bb.cu
  %i.up = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !636
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.tw
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !601 ; 40 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.0240.i, align 1 ; 24 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 22 ; 2 uses
  %i.uu = load i8, ptr %i.ut, align 2, !tbaa !534
  %i.uv = icmp eq i8 %i.uu, 4
  %i.uw = icmp ne i64 %i.tw, 0
  %or.cond.i17 = and i1 %i.uw, %i.uv
  br i1 %or.cond.i17, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16
  %i.ux = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %33, ptr noundef nonnull align 8 dereferenceable(45) %i.us, i64 noundef %.0.copyload.i.i.i.i) #25
  br i1 %i.ux, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %._crit_edge245.i

._crit_edge245.i:                                 ; preds = %bb.cy
  %.0.copyload.i.i.i.i.pre.i = load i64, ptr %.0240.i, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge245.i, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16
  %.0.copyload.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.pre.i, %._crit_edge245.i ], [ %.0.copyload.i.i.i.i, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16 ]
  %i.uy = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 2344
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !558 ; 2 uses
  %i.vb = load ptr, ptr %i.pr, align 8, !tbaa !648
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 72
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !664
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.0.copyload.i.i.i.i.i
  %i.vf = load ptr, ptr %i.va, align 8, !tbaa !557
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 64
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = call noundef i64 %i.vh(ptr noundef nonnull align 8 dereferenceable(160) %i.va, ptr noundef %i.ve, i32 %i.tv) #25, !inline_history !821 ; 46 uses
  %i.vj = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 2169
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !660, !range !524, !noundef !525
  %i.vm = trunc nuw i8 %i.vl to i1
  %i.vn = icmp eq i32 %i.tv, 51
  %or.cond234.i = and i1 %i.vn, %i.vm
  br i1 %or.cond234.i, label %.thread.i57, label %bb.da

.thread.i57:                                      ; preds = %bb.cz
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 2504
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.vq, i64 noundef 0) #25
  %i.vs = add i64 %i.vi, 32768
  %i.vt = add i64 %i.vs, %i.vr
  br label %72

bb.da:                                            ; preds = %bb.cz
  switch i32 %i.tv, label %bb.fx [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18
    i32 3, label %bb.gd
    i32 56, label %bb.gd
    i32 6, label %bb.gd
    i32 5, label %bb.gd
    i32 110, label %bb.gd
    i32 39, label %bb.gd
    i32 40, label %bb.gd
    i32 41, label %bb.gd
    i32 42, label %bb.gd
    i32 4, label %bb.gd
    i32 57, label %bb.gd
    i32 1, label %bb.gd
    i32 38, label %bb.gd
    i32 250, label %bb.db
    i32 252, label %bb.db
    i32 251, label %bb.db
    i32 26, label %bb.db
    i32 44, label %bb.db
    i32 132, label %bb.db
    i32 14, label %bb.dk
    i32 58, label %bb.dk
    i32 17, label %bb.dk
    i32 16, label %bb.dk
    i32 15, label %bb.dk
    i32 59, label %bb.dk
    i32 133, label %bb.dl
    i32 123, label %bb.dm
    i32 47, label %bb.dp
    i32 63, label %bb.dp
    i32 49, label %.thread218.i
    i32 48, label %bb.dq
    i32 50, label %.thread218.i
    i32 64, label %.thread218.i
    i32 51, label %72
    i32 11, label %.thread226.i29
    i32 10, label %.thread226.i29
    i32 116, label %bb.du
    i32 69, label %bb.dv
    i32 72, label %bb.dv
    i32 70, label %bb.dv
    i32 71, label %bb.dv
    i32 95, label %bb.dv
    i32 96, label %bb.dv
    i32 97, label %bb.dv
    i32 98, label %bb.dv
    i32 99, label %bb.dv
    i32 100, label %bb.dv
    i32 146, label %bb.dv
    i32 90, label %bb.dw
    i32 88, label %bb.dw
    i32 87, label %bb.dw
    i32 89, label %bb.dw
    i32 150, label %bb.ee
    i32 67, label %bb.em
    i32 79, label %bb.er
    i32 82, label %bb.er
    i32 81, label %bb.er
    i32 80, label %bb.er
    i32 148, label %bb.er
    i32 107, label %bb.fc
    i32 108, label %bb.fc
    i32 83, label %bb.fk
    i32 86, label %bb.fk
    i32 85, label %bb.fk
    i32 84, label %bb.fk
    i32 149, label %bb.fk
    i32 74, label %bb.fr
    i32 101, label %bb.fr
    i32 77, label %bb.fr
    i32 76, label %bb.fr
    i32 103, label %bb.fr
    i32 104, label %bb.fr
    i32 105, label %bb.fr
    i32 106, label %bb.fr
    i32 75, label %bb.fr
    i32 102, label %bb.fr
    i32 78, label %bb.fr
    i32 147, label %bb.fr
    i32 94, label %bb.fu
    i32 92, label %bb.fu
    i32 91, label %bb.fu
    i32 93, label %bb.fu
  ]

bb.db:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %i.vu = getelementptr inbounds nuw i8, ptr %i.us, i64 20
  %i.vv = load i8, ptr %i.vu, align 4
  %i.vw = and i8 %i.vv, 15
  %i.vx = icmp eq i8 %i.vw, 10
  br i1 %i.vx, label %bb.dc, label %bb.dd, !prof !661

bb.dc:                                            ; preds = %bb.db
  %i.vy = getelementptr inbounds nuw i8, ptr %i.us, i64 26
  %i.vz = atomicrmw or ptr %i.vy, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.wa = getelementptr inbounds nuw i8, ptr %i.us, i64 23
  %i.wb = load i16, ptr %i.wa, align 1
  %i.wc = and i16 %i.wb, 1
  %.not.i112.i = icmp eq i16 %i.wc, 0
  br i1 %.not.i112.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.wd = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.us) #25
  br i1 %i.wd, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.we = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 2169
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !660, !range !524, !noundef !525
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.dd
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef 15, i32 %i.tv, i64 noundef %.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(39) %i.us, i64 noundef %i.vi) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.wi = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  store i32 15, ptr %30, align 8, !tbaa !604
  store i32 %i.tv, ptr %i.th, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.ti, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.tj, align 8, !tbaa !663
  store ptr %i.us, ptr %i.tk, align 8, !tbaa !637
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 104 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 112 ; 3 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !543 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 116
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !544
  %.not.i.i.i.i42 = icmp ult i32 %i.wl, %i.wn
  br i1 %.not.i.i.i.i42, label %bb.dj, label %bb.di, !prof !530

bb.di:                                            ; preds = %bb.dh
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %30)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43

bb.dj:                                            ; preds = %bb.dh
  %i.wo = zext i32 %i.wl to i64
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !545
  %i.wq = getelementptr inbounds nuw [32 x i8], ptr %i.wp, i64 %i.wo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.wq, ptr noundef nonnull align 8 dereferenceable(32) %30, i64 32, i1 false)
  %i.wr = load i32, ptr %i.wk, align 8, !tbaa !543
  %i.ws = add i32 %i.wr, 1
  store i32 %i.ws, ptr %i.wk, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dk:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  br label %bb.gd

bb.dl:                                            ; preds = %bb.da
  br label %bb.gd

bb.dm:                                            ; preds = %bb.da
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vj, i64 1909
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !638, !range !524, !noundef !525
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.dn, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

bb.dn:                                            ; preds = %bb.dm
  %i.ww = load ptr, ptr %i.tg, align 8, !tbaa !664
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 %.0.copyload.i.i.i.i
  %i.wy = getelementptr i8, ptr %i.vj, i64 2154
  %.val.i.i = load i8, ptr %i.wy, align 2, !tbaa !523, !range !524, !noundef !525
  %i.wz = getelementptr i8, ptr %i.vj, i64 2156
  %.val2.i.i38 = load i32, ptr %i.wz, align 4, !tbaa !526
  %.val3.i.i39 = load i64, ptr %i.wx, align 1     ; 2 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq i32 %.val2.i.i38, 1
  %i.xa = call i64 @llvm.bswap.i64(i64 %.val3.i.i39)
  %spec.select.i.i.i.i.i.i.i41 = select i1 %.not.i.i.i.i.i.i.i40, i64 %.val3.i.i39, i64 %i.xa
  %i.xb = shl nuw nsw i8 %.val.i.i, 5
  %i.xc = zext nneg i8 %i.xb to i64
  %i.xd = lshr i64 %spec.select.i.i.i.i.i.i.i41, %i.xc
  %i.xe = and i64 %i.xd, 4227858432
  %i.xf = icmp eq i64 %i.xe, 3825205248
  br i1 %i.xf, label %bb.do, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

bb.do:                                            ; preds = %bb.dn
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vj, i64 2504
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !21
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 168
  store atomic i8 1, ptr %i.xi monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37: ; preds = %bb.do, %bb.dn, %bb.dm
  %.0.i208.i = phi i32 [ 21, %bb.do ], [ 6, %bb.dm ], [ 6, %bb.dn ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef %.0.i208.i, i32 123, i64 noundef %.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(39) %i.us, i64 noundef %i.vi) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dp:                                            ; preds = %bb.da, %bb.da
  %i.xj = load ptr, ptr %1, align 8, !tbaa !633
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 104
  store i8 1, ptr %i.xk, align 8, !tbaa !665
  br label %.thread218.i

bb.dq:                                            ; preds = %bb.da
  %i.xl = getelementptr inbounds nuw i8, ptr %i.us, i64 20
  %i.xm = load i8, ptr %i.xl, align 4
  %i.xn = and i8 %i.xm, 15
  %i.xo = icmp eq i8 %i.xn, 3
  br i1 %i.xo, label %bb.dr, label %.thread218.i

bb.dr:                                            ; preds = %bb.dq
  %i.xp = load i8, ptr %i.ut, align 2, !tbaa !534
  %i.xq = icmp eq i8 %i.xp, 1
  br i1 %i.xq, label %bb.ds, label %.thread218.i

bb.ds:                                            ; preds = %bb.dr
  %i.xr = getelementptr inbounds nuw i8, ptr %i.us, i64 56
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %.sroa.2.0.copyload.i31 = load i64, ptr %.sroa.2.0..sroa_idx.i30, align 8, !tbaa !596
  %.not.i113.i = icmp eq i64 %.sroa.2.0.copyload.i31, 4
  br i1 %.not.i113.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i32, label %.thread218.i

_ZN4llvmeqENS_9StringRefES0_.exit.i32:            ; preds = %bb.ds
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %.sroa.09.0.copyload.i = load ptr, ptr %i.xt, align 8, !tbaa !597
  %i.xu = load i32, ptr %.sroa.09.0.copyload.i, align 1
  %i.xv = icmp ne i32 %i.xu, 1668248622
  %i.xw = zext i1 %i.xv to i32
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34, label %.thread218.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vj, i64 3184 ; 2 uses
  %i.xz = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.xy) #25 ; 2 uses
  %.not.i.i.i35 = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i.i35, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34
  call void @_ZSt20__throw_system_errori(i32 noundef %i.xz) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34
  %i.ya = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  store ptr %i.us, ptr %34, align 8, !tbaa !631
  store i64 %i.vi, ptr %i.tf, align 8, !tbaa !666
  %i.yc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !846 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.yd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.xy) #25 ; 0 uses
  br label %.thread218.i

72:                                               ; preds = %bb.da, %.thread.i57
  %.0202205.i = phi i64 [ %i.vt, %.thread.i57 ], [ %i.vi, %bb.da ]
  br label %.thread218.i

.thread226.i29:                                   ; preds = %bb.da, %bb.da
  br label %bb.gd

bb.du:                                            ; preds = %bb.da
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 116, i64 noundef %.0.copyload.i.i.i.i, i64 noundef %i.vi, ptr noundef nonnull align 8 dereferenceable(39) %i.us)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dv:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %i.ye = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %33, i64 noundef %.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(39) %i.us, i32 %i.tv) #25
  br i1 %i.ye, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %bb.gd

bb.dw:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  %i.yf = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1898
  %i.yh = load i8, ptr %i.yg, align 2, !tbaa !650, !range !524, !noundef !525
  %i.yi = trunc nuw i8 %i.yh to i1
  br i1 %i.yi, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.yj = getelementptr inbounds nuw i8, ptr %i.us, i64 23
  %i.yk = load i16, ptr %i.yj, align 1
  %i.yl = and i16 %i.yk, 1
  %.not.i115.i = icmp eq i16 %i.yl, 0
  br i1 %.not.i115.i, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.ym = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store i32 31, ptr %28, align 8, !tbaa !604
  store i32 %i.tv, ptr %i.sx, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.sy, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.sz, align 8, !tbaa !663
  store ptr %i.us, ptr %i.ta, align 8, !tbaa !637
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 104 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 112 ; 3 uses
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !543 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 116
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !544
  %.not.i.i.i116.i = icmp ult i32 %i.yp, %i.yr
  br i1 %.not.i.i.i116.i, label %bb.ea, label %bb.dz, !prof !530

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.yn, ptr noundef nonnull align 8 dereferenceable(32) %28)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i

bb.ea:                                            ; preds = %bb.dy
  %i.ys = zext i32 %i.yp to i64
  %i.yt = load ptr, ptr %i.yn, align 8, !tbaa !545
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %i.yt, i64 %i.ys
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.yu, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  %i.yv = load i32, ptr %i.yo, align 8, !tbaa !543
  %i.yw = add i32 %i.yv, 1
  store i32 %i.yw, ptr %i.yo, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i: ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.eb:                                            ; preds = %bb.dx, %bb.dw
  %i.yx = getelementptr inbounds nuw i8, ptr %i.us, i64 26
  %i.yy = atomicrmw or ptr %i.yx, i16 256 monotonic, align 2 ; 0 uses
  %i.yz = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store i32 5, ptr %29, align 8, !tbaa !604
  store i32 %i.tv, ptr %i.tb, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.tc, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.td, align 8, !tbaa !663
  store ptr %i.us, ptr %i.te, align 8, !tbaa !637
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 104 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 112 ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !543 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 116
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !544
  %.not.i.i19.i.i27 = icmp ult i32 %i.zc, %i.ze
  br i1 %.not.i.i19.i.i27, label %bb.ed, label %bb.ec, !prof !530

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.za, ptr noundef nonnull align 8 dereferenceable(32) %29)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28

bb.ed:                                            ; preds = %bb.eb
  %i.zf = zext i32 %i.zc to i64
  %i.zg = load ptr, ptr %i.za, align 8, !tbaa !545
  %i.zh = getelementptr inbounds nuw [32 x i8], ptr %i.zg, i64 %i.zf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.zh, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 32, i1 false)
  %i.zi = load i32, ptr %i.zb, align 8, !tbaa !543
  %i.zj = add i32 %i.zi, 1
  store i32 %i.zj, ptr %i.zb, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28: ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.ee:                                            ; preds = %bb.da
  %i.zk = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 1898
  %i.zm = load i8, ptr %i.zl, align 2, !tbaa !650, !range !524, !noundef !525
  %i.zn = trunc nuw i8 %i.zm to i1
  br i1 %i.zn, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zo = getelementptr inbounds nuw i8, ptr %i.us, i64 23
  %i.zp = load i16, ptr %i.zo, align 1
  %i.zq = and i16 %i.zp, 1
  %.not.i118.i = icmp eq i16 %i.zq, 0
  br i1 %.not.i118.i, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.zr = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store i32 31, ptr %26, align 8, !tbaa !604
  store i32 150, ptr %i.sp, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.sq, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.sr, align 8, !tbaa !663
  store ptr %i.us, ptr %i.ss, align 8, !tbaa !637
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 104 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 112 ; 3 uses
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !543 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 116
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !544
  %.not.i.i.i121.i = icmp ult i32 %i.zu, %i.zw
  br i1 %.not.i.i.i121.i, label %bb.ei, label %bb.eh, !prof !530

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.zs, ptr noundef nonnull align 8 dereferenceable(32) %26)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i

bb.ei:                                            ; preds = %bb.eg
  %i.zx = zext i32 %i.zu to i64
  %i.zy = load ptr, ptr %i.zs, align 8, !tbaa !545
  %i.zz = getelementptr inbounds nuw [32 x i8], ptr %i.zy, i64 %i.zx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.zz, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false)
  %i.aaa = load i32, ptr %i.zt, align 8, !tbaa !543
  %i.aab = add i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.zt, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.ej:                                            ; preds = %bb.ef, %bb.ee
  %i.aac = getelementptr inbounds nuw i8, ptr %i.us, i64 26
  %i.aad = atomicrmw or ptr %i.aac, i16 256 monotonic, align 2 ; 0 uses
  %i.aae = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store i32 6, ptr %27, align 8, !tbaa !604
  store i32 150, ptr %i.st, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.su, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.sv, align 8, !tbaa !663
  store ptr %i.us, ptr %i.sw, align 8, !tbaa !637
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 104 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 112 ; 3 uses
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !543 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 116
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !544
  %.not.i.i19.i119.i = icmp ult i32 %i.aah, %i.aaj
  br i1 %.not.i.i19.i119.i, label %bb.el, label %bb.ek, !prof !530

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf, ptr noundef nonnull align 8 dereferenceable(32) %27)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i

bb.el:                                            ; preds = %bb.ej
  %i.aak = zext i32 %i.aah to i64
  %i.aal = load ptr, ptr %i.aaf, align 8, !tbaa !545
  %i.aam = getelementptr inbounds nuw [32 x i8], ptr %i.aal, i64 %i.aak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aam, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 32, i1 false)
  %i.aan = load i32, ptr %i.aag, align 8, !tbaa !543
  %i.aao = add i32 %i.aan, 1
  store i32 %i.aao, ptr %i.aag, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i: ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.em:                                            ; preds = %bb.da
  %i.aap = getelementptr inbounds nuw i8, ptr %i.vj, i64 1898
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aas = getelementptr inbounds nuw i8, ptr %i.us, i64 23
  %i.aat = load i16, ptr %i.aas, align 1
  %i.aau = and i16 %i.aat, 1
  %.not108.i = icmp eq i16 %i.aau, 0
  br i1 %.not108.i, label %bb.eo, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  store i32 31, ptr %35, align 8, !tbaa !604
  store i32 67, ptr %i.sl, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.sm, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.sn, align 8, !tbaa !663
  store ptr %i.us, ptr %i.so, align 8, !tbaa !637
end_hunk_1
begin_hunk_2_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE1ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i136.i, label %bb.fq, label %bb.fp, !prof !530

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %42)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i

bb.fq:                                            ; preds = %bb.fo
  %i.adu = zext i32 %i.ads to i64
  %i.adv = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.adw = getelementptr inbounds nuw [32 x i8], ptr %i.adv, i64 %i.adu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.adw, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 32, i1 false)
  %i.adx = load i32, ptr %i.rf, align 8, !tbaa !543
  %i.ady = add i32 %i.adx, 1
  store i32 %i.ady, ptr %i.rf, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i: ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fr:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  store i32 3, ptr %43, align 8, !tbaa !604
  store i32 %i.tv, ptr %i.rg, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.rh, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.ri, align 8, !tbaa !663
  store ptr %i.us, ptr %i.rj, align 8, !tbaa !637
  %i.adz = load i32, ptr %i.rf, align 8, !tbaa !543 ; 2 uses
  %i.aea = load i32, ptr %i.pu, align 4, !tbaa !544
  %.not.i.i138.i = icmp ult i32 %i.adz, %i.aea
  br i1 %.not.i.i138.i, label %bb.ft, label %bb.fs, !prof !530

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %43)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i

bb.ft:                                            ; preds = %bb.fr
  %i.aeb = zext i32 %i.adz to i64
  %i.aec = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.aed = getelementptr inbounds nuw [32 x i8], ptr %i.aec, i64 %i.aeb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aed, ptr noundef nonnull align 8 dereferenceable(32) %43, i64 32, i1 false)
  %i.aee = load i32, ptr %i.rf, align 8, !tbaa !543
  %i.aef = add i32 %i.aee, 1
  store i32 %i.aef, ptr %i.rf, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i: ; preds = %bb.ft, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fu:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.us, i64 26
  %i.aeh = atomicrmw or ptr %i.aeg, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store i32 43, ptr %44, align 8, !tbaa !604
  store i32 %i.tv, ptr %i.rb, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i, ptr %i.rc, align 8, !tbaa !624
  store i64 %i.vi, ptr %i.rd, align 8, !tbaa !663
  store ptr %i.us, ptr %i.re, align 8, !tbaa !637
  %i.aei = load i32, ptr %i.rf, align 8, !tbaa !543 ; 2 uses
  %i.aej = load i32, ptr %i.pu, align 4, !tbaa !544
  %.not.i.i140.i = icmp ult i32 %i.aei, %i.aej
  br i1 %.not.i.i140.i, label %bb.fw, label %bb.fv, !prof !530

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %44)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i

bb.fw:                                            ; preds = %bb.fu
  %i.aek = zext i32 %i.aei to i64
  %i.ael = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.aem = getelementptr inbounds nuw [32 x i8], ptr %i.ael, i64 %i.aek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aem, ptr noundef nonnull align 8 dereferenceable(32) %44, i64 32, i1 false)
  %i.aen = load i32, ptr %i.rf, align 8, !tbaa !543
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.rf, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i: ; preds = %bb.fw, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fx:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %45, ptr noundef nonnull align 8 dereferenceable(3472) %i.vj) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  %i.aep = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.aeq = load ptr, ptr %i.tg, align 8, !tbaa !664
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %.0.copyload.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !847
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %25, ptr noundef nonnull align 8 dereferenceable(3472) %i.aep, ptr noundef %i.aer) #25, !noalias !847
  store ptr %i.tm, ptr %46, align 8, !tbaa !589, !alias.scope !847
  %i.aes = load ptr, ptr %i.tl, align 8, !tbaa !590, !noalias !847 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.tn
  br i1 %i.aet, label %bb.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

bb.fy:                                            ; preds = %bb.fx
  %i.aeu = load i64, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !847 ; 3 uses
  %i.aev = icmp ult i64 %i.aeu, 16
  call void @llvm.assume(i1 %i.aev)
  %i.aew = add nuw nsw i64 %i.aeu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tm, ptr noundef nonnull align 8 dereferenceable(1) %i.tn, i64 %i.aew, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.fx
  store ptr %i.aes, ptr %46, align 8, !tbaa !590, !alias.scope !847
  %i.aex = load i64, ptr %i.tn, align 8, !tbaa !592, !noalias !847
  store i64 %i.aex, ptr %i.tm, align 8, !tbaa !592, !alias.scope !847
  %.pre.i.i45 = load i64, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !847
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %bb.fy
  %i.aey = phi i64 [ %i.aeu, %bb.fy ], [ %.pre.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ]
  store i64 %i.aey, ptr %i.to, align 8, !tbaa !591, !alias.scope !847
  store ptr %i.tn, ptr %i.tl, align 8, !tbaa !590, !noalias !847
  store i64 0, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !847
  store i8 0, ptr %i.tn, align 8, !tbaa !592, !noalias !847
  %i.aez = load ptr, ptr %i.tp, align 8, !tbaa !590, !noalias !847 ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.tq
  br i1 %i.afa, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46
  %i.afb = load i64, ptr %i.tq, align 8, !tbaa !592, !noalias !847
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afc) #28
  %.pre2.i.i48 = load ptr, ptr %i.tl, align 8, !tbaa !590, !noalias !847 ; 2 uses
  %i.afd = icmp eq ptr %.pre2.i.i48, %i.tn
  br i1 %i.afd, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47
  %i.afe = load i64, ptr %i.tn, align 8, !tbaa !592, !noalias !847
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i48, i64 noundef %i.aff) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !847
  %i.afg = load ptr, ptr %46, align 8, !tbaa !590
  %i.afh = load i64, ptr %i.to, align 8, !tbaa !591
  %i.afi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.tr, ptr noundef %i.afg, i64 noundef %i.afh) #25 ; 0 uses
  %i.afj = load ptr, ptr %i.ts, align 8, !tbaa !27
  %i.afk = load ptr, ptr %i.tt, align 8, !tbaa !28 ; 2 uses
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = ptrtoint ptr %i.afk to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %i.afo = icmp ult i64 %i.afn, 20
  br i1 %i.afo, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50
  %i.afp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.tr, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i

bb.ga:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.afk, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.afq = load ptr, ptr %i.tt, align 8, !tbaa !28
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 20
  store ptr %i.afr, ptr %i.tt, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i: ; preds = %bb.ga, %bb.fz
  %i.afs = and i64 %.0.copyload.i.i.i.i.i.i, 4294967295
  %i.aft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.tr, i64 noundef %i.afs) #25 ; 0 uses
  %i.afu = load ptr, ptr %i.ts, align 8, !tbaa !27
  %i.afv = load ptr, ptr %i.tt, align 8, !tbaa !28 ; 2 uses
  %i.afw = ptrtoint ptr %i.afu to i64
  %i.afx = ptrtoint ptr %i.afv to i64
  %i.afy = sub i64 %i.afw, %i.afx
  %i.afz = icmp ult i64 %i.afy, 17
  br i1 %i.afz, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i
  %i.aga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.tr, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i

bb.gc:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.afv, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.agb = load ptr, ptr %i.tt, align 8, !tbaa !28
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 17
  store ptr %i.agc, ptr %i.tt, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i: ; preds = %bb.gc, %bb.gb
  %i.agd = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %45, ptr noundef nonnull %i.us) #25 ; 0 uses
  %i.age = load ptr, ptr %46, align 8, !tbaa !590 ; 2 uses
  %i.agf = icmp eq ptr %i.age, %i.tm
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i
  %i.agg = load i64, ptr %i.tm, align 8, !tbaa !592
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

.thread218.i:                                     ; preds = %72, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36, %_ZN4llvmeqENS_9StringRefES0_.exit.i32, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.da, %bb.da, %bb.da
  %.0104220.i = phi i32 [ 11, %bb.ds ], [ 11, %bb.da ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i32 ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36 ], [ 65, %72 ], [ 11, %bb.dq ], [ 11, %bb.dr ], [ 11, %bb.dp ], [ 11, %bb.da ], [ 11, %bb.da ]
  %.0202206218.i = phi i64 [ %i.vi, %bb.ds ], [ %i.vi, %bb.da ], [ %i.vi, %_ZN4llvmeqENS_9StringRefES0_.exit.i32 ], [ %i.vi, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36 ], [ %.0202205.i, %72 ], [ %i.vi, %bb.dq ], [ %i.vi, %bb.dr ], [ %i.vi, %bb.dp ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ]
  %i.agi = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 2504
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !21
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 168
  store atomic i8 1, ptr %i.agl monotonic, align 1
  br label %bb.gd

bb.gd:                                            ; preds = %.thread218.i, %bb.dv, %.thread226.i29, %bb.dl, %bb.dk, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %.0104219.i = phi i32 [ %.0104220.i, %.thread218.i ], [ 0, %bb.da ], [ 5, %bb.dk ], [ 6, %bb.dl ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 31, %bb.dv ], [ 64, %.thread226.i29 ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ]
  %.0202206217.i = phi i64 [ %.0202206218.i, %.thread218.i ], [ %i.vi, %bb.da ], [ %i.vi, %bb.dk ], [ %i.vi, %bb.dl ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.dv ], [ %i.vi, %.thread226.i29 ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ], [ %i.vi, %bb.da ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef %.0104219.i, i32 %i.tv, i64 noundef %.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(39) %i.us, i64 noundef %.0202206217.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18: ; preds = %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit135.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit133.i, %bb.fg, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i21, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit130.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i25, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i23, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i26, %bb.en, %bb.em, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i, %bb.dv, %bb.du, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43, %bb.dg, %bb.da, %bb.cy
  %.4.i = phi ptr [ %.0240.i, %bb.cy ], [ %.0240.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i ], [ %.0240.i, %bb.gd ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit135.i ], [ %.0240.i, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37 ], [ %.0240.i, %bb.du ], [ %.0240.i, %bb.da ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28 ], [ %.0240.i, %bb.dv ], [ %.0240.i, %bb.em ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit130.i ], [ %.0240.i, %bb.fg ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i26 ], [ %.0240.i, %bb.en ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i23 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i25 ], [ %.0240.i, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i21 ], [ %i.aci, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit133.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i ], [ %.0240.i, %bb.dg ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i ]
  %i.agm = getelementptr inbounds nuw i8, ptr %.4.i, i64 16 ; 2 uses
  %.not.i19 = icmp eq ptr %i.agm, %i.pz
  br i1 %.not.i19, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.cu, !llvm.loop !830

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.js

bb.ge:                                            ; preds = %bb.cp
  %i.agn = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.agn, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.agp, ptr %11, align 8, !tbaa !547
  %i.agq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store ptr %1, ptr %i.agq, align 8, !tbaa !648
  %i.agr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %2, ptr %i.agr, align 8, !tbaa !649
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !544
  %i.agv = zext i32 %i.agu to i64
  %i.agw = icmp ugt i64 %.sroa.2.0.copyload, %i.agv
  br i1 %i.agw, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i127, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i127: ; preds = %bb.ge
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ags, ptr noundef nonnull %i.agx, i64 noundef %.sroa.2.0.copyload, i64 noundef 32) #25
  br label %.lr.ph.outer.i.preheader.i61

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59: ; preds = %bb.ge
  %.not34.i.i60 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not34.i.i60, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %.lr.ph.outer.i.preheader.i61

.lr.ph.outer.i.preheader.i61:                     ; preds = %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i127
  %.idx.i277.pn.i = mul nuw nsw i64 %.sroa.2.0.copyload, 24
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx.i277.pn.i ; 4 uses
  br label %.lr.ph.outer.i.i62

.lr.ph.outer.i.i62:                               ; preds = %.thread.i.i68, %.lr.ph.outer.i.preheader.i61
  %.01636.ph.i.i63 = phi ptr [ %i.ahc, %.thread.i.i68 ], [ %.sroa.0.0.copyload, %.lr.ph.outer.i.preheader.i61 ]
  %.01735.ph.i.i64 = phi i1 [ true, %.thread.i.i68 ], [ false, %.lr.ph.outer.i.preheader.i61 ]
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.gf, %.lr.ph.outer.i.i62
  %.01636.i.i66 = phi ptr [ %i.ahb, %bb.gf ], [ %.01636.ph.i.i63, %.lr.ph.outer.i.i62 ] ; 3 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 8
  %.0.copyload.i.i.i.i.i.i.i67 = load i64, ptr %i.agz, align 1
  %i.aha = trunc i64 %.0.copyload.i.i.i.i.i.i.i67 to i32
  switch i32 %i.aha, label %bb.gf [
    i32 107, label %.loopexit.i124
    i32 108, label %.loopexit.i124
    i32 79, label %.thread.i.i68
    i32 82, label %.thread.i.i68
    i32 81, label %.thread.i.i68
    i32 80, label %.thread.i.i68
    i32 83, label %.thread.i.i68
    i32 86, label %.thread.i.i68
    i32 85, label %.thread.i.i68
    i32 84, label %.thread.i.i68
  ]

bb.gf:                                            ; preds = %.lr.ph.i.i65
  %i.ahb = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 24 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ahb, %i.agy
  br i1 %.not.i.i125, label %._crit_edge.i.i126, label %.lr.ph.i.i65

.thread.i.i68:                                    ; preds = %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65
  %i.ahc = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 24 ; 2 uses
  %.not38.i.i69 = icmp eq ptr %i.ahc, %i.agy
  br i1 %.not38.i.i69, label %._crit_edge.thread.i.i70, label %.lr.ph.outer.i.i62

._crit_edge.i.i126:                               ; preds = %bb.gf
  br i1 %.01735.ph.i.i64, label %._crit_edge.thread.i.i70, label %.loopexit.i124

._crit_edge.thread.i.i70:                         ; preds = %.thread.i.i68, %._crit_edge.i.i126
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ahd = load ptr, ptr %1, align 8, !tbaa !633
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3472) %i.ahf) #25
  %i.ahg = load ptr, ptr %1, align 8, !tbaa !633
  %i.ahh = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef %i.ahg) #25 ; 3 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !27
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahh, i64 72 ; 3 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !28 ; 2 uses
  %i.ahm = ptrtoint ptr %i.ahj to i64
  %i.ahn = ptrtoint ptr %i.ahl to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  %i.ahp = icmp ult i64 %i.aho, 108
  br i1 %i.ahp, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %._crit_edge.thread.i.i70
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahh, i64 40
  %i.ahr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ahq, ptr noundef nonnull @.str.16, i64 noundef 108) #25 ; 0 uses
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

bb.gh:                                            ; preds = %._crit_edge.thread.i.i70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.ahl, ptr noundef nonnull align 1 dereferenceable(108) @.str.16, i64 108, i1 false)
  %i.ahs = load ptr, ptr %i.ahk, align 8, !tbaa !28
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 108
  store ptr %i.aht, ptr %i.ahk, align 8, !tbaa !28
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i: ; preds = %bb.gh, %bb.gg
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.lr.ph.i71

.loopexit.i124:                                   ; preds = %.lr.ph.i.i65, %.lr.ph.i.i65, %._crit_edge.i.i126
  %i.ahu = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 1898
  %i.ahw = load i8, ptr %i.ahv, align 2, !tbaa !650, !range !524, !noundef !525
  %i.ahx = trunc nuw i8 %i.ahw to i1
  %i.ahy = xor i1 %i.ahx, true
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.loopexit.i124, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i
  %i.ahz = phi i1 [ false, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i ], [ %i.ahy, %.loopexit.i124 ] ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aib = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aic = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aid = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.aig = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aih = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.aii = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.aij = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.aik = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ail = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aim = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ain = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.aio = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aip = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aiq = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.air = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ais = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aiu = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.aiv = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.aiw = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.aiy = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.aiz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aja = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ajb = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ajc = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aje = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ajg = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ajj = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ajk = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ajl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ajn = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ajo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ajp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ajr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aju = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ajv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ajw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ajz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aka = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.akb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.akd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ake = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.akf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.akh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aki = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.akj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.akk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %.phi.trans.insert.i.i72 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 4 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %23, i64 64 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %23, i64 72 ; 6 uses
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, %.lr.ph.i71
  %.0241.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i71 ], [ %i.awz, %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80 ] ; 30 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.0241.i, i64 8
  %.0.copyload.i.i.i.i.i.i73 = load i64, ptr %i.akt, align 1 ; 3 uses
  %i.aku = trunc i64 %.0.copyload.i.i.i.i.i.i73 to i32 ; 18 uses
  %i.akv = lshr i64 %.0.copyload.i.i.i.i.i.i73, 32 ; 3 uses
  %i.akw = load ptr, ptr %1, align 8, !tbaa !633  ; 4 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !635
  %.not.i110.i74 = icmp ugt i64 %i.aky, %i.akv
  br i1 %.not.i110.i74, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3472) %i.ala) #25
  %i.alb = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(184) %i.akw) #25 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 64
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !27
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 72 ; 3 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !28 ; 2 uses
  %i.alg = ptrtoint ptr %i.ald to i64
  %i.alh = ptrtoint ptr %i.alf to i64
  %i.ali = sub i64 %i.alg, %i.alh
  %i.alj = icmp ult i64 %i.ali, 22
  br i1 %i.alj, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alb, i64 40
  %i.all = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alk, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.alf, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.alm = load ptr, ptr %i.ale, align 8, !tbaa !28
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 22
  store ptr %i.aln, ptr %i.ale, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75: ; preds = %bb.gl, %bb.gk
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76:      ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75, %bb.gi
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !636
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.alp, i64 %i.akv
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !601 ; 40 uses
  %.0.copyload.i.i.i.i77 = load i64, ptr %.0241.i, align 1 ; 23 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 22 ; 2 uses
  %i.alt = load i8, ptr %i.als, align 2, !tbaa !534
  %i.alu = icmp eq i8 %i.alt, 4
  %i.alv = icmp ne i64 %i.akv, 0
  %or.cond.i78 = and i1 %i.alv, %i.alu
  br i1 %or.cond.i78, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76
  %i.alw = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(45) %i.alr, i64 noundef %.0.copyload.i.i.i.i77) #25
  br i1 %i.alw, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76
  %i.alx = getelementptr inbounds nuw i8, ptr %.0241.i, i64 16
  %.val.i.i79 = load i64, ptr %i.alx, align 1     ; 46 uses
  %i.aly = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 2169
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !660, !range !524, !noundef !525
  %i.amb = trunc nuw i8 %i.ama to i1
  %i.amc = icmp eq i32 %i.aku, 51
  %or.cond235.i = and i1 %i.amc, %i.amb
  br i1 %or.cond235.i, label %.thread.i123, label %bb.go

.thread.i123:                                     ; preds = %bb.gn
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aly, i64 2504
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !21
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amg = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.amf, i64 noundef 0) #25
  %i.amh = add i64 %.val.i.i79, 32768
  %i.ami = add i64 %i.amh, %i.amg
  br label %73

bb.go:                                            ; preds = %bb.gn
  switch i32 %i.aku, label %bb.jl [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80
    i32 3, label %bb.jr
    i32 56, label %bb.jr
    i32 6, label %bb.jr
    i32 5, label %bb.jr
    i32 110, label %bb.jr
    i32 39, label %bb.jr
    i32 40, label %bb.jr
    i32 41, label %bb.jr
    i32 42, label %bb.jr
    i32 4, label %bb.jr
    i32 57, label %bb.jr
    i32 1, label %bb.jr
    i32 38, label %bb.jr
    i32 250, label %bb.gp
    i32 252, label %bb.gp
    i32 251, label %bb.gp
    i32 26, label %bb.gp
    i32 44, label %bb.gp
    i32 132, label %bb.gp
    i32 14, label %bb.gy
    i32 58, label %bb.gy
    i32 17, label %bb.gy
    i32 16, label %bb.gy
    i32 15, label %bb.gy
    i32 59, label %bb.gy
    i32 133, label %bb.gz
    i32 123, label %bb.ha
    i32 47, label %bb.hd
    i32 63, label %bb.hd
    i32 49, label %.thread219.i
    i32 48, label %bb.he
    i32 50, label %.thread219.i
    i32 64, label %.thread219.i
    i32 51, label %73
    i32 11, label %.thread227.i
    i32 10, label %.thread227.i
    i32 116, label %bb.hi
    i32 69, label %bb.hj
    i32 72, label %bb.hj
    i32 70, label %bb.hj
    i32 71, label %bb.hj
    i32 95, label %bb.hj
    i32 96, label %bb.hj
    i32 97, label %bb.hj
    i32 98, label %bb.hj
    i32 99, label %bb.hj
    i32 100, label %bb.hj
    i32 146, label %bb.hj
    i32 90, label %bb.hk
    i32 88, label %bb.hk
    i32 87, label %bb.hk
    i32 89, label %bb.hk
    i32 150, label %bb.hs
    i32 67, label %bb.ia
    i32 79, label %bb.if
    i32 82, label %bb.if
    i32 81, label %bb.if
    i32 80, label %bb.if
    i32 148, label %bb.if
    i32 107, label %bb.iq
    i32 108, label %bb.iq
    i32 83, label %bb.iy
    i32 86, label %bb.iy
    i32 85, label %bb.iy
    i32 84, label %bb.iy
    i32 149, label %bb.iy
    i32 74, label %bb.jf
    i32 101, label %bb.jf
    i32 77, label %bb.jf
    i32 76, label %bb.jf
    i32 103, label %bb.jf
    i32 104, label %bb.jf
    i32 105, label %bb.jf
    i32 106, label %bb.jf
    i32 75, label %bb.jf
    i32 102, label %bb.jf
    i32 78, label %bb.jf
    i32 147, label %bb.jf
    i32 94, label %bb.ji
    i32 92, label %bb.ji
    i32 91, label %bb.ji
    i32 93, label %bb.ji
  ]

bb.gp:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alr, i64 20
  %i.amk = load i8, ptr %i.amj, align 4
  %i.aml = and i8 %i.amk, 15
  %i.amm = icmp eq i8 %i.aml, 10
  br i1 %i.amm, label %bb.gq, label %bb.gr, !prof !661

bb.gq:                                            ; preds = %bb.gp
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alr, i64 26
  %i.amo = atomicrmw or ptr %i.amn, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.amp = getelementptr inbounds nuw i8, ptr %i.alr, i64 23
  %i.amq = load i16, ptr %i.amp, align 1
  %i.amr = and i16 %i.amq, 1
  %.not.i112.i108 = icmp eq i16 %i.amr, 0
  br i1 %.not.i112.i108, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %bb.gr
  %i.ams = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.alr) #25
  br i1 %i.ams, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.amt = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 2169
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !660, !range !524, !noundef !525
  %i.amw = trunc nuw i8 %i.amv to i1
  br i1 %i.amw, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt, %bb.gr
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef 15, i32 %i.aku, i64 noundef %.0.copyload.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(39) %i.alr, i64 noundef %.val.i.i79) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.gv:                                            ; preds = %bb.gt, %bb.gs
  %i.amx = load ptr, ptr %i.agq, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 15, ptr %8, align 8, !tbaa !604
  store i32 %i.aku, ptr %i.akg, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.akh, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.aki, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.akj, align 8, !tbaa !637
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 104 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 112 ; 3 uses
  %i.ana = load i32, ptr %i.amz, align 8, !tbaa !543 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 116
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !544
  %.not.i.i.i.i109 = icmp ult i32 %i.ana, %i.anc
  br i1 %.not.i.i.i.i109, label %bb.gx, label %bb.gw, !prof !530

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.amy, ptr noundef nonnull align 8 dereferenceable(32) %8)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i110

bb.gx:                                            ; preds = %bb.gv
  %i.and = zext i32 %i.ana to i64
  %i.ane = load ptr, ptr %i.amy, align 8, !tbaa !545
  %i.anf = getelementptr inbounds nuw [32 x i8], ptr %i.ane, i64 %i.and
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.anf, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ang = load i32, ptr %i.amz, align 8, !tbaa !543
  %i.anh = add i32 %i.ang, 1
  store i32 %i.anh, ptr %i.amz, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i110

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i110: ; preds = %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.gy:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  br label %bb.jr

bb.gz:                                            ; preds = %bb.go
  br label %bb.jr

bb.ha:                                            ; preds = %bb.go
  %i.ani = getelementptr inbounds nuw i8, ptr %i.aly, i64 1909
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !638, !range !524, !noundef !525
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %bb.hb, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103

bb.hb:                                            ; preds = %bb.ha
  %i.anl = load ptr, ptr %i.akf, align 8, !tbaa !664
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 %.0.copyload.i.i.i.i77
  %i.ann = getelementptr i8, ptr %i.aly, i64 2154
  %.val.i113.i = load i8, ptr %i.ann, align 2, !tbaa !523, !range !524, !noundef !525
  %i.ano = getelementptr i8, ptr %i.aly, i64 2156
  %.val2.i.i104 = load i32, ptr %i.ano, align 4, !tbaa !526
  %.val3.i.i105 = load i64, ptr %i.anm, align 1   ; 2 uses
  %.not.i.i.i.i.i.i.i106 = icmp eq i32 %.val2.i.i104, 1
  %i.anp = call i64 @llvm.bswap.i64(i64 %.val3.i.i105)
  %spec.select.i.i.i.i.i.i.i107 = select i1 %.not.i.i.i.i.i.i.i106, i64 %.val3.i.i105, i64 %i.anp
  %i.anq = shl nuw nsw i8 %.val.i113.i, 5
  %i.anr = zext nneg i8 %i.anq to i64
  %i.ans = lshr i64 %spec.select.i.i.i.i.i.i.i107, %i.anr
  %i.ant = and i64 %i.ans, 4227858432
  %i.anu = icmp eq i64 %i.ant, 3825205248
  br i1 %i.anu, label %bb.hc, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103

bb.hc:                                            ; preds = %bb.hb
  %i.anv = getelementptr inbounds nuw i8, ptr %i.aly, i64 2504
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !21
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 168
  store atomic i8 1, ptr %i.anx monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103: ; preds = %bb.hc, %bb.hb, %bb.ha
  %.0.i209.i = phi i32 [ 21, %bb.hc ], [ 6, %bb.ha ], [ 6, %bb.hb ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef %.0.i209.i, i32 123, i64 noundef %.0.copyload.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(39) %i.alr, i64 noundef %.val.i.i79) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hd:                                            ; preds = %bb.go, %bb.go
  %i.any = load ptr, ptr %1, align 8, !tbaa !633
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 104
  store i8 1, ptr %i.anz, align 8, !tbaa !665
  br label %.thread219.i

bb.he:                                            ; preds = %bb.go
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.alr, i64 20
  %i.aob = load i8, ptr %i.aoa, align 4
  %i.aoc = and i8 %i.aob, 15
  %i.aod = icmp eq i8 %i.aoc, 3
  br i1 %i.aod, label %bb.hf, label %.thread219.i

bb.hf:                                            ; preds = %bb.he
  %i.aoe = load i8, ptr %i.als, align 2, !tbaa !534
  %i.aof = icmp eq i8 %i.aoe, 1
  br i1 %i.aof, label %bb.hg, label %.thread219.i

bb.hg:                                            ; preds = %bb.hf
  %i.aog = getelementptr inbounds nuw i8, ptr %i.alr, i64 56
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16
  %.sroa.2.0.copyload.i96 = load i64, ptr %.sroa.2.0..sroa_idx.i95, align 8, !tbaa !596
  %.not.i114.i = icmp eq i64 %.sroa.2.0.copyload.i96, 4
  br i1 %.not.i114.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i97, label %.thread219.i

_ZN4llvmeqENS_9StringRefES0_.exit.i97:            ; preds = %bb.hg
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %.sroa.09.0.copyload.i98 = load ptr, ptr %i.aoi, align 8, !tbaa !597
  %i.aoj = load i32, ptr %.sroa.09.0.copyload.i98, align 1
  %i.aok = icmp ne i32 %i.aoj, 1668248622
  %i.aol = zext i1 %i.aok to i32
  %i.aom = icmp eq i32 %i.aol, 0
  br i1 %i.aom, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i100, label %.thread219.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i100:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i97
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aly, i64 3184 ; 2 uses
  %i.aoo = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aon) #25 ; 2 uses
  %.not.i.i.i101 = icmp eq i32 %i.aoo, 0
  br i1 %.not.i.i.i101, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i102, label %bb.hh

bb.hh:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i100
  call void @_ZSt20__throw_system_errori(i32 noundef %i.aoo) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i102:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i100
  %i.aop = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %i.alr, ptr %12, align 8, !tbaa !631
  store i64 %.val.i.i79, ptr %i.ake, align 8, !tbaa !666
  %i.aor = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aoq, ptr noundef nonnull align 8 dereferenceable(16) %12), !noalias !848 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.aos = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aon) #25 ; 0 uses
  br label %.thread219.i

73:                                               ; preds = %bb.go, %.thread.i123
  %.0203206.i = phi i64 [ %i.ami, %.thread.i123 ], [ %.val.i.i79, %bb.go ]
  br label %.thread219.i

.thread227.i:                                     ; preds = %bb.go, %bb.go
  br label %bb.jr

bb.hi:                                            ; preds = %bb.go
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 116, i64 noundef %.0.copyload.i.i.i.i77, i64 noundef %.val.i.i79, ptr noundef nonnull align 8 dereferenceable(39) %i.alr)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hj:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %i.aot = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %11, i64 noundef %.0.copyload.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(39) %i.alr, i32 %i.aku) #25
  br i1 %i.aot, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.jr

bb.hk:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go
  %i.aou = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 1898
  %i.aow = load i8, ptr %i.aov, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %._crit_edge248.i, label %bb.hl

._crit_edge248.i:                                 ; preds = %bb.hk
  %.pre249.i = load ptr, ptr %i.agq, align 8, !tbaa !648
  br label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.alr, i64 23
  %i.aoz = load i16, ptr %i.aoy, align 1
  %i.apa = and i16 %i.aoz, 1
  %.not.i116.i92 = icmp eq i16 %i.apa, 0
  %.pre250.i = load ptr, ptr %i.agq, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i116.i92, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 31, ptr %6, align 8, !tbaa !604
  store i32 %i.aku, ptr %i.ajw, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.ajx, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.ajy, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.ajz, align 8, !tbaa !637
  %i.apb = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 104 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 112 ; 3 uses
  %i.apd = load i32, ptr %i.apc, align 8, !tbaa !543 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 116
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !544
  %.not.i.i.i117.i = icmp ult i32 %i.apd, %i.apf
  br i1 %.not.i.i.i117.i, label %bb.ho, label %bb.hn, !prof !530

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.apb, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i

bb.ho:                                            ; preds = %bb.hm
  %i.apg = zext i32 %i.apd to i64
  %i.aph = load ptr, ptr %i.apb, align 8, !tbaa !545
  %i.api = getelementptr inbounds nuw [32 x i8], ptr %i.aph, i64 %i.apg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.api, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.apj = load i32, ptr %i.apc, align 8, !tbaa !543
  %i.apk = add i32 %i.apj, 1
  store i32 %i.apk, ptr %i.apc, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i: ; preds = %bb.ho, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hp:                                            ; preds = %bb.hl, %._crit_edge248.i
  %i.apl = phi ptr [ %.pre249.i, %._crit_edge248.i ], [ %.pre250.i, %bb.hl ] ; 3 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.alr, i64 26
  %i.apn = atomicrmw or ptr %i.apm, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 5, ptr %7, align 8, !tbaa !604
  store i32 %i.aku, ptr %i.aka, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.akb, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.akc, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.akd, align 8, !tbaa !637
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apl, i64 104 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apl, i64 112 ; 3 uses
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !543 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 116
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !544
  %.not.i.i19.i.i93 = icmp ult i32 %i.apq, %i.aps
  br i1 %.not.i.i19.i.i93, label %bb.hr, label %bb.hq, !prof !530

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.apo, ptr noundef nonnull align 8 dereferenceable(32) %7)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i94

bb.hr:                                            ; preds = %bb.hp
  %i.apt = zext i32 %i.apq to i64
  %i.apu = load ptr, ptr %i.apo, align 8, !tbaa !545
  %i.apv = getelementptr inbounds nuw [32 x i8], ptr %i.apu, i64 %i.apt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.apv, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.apw = load i32, ptr %i.app, align 8, !tbaa !543
  %i.apx = add i32 %i.apw, 1
  store i32 %i.apx, ptr %i.app, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i94

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i94: ; preds = %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hs:                                            ; preds = %bb.go
  %i.apy = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 1898
  %i.aqa = load i8, ptr %i.apz, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aqb = trunc nuw i8 %i.aqa to i1
  br i1 %i.aqb, label %._crit_edge246.i, label %bb.ht

._crit_edge246.i:                                 ; preds = %bb.hs
  %.pre.i91 = load ptr, ptr %i.agq, align 8, !tbaa !648
  br label %bb.hx

bb.ht:                                            ; preds = %bb.hs
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.alr, i64 23
  %i.aqd = load i16, ptr %i.aqc, align 1
  %i.aqe = and i16 %i.aqd, 1
  %.not.i119.i90 = icmp eq i16 %i.aqe, 0
  %.pre247.i = load ptr, ptr %i.agq, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i119.i90, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 31, ptr %4, align 8, !tbaa !604
  store i32 150, ptr %i.ajo, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.ajp, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.ajq, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.ajr, align 8, !tbaa !637
  %i.aqf = getelementptr inbounds nuw i8, ptr %.pre247.i, i64 104 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.pre247.i, i64 112 ; 3 uses
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !543 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.pre247.i, i64 116
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !544
  %.not.i.i.i122.i = icmp ult i32 %i.aqh, %i.aqj
  br i1 %.not.i.i.i122.i, label %bb.hw, label %bb.hv, !prof !530

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqf, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i

bb.hw:                                            ; preds = %bb.hu
  %i.aqk = zext i32 %i.aqh to i64
  %i.aql = load ptr, ptr %i.aqf, align 8, !tbaa !545
  %i.aqm = getelementptr inbounds nuw [32 x i8], ptr %i.aql, i64 %i.aqk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aqm, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.aqn = load i32, ptr %i.aqg, align 8, !tbaa !543
  %i.aqo = add i32 %i.aqn, 1
  store i32 %i.aqo, ptr %i.aqg, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i: ; preds = %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hx:                                            ; preds = %bb.ht, %._crit_edge246.i
  %i.aqp = phi ptr [ %.pre.i91, %._crit_edge246.i ], [ %.pre247.i, %bb.ht ] ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.alr, i64 26
  %i.aqr = atomicrmw or ptr %i.aqq, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 6, ptr %5, align 8, !tbaa !604
  store i32 150, ptr %i.ajs, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.ajt, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.aju, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.ajv, align 8, !tbaa !637
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 104 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqp, i64 112 ; 3 uses
  %i.aqu = load i32, ptr %i.aqt, align 8, !tbaa !543 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 116
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !544
  %.not.i.i19.i120.i = icmp ult i32 %i.aqu, %i.aqw
  br i1 %.not.i.i19.i120.i, label %bb.hz, label %bb.hy, !prof !530

bb.hy:                                            ; preds = %bb.hx
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqs, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i

bb.hz:                                            ; preds = %bb.hx
  %i.aqx = zext i32 %i.aqu to i64
  %i.aqy = load ptr, ptr %i.aqs, align 8, !tbaa !545
  %i.aqz = getelementptr inbounds nuw [32 x i8], ptr %i.aqy, i64 %i.aqx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aqz, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.ara = load i32, ptr %i.aqt, align 8, !tbaa !543
  %i.arb = add i32 %i.ara, 1
  store i32 %i.arb, ptr %i.aqt, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i: ; preds = %bb.hz, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.ia:                                            ; preds = %bb.go
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aly, i64 1898
  %i.ard = load i8, ptr %i.arc, align 2, !tbaa !650, !range !524, !noundef !525
  %i.are = trunc nuw i8 %i.ard to i1
  br i1 %i.are, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.arf = getelementptr inbounds nuw i8, ptr %i.alr, i64 23
  %i.arg = load i16, ptr %i.arf, align 1
  %i.arh = and i16 %i.arg, 1
  %.not108.i87 = icmp eq i16 %i.arh, 0
  br i1 %.not108.i87, label %bb.ic, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80
end_hunk_2
begin_hunk_3_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE1ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i137.i, label %bb.je, label %bb.jd, !prof !530

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ags, ptr noundef nonnull align 8 dereferenceable(32) %20)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i

bb.je:                                            ; preds = %bb.jc
  %i.auh = zext i32 %i.auf to i64
  %i.aui = load ptr, ptr %i.ags, align 8, !tbaa !545
  %i.auj = getelementptr inbounds nuw [32 x i8], ptr %i.aui, i64 %i.auh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.auj, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false)
  %i.auk = load i32, ptr %i.aie, align 8, !tbaa !543
  %i.aul = add i32 %i.auk, 1
  store i32 %i.aul, ptr %i.aie, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i: ; preds = %bb.je, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.jf:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i32 3, ptr %21, align 8, !tbaa !604
  store i32 %i.aku, ptr %i.aif, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.aig, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.aih, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.aii, align 8, !tbaa !637
  %i.aum = load i32, ptr %i.aie, align 8, !tbaa !543 ; 2 uses
  %i.aun = load i32, ptr %i.agt, align 4, !tbaa !544
  %.not.i.i139.i = icmp ult i32 %i.aum, %i.aun
  br i1 %.not.i.i139.i, label %bb.jh, label %bb.jg, !prof !530

bb.jg:                                            ; preds = %bb.jf
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ags, ptr noundef nonnull align 8 dereferenceable(32) %21)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i

bb.jh:                                            ; preds = %bb.jf
  %i.auo = zext i32 %i.aum to i64
  %i.aup = load ptr, ptr %i.ags, align 8, !tbaa !545
  %i.auq = getelementptr inbounds nuw [32 x i8], ptr %i.aup, i64 %i.auo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.auq, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false)
  %i.aur = load i32, ptr %i.aie, align 8, !tbaa !543
  %i.aus = add i32 %i.aur, 1
  store i32 %i.aus, ptr %i.aie, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i: ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.ji:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go
  %i.aut = getelementptr inbounds nuw i8, ptr %i.alr, i64 26
  %i.auu = atomicrmw or ptr %i.aut, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 43, ptr %22, align 8, !tbaa !604
  store i32 %i.aku, ptr %i.aia, align 4, !tbaa !527
  store i64 %.0.copyload.i.i.i.i77, ptr %i.aib, align 8, !tbaa !624
  store i64 %.val.i.i79, ptr %i.aic, align 8, !tbaa !663
  store ptr %i.alr, ptr %i.aid, align 8, !tbaa !637
  %i.auv = load i32, ptr %i.aie, align 8, !tbaa !543 ; 2 uses
  %i.auw = load i32, ptr %i.agt, align 4, !tbaa !544
  %.not.i.i141.i = icmp ult i32 %i.auv, %i.auw
  br i1 %.not.i.i141.i, label %bb.jk, label %bb.jj, !prof !530

bb.jj:                                            ; preds = %bb.ji
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ags, ptr noundef nonnull align 8 dereferenceable(32) %22)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i

bb.jk:                                            ; preds = %bb.ji
  %i.aux = zext i32 %i.auv to i64
  %i.auy = load ptr, ptr %i.ags, align 8, !tbaa !545
  %i.auz = getelementptr inbounds nuw [32 x i8], ptr %i.auy, i64 %i.aux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.auz, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false)
  %i.ava = load i32, ptr %i.aie, align 8, !tbaa !543
  %i.avb = add i32 %i.ava, 1
  store i32 %i.avb, ptr %i.aie, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i: ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.jl:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %23, ptr noundef nonnull align 8 dereferenceable(3472) %i.aly) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.avc = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.avd = load ptr, ptr %i.akf, align 8, !tbaa !664
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 %.0.copyload.i.i.i.i77
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !849
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3472) %i.avc, ptr noundef %i.ave) #25, !noalias !849
  store ptr %i.akl, ptr %24, align 8, !tbaa !589, !alias.scope !849
  %i.avf = load ptr, ptr %i.akk, align 8, !tbaa !590, !noalias !849 ; 2 uses
  %i.avg = icmp eq ptr %i.avf, %i.akm
  br i1 %i.avg, label %bb.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111

bb.jm:                                            ; preds = %bb.jl
  %i.avh = load i64, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !849 ; 3 uses
  %i.avi = icmp ult i64 %i.avh, 16
  call void @llvm.assume(i1 %i.avi)
  %i.avj = add nuw nsw i64 %i.avh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akl, ptr noundef nonnull align 8 dereferenceable(1) %i.akm, i64 %i.avj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111: ; preds = %bb.jl
  store ptr %i.avf, ptr %24, align 8, !tbaa !590, !alias.scope !849
  %i.avk = load i64, ptr %i.akm, align 8, !tbaa !592, !noalias !849
  store i64 %i.avk, ptr %i.akl, align 8, !tbaa !592, !alias.scope !849
  %.pre.i.i112 = load i64, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !849
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i113: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111, %bb.jm
  %i.avl = phi i64 [ %i.avh, %bb.jm ], [ %.pre.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111 ]
  store i64 %i.avl, ptr %i.akn, align 8, !tbaa !591, !alias.scope !849
  store ptr %i.akm, ptr %i.akk, align 8, !tbaa !590, !noalias !849
  store i64 0, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !849
  store i8 0, ptr %i.akm, align 8, !tbaa !592, !noalias !849
  %i.avm = load ptr, ptr %i.ako, align 8, !tbaa !590, !noalias !849 ; 2 uses
  %i.avn = icmp eq ptr %i.avm, %i.akp
  br i1 %i.avn, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i113
  %i.avo = load i64, ptr %i.akp, align 8, !tbaa !592, !noalias !849
  %i.avp = add i64 %i.avo, 1
  call void @_ZdlPvm(ptr noundef %i.avm, i64 noundef %i.avp) #28
  %.pre2.i.i115 = load ptr, ptr %i.akk, align 8, !tbaa !590, !noalias !849 ; 2 uses
  %i.avq = icmp eq ptr %.pre2.i.i115, %i.akm
  br i1 %i.avq, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114
  %i.avr = load i64, ptr %i.akm, align 8, !tbaa !592, !noalias !849
  %i.avs = add i64 %i.avr, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i115, i64 noundef %i.avs) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !849
  %i.avt = load ptr, ptr %24, align 8, !tbaa !590
  %i.avu = load i64, ptr %i.akn, align 8, !tbaa !591
  %i.avv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.akq, ptr noundef %i.avt, i64 noundef %i.avu) #25 ; 0 uses
  %i.avw = load ptr, ptr %i.akr, align 8, !tbaa !27
  %i.avx = load ptr, ptr %i.aks, align 8, !tbaa !28 ; 2 uses
  %i.avy = ptrtoint ptr %i.avw to i64
  %i.avz = ptrtoint ptr %i.avx to i64
  %i.awa = sub i64 %i.avy, %i.avz
  %i.awb = icmp ult i64 %i.awa, 20
  br i1 %i.awb, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117
  %i.awc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.akq, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i

bb.jo:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.avx, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.awd = load ptr, ptr %i.aks, align 8, !tbaa !28
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 20
  store ptr %i.awe, ptr %i.aks, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i: ; preds = %bb.jo, %bb.jn
  %i.awf = and i64 %.0.copyload.i.i.i.i.i.i73, 4294967295
  %i.awg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.akq, i64 noundef %i.awf) #25 ; 0 uses
  %i.awh = load ptr, ptr %i.akr, align 8, !tbaa !27
  %i.awi = load ptr, ptr %i.aks, align 8, !tbaa !28 ; 2 uses
  %i.awj = ptrtoint ptr %i.awh to i64
  %i.awk = ptrtoint ptr %i.awi to i64
  %i.awl = sub i64 %i.awj, %i.awk
  %i.awm = icmp ult i64 %i.awl, 17
  br i1 %i.awm, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i
  %i.awn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.akq, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i

bb.jq:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.awi, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.awo = load ptr, ptr %i.aks, align 8, !tbaa !28
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 17
  store ptr %i.awp, ptr %i.aks, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i: ; preds = %bb.jq, %bb.jp
  %i.awq = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %i.alr) #25 ; 0 uses
  %i.awr = load ptr, ptr %24, align 8, !tbaa !590 ; 2 uses
  %i.aws = icmp eq ptr %i.awr, %i.akl
  br i1 %i.aws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i
  %i.awt = load i64, ptr %i.akl, align 8, !tbaa !592
  %i.awu = add i64 %i.awt, 1
  call void @_ZdlPvm(ptr noundef %i.awr, i64 noundef %i.awu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

.thread219.i:                                     ; preds = %73, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i102, %_ZN4llvmeqENS_9StringRefES0_.exit.i97, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.go, %bb.go, %bb.go
  %.0104221.i = phi i32 [ 11, %bb.hg ], [ 11, %bb.go ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i97 ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i102 ], [ 65, %73 ], [ 11, %bb.he ], [ 11, %bb.hf ], [ 11, %bb.hd ], [ 11, %bb.go ], [ 11, %bb.go ]
  %.0203207219.i = phi i64 [ %.val.i.i79, %bb.hg ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %_ZN4llvmeqENS_9StringRefES0_.exit.i97 ], [ %.val.i.i79, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i102 ], [ %.0203206.i, %73 ], [ %.val.i.i79, %bb.he ], [ %.val.i.i79, %bb.hf ], [ %.val.i.i79, %bb.hd ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ]
  %i.awv = load ptr, ptr %i.ago, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 2504
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !21
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 168
  store atomic i8 1, ptr %i.awy monotonic, align 1
  br label %bb.jr

bb.jr:                                            ; preds = %.thread219.i, %bb.hj, %.thread227.i, %bb.gz, %bb.gy, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %.0104220.i94 = phi i32 [ %.0104221.i, %.thread219.i ], [ 0, %bb.go ], [ 5, %bb.gy ], [ 6, %bb.gz ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 31, %bb.hj ], [ 64, %.thread227.i ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ]
  %.0203207218.i = phi i64 [ %.0203207219.i, %.thread219.i ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.gy ], [ %.val.i.i79, %bb.gz ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.hj ], [ %.val.i.i79, %.thread227.i ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ], [ %.val.i.i79, %bb.go ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef %.0104220.i94, i32 %i.aku, i64 noundef %.0.copyload.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(39) %i.alr, i64 noundef %.0203207218.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80: ; preds = %bb.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit136.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit134.i, %bb.iu, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i85, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit131.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit129.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit127.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i89, %bb.ib, %bb.ia, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i94, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i, %bb.hj, %bb.hi, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i110, %bb.gu, %bb.go, %bb.gm
  %.4.i81 = phi ptr [ %.0241.i, %bb.gm ], [ %.0241.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118 ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i ], [ %.0241.i, %bb.jr ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit136.i ], [ %.0241.i, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i103 ], [ %.0241.i, %bb.hi ], [ %.0241.i, %bb.go ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i110 ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i94 ], [ %.0241.i, %bb.hj ], [ %.0241.i, %bb.ia ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit131.i ], [ %.0241.i, %bb.iu ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i89 ], [ %.0241.i, %bb.ib ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit127.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit129.i ], [ %.0241.i, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i85 ], [ %i.asv, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit134.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i ], [ %.0241.i, %bb.gu ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i ]
  %i.awz = getelementptr inbounds nuw i8, ptr %.4.i81, i64 24 ; 2 uses
  %.not.i82 = icmp eq ptr %i.awz, %i.agy
  br i1 %.not.i82, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.gi, !llvm.loop !839

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.js

bb.js:                                            ; preds = %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE0ELb1EEEEEvRT_RNS0_16InputSectionBaseEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.lld::elf::ErrorPlace", align 8 ; 8 uses
  %4 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %5 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %6 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %7 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %8 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %9 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %10 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %11 = alloca %"class.lld::elf::RelocScan", align 8 ; 14 uses
  %12 = alloca %"struct.std::pair.671", align 8   ; 5 uses
  %13 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %14 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %15 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %16 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %17 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %18 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %19 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %20 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %21 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %22 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %23 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"struct.lld::elf::ErrorPlace", align 8 ; 8 uses
  %26 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %27 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %28 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %29 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %30 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %31 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %32 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %33 = alloca %"class.lld::elf::RelocScan", align 8 ; 15 uses
  %34 = alloca %"struct.std::pair.671", align 8   ; 5 uses
  %35 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %36 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %37 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %38 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %39 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %40 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %41 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %42 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %43 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %44 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %45 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"struct.lld::elf::ErrorPlace", align 8 ; 8 uses
  %48 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %49 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %50 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %51 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %52 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %53 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  %54 = alloca %"class.lld::elf::RelocScan", align 8 ; 14 uses
  %55 = alloca %"struct.lld::elf::RelocsCrel<true>::const_iterator", align 8 ; 20 uses
  %56 = alloca %"struct.std::pair.671", align 8   ; 5 uses
  %57 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %58 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %59 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %60 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %61 = alloca %"struct.lld::elf::RelocsCrel<true>::const_iterator", align 8 ; 8 uses
  %62 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %63 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %64 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %65 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %66 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %67 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %68 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %70 = alloca %"struct.lld::elf::RelsOrRelas.693", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #25
  call void @_ZNK3lld3elf16InputSectionBase11relsOrRelasIN4llvm6object7ELFTypeILNS3_10endiannessE0ELb1EEEEENS0_11RelsOrRelasIT_EEb(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::RelsOrRelas.693") align 8 %70, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext true) #25
  %i.a = getelementptr inbounds nuw i8, ptr %70, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !646  ; 5 uses
  %i.c = icmp ugt i64 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %bb.a
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 40
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.e, ptr %54, align 8, !tbaa !547
  %i.f = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 6 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !648
  %i.g = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 %2, ptr %i.g, align 8, !tbaa !649
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.i = lshr i64 %i.b, 3                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !544
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.n, i64 noundef %i.i, i64 noundef 32) #25
  br label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %i.o = call fastcc noundef zeroext i1 @_ZL20missingTlsGdLdMarkerIN4llvm6object13Elf_Crel_ImplILb1EEEEbRN3lld3elf16InputSectionBaseENS5_6RelocsIT_EE(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 %i.b, ptr %.sroa.24.0.copyload)
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1898
  %i.r = load i8, ptr %i.q, align 2, !tbaa !650, !range !524, !noundef !525
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i
  %i.u = phi i1 [ false, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i ], [ %i.t, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  %i.v = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.v, ptr %55, align 8, !tbaa !653, !alias.scope !880
  %i.w = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.x = and i64 %i.b, 4
  %.not.i.i.i = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not.i.i.i, i8 2, i8 3
  store i8 %i.y, ptr %i.w, align 4, !tbaa !654, !alias.scope !880
  %i.z = getelementptr inbounds nuw i8, ptr %55, i64 5
  %i.aa = trunc i64 %i.b to i8
  %i.ab = and i8 %i.aa, 3
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !655, !alias.scope !880
  %i.ac = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %.sroa.24.0.copyload, ptr %i.ac, align 8, !tbaa !656, !alias.scope !880
  %i.ad = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.v, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !880
  br i1 %.not4.i.i.i, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i

_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i:    ; preds = %bb.e
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %.pre.i = load i32, ptr %55, align 8, !tbaa !653
  %i.ae = icmp eq i32 %.pre.i, 0
  br i1 %i.ae, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %55, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %55, i64 24
  %.sroa.3149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %67, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.am = getelementptr inbounds nuw i8, ptr %66, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %65, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %64, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %61, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %63, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %62, i64 72 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %60, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %59, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %49, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %52, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %52, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 7 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %47, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %68, i64 40 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %68, i64 64 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %68, i64 72 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i, %.lr.ph.i
  %i.db = load i32, ptr %i.af, align 4, !tbaa !657 ; 19 uses
  %i.dc = load i32, ptr %i.ag, align 8, !tbaa !658 ; 2 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !633   ; 4 uses
  %i.de = zext i32 %i.dc to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !635
  %.not.i.i = icmp ugt i64 %i.dg, %i.de
  br i1 %.not.i.i, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %53, ptr noundef nonnull align 8 dereferenceable(3472) %i.di) #25
  %i.dj = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %53, ptr noundef nonnull align 8 dereferenceable(184) %i.dd) #25 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28 ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 22
  br i1 %i.dr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.dn, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 22
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i: ; preds = %bb.i, %bb.h
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %53) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i:        ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i.i, %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !636
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.de
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !601 ; 40 uses
  %i.ea = load i64, ptr %i.ad, align 8, !tbaa !659 ; 23 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 22 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !534
  %i.ed = icmp eq i8 %i.ec, 4
  %i.ee = icmp ne i32 %i.dc, 0
  %or.cond.i = and i1 %i.ee, %i.ed
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i
  %i.ef = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %54, ptr noundef nonnull align 8 dereferenceable(45) %i.dz, i64 noundef %i.ea) #25
  br i1 %i.ef, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i
  %.sroa.3149.0.copyload.i = load i64, ptr %.sroa.3149.0..sroa_idx.i, align 8, !tbaa !596 ; 46 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2169
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !660, !range !524, !noundef !525
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = icmp eq i32 %i.db, 51
  %or.cond229.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond229.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 2504
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.en, i64 noundef 0) #25
  %i.ep = add i64 %.sroa.3149.0.copyload.i, 32768
  %i.eq = add i64 %i.ep, %i.eo
  br label %71

bb.l:                                             ; preds = %bb.k
  switch i32 %i.db, label %bb.ci [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
    i32 3, label %bb.co
    i32 56, label %bb.co
    i32 6, label %bb.co
    i32 5, label %bb.co
    i32 110, label %bb.co
    i32 39, label %bb.co
    i32 40, label %bb.co
    i32 41, label %bb.co
    i32 42, label %bb.co
    i32 4, label %bb.co
    i32 57, label %bb.co
    i32 1, label %bb.co
    i32 38, label %bb.co
    i32 250, label %bb.m
    i32 252, label %bb.m
    i32 251, label %bb.m
    i32 26, label %bb.m
    i32 44, label %bb.m
    i32 132, label %bb.m
    i32 14, label %bb.v
    i32 58, label %bb.v
    i32 17, label %bb.v
    i32 16, label %bb.v
    i32 15, label %bb.v
    i32 59, label %bb.v
    i32 133, label %bb.w
    i32 123, label %bb.x
    i32 47, label %bb.aa
    i32 63, label %bb.aa
    i32 49, label %.thread213.i.a
    i32 48, label %bb.ab
    i32 50, label %.thread213.i.a
    i32 64, label %.thread213.i.a
    i32 51, label %71
    i32 11, label %.thread221.i
    i32 10, label %.thread221.i
    i32 116, label %bb.af
    i32 69, label %bb.ag
    i32 72, label %bb.ag
    i32 70, label %bb.ag
    i32 71, label %bb.ag
    i32 95, label %bb.ag
    i32 96, label %bb.ag
    i32 97, label %bb.ag
    i32 98, label %bb.ag
    i32 99, label %bb.ag
    i32 100, label %bb.ag
    i32 146, label %bb.ag
    i32 90, label %bb.ah
    i32 88, label %bb.ah
    i32 87, label %bb.ah
    i32 89, label %bb.ah
    i32 150, label %bb.ap
    i32 67, label %bb.ax
    i32 79, label %bb.bc
    i32 82, label %bb.bc
    i32 81, label %bb.bc
    i32 80, label %bb.bc
    i32 148, label %bb.bc
    i32 107, label %bb.bn
    i32 108, label %bb.bn
    i32 83, label %bb.bv
    i32 86, label %bb.bv
    i32 85, label %bb.bv
    i32 84, label %bb.bv
    i32 149, label %bb.bv
    i32 74, label %bb.cc
    i32 101, label %bb.cc
    i32 77, label %bb.cc
    i32 76, label %bb.cc
    i32 103, label %bb.cc
    i32 104, label %bb.cc
    i32 105, label %bb.cc
    i32 106, label %bb.cc
    i32 75, label %bb.cc
    i32 102, label %bb.cc
    i32 78, label %bb.cc
    i32 147, label %bb.cc
    i32 94, label %bb.cf
    i32 92, label %bb.cf
    i32 91, label %bb.cf
    i32 93, label %bb.cf
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.es = load i8, ptr %i.er, align 4
  %i.et = and i8 %i.es, 15
  %i.eu = icmp eq i8 %i.et, 10
  br i1 %i.eu, label %bb.n, label %bb.o, !prof !661

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.ew = atomicrmw or ptr %i.ev, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = and i16 %i.ey, 1
  %.not.i95.i = icmp eq i16 %i.ez, 0
  br i1 %.not.i95.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fa = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.dz) #25
  br i1 %i.fa, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fb = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2169
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !660, !range !524, !noundef !525
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef 15, i32 %i.db, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.sroa.3149.0.copyload.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  store i32 15, ptr %52, align 8, !tbaa !604
  store i32 %i.db, ptr %i.co, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cp, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cq, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cr, align 8, !tbaa !637
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 104 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 112 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !543 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 116
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !544
  %.not.i.i.i.i = icmp ult i32 %i.fi, %i.fk
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t, !prof !530

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %52)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fl = zext i32 %i.fi to i64
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !545
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %52, i64 32, i1 false)
  %i.fo = load i32, ptr %i.fh, align 8, !tbaa !543
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fh, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.v:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  br label %bb.co

bb.w:                                             ; preds = %bb.l
  br label %bb.co

bb.x:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 1909
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !638, !range !524, !noundef !525
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.y, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ft = load ptr, ptr %i.cn, align 8, !tbaa !664
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ea
  %i.fv = getelementptr i8, ptr %i.eg, i64 2154
  %.val.i96.i = load i8, ptr %i.fv, align 2, !tbaa !523, !range !524, !noundef !525
  %i.fw = getelementptr i8, ptr %i.eg, i64 2156
  %.val2.i.i = load i32, ptr %i.fw, align 4, !tbaa !526
  %.val3.i.i = load i64, ptr %i.fu, align 1       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val2.i.i, 1
  %i.fx = call i64 @llvm.bswap.i64(i64 %.val3.i.i)
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %.val3.i.i, i64 %i.fx
  %i.fy = shl nuw nsw i8 %.val.i96.i, 5
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = lshr i64 %spec.select.i.i.i.i.i.i.i, %i.fz
  %i.gb = and i64 %i.ga, 4227858432
  %i.gc = icmp eq i64 %i.gb, 3825205248
  br i1 %i.gc, label %bb.z, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

bb.z:                                             ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eg, i64 2504
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 168
  store atomic i8 1, ptr %i.gf monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %.0.i202.i = phi i32 [ 21, %bb.z ], [ 6, %bb.x ], [ 6, %bb.y ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef %.0.i202.i, i32 123, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.sroa.3149.0.copyload.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.aa:                                            ; preds = %bb.l, %bb.l
  %i.gg = load ptr, ptr %1, align 8, !tbaa !633
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  store i8 1, ptr %i.gh, align 8, !tbaa !665
  br label %.thread213.i.a

bb.ab:                                            ; preds = %bb.l
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.gj = load i8, ptr %i.gi, align 4
  %i.gk = and i8 %i.gj, 15
  %i.gl = icmp eq i8 %i.gk, 3
  br i1 %i.gl, label %bb.ac, label %.thread213.i.a

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load i8, ptr %i.eb, align 2, !tbaa !534
  %i.gn = icmp eq i8 %i.gm, 1
  br i1 %i.gn, label %bb.ad, label %.thread213.i.a

bb.ad:                                            ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !596
  %.not.i97.i = icmp eq i64 %.sroa.2.0.copyload.i, 4
  br i1 %.not.i97.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %.thread213.i.a

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.sroa.07.0.copyload.i = load ptr, ptr %i.gq, align 8, !tbaa !597
  %i.gr = load i32, ptr %.sroa.07.0.copyload.i, align 1
  %i.gs = icmp ne i32 %i.gr, 1668248622
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %.thread213.i.a

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eg, i64 3184 ; 2 uses
  %i.gw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gv) #25 ; 2 uses
  %.not.i.i99.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i99.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.gw) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  store ptr %i.dz, ptr %56, align 8, !tbaa !631
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cm, align 8, !tbaa !666
  %i.gz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %56), !noalias !881 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  %i.ha = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gv) #25 ; 0 uses
  br label %.thread213.i.a

71:                                               ; preds = %bb.l, %.thread.i
  %.0199.i = phi i64 [ %i.eq, %.thread.i ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  br label %.thread213.i.a

.thread221.i:                                     ; preds = %bb.l, %bb.l
  br label %bb.co

bb.af:                                            ; preds = %bb.l
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 116, i64 noundef %i.ea, i64 noundef %.sroa.3149.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(39) %i.dz)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ag:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.hb = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %54, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i32 %i.db) #25
  br i1 %i.hb, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.co

bb.ah:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.hc = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1898
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !650, !range !524, !noundef !525
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %._crit_edge236.i, label %bb.ai

._crit_edge236.i:                                 ; preds = %bb.ah
  %.pre237.i.a = load ptr, ptr %i.f, align 8, !tbaa !648
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.hh = load i16, ptr %i.hg, align 1
  %i.hi = and i16 %i.hh, 1
  %.not.i100.i = icmp eq i16 %i.hi, 0
  %.pre238.i = load ptr, ptr %i.f, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i100.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  store i32 31, ptr %50, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ce, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cf, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cg, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ch, align 8, !tbaa !637
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 104 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 112 ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !543 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre238.i, i64 116
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !544
  %.not.i.i.i101.i = icmp ult i32 %i.hl, %i.hn
  br i1 %.not.i.i.i101.i, label %bb.al, label %bb.ak, !prof !530

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %50)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i

bb.al:                                            ; preds = %bb.aj
  %i.ho = zext i32 %i.hl to i64
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !545
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 32, i1 false)
  %i.hr = load i32, ptr %i.hk, align 8, !tbaa !543
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hk, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.am:                                            ; preds = %bb.ai, %._crit_edge236.i
  %i.ht = phi ptr [ %.pre237.i.a, %._crit_edge236.i ], [ %.pre238.i, %bb.ai ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.hv = atomicrmw or ptr %i.hu, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  store i32 5, ptr %51, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ci, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cj, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.ck, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cl, align 8, !tbaa !637
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 112 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !543 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 116
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !544
  %.not.i.i19.i.i = icmp ult i32 %i.hy, %i.ia
  br i1 %.not.i.i19.i.i, label %bb.ao, label %bb.an, !prof !530

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %51)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ib = zext i32 %i.hy to i64
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !545
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %51, i64 32, i1 false)
  %i.ie = load i32, ptr %i.hx, align 8, !tbaa !543
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.hx, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ap:                                            ; preds = %bb.l
  %i.ig = load ptr, ptr %54, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1898
  %i.ii = load i8, ptr %i.ih, align 2, !tbaa !650, !range !524, !noundef !525
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %._crit_edge233.i.a, label %bb.aq

._crit_edge233.i.a:                               ; preds = %bb.ap
  %.pre234.i.a = load ptr, ptr %i.f, align 8, !tbaa !648
  br label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.il = load i16, ptr %i.ik, align 1
  %i.im = and i16 %i.il, 1
  %.not.i103.i = icmp eq i16 %i.im, 0
  %.pre235.i = load ptr, ptr %i.f, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i103.i, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  store i32 31, ptr %48, align 8, !tbaa !604
  store i32 150, ptr %i.bw, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.bx, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.by, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.bz, align 8, !tbaa !637
  %i.in = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 104 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 112 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !543 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pre235.i, i64 116
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !544
  %.not.i.i.i106.i = icmp ult i32 %i.ip, %i.ir
  br i1 %.not.i.i.i106.i, label %bb.at, label %bb.as, !prof !530

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %48)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i

bb.at:                                            ; preds = %bb.ar
  %i.is = zext i32 %i.ip to i64
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !545
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.it, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %48, i64 32, i1 false)
  %i.iv = load i32, ptr %i.io, align 8, !tbaa !543
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.io, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.au:                                            ; preds = %bb.aq, %._crit_edge233.i.a
  %i.ix = phi ptr [ %.pre234.i.a, %._crit_edge233.i.a ], [ %.pre235.i, %bb.aq ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.iz = atomicrmw or ptr %i.iy, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  store i32 6, ptr %49, align 8, !tbaa !604
  store i32 150, ptr %i.ca, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.cb, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.cc, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.cd, align 8, !tbaa !637
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 104 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 112 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !543 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 116
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !544
  %.not.i.i19.i104.i = icmp ult i32 %i.jc, %i.je
  br i1 %.not.i.i19.i104.i, label %bb.aw, label %bb.av, !prof !530

bb.av:                                            ; preds = %bb.au
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %49)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i

bb.aw:                                            ; preds = %bb.au
  %i.jf = zext i32 %i.jc to i64
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !545
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %49, i64 32, i1 false)
  %i.ji = load i32, ptr %i.jb, align 8, !tbaa !543
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jb, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ax:                                            ; preds = %bb.l
  %i.jk = getelementptr inbounds nuw i8, ptr %i.eg, i64 1898
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !650, !range !524, !noundef !525
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %i.jo = load i16, ptr %i.jn, align 1
  %i.jp = and i16 %i.jo, 1
  %.not94.i = icmp eq i16 %i.jp, 0
  br i1 %.not94.i, label %bb.az, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
end_hunk_3
begin_hunk_4_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE0ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i123.i, label %bb.cb, label %bb.ca, !prof !530

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %65)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i

bb.cb:                                            ; preds = %bb.bz
  %i.ms = zext i32 %i.mq to i64
  %i.mt = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mt, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.mu, ptr noundef nonnull align 8 dereferenceable(32) %65, i64 32, i1 false)
  %i.mv = load i32, ptr %i.al, align 8, !tbaa !543
  %i.mw = add i32 %i.mv, 1
  store i32 %i.mw, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.cc:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  store i32 3, ptr %66, align 8, !tbaa !604
  store i32 %i.db, ptr %i.am, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.an, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.ao, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ap, align 8, !tbaa !637
  %i.mx = load i32, ptr %i.al, align 8, !tbaa !543 ; 2 uses
  %i.my = load i32, ptr %i.j, align 4, !tbaa !544
  %.not.i.i125.i = icmp ult i32 %i.mx, %i.my
  br i1 %.not.i.i125.i, label %bb.ce, label %bb.cd, !prof !530

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %66)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i

bb.ce:                                            ; preds = %bb.cc
  %i.mz = zext i32 %i.mx to i64
  %i.na = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.na, i64 %i.mz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nb, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  %i.nc = load i32, ptr %i.al, align 8, !tbaa !543
  %i.nd = add i32 %i.nc, 1
  store i32 %i.nd, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.cf:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dz, i64 26
  %i.nf = atomicrmw or ptr %i.ne, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  store i32 43, ptr %67, align 8, !tbaa !604
  store i32 %i.db, ptr %i.ah, align 4, !tbaa !527
  store i64 %i.ea, ptr %i.ai, align 8, !tbaa !624
  store i64 %.sroa.3149.0.copyload.i, ptr %i.aj, align 8, !tbaa !663
  store ptr %i.dz, ptr %i.ak, align 8, !tbaa !637
  %i.ng = load i32, ptr %i.al, align 8, !tbaa !543 ; 2 uses
  %i.nh = load i32, ptr %i.j, align 4, !tbaa !544
  %.not.i.i127.i = icmp ult i32 %i.ng, %i.nh
  br i1 %.not.i.i127.i, label %bb.ch, label %bb.cg, !prof !530

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %67)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i

bb.ch:                                            ; preds = %bb.cf
  %i.ni = zext i32 %i.ng to i64
  %i.nj = load ptr, ptr %i.h, align 8, !tbaa !545
  %i.nk = getelementptr inbounds nuw [32 x i8], ptr %i.nj, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %67, i64 32, i1 false)
  %i.nl = load i32, ptr %i.al, align 8, !tbaa !543
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.al, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

bb.ci:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %68, ptr noundef nonnull align 8 dereferenceable(3472) %i.eg) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.no = load ptr, ptr %i.cn, align 8, !tbaa !664
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25, !noalias !882
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %47, ptr noundef nonnull align 8 dereferenceable(3472) %i.nn, ptr noundef %i.np) #25, !noalias !882
  store ptr %i.ct, ptr %69, align 8, !tbaa !589, !alias.scope !882
  %i.nq = load ptr, ptr %i.cs, align 8, !tbaa !590, !noalias !882 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.cu
  br i1 %i.nr, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ns = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !882 ; 3 uses
  %i.nt = icmp ult i64 %i.ns, 16
  call void @llvm.assume(i1 %i.nt)
  %i.nu = add nuw nsw i64 %i.ns, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.nu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ci
  store ptr %i.nq, ptr %69, align 8, !tbaa !590, !alias.scope !882
  %i.nv = load i64, ptr %i.cu, align 8, !tbaa !592, !noalias !882
  store i64 %i.nv, ptr %i.ct, align 8, !tbaa !592, !alias.scope !882
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !882
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cj
  %i.nw = phi i64 [ %i.ns, %bb.cj ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %i.nw, ptr %i.cv, align 8, !tbaa !591, !alias.scope !882
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !590, !noalias !882
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !591, !noalias !882
  store i8 0, ptr %i.cu, align 8, !tbaa !592, !noalias !882
  %i.nx = load ptr, ptr %i.cw, align 8, !tbaa !590, !noalias !882 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.cx
  br i1 %i.ny, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.nz = load i64, ptr %i.cx, align 8, !tbaa !592, !noalias !882
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #28
  %.pre2.i.i = load ptr, ptr %i.cs, align 8, !tbaa !590, !noalias !882 ; 2 uses
  %i.ob = icmp eq ptr %.pre2.i.i, %i.cu
  br i1 %i.ob, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.oc = load i64, ptr %i.cu, align 8, !tbaa !592, !noalias !882
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i, i64 noundef %i.od) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25, !noalias !882
  %i.oe = load ptr, ptr %69, align 8, !tbaa !590
  %i.of = load i64, ptr %i.cv, align 8, !tbaa !591
  %i.og = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef %i.oe, i64 noundef %i.of) #25 ; 0 uses
  %i.oh = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.oi = load ptr, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = icmp ult i64 %i.ol, 20
  br i1 %i.om, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i
  %i.on = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i

bb.cl:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.oi, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.oo = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  store ptr %i.op, ptr %i.da, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i: ; preds = %bb.cl, %bb.ck
  %i.oq = zext i32 %i.db to i64
  %i.or = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 noundef %i.oq) #25 ; 0 uses
  %i.os = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.ot = load ptr, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = icmp ult i64 %i.ow, 17
  br i1 %i.ox, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i
  %i.oy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i

bb.cn:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit132.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ot, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.oz = load ptr, ptr %i.da, align 8, !tbaa !28
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 17
  store ptr %i.pa, ptr %i.da, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i: ; preds = %bb.cn, %bb.cm
  %i.pb = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %68, ptr noundef nonnull %i.dz) #25 ; 0 uses
  %i.pc = load ptr, ptr %69, align 8, !tbaa !590  ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ct
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i
  %i.pe = load i64, ptr %i.ct, align 8, !tbaa !592
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %68) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

.thread213.i.a:                                   ; preds = %71, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.l, %bb.l, %bb.l
  %.092215.i = phi i32 [ 11, %bb.ad ], [ 11, %bb.l ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ 65, %71 ], [ 11, %bb.ab ], [ 11, %bb.ac ], [ 11, %bb.aa ], [ 11, %bb.l ], [ 11, %bb.l ]
  %.0200213.i = phi i64 [ %.sroa.3149.0.copyload.i, %bb.ad ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %.sroa.3149.0.copyload.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ %.0199.i, %71 ], [ %.sroa.3149.0.copyload.i, %bb.ab ], [ %.sroa.3149.0.copyload.i, %bb.ac ], [ %.sroa.3149.0.copyload.i, %bb.aa ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  %i.pg = load ptr, ptr %i.d, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 2504
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !21
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 168
  store atomic i8 1, ptr %i.pj monotonic, align 1
  br label %bb.co

bb.co:                                            ; preds = %.thread213.i.a, %bb.ag, %.thread221.i, %bb.w, %bb.v, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %.092214.i = phi i32 [ %.092215.i, %.thread213.i.a ], [ 0, %bb.l ], [ 5, %bb.v ], [ 6, %bb.w ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 31, %bb.ag ], [ 64, %.thread221.i ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ], [ 0, %bb.l ]
  %.0200212.i = phi i64 [ %.0200213.i, %.thread213.i.a ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.v ], [ %.sroa.3149.0.copyload.i, %bb.w ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.ag ], [ %.sroa.3149.0.copyload.i, %.thread221.i ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ], [ %.sroa.3149.0.copyload.i, %bb.l ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %54, i32 noundef %.092214.i, i32 %i.db, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(39) %i.dz, i64 noundef %.0200212.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i: ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit124.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit122.i, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit120.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit115.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit113.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit111.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i, %bb.ay, %bb.ax, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i105.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i107.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i102.i, %bb.ag, %bb.af, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i, %bb.r, %bb.l, %bb.j
  %i.pk = load i32, ptr %55, align 8, !tbaa !653
  %i.pl = add i32 %i.pk, -1                       ; 2 uses
  store i32 %i.pl, ptr %55, align 8, !tbaa !653
  %.not.i136.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i136.i, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i

_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %55)
  %.pre240.i = load i32, ptr %55, align 8, !tbaa !653
  %i.pm = icmp eq i32 %.pre240.i, 0
  br i1 %i.pm, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.f, !llvm.loop !860

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit137.i, %bb.e, %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  br label %bb.js

bb.cp:                                            ; preds = %bb.a
  %i.pn = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !885 ; 4 uses
  %.not = icmp eq i64 %i.po, 0
  br i1 %.not, label %bb.ge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.sroa.01.0.copyload = load ptr, ptr %70, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.pq, ptr %33, align 8, !tbaa !547
  %i.pr = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 7 uses
  store ptr %1, ptr %i.pr, align 8, !tbaa !648
  %i.ps = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 %2, ptr %i.ps, align 8, !tbaa !649
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !544
  %i.pw = zext i32 %i.pv to i64
  %i.px = icmp ugt i64 %i.po, %i.pw
  br i1 %i.px, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i, label %.lr.ph.outer.i.preheader.i

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i: ; preds = %bb.cq
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull %i.py, i64 noundef %i.po, i64 noundef 32) #25
  br label %.lr.ph.outer.i.preheader.i

.lr.ph.outer.i.preheader.i:                       ; preds = %bb.cq, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i
  %.idx.i273.pn.i = shl nuw nsw i64 %i.po, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.idx.i273.pn.i ; 4 uses
  br label %.lr.ph.outer.i.i

.lr.ph.outer.i.i:                                 ; preds = %.thread.i.i, %.lr.ph.outer.i.preheader.i
  %.01636.ph.i.i = phi ptr [ %i.qe, %.thread.i.i ], [ %.sroa.01.0.copyload, %.lr.ph.outer.i.preheader.i ]
  %.01735.ph.i.i = phi i1 [ true, %.thread.i.i ], [ false, %.lr.ph.outer.i.preheader.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cr, %.lr.ph.outer.i.i
  %.01636.i.i = phi ptr [ %i.qd, %bb.cr ], [ %.01636.ph.i.i, %.lr.ph.outer.i.i ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.qa, align 1
  %i.qb = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i.i)
  %i.qc = trunc i64 %i.qb to i32
  switch i32 %i.qc, label %bb.cr [
    i32 107, label %.loopexit.i
    i32 108, label %.loopexit.i
    i32 79, label %.thread.i.i
    i32 82, label %.thread.i.i
    i32 81, label %.thread.i.i
    i32 80, label %.thread.i.i
    i32 83, label %.thread.i.i
    i32 86, label %.thread.i.i
    i32 85, label %.thread.i.i
    i32 84, label %.thread.i.i
  ]

bb.cr:                                            ; preds = %.lr.ph.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 16 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.qd, %i.pz
  br i1 %.not.i.i58, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.01636.i.i, i64 16 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.qe, %i.pz
  br i1 %.not38.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.outer.i.i

._crit_edge.i.i:                                  ; preds = %bb.cr
  br i1 %.01735.ph.i.i, label %._crit_edge.thread.i.i, label %.loopexit.i

._crit_edge.thread.i.i:                           ; preds = %.thread.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.qf = load ptr, ptr %1, align 8, !tbaa !633
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %32, ptr noundef nonnull align 8 dereferenceable(3472) %i.qh) #25
  %i.qi = load ptr, ptr %1, align 8, !tbaa !633
  %i.qj = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %32, ptr noundef %i.qi) #25 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 64
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !27
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 72 ; 3 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !28 ; 2 uses
  %i.qo = ptrtoint ptr %i.ql to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = icmp ult i64 %i.qq, 108
  br i1 %i.qr, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.thread.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %i.qt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qs, ptr noundef nonnull @.str.16, i64 noundef 108) #25 ; 0 uses
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

bb.ct:                                            ; preds = %._crit_edge.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.qn, ptr noundef nonnull align 1 dereferenceable(108) @.str.16, i64 108, i1 false)
  %i.qu = load ptr, ptr %i.qm, align 8, !tbaa !28
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 108
  store ptr %i.qv, ptr %i.qm, align 8, !tbaa !28
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i: ; preds = %bb.ct, %bb.cs
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %.lr.ph.i14

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %._crit_edge.i.i
  %i.qw = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1898
  %i.qy = load i8, ptr %i.qx, align 2, !tbaa !650, !range !524, !noundef !525
  %i.qz = trunc nuw i8 %i.qy to i1
  %i.ra = xor i1 %i.qz, true
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.loopexit.i, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i
  %i.rb = phi i1 [ false, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb0EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i ], [ %i.ra, %.loopexit.i ] ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.rd = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.re = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %43, i64 4
  %i.ri = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.rl = getelementptr inbounds nuw i8, ptr %42, i64 4
  %i.rm = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.rp = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.rt = getelementptr inbounds nuw i8, ptr %40, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.rw = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.ry = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.sa = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %36, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.si = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.sj = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.sk = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.sm = getelementptr inbounds nuw i8, ptr %35, i64 4
  %i.sn = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.su = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.sx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.tc = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.tg = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.tm = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 7 uses
  %.phi.trans.insert.i.i15 = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.tr = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %45, i64 64 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 6 uses
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, %.lr.ph.i14
  %.0240.i = phi ptr [ %.sroa.01.0.copyload, %.lr.ph.i14 ], [ %i.agp, %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18 ] ; 30 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.tv, align 1
  %i.tw = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i) ; 3 uses
  %i.tx = trunc i64 %i.tw to i32                  ; 19 uses
  %i.ty = lshr i64 %i.tw, 32                      ; 3 uses
  %i.tz = load ptr, ptr %1, align 8, !tbaa !633   ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !635
  %.not.i110.i = icmp ugt i64 %i.ub, %i.ty
  br i1 %.not.i110.i, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %31, ptr noundef nonnull align 8 dereferenceable(3472) %i.ud) #25
  %i.ue = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %31, ptr noundef nonnull align 8 dereferenceable(184) %i.tz) #25 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 64
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !27
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 72 ; 3 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !28 ; 2 uses
  %i.uj = ptrtoint ptr %i.ug to i64
  %i.uk = ptrtoint ptr %i.ui to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %i.um = icmp ult i64 %i.ul, 22
  br i1 %i.um, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  %i.uo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.un, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ui, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.up = load ptr, ptr %i.uh, align 8, !tbaa !28
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 22
  store ptr %i.uq, ptr %i.uh, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i: ; preds = %bb.cx, %bb.cw
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16:      ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i, %bb.cu
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !636
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.ty
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !601 ; 40 uses
  %.0.copyload.i.i.i.i = load i64, ptr %.0240.i, align 1
  %i.uv = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i) ; 24 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 22 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 2, !tbaa !534
  %i.uy = icmp eq i8 %i.ux, 4
  %i.uz = icmp ne i64 %i.ty, 0
  %or.cond.i17 = and i1 %i.uz, %i.uy
  br i1 %or.cond.i17, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16
  %i.va = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %33, ptr noundef nonnull align 8 dereferenceable(45) %i.uu, i64 noundef %i.uv) #25
  br i1 %i.va, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %._crit_edge245.i

._crit_edge245.i:                                 ; preds = %bb.cy
  %.0.copyload.i.i.i.i.pre.i = load i64, ptr %.0240.i, align 1
  %.pre247.i = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.pre.i)
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge245.i, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16
  %.pre-phi.i = phi i64 [ %.pre247.i, %._crit_edge245.i ], [ %i.uv, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i16 ]
  %i.vb = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 2344
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !558 ; 2 uses
  %i.ve = load ptr, ptr %i.pr, align 8, !tbaa !648
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 72
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !664
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.pre-phi.i
  %i.vi = load ptr, ptr %i.vd, align 8, !tbaa !557
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 64
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = call noundef i64 %i.vk(ptr noundef nonnull align 8 dereferenceable(160) %i.vd, ptr noundef %i.vh, i32 %i.tx) #25, !inline_history !861 ; 46 uses
  %i.vm = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 2169
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !660, !range !524, !noundef !525
  %i.vp = trunc nuw i8 %i.vo to i1
  %i.vq = icmp eq i32 %i.tx, 51
  %or.cond234.i = and i1 %i.vq, %i.vp
  br i1 %or.cond234.i, label %.thread.i57, label %bb.da

.thread.i57:                                      ; preds = %bb.cz
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 2504
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !21
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.vt, i64 noundef 0) #25
  %i.vv = add i64 %i.vl, 32768
  %i.vw = add i64 %i.vv, %i.vu
  br label %72

bb.da:                                            ; preds = %bb.cz
  switch i32 %i.tx, label %bb.fx [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18
    i32 3, label %bb.gd
    i32 56, label %bb.gd
    i32 6, label %bb.gd
    i32 5, label %bb.gd
    i32 110, label %bb.gd
    i32 39, label %bb.gd
    i32 40, label %bb.gd
    i32 41, label %bb.gd
    i32 42, label %bb.gd
    i32 4, label %bb.gd
    i32 57, label %bb.gd
    i32 1, label %bb.gd
    i32 38, label %bb.gd
    i32 250, label %bb.db
    i32 252, label %bb.db
    i32 251, label %bb.db
    i32 26, label %bb.db
    i32 44, label %bb.db
    i32 132, label %bb.db
    i32 14, label %bb.dk
    i32 58, label %bb.dk
    i32 17, label %bb.dk
    i32 16, label %bb.dk
    i32 15, label %bb.dk
    i32 59, label %bb.dk
    i32 133, label %bb.dl
    i32 123, label %bb.dm
    i32 47, label %bb.dp
    i32 63, label %bb.dp
    i32 49, label %.thread218.i
    i32 48, label %bb.dq
    i32 50, label %.thread218.i
    i32 64, label %.thread218.i
    i32 51, label %72
    i32 11, label %.thread226.i29
    i32 10, label %.thread226.i29
    i32 116, label %bb.du
    i32 69, label %bb.dv
    i32 72, label %bb.dv
    i32 70, label %bb.dv
    i32 71, label %bb.dv
    i32 95, label %bb.dv
    i32 96, label %bb.dv
    i32 97, label %bb.dv
    i32 98, label %bb.dv
    i32 99, label %bb.dv
    i32 100, label %bb.dv
    i32 146, label %bb.dv
    i32 90, label %bb.dw
    i32 88, label %bb.dw
    i32 87, label %bb.dw
    i32 89, label %bb.dw
    i32 150, label %bb.ee
    i32 67, label %bb.em
    i32 79, label %bb.er
    i32 82, label %bb.er
    i32 81, label %bb.er
    i32 80, label %bb.er
    i32 148, label %bb.er
    i32 107, label %bb.fc
    i32 108, label %bb.fc
    i32 83, label %bb.fk
    i32 86, label %bb.fk
    i32 85, label %bb.fk
    i32 84, label %bb.fk
    i32 149, label %bb.fk
    i32 74, label %bb.fr
    i32 101, label %bb.fr
    i32 77, label %bb.fr
    i32 76, label %bb.fr
    i32 103, label %bb.fr
    i32 104, label %bb.fr
    i32 105, label %bb.fr
    i32 106, label %bb.fr
    i32 75, label %bb.fr
    i32 102, label %bb.fr
    i32 78, label %bb.fr
    i32 147, label %bb.fr
    i32 94, label %bb.fu
    i32 92, label %bb.fu
    i32 91, label %bb.fu
    i32 93, label %bb.fu
  ]

bb.db:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uu, i64 20
  %i.vy = load i8, ptr %i.vx, align 4
  %i.vz = and i8 %i.vy, 15
  %i.wa = icmp eq i8 %i.vz, 10
  br i1 %i.wa, label %bb.dc, label %bb.dd, !prof !661

bb.dc:                                            ; preds = %bb.db
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uu, i64 26
  %i.wc = atomicrmw or ptr %i.wb, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uu, i64 23
  %i.we = load i16, ptr %i.wd, align 1
  %i.wf = and i16 %i.we, 1
  %.not.i112.i = icmp eq i16 %i.wf, 0
  br i1 %.not.i112.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.wg = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.uu) #25
  br i1 %i.wg, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.wh = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 2169
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !660, !range !524, !noundef !525
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.dd
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef 15, i32 %i.tx, i64 noundef %i.uv, ptr noundef nonnull align 8 dereferenceable(39) %i.uu, i64 noundef %i.vl) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.wl = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  store i32 15, ptr %30, align 8, !tbaa !604
  store i32 %i.tx, ptr %i.ti, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.tj, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.tk, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.tl, align 8, !tbaa !637
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 104 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 112 ; 3 uses
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !543 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 116
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !544
  %.not.i.i.i.i42 = icmp ult i32 %i.wo, %i.wq
  br i1 %.not.i.i.i.i42, label %bb.dj, label %bb.di, !prof !530

bb.di:                                            ; preds = %bb.dh
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.wm, ptr noundef nonnull align 8 dereferenceable(32) %30)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43

bb.dj:                                            ; preds = %bb.dh
  %i.wr = zext i32 %i.wo to i64
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !545
  %i.wt = getelementptr inbounds nuw [32 x i8], ptr %i.ws, i64 %i.wr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.wt, ptr noundef nonnull align 8 dereferenceable(32) %30, i64 32, i1 false)
  %i.wu = load i32, ptr %i.wn, align 8, !tbaa !543
  %i.wv = add i32 %i.wu, 1
  store i32 %i.wv, ptr %i.wn, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dk:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  br label %bb.gd

bb.dl:                                            ; preds = %bb.da
  br label %bb.gd

bb.dm:                                            ; preds = %bb.da
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vm, i64 1909
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !638, !range !524, !noundef !525
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.dn, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

bb.dn:                                            ; preds = %bb.dm
  %i.wz = load ptr, ptr %i.th, align 8, !tbaa !664
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.uv
  %i.xb = getelementptr i8, ptr %i.vm, i64 2154
  %.val.i.i = load i8, ptr %i.xb, align 2, !tbaa !523, !range !524, !noundef !525
  %i.xc = getelementptr i8, ptr %i.vm, i64 2156
  %.val2.i.i38 = load i32, ptr %i.xc, align 4, !tbaa !526
  %.val3.i.i39 = load i64, ptr %i.xa, align 1     ; 2 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq i32 %.val2.i.i38, 1
  %i.xd = call i64 @llvm.bswap.i64(i64 %.val3.i.i39)
  %spec.select.i.i.i.i.i.i.i41 = select i1 %.not.i.i.i.i.i.i.i40, i64 %.val3.i.i39, i64 %i.xd
  %i.xe = shl nuw nsw i8 %.val.i.i, 5
  %i.xf = zext nneg i8 %i.xe to i64
  %i.xg = lshr i64 %spec.select.i.i.i.i.i.i.i41, %i.xf
  %i.xh = and i64 %i.xg, 4227858432
  %i.xi = icmp eq i64 %i.xh, 3825205248
  br i1 %i.xi, label %bb.do, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

bb.do:                                            ; preds = %bb.dn
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vm, i64 2504
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !21
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 168
  store atomic i8 1, ptr %i.xl monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37: ; preds = %bb.do, %bb.dn, %bb.dm
  %.0.i208.i = phi i32 [ 21, %bb.do ], [ 6, %bb.dm ], [ 6, %bb.dn ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef %.0.i208.i, i32 123, i64 noundef %i.uv, ptr noundef nonnull align 8 dereferenceable(39) %i.uu, i64 noundef %i.vl) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dp:                                            ; preds = %bb.da, %bb.da
  %i.xm = load ptr, ptr %1, align 8, !tbaa !633
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 104
  store i8 1, ptr %i.xn, align 8, !tbaa !665
  br label %.thread218.i

bb.dq:                                            ; preds = %bb.da
  %i.xo = getelementptr inbounds nuw i8, ptr %i.uu, i64 20
  %i.xp = load i8, ptr %i.xo, align 4
  %i.xq = and i8 %i.xp, 15
  %i.xr = icmp eq i8 %i.xq, 3
  br i1 %i.xr, label %bb.dr, label %.thread218.i

bb.dr:                                            ; preds = %bb.dq
  %i.xs = load i8, ptr %i.uw, align 2, !tbaa !534
  %i.xt = icmp eq i8 %i.xs, 1
  br i1 %i.xt, label %bb.ds, label %.thread218.i

bb.ds:                                            ; preds = %bb.dr
  %i.xu = getelementptr inbounds nuw i8, ptr %i.uu, i64 56
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %.sroa.2.0.copyload.i31 = load i64, ptr %.sroa.2.0..sroa_idx.i30, align 8, !tbaa !596
  %.not.i113.i = icmp eq i64 %.sroa.2.0.copyload.i31, 4
  br i1 %.not.i113.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i32, label %.thread218.i

_ZN4llvmeqENS_9StringRefES0_.exit.i32:            ; preds = %bb.ds
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %.sroa.09.0.copyload.i = load ptr, ptr %i.xw, align 8, !tbaa !597
  %i.xx = load i32, ptr %.sroa.09.0.copyload.i, align 1
  %i.xy = icmp ne i32 %i.xx, 1668248622
  %i.xz = zext i1 %i.xy to i32
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34, label %.thread218.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vm, i64 3184 ; 2 uses
  %i.yc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.yb) #25 ; 2 uses
  %.not.i.i.i35 = icmp eq i32 %i.yc, 0
  br i1 %.not.i.i.i35, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34
  call void @_ZSt20__throw_system_errori(i32 noundef %i.yc) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i34
  %i.yd = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  store ptr %i.uu, ptr %34, align 8, !tbaa !631
  store i64 %i.vl, ptr %i.tg, align 8, !tbaa !666
  %i.yf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull align 8 dereferenceable(16) %34), !noalias !886 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.yg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.yb) #25 ; 0 uses
  br label %.thread218.i

72:                                               ; preds = %bb.da, %.thread.i57
  %.0202205.i = phi i64 [ %i.vw, %.thread.i57 ], [ %i.vl, %bb.da ]
  br label %.thread218.i

.thread226.i29:                                   ; preds = %bb.da, %bb.da
  br label %bb.gd

bb.du:                                            ; preds = %bb.da
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 116, i64 noundef %i.uv, i64 noundef %i.vl, ptr noundef nonnull align 8 dereferenceable(39) %i.uu)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.dv:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %i.yh = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %33, i64 noundef %i.uv, ptr noundef nonnull align 8 dereferenceable(39) %i.uu, i32 %i.tx) #25
  br i1 %i.yh, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %bb.gd

bb.dw:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  %i.yi = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 1898
  %i.yk = load i8, ptr %i.yj, align 2, !tbaa !650, !range !524, !noundef !525
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ym = getelementptr inbounds nuw i8, ptr %i.uu, i64 23
  %i.yn = load i16, ptr %i.ym, align 1
  %i.yo = and i16 %i.yn, 1
  %.not.i115.i = icmp eq i16 %i.yo, 0
  br i1 %.not.i115.i, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.yp = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store i32 31, ptr %28, align 8, !tbaa !604
  store i32 %i.tx, ptr %i.sy, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.sz, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.ta, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.tb, align 8, !tbaa !637
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 104 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 112 ; 3 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !543 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 116
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !544
  %.not.i.i.i116.i = icmp ult i32 %i.ys, %i.yu
  br i1 %.not.i.i.i116.i, label %bb.ea, label %bb.dz, !prof !530

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.yq, ptr noundef nonnull align 8 dereferenceable(32) %28)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i

bb.ea:                                            ; preds = %bb.dy
  %i.yv = zext i32 %i.ys to i64
  %i.yw = load ptr, ptr %i.yq, align 8, !tbaa !545
  %i.yx = getelementptr inbounds nuw [32 x i8], ptr %i.yw, i64 %i.yv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.yx, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  %i.yy = load i32, ptr %i.yr, align 8, !tbaa !543
  %i.yz = add i32 %i.yy, 1
  store i32 %i.yz, ptr %i.yr, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i: ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.eb:                                            ; preds = %bb.dx, %bb.dw
  %i.za = getelementptr inbounds nuw i8, ptr %i.uu, i64 26
  %i.zb = atomicrmw or ptr %i.za, i16 256 monotonic, align 2 ; 0 uses
  %i.zc = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store i32 5, ptr %29, align 8, !tbaa !604
  store i32 %i.tx, ptr %i.tc, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.td, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.te, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.tf, align 8, !tbaa !637
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 104 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 112 ; 3 uses
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !543 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 116
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !544
  %.not.i.i19.i.i27 = icmp ult i32 %i.zf, %i.zh
  br i1 %.not.i.i19.i.i27, label %bb.ed, label %bb.ec, !prof !530

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.zd, ptr noundef nonnull align 8 dereferenceable(32) %29)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28

bb.ed:                                            ; preds = %bb.eb
  %i.zi = zext i32 %i.zf to i64
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !545
  %i.zk = getelementptr inbounds nuw [32 x i8], ptr %i.zj, i64 %i.zi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.zk, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 32, i1 false)
  %i.zl = load i32, ptr %i.ze, align 8, !tbaa !543
  %i.zm = add i32 %i.zl, 1
  store i32 %i.zm, ptr %i.ze, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28: ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.ee:                                            ; preds = %bb.da
  %i.zn = load ptr, ptr %33, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 1898
  %i.zp = load i8, ptr %i.zo, align 2, !tbaa !650, !range !524, !noundef !525
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zr = getelementptr inbounds nuw i8, ptr %i.uu, i64 23
  %i.zs = load i16, ptr %i.zr, align 1
  %i.zt = and i16 %i.zs, 1
  %.not.i118.i = icmp eq i16 %i.zt, 0
  br i1 %.not.i118.i, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.zu = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store i32 31, ptr %26, align 8, !tbaa !604
  store i32 150, ptr %i.sq, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.sr, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.ss, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.st, align 8, !tbaa !637
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 104 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 112 ; 3 uses
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !543 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 116
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !544
  %.not.i.i.i121.i = icmp ult i32 %i.zx, %i.zz
  br i1 %.not.i.i.i121.i, label %bb.ei, label %bb.eh, !prof !530

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, ptr noundef nonnull align 8 dereferenceable(32) %26)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i

bb.ei:                                            ; preds = %bb.eg
  %i.aaa = zext i32 %i.zx to i64
  %i.aab = load ptr, ptr %i.zv, align 8, !tbaa !545
  %i.aac = getelementptr inbounds nuw [32 x i8], ptr %i.aab, i64 %i.aaa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aac, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false)
  %i.aad = load i32, ptr %i.zw, align 8, !tbaa !543
  %i.aae = add i32 %i.aad, 1
  store i32 %i.aae, ptr %i.zw, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.ej:                                            ; preds = %bb.ef, %bb.ee
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.uu, i64 26
  %i.aag = atomicrmw or ptr %i.aaf, i16 256 monotonic, align 2 ; 0 uses
  %i.aah = load ptr, ptr %i.pr, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store i32 6, ptr %27, align 8, !tbaa !604
  store i32 150, ptr %i.su, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.sv, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.sw, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.sx, align 8, !tbaa !637
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 104 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 112 ; 3 uses
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !543 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 116
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !544
  %.not.i.i19.i119.i = icmp ult i32 %i.aak, %i.aam
  br i1 %.not.i.i19.i119.i, label %bb.el, label %bb.ek, !prof !530

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aai, ptr noundef nonnull align 8 dereferenceable(32) %27)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i

bb.el:                                            ; preds = %bb.ej
  %i.aan = zext i32 %i.aak to i64
  %i.aao = load ptr, ptr %i.aai, align 8, !tbaa !545
  %i.aap = getelementptr inbounds nuw [32 x i8], ptr %i.aao, i64 %i.aan
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aap, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 32, i1 false)
  %i.aaq = load i32, ptr %i.aaj, align 8, !tbaa !543
  %i.aar = add i32 %i.aaq, 1
  store i32 %i.aar, ptr %i.aaj, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i: ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.em:                                            ; preds = %bb.da
  %i.aas = getelementptr inbounds nuw i8, ptr %i.vm, i64 1898
  %i.aat = load i8, ptr %i.aas, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aav = getelementptr inbounds nuw i8, ptr %i.uu, i64 23
  %i.aaw = load i16, ptr %i.aav, align 1
  %i.aax = and i16 %i.aaw, 1
  %.not108.i = icmp eq i16 %i.aax, 0
  br i1 %.not108.i, label %bb.eo, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  store i32 31, ptr %35, align 8, !tbaa !604
  store i32 67, ptr %i.sm, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.sn, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.so, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.sp, align 8, !tbaa !637
end_hunk_4
begin_hunk_5_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE0ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i136.i, label %bb.fq, label %bb.fp, !prof !530

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %42)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i

bb.fq:                                            ; preds = %bb.fo
  %i.adx = zext i32 %i.adv to i64
  %i.ady = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.adz = getelementptr inbounds nuw [32 x i8], ptr %i.ady, i64 %i.adx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.adz, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 32, i1 false)
  %i.aea = load i32, ptr %i.rg, align 8, !tbaa !543
  %i.aeb = add i32 %i.aea, 1
  store i32 %i.aeb, ptr %i.rg, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i: ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fr:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  store i32 3, ptr %43, align 8, !tbaa !604
  store i32 %i.tx, ptr %i.rh, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.ri, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.rj, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.rk, align 8, !tbaa !637
  %i.aec = load i32, ptr %i.rg, align 8, !tbaa !543 ; 2 uses
  %i.aed = load i32, ptr %i.pu, align 4, !tbaa !544
  %.not.i.i138.i = icmp ult i32 %i.aec, %i.aed
  br i1 %.not.i.i138.i, label %bb.ft, label %bb.fs, !prof !530

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %43)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i

bb.ft:                                            ; preds = %bb.fr
  %i.aee = zext i32 %i.aec to i64
  %i.aef = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.aeg = getelementptr inbounds nuw [32 x i8], ptr %i.aef, i64 %i.aee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aeg, ptr noundef nonnull align 8 dereferenceable(32) %43, i64 32, i1 false)
  %i.aeh = load i32, ptr %i.rg, align 8, !tbaa !543
  %i.aei = add i32 %i.aeh, 1
  store i32 %i.aei, ptr %i.rg, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i: ; preds = %bb.ft, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fu:                                            ; preds = %bb.da, %bb.da, %bb.da, %bb.da
  %i.aej = getelementptr inbounds nuw i8, ptr %i.uu, i64 26
  %i.aek = atomicrmw or ptr %i.aej, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store i32 43, ptr %44, align 8, !tbaa !604
  store i32 %i.tx, ptr %i.rc, align 4, !tbaa !527
  store i64 %i.uv, ptr %i.rd, align 8, !tbaa !624
  store i64 %i.vl, ptr %i.re, align 8, !tbaa !663
  store ptr %i.uu, ptr %i.rf, align 8, !tbaa !637
  %i.ael = load i32, ptr %i.rg, align 8, !tbaa !543 ; 2 uses
  %i.aem = load i32, ptr %i.pu, align 4, !tbaa !544
  %.not.i.i140.i = icmp ult i32 %i.ael, %i.aem
  br i1 %.not.i.i140.i, label %bb.fw, label %bb.fv, !prof !530

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(32) %44)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i

bb.fw:                                            ; preds = %bb.fu
  %i.aen = zext i32 %i.ael to i64
  %i.aeo = load ptr, ptr %i.pt, align 8, !tbaa !545
  %i.aep = getelementptr inbounds nuw [32 x i8], ptr %i.aeo, i64 %i.aen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aep, ptr noundef nonnull align 8 dereferenceable(32) %44, i64 32, i1 false)
  %i.aeq = load i32, ptr %i.rg, align 8, !tbaa !543
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.rg, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i: ; preds = %bb.fw, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

bb.fx:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %45, ptr noundef nonnull align 8 dereferenceable(3472) %i.vm) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  %i.aes = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.aet = load ptr, ptr %i.th, align 8, !tbaa !664
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.uv
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !887
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %25, ptr noundef nonnull align 8 dereferenceable(3472) %i.aes, ptr noundef %i.aeu) #25, !noalias !887
  store ptr %i.tn, ptr %46, align 8, !tbaa !589, !alias.scope !887
  %i.aev = load ptr, ptr %i.tm, align 8, !tbaa !590, !noalias !887 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.to
  br i1 %i.aew, label %bb.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

bb.fy:                                            ; preds = %bb.fx
  %i.aex = load i64, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !887 ; 3 uses
  %i.aey = icmp ult i64 %i.aex, 16
  call void @llvm.assume(i1 %i.aey)
  %i.aez = add nuw nsw i64 %i.aex, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tn, ptr noundef nonnull align 8 dereferenceable(1) %i.to, i64 %i.aez, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.fx
  store ptr %i.aev, ptr %46, align 8, !tbaa !590, !alias.scope !887
  %i.afa = load i64, ptr %i.to, align 8, !tbaa !592, !noalias !887
  store i64 %i.afa, ptr %i.tn, align 8, !tbaa !592, !alias.scope !887
  %.pre.i.i45 = load i64, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !887
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %bb.fy
  %i.afb = phi i64 [ %i.aex, %bb.fy ], [ %.pre.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ]
  store i64 %i.afb, ptr %i.tp, align 8, !tbaa !591, !alias.scope !887
  store ptr %i.to, ptr %i.tm, align 8, !tbaa !590, !noalias !887
  store i64 0, ptr %.phi.trans.insert.i.i15, align 8, !tbaa !591, !noalias !887
  store i8 0, ptr %i.to, align 8, !tbaa !592, !noalias !887
  %i.afc = load ptr, ptr %i.tq, align 8, !tbaa !590, !noalias !887 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.tr
  br i1 %i.afd, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46
  %i.afe = load i64, ptr %i.tr, align 8, !tbaa !592, !noalias !887
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #28
  %.pre2.i.i48 = load ptr, ptr %i.tm, align 8, !tbaa !590, !noalias !887 ; 2 uses
  %i.afg = icmp eq ptr %.pre2.i.i48, %i.to
  br i1 %i.afg, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47
  %i.afh = load i64, ptr %i.to, align 8, !tbaa !592, !noalias !887
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i48, i64 noundef %i.afi) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !887
  %i.afj = load ptr, ptr %46, align 8, !tbaa !590
  %i.afk = load i64, ptr %i.tp, align 8, !tbaa !591
  %i.afl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ts, ptr noundef %i.afj, i64 noundef %i.afk) #25 ; 0 uses
  %i.afm = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.afn = load ptr, ptr %i.tu, align 8, !tbaa !28 ; 2 uses
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = icmp ult i64 %i.afq, 20
  br i1 %i.afr, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50
  %i.afs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ts, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i

bb.ga:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.afn, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.aft = load ptr, ptr %i.tu, align 8, !tbaa !28
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 20
  store ptr %i.afu, ptr %i.tu, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i: ; preds = %bb.ga, %bb.fz
  %i.afv = and i64 %i.tw, 4294967295
  %i.afw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ts, i64 noundef %i.afv) #25 ; 0 uses
  %i.afx = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.afy = load ptr, ptr %i.tu, align 8, !tbaa !28 ; 2 uses
  %i.afz = ptrtoint ptr %i.afx to i64
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = sub i64 %i.afz, %i.aga
  %i.agc = icmp ult i64 %i.agb, 17
  br i1 %i.agc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i
  %i.agd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ts, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i

bb.gc:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.afy, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.age = load ptr, ptr %i.tu, align 8, !tbaa !28
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 17
  store ptr %i.agf, ptr %i.tu, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i: ; preds = %bb.gc, %bb.gb
  %i.agg = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %45, ptr noundef nonnull %i.uu) #25 ; 0 uses
  %i.agh = load ptr, ptr %46, align 8, !tbaa !590 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.tn
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i
  %i.agj = load i64, ptr %i.tn, align 8, !tbaa !592
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit147.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

.thread218.i:                                     ; preds = %72, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36, %_ZN4llvmeqENS_9StringRefES0_.exit.i32, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.da, %bb.da, %bb.da
  %.0104220.i = phi i32 [ 11, %bb.ds ], [ 11, %bb.da ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i32 ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36 ], [ 65, %72 ], [ 11, %bb.dq ], [ 11, %bb.dr ], [ 11, %bb.dp ], [ 11, %bb.da ], [ 11, %bb.da ]
  %.0202206218.i = phi i64 [ %i.vl, %bb.ds ], [ %i.vl, %bb.da ], [ %i.vl, %_ZN4llvmeqENS_9StringRefES0_.exit.i32 ], [ %i.vl, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i36 ], [ %.0202205.i, %72 ], [ %i.vl, %bb.dq ], [ %i.vl, %bb.dr ], [ %i.vl, %bb.dp ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ]
  %i.agl = load ptr, ptr %i.pp, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 2504
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !21
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 168
  store atomic i8 1, ptr %i.ago monotonic, align 1
  br label %bb.gd

bb.gd:                                            ; preds = %.thread218.i, %bb.dv, %.thread226.i29, %bb.dl, %bb.dk, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %.0104219.i = phi i32 [ %.0104220.i, %.thread218.i ], [ 0, %bb.da ], [ 5, %bb.dk ], [ 6, %bb.dl ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 31, %bb.dv ], [ 64, %.thread226.i29 ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ], [ 0, %bb.da ]
  %.0202206217.i = phi i64 [ %.0202206218.i, %.thread218.i ], [ %i.vl, %bb.da ], [ %i.vl, %bb.dk ], [ %i.vl, %bb.dl ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.dv ], [ %i.vl, %.thread226.i29 ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ], [ %i.vl, %bb.da ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %33, i32 noundef %.0104219.i, i32 %i.tx, i64 noundef %i.uv, ptr noundef nonnull align 8 dereferenceable(39) %i.uu, i64 noundef %.0202206217.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18: ; preds = %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit135.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit133.i, %bb.fg, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i21, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit130.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i25, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i23, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i26, %bb.en, %bb.em, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i, %bb.dv, %bb.du, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43, %bb.dg, %bb.da, %bb.cy
  %.4.i = phi ptr [ %.0240.i, %bb.cy ], [ %.0240.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit141.i ], [ %.0240.i, %bb.gd ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit135.i ], [ %.0240.i, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i37 ], [ %.0240.i, %bb.du ], [ %.0240.i, %bb.da ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i43 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i28 ], [ %.0240.i, %bb.dv ], [ %.0240.i, %bb.em ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit130.i ], [ %.0240.i, %bb.fg ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit139.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i26 ], [ %.0240.i, %bb.en ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit126.i23 ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit128.i25 ], [ %.0240.i, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i21 ], [ %i.acl, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit133.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit137.i ], [ %.0240.i, %bb.dg ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i117.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i122.i ], [ %.0240.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i120.i ]
  %i.agp = getelementptr inbounds nuw i8, ptr %.4.i, i64 16 ; 2 uses
  %.not.i19 = icmp eq ptr %i.agp, %i.pz
  br i1 %.not.i19, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.cu, !llvm.loop !870

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.js

bb.ge:                                            ; preds = %bb.cp
  %i.agq = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.agq, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564
  store ptr %i.ags, ptr %11, align 8, !tbaa !547
  %i.agt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store ptr %1, ptr %i.agt, align 8, !tbaa !648
  %i.agu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %2, ptr %i.agu, align 8, !tbaa !649
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 19 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 10 uses
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !544
  %i.agy = zext i32 %i.agx to i64
  %i.agz = icmp ugt i64 %.sroa.2.0.copyload, %i.agy
  br i1 %i.agz, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i128, label %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i128: ; preds = %bb.ge
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.agv, ptr noundef nonnull %i.aha, i64 noundef %.sroa.2.0.copyload, i64 noundef 32) #25
  br label %.lr.ph.outer.i.preheader.i61

_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59: ; preds = %bb.ge
  %.not34.i.i60 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not34.i.i60, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %.lr.ph.outer.i.preheader.i61

.lr.ph.outer.i.preheader.i61:                     ; preds = %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.thread.i128
  %.idx.i277.pn.i = mul nuw nsw i64 %.sroa.2.0.copyload, 24
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx.i277.pn.i ; 4 uses
  br label %.lr.ph.outer.i.i62

.lr.ph.outer.i.i62:                               ; preds = %.thread.i.i68, %.lr.ph.outer.i.preheader.i61
  %.01636.ph.i.i63 = phi ptr [ %i.ahg, %.thread.i.i68 ], [ %.sroa.0.0.copyload, %.lr.ph.outer.i.preheader.i61 ]
  %.01735.ph.i.i64 = phi i1 [ true, %.thread.i.i68 ], [ false, %.lr.ph.outer.i.preheader.i61 ]
  br label %.lr.ph.i.i65

.lr.ph.i.i65:                                     ; preds = %bb.gf, %.lr.ph.outer.i.i62
  %.01636.i.i66 = phi ptr [ %i.ahf, %bb.gf ], [ %.01636.ph.i.i63, %.lr.ph.outer.i.i62 ] ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 8
  %.0.copyload.i.i.i.i.i.i.i67 = load i64, ptr %i.ahc, align 1
  %i.ahd = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i.i67)
  %i.ahe = trunc i64 %i.ahd to i32
  switch i32 %i.ahe, label %bb.gf [
    i32 107, label %.loopexit.i125
    i32 108, label %.loopexit.i125
    i32 79, label %.thread.i.i68
    i32 82, label %.thread.i.i68
    i32 81, label %.thread.i.i68
    i32 80, label %.thread.i.i68
    i32 83, label %.thread.i.i68
    i32 86, label %.thread.i.i68
    i32 85, label %.thread.i.i68
    i32 84, label %.thread.i.i68
  ]

bb.gf:                                            ; preds = %.lr.ph.i.i65
  %i.ahf = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 24 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.ahf, %i.ahb
  br i1 %.not.i.i126, label %._crit_edge.i.i127, label %.lr.ph.i.i65

.thread.i.i68:                                    ; preds = %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65, %.lr.ph.i.i65
  %i.ahg = getelementptr inbounds nuw i8, ptr %.01636.i.i66, i64 24 ; 2 uses
  %.not38.i.i69 = icmp eq ptr %i.ahg, %i.ahb
  br i1 %.not38.i.i69, label %._crit_edge.thread.i.i70, label %.lr.ph.outer.i.i62

._crit_edge.i.i127:                               ; preds = %bb.gf
  br i1 %.01735.ph.i.i64, label %._crit_edge.thread.i.i70, label %.loopexit.i125

._crit_edge.thread.i.i70:                         ; preds = %.thread.i.i68, %._crit_edge.i.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ahh = load ptr, ptr %1, align 8, !tbaa !633
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %10, ptr noundef nonnull align 8 dereferenceable(3472) %i.ahj) #25
  %i.ahk = load ptr, ptr %1, align 8, !tbaa !633
  %i.ahl = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef %i.ahk) #25 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 64
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !27
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahl, i64 72 ; 3 uses
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !28 ; 2 uses
  %i.ahq = ptrtoint ptr %i.ahn to i64
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = sub i64 %i.ahq, %i.ahr
  %i.aht = icmp ult i64 %i.ahs, 108
  br i1 %i.aht, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %._crit_edge.thread.i.i70
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahl, i64 40
  %i.ahv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ahu, ptr noundef nonnull @.str.16, i64 noundef 108) #25 ; 0 uses
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

bb.gh:                                            ; preds = %._crit_edge.thread.i.i70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.ahp, ptr noundef nonnull align 1 dereferenceable(108) @.str.16, i64 108, i1 false)
  %i.ahw = load ptr, ptr %i.aho, align 8, !tbaa !28
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 108
  store ptr %i.ahx, ptr %i.aho, align 8, !tbaa !28
  br label %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i

_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i: ; preds = %bb.gh, %bb.gg
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %.lr.ph.i71

.loopexit.i125:                                   ; preds = %.lr.ph.i.i65, %.lr.ph.i.i65, %._crit_edge.i.i127
  %i.ahy = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 1898
  %i.aia = load i8, ptr %i.ahz, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aib = trunc nuw i8 %i.aia to i1
  %i.aic = xor i1 %i.aib, true
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.loopexit.i125, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i
  %i.aid = phi i1 [ false, %_ZL20missingTlsGdLdMarkerIN4llvm6object12Elf_Rel_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb1EEELb1EEEEbRN3lld3elf16InputSectionBaseENS8_6RelocsIT_EE.exit.i ], [ %i.aic, %.loopexit.i125 ] ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aif = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aig = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aih = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 27 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.aik = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ail = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.aim = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ain = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.aio = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aip = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aiq = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.air = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ais = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aiu = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.aiv = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.aiw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aix = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aiy = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.aiz = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.aja = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ajc = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aje = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ajg = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aji = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ajj = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ajk = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ajl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ajn = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ajo = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ajp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ajr = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ajs = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aju = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ajv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ajz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aka = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.akb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.akd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ake = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.akf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.akh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aki = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.akj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.akl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.akm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.akn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ako = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %.phi.trans.insert.i.i72 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.akt = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %23, i64 64 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %23, i64 72 ; 6 uses
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, %.lr.ph.i71
  %.0241.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i71 ], [ %i.axg, %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80 ] ; 30 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.0241.i, i64 8
  %.0.copyload.i.i.i.i.i.i73 = load i64, ptr %i.akx, align 1
  %i.aky = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i73) ; 3 uses
  %i.akz = trunc i64 %i.aky to i32                ; 18 uses
  %i.ala = lshr i64 %i.aky, 32                    ; 3 uses
  %i.alb = load ptr, ptr %1, align 8, !tbaa !633  ; 4 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !635
  %.not.i110.i74 = icmp ugt i64 %i.ald, %i.ala
  br i1 %.not.i110.i74, label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf5FatalERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3472) %i.alf) #25
  %i.alg = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(184) %i.alb) #25 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 64
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !27
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 72 ; 3 uses
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !28 ; 2 uses
  %i.all = ptrtoint ptr %i.ali to i64
  %i.alm = ptrtoint ptr %i.alk to i64
  %i.aln = sub i64 %i.all, %i.alm
  %i.alo = icmp ult i64 %i.aln, 22
  br i1 %i.alo, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alg, i64 40
  %i.alq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alp, ptr noundef nonnull @.str.17, i64 noundef 22) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.alk, ptr noundef nonnull align 1 dereferenceable(22) @.str.17, i64 22, i1 false)
  %i.alr = load ptr, ptr %i.alj, align 8, !tbaa !28
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 22
  store ptr %i.als, ptr %i.alj, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75: ; preds = %bb.gl, %bb.gk
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76

_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76:      ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i111.i75, %bb.gi
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !636
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.ala
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !601 ; 40 uses
  %.0.copyload.i.i.i.i77 = load i64, ptr %.0241.i, align 1
  %i.alx = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i77) ; 23 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 22 ; 2 uses
  %i.alz = load i8, ptr %i.aly, align 2, !tbaa !534
  %i.ama = icmp eq i8 %i.alz, 4
  %i.amb = icmp ne i64 %i.ala, 0
  %or.cond.i78 = and i1 %i.amb, %i.ama
  br i1 %or.cond.i78, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76
  %i.amc = call noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(45) %i.alw, i64 noundef %i.alx) #25
  br i1 %i.amc, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %_ZNK3lld3elf9InputFile9getSymbolEj.exit.i76
  %i.amd = getelementptr inbounds nuw i8, ptr %.0241.i, i64 16
  %.val.i.i79 = load i64, ptr %i.amd, align 1
  %i.ame = call noundef i64 @llvm.bswap.i64(i64 %.val.i.i79) ; 46 uses
  %i.amf = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564 ; 12 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 2169
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !660, !range !524, !noundef !525
  %i.ami = trunc nuw i8 %i.amh to i1
  %i.amj = icmp eq i32 %i.akz, 51
  %or.cond235.i = and i1 %i.amj, %i.ami
  br i1 %or.cond235.i, label %.thread.i124, label %bb.go

.thread.i124:                                     ; preds = %bb.gn
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amf, i64 2504
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !21
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  %i.amn = call noundef i64 @_ZNK3lld3elf11SectionBase5getVAEm(ptr noundef nonnull align 8 dereferenceable(54) %i.amm, i64 noundef 0) #25
  %i.amo = add i64 %i.ame, 32768
  %i.amp = add i64 %i.amo, %i.amn
  br label %73

bb.go:                                            ; preds = %bb.gn
  switch i32 %i.akz, label %bb.jl [
    i32 0, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80
    i32 3, label %bb.jr
    i32 56, label %bb.jr
    i32 6, label %bb.jr
    i32 5, label %bb.jr
    i32 110, label %bb.jr
    i32 39, label %bb.jr
    i32 40, label %bb.jr
    i32 41, label %bb.jr
    i32 42, label %bb.jr
    i32 4, label %bb.jr
    i32 57, label %bb.jr
    i32 1, label %bb.jr
    i32 38, label %bb.jr
    i32 250, label %bb.gp
    i32 252, label %bb.gp
    i32 251, label %bb.gp
    i32 26, label %bb.gp
    i32 44, label %bb.gp
    i32 132, label %bb.gp
    i32 14, label %bb.gy
    i32 58, label %bb.gy
    i32 17, label %bb.gy
    i32 16, label %bb.gy
    i32 15, label %bb.gy
    i32 59, label %bb.gy
    i32 133, label %bb.gz
    i32 123, label %bb.ha
    i32 47, label %bb.hd
    i32 63, label %bb.hd
    i32 49, label %.thread219.i
    i32 48, label %bb.he
    i32 50, label %.thread219.i
    i32 64, label %.thread219.i
    i32 51, label %73
    i32 11, label %.thread227.i
    i32 10, label %.thread227.i
    i32 116, label %bb.hi
    i32 69, label %bb.hj
    i32 72, label %bb.hj
    i32 70, label %bb.hj
    i32 71, label %bb.hj
    i32 95, label %bb.hj
    i32 96, label %bb.hj
    i32 97, label %bb.hj
    i32 98, label %bb.hj
    i32 99, label %bb.hj
    i32 100, label %bb.hj
    i32 146, label %bb.hj
    i32 90, label %bb.hk
    i32 88, label %bb.hk
    i32 87, label %bb.hk
    i32 89, label %bb.hk
    i32 150, label %bb.hs
    i32 67, label %bb.ia
    i32 79, label %bb.if
    i32 82, label %bb.if
    i32 81, label %bb.if
    i32 80, label %bb.if
    i32 148, label %bb.if
    i32 107, label %bb.iq
    i32 108, label %bb.iq
    i32 83, label %bb.iy
    i32 86, label %bb.iy
    i32 85, label %bb.iy
    i32 84, label %bb.iy
    i32 149, label %bb.iy
    i32 74, label %bb.jf
    i32 101, label %bb.jf
    i32 77, label %bb.jf
    i32 76, label %bb.jf
    i32 103, label %bb.jf
    i32 104, label %bb.jf
    i32 105, label %bb.jf
    i32 106, label %bb.jf
    i32 75, label %bb.jf
    i32 102, label %bb.jf
    i32 78, label %bb.jf
    i32 147, label %bb.jf
    i32 94, label %bb.ji
    i32 92, label %bb.ji
    i32 91, label %bb.ji
    i32 93, label %bb.ji
  ]

bb.gp:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alw, i64 20
  %i.amr = load i8, ptr %i.amq, align 4
  %i.ams = and i8 %i.amr, 15
  %i.amt = icmp eq i8 %i.ams, 10
  br i1 %i.amt, label %bb.gq, label %bb.gr, !prof !661

bb.gq:                                            ; preds = %bb.gp
  %i.amu = getelementptr inbounds nuw i8, ptr %i.alw, i64 26
  %i.amv = atomicrmw or ptr %i.amu, i16 8 monotonic, align 2 ; 0 uses
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alw, i64 23
  %i.amx = load i16, ptr %i.amw, align 1
  %i.amy = and i16 %i.amx, 1
  %.not.i112.i109 = icmp eq i16 %i.amy, 0
  br i1 %.not.i112.i109, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %bb.gr
  %i.amz = call noundef zeroext i1 @_ZN3lld3elf10isAbsoluteERKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(39) %i.alw) #25
  br i1 %i.amz, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.ana = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 2169
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !660, !range !524, !noundef !525
  %i.and = trunc nuw i8 %i.anc to i1
  br i1 %i.and, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt, %bb.gr
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef 15, i32 %i.akz, i64 noundef %i.alx, ptr noundef nonnull align 8 dereferenceable(39) %i.alw, i64 noundef %i.ame) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.gv:                                            ; preds = %bb.gt, %bb.gs
  %i.ane = load ptr, ptr %i.agt, align 8, !tbaa !648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 15, ptr %8, align 8, !tbaa !604
  store i32 %i.akz, ptr %i.akk, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.akl, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.akm, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.akn, align 8, !tbaa !637
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 104 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 112 ; 3 uses
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !543 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ane, i64 116
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !544
  %.not.i.i.i.i110 = icmp ult i32 %i.anh, %i.anj
  br i1 %.not.i.i.i.i110, label %bb.gx, label %bb.gw, !prof !530

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.anf, ptr noundef nonnull align 8 dereferenceable(32) %8)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i111

bb.gx:                                            ; preds = %bb.gv
  %i.ank = zext i32 %i.anh to i64
  %i.anl = load ptr, ptr %i.anf, align 8, !tbaa !545
  %i.anm = getelementptr inbounds nuw [32 x i8], ptr %i.anl, i64 %i.ank
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.anm, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ann = load i32, ptr %i.ang, align 8, !tbaa !543
  %i.ano = add i32 %i.ann, 1
  store i32 %i.ano, ptr %i.ang, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i111

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i111: ; preds = %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.gy:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  br label %bb.jr

bb.gz:                                            ; preds = %bb.go
  br label %bb.jr

bb.ha:                                            ; preds = %bb.go
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amf, i64 1909
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !638, !range !524, !noundef !525
  %i.anr = trunc nuw i8 %i.anq to i1
  br i1 %i.anr, label %bb.hb, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104

bb.hb:                                            ; preds = %bb.ha
  %i.ans = load ptr, ptr %i.akj, align 8, !tbaa !664
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 %i.alx
  %i.anu = getelementptr i8, ptr %i.amf, i64 2154
  %.val.i113.i = load i8, ptr %i.anu, align 2, !tbaa !523, !range !524, !noundef !525
  %i.anv = getelementptr i8, ptr %i.amf, i64 2156
  %.val2.i.i105 = load i32, ptr %i.anv, align 4, !tbaa !526
  %.val3.i.i106 = load i64, ptr %i.ant, align 1   ; 2 uses
  %.not.i.i.i.i.i.i.i107 = icmp eq i32 %.val2.i.i105, 1
  %i.anw = call i64 @llvm.bswap.i64(i64 %.val3.i.i106)
  %spec.select.i.i.i.i.i.i.i108 = select i1 %.not.i.i.i.i.i.i.i107, i64 %.val3.i.i106, i64 %i.anw
  %i.anx = shl nuw nsw i8 %.val.i113.i, 5
  %i.any = zext nneg i8 %i.anx to i64
  %i.anz = lshr i64 %spec.select.i.i.i.i.i.i.i108, %i.any
  %i.aoa = and i64 %i.anz, 4227858432
  %i.aob = icmp eq i64 %i.aoa, 3825205248
  br i1 %i.aob, label %bb.hc, label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104

bb.hc:                                            ; preds = %bb.hb
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.amf, i64 2504
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !21
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 168
  store atomic i8 1, ptr %i.aoe monotonic, align 1
  br label %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104

_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104: ; preds = %bb.hc, %bb.hb, %bb.ha
  %.0.i209.i = phi i32 [ 21, %bb.hc ], [ 6, %bb.ha ], [ 6, %bb.hb ]
  call void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef %.0.i209.i, i32 123, i64 noundef %i.alx, ptr noundef nonnull align 8 dereferenceable(39) %i.alw, i64 noundef %i.ame) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hd:                                            ; preds = %bb.go, %bb.go
  %i.aof = load ptr, ptr %1, align 8, !tbaa !633
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 104
  store i8 1, ptr %i.aog, align 8, !tbaa !665
  br label %.thread219.i

bb.he:                                            ; preds = %bb.go
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.alw, i64 20
  %i.aoi = load i8, ptr %i.aoh, align 4
  %i.aoj = and i8 %i.aoi, 15
  %i.aok = icmp eq i8 %i.aoj, 3
  br i1 %i.aok, label %bb.hf, label %.thread219.i

bb.hf:                                            ; preds = %bb.he
  %i.aol = load i8, ptr %i.aly, align 2, !tbaa !534
  %i.aom = icmp eq i8 %i.aol, 1
  br i1 %i.aom, label %bb.hg, label %.thread219.i

bb.hg:                                            ; preds = %bb.hf
  %i.aon = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !546 ; 2 uses
  %.sroa.2.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %.sroa.2.0.copyload.i97 = load i64, ptr %.sroa.2.0..sroa_idx.i96, align 8, !tbaa !596
  %.not.i114.i = icmp eq i64 %.sroa.2.0.copyload.i97, 4
  br i1 %.not.i114.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i98, label %.thread219.i

_ZN4llvmeqENS_9StringRefES0_.exit.i98:            ; preds = %bb.hg
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %.sroa.09.0.copyload.i99 = load ptr, ptr %i.aop, align 8, !tbaa !597
  %i.aoq = load i32, ptr %.sroa.09.0.copyload.i99, align 1
  %i.aor = icmp ne i32 %i.aoq, 1668248622
  %i.aos = zext i1 %i.aor to i32
  %i.aot = icmp eq i32 %i.aos, 0
  br i1 %i.aot, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i101, label %.thread219.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i101:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i98
  %i.aou = getelementptr inbounds nuw i8, ptr %i.amf, i64 3184 ; 2 uses
  %i.aov = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aou) #25 ; 2 uses
  %.not.i.i.i102 = icmp eq i32 %i.aov, 0
  br i1 %.not.i.i.i102, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i103, label %bb.hh

bb.hh:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i101
  call void @_ZSt20__throw_system_errori(i32 noundef %i.aov) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i103:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i101
  %i.aow = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 3424
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %i.alw, ptr %12, align 8, !tbaa !631
  store i64 %i.ame, ptr %i.aki, align 8, !tbaa !666
  %i.aoy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN3lld3elf6SymbolEmENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E24lookupOrInsertIntoBucketIS8_JEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aox, ptr noundef nonnull align 8 dereferenceable(16) %12), !noalias !888 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.aoz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aou) #25 ; 0 uses
  br label %.thread219.i

73:                                               ; preds = %bb.go, %.thread.i124
  %.0203206.i = phi i64 [ %i.amp, %.thread.i124 ], [ %i.ame, %bb.go ]
  br label %.thread219.i

.thread227.i:                                     ; preds = %bb.go, %bb.go
  br label %bb.jr

bb.hi:                                            ; preds = %bb.go
  call void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 116, i64 noundef %i.alx, i64 noundef %i.ame, ptr noundef nonnull align 8 dereferenceable(39) %i.alw)
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hj:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %i.apa = call noundef zeroext i1 @_ZN3lld3elf9RelocScan10checkTlsLeEmRNS0_6SymbolENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(20) %11, i64 noundef %i.alx, ptr noundef nonnull align 8 dereferenceable(39) %i.alw, i32 %i.akz) #25
  br i1 %i.apa, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.jr

bb.hk:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go
  %i.apb = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 1898
  %i.apd = load i8, ptr %i.apc, align 2, !tbaa !650, !range !524, !noundef !525
  %i.ape = trunc nuw i8 %i.apd to i1
  br i1 %i.ape, label %._crit_edge248.i, label %bb.hl

._crit_edge248.i:                                 ; preds = %bb.hk
  %.pre249.i = load ptr, ptr %i.agt, align 8, !tbaa !648
  br label %bb.hp

bb.hl:                                            ; preds = %bb.hk
  %i.apf = getelementptr inbounds nuw i8, ptr %i.alw, i64 23
  %i.apg = load i16, ptr %i.apf, align 1
  %i.aph = and i16 %i.apg, 1
  %.not.i116.i93 = icmp eq i16 %i.aph, 0
  %.pre250.i = load ptr, ptr %i.agt, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i116.i93, label %bb.hm, label %bb.hp

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 31, ptr %6, align 8, !tbaa !604
  store i32 %i.akz, ptr %i.aka, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.akb, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.akc, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.akd, align 8, !tbaa !637
  %i.api = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 104 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 112 ; 3 uses
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !543 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.pre250.i, i64 116
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !544
  %.not.i.i.i117.i = icmp ult i32 %i.apk, %i.apm
  br i1 %.not.i.i.i117.i, label %bb.ho, label %bb.hn, !prof !530

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.api, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i

bb.ho:                                            ; preds = %bb.hm
  %i.apn = zext i32 %i.apk to i64
  %i.apo = load ptr, ptr %i.api, align 8, !tbaa !545
  %i.app = getelementptr inbounds nuw [32 x i8], ptr %i.apo, i64 %i.apn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.app, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.apq = load i32, ptr %i.apj, align 8, !tbaa !543
  %i.apr = add i32 %i.apq, 1
  store i32 %i.apr, ptr %i.apj, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i: ; preds = %bb.ho, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hp:                                            ; preds = %bb.hl, %._crit_edge248.i
  %i.aps = phi ptr [ %.pre249.i, %._crit_edge248.i ], [ %.pre250.i, %bb.hl ] ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.alw, i64 26
  %i.apu = atomicrmw or ptr %i.apt, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 5, ptr %7, align 8, !tbaa !604
  store i32 %i.akz, ptr %i.ake, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.akf, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.akg, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.akh, align 8, !tbaa !637
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aps, i64 104 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 112 ; 3 uses
  %i.apx = load i32, ptr %i.apw, align 8, !tbaa !543 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aps, i64 116
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !544
  %.not.i.i19.i.i94 = icmp ult i32 %i.apx, %i.apz
  br i1 %.not.i.i19.i.i94, label %bb.hr, label %bb.hq, !prof !530

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.apv, ptr noundef nonnull align 8 dereferenceable(32) %7)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i95

bb.hr:                                            ; preds = %bb.hp
  %i.aqa = zext i32 %i.apx to i64
  %i.aqb = load ptr, ptr %i.apv, align 8, !tbaa !545
  %i.aqc = getelementptr inbounds nuw [32 x i8], ptr %i.aqb, i64 %i.aqa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aqc, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.aqd = load i32, ptr %i.apw, align 8, !tbaa !543
  %i.aqe = add i32 %i.aqd, 1
  store i32 %i.aqe, ptr %i.apw, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i95

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i95: ; preds = %bb.hr, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hs:                                            ; preds = %bb.go
  %i.aqf = load ptr, ptr %11, align 8, !tbaa !662, !nonnull !525, !align !564
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1898
  %i.aqh = load i8, ptr %i.aqg, align 2, !tbaa !650, !range !524, !noundef !525
  %i.aqi = trunc nuw i8 %i.aqh to i1
  br i1 %i.aqi, label %._crit_edge246.i, label %bb.ht

._crit_edge246.i:                                 ; preds = %bb.hs
  %.pre.i92 = load ptr, ptr %i.agt, align 8, !tbaa !648
  br label %bb.hx

bb.ht:                                            ; preds = %bb.hs
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.alw, i64 23
  %i.aqk = load i16, ptr %i.aqj, align 1
  %i.aql = and i16 %i.aqk, 1
  %.not.i119.i90 = icmp eq i16 %i.aql, 0
  %.pre247.i91 = load ptr, ptr %i.agt, align 8, !tbaa !648 ; 4 uses
  br i1 %.not.i119.i90, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 31, ptr %4, align 8, !tbaa !604
  store i32 150, ptr %i.ajs, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.ajt, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.aju, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.ajv, align 8, !tbaa !637
  %i.aqm = getelementptr inbounds nuw i8, ptr %.pre247.i91, i64 104 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.pre247.i91, i64 112 ; 3 uses
  %i.aqo = load i32, ptr %i.aqn, align 8, !tbaa !543 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.pre247.i91, i64 116
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !544
  %.not.i.i.i122.i = icmp ult i32 %i.aqo, %i.aqq
  br i1 %.not.i.i.i122.i, label %bb.hw, label %bb.hv, !prof !530

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i

bb.hw:                                            ; preds = %bb.hu
  %i.aqr = zext i32 %i.aqo to i64
  %i.aqs = load ptr, ptr %i.aqm, align 8, !tbaa !545
  %i.aqt = getelementptr inbounds nuw [32 x i8], ptr %i.aqs, i64 %i.aqr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aqt, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.aqu = load i32, ptr %i.aqn, align 8, !tbaa !543
  %i.aqv = add i32 %i.aqu, 1
  store i32 %i.aqv, ptr %i.aqn, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i: ; preds = %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.hx:                                            ; preds = %bb.ht, %._crit_edge246.i
  %i.aqw = phi ptr [ %.pre.i92, %._crit_edge246.i ], [ %.pre247.i91, %bb.ht ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.alw, i64 26
  %i.aqy = atomicrmw or ptr %i.aqx, i16 256 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 6, ptr %5, align 8, !tbaa !604
  store i32 150, ptr %i.ajw, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.ajx, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.ajy, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.ajz, align 8, !tbaa !637
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 104 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqw, i64 112 ; 3 uses
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !543 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqw, i64 116
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !544
  %.not.i.i19.i120.i = icmp ult i32 %i.arb, %i.ard
  br i1 %.not.i.i19.i120.i, label %bb.hz, label %bb.hy, !prof !530

bb.hy:                                            ; preds = %bb.hx
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqz, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i

bb.hz:                                            ; preds = %bb.hx
  %i.are = zext i32 %i.arb to i64
  %i.arf = load ptr, ptr %i.aqz, align 8, !tbaa !545
  %i.arg = getelementptr inbounds nuw [32 x i8], ptr %i.arf, i64 %i.are
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.arg, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.arh = load i32, ptr %i.ara, align 8, !tbaa !543
  %i.ari = add i32 %i.arh, 1
  store i32 %i.ari, ptr %i.ara, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i: ; preds = %bb.hz, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.ia:                                            ; preds = %bb.go
  %i.arj = getelementptr inbounds nuw i8, ptr %i.amf, i64 1898
  %i.ark = load i8, ptr %i.arj, align 2, !tbaa !650, !range !524, !noundef !525
  %i.arl = trunc nuw i8 %i.ark to i1
  br i1 %i.arl, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.arm = getelementptr inbounds nuw i8, ptr %i.alw, i64 23
  %i.arn = load i16, ptr %i.arm, align 1
  %i.aro = and i16 %i.arn, 1
  %.not108.i87 = icmp eq i16 %i.aro, 0
  br i1 %.not108.i87, label %bb.ic, label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80
end_hunk_5
begin_hunk_6_@_ZN3lld3elf12scanSection1IN12_GLOBAL__N_15PPC64EN4llvm6object7ELFTypeILNS4_10endiannessE0ELb1EEEEEvRT_RNS0_16InputSectionBaseEj:bb.a
  br i1 %.not.i.i137.i, label %bb.je, label %bb.jd, !prof !530

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.agv, ptr noundef nonnull align 8 dereferenceable(32) %20)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i

bb.je:                                            ; preds = %bb.jc
  %i.auo = zext i32 %i.aum to i64
  %i.aup = load ptr, ptr %i.agv, align 8, !tbaa !545
  %i.auq = getelementptr inbounds nuw [32 x i8], ptr %i.aup, i64 %i.auo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.auq, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false)
  %i.aur = load i32, ptr %i.aii, align 8, !tbaa !543
  %i.aus = add i32 %i.aur, 1
  store i32 %i.aus, ptr %i.aii, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i: ; preds = %bb.je, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.jf:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i32 3, ptr %21, align 8, !tbaa !604
  store i32 %i.akz, ptr %i.aij, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.aik, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.ail, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.aim, align 8, !tbaa !637
  %i.aut = load i32, ptr %i.aii, align 8, !tbaa !543 ; 2 uses
  %i.auu = load i32, ptr %i.agw, align 4, !tbaa !544
  %.not.i.i139.i = icmp ult i32 %i.aut, %i.auu
  br i1 %.not.i.i139.i, label %bb.jh, label %bb.jg, !prof !530

bb.jg:                                            ; preds = %bb.jf
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.agv, ptr noundef nonnull align 8 dereferenceable(32) %21)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i

bb.jh:                                            ; preds = %bb.jf
  %i.auv = zext i32 %i.aut to i64
  %i.auw = load ptr, ptr %i.agv, align 8, !tbaa !545
  %i.aux = getelementptr inbounds nuw [32 x i8], ptr %i.auw, i64 %i.auv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aux, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false)
  %i.auy = load i32, ptr %i.aii, align 8, !tbaa !543
  %i.auz = add i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aii, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i: ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.ji:                                            ; preds = %bb.go, %bb.go, %bb.go, %bb.go
  %i.ava = getelementptr inbounds nuw i8, ptr %i.alw, i64 26
  %i.avb = atomicrmw or ptr %i.ava, i16 128 monotonic, align 2 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 43, ptr %22, align 8, !tbaa !604
  store i32 %i.akz, ptr %i.aie, align 4, !tbaa !527
  store i64 %i.alx, ptr %i.aif, align 8, !tbaa !624
  store i64 %i.ame, ptr %i.aig, align 8, !tbaa !663
  store ptr %i.alw, ptr %i.aih, align 8, !tbaa !637
  %i.avc = load i32, ptr %i.aii, align 8, !tbaa !543 ; 2 uses
  %i.avd = load i32, ptr %i.agw, align 4, !tbaa !544
  %.not.i.i141.i = icmp ult i32 %i.avc, %i.avd
  br i1 %.not.i.i141.i, label %bb.jk, label %bb.jj, !prof !530

bb.jj:                                            ; preds = %bb.ji
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.agv, ptr noundef nonnull align 8 dereferenceable(32) %22)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i

bb.jk:                                            ; preds = %bb.ji
  %i.ave = zext i32 %i.avc to i64
  %i.avf = load ptr, ptr %i.agv, align 8, !tbaa !545
  %i.avg = getelementptr inbounds nuw [32 x i8], ptr %i.avf, i64 %i.ave
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.avg, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false)
  %i.avh = load i32, ptr %i.aii, align 8, !tbaa !543
  %i.avi = add i32 %i.avh, 1
  store i32 %i.avi, ptr %i.aii, align 8, !tbaa !543
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i

_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i: ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

bb.jl:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %23, ptr noundef nonnull align 8 dereferenceable(3472) %i.amf) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.avj = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.avk = load ptr, ptr %i.akj, align 8, !tbaa !664
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.alx
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !889
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %3, ptr noundef nonnull align 8 dereferenceable(3472) %i.avj, ptr noundef %i.avl) #25, !noalias !889
  store ptr %i.akp, ptr %24, align 8, !tbaa !589, !alias.scope !889
  %i.avm = load ptr, ptr %i.ako, align 8, !tbaa !590, !noalias !889 ; 2 uses
  %i.avn = icmp eq ptr %i.avm, %i.akq
  br i1 %i.avn, label %bb.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112

bb.jm:                                            ; preds = %bb.jl
  %i.avo = load i64, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !889 ; 3 uses
  %i.avp = icmp ult i64 %i.avo, 16
  call void @llvm.assume(i1 %i.avp)
  %i.avq = add nuw nsw i64 %i.avo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akp, ptr noundef nonnull align 8 dereferenceable(1) %i.akq, i64 %i.avq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112: ; preds = %bb.jl
  store ptr %i.avm, ptr %24, align 8, !tbaa !590, !alias.scope !889
  %i.avr = load i64, ptr %i.akq, align 8, !tbaa !592, !noalias !889
  store i64 %i.avr, ptr %i.akp, align 8, !tbaa !592, !alias.scope !889
  %.pre.i.i113 = load i64, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !889
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112, %bb.jm
  %i.avs = phi i64 [ %i.avo, %bb.jm ], [ %.pre.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112 ]
  store i64 %i.avs, ptr %i.akr, align 8, !tbaa !591, !alias.scope !889
  store ptr %i.akq, ptr %i.ako, align 8, !tbaa !590, !noalias !889
  store i64 0, ptr %.phi.trans.insert.i.i72, align 8, !tbaa !591, !noalias !889
  store i8 0, ptr %i.akq, align 8, !tbaa !592, !noalias !889
  %i.avt = load ptr, ptr %i.aks, align 8, !tbaa !590, !noalias !889 ; 2 uses
  %i.avu = icmp eq ptr %i.avt, %i.akt
  br i1 %i.avu, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i114
  %i.avv = load i64, ptr %i.akt, align 8, !tbaa !592, !noalias !889
  %i.avw = add i64 %i.avv, 1
  call void @_ZdlPvm(ptr noundef %i.avt, i64 noundef %i.avw) #28
  %.pre2.i.i116 = load ptr, ptr %i.ako, align 8, !tbaa !590, !noalias !889 ; 2 uses
  %i.avx = icmp eq ptr %.pre2.i.i116, %i.akq
  br i1 %i.avx, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i115
  %i.avy = load i64, ptr %i.akq, align 8, !tbaa !592, !noalias !889
  %i.avz = add i64 %i.avy, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i.i116, i64 noundef %i.avz) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !889
  %i.awa = load ptr, ptr %24, align 8, !tbaa !590
  %i.awb = load i64, ptr %i.akr, align 8, !tbaa !591
  %i.awc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aku, ptr noundef %i.awa, i64 noundef %i.awb) #25 ; 0 uses
  %i.awd = load ptr, ptr %i.akv, align 8, !tbaa !27
  %i.awe = load ptr, ptr %i.akw, align 8, !tbaa !28 ; 2 uses
  %i.awf = ptrtoint ptr %i.awd to i64
  %i.awg = ptrtoint ptr %i.awe to i64
  %i.awh = sub i64 %i.awf, %i.awg
  %i.awi = icmp ult i64 %i.awh, 20
  br i1 %i.awi, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118
  %i.awj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aku, ptr noundef nonnull @.str.10, i64 noundef 20) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i

bb.jo:                                            ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit.i118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.awe, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  %i.awk = load ptr, ptr %i.akw, align 8, !tbaa !28
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 20
  store ptr %i.awl, ptr %i.akw, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i: ; preds = %bb.jo, %bb.jn
  %i.awm = and i64 %i.aky, 4294967295
  %i.awn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.aku, i64 noundef %i.awm) #25 ; 0 uses
  %i.awo = load ptr, ptr %i.akv, align 8, !tbaa !27
  %i.awp = load ptr, ptr %i.akw, align 8, !tbaa !28 ; 2 uses
  %i.awq = ptrtoint ptr %i.awo to i64
  %i.awr = ptrtoint ptr %i.awp to i64
  %i.aws = sub i64 %i.awq, %i.awr
  %i.awt = icmp ult i64 %i.aws, 17
  br i1 %i.awt, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i
  %i.awu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aku, ptr noundef nonnull @.str.11, i64 noundef 17) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i

bb.jq:                                            ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit146.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.awp, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.awv = load ptr, ptr %i.akw, align 8, !tbaa !28
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 17
  store ptr %i.aww, ptr %i.akw, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i: ; preds = %bb.jq, %bb.jp
  %i.awx = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %i.alw) #25 ; 0 uses
  %i.awy = load ptr, ptr %24, align 8, !tbaa !590 ; 2 uses
  %i.awz = icmp eq ptr %i.awy, %i.akp
  br i1 %i.awz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i
  %i.axa = load i64, ptr %i.akp, align 8, !tbaa !592
  %i.axb = add i64 %i.axa, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit148.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

.thread219.i:                                     ; preds = %73, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i103, %_ZN4llvmeqENS_9StringRefES0_.exit.i98, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.go, %bb.go, %bb.go
  %.0104221.i = phi i32 [ 11, %bb.hg ], [ 11, %bb.go ], [ 11, %_ZN4llvmeqENS_9StringRefES0_.exit.i98 ], [ 11, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i103 ], [ 65, %73 ], [ 11, %bb.he ], [ 11, %bb.hf ], [ 11, %bb.hd ], [ 11, %bb.go ], [ 11, %bb.go ]
  %.0203207219.i = phi i64 [ %i.ame, %bb.hg ], [ %i.ame, %bb.go ], [ %i.ame, %_ZN4llvmeqENS_9StringRefES0_.exit.i98 ], [ %i.ame, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i103 ], [ %.0203206.i, %73 ], [ %i.ame, %bb.he ], [ %i.ame, %bb.hf ], [ %i.ame, %bb.hd ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ]
  %i.axc = load ptr, ptr %i.agr, align 8, !tbaa !563, !nonnull !525, !align !564
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 2504
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !21
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 168
  store atomic i8 1, ptr %i.axf monotonic, align 1
  br label %bb.jr

bb.jr:                                            ; preds = %.thread219.i, %bb.hj, %.thread227.i, %bb.gz, %bb.gy, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go, %bb.go
  %.0104220.i95 = phi i32 [ %.0104221.i, %.thread219.i ], [ 0, %bb.go ], [ 5, %bb.gy ], [ 6, %bb.gz ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 31, %bb.hj ], [ 64, %.thread227.i ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ], [ 0, %bb.go ]
  %.0203207218.i = phi i64 [ %.0203207219.i, %.thread219.i ], [ %i.ame, %bb.go ], [ %i.ame, %bb.gy ], [ %i.ame, %bb.gz ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.hj ], [ %i.ame, %.thread227.i ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ], [ %i.ame, %bb.go ]
  call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %11, i32 noundef %.0104220.i95, i32 %i.akz, i64 noundef %i.alx, ptr noundef nonnull align 8 dereferenceable(39) %i.alw, i64 noundef %.0203207218.i) #25
  br label %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80

_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80: ; preds = %bb.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit136.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit134.i, %bb.iu, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i85, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit131.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit129.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit127.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i89, %bb.ib, %bb.ia, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i95, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i, %bb.hj, %bb.hi, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i111, %bb.gu, %bb.go, %bb.gm
  %.4.i81 = phi ptr [ %.0241.i, %bb.gm ], [ %.0241.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119 ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit142.i ], [ %.0241.i, %bb.jr ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit136.i ], [ %.0241.i, %_ZNK12_GLOBAL__N_15PPC6415adjustGotPcExprEN3lld3elf7RelTypeElPKh.exit.i104 ], [ %.0241.i, %bb.hi ], [ %.0241.i, %bb.go ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i.i111 ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i.i95 ], [ %.0241.i, %bb.hj ], [ %.0241.i, %bb.ia ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit131.i ], [ %.0241.i, %bb.iu ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit140.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i89 ], [ %.0241.i, %bb.ib ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit127.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit129.i ], [ %.0241.i, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit.i85 ], [ %i.atc, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit134.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit138.i ], [ %.0241.i, %bb.gu ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i118.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit.i123.i ], [ %.0241.i, %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit20.i121.i ]
  %i.axg = getelementptr inbounds nuw i8, ptr %.4.i81, i64 24 ; 2 uses
  %.not.i82 = icmp eq ptr %i.axg, %i.ahb
  br i1 %.not.i82, label %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, label %bb.gi, !llvm.loop !879

_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit: ; preds = %_ZN3lld3elf9RelocScan11processR_PCENS0_7RelTypeEmlRNS0_6SymbolE.exit.i80, %_ZN4llvm15SmallVectorImplIN3lld3elf10RelocationEE7reserveEm.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.js

bb.js:                                            ; preds = %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb0EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_12Elf_Rel_ImplIS6_Lb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit, %_ZN12_GLOBAL__N_15PPC6415scanSectionImplIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb1EEENS3_13Elf_Crel_ImplILb1EEEEEvRN3lld3elf16InputSectionBaseENSA_6RelocsIT0_EEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  ret void
}

declare void @_ZNK3lld3elf16InputSectionBase11relsOrRelasIN4llvm6object7ELFTypeILNS3_10endiannessE1ELb1EEEEENS0_11RelsOrRelasIT_EEb(ptr dead_on_unwind writable sret(%"struct.lld::elf::RelsOrRelas") align 8, ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20missingTlsGdLdMarkerIN4llvm6object13Elf_Crel_ImplILb1EEEEbRN3lld3elf16InputSectionBaseENS5_6RelocsIT_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i64 %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.lld::elf::RelocsCrel<true>::const_iterator", align 8 ; 15 uses
  %4 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = lshr i64 %1, 3
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  store i32 %i.b, ptr %3, align 8, !tbaa !653, !alias.scope !892
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = and i64 %1, 4
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i8 2, i8 3
  store i8 %i.e, ptr %i.c, align 4, !tbaa !654, !alias.scope !892
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.g = trunc i64 %1 to i8
  %i.h = and i8 %i.g, 3
  store i8 %i.h, ptr %i.f, align 1, !tbaa !655, !alias.scope !892
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !656, !alias.scope !892
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not4.i.i = icmp eq i32 %i.b, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !alias.scope !892
  br i1 %.not4.i.i, label %.critedge, label %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit

_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit:      ; preds = %bb.a
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %.pre = load i32, ptr %3, align 8, !tbaa !653   ; 2 uses
  %.not28 = icmp eq i32 %.pre, 0
  br i1 %.not28, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit
  %i.k = phi i32 [ %.pre, %.lr.ph ], [ %.pre30, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit ]
  %.01229 = phi i1 [ false, %.lr.ph ], [ %.113, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit ]
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !527
  switch i32 %.sroa.3.0.copyload, label %bb.d [
    i32 107, label %.thread25
    i32 108, label %.thread25
    i32 79, label %bb.c
    i32 82, label %bb.c
    i32 81, label %bb.c
    i32 80, label %bb.c
    i32 83, label %bb.c
    i32 86, label %bb.c
    i32 85, label %bb.c
    i32 84, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

.thread25:                                        ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  %.113 = phi i1 [ %.01229, %bb.b ], [ true, %bb.c ] ; 2 uses
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %3, align 8, !tbaa !653
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %._crit_edge, label %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit

_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit: ; preds = %bb.d
  call void @_ZN3lld3elf10RelocsCrelILb1EE14const_iterator4stepEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %.pre30 = load i32, ptr %3, align 8, !tbaa !653 ; 2 uses
  %.not = icmp eq i32 %.pre30, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %_ZN3lld3elf10RelocsCrelILb1EE14const_iteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.113, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = load ptr, ptr %0, align 8, !tbaa !633
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !634, !nonnull !525, !align !564
  call void @_ZN3lld3elf4WarnERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %4, ptr noundef nonnull align 8 dereferenceable(3472) %i.o) #25
  %i.p = load ptr, ptr %0, align 8, !tbaa !633
  %i.q = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKNS0_9InputFileE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %i.p) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 108
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.16, i64 noundef 108) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.u, ptr noundef nonnull align 1 dereferenceable(108) @.str.16, i64 108, i1 false)
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 108
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit:     ; preds = %bb.f, %bb.g
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.h

.critedge:                                        ; preds = %bb.a, %_ZNK3lld3elf10RelocsCrelILb1EE5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %.thread25, %._crit_edge, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit
  %.317 = phi i1 [ false, %.thread25 ], [ true, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit ], [ false, %._crit_edge ], [ false, %.critedge ]
  ret i1 %.317
}

declare noundef zeroext i1 @_ZN3lld3elf9RelocScan20maybeReportUndefinedERNS0_9UndefinedEm(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #2

declare void @_ZNK3lld3elf9RelocScan10processAuxENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef, i32, i64 noundef, ptr noundef nonnull align 8 dereferenceable(39), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld3elf9RelocScan15processR_PLT_PCENS0_7RelTypeEmlRNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(39) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %6 = alloca %"struct.lld::elf::Relocation", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 15
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.b, label %bb.c, !prof !661

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK3lld3elf9RelocScan7processENS0_7RelExprENS0_7RelTypeEmRNS0_6SymbolEl(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 17, i32 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(39) %4, i64 noundef %3) #25
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 23
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 1
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.i = atomicrmw or ptr %i.h, i16 4 monotonic, align 2 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !648  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 17, ptr %5, align 8, !tbaa !604
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %1, ptr %i.l, align 4, !tbaa !527
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !624
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.n, align 8, !tbaa !663
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.o, align 8, !tbaa !637
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !543  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !544
  %.not.i.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !530

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN3lld3elf10RelocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN3lld3elf16InputSectionBase8addRelocERKNS0_10RelocationE.exit

bb.f:                                             ; preds = %bb.d
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !545
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.x = load i32, ptr %i.q, align 8, !tbaa !543
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.q, align 8, !tbaa !543
end_hunk_6
