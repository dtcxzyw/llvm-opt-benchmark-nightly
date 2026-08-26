Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/instr?download=true
inline.NumInlined: 217
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN12_GLOBAL__N_112serializeLocERKNS_20ProfileWriterContextEPcNS_8LocationEj:_ZN12_GLOBAL__N_17strCopyEPcPKci.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 108, ptr %i.x, align 1, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 101, ptr %i.y, align 2, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 100, ptr %i.z, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 58, ptr %i.aa, align 16, !tbaa !7
  store i8 32, ptr %i.ab, align 1, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 98, ptr %i.ac, align 2, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 117, ptr %i.ad, align 1, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 102, ptr %i.ae, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i8 102, ptr %i.af, align 1, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 101, ptr %i.ag, align 2, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 114, ptr %i.ah, align 1, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 32, ptr %i.ai, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i8 111, ptr %i.aj, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 27
  store i8 118, ptr %i.ak, align 2, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i8 101, ptr %i.al, align 1, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 114, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i8 102, ptr %i.an, align 1, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  store i8 108, ptr %i.ao, align 2, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 111, ptr %i.ap, align 1, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  store i8 119, ptr %i.aq, align 16, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i8 44, ptr %i.ar, align 1, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  store i8 32, ptr %i.as, align 2, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i8 102, ptr %i.at, align 1, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 117, ptr %i.au, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  store i8 110, ptr %i.av, align 1, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 39
  store i8 99, ptr %i.aw, align 2, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 116, ptr %i.ax, align 1, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  store i8 105, ptr %i.ay, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  store i8 111, ptr %i.az, align 1, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 43
  store i8 110, ptr %i.ba, align 2, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i8 32, ptr %i.bb, align 1, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  store i8 110, ptr %i.bc, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 46
  store i8 97, ptr %i.bd, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 47
  store i8 109, ptr %i.be, align 2, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 101, ptr %i.bf, align 1, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  store i8 32, ptr %i.bg, align 16, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  store i8 116, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 51
  store i8 111, ptr %i.bi, align 2, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i8 111, ptr %i.bj, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  store i8 32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  store i8 108, ptr %i.bl, align 1, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 55
  store i8 97, ptr %i.bm, align 2, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 114, ptr %i.bn, align 1, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store i8 103, ptr %i.bo, align 8, !tbaa !7
  store i8 101, ptr %i.bp, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  store i8 10, ptr %i.bq, align 2, !tbaa !7
  %i.br = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.c, i64 59) #12, !srcloc !44 ; 0 uses
  %i.bs = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #12, !srcloc !45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

_ZN12_GLOBAL__N_16assertEbPKc.exit:               ; preds = %bb.a, %bb.c, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i
  %.11323 = phi ptr [ %i.j, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i ], [ %i.j, %bb.c ], [ %.012, %bb.a ] ; 3 uses
  %.sroa.2.0.extract.shift24 = lshr i64 %2, 32    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.11323, i64 1 ; 3 uses
  store i8 32, ptr %.11323, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not18.i = icmp eq i64 %.sroa.2.0.extract.shift24, 0
  br i1 %.not18.i, label %bb.d, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_16assertEbPKc.exit, %.lr.ph.i
  %.020.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.a, %_ZN12_GLOBAL__N_16assertEbPKc.exit ] ; 2 uses
  %.01619.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.sroa.2.0.extract.shift24, %_ZN12_GLOBAL__N_16assertEbPKc.exit ] ; 3 uses
  %i.bu = and i64 %.01619.i, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @.str.28, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 5 uses
  store i8 %i.bw, ptr %.020.i, align 1, !tbaa !7
  %i.by = lshr i64 %.01619.i, 4
  %.not.i18 = icmp samesign ult i64 %.01619.i, 16
  br i1 %.not.i18, label %.preheader.i.preheader, label %.lr.ph.i, !llvm.loop !193

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %xtraiter = and i64 %i.bz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.122.i.prol = phi ptr [ %i.cb, %.preheader.i.prol ], [ %i.bx, %.preheader.i.preheader ]
  %.01521.i.prol = phi ptr [ %i.cd, %.preheader.i.prol ], [ %i.bt, %.preheader.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %.122.i.prol, i64 -1 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.01521.i.prol, i64 1 ; 3 uses
  store i8 %i.cc, ptr %.01521.i.prol, align 1, !tbaa !7
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !237

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.cd, %.preheader.i.prol ]
  %.122.i.unr = phi ptr [ %i.bx, %.preheader.i.preheader ], [ %i.cb, %.preheader.i.prol ]
  %.01521.i.unr = phi ptr [ %i.bt, %.preheader.i.preheader ], [ %i.cd, %.preheader.i.prol ]
  %i.ce = sub i64 %i.b, %i.ca
  %i.cf = icmp ugt i64 %i.ce, -8
  br i1 %i.cf, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_16assertEbPKc.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.11323, i64 2
  store i8 48, ptr %i.bt, align 1, !tbaa !7
  br label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.122.i = phi ptr [ %i.dc, %.preheader.i ], [ %.122.i.unr, %.preheader.i.prol.loopexit ] ; 8 uses
  %.01521.i = phi ptr [ %i.de, %.preheader.i ], [ %.01521.i.unr, %.preheader.i.prol.loopexit ] ; 9 uses
  %i.ch = getelementptr inbounds i8, ptr %.122.i, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.01521.i, i64 1
  store i8 %i.ci, ptr %.01521.i, align 1, !tbaa !7
  %i.ck = getelementptr inbounds i8, ptr %.122.i, i64 -2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.01521.i, i64 2
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !7
  %i.cn = getelementptr inbounds i8, ptr %.122.i, i64 -3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.01521.i, i64 3
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !7
  %i.cq = getelementptr inbounds i8, ptr %.122.i, i64 -4
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.01521.i, i64 4
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !7
  %i.ct = getelementptr inbounds i8, ptr %.122.i, i64 -5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.01521.i, i64 5
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !7
  %i.cw = getelementptr inbounds i8, ptr %.122.i, i64 -6
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.01521.i, i64 6
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !7
  %i.cz = getelementptr inbounds i8, ptr %.122.i, i64 -7
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.01521.i, i64 7
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !7
  %i.dc = getelementptr inbounds i8, ptr %.122.i, i64 -8 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.01521.i, i64 8 ; 2 uses
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !7
  %.not17.i.7 = icmp eq ptr %i.dc, %i.a
  br i1 %.not17.i.7, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i, !llvm.loop !195

_ZN12_GLOBAL__N_18intToStrEPcmj.exit:             ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %bb.d
  %.014.i = phi ptr [ %i.cg, %bb.d ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.de, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  store i8 32, ptr %.014.i, align 1, !tbaa !7
  ret ptr %i.df
}

; Function Attrs: mustprogress nounwind
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15getOrAllocEntryEmRNS_16BumpPtrAllocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [32768 x i8], align 16            ; 50 uses
  %i.b = alloca [32768 x i8], align 16            ; 36 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %3

3:                                                ; preds = %bb.a
  %4 = urem i64 %1, 11939
  %5 = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %4 ; 3 uses
  %6 = load i64, ptr %5, align 8, !tbaa !207      ; 2 uses
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, label %.lr.ph11.preheader.i

.lr.ph11.preheader.i:                             ; preds = %3
  %8 = udiv i64 %1, 11939
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %tailrecurse.backedge.i, %.lr.ph11.preheader.i
  %i.ax = phi i64 [ %14, %tailrecurse.backedge.i ], [ %6, %.lr.ph11.preheader.i ] ; 3 uses
  %9 = phi ptr [ %13, %tailrecurse.backedge.i ], [ %5, %.lr.ph11.preheader.i ] ; 5 uses
  %10 = phi i64 [ %11, %tailrecurse.backedge.i ], [ %8, %.lr.ph11.preheader.i ] ; 2 uses
  %.tr49.i = phi i32 [ %.tr4.be.i, %tailrecurse.backedge.i ], [ 0, %.lr.ph11.preheader.i ] ; 6 uses
  %.tr8.i = phi ptr [ %.tr.be.i, %tailrecurse.backedge.i ], [ %i.c, %.lr.ph11.preheader.i ]
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph11.i
  store i64 %1, ptr %9, align 8, !tbaa !207
  br label %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit

bb.c:                                             ; preds = %.lr.ph11.i
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = and i64 %i.ax, 9223372036854775807
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %tailrecurse.backedge.i

tailrecurse.backedge.i:                           ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i20, %._crit_edge.i, %bb.d
  %.tr.be.i = phi ptr [ %i.bb, %bb.d ], [ %i.bc, %._crit_edge.i ], [ %i.bc, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i20 ] ; 2 uses
  %.tr4.be.i = add nuw i32 %.tr49.i, 1
  %11 = udiv i64 %10, 233
  %12 = urem i64 %10, 233
  %13 = getelementptr inbounds nuw [24 x i8], ptr %.tr.be.i, i64 %12 ; 3 uses
  %14 = load i64, ptr %13, align 8, !tbaa !207    ; 2 uses
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, label %.lr.ph11.i

bb.e:                                             ; preds = %bb.c
  %i.bc = call fastcc noundef ptr @_ZN12_GLOBAL__N_116BumpPtrAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(26) %2, i64 noundef 5592) #13, !inline_history !238 ; 5 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.e
  %.08.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bp, %.lr.ph.i.i.i ]
  %.067.i.i.i = phi ptr [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph.i.i.i ] ; 13 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 1
  store i8 0, ptr %.067.i.i.i, align 1, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 2
  store i8 0, ptr %i.bd, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 3
  store i8 0, ptr %i.be, align 1, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 4
  store i8 0, ptr %i.bf, align 1, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 5
  store i8 0, ptr %i.bg, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 6
  store i8 0, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 7
  store i8 0, ptr %i.bi, align 1, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 8
  store i8 0, ptr %i.bj, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 9
  store i8 0, ptr %i.bk, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 10
  store i8 0, ptr %i.bl, align 1, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 11
  store i8 0, ptr %i.bm, align 1, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 12
  store i8 0, ptr %i.bn, align 1, !tbaa !7
  %i.bp = add nuw nsw i64 %.08.i.i.i, 12          ; 2 uses
  %exitcond.not.i.i.i.11 = icmp eq i64 %i.bp, 5592
  br i1 %exitcond.not.i.i.i.11, label %_ZnamRN12_GLOBAL__N_116BumpPtrAllocatorEc.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZnamRN12_GLOBAL__N_116BumpPtrAllocatorEc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bq = load i64, ptr %9, align 8, !tbaa !207
  %i.br = udiv i64 %i.bq, 11939                   ; 3 uses
  %.not23 = icmp eq i32 %.tr49.i, 0
  br i1 %.not23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZnamRN12_GLOBAL__N_116BumpPtrAllocatorEc.exit.i
  %xtraiter = and i32 %.tr49.i, 1
  %i.bs = icmp eq i32 %.tr49.i, 1
  br i1 %i.bs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.tr49.i, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0416.i.epil.init = phi i64 [ %i.br, %.lr.ph.i.preheader ], [ %i.cd, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i32 %.tr49.i to i1
  call void @llvm.assume(i1 %lcmp.mod48)
  %i.bt = udiv i64 %.0416.i.epil.init, 233
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %_ZnamRN12_GLOBAL__N_116BumpPtrAllocatorEc.exit.i
  %.041.lcssa.i = phi i64 [ %i.br, %_ZnamRN12_GLOBAL__N_116BumpPtrAllocatorEc.exit.i ], [ %i.cd, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.epil.preheader ]
  %i.bu = urem i64 %.041.lcssa.i, 233
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.bw = ptrtoint ptr %i.bc to i64
  %i.bx = or i64 %i.bw, -9223372036854775808
  store i64 %i.bx, ptr %9, align 8, !tbaa !207
  %i.by = load i64, ptr %i.bv, align 8, !tbaa !207
  %i.bz = and i64 %i.by, 9223372036854775807
  %i.ca = ptrtoint ptr %.tr8.i to i64
  %.not24 = icmp eq i64 %i.bz, %i.ca
  br i1 %.not24, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i20, label %tailrecurse.backedge.i

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i20:      ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 65, ptr %i.a, align 16, !tbaa !7
  store i8 115, ptr %i.d, align 1, !tbaa !7
  store i8 115, ptr %i.e, align 2, !tbaa !7
  store i8 101, ptr %i.f, align 1, !tbaa !7
  store i8 114, ptr %i.g, align 4, !tbaa !7
  store i8 116, ptr %i.h, align 1, !tbaa !7
  store i8 105, ptr %i.i, align 2, !tbaa !7
  store i8 111, ptr %i.j, align 1, !tbaa !7
  store i8 110, ptr %i.k, align 8, !tbaa !7
  store i8 32, ptr %i.l, align 1, !tbaa !7
  store i8 102, ptr %i.m, align 2, !tbaa !7
  store i8 97, ptr %i.n, align 1, !tbaa !7
  store i8 105, ptr %i.o, align 4, !tbaa !7
  store i8 108, ptr %i.p, align 1, !tbaa !7
  store i8 101, ptr %i.q, align 2, !tbaa !7
  store i8 100, ptr %i.r, align 1, !tbaa !7
  store i8 58, ptr %i.s, align 16, !tbaa !7
  store i8 32, ptr %i.t, align 1, !tbaa !7
  store i8 99, ptr %i.u, align 2, !tbaa !7
  store i8 105, ptr %i.v, align 1, !tbaa !7
  store i8 114, ptr %i.w, align 4, !tbaa !7
  store i8 99, ptr %i.x, align 1, !tbaa !7
  store i8 117, ptr %i.y, align 2, !tbaa !7
  store i8 108, ptr %i.z, align 1, !tbaa !7
  store i8 97, ptr %i.aa, align 8, !tbaa !7
  store i8 114, ptr %i.ab, align 1, !tbaa !7
  store i8 32, ptr %i.ac, align 2, !tbaa !7
  store i8 114, ptr %i.ad, align 1, !tbaa !7
  store i8 101, ptr %i.ae, align 4, !tbaa !7
  store i8 102, ptr %i.af, align 1, !tbaa !7
  store i8 101, ptr %i.ag, align 2, !tbaa !7
  store i8 114, ptr %i.ah, align 1, !tbaa !7
  store i8 101, ptr %i.ai, align 16, !tbaa !7
  store i8 110, ptr %i.aj, align 1, !tbaa !7
  store i8 99, ptr %i.ak, align 2, !tbaa !7
  store i8 101, ptr %i.al, align 1, !tbaa !7
  store i8 32, ptr %i.am, align 4, !tbaa !7
  store i8 99, ptr %i.an, align 1, !tbaa !7
  store i8 114, ptr %i.ao, align 2, !tbaa !7
  store i8 101, ptr %i.ap, align 1, !tbaa !7
  store i8 97, ptr %i.aq, align 8, !tbaa !7
  store i8 116, ptr %i.ar, align 1, !tbaa !7
  store i8 101, ptr %i.as, align 2, !tbaa !7
  store i8 100, ptr %i.at, align 1, !tbaa !7
  store i8 33, ptr %i.au, align 4, !tbaa !7
  store i8 10, ptr %i.av, align 1, !tbaa !7
  store i8 10, ptr %i.aw, align 2, !tbaa !7
  %i.cb = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.a, i64 47) #12, !srcloc !44 ; 0 uses
  %i.cc = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #12, !srcloc !45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %tailrecurse.backedge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0416.i = phi i64 [ %i.br, %.lr.ph.i.preheader.new ], [ %i.cd, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.cd = udiv i64 %.0416.i, 54289                ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !239

_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit: ; preds = %tailrecurse.backedge.i, %3, %bb.b
  %16 = phi ptr [ %5, %3 ], [ %9, %bb.b ], [ %13, %tailrecurse.backedge.i ] ; 2 uses
  %.not9 = icmp sgt i64 %1, -1
  br i1 %.not9, label %_ZN12_GLOBAL__N_16assertEbPKc.exit, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i:        ; preds = %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 65, ptr %i.b, align 16, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 115, ptr %i.ce, align 1, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 115, ptr %i.cf, align 2, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 101, ptr %i.cg, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 114, ptr %i.ch, align 4, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 116, ptr %i.ci, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 105, ptr %i.cj, align 2, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 111, ptr %i.ck, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 110, ptr %i.cl, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 32, ptr %i.cm, align 1, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 102, ptr %i.cn, align 2, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 97, ptr %i.co, align 1, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 105, ptr %i.cp, align 4, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 108, ptr %i.cq, align 1, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 101, ptr %i.cr, align 2, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 100, ptr %i.cs, align 1, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 58, ptr %i.ct, align 16, !tbaa !7
  store i8 32, ptr %i.cu, align 1, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 73, ptr %i.cv, align 2, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 110, ptr %i.cw, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 118, ptr %i.cx, align 4, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 97, ptr %i.cy, align 1, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 108, ptr %i.cz, align 2, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 105, ptr %i.da, align 1, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 100, ptr %i.db, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 32, ptr %i.dc, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  store i8 101, ptr %i.dd, align 2, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 110, ptr %i.de, align 1, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 116, ptr %i.df, align 4, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 114, ptr %i.dg, align 1, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  store i8 121, ptr %i.dh, align 2, !tbaa !7
  store i8 33, ptr %i.di, align 1, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 10, ptr %i.dj, align 16, !tbaa !7
  %i.dk = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.b, i64 33) #12, !srcloc !44 ; 0 uses
  %i.dl = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #12, !srcloc !45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

bb.f:                                             ; preds = %bb.a
  %i.dm = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_116BumpPtrAllocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(26) %2, i64 noundef 286536) #13 ; 3 uses
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10, %bb.f
  %.08.i.i.i11 = phi i64 [ 0, %bb.f ], [ %i.dz, %.lr.ph.i.i.i10 ]
  %.067.i.i.i12 = phi ptr [ %i.dm, %bb.f ], [ %i.dy, %.lr.ph.i.i.i10 ] ; 13 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 1
  store i8 0, ptr %.067.i.i.i12, align 1, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 2
  store i8 0, ptr %i.dn, align 1, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 3
  store i8 0, ptr %i.do, align 1, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 4
  store i8 0, ptr %i.dp, align 1, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 5
  store i8 0, ptr %i.dq, align 1, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 6
  store i8 0, ptr %i.dr, align 1, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 7
  store i8 0, ptr %i.ds, align 1, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 8
  store i8 0, ptr %i.dt, align 1, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 9
  store i8 0, ptr %i.du, align 1, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 10
  store i8 0, ptr %i.dv, align 1, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 11
  store i8 0, ptr %i.dw, align 1, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %.067.i.i.i12, i64 12
  store i8 0, ptr %i.dx, align 1, !tbaa !7
  %i.dz = add nuw nsw i64 %.08.i.i.i11, 12        ; 2 uses
  %exitcond.not.i.i.i13.11 = icmp eq i64 %i.dz, 286536
  br i1 %exitcond.not.i.i.i13.11, label %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit, label %.lr.ph.i.i.i10, !llvm.loop !17

_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit: ; preds = %.lr.ph.i.i.i10
  store ptr %i.dm, ptr %0, align 8, !tbaa !88
  %i.ea = urem i64 %1, 11939
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.ea ; 2 uses
  store i64 %1, ptr %i.eb, align 8, !tbaa !207
  br label %_ZN12_GLOBAL__N_16assertEbPKc.exit

_ZN12_GLOBAL__N_16assertEbPKc.exit:               ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit
  %.0 = phi ptr [ %i.eb, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE15firstAllocationEmRNS_16BumpPtrAllocatorE.exit ], [ %16, %_ZN12_GLOBAL__N_115SimpleHashTableINS_17CallFlowEntryBaseELj11939ELj233EE8getEntryEPS1_mmRNS_16BumpPtrAllocatorEi.exit ], [ %16, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit16.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN12_GLOBAL__N_119visitIndCallCounterERNS_24SimpleHashTableEntryBaseEiiPNS_20ProfileWriterContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %4 = alloca %"class.(anonymous namespace)::Lock", align 8 ; 5 uses
  %i.c = alloca [21 x i8], align 16               ; 5 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = alloca [32768 x i8], align 16            ; 5 uses
  %i.f = alloca [32768 x i8], align 16            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !189  ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !84
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !207
  %i.n = load i64, ptr @_ZN12_GLOBAL__N_115TextBaseAddressE, align 8, !tbaa !28
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.p, align 8
  %i.q = load i32, ptr @__bolt_instr_num_ind_targets, align 4, !tbaa !23 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.019.i = phi i32 [ %.120.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.016.i = phi i32 [ %.117.i, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.s = sub i32 %.016.i, %.019.i
  %i.t = lshr i32 %i.s, 1
  %i.u = add i32 %i.t, %.019.i                    ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !208  ; 2 uses
  %.not.i = icmp eq i64 %i.y, %i.o
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_120ProfileWriterContext19lookupIndCallTargetEm.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.z = icmp ult i64 %i.y, %i.o                  ; 2 uses
  %.117.i = select i1 %i.z, i32 %.016.i, i32 %i.u ; 2 uses
  %i.aa = add i32 %i.u, 1
  %.120.i = select i1 %i.z, i32 %i.aa, i32 %.019.i ; 2 uses
  %i.ab = icmp ult i32 %.120.i, %.117.i
  br i1 %i.ab, label %.preheader.i, label %.loopexit, !llvm.loop !210

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %.sroa.09.0.copyload = load i64, ptr %i.l, align 4
  %i.ac = call fastcc noundef ptr @_ZN12_GLOBAL__N_112serializeLocERKNS_20ProfileWriterContextEPcNS_8LocationEj(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.e, i64 %.sroa.09.0.copyload, i32 noundef 32768) #13 ; 18 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.e to i64                ; 2 uses
  %.neg = sub i64 %i.ae, %i.ad
  %i.af = trunc i64 %.neg to i32                  ; 15 uses
  %i.ag = add i32 %i.af, 32728
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store i8 48, ptr %i.ac, align 1, !tbaa !7
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  store i8 32, ptr %i.ah, align 1, !tbaa !7
  %i.ak = icmp slt i32 %i.af, -32725
  br i1 %i.ak, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 2 uses
  store i8 91, ptr %i.aj, align 1, !tbaa !7
  %i.am = icmp eq i32 %i.af, -32725
  br i1 %i.am, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store i8 117, ptr %i.al, align 1, !tbaa !7
  %i.ao = icmp slt i32 %i.af, -32723
  br i1 %i.ao, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 5 ; 2 uses
  store i8 110, ptr %i.an, align 1, !tbaa !7
  %i.aq = icmp eq i32 %i.af, -32723
  br i1 %i.aq, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 2 uses
  store i8 107, ptr %i.ap, align 1, !tbaa !7
  %i.as = icmp slt i32 %i.af, -32721
  br i1 %i.as, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 7 ; 2 uses
  store i8 110, ptr %i.ar, align 1, !tbaa !7
  %i.au = icmp eq i32 %i.af, -32721
  br i1 %i.au, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i8 111, ptr %i.at, align 1, !tbaa !7
  %i.aw = icmp slt i32 %i.af, -32719
  br i1 %i.aw, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 9 ; 2 uses
  store i8 119, ptr %i.av, align 1, !tbaa !7
  %i.ay = icmp eq i32 %i.af, -32719
  br i1 %i.ay, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 10 ; 2 uses
  store i8 110, ptr %i.ax, align 1, !tbaa !7
  %i.ba = icmp slt i32 %i.af, -32717
  br i1 %i.ba, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 11 ; 2 uses
  store i8 93, ptr %i.az, align 1, !tbaa !7
  %i.bc = icmp eq i32 %i.af, -32717
  br i1 %i.bc, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  store i8 32, ptr %i.bb, align 1, !tbaa !7
  %i.be = icmp slt i32 %i.af, -32715
  br i1 %i.be, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 13 ; 2 uses
  store i8 48, ptr %i.bd, align 1, !tbaa !7
  %i.bg = icmp eq i32 %i.af, -32715
  br i1 %i.bg, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 14 ; 2 uses
  store i8 32, ptr %i.bf, align 1, !tbaa !7
  %i.bi = icmp slt i32 %i.af, -32713
  br i1 %i.bi, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 15 ; 2 uses
  store i8 48, ptr %i.bh, align 1, !tbaa !7
  %i.bk = icmp eq i32 %i.af, -32713
  br i1 %i.bk, label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 32, ptr %i.bj, align 1, !tbaa !7
  br label %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit

_ZN12_GLOBAL__N_17strCopyEPcPKci.exit:            ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.loopexit
  %.08.i = phi ptr [ %i.ah, %.loopexit ], [ %i.ax, %bb.k ], [ %i.bf, %bb.o ], [ %i.aj, %bb.d ], [ %i.bl, %bb.r ], [ %i.al, %bb.e ], [ %i.bb, %bb.m ], [ %i.an, %bb.f ], [ %i.bj, %bb.q ], [ %i.ap, %bb.g ], [ %i.az, %bb.l ], [ %i.ar, %bb.h ], [ %i.bh, %bb.p ], [ %i.at, %bb.i ], [ %i.bd, %bb.n ], [ %i.av, %bb.j ] ; 4 uses
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !189 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.not18.i = icmp eq i64 %i.bm, 0
  br i1 %.not18.i, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit, %.lr.ph.i
  %.020.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.c, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ] ; 2 uses
  %.01619.i = phi i64 [ %i.br, %.lr.ph.i ], [ %i.bm, %_ZN12_GLOBAL__N_17strCopyEPcPKci.exit ] ; 3 uses
  %i.bn = urem i64 %.01619.i, 10
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.28, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 5 uses
  store i8 %i.bp, ptr %.020.i, align 1, !tbaa !7
  %i.br = udiv i64 %.01619.i, 10
  %.not.i37 = icmp ult i64 %.01619.i, 10
  br i1 %.not.i37, label %.preheader.i38.preheader, label %.lr.ph.i, !llvm.loop !193

.preheader.i38.preheader:                         ; preds = %.lr.ph.i
  %i.bs = ptrtoaddr ptr %i.bq to i64
  %i.bt = ptrtoaddr ptr %i.bq to i64
  %xtraiter89 = and i64 %i.bs, 7                  ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.preheader.i38.prol.loopexit, label %.preheader.i38.prol

.preheader.i38.prol:                              ; preds = %.preheader.i38.preheader, %.preheader.i38.prol
  %.122.i.prol = phi ptr [ %i.bu, %.preheader.i38.prol ], [ %i.bq, %.preheader.i38.preheader ]
  %.01521.i.prol = phi ptr [ %i.bw, %.preheader.i38.prol ], [ %.08.i, %.preheader.i38.preheader ] ; 2 uses
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.preheader.i38.prol ], [ 0, %.preheader.i38.preheader ]
  %i.bu = getelementptr inbounds i8, ptr %.122.i.prol, i64 -1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.01521.i.prol, i64 1 ; 3 uses
  store i8 %i.bv, ptr %.01521.i.prol, align 1, !tbaa !7
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.preheader.i38.prol.loopexit, label %.preheader.i38.prol, !llvm.loop !240

.preheader.i38.prol.loopexit:                     ; preds = %.preheader.i38.prol, %.preheader.i38.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i38.preheader ], [ %i.bw, %.preheader.i38.prol ]
  %.122.i.unr = phi ptr [ %i.bq, %.preheader.i38.preheader ], [ %i.bu, %.preheader.i38.prol ]
  %.01521.i.unr = phi ptr [ %.08.i, %.preheader.i38.preheader ], [ %i.bw, %.preheader.i38.prol ]
  %i.bx = sub i64 %i.d, %i.bt
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %_ZN12_GLOBAL__N_18intToStrEPcmj.exit, label %.preheader.i38
end_hunk_0
