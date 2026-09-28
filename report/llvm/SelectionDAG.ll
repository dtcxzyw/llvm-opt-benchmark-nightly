Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE:bb.a
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !363
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ri = load ptr, ptr %i.rg, align 8, !tbaa !196 ; 3 uses
  %.not.i.i.i601 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i601, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !198
  store ptr %i.rj, ptr %i.rg, align 8, !tbaa !196
  br label %_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606

bb.eu:                                            ; preds = %bb.es
  %i.rk = load ptr, ptr %i.rh, align 8, !tbaa !371 ; 2 uses
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = add i64 %i.rl, 112                      ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !372
  %i.rp = icmp ult i64 %i.rm, %i.ro
  br i1 %i.rp, label %bb.ev, label %bb.ew, !prof !139

bb.ev:                                            ; preds = %bb.eu
  %i.rq = inttoptr i64 %i.rm to ptr
  store ptr %i.rq, ptr %i.rh, align 8, !tbaa !371
  br label %_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606

bb.ew:                                            ; preds = %bb.eu
  %i.rr = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.rh, i64 noundef 112, i64 noundef 112, i8 3)
  br label %_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606

_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606: ; preds = %bb.et, %bb.ev, %bb.ew
  %i.rs = phi ptr [ %i.ri, %bb.et ], [ %i.rk, %bb.ev ], [ %i.rr, %bb.ew ] ; 17 uses
  %.sroa.01.0.copyload.i602 = load ptr, ptr %2, align 8, !tbaa !128
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.rs, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.rt, align 8, !tbaa !88
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 28
  store i32 0, ptr %i.ru, align 4, !tbaa !123
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 34
  store i16 -1, ptr %i.rv, align 2, !tbaa !129
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 36
  store i32 -1, ptr %i.rw, align 4, !tbaa !124
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rs, i64 40
  store ptr null, ptr %i.rx, align 8, !tbaa !89
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  store ptr %.pn8.i, ptr %i.ry, align 8, !tbaa !95
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 56
  store ptr null, ptr %i.rz, align 8, !tbaa !125
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 64
  store i16 0, ptr %i.sa, align 8, !tbaa !105
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 66
  store i16 1, ptr %i.sb, align 2, !tbaa !126
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 68
  store i32 %i.rf, ptr %i.sc, align 4, !tbaa !127
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rs, i64 72
  store ptr %.sroa.01.0.copyload.i602, ptr %i.sd, align 8, !tbaa !128
  %i.se = getelementptr inbounds nuw i8, ptr %i.rs, i64 80
  store i32 -1, ptr %i.se, align 8, !tbaa !86
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 84
  store i32 0, ptr %i.sf, align 4, !tbaa !369
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  store i16 0, ptr %i.sg, align 8
  call void @_ZN4llvm12SelectionDAG14createOperandsEPNS_6SDNodeENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull %i.rs, ptr nonnull %34, i64 1)
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN4llvm16FoldingSetNodeIDD2Ev.exit, %_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606
  %.1398 = phi ptr [ %.0397, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ %i.rs, %_ZN4llvm12SelectionDAG9newSDNodeINS_6SDNodeEJRjjRKNS_8DebugLocERNS_8SDVTListEEEEPT_DpOT0_.exit606 ] ; 5 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.1398, i64 8 ; 3 uses
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !193 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1398, i64 16
  store ptr %i.sh, ptr %i.sk, align 8, !tbaa !138
  store ptr %i.sj, ptr %i.si, align 8, !tbaa !193
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store ptr %i.si, ptr %i.sl, align 8, !tbaa !138
  store ptr %i.si, ptr %i.sh, align 8, !tbaa !193
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.06.i = load ptr, ptr %i.sm, align 8, !tbaa !141 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ex, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.06.i, %bb.ex ] ; 3 uses
  %i.sn = load ptr, ptr %.08.i, align 8, !tbaa !51
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.sp = load ptr, ptr %i.so, align 8
  call void %i.sp(ptr noundef nonnull align 8 dereferenceable(24) %.08.i, ptr noundef nonnull %.1398) #32, !inline_history !601
  %i.sq = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.0.i = load ptr, ptr %i.sq, align 8, !tbaa !141 ; 2 uses
  %.not.i607 = icmp eq ptr %.0.i, null
  br i1 %.not.i607, label %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, label %.lr.ph.i, !llvm.loop !2

_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit: ; preds = %.lr.ph.i, %bb.ex, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit
  %.sroa.0697.3 = phi ptr [ %.sroa.0697.2, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ %.1398, %bb.ex ], [ %.1398, %.lr.ph.i ]
  %.sroa.62.3 = phi i32 [ %.sroa.62.2, %_ZN4llvm16FoldingSetNodeIDD2Ev.exit ], [ 0, %bb.ex ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.sr = insertvalue { ptr, i32 } poison, ptr %.sroa.0697.3, 0
  %i.ss = insertvalue { ptr, i32 } %i.sr, i32 %.sroa.62.3, 1
  br label %_ZN4llvm5APIntD2Ev.exit488

_ZN4llvm5APIntD2Ev.exit488:                       ; preds = %bb.bx, %bb.bw, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm5APIntD2Ev.exit, %bb.aa, %bb.b, %bb.e, %bb.f, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.u, %bb.w, %bb.x, %bb.ac, %bb.ae, %bb.af, %bb.ah, %bb.aq, %bb.au, %bb.aw, %bb.az, %bb.bb, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit, %bb.bj, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit482, %bb.bn, %bb.bp, %bb.bz, %bb.cb, %bb.cd, %bb.cf, %bb.ch, %bb.cj, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit503, %bb.co, %bb.cq, %bb.cv, %bb.cx, %bb.cz, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit517, %bb.de, %bb.di, %bb.dk, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit555, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit574, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit593, %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.ss, %_ZN4llvm12SelectionDAG10InsertNodeEPNS_6SDNodeE.exit ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.oj, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit593 ], [ %i.v, %bb.i ], [ %i.x, %bb.k ], [ %i.z, %bb.m ], [ %i.ab, %bb.o ], [ %i.ak, %bb.q ], [ %i.ar, %bb.u ], [ %i.as, %bb.w ], [ %i.at, %bb.x ], [ %i.bh, %bb.aa ], [ %i.bq, %bb.ac ], [ %i.by, %bb.ah ], [ %i.cu, %_ZN4llvm5APIntD2Ev.exit ], [ %i.bv, %bb.ae ], [ %i.bw, %bb.af ], [ %i.dd, %bb.aq ], [ %i.dk, %bb.au ], [ %i.dm, %bb.aw ], [ %i.dw, %bb.az ], [ %i.ef, %bb.bb ], [ %i.em, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit ], [ %i.fl, %bb.bj ], [ %i.ge, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit482 ], [ %i.gj, %bb.bn ], [ %i.gl, %bb.bp ], [ %i.d, %bb.b ], [ %i.nm, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit574 ], [ %i.mp, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit555 ], [ %i.hj, %bb.bz ], [ %i.hl, %bb.cb ], [ %i.hn, %bb.cd ], [ %i.hs, %bb.cf ], [ %i.hu, %bb.ch ], [ %i.if, %bb.cj ], [ %i.im, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit503 ], [ %i.io, %bb.co ], [ %i.iq, %bb.cq ], [ %i.jp, %bb.cv ], [ %i.jr, %bb.cx ], [ %i.jw, %bb.cz ], [ %i.kd, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit517 ], [ %i.ma, %bb.dk ], [ %i.kq, %bb.de ], [ %i.lo, %bb.di ], [ %i.hc, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %i.hc, %bb.bw ], [ %i.hc, %bb.bx ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.122") align 8 captures(none) %5, i32 %6) local_unnamed_addr #5 align 2 {
bb.a:
  %7 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.122", align 8 ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"struct.std::pair.946", align 8   ; 4 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %19 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %20 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %21 = alloca %"struct.llvm::EVT", align 8       ; 67 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %23 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %30 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %32 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %34 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %35 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %36 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %37 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %38 = alloca %"class.llvm::APFloat", align 8    ; 25 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %39 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %42 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %44 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %45 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %46 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %47 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %48 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %49 = alloca %"class.std::optional", align 8    ; 7 uses
  %50 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %51 = alloca %class.anon.654, align 8           ; 9 uses
  %52 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %53 = alloca %"class.llvm::SmallVector.548", align 8 ; 10 uses
  %54 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %55 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %56 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %57 = alloca %"class.llvm::APFloat", align 8    ; 8 uses
  %58 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %59 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %60 = alloca %"class.llvm::SmallVector.655", align 8 ; 11 uses
  %61 = alloca %"class.llvm::SmallVector.655", align 8 ; 11 uses
  %62 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %63 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %64 = alloca %"class.llvm::SmallVector.655", align 8 ; 11 uses
  %65 = alloca %"class.std::optional", align 8    ; 8 uses
  %66 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %67 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %68 = alloca %"class.llvm::SmallVector.655", align 8 ; 9 uses
  %69 = alloca %"class.llvm::BitVector", align 8  ; 10 uses
  %70 = alloca %"class.llvm::BitVector", align 8  ; 6 uses
  %71 = alloca %"class.llvm::SmallVector.661", align 8 ; 8 uses
  %72 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %73 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %74 = alloca %"class.llvm::ArrayRef.122", align 8 ; 3 uses
  %75 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %76 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %77 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %78 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %79 = alloca %"class.llvm::SmallVector.666", align 8 ; 10 uses
  %80 = alloca %"class.llvm::SmallVector.666", align 8 ; 14 uses
  %81 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %82 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %83 = alloca %"class.llvm::ArrayRef.122", align 8 ; 3 uses
  store i16 %3, ptr %21, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 45 uses
  store ptr %4, ptr %i.e, align 8
  %i.f = icmp ugt i32 %1, 536
  %i.g = icmp eq i32 %1, 165
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %.critedge976, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !618  ; 5 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.critedge976, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0796.0.copyload = load ptr, ptr %5, align 8, !tbaa !630 ; 29 uses
  %i.l = tail call noundef zeroext i1 @_ZN4llvm12SelectionDAG7isUndefEjNS_8ArrayRefINS_7SDValueEEE(ptr nonnull align 8 poison, i32 noundef %1, ptr %.sroa.0796.0.copyload, i64 poison)
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 %3, ptr %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.fca.0.extract789 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract790 = extractvalue { ptr, i32 } %i.m, 1
  br label %.critedge976

bb.e:                                             ; preds = %bb.c
  switch i32 %i.j, label %.critedge965.thread [
    i32 1, label %bb.f
    i32 2, label %bb.eb
  ]

bb.f:                                             ; preds = %bb.e
  %.sroa.01545.0.copyload = load ptr, ptr %.sroa.0796.0.copyload, align 8, !tbaa !109 ; 29 uses
  %.sroa.121552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0796.0.copyload, i64 8
  %.sroa.121552.0.copyload = load i32, ptr %.sroa.121552.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 24 ; 11 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !88   ; 9 uses
  switch i32 %i.o, label %.critedge963 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 23 uses
  switch i32 %1, label %.critedge963 [
    i32 227, label %bb.g
    i32 230, label %bb.m
    i32 228, label %bb.n
    i32 229, label %bb.t
    i32 196, label %bb.ag
    i32 197, label %bb.aj
    i32 214, label %bb.ao
    i32 210, label %bb.ar
    i32 213, label %bb.au
    i32 212, label %bb.ax
    i32 217, label %bb.ax
    i32 211, label %bb.ba
    i32 216, label %bb.ba
    i32 218, label %bb.bd
    i32 235, label %bb.be
    i32 234, label %bb.be
    i32 250, label %bb.bm
    i32 254, label %bb.bm
    i32 177, label %bb.br
    i32 248, label %bb.bs
  ]

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %.not.i = icmp eq i16 %3, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = zext i16 %3 to i64
  %i.t = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.u, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.i:                                             ; preds = %bb.g
  %i.v = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.h, %bb.i
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.fca.1.extract734 = extractvalue { i64, i8 } %.pn.i, 1
  %i.w = trunc nuw i8 %.fca.1.extract734 to i1
  br i1 %i.w, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract733 = extractvalue { i64, i8 } %.pn.i, 0
  %i.x = trunc i64 %.fca.0.extract733 to i32
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %22, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i32 noundef %i.x) #32
  %.sroa.0730.0.copyload = load i16, ptr %21, align 8, !tbaa !97
  %.sroa.2732.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.y = load i32, ptr %i.n, align 8, !tbaa !88
  %i.z = icmp sgt i32 %i.y, 536
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 32
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, 8
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0730.0.copyload, ptr %.sroa.2732.0.copyload, i1 noundef zeroext %i.z, i1 noundef zeroext %i.ad) ; 2 uses
  %.fca.0.extract726 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract727 = extractvalue { ptr, i32 } %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %i.ah = icmp ugt i32 %i.ag, 64
  br i1 %i.ah, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ai = load ptr, ptr %22, align 8, !tbaa !86   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #35
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %.critedge976

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = and i8 %i.al, 8
  %.not1663 = icmp eq i8 %i.am, 0
  br i1 %.not1663, label %bb.n, label %.critedge963

bb.n:                                             ; preds = %bb.m, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %.not.i1010 = icmp eq i16 %3, 0
  br i1 %.not.i1010, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = zext i16 %3 to i64
  %i.ao = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -16
  %.sroa.0.0.copyload.i.i1011 = load i64, ptr %i.ap, align 16
  %.sroa.2.0..sroa_idx.i.i1012 = getelementptr i8, ptr %i.ao, i64 -8
  %.sroa.2.0.copyload.i.i1013 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1012, align 8
  %.fca.0.insert.i.i1014 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1011, 0
  %.fca.1.insert.i.i1015 = insertvalue { i64, i8 } %.fca.0.insert.i.i1014, i8 %.sroa.2.0.copyload.i.i1013, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1017

bb.p:                                             ; preds = %bb.n
  %i.aq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1017

_ZNK4llvm3EVT13getSizeInBitsEv.exit1017:          ; preds = %bb.o, %bb.p
  %.pn.i1016 = phi { i64, i8 } [ %.fca.1.insert.i.i1015, %bb.o ], [ %i.aq, %bb.p ] ; 2 uses
  %.fca.1.extract723 = extractvalue { i64, i8 } %.pn.i1016, 1
  %i.ar = trunc nuw i8 %.fca.1.extract723 to i1
  br i1 %i.ar, label %bb.q, label %_ZNK4llvm8TypeSizecvmEv.exit1018

bb.q:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1017
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1018:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1017
  %.fca.0.extract722 = extractvalue { i64, i8 } %.pn.i1016, 0
  %i.as = trunc i64 %.fca.0.extract722 to i32
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %23, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i32 noundef %i.as) #32
  %.sroa.0719.0.copyload = load i16, ptr %21, align 8, !tbaa !97
  %.sroa.2721.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.at = load i32, ptr %i.n, align 8, !tbaa !88
  %i.au = icmp sgt i32 %i.at, 536
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 32
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 8
  %i.ay = icmp ne i8 %i.ax, 0
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0719.0.copyload, ptr %.sroa.2721.0.copyload, i1 noundef zeroext %i.au, i1 noundef zeroext %i.ay) ; 2 uses
  %.fca.0.extract715 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract716 = extractvalue { ptr, i32 } %i.az, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !101
  %i.bc = icmp ugt i32 %i.bb, 64
  br i1 %i.bc, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit1019

bb.r:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1018
  %i.bd = load ptr, ptr %23, align 8, !tbaa !86   ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN4llvm5APIntD2Ev.exit1019, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #35
  br label %_ZN4llvm5APIntD2Ev.exit1019

_ZN4llvm5APIntD2Ev.exit1019:                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1018, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %.critedge976

bb.t:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !319 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01545.0.copyload, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95
end_hunk_0
begin_hunk_1_@_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE:bb.a
  %.not1669 = icmp eq ptr %.fca.0.extract186, null
  br i1 %.not1669, label %.critedge1002, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.fca.1.extract187 = extractvalue { ptr, i32 } %i.aet, 1
  %.sroa.0183.0.copyload = load i16, ptr %21, align 8, !tbaa !97
  %.sroa.2185.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.aeu = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.0183.0.copyload, ptr %.sroa.2185.0.copyload, ptr nonnull %.fca.0.extract186, i32 %.fca.1.extract187) ; 2 uses
  %.fca.0.extract176 = extractvalue { ptr, i32 } %i.aeu, 0
  %.fca.1.extract177 = extractvalue { ptr, i32 } %i.aeu, 1
  br label %.critedge976

.critedge1002:                                    ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit.thread, %bb.hj, %bb.hi, %bb.gb, %bb.ga, %bb.fz, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, %_ZNK4llvm3EVT21getVectorElementCountEv.exit, %bb.hh, %bb.hk, %bb.gd
  %.sroa.0.0.insert.ext.i1823 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %_ZNK4llvm3EVT21getVectorElementCountEv.exit.thread ], [ %.sroa.0.0.insert.ext.i18221828, %bb.hj ], [ %.sroa.0.0.insert.ext.i18221828, %bb.hi ], [ %.sroa.0.0.insert.ext.i18221828, %bb.gb ], [ %.sroa.0.0.insert.ext.i18221828, %bb.ga ], [ %.sroa.0.0.insert.ext.i18221828, %bb.fz ], [ %.sroa.0.0.insert.ext.i, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit ], [ %.sroa.0.0.insert.ext.i, %_ZNK4llvm3EVT21getVectorElementCountEv.exit ], [ %.sroa.0.0.insert.ext.i18221828, %bb.gd ], [ %.sroa.0.0.insert.ext.i18221828, %bb.hh ], [ %.sroa.0.0.insert.ext.i18221828, %bb.hk ] ; 3 uses
  %i.aev = icmp eq i32 %1, 61
  switch i32 %1, label %bb.hy [
    i32 198, label %bb.hm
    i32 61, label %bb.hm
  ]

bb.hm:                                            ; preds = %.critedge1002, %.critedge1002
  %i.aew = load ptr, ptr %.sroa.0796.0.copyload, align 8, !tbaa !92
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 24
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !88
  %i.aez = icmp eq i32 %i.aey, 177
  br i1 %i.aez, label %bb.hn, label %bb.hy

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #32
  %i.afa = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  store i32 1, ptr %i.afa, align 8, !tbaa !101
  store i64 0, ptr %76, align 8, !tbaa !86
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.0796.0.copyload, i64 16
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !92
  %i.afd = call noundef zeroext i1 @_ZN4llvm3ISD21isConstantSplatVectorEPKNS_6SDNodeERNS_5APIntE(ptr noundef %i.afc, ptr noundef nonnull align 8 dereferenceable(12) %76)
  br i1 %i.afd, label %bb.ho, label %.critedge1004

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #32
  %i.afe = load ptr, ptr %.sroa.0796.0.copyload, align 8, !tbaa !92
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !89
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !92
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 88
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !104
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 24 ; 2 uses
  br i1 %i.aev, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %77, ptr noundef nonnull align 8 dereferenceable(12) %i.afk, ptr noundef nonnull align 8 dereferenceable(12) %76) #32
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  call void @_ZNK4llvm5APIntlsERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %77, ptr noundef nonnull align 8 dereferenceable(12) %i.afk, ptr noundef nonnull align 8 dereferenceable(12) %76)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.sroa.0173.0.copyload = load i16, ptr %21, align 8, !tbaa !97
  %.sroa.2175.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.afl = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getStepVectorERKNS_5SDLocENS_3EVTERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0173.0.copyload, ptr %.sroa.2175.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %77) ; 2 uses
  %.fca.0.extract169 = extractvalue { ptr, i32 } %i.afl, 0
  %.fca.1.extract170 = extractvalue { ptr, i32 } %i.afl, 1
  %i.afm = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !101
  %i.afo = icmp ugt i32 %i.afn, 64
  br i1 %i.afo, label %bb.hs, label %_ZN4llvm5APIntD2Ev.exit1316

bb.hs:                                            ; preds = %bb.hr
  %i.afp = load ptr, ptr %77, align 8, !tbaa !86  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %_ZN4llvm5APIntD2Ev.exit1316, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_ZdaPv(ptr noundef nonnull %i.afp) #35
  br label %_ZN4llvm5APIntD2Ev.exit1316

_ZN4llvm5APIntD2Ev.exit1316:                      ; preds = %bb.hr, %bb.hs, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #32
  %i.afr = load i32, ptr %i.afa, align 8, !tbaa !101
  %i.afs = icmp ugt i32 %i.afr, 64
  br i1 %i.afs, label %bb.hu, label %_ZN4llvm5APIntD2Ev.exit1317

bb.hu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1316
  %i.aft = load ptr, ptr %76, align 8, !tbaa !86  ; 2 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %_ZN4llvm5APIntD2Ev.exit1317, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_ZdaPv(ptr noundef nonnull %i.aft) #35
  br label %_ZN4llvm5APIntD2Ev.exit1317

_ZN4llvm5APIntD2Ev.exit1317:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1316, %bb.hu, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #32
  br label %.critedge976

.critedge1004:                                    ; preds = %bb.hn
  %i.afv = load i32, ptr %i.afa, align 8, !tbaa !101
  %i.afw = icmp ugt i32 %i.afv, 64
  br i1 %i.afw, label %bb.hw, label %_ZN4llvm5APIntD2Ev.exit1318

bb.hw:                                            ; preds = %.critedge1004
  %i.afx = load ptr, ptr %76, align 8, !tbaa !86  ; 2 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %_ZN4llvm5APIntD2Ev.exit1318, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZdaPv(ptr noundef nonnull %i.afx) #35
  br label %_ZN4llvm5APIntD2Ev.exit1318

_ZN4llvm5APIntD2Ev.exit1318:                      ; preds = %.critedge1004, %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #32
  br label %bb.hy

bb.hy:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1318, %.critedge1002, %bb.hm
  %i.afz = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZNS_12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTES3_NS_11SDNodeFlagsEE3$_2EEbOT_T0_"(ptr %.sroa.0796.0.copyload, i64 %i.i)
  br i1 %i.afz, label %bb.hz, label %.critedge976

bb.hz:                                            ; preds = %bb.hy
  %i.aga = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZNS_12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTES3_NS_11SDNodeFlagsEE3$_1EEbOT_T0_"(ptr %.sroa.0796.0.copyload, i64 %i.i, i64 %.sroa.0.0.insert.ext.i1823)
  br i1 %i.aga, label %bb.ia, label %.critedge976

bb.ia:                                            ; preds = %bb.hz
  %i.agb = icmp eq i32 %1, 222
  %i.agc = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %21) ; 2 uses
  %i.agd = extractvalue { i16, ptr } %i.agc, 0    ; 2 uses
  %i.age = extractvalue { i16, ptr } %i.agc, 1    ; 2 uses
  br i1 %i.agb, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %.not.i1319 = icmp ne i16 %i.agd, 2
  %i.agf = icmp ne ptr %i.age, null
  %i.agg = select i1 %.not.i1319, i1 true, i1 %i.agf
  br i1 %i.agg, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !319
  %.sroa.0161.0.copyload = load i16, ptr %21, align 8, !tbaa !97
  %.sroa.2163.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.agj = call noundef i32 @_ZNK4llvm18TargetLoweringBase18getBooleanContentsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.agi, i16 %.sroa.0161.0.copyload, ptr %.sroa.2163.0.copyload)
  %switch.offset.i = sub i32 229, %i.agj
  br label %bb.id

bb.id:                                            ; preds = %bb.ia, %bb.ib, %bb.ic
  %.sroa.01398.01631 = phi i16 [ 2, %bb.ic ], [ 2, %bb.ib ], [ %i.agd, %bb.ia ] ; 2 uses
  %.sroa.71401.01629 = phi ptr [ null, %bb.ic ], [ null, %bb.ib ], [ %i.age, %bb.ia ] ; 2 uses
  %i.agk = phi i32 [ %switch.offset.i, %bb.ic ], [ 227, %bb.ib ], [ 227, %bb.ia ]
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #32
  %i.agl = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %21) ; 2 uses
  %i.agm = extractvalue { i16, ptr } %i.agl, 0
  store i16 %i.agm, ptr %78, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 4 uses
  %i.ago = extractvalue { i16, ptr } %i.agl, 1
  store ptr %i.ago, ptr %i.agn, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 706 ; 2 uses
  %i.agq = load i8, ptr %i.agp, align 2, !tbaa !627, !range !59, !noundef !60
  %i.agr = trunc nuw i8 %i.agq to i1
  br i1 %i.agr, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.ags = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %78)
  br i1 %i.ags, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !319 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !364
  %.sroa.0155.0.copyload = load i16, ptr %78, align 8, !tbaa !97
  %.sroa.2157.0.copyload = load ptr, ptr %i.agn, align 8, !tbaa !99
  %i.agx = load ptr, ptr %i.agu, align 8, !tbaa !51
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 568
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = call { i16, ptr } %i.agz(ptr noundef nonnull align 8 dereferenceable(518435) %i.agu, ptr noundef nonnull align 8 dereferenceable(8) %i.agw, i16 %.sroa.0155.0.copyload, ptr %.sroa.2157.0.copyload) #32 ; 2 uses
  %i.ahb = extractvalue { i16, ptr } %i.aha, 0
  %i.ahc = extractvalue { i16, ptr } %i.aha, 1
  store i16 %i.ahb, ptr %78, align 8, !tbaa !97
  store ptr %i.ahc, ptr %i.agn, align 8, !tbaa !99
  %i.ahd = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %21) ; 2 uses
  %i.ahe = extractvalue { i16, ptr } %i.ahd, 0
  %i.ahf = extractvalue { i16, ptr } %i.ahd, 1
  %i.ahg = call noundef zeroext i1 @_ZNK4llvm3EVT6bitsLTES0_(ptr noundef nonnull align 8 dereferenceable(16) %78, i16 %i.ahe, ptr %i.ahf)
  br i1 %i.ahg, label %bb.js, label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie, %bb.id
  %i.ahh = and i64 %.sroa.0.0.insert.ext.i1823, 4294967296
  %.not1671 = icmp eq i64 %i.ahh, 0               ; 2 uses
  %.sroa.01443.0.extract.trunc1448 = trunc i64 %.sroa.0.0.insert.ext.i1823 to i32
  %spec.select1656 = select i1 %.not1671, i32 %.sroa.01443.0.extract.trunc1448, i32 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #32
  %i.ahi = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 3 uses
  store ptr %i.ahi, ptr %79, align 8, !tbaa !63
  %i.ahj = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 5 uses
  store i32 0, ptr %i.ahj, align 8, !tbaa !136
  %i.ahk = getelementptr inbounds nuw i8, ptr %79, i64 12 ; 2 uses
  store i32 4, ptr %i.ahk, align 4, !tbaa !137
  %.not9551691 = icmp eq i32 %spec.select1656, 0
  br i1 %.not9551691, label %.critedge1006, label %.lr.ph1696

.lr.ph1696:                                       ; preds = %bb.ig
  %i.ahl = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 11 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %80, i64 12 ; 4 uses
  %.idx1701 = shl nuw nsw i64 %i.i, 4
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.0796.0.copyload, i64 %.idx1701
  %.not9561686 = icmp eq i64 %i.i, 0
  %i.ahp = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %.sroa.41568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %83, i64 8
  %.sroa.41572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ii

bb.ih:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  %i.ahw = add nuw i32 %.09181693, 1              ; 2 uses
  %.not955 = icmp eq i32 %i.ahw, %spec.select1656
  br i1 %.not955, label %.critedge1006.loopexit, label %bb.ii, !llvm.loop !1362

bb.ii:                                            ; preds = %.lr.ph1696, %bb.ih
  %.09181693 = phi i32 [ 0, %.lr.ph1696 ], [ %i.ahw, %bb.ih ] ; 2 uses
  %.sroa.82.171692 = phi i32 [ %.sroa.82.11, %.lr.ph1696 ], [ %.sroa.82.23, %bb.ih ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #32
  store ptr %i.ahl, ptr %80, align 8, !tbaa !63
  store i32 0, ptr %i.ahm, align 8, !tbaa !136
  store i32 4, ptr %i.ahn, align 4, !tbaa !137
  br i1 %.not9561686, label %._crit_edge1690, label %.lr.ph1689

.lr.ph1689:                                       ; preds = %bb.ii, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread
  %.09191687 = phi ptr [ %i.akz, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread ], [ %.sroa.0796.0.copyload, %bb.ii ] ; 3 uses
  %.sroa.01391.0.copyload = load ptr, ptr %.09191687, align 8, !tbaa !109 ; 5 uses
  %.sroa.10.0..0919.sroa_idx = getelementptr inbounds nuw i8, ptr %.09191687, i64 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..0919.sroa_idx, align 8, !tbaa !114 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #32
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.01391.0.copyload, i64 48
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !95
  %i.ahz = zext i32 %.sroa.10.0.copyload to i64
  %i.aia = getelementptr inbounds nuw [16 x i8], ptr %i.ahy, i64 %i.ahz ; 2 uses
  %.sroa.0.0.copyload.i.i1320 = load i16, ptr %i.aia, align 8, !tbaa !97 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i1321 = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %.sroa.21.0.copyload.i.i1322 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1321, align 8, !tbaa !99 ; 2 uses
  %.fca.0.insert.i.i1323 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i1320, 0
  %.fca.1.insert.i.i1324 = insertvalue { i16, ptr } %.fca.0.insert.i.i1323, ptr %.sroa.21.0.copyload.i.i1322, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i1320, ptr %81, align 8
  store ptr %.sroa.21.0.copyload.i.i1322, ptr %i.ahp, align 8
  %.not.i.i1325 = icmp eq i16 %.sroa.0.0.copyload.i.i1320, 0
  br i1 %.not.i.i1325, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph1689
  %i.aib = add i16 %.sroa.0.0.copyload.i.i1320, -19
  %spec.select.i.i.i1326 = icmp ult i16 %i.aib, 197
  br i1 %spec.select.i.i.i1326, label %bb.ij, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %.lr.ph1689
  %i.aic = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %81) #33
  br i1 %i.aic, label %bb.ik, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.ij:                                            ; preds = %.split.i
  %i.aid = zext nneg i16 %.sroa.0.0.copyload.i.i1320 to i64
  %i.aie = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aid
  %i.aif = getelementptr i8, ptr %i.aie, i64 -2
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !97
  %i.aih = insertvalue { i16, ptr } poison, i16 %i.aig, 0
  %i.aii = insertvalue { i16, ptr } %i.aih, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.ik:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.aij = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %81) #32
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.ij, %bb.ik
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.aij, %bb.ik ], [ %i.aii, %bb.ij ], [ %.fca.1.insert.i.i1324, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.fca.1.insert.i.i1324, %.split.i ] ; 2 uses
  %i.aik = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 9 uses
  %i.ail = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #32
  %i.aim = getelementptr inbounds nuw i8, ptr %.sroa.01391.0.copyload, i64 24
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !88 ; 3 uses
  switch i32 %i.ain, label %bb.il [
    i32 162, label %bb.is
    i32 175, label %bb.is
  ]

bb.il:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.aio = add i32 %i.ain, -53
  %spec.select.i.i1327 = icmp ult i32 %i.aio, 2
  br i1 %spec.select.i.i1327, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.aip = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %i.aik, ptr %i.ail) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.aip, 0 ; 2 uses
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.aip, 1 ; 2 uses
  %i.aiq = load i32, ptr %i.ahm, align 8, !tbaa !136 ; 2 uses
  %i.air = load i32, ptr %i.ahn, align 4, !tbaa !137
  %.not.i1328 = icmp ult i32 %i.aiq, %i.air
  br i1 %.not.i1328, label %bb.io, label %bb.in, !prof !139

bb.in:                                            ; preds = %bb.im
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr %.fca.0.extract132, i32 %.fca.1.extract133)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

bb.io:                                            ; preds = %bb.im
  %i.ais = zext i32 %i.aiq to i64
  %i.ait = load ptr, ptr %80, align 8, !tbaa !63
  %i.aiu = getelementptr inbounds nuw [16 x i8], ptr %i.ait, i64 %i.ais ; 2 uses
  store ptr %.fca.0.extract132, ptr %i.aiu, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  store i32 %.fca.1.extract133, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.aiv = load i32, ptr %i.ahm, align 8, !tbaa !136
  %i.aiw = add i32 %i.aiv, 1
  store i32 %i.aiw, ptr %i.ahm, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

bb.ip:                                            ; preds = %bb.il
  %i.aix = load i32, ptr %i.ahm, align 8, !tbaa !136 ; 2 uses
  %i.aiy = load i32, ptr %i.ahn, align 4, !tbaa !137
  %.not.i1329 = icmp ult i32 %i.aix, %i.aiy
  br i1 %.not.i1329, label %bb.ir, label %bb.iq, !prof !139

bb.iq:                                            ; preds = %bb.ip
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr nonnull %.sroa.01391.0.copyload, i32 %.sroa.10.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

bb.ir:                                            ; preds = %bb.ip
  %i.aiz = zext i32 %i.aix to i64
  %i.aja = load ptr, ptr %80, align 8, !tbaa !63
  %i.ajb = getelementptr inbounds nuw [16 x i8], ptr %i.aja, i64 %i.aiz ; 2 uses
  store ptr %.sroa.01391.0.copyload, ptr %i.ajb, align 1
  %.sroa.32.0..sroa_idx.i1330 = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  store i32 %.sroa.10.0.copyload, ptr %.sroa.32.0..sroa_idx.i1330, align 1
  %i.ajc = load i32, ptr %i.ahm, align 8, !tbaa !136
  %i.ajd = add i32 %i.ajc, 1
  store i32 %i.ajd, ptr %i.ahm, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

bb.is:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit, %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.aje = icmp eq i32 %i.ain, 175
  %i.ajf = select i1 %i.aje, i32 0, i32 %.09181693
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.01391.0.copyload, i64 40
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !89
  %i.aji = zext i32 %i.ajf to i64
  %i.ajj = getelementptr inbounds nuw [40 x i8], ptr %i.ajh, i64 %i.aji ; 2 uses
  %.sroa.01378.0.copyload = load ptr, ptr %i.ajj, align 8, !tbaa !109 ; 8 uses
  %.sroa.91382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8 ; 2 uses
  %i.ajk = load <2 x i32>, ptr %.sroa.91382.0..sroa_idx, align 8
  %.sroa.91382.0.copyload = load i32, ptr %.sroa.91382.0..sroa_idx, align 8, !tbaa !114 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #32
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.01378.0.copyload, i64 48
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !95
  %i.ajn = zext i32 %.sroa.91382.0.copyload to i64
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %i.ajm, i64 %i.ajn ; 2 uses
  %.sroa.0.0.copyload.i.i1332 = load i16, ptr %i.ajo, align 8, !tbaa !97 ; 7 uses
  %.sroa.21.0..sroa_idx.i.i1333 = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %.sroa.21.0.copyload.i.i1334 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1333, align 8, !tbaa !99 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i1332, ptr %82, align 8
  store ptr %.sroa.21.0.copyload.i.i1334, ptr %i.ahq, align 8
  %.not.i1337 = icmp eq i16 %.sroa.0.0.copyload.i.i1332, 0
  br i1 %.not.i1337, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.split1632

.split1632:                                       ; preds = %bb.is
  %i.ajp = add i16 %.sroa.0.0.copyload.i.i1332, -2
  %or.cond.i.i = icmp ult i16 %i.ajp, 10
  %i.ajq = add i16 %.sroa.0.0.copyload.i.i1332, -19
  %or.cond3.i.i = icmp ult i16 %i.ajq, 86
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ajr = add i16 %.sroa.0.0.copyload.i.i1332, -163
  %spec.select.i.i1338 = icmp ult i16 %i.ajr, 32
  %i.ajs = or i1 %spec.select.i.i1338, %or.cond4.i.i
  br i1 %i.ajs, label %.thread1633, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %bb.is
  %i.ajt = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %82) #33
  br i1 %i.ajt, label %bb.it, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

bb.it:                                            ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit
  %.not.i.i.i = icmp eq i16 %i.aik, 0
  %i.aju = icmp eq ptr %.sroa.21.0.copyload.i.i1334, %i.ail
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.aju, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread, label %bb.iv

.thread1633:                                      ; preds = %.split1632
  %.not.i.i.i1634 = icmp eq i16 %.sroa.0.0.copyload.i.i1332, %i.aik
  %i.ajv = icmp eq ptr %.sroa.21.0.copyload.i.i1334, %i.ail
  %.not4.i.i1635 = select i1 %.not.i.i.i1634, i1 %i.ajv, i1 false
  br i1 %.not4.i.i1635, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread, label %bb.iu

bb.iu:                                            ; preds = %.thread1633
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i16 %i.aik, ptr %13, align 8
  store ptr %i.ail, ptr %i.ahr, align 8
  %i.ajw = zext nneg i16 %.sroa.0.0.copyload.i.i1332 to i64
  %i.ajx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ajw ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ajy, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.ajx, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.iv:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i16 %i.aik, ptr %13, align 8
  store ptr %i.ail, ptr %i.ahr, align 8
  %i.ajz = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %82) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.iv, %bb.iu
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.iu ], [ %i.ajz, %bb.iv ] ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.aik, 0
  br i1 %.not.i5.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.aka = zext i16 %i.aik to i64
  %i.akb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aka ; 2 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.akc, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.akb, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8
  %.fca.0.insert.i.i9.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i10.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

bb.ix:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.akd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #33
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

_ZNK4llvm3EVT6bitsGTES0_.exit:                    ; preds = %bb.iw, %bb.ix
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.iw ], [ %i.akd, %bb.ix ] ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %i.ake = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %i.akf = trunc nuw i8 %.fca.1.extract.i.i to i1
  %i.akg = icmp ugt i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %.not7.i.i.i = xor i1 %i.akf, true
  %not.or.cond.i.i.i = select i1 %i.ake, i1 true, i1 %.not7.i.i.i
  %.0.i.i.i1339 = select i1 %not.or.cond.i.i.i, i1 %i.akg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %.0.i.i.i1339, label %bb.iy, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

bb.iy:                                            ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit
  %i.akh = load i8, ptr %i.agp, align 2, !tbaa !627, !range !59, !noundef !60
  %i.aki = trunc nuw i8 %i.akh to i1
  br i1 %i.aki, label %bb.iz, label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.01378.0.copyload, i64 24
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !88 ; 2 uses
  %i.akl = add i32 %i.akk, -53
  %spec.select.i.i1341 = icmp ult i32 %i.akl, 2
  br i1 %spec.select.i.i1341, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  switch i32 %i.akk, label %bb.jb [
    i32 37, label %bb.jc
    i32 12, label %bb.jc
  ]

bb.jb:                                            ; preds = %bb.ja
  %i.akm = load ptr, ptr %i.ahs, align 8, !tbaa !319
  %i.akn = load ptr, ptr %i.aht, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.946") align 8 %12, ptr noundef nonnull align 8 dereferenceable(518435) %i.akm, ptr noundef nonnull align 8 dereferenceable(8) %i.akn, i16 %i.aik, ptr %i.ail) #32
  %i.ako = load i8, ptr %12, align 8, !tbaa !626
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %.not959 = icmp eq i8 %i.ako, 0
  br i1 %.not959, label %bb.jc, label %bb.jg

bb.jc:                                            ; preds = %bb.ja, %bb.ja, %bb.jb, %bb.iz, %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.akp = load ptr, ptr %i.ahu, align 8, !tbaa !604 ; 2 uses
  %.not.i1343 = icmp eq ptr %i.akp, null
  br i1 %.not.i1343, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %.sroa.0.0.copyload.i.i1344 = load i32, ptr %i.akq, align 8, !tbaa !114
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346: ; preds = %bb.jc, %bb.jd
  %.sroa.01570.0 = phi i32 [ 0, %bb.jc ], [ %.sroa.0.0.copyload.i.i1344, %bb.jd ]
  store ptr %.sroa.01378.0.copyload, ptr %11, align 8, !tbaa !109
  store <2 x i32> %i.ajk, ptr %.sroa.41568.0..sroa_idx, align 8
  %i.akr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.aik, ptr %i.ail, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, i32 %.sroa.01570.0), !inline_history !605 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.fca.0.extract113 = extractvalue { ptr, i32 } %i.akr, 0
  %.fca.1.extract114 = extractvalue { ptr, i32 } %i.akr, 1
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

_ZNK4llvm3EVT6bitsGTES0_.exit.thread:             ; preds = %.thread1633, %bb.it, %.split1632, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346, %_ZNK4llvm3EVT6bitsGTES0_.exit, %_ZNK4llvm3EVT9isIntegerEv.exit
  %.sroa.91382.0 = phi i32 [ %.fca.1.extract114, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346 ], [ %.sroa.91382.0.copyload, %_ZNK4llvm3EVT6bitsGTES0_.exit ], [ %.sroa.91382.0.copyload, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ %.sroa.91382.0.copyload, %.split1632 ], [ %.sroa.91382.0.copyload, %bb.it ], [ %.sroa.91382.0.copyload, %.thread1633 ] ; 2 uses
  %.sroa.01378.0 = phi ptr [ %.fca.0.extract113, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1346 ], [ %.sroa.01378.0.copyload, %_ZNK4llvm3EVT6bitsGTES0_.exit ], [ %.sroa.01378.0.copyload, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ %.sroa.01378.0.copyload, %.split1632 ], [ %.sroa.01378.0.copyload, %bb.it ], [ %.sroa.01378.0.copyload, %.thread1633 ] ; 2 uses
  %i.aks = load i32, ptr %i.ahm, align 8, !tbaa !136 ; 2 uses
  %i.akt = load i32, ptr %i.ahn, align 4, !tbaa !137
  %.not.i1347 = icmp ult i32 %i.aks, %i.akt
  br i1 %.not.i1347, label %bb.jf, label %bb.je, !prof !139

bb.je:                                            ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr %.sroa.01378.0, i32 %.sroa.91382.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1644

bb.jf:                                            ; preds = %_ZNK4llvm3EVT6bitsGTES0_.exit.thread
  %i.aku = zext i32 %i.aks to i64
  %i.akv = load ptr, ptr %80, align 8, !tbaa !63
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.akv, i64 %i.aku ; 2 uses
  store ptr %.sroa.01378.0, ptr %i.akw, align 1
  %.sroa.32.0..sroa_idx.i1348 = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i32 %.sroa.91382.0, ptr %.sroa.32.0..sroa_idx.i1348, align 1
  %i.akx = load i32, ptr %i.ahm, align 8, !tbaa !136
  %i.aky = add i32 %i.akx, 1
  store i32 %i.aky, ptr %i.ahm, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1644

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1644: ; preds = %bb.je, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread: ; preds = %bb.ir, %bb.iq, %bb.in, %bb.io, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread1644
  %i.akz = getelementptr inbounds nuw i8, ptr %.09191687, i64 16 ; 2 uses
  %.not956 = icmp eq ptr %i.akz, %i.aho
  br i1 %.not956, label %._crit_edge1690.loopexit, label %.lr.ph1689

bb.jg:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358

._crit_edge1690.loopexit:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.thread
  %.pre1719 = load ptr, ptr %80, align 8, !tbaa !63
  %.pre1720 = load i32, ptr %i.ahm, align 8, !tbaa !136
  %84 = zext i32 %.pre1720 to i64
  br label %._crit_edge1690

._crit_edge1690:                                  ; preds = %._crit_edge1690.loopexit, %bb.ii
  %85 = phi i64 [ %84, %._crit_edge1690.loopexit ], [ 0, %bb.ii ]
  %86 = phi ptr [ %.pre1719, %._crit_edge1690.loopexit ], [ %i.ahl, %bb.ii ]
  store ptr %86, ptr %83, align 8, !tbaa !617
  store i64 %85, ptr %i.ahv, align 8, !tbaa !618
  %i.ala = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.01398.01631, ptr %.sroa.71401.01629, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %83, i32 %6) ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i32 } %i.ala, 0 ; 3 uses
  %.fca.1.extract103 = extractvalue { ptr, i32 } %i.ala, 1 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.fca.0.extract102, i64 24
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !88
  switch i32 %i.alc, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358 [
    i32 54, label %bb.jh
    i32 53, label %bb.jh
    i32 13, label %bb.jh
    i32 12, label %bb.jh
  ]

bb.jh:                                            ; preds = %._crit_edge1690, %._crit_edge1690, %._crit_edge1690, %._crit_edge1690
  %i.ald = load i16, ptr %78, align 8, !tbaa !108 ; 2 uses
  %.not.i1351 = icmp ne i16 %i.ald, %.sroa.01398.01631
  %i.ale = load ptr, ptr %i.agn, align 8          ; 2 uses
  %i.alf = icmp ne ptr %i.ale, %.sroa.71401.01629
  %i.alg = select i1 %.not.i1351, i1 true, i1 %i.alf
  br i1 %i.alg, label %bb.ji, label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.alh = load ptr, ptr %i.ahu, align 8, !tbaa !604 ; 2 uses
  %.not.i1352 = icmp eq ptr %i.alh, null
  br i1 %.not.i1352, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.sroa.0.0.copyload.i.i1353 = load i32, ptr %i.ali, align 8, !tbaa !114
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355: ; preds = %bb.ji, %bb.jj
  %.sroa.01574.0 = phi i32 [ 0, %bb.ji ], [ %.sroa.0.0.copyload.i.i1353, %bb.jj ]
  store ptr %.fca.0.extract102, ptr %10, align 8, !tbaa !109
  store i32 %.fca.1.extract103, ptr %.sroa.41572.0..sroa_idx, align 8, !tbaa !114
  %i.alj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef %i.agk, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.ald, ptr %i.ale, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, i32 %.sroa.01574.0), !inline_history !605 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract91 = extractvalue { ptr, i32 } %i.alj, 0
  %.fca.1.extract92 = extractvalue { ptr, i32 } %i.alj, 1
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355, %bb.jh
  %.sroa.9.0 = phi i32 [ %.fca.1.extract92, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355 ], [ %.fca.1.extract103, %bb.jh ] ; 2 uses
  %.sroa.01373.0 = phi ptr [ %.fca.0.extract91, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit1355 ], [ %.fca.0.extract102, %bb.jh ] ; 2 uses
  %i.alk = load i32, ptr %i.ahj, align 8, !tbaa !136 ; 2 uses
  %i.all = load i32, ptr %i.ahk, align 4, !tbaa !137
  %.not.i1356 = icmp ult i32 %i.alk, %i.all
  br i1 %.not.i1356, label %bb.jm, label %bb.jl, !prof !139

bb.jl:                                            ; preds = %bb.jk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr %.sroa.01373.0, i32 %.sroa.9.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358

bb.jm:                                            ; preds = %bb.jk
  %i.alm = zext i32 %i.alk to i64
  %i.aln = load ptr, ptr %79, align 8, !tbaa !63
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.aln, i64 %i.alm ; 2 uses
  store ptr %.sroa.01373.0, ptr %i.alo, align 1
  %.sroa.32.0..sroa_idx.i1357 = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.32.0..sroa_idx.i1357, align 1
  %i.alp = load i32, ptr %i.ahj, align 8, !tbaa !136
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.ahj, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358: ; preds = %._crit_edge1690, %bb.jl, %bb.jm, %bb.jg
  %.sroa.82.23 = phi i32 [ 0, %bb.jg ], [ 0, %._crit_edge1690 ], [ %.sroa.82.171692, %bb.jl ], [ %.sroa.82.171692, %bb.jm ] ; 2 uses
  %cond2 = phi i1 [ false, %bb.jg ], [ false, %._crit_edge1690 ], [ true, %bb.jl ], [ true, %bb.jm ]
  %i.alr = load ptr, ptr %80, align 8, !tbaa !63  ; 2 uses
  %i.als = icmp eq ptr %i.alr, %i.ahl
  br i1 %i.als, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.jn

bb.jn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358
  call void @free(ptr noundef %i.alr) #32
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1358, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  br i1 %cond2, label %bb.ih, label %.loopexit

.critedge1006.loopexit:                           ; preds = %bb.ih
  %.pre1839 = load ptr, ptr %79, align 8, !tbaa !63
  br label %.critedge1006

.critedge1006:                                    ; preds = %.critedge1006.loopexit, %bb.ig
  %i.alt = phi ptr [ %.pre1839, %.critedge1006.loopexit ], [ %i.ahi, %bb.ig ] ; 3 uses
  %.sroa.075.0.copyload = load i16, ptr %21, align 8, !tbaa !97 ; 2 uses
  %.sroa.277.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !99 ; 2 uses
  br i1 %.not1671, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %.critedge1006
  %.sroa.082.0.copyload = load ptr, ptr %i.alt, align 8, !tbaa !109
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %.sroa.283.0.copyload = load i32, ptr %.sroa.283.0..sroa_idx, align 8, !tbaa !114
  %i.alu = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSplatVectorENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %.sroa.075.0.copyload, ptr %.sroa.277.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.082.0.copyload, i32 %.sroa.283.0.copyload) ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.alu, 0
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.alu, 1
  br label %.loopexit

bb.jp:                                            ; preds = %.critedge1006
  %i.alv = load i32, ptr %i.ahj, align 8, !tbaa !136
  %i.alw = zext i32 %i.alv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !604 ; 2 uses
  %.not.i1368 = icmp eq ptr %i.aly, null
  br i1 %.not.i1368, label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  %.sroa.0.0.copyload.i.i1369 = load i32, ptr %i.alz, align 8, !tbaa !114
  br label %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371

_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371: ; preds = %bb.jp, %bb.jq
  %.sroa.01585.0 = phi i32 [ 0, %bb.jp ], [ %.sroa.0.0.copyload.i.i1369, %bb.jq ]
  store ptr %i.alt, ptr %7, align 8, !tbaa !630
  %.sroa.41584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.alw, ptr %.sroa.41584.0..sroa_idx, align 8, !tbaa !111
  %i.ama = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.075.0.copyload, ptr %.sroa.277.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.122") align 8 %7, i32 %.sroa.01585.0), !inline_history !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ama, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ama, 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.jo, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371
  %.sroa.82.25 = phi i32 [ %.fca.1.extract, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371 ], [ %.fca.1.extract79, %bb.jo ], [ %.sroa.82.23, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %.sroa.01556.25 = phi ptr [ %.fca.0.extract, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE.exit1371 ], [ %.fca.0.extract78, %bb.jo ], [ null, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %i.amb = load ptr, ptr %79, align 8, !tbaa !63  ; 2 uses
  %i.amc = icmp eq ptr %i.amb, %i.ahi
  br i1 %i.amc, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360, label %bb.jr

bb.jr:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.amb) #32
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360: ; preds = %.loopexit, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #32
  br label %bb.js

bb.js:                                            ; preds = %bb.if, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360
  %.sroa.82.26 = phi i32 [ %.sroa.82.25, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360 ], [ 0, %bb.if ]
  %.sroa.01556.26 = phi ptr [ %.sroa.01556.25, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit1360 ], [ null, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #32
  br label %.critedge976

.critedge988:                                     ; preds = %bb.ff, %bb.fe, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit, %bb.en, %bb.em, %_ZN4llvm5APIntC2ERKS0_.exit1181, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.rv, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit ], [ %i.qu, %bb.en ], [ %i.qu, %_ZN4llvm5APIntC2ERKS0_.exit1181 ], [ %i.qu, %bb.em ], [ %i.ts, %_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE.exit ], [ %i.ts, %bb.fe ], [ %i.ts, %bb.ff ] ; 2 uses
  %.sroa.01556.29 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.82.29 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32
  br label %.critedge976

.critedge976:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit1167, %.critedge971, %_ZN4llvm5APIntD2Ev.exit1019, %_ZN4llvm5APIntD2Ev.exit1032, %_ZN4llvm5APIntD2Ev.exit1042, %_ZN4llvm5APIntD2Ev.exit1043, %bb.ak, %_ZN4llvm5APIntD2Ev.exit1044, %_ZN4llvm5APIntD2Ev.exit1045, %_ZN4llvm5APIntD2Ev.exit1046, %_ZNK4llvm5APInt8popcountEv.exit, %_ZNK4llvm5APInt11countl_zeroEv.exit, %_ZNK4llvm5APInt11countr_zeroEv.exit, %bb.bd, %_ZN4llvm5APIntD2Ev.exit1058, %_ZN4llvm5APIntD2Ev.exit1059, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.br, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %bb.js, %bb.hl, %_ZN4llvm9BitVectorD2Ev.exit1306, %_ZN4llvm5APIntD2Ev.exit1317, %bb.hz, %bb.hy, %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %bb.fy, %_ZN4llvm5APIntD2Ev.exit1206, %bb.fl, %bb.fk, %bb.fj, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, %bb.ed, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1170, %bb.b, %bb.a, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1173, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.d, %bb.eb, %.critedge988
  %.sroa.82.30 = phi i32 [ 0, %bb.hy ], [ 0, %bb.a ], [ %.fca.1.extract790, %bb.d ], [ %.fca.1.extract432, %bb.eb ], [ %.sroa.82.29, %.critedge988 ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ 0, %bb.fj ], [ %.fca.1.extract305, %bb.fy ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1170 ], [ %.fca.1.extract401, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1173 ], [ %.fca.1.extract410, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ 0, %bb.b ], [ %.sroa.82.51794, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ 0, %bb.ed ], [ %.fca.1.extract322, %_ZN4llvm5APIntD2Ev.exit1206 ], [ 0, %bb.fl ], [ 0, %bb.fk ], [ 0, %.split ], [ %.fca.1.extract170, %_ZN4llvm5APIntD2Ev.exit1317 ], [ %.sroa.82.26, %bb.js ], [ %.fca.1.extract177, %bb.hl ], [ %.fca.1.extract196, %_ZN4llvm9BitVectorD2Ev.exit1306 ], [ 0, %bb.hz ], [ %.fca.1.extract570, %bb.ca ], [ %.sroa.82.3, %_ZN4llvm5APIntD2Ev.exit1167 ], [ %.sroa.82.1, %.critedge971 ], [ %.fca.1.extract727, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.1.extract716, %_ZN4llvm5APIntD2Ev.exit1019 ], [ %.fca.1.extract700, %_ZN4llvm5APIntD2Ev.exit1032 ], [ %.fca.1.extract689, %_ZN4llvm5APIntD2Ev.exit1042 ], [ %.fca.1.extract682, %_ZN4llvm5APIntD2Ev.exit1043 ], [ %.fca.1.extract675, %bb.ak ], [ %.fca.1.extract668, %_ZN4llvm5APIntD2Ev.exit1044 ], [ %.fca.1.extract661, %_ZN4llvm5APIntD2Ev.exit1045 ], [ %.fca.1.extract654, %_ZN4llvm5APIntD2Ev.exit1046 ], [ %.fca.1.extract647, %_ZNK4llvm5APInt8popcountEv.exit ], [ %.fca.1.extract640, %_ZNK4llvm5APInt11countl_zeroEv.exit ], [ %.fca.1.extract633, %_ZNK4llvm5APInt11countr_zeroEv.exit ], [ %.fca.1.extract626, %bb.bd ], [ %.fca.1.extract615, %_ZN4llvm5APIntD2Ev.exit1058 ], [ %.fca.1.extract608, %_ZN4llvm5APIntD2Ev.exit1059 ], [ %.fca.1.extract598, %bb.br ], [ %.fca.1.extract591, %bb.bu ], [ %.fca.1.extract584, %bb.bw ], [ %.fca.1.extract577, %bb.by ], [ 0, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread ]
  %.sroa.01556.30 = phi ptr [ null, %bb.hy ], [ null, %bb.a ], [ %.fca.0.extract789, %bb.d ], [ %.fca.0.extract431, %bb.eb ], [ %.sroa.01556.29, %.critedge988 ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %bb.fj ], [ %.fca.0.extract304, %bb.fy ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit1170 ], [ %.fca.0.extract400, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit1173 ], [ %.fca.0.extract409, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ null, %bb.b ], [ %.sroa.01556.51795, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ null, %bb.ed ], [ %.fca.0.extract321, %_ZN4llvm5APIntD2Ev.exit1206 ], [ null, %bb.fl ], [ null, %bb.fk ], [ null, %.split ], [ %.fca.0.extract169, %_ZN4llvm5APIntD2Ev.exit1317 ], [ %.sroa.01556.26, %bb.js ], [ %.fca.0.extract176, %bb.hl ], [ %.fca.0.extract195, %_ZN4llvm9BitVectorD2Ev.exit1306 ], [ null, %bb.hz ], [ %.fca.0.extract569, %bb.ca ], [ %.sroa.01556.3, %_ZN4llvm5APIntD2Ev.exit1167 ], [ %.sroa.01556.1, %.critedge971 ], [ %.fca.0.extract726, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.0.extract715, %_ZN4llvm5APIntD2Ev.exit1019 ], [ %.fca.0.extract699, %_ZN4llvm5APIntD2Ev.exit1032 ], [ %.fca.0.extract688, %_ZN4llvm5APIntD2Ev.exit1042 ], [ %.fca.0.extract681, %_ZN4llvm5APIntD2Ev.exit1043 ], [ %.fca.0.extract674, %bb.ak ], [ %.fca.0.extract667, %_ZN4llvm5APIntD2Ev.exit1044 ], [ %.fca.0.extract660, %_ZN4llvm5APIntD2Ev.exit1045 ], [ %.fca.0.extract653, %_ZN4llvm5APIntD2Ev.exit1046 ], [ %.fca.0.extract646, %_ZNK4llvm5APInt8popcountEv.exit ], [ %.fca.0.extract639, %_ZNK4llvm5APInt11countl_zeroEv.exit ], [ %.fca.0.extract632, %_ZNK4llvm5APInt11countr_zeroEv.exit ], [ %.fca.0.extract625, %bb.bd ], [ %.fca.0.extract614, %_ZN4llvm5APIntD2Ev.exit1058 ], [ %.fca.0.extract607, %_ZN4llvm5APIntD2Ev.exit1059 ], [ %.fca.0.extract597, %bb.br ], [ %.fca.0.extract590, %bb.bu ], [ %.fca.0.extract583, %bb.bw ], [ %.fca.0.extract576, %bb.by ], [ null, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.01556.30, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.82.30, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL16FoldBUILD_VECTORRKN4llvm5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEERNS_12SelectionDAGE(i16 %0, ptr %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %.idx1.i = shl nuw nsw i64 %3, 4                ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx1.i
  %i.b = lshr i64 %3, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.g, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.c = and i64 %.idx1.i, 9223372036854775744
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %2, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.d = phi i1 [ true, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ]
  %.064.i.i.i.i.i = phi i64 [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.02963.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.f ] ; 9 uses
  %.029.val45.i.i.i.i.i = load ptr, ptr %.02963.i.i.i.i.i, align 8, !tbaa !109
  %i.e = getelementptr i8, ptr %.029.val45.i.i.i.i.i, i64 24
  %.029.val45.val.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !88 ; 2 uses
  %i.f = icmp eq i32 %.029.val45.val.i.i.i.i.i, 54
  %i.g = and i1 %i.d, %i.f                        ; 2 uses
  %i.h = add i32 %.029.val45.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.h, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.loopexit.split.loop.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %.val42.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %.val42.i.i.i.i.i, i64 24
  %.val42.val.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !88 ; 2 uses
  %i.k = icmp eq i32 %.val42.val.i.i.i.i.i, 54
  %i.l = and i1 %i.g, %i.k                        ; 2 uses
  %i.m = add i32 %.val42.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i47.i.i.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i.i47.i.i.i.i.i, label %.loopexit.split.loop.exit54.i.i.i.i.i, label %bb.d
end_hunk_1
begin_hunk_2_@_ZL18foldCONCAT_VECTORSRKN4llvm5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEERNS_12SelectionDAGE:bb.a
  %i.ay = zext i1 %i.ax to i8                     ; 2 uses
  %i.az = add i32 %.2.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i52.i.i.i.i.i = icmp ult i32 %i.az, -2
  br i1 %spec.select.i.i.i.i52.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

.loopexit.split.loop.exit.i.i.i.i.i:              ; preds = %bb.d
  %i.ba = zext i1 %i.i to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

.loopexit.split.loop.exit54.i.i.i.i.i:            ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 16
  %i.bc = zext i1 %i.n to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

.loopexit.split.loop.exit56.i.i.i.i.i:            ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 32
  %i.be = zext i1 %i.s to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

.loopexit.split.loop.exit58.i.i.i.i.i:            ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i.i, i64 48
  %i.bg = zext i1 %i.x to i8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %bb.j, %bb.l, %bb.n, %.loopexit.split.loop.exit.i.i.i.i.i, %.loopexit.split.loop.exit54.i.i.i.i.i, %.loopexit.split.loop.exit56.i.i.i.i.i, %.loopexit.split.loop.exit58.i.i.i.i.i
  %.2 = phi i8 [ %i.bg, %.loopexit.split.loop.exit58.i.i.i.i.i ], [ %i.ak, %bb.j ], [ %i.ar, %bb.l ], [ %i.ay, %bb.n ], [ %i.ba, %.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.bc, %.loopexit.split.loop.exit54.i.i.i.i.i ], [ %i.be, %.loopexit.split.loop.exit56.i.i.i.i.i ]
  %.028.i.i.i.i.i = phi ptr [ %i.bf, %.loopexit.split.loop.exit58.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.j ], [ %.1.i.i.i.i.i, %bb.l ], [ %.2.i.i.i.i.i, %bb.n ], [ %.02963.i.i.i.i.i, %.loopexit.split.loop.exit.i.i.i.i.i ], [ %i.bb, %.loopexit.split.loop.exit54.i.i.i.i.i ], [ %i.bd, %.loopexit.split.loop.exit56.i.i.i.i.i ]
  %i.bh = icmp eq ptr %i.c, %.028.i.i.i.i.i
  br i1 %i.bh, label %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %bb.q

"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.n, %bb.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %.2447 = phi i8 [ %.2, %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit" ], [ %.0, %bb.i ], [ %i.ay, %bb.n ]
  %i.bi = trunc nuw i8 %.2447 to i1
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %1, ptr %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %.fca.0.extract134 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract135 = extractvalue { ptr, i32 } %i.bj, 1
  br label %.loopexit

bb.p:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %1, ptr %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %.fca.0.extract127 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract128 = extractvalue { ptr, i32 } %i.bk, 1
  br label %.loopexit

bb.q:                                             ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefINS_7SDValueEEEZL18foldCONCAT_VECTORSRKNS_5SDLocENS_3EVTES3_RNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.bl = and i64 %4, 4294967295
  %.not490 = icmp eq i64 %i.bl, 0
  br i1 %.not490, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bn = and i64 %4, 4294967295
  br label %bb.s

bb.r:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.bn
  br i1 %.not, label %.loopexit, label %bb.s, !llvm.loop !1511

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.sroa.0377.0492 = phi ptr [ null, %.lr.ph ], [ %i.ce, %bb.r ] ; 2 uses
  %.sroa.7380.0491 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.r ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %.sroa.0371.0.copyload = load ptr, ptr %i.bo, align 8, !tbaa !109 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !95
  %i.br = zext i32 %.sroa.9.0.copyload to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.bs, align 8, !tbaa !97 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i, ptr %24, align 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.bm, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.bu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !632
  %i.bx = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.bx, 53
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %spec.select.i.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %i.bw to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

bb.u:                                             ; preds = %bb.s
  %i.by = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #33
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit:    ; preds = %bb.t, %bb.u
  %.sroa.0.0.in.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.t ], [ %i.by, %bb.u ]
  %i.bz = mul i64 %indvars.iv, %.sroa.0.0.in.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !88
  %.not163 = icmp eq i32 %i.cb, 167
  br i1 %.not163, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0371.0.copyload, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !92 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !115 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cj = zext i32 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %.sroa.0.0.copyload.i.i174 = load i16, ptr %i.ck, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.21.0.copyload.i.i176 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i175, align 8, !tbaa !99
  %.not.i179 = icmp ne i16 %.sroa.0.0.copyload.i.i174, %1
  %i.cl = icmp ne ptr %.sroa.21.0.copyload.i.i176, %2
  %i.cm = select i1 %.not.i179, i1 true, i1 %i.cl
  br i1 %i.cm, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not458 = icmp eq ptr %.sroa.0377.0492, null
  br i1 %.not458, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = icmp ne ptr %i.ce, %.sroa.0377.0492
  %i.co = icmp ne i32 %i.cg, %.sroa.7380.0491
  %.not3.i = or i1 %i.cn, %i.co
  br i1 %.not3.i, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !101
  %i.cw = icmp ult i32 %i.cv, 65
  %i.cx = load ptr, ptr %i.ct, align 8
  %spec.select.i.i.i.i.i = select i1 %i.cw, ptr %i.ct, ptr %i.cx
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !86
  %i.cy = and i64 %i.bz, 4294967295
  %.not164 = icmp eq i64 %.0.i.i.i.i.i, %i.cy
  br i1 %.not164, label %bb.r, label %.thread

.thread:                                          ; preds = %.critedge, %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit, %bb.v, %bb.x
  %.not.i180 = icmp eq i16 %1, 0
  br i1 %.not.i180, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split

.split:                                           ; preds = %.thread
  %i.cz = add i16 %1, -163
  %spec.select.i.i = icmp ult i16 %i.cz, 53
  br i1 %spec.select.i.i, label %.loopexit, label %.split.i

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %.thread
  %i.da = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #33
  br i1 %i.da, label %.loopexit, label %_ZNK4llvm3EVT8isVectorEv.exit.i

.split.i:                                         ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.db = add i16 %1, -19
  %spec.select.i.i.i = icmp ult i16 %i.db, 197
  br i1 %spec.select.i.i.i, label %bb.y, label %bb.aa

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.dc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #33
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %.split.i
  %i.dd = zext nneg i16 %1 to i64
  %i.de = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !97
  %i.dh = insertvalue { i16, ptr } poison, i16 %i.dg, 0
  %i.di = insertvalue { i16, ptr } %i.dh, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.z:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.dj = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #32
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.aa:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %i.dk = insertvalue { i16, ptr } poison, i16 %1, 0
  %i.dl = insertvalue { i16, ptr } %i.dk, ptr %2, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.y, %bb.z, %bb.aa
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.dl, %bb.aa ], [ %i.di, %bb.y ], [ %i.dj, %bb.z ] ; 2 uses
  %i.dm = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  store i16 %i.dm, ptr %25, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 10 uses
  %i.do = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.do, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.dp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  store ptr %i.dp, ptr %26, align 8, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 19 uses
  store i32 0, ptr %i.dq, align 8, !tbaa !136
  %i.dr = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 5 uses
  store i32 16, ptr %i.dr, align 4, !tbaa !137
  %.not165495 = icmp eq i64 %4, 0
  br i1 %.not165495, label %._crit_edge, label %.lr.ph497

.lr.ph497:                                        ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph497, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0160496 = phi ptr [ %3, %.lr.ph497 ], [ %i.ii, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 3 uses
  %.sroa.0359.0.copyload = load ptr, ptr %.0160496, align 8, !tbaa !109 ; 5 uses
  %.sroa.13.0..0160.sroa_idx = getelementptr inbounds nuw i8, ptr %.0160496, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..0160.sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0359.0.copyload, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !95
  %i.du = zext i32 %.sroa.13.0.copyload to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  %.sroa.0.0.copyload.i.i182 = load i16, ptr %i.dv, align 8, !tbaa !97 ; 10 uses
  %.sroa.21.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.21.0.copyload.i.i184 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i183, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i182, ptr %27, align 8
  store ptr %.sroa.21.0.copyload.i.i184, ptr %28, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0359.0.copyload, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !88
  switch i32 %i.dx, label %.critedge170 [
    i32 54, label %bb.ac
    i32 53, label %bb.ag
    i32 162, label %bb.ak
    i32 163, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i187 = icmp eq i16 %.sroa.0.0.copyload.i.i182, 0
  br i1 %.not.i.i187, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i188

.split.i188:                                      ; preds = %bb.ac
  %i.dy = add i16 %.sroa.0.0.copyload.i.i182, -163
  %spec.select.i.i.i189 = icmp ult i16 %i.dy, 53
  br i1 %spec.select.i.i.i189, label %bb.ad, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.ac
  %i.dz = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i188
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i188
  %i.ea = zext i16 %.sroa.0.0.copyload.i.i182 to i64
  %i.eb = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !632
  %i.ee = zext i16 %i.ed to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.ae:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.ef = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.ae
  %i.eg = phi i32 [ %i.ee, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.ef, %bb.ae ] ; 4 uses
  %i.eh = zext i32 %i.eg to i64                   ; 4 uses
  %.sroa.0103.0.copyload = load i16, ptr %25, align 8, !tbaa !97
  %.sroa.2105.0.copyload = load ptr, ptr %i.dn, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %20, i16 %.sroa.0103.0.copyload, ptr %.sroa.2105.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.fca.0.extract99 = extractvalue { ptr, i32 } %i.ei, 0 ; 9 uses
  %.fca.1.extract100 = extractvalue { ptr, i32 } %i.ei, 1 ; 9 uses
  %i.ej = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = add nuw nsw i64 %i.ek, %i.eh            ; 2 uses
  %i.em = load i32, ptr %i.dr, align 4, !tbaa !137
  %i.en = zext i32 %i.em to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.el, %i.en
  br i1 %.not.i.i.i, label %bb.af, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i, !prof !113

bb.af:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull %i.dp, i64 noundef %i.el, i64 noundef 16) #32
  %.pre.i = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %.pre5.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i: ; preds = %bb.af, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.pre-phi.i = phi i64 [ %i.ek, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.pre5.i, %bb.af ]
  %i.eo = phi i32 [ %i.ej, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.pre.i, %bb.af ]
  %.not7.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i
  %i.ep = load ptr, ptr %26, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.pre-phi.i ; 2 uses
  %xtraiter623 = and i64 %i.eh, 7                 ; 2 uses
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  br i1 %lcmp.mod624.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.es, %.lr.ph.i.i.i.i.prol ], [ %i.eq, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.prol ], [ %i.eh, %.lr.ph.i.i.i.preheader.i ]
  %prol.iter625 = phi i64 [ %prol.iter625.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i ]
  store ptr %.fca.0.extract99, ptr %.09.i.i.i.i.prol, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.prol, align 8, !tbaa !114
  %i.er = add nsw i64 %.068.i.i.i.i.prol, -1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter625.next = add i64 %prol.iter625, 1   ; 2 uses
  %prol.iter625.cmp.not = icmp eq i64 %prol.iter625.next, %xtraiter623
  br i1 %prol.iter625.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1512

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i
  %.09.i.i.i.i.unr = phi ptr [ %i.eq, %.lr.ph.i.i.i.preheader.i ], [ %i.es, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.eh, %.lr.ph.i.i.i.preheader.i ], [ %i.er, %.lr.ph.i.i.i.i.prol ]
  %i.et = icmp ult i32 %i.eg, 8
  br i1 %i.et, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract99, ptr %.09.i.i.i.i, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i, align 8, !tbaa !114
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr %.fca.0.extract99, ptr %i.eu, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.1, align 8, !tbaa !114
  %i.ev = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store ptr %.fca.0.extract99, ptr %i.ev, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.2, align 8, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  store ptr %.fca.0.extract99, ptr %i.ew, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.3, align 8, !tbaa !114
  %i.ex = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64
  store ptr %.fca.0.extract99, ptr %i.ex, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.4, align 8, !tbaa !114
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  store ptr %.fca.0.extract99, ptr %i.ey, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.5, align 8, !tbaa !114
  %i.ez = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96
  store ptr %.fca.0.extract99, ptr %i.ez, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 104
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.6, align 8, !tbaa !114
  %i.fa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112
  store ptr %.fca.0.extract99, ptr %i.fa, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 120
  store i32 %.fca.1.extract100, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.7, align 8, !tbaa !114
  %i.fb = add nsw i64 %.068.i.i.i.i, -8           ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 128
  %.not.i.i.i.i.7 = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i.i.i.7, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre4.i = load i32, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i
  %i.fd = phi i32 [ %.pre4.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i ]
  %i.fe = add i32 %i.fd, %i.eg
  store i32 %i.fe, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ag:                                            ; preds = %bb.ab
  %.not.i.i190 = icmp eq i16 %.sroa.0.0.copyload.i.i182, 0
  br i1 %.not.i.i190, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i194, label %.split.i191

.split.i191:                                      ; preds = %bb.ag
  %i.ff = add i16 %.sroa.0.0.copyload.i.i182, -163
  %spec.select.i.i.i192 = icmp ult i16 %i.ff, 53
  br i1 %spec.select.i.i.i192, label %bb.ah, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i193

_ZNK4llvm3EVT16isScalableVectorEv.exit.i194:      ; preds = %bb.ag
  %i.fg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i194, %.split.i191
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i193:  ; preds = %.split.i191
  %i.fh = zext i16 %.sroa.0.0.copyload.i.i182 to i64
  %i.fi = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !632
  %i.fl = zext i16 %i.fk to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit195

bb.ai:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i194
  %i.fm = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit195

_ZNK4llvm3EVT20getVectorNumElementsEv.exit195:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i193, %bb.ai
  %i.fn = phi i32 [ %i.fl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i193 ], [ %i.fm, %bb.ai ] ; 4 uses
  %i.fo = zext i32 %i.fn to i64                   ; 4 uses
  %.sroa.094.0.copyload = load i16, ptr %25, align 8, !tbaa !97
  %.sroa.296.0.copyload = load ptr, ptr %i.dn, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %19, i16 %.sroa.094.0.copyload, ptr %.sroa.296.0.copyload) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %.fca.0.extract90 = extractvalue { ptr, i32 } %i.fp, 0 ; 9 uses
  %.fca.1.extract91 = extractvalue { ptr, i32 } %i.fp, 1 ; 9 uses
  %i.fq = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = add nuw nsw i64 %i.fr, %i.fo            ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL18foldCONCAT_VECTORSRKN4llvm5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEERNS_12SelectionDAGE:bb.a
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 24
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.1, align 8, !tbaa !114
  %i.gc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 32
  store ptr %.fca.0.extract90, ptr %i.gc, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 40
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.2, align 8, !tbaa !114
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 48
  store ptr %.fca.0.extract90, ptr %i.gd, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 56
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.3, align 8, !tbaa !114
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 64
  store ptr %.fca.0.extract90, ptr %i.ge, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 72
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.4, align 8, !tbaa !114
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 80
  store ptr %.fca.0.extract90, ptr %i.gf, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 88
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.5, align 8, !tbaa !114
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 96
  store ptr %.fca.0.extract90, ptr %i.gg, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 104
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.6, align 8, !tbaa !114
  %i.gh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 112
  store ptr %.fca.0.extract90, ptr %i.gh, align 8, !tbaa !109
  %.sroa.2.0..09.i.i.i.sroa_idx.i204.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 120
  store i32 %.fca.1.extract91, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i204.7, align 8, !tbaa !114
  %i.gi = add nsw i64 %.068.i.i.i.i203, -8        ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i202, i64 128
  %.not.i.i.i.i205.7 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i.i205.7, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i206, label %.lr.ph.i.i.i.i201, !llvm.loop !19

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i206: ; preds = %.lr.ph.i.i.i.i201, %.lr.ph.i.i.i.i201.prol.loopexit
  %.pre4.i207 = load i32, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit210

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit210: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i197, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i206
  %i.gk = phi i32 [ %.pre4.i207, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i206 ], [ %i.fv, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i197 ]
  %i.gl = add i32 %i.gk, %i.fn
  store i32 %i.gl, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.ak:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0359.0.copyload, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !89 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0359.0.copyload, i64 64
  %i.gp = load i16, ptr %i.go, align 8, !tbaa !105 ; 3 uses
  %i.gq = zext i16 %i.gp to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.gq, 40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx
  %i.gs = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = add nuw nsw i64 %i.gt, %i.gq            ; 2 uses
  %i.gv = load i32, ptr %i.dr, align 4, !tbaa !137
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ugt i64 %i.gu, %i.gw
  br i1 %i.gx, label %bb.al, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull %i.dp, i64 noundef %i.gu, i64 noundef 16) #32
  %.pre.i213 = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %.pre9.i = zext i32 %.pre.i213 to i64
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i: ; preds = %bb.al, %bb.ak
  %.pre-phi.i211 = phi i64 [ %i.gt, %bb.ak ], [ %.pre9.i, %bb.al ]
  %i.gy = phi i32 [ %i.gs, %bb.ak ], [ %.pre.i213, %bb.al ]
  %.not9.i.i.i.i.i = icmp eq i16 %i.gp, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i
  %i.gz = load ptr, ptr %26, align 8, !tbaa !63
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.pre-phi.i211
  br label %.lr.ph.i.i.i.i.i212

.lr.ph.i.i.i.i.i212:                              ; preds = %.lr.ph.i.i.i.i.i212, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i212 ], [ %i.ha, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i212 ], [ %i.gn, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !661
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, %i.gr
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i212, !llvm.loop !1514

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i212
  %.pre8.i = load i32, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit.i
  %i.hd = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPNS_5SDUseEPS1_EEvT_S7_T0_.exit.loopexit.i ], [ %i.gy, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.he = zext i16 %i.gp to i32
  %i.hf = add i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.am:                                            ; preds = %bb.ab
  %.not.i.i214 = icmp eq i16 %.sroa.0.0.copyload.i.i182, 0
  br i1 %.not.i.i214, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i218, label %.split.i215

.split.i215:                                      ; preds = %bb.am
  %i.hg = add i16 %.sroa.0.0.copyload.i.i182, -163
  %spec.select.i.i.i216 = icmp ult i16 %i.hg, 53
  br i1 %spec.select.i.i.i216, label %bb.an, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i217

_ZNK4llvm3EVT16isScalableVectorEv.exit.i218:      ; preds = %bb.am
  %i.hh = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br i1 %i.hh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i218, %.split.i215
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i217:  ; preds = %.split.i215
  %i.hi = zext i16 %.sroa.0.0.copyload.i.i182 to i64
  %i.hj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !632
  %i.hm = zext i16 %i.hl to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit219

bb.ao:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i218
  %i.hn = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit219

_ZNK4llvm3EVT20getVectorNumElementsEv.exit219:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i217, %bb.ao
  %i.ho = phi i32 [ %i.hm, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i217 ], [ %i.hn, %bb.ao ]
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.ap, label %.critedge170

bb.ap:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit219
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0359.0.copyload, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !89 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  %.sroa.087.0.copyload = load ptr, ptr %i.hs, align 8, !tbaa !109 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !88
  switch i32 %i.hu, label %.critedge170 [
    i32 37, label %_ZN4llvm14isNullConstantENS_7SDValueE.exit
    i32 12, label %_ZN4llvm14isNullConstantENS_7SDValueE.exit
  ]

_ZN4llvm14isNullConstantENS_7SDValueE.exit:       ; preds = %bb.ap, %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 88
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !104
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = icmp slt i8 %i.hy, 0
  br i1 %i.hz, label %bb.aq, label %.critedge170

bb.aq:                                            ; preds = %_ZN4llvm14isNullConstantENS_7SDValueE.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %.sroa.084.0.copyload = load ptr, ptr %i.ia, align 8, !tbaa !109 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %.sroa.285.0.copyload = load i32, ptr %.sroa.285.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  %i.ib = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %i.ic = load i32, ptr %i.dr, align 4, !tbaa !137
  %.not.i220 = icmp ult i32 %i.ib, %i.ic
  br i1 %.not.i220, label %bb.as, label %bb.ar, !prof !139

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr %.sroa.084.0.copyload, i32 %.sroa.285.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.as:                                            ; preds = %bb.aq
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %26, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.id ; 2 uses
  store ptr %.sroa.084.0.copyload, ptr %i.if, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i32 %.sroa.285.0.copyload, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ig = load i32, ptr %i.dq, align 8, !tbaa !136
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.dq, align 8, !tbaa !136
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

.critedge170:                                     ; preds = %bb.ab, %bb.ap, %_ZN4llvm14isNullConstantENS_7SDValueE.exit, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.cj

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.as, %bb.ar, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPNS_5SDUseEvEEvT_S6_.exit, %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.ii = getelementptr inbounds nuw i8, ptr %.0160496, i64 16 ; 2 uses
  %.not165 = icmp eq ptr %i.ii, %i.c
  br i1 %.not165, label %.critedge172, label %bb.ab

.critedge172:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre = load ptr, ptr %26, align 8, !tbaa !63   ; 2 uses
  %.pre529 = load i32, ptr %i.dq, align 8, !tbaa !136 ; 2 uses
  %i.ij = zext i32 %.pre529 to i64
  %.idx507 = shl nuw nsw i64 %i.ij, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx507
  %.not166499 = icmp eq i32 %.pre529, 0
  br i1 %.not166499, label %._crit_edge, label %.lr.ph501

.lr.ph501:                                        ; preds = %.critedge172
  %.promoted498 = load ptr, ptr %i.dn, align 8
  %.promoted = load i16, ptr %25, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 2 ; 2 uses
  br label %bb.bb

._crit_edge:                                      ; preds = %bb.bi, %_ZNK4llvm3EVT13getScalarTypeEv.exit, %.critedge172
  %i.im = load i16, ptr %23, align 8, !tbaa !108  ; 4 uses
  %.not.i.i221 = icmp eq i16 %i.im, 0
  br i1 %.not.i.i221, label %_ZNK4llvm3EVT8isVectorEv.exit.i227, label %.split.i222

.split.i222:                                      ; preds = %._crit_edge
  %i.in = add i16 %i.im, -19
  %spec.select.i.i.i223 = icmp ult i16 %i.in, 197
  br i1 %spec.select.i.i.i223, label %bb.at, label %bb.av

_ZNK4llvm3EVT8isVectorEv.exit.i227:               ; preds = %._crit_edge
  %i.io = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #33
  br i1 %i.io, label %bb.au, label %bb.av

bb.at:                                            ; preds = %.split.i222
  %i.ip = zext nneg i16 %i.im to i64
  %i.iq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 -2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !97
  %i.it = insertvalue { i16, ptr } poison, i16 %i.is, 0
  %i.iu = insertvalue { i16, ptr } %i.it, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit228

bb.au:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i227
  %i.iv = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #32
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit228

bb.av:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i227, %.split.i222
  %.sroa.31.0.copyload.i225 = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.iw = insertvalue { i16, ptr } poison, i16 %i.im, 0
  %i.ix = insertvalue { i16, ptr } %i.iw, ptr %.sroa.31.0.copyload.i225, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit228

_ZNK4llvm3EVT13getScalarTypeEv.exit228:           ; preds = %bb.at, %bb.au, %bb.av
  %.fca.1.insert.merged.i226 = phi { i16, ptr } [ %i.ix, %bb.av ], [ %i.iu, %bb.at ], [ %i.iv, %bb.au ] ; 2 uses
  %i.iy = extractvalue { i16, ptr } %.fca.1.insert.merged.i226, 0 ; 4 uses
  %i.iz = extractvalue { i16, ptr } %.fca.1.insert.merged.i226, 1 ; 2 uses
  %i.ja = load i16, ptr %25, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i229 = icmp eq i16 %i.ja, %i.iy
  %i.jb = load ptr, ptr %i.dn, align 8
  %i.jc = icmp eq ptr %i.jb, %i.iz
  %.not4.i.i = select i1 %.not.i.i.i229, i1 %i.jc, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit228
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store i16 %i.iy, ptr %18, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.iz, ptr %i.jd, align 8
  %.not.i.i8.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i.i8.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.je = zext i16 %i.ja to i64
  %i.jf = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.je ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.jg, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.jf, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.jh = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.ay, %bb.ax
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.ax ], [ %i.jh, %bb.ay ] ; 2 uses
  %.not.i5.i.i = icmp eq i16 %i.iy, 0
  br i1 %.not.i5.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.ji = zext i16 %i.iy to i64
  %i.jj = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.jk, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.jj, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8
  %.fca.0.insert.i.i9.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i10.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

bb.ba:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.jl = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %18) #33
  br label %_ZNK4llvm3EVT6bitsGTES0_.exit

_ZNK4llvm3EVT6bitsGTES0_.exit:                    ; preds = %bb.az, %bb.ba
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.az ], [ %i.jl, %bb.ba ] ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %i.jm = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %i.jn = trunc nuw i8 %.fca.1.extract.i.i to i1
  %i.jo = icmp ugt i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %.not7.i.i.i = xor i1 %i.jn, true
  %not.or.cond.i.i.i = select i1 %i.jm, i1 true, i1 %.not7.i.i.i
  %.0.i.i.i = select i1 %not.or.cond.i.i.i, i1 %i.jo, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br i1 %.0.i.i.i, label %bb.bj, label %_ZNK4llvm3EVT6bitsGTES0_.exit.thread

bb.bb:                                            ; preds = %.lr.ph501, %bb.bi
  %.0161500 = phi ptr [ %.pre, %.lr.ph501 ], [ %i.kj, %bb.bi ] ; 3 uses
  %i.jp = phi i16 [ %.promoted, %.lr.ph501 ], [ %.sroa.071.0, %bb.bi ] ; 4 uses
  %i.jq = phi ptr [ %.promoted498, %.lr.ph501 ], [ %.sroa.575.0, %bb.bi ] ; 2 uses
  %.sroa.0356.0.copyload = load ptr, ptr %.0161500, align 8, !tbaa !109
  %.sroa.5.0..0161.sroa_idx = getelementptr inbounds nuw i8, ptr %.0161500, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..0161.sroa_idx, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.573)
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0356.0.copyload, i64 48 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !95
  %i.jt = zext i32 %.sroa.5.0.copyload to i64     ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.jt ; 2 uses
  %.sroa.0.0.copyload.i.i230 = load i16, ptr %i.ju, align 8, !tbaa !97 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.sroa.21.0.copyload.i.i232 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i231, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i235 = icmp eq i16 %i.jp, %.sroa.0.0.copyload.i.i230
  %i.jv = icmp eq ptr %i.jq, %.sroa.21.0.copyload.i.i232
  %.not4.i.i236 = select i1 %.not.i.i.i235, i1 %i.jv, i1 false
  br i1 %.not4.i.i236, label %_ZNK4llvm3EVT6bitsLTES0_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store i16 %.sroa.0.0.copyload.i.i230, ptr %17, align 8
  store ptr %.sroa.21.0.copyload.i.i232, ptr %i.il, align 8
  %.not.i.i8.i237 = icmp eq i16 %i.jp, 0
  br i1 %.not.i.i8.i237, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jw = zext i16 %i.jp to i64
  %i.jx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.jw ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -16
  %.sroa.0.0.copyload.i.i.i.i238 = load i64, ptr %i.jy, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i239 = getelementptr i8, ptr %i.jx, i64 -8
  %.sroa.2.0.copyload.i.i.i.i240 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i239, align 8
  %.fca.0.insert.i.i.i.i241 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i238, 0
  %.fca.1.insert.i.i.i.i242 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i241, i8 %.sroa.2.0.copyload.i.i.i.i240, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i243

bb.be:                                            ; preds = %bb.bc
  %i.jz = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #33
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i243

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i243:       ; preds = %bb.be, %bb.bd
  %.pn.i.i.i244 = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i242, %bb.bd ], [ %i.jz, %bb.be ] ; 2 uses
  %.not.i5.i.i245 = icmp eq i16 %.sroa.0.0.copyload.i.i230, 0
  br i1 %.not.i5.i.i245, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i243
  %i.ka = zext i16 %.sroa.0.0.copyload.i.i230 to i64
  %i.kb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ka ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i246 = load i64, ptr %i.kc, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i247 = getelementptr i8, ptr %i.kb, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i248 = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i247, align 8
  %.fca.0.insert.i.i9.i.i249 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i246, 0
  %.fca.1.insert.i.i10.i.i250 = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i249, i8 %.sroa.2.0.copyload.i.i8.i.i248, 1
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit

bb.bg:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i243
  %i.kd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #33
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit

_ZNK4llvm3EVT6bitsLTES0_.exit:                    ; preds = %bb.bf, %bb.bg
  %.pn.i11.i.i251 = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i250, %bb.bf ], [ %i.kd, %bb.bg ] ; 2 uses
  %.fca.1.extract2.i.i252 = extractvalue { i64, i8 } %.pn.i.i.i244, 1
  %.fca.0.extract1.i.i253 = extractvalue { i64, i8 } %.pn.i.i.i244, 0
  %.fca.0.extract.i.i254 = extractvalue { i64, i8 } %.pn.i11.i.i251, 0
  %.fca.1.extract.i.i255 = extractvalue { i64, i8 } %.pn.i11.i.i251, 1
  %i.ke = trunc nuw i8 %.fca.1.extract2.i.i252 to i1
  %.not.i13.i.i = xor i1 %i.ke, true
  %i.kf = trunc nuw i8 %.fca.1.extract.i.i255 to i1
  %or.cond.i.i.i = select i1 %.not.i13.i.i, i1 true, i1 %i.kf
  %i.kg = icmp ult i64 %.fca.0.extract1.i.i253, %.fca.0.extract.i.i254
  %.0.i.i.i256 = select i1 %or.cond.i.i.i, i1 %i.kg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %.0.i.i.i256, label %bb.bh, label %_ZNK4llvm3EVT6bitsLTES0_.exit.thread

bb.bh:                                            ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit
  %i.kh = load ptr, ptr %i.jr, align 8, !tbaa !95
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %i.jt ; 2 uses
  %.sroa.0.0.copyload.i.i258 = load i16, ptr %i.ki, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i259 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.21.0.copyload.i.i260 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i259, align 8, !tbaa !99
  br label %bb.bi

_ZNK4llvm3EVT6bitsLTES0_.exit.thread:             ; preds = %bb.bb, %_ZNK4llvm3EVT6bitsLTES0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.573, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.573.0..sroa_idx, i64 6, i1 false), !tbaa.struct !1515
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit.thread, %bb.bh
  %.sroa.071.0 = phi i16 [ %.sroa.0.0.copyload.i.i258, %bb.bh ], [ %i.jp, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread ] ; 2 uses
  %.sroa.575.0 = phi ptr [ %.sroa.21.0.copyload.i.i260, %bb.bh ], [ %i.jq, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread ] ; 2 uses
  store i16 %.sroa.071.0, ptr %25, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.573, i64 6, i1 false), !tbaa.struct !1515
  store ptr %.sroa.575.0, ptr %i.dn, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.573)
  %i.kj = getelementptr inbounds nuw i8, ptr %.0161500, i64 16 ; 2 uses
  %.not166 = icmp eq ptr %i.kj, %i.ik
  br i1 %.not166, label %._crit_edge, label %bb.bb
end_hunk_3
