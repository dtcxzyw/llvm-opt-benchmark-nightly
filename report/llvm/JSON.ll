Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JSON?download=true
inline.NumInlined: 1972
inline.NumDeleted: 925
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_":bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %8, ptr %i.aa, align 8, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %4, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %6, ptr %i.ac, align 8, !tbaa !339
  call void @_ZN4llvm4json7OStream11objectBeginEv(ptr noundef nonnull align 8 dereferenceable(176) %i.y)
  call fastcc void @"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE0_clEv"(ptr noundef nonnull align 8 dereferenceable(40) %9), !inline_history !333
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 172 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !82
  %i.ah = sub i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !82
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !83
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !125, !range !47, !noundef !116
  %i.ap = trunc nuw i8 %i.ao to i1
  %.not.i.i.i = icmp ne i32 %i.ae, 0
  %or.cond.not.i.i = select i1 %i.ap, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.g, label %_ZN4llvm4json7OStream7newlineEv.exit.i.i

bb.g:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 160 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !126, !nonnull !116, !align !117
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 noundef zeroext 10) #25 ; 0 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !126, !nonnull !116, !align !117
  %i.au = load i32, ptr %i.af, align 4, !tbaa !82
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %i.au) #25 ; 0 uses
  br label %_ZN4llvm4json7OStream7newlineEv.exit.i.i

_ZN4llvm4json7OStream7newlineEv.exit.i.i:         ; preds = %bb.g, %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !126, !nonnull !116, !align !117 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !105
  %.not.i1.i.i = icmp ult ptr %i.az, %i.bb
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm4json7OStream7newlineEv.exit.i.i
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i8 noundef zeroext 125) #25 ; 0 uses
  br label %_ZN4llvm4json7OStream6objectENS_12function_refIFvvEEE.exit

bb.i:                                             ; preds = %_ZN4llvm4json7OStream7newlineEv.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !106
  store i8 125, ptr %i.az, align 1, !tbaa !45
  br label %_ZN4llvm4json7OStream6objectENS_12function_refIFvvEEE.exit

_ZN4llvm4json7OStream6objectENS_12function_refIFvvEEE.exit: ; preds = %bb.h, %bb.i
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !83
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.bg = load i16, ptr %1, align 8, !tbaa !43
  %.not = icmp eq i16 %i.bg, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.k, label %.critedge17

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %i.h, i64 -8      ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !107
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 40
  %.not13 = icmp ugt i64 %i.br, %i.bk
  br i1 %.not13, label %bb.l, label %.critedge17

.critedge17:                                      ; preds = %bb.k, %bb.j
  call fastcc void @"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvm4json7OStream10arrayBeginEv(ptr noundef nonnull align 8 dereferenceable(176) %i.d)
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !63 ; 2 uses
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 2 uses
  %.not38 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not38, label %"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE1_clEv.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.bu = add i64 %3, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.sroa.034.0 = phi ptr [ %i.by, %bb.o ], [ %i.bs, %.lr.ph.i.preheader ] ; 3 uses
  %.05.i = phi i32 [ %i.bv, %bb.o ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.bv = add i32 %.05.i, 1
  %i.bw = load i32, ptr %i.bi, align 8, !tbaa !107
  %i.bx = icmp eq i32 %.05.i, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  tail call fastcc void @"_ZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.034.0, ptr nonnull %2, i64 %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !334
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_ZN4llvm4jsonL10abbreviateERKNS0_5ValueERNS0_7OStreamE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.034.0, ptr noundef nonnull align 8 dereferenceable(176) %i.d), !inline_history !334
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 40 ; 2 uses
  %.not39 = icmp eq ptr %i.by, %i.bt
  br i1 %.not39, label %"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE1_clEv.exit", label %.lr.ph.i

"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE1_clEv.exit": ; preds = %bb.o, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !81 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 172 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !82
  %i.cd = sub i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !82
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !83
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !125, !range !47, !noundef !116
  %i.cl = trunc nuw i8 %i.ck to i1
  %.not.i.i.i20 = icmp ne i32 %i.ca, 0
  %or.cond.not.i.i21 = select i1 %i.cl, i1 %.not.i.i.i20, i1 false
  br i1 %or.cond.not.i.i21, label %bb.p, label %_ZN4llvm4json7OStream7newlineEv.exit.i.i22

bb.p:                                             ; preds = %"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE1_clEv.exit"
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !126, !nonnull !116, !align !117
  %i.co = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i8 noundef zeroext 10) #25 ; 0 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !126, !nonnull !116, !align !117
  %i.cq = load i32, ptr %i.cb, align 4, !tbaa !82
  %i.cr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i32 noundef %i.cq) #25 ; 0 uses
  br label %_ZN4llvm4json7OStream7newlineEv.exit.i.i22

_ZN4llvm4json7OStream7newlineEv.exit.i.i22:       ; preds = %bb.p, %"_ZZZNK4llvm4json4Path4Root17printErrorContextERKNS0_5ValueERNS_11raw_ostreamEENK3$_0clIS8_EEDaS5_NS_8ArrayRefINS1_7SegmentEEERT_ENKUlvE1_clEv.exit"
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !126, !nonnull !116, !align !117 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !106 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !105
  %.not.i1.i.i23 = icmp ult ptr %i.cv, %i.cx
  br i1 %.not.i1.i.i23, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm4json7OStream7newlineEv.exit.i.i22
  %i.cy = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i8 noundef zeroext 93) #25 ; 0 uses
  br label %_ZN4llvm4json7OStream5arrayENS_12function_refIFvvEEE.exit

bb.r:                                             ; preds = %_ZN4llvm4json7OStream7newlineEv.exit.i.i22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !106
  store i8 93, ptr %i.cv, align 1, !tbaa !45
  br label %_ZN4llvm4json7OStream5arrayENS_12function_refIFvvEEE.exit

_ZN4llvm4json7OStream5arrayENS_12function_refIFvvEEE.exit: ; preds = %bb.q, %bb.r
  %i.da = load i32, ptr %i.cf, align 8, !tbaa !83
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr %i.cf, align 8, !tbaa !83
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %.critedge17, %_ZN4llvm4json7OStream5arrayENS_12function_refIFvvEEE.exit, %_ZN4llvm4json7OStream6objectENS_12function_refIFvvEEE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4json5parseENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::json::(anonymous namespace)::Parser", align 8 ; 11 uses
  %4 = alloca %"class.llvm::json::Value", align 8 ; 6 uses
  %i.b = freeze i64 %2                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i8 0, ptr %i.c, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i16 0, ptr %4, align 8, !tbaa !43
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not13.i.i.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not13.i.i.i, label %.loopexit15, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %bb.b
  %.0914.i.i.i.prol = phi ptr [ %i.k, %bb.b ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.b ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = load i8, ptr %.0914.i.i.i.prol, align 1, !tbaa !45
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

bb.b:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.k = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !340

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %bb.b, %.lr.ph.i.i.i.preheader
  %.0914.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.k, %bb.b ]
  %i.l = icmp ult i64 %i.b, 8
  br i1 %i.l, label %.loopexit15, label %.lr.ph.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i.i.i.2, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.p = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.i.i.3, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !45
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.lr.ph.i.i.i.4, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.v = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !45
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %.lr.ph.i.i.i.5, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.y = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !45
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %.lr.ph.i.i.i.6, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.ab = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 6
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !45
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i.i.i.7, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %i.ae = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !45
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.c, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i.i.7
  %i.ah = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.ah, %i.g
  br i1 %.not.i.i.i.7, label %.loopexit15, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.c
  %.0914.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %.0914.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ai = load i8, ptr %.0914.i.i.i, align 1, !tbaa !45
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %.lr.ph.i.i.i.1, label %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i, !prof !32

_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i:         ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %1, ptr %i.a, align 8, !tbaa !35
  %i.ak = call noundef zeroext i8 @_ZN4llvm17isLegalUTF8StringEPPKhS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #25
  %.not.i.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.not.i, label %bb.d, label %_ZN4llvm4json6isUTF8ENS_9StringRefEPm.exit.thread6.i, !prof !68

_ZN4llvm4json6isUTF8ENS_9StringRefEPm.exit.thread6.i: ; preds = %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit15

bb.d:                                             ; preds = %_ZN4llvm7isASCIIENS_9StringRefE.exit.i.i
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 4 uses
  %i.an = sub i64 %i.am, %i.h                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.al, %1
  br i1 %.not.i, label %_ZN4llvm4json12_GLOBAL__N_16Parser9checkUTF8Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.ap = sub i64 %i.am, %i.h                     ; 2 uses
  %xtraiter34 = and i64 %i.ap, 3                  ; 3 uses
  %i.aq = sub i64 %i.h, %i.am
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ap, -4
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.015.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.bk, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.0614.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %.1.i2.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.01113.i.i.epil.init = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %.112.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter34, 0
  call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.015.i.i.epil = phi ptr [ %i.au, %.lr.ph.i.i.epil ], [ %.015.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.0614.i.i.epil = phi ptr [ %.1.i2.i.epil, %.lr.ph.i.i.epil ], [ %.0614.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.01113.i.i.epil = phi i32 [ %.112.i.i.epil, %.lr.ph.i.i.epil ], [ %.01113.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.as = load i8, ptr %.015.i.i.epil, align 1, !tbaa !45
  %i.at = icmp eq i8 %i.as, 10                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.epil, i64 1 ; 2 uses
  %i.av = zext i1 %i.at to i32
  %.112.i.i.epil = add nuw nsw i32 %.01113.i.i.epil, %i.av ; 2 uses
  %.1.i2.i.epil = select i1 %i.at, ptr %i.au, ptr %.0614.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter34
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !341

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.loopexit.unr-lcssa
  %.112.i.i.lcssa = phi i32 [ %.112.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.112.i.i.epil, %.lr.ph.i.i.epil ]
  %.1.i2.i.lcssa = phi ptr [ %.1.i2.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.1.i2.i.epil, %.lr.ph.i.i.epil ]
  %.pre18 = ptrtoint ptr %.1.i2.i.lcssa to i64
  %.pre19 = sub i64 %i.am, %.pre18
  %5 = trunc i64 %.pre19 to i32
  br label %_ZN4llvm4json12_GLOBAL__N_16Parser9checkUTF8Ev.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.015.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.bk, %.lr.ph.i.i ] ; 5 uses
  %.0614.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %.1.i2.i.3, %.lr.ph.i.i ]
  %.01113.i.i = phi i32 [ 1, %.lr.ph.i.i.preheader.new ], [ %.112.i.i.3, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.aw = load i8, ptr %.015.i.i, align 1, !tbaa !45
  %i.ax = icmp eq i8 %i.aw, 10                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 2 uses
  %i.az = zext i1 %i.ax to i32
  %.112.i.i = add nuw nsw i32 %.01113.i.i, %i.az
  %.1.i2.i = select i1 %i.ax, ptr %i.ay, ptr %.0614.i.i
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !45
  %i.bb = icmp eq i8 %i.ba, 10                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2 ; 2 uses
  %i.bd = zext i1 %i.bb to i32
  %.112.i.i.1 = add nuw nsw i32 %.112.i.i, %i.bd
  %.1.i2.i.1 = select i1 %i.bb, ptr %i.bc, ptr %.1.i2.i
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !45
  %i.bf = icmp eq i8 %i.be, 10                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3 ; 2 uses
  %i.bh = zext i1 %i.bf to i32
  %.112.i.i.2 = add nuw nsw i32 %.112.i.i.1, %i.bh
  %.1.i2.i.2 = select i1 %i.bf, ptr %i.bg, ptr %.1.i2.i.1
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !45
  %i.bj = icmp eq i8 %i.bi, 10                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 3 uses
  %i.bl = zext i1 %i.bj to i32
  %.112.i.i.3 = add nuw nsw i32 %.112.i.i.2, %i.bl ; 3 uses
  %.1.i2.i.3 = select i1 %i.bj, ptr %i.bk, ptr %.1.i2.i.2 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

_ZN4llvm4json12_GLOBAL__N_16Parser9checkUTF8Ev.exit: ; preds = %bb.d, %._crit_edge.i.i.loopexit
  %.pre-phi20 = phi i32 [ %5, %._crit_edge.i.i.loopexit ], [ 0, %bb.d ]
  %.011.lcssa.i.i = phi i32 [ %.112.i.i.lcssa, %._crit_edge.i.i.loopexit ], [ 1, %bb.d ]
  %i.bm = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !353 ; 6 uses
  %i.bn = trunc i64 %i.an to i32
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm4json10ParseErrorE, i64 16), ptr %i.bm, align 8, !tbaa !101, !noalias !353
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @.str.24, ptr %i.bo, align 8, !tbaa !141, !noalias !353
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 %.011.lcssa.i.i, ptr %i.bp, align 8, !tbaa !142, !noalias !353
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 %.pre-phi20, ptr %i.bq, align 4, !tbaa !143, !noalias !353
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bn, ptr %i.br, align 8, !tbaa !144, !noalias !353
  store i8 1, ptr %i.c, align 8, !tbaa !128
  br label %_ZN4llvm5ErrorD2Ev.exit

.loopexit15:                                      ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.c, %_ZN4llvm4json6isUTF8ENS_9StringRefEPm.exit.thread6.i, %bb.a
  %i.bs = call fastcc noundef zeroext i1 @_ZN4llvm4json12_GLOBAL__N_16Parser10parseValueERNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br i1 %i.bs, label %bb.e, label %.loopexit15._ZN4llvm5ErrorD2Ev.exit_crit_edge

.loopexit15._ZN4llvm5ErrorD2Ev.exit_crit_edge:    ; preds = %.loopexit15
  %.pre = load ptr, ptr %3, align 8, !tbaa !147, !noalias !354
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.e:                                             ; preds = %.loopexit15
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !136 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.e, align 8, !tbaa !135 ; 3 uses
  %.promoted.i.i39 = ptrtoaddr ptr %.promoted.i.i to i64 ; 2 uses
  %.not4.i.i = icmp eq ptr %.promoted.i.i, %i.bt
  br i1 %.not4.i.i, label %.loopexit, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %bb.e, %.critedge2.i.i
  %indvar = phi i64 [ %indvar.next, %.critedge2.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bu = phi ptr [ %i.bw, %.critedge2.i.i ], [ %.promoted.i.i, %bb.e ] ; 5 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !45
  switch i8 %i.bv, label %_ZN4llvm4json12_GLOBAL__N_16Parser13eatWhitespaceEv.exit.i [
    i8 32, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i3, %.lr.ph.i.i3, %.lr.ph.i.i3, %.lr.ph.i.i3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.bw, %i.bt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i3, !llvm.loop !7

_ZN4llvm4json12_GLOBAL__N_16Parser13eatWhitespaceEv.exit.i: ; preds = %.lr.ph.i.i3
  %i.bx = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bx, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm4json12_GLOBAL__N_16Parser13eatWhitespaceEv.exit.i
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !134 ; 8 uses
  %i.bz = icmp ult ptr %i.by, %i.bu
  br i1 %i.bz, label %.lr.ph.i2.i.preheader, label %._crit_edge.i.i4

.lr.ph.i2.i.preheader:                            ; preds = %bb.f
  %i.ca = ptrtoaddr ptr %i.by to i64              ; 2 uses
  %i.cb = add i64 %indvar, %.promoted.i.i39
  %i.cc = sub i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = add i64 %.promoted.i.i39, -1
  %i.ce = add i64 %indvar, %i.cd
  %i.cf = sub i64 %i.ce, %i.ca
  %xtraiter41 = and i64 %i.cc, 3                  ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.i2.i.epil.preheader, label %.lr.ph.i2.i.preheader.new

.lr.ph.i2.i.preheader.new:                        ; preds = %.lr.ph.i2.i.preheader
  %unroll_iter47 = and i64 %i.cc, -4
  br label %.lr.ph.i2.i

._crit_edge.i.i4.loopexit.unr-lcssa:              ; preds = %.lr.ph.i2.i
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %._crit_edge.i.i4, label %.lr.ph.i2.i.epil.preheader

.lr.ph.i2.i.epil.preheader:                       ; preds = %._crit_edge.i.i4.loopexit.unr-lcssa, %.lr.ph.i2.i.preheader
  %.015.i.i8.epil.init = phi ptr [ %i.by, %.lr.ph.i2.i.preheader ], [ %i.ds, %._crit_edge.i.i4.loopexit.unr-lcssa ]
  %.0614.i.i9.epil.init = phi ptr [ %i.by, %.lr.ph.i2.i.preheader ], [ %.1.i.i.3, %._crit_edge.i.i4.loopexit.unr-lcssa ]
  %.01113.i.i10.epil.init = phi i32 [ 1, %.lr.ph.i2.i.preheader ], [ %.112.i.i11.3, %._crit_edge.i.i4.loopexit.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter41, 0
  call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i2.i.epil

.lr.ph.i2.i.epil:                                 ; preds = %.lr.ph.i2.i.epil, %.lr.ph.i2.i.epil.preheader
  %.015.i.i8.epil = phi ptr [ %i.cj, %.lr.ph.i2.i.epil ], [ %.015.i.i8.epil.init, %.lr.ph.i2.i.epil.preheader ] ; 2 uses
  %.0614.i.i9.epil = phi ptr [ %.1.i.i.epil, %.lr.ph.i2.i.epil ], [ %.0614.i.i9.epil.init, %.lr.ph.i2.i.epil.preheader ]
  %.01113.i.i10.epil = phi i32 [ %.112.i.i11.epil, %.lr.ph.i2.i.epil ], [ %.01113.i.i10.epil.init, %.lr.ph.i2.i.epil.preheader ]
  %epil.iter42 = phi i64 [ %epil.iter42.next, %.lr.ph.i2.i.epil ], [ 0, %.lr.ph.i2.i.epil.preheader ]
  %i.ch = load i8, ptr %.015.i.i8.epil, align 1, !tbaa !45
  %i.ci = icmp eq i8 %i.ch, 10                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.015.i.i8.epil, i64 1 ; 2 uses
  %i.ck = zext i1 %i.ci to i32
  %.112.i.i11.epil = add nuw nsw i32 %.01113.i.i10.epil, %i.ck ; 2 uses
  %.1.i.i.epil = select i1 %i.ci, ptr %i.cj, ptr %.0614.i.i9.epil ; 2 uses
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %._crit_edge.i.i4, label %.lr.ph.i2.i.epil, !llvm.loop !346

._crit_edge.i.i4:                                 ; preds = %._crit_edge.i.i4.loopexit.unr-lcssa, %.lr.ph.i2.i.epil, %bb.f
  %.011.lcssa.i.i5 = phi i32 [ 1, %bb.f ], [ %.112.i.i11.3, %._crit_edge.i.i4.loopexit.unr-lcssa ], [ %.112.i.i11.epil, %.lr.ph.i2.i.epil ]
  %.06.lcssa.i.i6 = phi ptr [ %i.by, %bb.f ], [ %.1.i.i.3, %._crit_edge.i.i4.loopexit.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i2.i.epil ]
  %i.cl = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cm = ptrtoint ptr %.06.lcssa.i.i6 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ptrtoint ptr %i.by to i64
  %i.cp = sub i64 %i.cl, %i.co
  %i.cq = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !355 ; 6 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = trunc i64 %i.cp to i32
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm4json10ParseErrorE, i64 16), ptr %i.cq, align 8, !tbaa !101, !noalias !355
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr @.str.39, ptr %i.ct, align 8, !tbaa !141, !noalias !355
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 %.011.lcssa.i.i5, ptr %i.cu, align 8, !tbaa !142, !noalias !355
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !143, !noalias !355
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i32 %i.cs, ptr %i.cw, align 8, !tbaa !144, !noalias !355
  %i.cx = load i8, ptr %i.c, align 8, !tbaa !128, !range !47, !noundef !116
  %i.cy = trunc nuw i8 %i.cx to i1
  store i8 0, ptr %i.c, align 8, !tbaa !128
  br i1 %i.cy, label %bb.g, label %_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit

bb.g:                                             ; preds = %._crit_edge.i.i4
  %i.cz = load ptr, ptr %3, align 8, !tbaa !147   ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !101
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #25, !inline_history !349
  br label %_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.i2.i.preheader.new
  %.015.i.i8 = phi ptr [ %i.by, %.lr.ph.i2.i.preheader.new ], [ %i.ds, %.lr.ph.i2.i ] ; 5 uses
  %.0614.i.i9 = phi ptr [ %i.by, %.lr.ph.i2.i.preheader.new ], [ %.1.i.i.3, %.lr.ph.i2.i ]
  %.01113.i.i10 = phi i32 [ 1, %.lr.ph.i2.i.preheader.new ], [ %.112.i.i11.3, %.lr.ph.i2.i ]
  %niter48 = phi i64 [ 0, %.lr.ph.i2.i.preheader.new ], [ %niter48.next.3, %.lr.ph.i2.i ]
  %i.de = load i8, ptr %.015.i.i8, align 1, !tbaa !45
  %i.df = icmp eq i8 %i.de, 10                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.015.i.i8, i64 1 ; 2 uses
  %i.dh = zext i1 %i.df to i32
  %.112.i.i11 = add nuw nsw i32 %.01113.i.i10, %i.dh
  %.1.i.i = select i1 %i.df, ptr %i.dg, ptr %.0614.i.i9
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !45
  %i.dj = icmp eq i8 %i.di, 10                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.015.i.i8, i64 2 ; 2 uses
  %i.dl = zext i1 %i.dj to i32
  %.112.i.i11.1 = add nuw nsw i32 %.112.i.i11, %i.dl
  %.1.i.i.1 = select i1 %i.dj, ptr %i.dk, ptr %.1.i.i
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !45
  %i.dn = icmp eq i8 %i.dm, 10                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.015.i.i8, i64 3 ; 2 uses
  %i.dp = zext i1 %i.dn to i32
  %.112.i.i11.2 = add nuw nsw i32 %.112.i.i11.1, %i.dp
  %.1.i.i.2 = select i1 %i.dn, ptr %i.do, ptr %.1.i.i.1
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !45
  %i.dr = icmp eq i8 %i.dq, 10                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.015.i.i8, i64 4 ; 3 uses
  %i.dt = zext i1 %i.dr to i32
  %.112.i.i11.3 = add nuw nsw i32 %.112.i.i11.2, %i.dt ; 3 uses
  %.1.i.i.3 = select i1 %i.dr, ptr %i.ds, ptr %.1.i.i.2 ; 3 uses
  %niter48.next.3 = add i64 %niter48, 4           ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %._crit_edge.i.i4.loopexit.unr-lcssa, label %.lr.ph.i2.i, !llvm.loop !6

_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit: ; preds = %._crit_edge.i.i4, %bb.g, %bb.h
  store i8 1, ptr %i.c, align 8, !tbaa !128
  br label %_ZN4llvm5ErrorD2Ev.exit

.loopexit:                                        ; preds = %.critedge2.i.i, %_ZN4llvm4json12_GLOBAL__N_16Parser13eatWhitespaceEv.exit.i, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 8
  %i.dw = and i8 %i.dv, -2
  store i8 %i.dw, ptr %i.du, align 8
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.i

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.loopexit15._ZN4llvm5ErrorD2Ev.exit_crit_edge, %_ZN4llvm4json12_GLOBAL__N_16Parser9checkUTF8Ev.exit, %_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit
  %i.dx = phi ptr [ %.pre, %.loopexit15._ZN4llvm5ErrorD2Ev.exit_crit_edge ], [ %i.bm, %_ZN4llvm4json12_GLOBAL__N_16Parser9checkUTF8Ev.exit ], [ %i.cq, %_ZN4llvm4json12_GLOBAL__N_16Parser9assertEndEv.exit ]
  store ptr null, ptr %3, align 8, !tbaa !147, !noalias !354
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = or i8 %i.dz, 1
  store i8 %i.ea, ptr %i.dy, align 8
  store ptr %i.dx, ptr %0, align 8, !tbaa !356, !alias.scope !357
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %.loopexit
  call void @_ZN4llvm4json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.eb = load i8, ptr %i.c, align 8, !tbaa !128, !range !47, !noundef !116
  %i.ec = trunc nuw i8 %i.eb to i1
  store i8 0, ptr %i.c, align 8, !tbaa !128
  br i1 %i.ec, label %bb.j, label %_ZN4llvm4json12_GLOBAL__N_16ParserD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ed = load ptr, ptr %3, align 8, !tbaa !147   ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZN4llvm4json12_GLOBAL__N_16ParserD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !101
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #25, !inline_history !352
  br label %_ZN4llvm4json12_GLOBAL__N_16ParserD2Ev.exit
end_hunk_0
