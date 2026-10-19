Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteInstance?download=true
inline.NumInlined: 27087
inline.NumDeleted: 8981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4llvm4bolt15RewriteInstance22mapCodeSectionsInPlaceESt8functionIFvRKNS0_13BinarySectionEmEE:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !1033
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !1064
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !1034
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !1139 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  %or.cond.not.i = icmp ult i64 %i.bd, %i.at
  br i1 %or.cond.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = sub i64 %i.at, %i.bc
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !1140
  %i.bg = add i64 %i.be, %i.bf
  br label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit

bb.g:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !483 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1048
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !450 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1040 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !444
  %i.bn = icmp ult i64 %i.at, %i.bm               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bn, ptr %.012.i.i.i.i, ptr %.0811.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.bn, i64 16, i64 24
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !871 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.08.lcssa.i.i.i.i = phi ptr [ %i.bk, %bb.g ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 1056
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !451
  %i.bq = icmp eq ptr %.08.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i
  %i.br = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i) #39 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1142 ; 3 uses
  %i.bu = icmp ult i64 %i.at, %i.bt
  br i1 %i.bu, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1143
  %i.bx = add i64 %i.bw, %i.bt
  %.not11.i = icmp ult i64 %i.at, %i.bx
  br i1 %.not11.i, label %bb.i, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1144
  %i.ca = sub i64 %i.at, %i.bt
  %i.cb = add i64 %i.ca, %i.bz
  br label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit

_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit: ; preds = %bb.f, %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i, %.lr.ph.i.preheader.i, %bb.h, %bb.i
  %.2.i = phi i64 [ %i.bg, %bb.f ], [ 0, %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i ], [ %i.cb, %bb.i ], [ 0, %bb.h ], [ 0, %.lr.ph.i.preheader.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i64 %.2.i, ptr %i.cc, align 8, !tbaa !986
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  store i64 %i.at, ptr %i.cd, align 8, !tbaa !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !444
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !171
  %.not.i.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i34, label %bb.j, label %_ZNKSt8functionIFvRKN4llvm4bolt13BinarySectionEmEEclES4_m.exit35

bb.j:                                             ; preds = %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit
  call void @_ZSt25__throw_bad_function_callv() #41
  unreachable

_ZNKSt8functionIFvRKN4llvm4bolt13BinarySectionEmEEclES4_m.exit35: ; preds = %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !1129
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(391) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #35, !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = load i64, ptr %i.bb, align 8, !tbaa !1034
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !1090
  %i.ci = add i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.c, align 8, !tbaa !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread: ; preds = %_ZNKSt8functionIFvRKN4llvm4bolt13BinarySectionEmEEclES4_m.exit, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit, %_ZNKSt8functionIFvRKN4llvm4bolt13BinarySectionEmEEclES4_m.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread
  %i.cj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.061) #39 ; 2 uses
  %.not55 = icmp eq ptr %i.cj, %i.i
  br i1 %.not55, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.ck = sub i64 %.pre, %i.d
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !483
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.cm, align 8, !tbaa !547
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !548
  store ptr @.str.537, ptr %4, align 8, !tbaa !186
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.co, align 8, !tbaa !186
  %i.cp = call noundef nonnull align 8 dereferenceable(391) ptr @_ZN4llvm4bolt13BinaryContext23registerOrUpdateSectionERKNS_5TwineEjjPhmj(ptr noundef nonnull align 8 dereferenceable(2268) %i.cl, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 1, i32 noundef 6, ptr noundef null, i64 noundef %i.ck, i32 noundef 16) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 304
  store i64 %i.d, ptr %i.cq, align 8, !tbaa !1131
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1139 ; 2 uses
  %i.ct = add i64 %i.cs, -1
  %or.cond.not.i36 = icmp ult i64 %i.ct, %i.d
  br i1 %or.cond.not.i36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = sub i64 %i.d, %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !1140
  %i.cx = add i64 %i.cu, %i.cw
  br label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51

bb.n:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !483 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1048
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !450 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1040 ; 2 uses
  %.not10.i.i.i.i37 = icmp eq ptr %i.da, null
  br i1 %.not10.i.i.i.i37, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i38
  %.012.i.i.i.i39 = phi ptr [ %.1.i.i.i.i44, %.lr.ph.i.i.i.i38 ], [ %i.da, %bb.n ] ; 3 uses
  %.0811.i.i.i.i40 = phi ptr [ %.19.i.i.i.i41, %.lr.ph.i.i.i.i38 ], [ %i.db, %bb.n ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i39, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !444
  %i.de = icmp ult i64 %i.d, %i.dd                ; 2 uses
  %.19.i.i.i.i41 = select i1 %i.de, ptr %.012.i.i.i.i39, ptr %.0811.i.i.i.i40 ; 2 uses
  %.1.in.v.i.i.i.i42 = select i1 %i.de, i64 16, i64 24
  %.1.in.i.i.i.i43 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i39, i64 %.1.in.v.i.i.i.i42
  %.1.i.i.i.i44 = load ptr, ptr %.1.in.i.i.i.i43, align 8, !tbaa !871 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %.1.i.i.i.i44, null
  br i1 %.not.i.i.i.i45, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46, label %.lr.ph.i.i.i.i38, !llvm.loop !60

_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46: ; preds = %.lr.ph.i.i.i.i38, %bb.n
  %.08.lcssa.i.i.i.i47 = phi ptr [ %i.db, %bb.n ], [ %.19.i.i.i.i41, %.lr.ph.i.i.i.i38 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 1056
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !451
  %i.dh = icmp eq ptr %.08.lcssa.i.i.i.i47, %i.dg
  br i1 %i.dh, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51, label %.lr.ph.i.preheader.i48

.lr.ph.i.preheader.i48:                           ; preds = %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46
  %i.di = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i47) #39 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !1142 ; 3 uses
  %i.dl = icmp ult i64 %i.d, %i.dk
  br i1 %i.dl, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.preheader.i48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1143
  %i.do = add i64 %i.dn, %i.dk
  %.not11.i49 = icmp ult i64 %i.d, %i.do
  br i1 %.not11.i49, label %bb.p, label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1144
  %i.dr = sub i64 %i.d, %i.dk
  %i.ds = add i64 %i.dr, %i.dq
  br label %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51

_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51: ; preds = %bb.m, %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46, %.lr.ph.i.preheader.i48, %bb.o, %bb.p
  %.2.i50 = phi i64 [ %i.cx, %bb.m ], [ 0, %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit.i46 ], [ %i.ds, %bb.p ], [ 0, %bb.o ], [ 0, %.lr.ph.i.preheader.i48 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cp, i64 320
  store i64 %.2.i50, ptr %i.dt, align 8, !tbaa !1065
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm.exit51, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i64 @"_ZZN4llvm4bolt15RewriteInstance15mapCodeSectionsESt8functionIFvRKNS0_13BinarySectionEmEEENK3$_1clEm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1136
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !483  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1629
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1038, !range !176, !noundef !177
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %spec.select = select i1 %i.f, ptr @.str.536, ptr @.str.497 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2882, !nonnull !177, !align !770 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1104 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1104 ; 4 uses
  %.not38 = icmp eq ptr %i.i, %i.k
  br i1 %.not38, label %_ZN4llvm5TwineC2EPKc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts6HugifyE, i64 120), align 8, !tbaa !207, !range !176, !noundef !177
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.f, i64 10, i64 5            ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1631
  %i.p = load i8, ptr %i.o, align 1, !tbaa !803, !range !176, !noundef !177
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us, label %.lr.ph.split.us.split

_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us: ; preds = %.lr.ph.split.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us
  %.040.us.us = phi i64 [ %i.ae, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %.sroa.030.039.us.us = phi ptr [ %i.af, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us ], [ %i.i, %.lr.ph.split.us ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.030.039.us.us, align 8, !tbaa !916 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1076
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp ne i64 %.040.us.us, 0
  %i.w = zext i1 %i.v to i64                      ; 2 uses
  %i.x = sub i64 %.040.us.us, %i.w
  %i.y = udiv i64 %i.x, %i.u
  %i.z = add i64 %i.y, %i.w
  %i.aa = mul i64 %i.z, %i.u                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !1131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1064
  %i.ae = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.030.039.us.us, i64 8 ; 2 uses
  %.not.us.us = icmp eq ptr %i.af, %i.k
  br i1 %.not.us.us, label %_ZN4llvm5TwineC2EPKc.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us
  %.040.us = phi i64 [ %.1.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %.sroa.030.039.us = phi ptr [ %i.bf, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us ], [ %i.i, %.lr.ph.split.us ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.030.039.us, align 8, !tbaa !916 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1076
  %i.aj = zext i32 %i.ai to i64                   ; 4 uses
  %i.ak = icmp ne i64 %.040.us, 0
  %i.al = zext i1 %i.ak to i64                    ; 2 uses
  %i.am = sub i64 %.040.us, %i.al
  %i.an = udiv i64 %i.am, %i.aj
  %i.ao = add i64 %i.an, %i.al
  %i.ap = mul i64 %i.ao, %i.aj                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !1131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1064
  %i.at = add i64 %i.ap, %i.as                    ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !332
  %.not.i23.us = icmp eq i64 %i.av, %i.n
  br i1 %.not.i23.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us

_ZN4llvmeqENS_9StringRefES0_.exit.us:             ; preds = %.lr.ph.split.us.split
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !185
  %bcmp.i.us = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.ax, ptr noundef nonnull dereferenceable(5) %spec.select, i64 %i.n)
  %i.ay = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.ay, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us

_ZN4llvmeqENS_9StringRefES0_.exit.thread.us:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.us
  %i.az = icmp ne i64 %i.at, 0
  %i.ba = zext i1 %i.az to i64                    ; 2 uses
  %i.bb = sub i64 %i.at, %i.ba
  %i.bc = udiv i64 %i.bb, %i.aj
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = mul i64 %i.bd, %i.aj
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us

_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.us, %_ZN4llvmeqENS_9StringRefES0_.exit.us, %.lr.ph.split.us.split
  %.1.us = phi i64 [ %i.at, %.lr.ph.split.us.split ], [ %i.be, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.us ], [ %i.at, %_ZN4llvmeqENS_9StringRefES0_.exit.us ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.030.039.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.bf, %i.k
  br i1 %.not.us, label %_ZN4llvm5TwineC2EPKc.exit, label %.lr.ph.split.us.split

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread34, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.1.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us ], [ %i.ae, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34.us.us ], [ %i.ci, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %5, align 1, !tbaa !548
  store ptr %spec.select, ptr %3, align 8, !tbaa !186
  store i8 3, ptr %4, align 8, !tbaa !547
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !2883
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %3) #35, !noalias !2883
  %i.bh = call { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !2883 ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !185, !noalias !2883 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !186, !noalias !2883
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #36, !noalias !2883
  br label %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i

_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i: ; preds = %_ZN4llvm5TwineC2EPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !2883
  %i.bn = extractvalue { ptr, ptr } %i.bh, 0      ; 3 uses
  %i.bo = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  %.not.i21 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i21, label %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i
  %i.bp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.bn) #39, !noalias !2883
  %i.bq = icmp eq ptr %i.bp, %i.bo
  br i1 %i.bq, label %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit, label %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit.thread

_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit.thread: ; preds = %.preheader.i, %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.e

_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit: ; preds = %.preheader.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !794, !noalias !2883 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts7HotTextE, i64 120), align 8, !tbaa !207, !range !176, !noundef !177
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.b, label %bb.e

_ZN4llvmeqENS_9StringRefES0_.exit.thread34:       ; preds = %.lr.ph, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34
  %.040 = phi i64 [ %i.ci, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34 ], [ %1, %.lr.ph ] ; 2 uses
  %.sroa.030.039 = phi ptr [ %i.cj, %_ZN4llvmeqENS_9StringRefES0_.exit.thread34 ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.030.039, align 8, !tbaa !916 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1076
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = icmp ne i64 %.040, 0
  %i.ca = zext i1 %i.bz to i64                    ; 2 uses
  %i.cb = sub i64 %.040, %i.ca
  %i.cc = udiv i64 %i.cb, %i.by
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = mul i64 %i.cd, %i.by                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 304
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !1131
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 312
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1064
  %i.ci = add i64 %i.ce, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.030.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.k
  br i1 %.not, label %_ZN4llvm5TwineC2EPKc.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread34

bb.b:                                             ; preds = %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 360
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !332
  %.not37 = icmp eq i64 %i.cl, 0
  br i1 %.not37, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 304
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !1131
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1064
  %i.cq = add i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !483
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2200
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !1151 ; 2 uses
  %i.cu = icmp ne i64 %i.cq, 0
  %i.cv = zext i1 %i.cu to i64                    ; 2 uses
  %i.cw = sub i64 %i.cq, %i.cv
  %i.cx = udiv i64 %i.cw, %i.ct
  %i.cy = add i64 %i.cx, %i.cv
  %i.cz = mul i64 %i.cy, %i.ct                    ; 3 uses
  %i.da = icmp ugt i64 %i.cz, %.0.lcssa
  br i1 %i.da, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.db = sub nuw i64 %i.cz, %.0.lcssa
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2884, !nonnull !177, !align !770
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !444
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit.thread, %bb.c, %bb.d, %bb.b, %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit
  %.3 = phi i64 [ %.0.lcssa, %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %bb.c ], [ %i.cz, %bb.d ], [ %.0.lcssa, %_ZNK4llvm4bolt13BinaryContext22getUniqueSectionByNameERKNS_5TwineE.exit.thread ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i64 @_ZNK4llvm4bolt15RewriteInstance23getFileOffsetForAddressEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(808) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1139 ; 2 uses
  %i.c = add i64 %i.b, -1
  %or.cond.not = icmp ult i64 %i.c, %1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub i64 %1, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1140
  %i.g = add i64 %i.d, %i.f
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !483  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !450  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1040 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !444
  %i.o = icmp ult i64 %1, %i.n                    ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !871 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !60

_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.08.lcssa.i.i.i = phi ptr [ %i.l, %bb.c ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1056
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !451
  %i.r = icmp eq ptr %.08.lcssa.i.i.i, %i.q
  br i1 %i.r, label %bb.f, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i) #39 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1142 ; 3 uses
  %i.v = icmp ult i64 %1, %i.u
  br i1 %i.v, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1143
  %i.y = add i64 %i.x, %i.u
  %.not11 = icmp ult i64 %1, %i.y
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1144
  %i.ab = sub i64 %1, %i.u
  %i.ac = add i64 %i.ab, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit, %.lr.ph.i.preheader, %bb.d, %bb.e, %bb.b
  %.2 = phi i64 [ %i.g, %bb.b ], [ 0, %_ZNSt3mapImN4llvm4bolt11SegmentInfoESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit ], [ %i.ac, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph.i.preheader ]
  ret i64 %.2
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm4bolt14FunctionLayout11getFragmentENS0_11FragmentNumE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm4bolt15RewriteInstance22mapAllocatableSectionsESt8functionIFvRKNS0_13BinarySectionEmEEENK3$_0clERS3_S9_"(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(391) %0, ptr noundef nonnull align 8 dereferenceable(391) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !898
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1064
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !483
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !769, !nonnull !177, !align !770 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !462
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !463  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 21
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull @.str.437, i64 noundef 21) #35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.n, ptr noundef nonnull align 1 dereferenceable(21) @.str.437, i64 21, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !463
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 21 ; 2 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.u, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.d ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !185  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !332  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !462
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.v to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.x, i64 noundef %i.z) #35 ; 2 uses
  %.phi.trans.insert1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.pre2 = load ptr, ptr %.phi.trans.insert1, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.x, i64 %i.z, i1 false)
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !463
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z ; 2 uses
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.ak = phi ptr [ %.pre2, %bb.e ], [ %i.aj, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ah, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !462
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 10
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.438, i64 noundef 10) #35 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ak, ptr noundef nonnull align 1 dereferenceable(10) @.str.438, i64 10, i1 false)
end_hunk_0
