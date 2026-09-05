Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvm21SystemZTargetLowering20combineSELECT_CCMASKEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !436  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !190
  %i.t = icmp ult i32 %i.s, 65
  %i.u = load ptr, ptr %i.q, align 8
  %spec.select.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.u
  %.0.i.i.i79 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !166
  %i.v = trunc i64 %.0.i.i.i79 to i32
  store i32 %i.v, ptr %i.a, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !436  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !190
  %i.ab = icmp ult i32 %i.aa, 65
  %i.ac = load ptr, ptr %i.y, align 8
  %spec.select.i.i.i80 = select i1 %i.ab, ptr %i.y, ptr %i.ac
  %.0.i.i.i81 = load i64, ptr %spec.select.i.i.i80, align 8, !tbaa !166
  %i.ad = trunc i64 %.0.i.i.i81 to i32
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !437
  %i.af = call fastcc noundef zeroext i1 @_ZL13combineCCMaskRN4llvm7SDValueERiS2_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(920) %i.d) ; 3 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !642 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call fastcc void @_ZL21simplifyAssumingCCValRN4llvm7SDValueES1_RNS_12SelectionDAGE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call fastcc void @_ZL21simplifyAssumingCCValRN4llvm7SDValueES1_RNS_12SelectionDAGE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !192
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call fastcc void @"_ZZNK4llvm21SystemZTargetLowering20combineSELECT_CCMASKEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERNS_7SDValueE"(ptr dead_on_unwind noalias writable align 8 %8, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SDValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %8) ; 0 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.al) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !192
  %.not.i82 = icmp eq i32 %i.ap, 0
  br i1 %.not.i82, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call fastcc void @"_ZZNK4llvm21SystemZTargetLowering20combineSELECT_CCMASKEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_0clERNS_7SDValueE"(ptr dead_on_unwind noalias writable align 8 %9, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(12) %5)
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SDValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(80) %9) ; 0 uses
  %i.ar = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit83, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ar) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit83

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit83: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.pre = load i32, ptr %i.ao, align 8
  %i.au = icmp eq i32 %.pre, 0
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit83, %bb.f
  %.not.i85 = phi i1 [ %i.au, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit83 ], [ false, %bb.f ]
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !192
  %.not.i84 = icmp eq i32 %i.av, 0
  %or.cond = select i1 %.not.i84, i1 true, i1 %.not.i85
  %.pre170 = load i32, ptr %i.b, align 4          ; 8 uses
  br i1 %or.cond, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.aw, ptr %10, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !192
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.ay, align 4, !tbaa !193
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 3 uses
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !41
  %i.be = load i32, ptr %i.a, align 4, !tbaa !165 ; 5 uses
  %i.bf = and i32 %i.be, 8
  %.not74 = icmp eq i32 %i.bf, 0
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = and i32 %.pre170, 8
  %.not75 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr %6, align 8
  %i.bi = load ptr, ptr %7, align 8
  %i.bj = select i1 %.not75, ptr %i.bi, ptr %i.bh
  call void @_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.599") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = and i32 %i.be, 4
  %.not74.1 = icmp eq i32 %i.bk, 0
  br i1 %.not74.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = and i32 %.pre170, 4
  %.not75.1 = icmp eq i32 %i.bl, 0
  %i.bm = load ptr, ptr %6, align 8
  %i.bn = load ptr, ptr %7, align 8
  %.v = select i1 %.not75.1, ptr %i.bn, ptr %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.v, i64 16
  call void @_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.599") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bo)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = and i32 %i.be, 2
  %.not74.2 = icmp eq i32 %i.bp, 0
  br i1 %.not74.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = and i32 %.pre170, 2
  %.not75.2 = icmp eq i32 %i.bq, 0
  %i.br = load ptr, ptr %6, align 8
  %i.bs = load ptr, ptr %7, align 8
  %.v179.a = select i1 %.not75.2, ptr %i.bs, ptr %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.v179.a, i64 32
  call void @_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.599") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bt)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = and i32 %i.be, 1
  %.not74.3 = icmp eq i32 %i.bu, 0
  br i1 %.not74.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = and i32 %.pre170, 1
  %.not75.3 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %6, align 8
  %i.bx = load ptr, ptr %7, align 8
  %.v180 = select i1 %.not75.3, ptr %i.bx, ptr %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.v180, i64 48
  call void @_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj4ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.599") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.by)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = load i64, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0                    ; 6 uses
  %i.cb = load i32, ptr %i.ax, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = select i1 %i.ca, i64 %i.cc, i64 %i.bz   ; 2 uses
  %.not73 = icmp eq i64 %i.cd, 1                  ; 2 uses
  br i1 %.not73, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val160 = load ptr, ptr %10, align 8
  %.val161 = load ptr, ptr %i.bb, align 8
  %.sink1.i = select i1 %i.ca, ptr %.val160, ptr %.val161
  %.idx.i = select i1 %i.ca, i64 0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink1.i, i64 %.idx.i ; 2 uses
  %.sroa.0140.0.copyload = load ptr, ptr %i.ce, align 8, !tbaa !423
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.9143.0.copyload = load i32, ptr %.sroa.9143.0..sroa_idx, align 8, !tbaa !165
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.cf = icmp eq i64 %i.cd, 2
  br i1 %i.cf, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %.val = load ptr, ptr %10, align 8              ; 2 uses
  %.val159 = load ptr, ptr %i.bb, align 8         ; 2 uses
  %.sink1.i89 = select i1 %i.ca, ptr %.val, ptr %.val159
  %.idx.i90 = select i1 %i.ca, i64 0, i64 32      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink1.i89, i64 %.idx.i90 ; 2 uses
  %.sroa.0113.0.copyload = load ptr, ptr %i.cg, align 8, !tbaa !423 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !165 ; 3 uses
  br i1 %i.ca, label %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i.preheader, label %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.preheader.i

_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i.preheader: ; preds = %bb.u
  %scevgep.i = getelementptr i8, ptr %.val, i64 16
  br label %_ZSt9__advanceIN4llvm16SmallSetIteratorINS0_7SDValueELj4ESt4lessIS2_EEElEvRT_T0_St18input_iterator_tag.exit

_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.preheader.i: ; preds = %bb.u
  %17 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.val159) #28, !noalias !1376
  br label %_ZSt9__advanceIN4llvm16SmallSetIteratorINS0_7SDValueELj4ESt4lessIS2_EEElEvRT_T0_St18input_iterator_tag.exit

_ZSt9__advanceIN4llvm16SmallSetIteratorINS0_7SDValueELj4ESt4lessIS2_EEElEvRT_T0_St18input_iterator_tag.exit: ; preds = %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.preheader.i, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i.preheader
  %.sroa.099.0 = phi ptr [ %scevgep.i, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.i.preheader ], [ %17, %_ZN4llvm16SmallSetIteratorINS_7SDValueELj4ESt4lessIS1_EEppEv.exit.us.preheader.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 %.idx.i90 ; 2 uses
  %.sroa.0103.0.copyload = load ptr, ptr %i.ch, align 8, !tbaa !423 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !165 ; 3 uses
  %i.ci = load ptr, ptr %5, align 8
  %i.cj = icmp eq ptr %.sroa.0113.0.copyload, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp eq i32 %.sroa.9.0.copyload, %i.cl
  %i.cn = select i1 %i.cj, i1 %i.cm, i1 false
  br i1 %i.cn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt9__advanceIN4llvm16SmallSetIteratorINS0_7SDValueELj4ESt4lessIS2_EEElEvRT_T0_St18input_iterator_tag.exit
  %i.co = load ptr, ptr %4, align 8
  %i.cp = icmp eq ptr %.sroa.0103.0.copyload, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = icmp eq i32 %.sroa.7.0.copyload, %i.cr
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_ZSt9__advanceIN4llvm16SmallSetIteratorINS0_7SDValueELj4ESt4lessIS2_EEElEvRT_T0_St18input_iterator_tag.exit
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.9.0 = phi i32 [ %.sroa.7.0.copyload, %bb.w ], [ %.sroa.9.0.copyload, %bb.v ] ; 5 uses
  %.sroa.0113.0 = phi ptr [ %.sroa.0103.0.copyload, %bb.w ], [ %.sroa.0113.0.copyload, %bb.v ] ; 5 uses
  %.sroa.7.0 = phi i32 [ %.sroa.9.0.copyload, %bb.w ], [ %.sroa.7.0.copyload, %bb.v ]
  %.sroa.0103.0 = phi ptr [ %.sroa.0113.0.copyload, %bb.w ], [ %.sroa.0103.0.copyload, %bb.v ]
  %i.cu = load ptr, ptr %6, align 8               ; 4 uses
  %i.cv = load ptr, ptr %7, align 8               ; 4 uses
  %i.cw = insertelement <4 x i32> poison, i32 %.pre170, i64 0
  %i.cx = shufflevector <4 x i32> %i.cw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cy = and <4 x i32> %i.cx, <i32 1, i32 2, i32 4, i32 8>
  %i.cz = icmp eq <4 x i32> %i.cy, zeroinitializer ; 4 uses
  %i.da = extractelement <4 x i1> %i.cz, i64 3
  %. = select i1 %i.da, ptr %i.cv, ptr %i.cu      ; 2 uses
  %i.db = load ptr, ptr %., align 8, !tbaa !422
  %i.dc = icmp eq ptr %i.db, %.sroa.0113.0
  %i.dd = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = icmp eq i32 %i.de, %.sroa.9.0
  %i.dg = select i1 %i.dc, i1 %i.df, i1 false
  %i.dh = select i1 %i.dg, i32 2, i32 0
  %i.di = extractelement <4 x i1> %i.cz, i64 2
  %.sink193 = select i1 %i.di, ptr %i.cv, ptr %i.cu ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink193, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !422
  %i.dl = icmp eq ptr %i.dk, %.sroa.0113.0
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink193, i64 24
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp eq i32 %i.dn, %.sroa.9.0
  %i.dp = select i1 %i.dl, i1 %i.do, i1 false
  %i.dq = zext i1 %i.dp to i32
  %i.dr = or disjoint i32 %i.dh, %i.dq
  %i.ds = extractelement <4 x i1> %i.cz, i64 1
  %.sink201 = select i1 %i.ds, ptr %i.cv, ptr %i.cu ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sink201, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !422
  %i.dv = icmp eq ptr %i.du, %.sroa.0113.0
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink201, i64 40
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = icmp eq i32 %i.dx, %.sroa.9.0
  %i.dz = select i1 %i.dv, i1 %i.dy, i1 false
  %i.ea = shl nuw nsw i32 %i.dr, 2
  %i.eb = select i1 %i.dz, i32 2, i32 0
  %i.ec = or disjoint i32 %i.ea, %i.eb
  %i.ed = extractelement <4 x i1> %i.cz, i64 0
  %.sink209 = select i1 %i.ed, ptr %i.cv, ptr %i.cu ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink209, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !422
  %i.eg = icmp eq ptr %i.ef, %.sroa.0113.0
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink209, i64 56
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp eq i32 %i.ei, %.sroa.9.0
  %i.ek = select i1 %i.eg, i1 %i.ej, i1 false
  %i.el = zext i1 %i.ek to i32
  %i.em = or disjoint i32 %i.ec, %i.el
  %i.en = and i32 %i.be, %i.em
  store ptr %.sroa.0113.0, ptr %4, align 8
  %.sroa.9.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx120, align 8
  store ptr %.sroa.0103.0, ptr %5, align 8
  store i32 %.sroa.7.0, ptr %i.ck, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.s
  %i.eo = phi i32 [ %.pre170, %bb.s ], [ %i.en, %bb.x ], [ %.pre170, %bb.t ]
  %.sroa.9143.0 = phi i32 [ %.sroa.9143.0.copyload, %bb.s ], [ undef, %bb.x ], [ undef, %bb.t ]
  %.sroa.0140.0 = phi ptr [ %.sroa.0140.0.copyload, %bb.s ], [ undef, %bb.x ], [ undef, %bb.t ]
  %.1 = phi i1 [ %i.af, %bb.s ], [ true, %bb.x ], [ %i.af, %bb.t ]
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.eq = load ptr, ptr %i.ba, align 8, !tbaa !38
  call void @_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, ptr noundef %i.eq)
  %i.er = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.aw
  br i1 %i.es, label %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.er) #27
  br label %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit

_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.not73, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit, %bb.i
  %i.et = phi i32 [ %.pre170, %bb.i ], [ %i.eo, %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit ] ; 3 uses
  %.2 = phi i1 [ %i.af, %bb.i ], [ %.1, %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit ]
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0140.0.copyload141 = load ptr, ptr %5, align 8
  %.sroa.9143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.9143.0.copyload145 = load i32, ptr %.sroa.9143.0..sroa_idx144, align 8
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !165 ; 2 uses
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0140.0.copyload142 = load ptr, ptr %4, align 8
  %.sroa.9143.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9143.0.copyload147 = load i32, ptr %.sroa.9143.0..sroa_idx146, align 8
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  br i1 %.2, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !200 ; 2 uses
  store i64 %i.ey, ptr %12, align 8, !tbaa !200
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !430 ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !432
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !396 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.fd, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !179
  %i.fe = sext i32 %i.ev to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i64 %i.ey, ptr %14, align 8, !tbaa !200
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.fb, ptr %i.ff, align 8, !tbaa !432
  %i.fg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.fg, 1
  store ptr %.fca.0.extract6, ptr %13, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.fh = sext i32 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.fi = load i64, ptr %i.ex, align 8, !tbaa !200
  store i64 %i.fi, ptr %16, align 8, !tbaa !200
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fk = load i32, ptr %i.fa, align 4, !tbaa !430
  store i32 %i.fk, ptr %i.fj, align 8, !tbaa !432
  %i.fl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i64 noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.fl, 1
  store ptr %.fca.0.extract2, ptr %15, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.25.0..sroa_idx, align 8
  %i.fm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.d, i32 noundef 590, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit, %bb.af, %bb.ad, %bb.ab
  %.sroa.9143.1 = phi i32 [ %.sroa.9143.0.copyload145, %bb.ab ], [ %.sroa.9143.0.copyload147, %bb.ad ], [ %.fca.1.extract, %bb.af ], [ %.sroa.9143.0, %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit ], [ 0, %bb.ae ]
  %.sroa.0140.1 = phi ptr [ %.sroa.0140.0.copyload141, %bb.ab ], [ %.sroa.0140.0.copyload142, %bb.ad ], [ %.fca.0.extract, %bb.af ], [ %.sroa.0140.0, %_ZN4llvm8SmallSetINS_7SDValueELj4ESt4lessIS1_EED2Ev.exit ], [ null, %bb.ae ]
  %i.fn = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit93, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.fn) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit93

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit93: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.fq = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit94, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit93
  call void @free(ptr noundef %i.fq) #27
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit94
end_hunk_0
