Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_scan_scalar_dquotEv:bb.a

bb.i:                                             ; preds = %.lr.ph.i.i74
  %i.cd = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i75 = icmp eq i64 %i.cd, %i.bz
  br i1 %exitcond.not.i.i75, label %.thread.i, label %.lr.ph.i.i74, !llvm.loop !22

bb.j:                                             ; preds = %.lr.ph.i.i74, %.lr.ph.i.i74
  %i.ce = icmp eq i8 %i.cc, 13
  %i.cf = zext i1 %i.ce to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.cf ; 4 uses
  %i.cg = icmp ult i64 %spec.select.i.i, %i.bz
  br i1 %i.cg, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !87
  %i.cj = icmp eq i8 %i.ci, 10
  %i.ck = zext i1 %i.cj to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.ck
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.j ], [ %.046.i.i, %bb.k ], [ %i.bz, %bb.i ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.j ], [ %spec.select22.i.i, %bb.k ], [ %i.bz, %bb.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bw ; 3 uses
  %i.cm = sub i64 %.pn.i9.i, %i.bw                ; 3 uses
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !101
  store i64 %i.cm, ptr %i.am, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bw
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.l
  %.0710.i.i.i.i = phi i64 [ %i.cp, %bb.l ], [ 0, %.thread.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0710.i.i.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.co, 32
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %i.cm
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.l, %.lr.ph.i.i.i.i, %.thread.i
  %i.cq = phi i64 [ -1, %.thread.i ], [ -1, %bb.l ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.cr = select i1 %.not.i.i.i, i64 %i.bz, i64 %.2.i.i
  %i.cs = sub i64 %i.cr, %i.bw
  br label %bb.m

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bz ; 2 uses
  store ptr %i.ct, ptr %i.e, align 8, !tbaa !101
  store i64 0, ptr %i.am, align 8, !tbaa !102
  br label %bb.m

bb.m:                                             ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cq, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.ct, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cl, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cs, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cm, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  store i64 %.sink24.i, ptr %i.av, align 8, !tbaa !220
  store ptr %.sink22.i, ptr %i.ar, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.as, align 8, !tbaa !102
  store ptr %.sink22.i, ptr %i.aw, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.at, align 8, !tbaa !102
  %i.cu = load i64, ptr %i.k, align 8, !tbaa !219
  %.not117 = icmp ult i64 %i.bw, %i.cu
  br i1 %.not117, label %bb.c, label %.thread112

bb.n:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit
  %i.cv = add nuw i64 %.348, 1                    ; 4 uses
  %i.cw = add i64 %i.cv, %i.ay                    ; 2 uses
  store i64 %i.cw, ptr %i.f, align 8, !tbaa !210
  %i.cx = add i64 %i.ax, %i.cv
  store i64 %i.cx, ptr %i.ah, align 8, !tbaa !212
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.077.0.copyload, i64 %i.cv
  %i.cz = sub i64 %.sroa.6.0.copyload, %i.cv
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !101
  store i64 %i.cz, ptr %i.am, align 8, !tbaa !102
  %i.da = xor i64 %i.af, -1
  %i.db = add i64 %i.cw, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %.thread112, label %bb.p

.thread112:                                       ; preds = %bb.m, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread, %bb.n
  %.5116 = phi i8 [ %i.bn, %bb.n ], [ 0, %_ZNK2c415basic_substringIcE11begins_withEc.exit.thread ], [ %i.bp, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !935
  store ptr %i.a, ptr %2, align 8, !tbaa !101, !noalias !935
  %.sroa.2.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i76, align 8, !tbaa !102, !noalias !935
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !935
  store ptr %2, ptr %3, align 8, !tbaa !180, !noalias !935
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA46_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(46) @.str.172)
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935 ; 3 uses
  %i.df = load i64, ptr %.sroa.2.0..sroa_idx.i.i76, align 8, !tbaa !181, !noalias !935
  %i.dg = icmp ult i64 %i.de, %i.df
  br i1 %i.dg, label %bb.o, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.o:                                             ; preds = %.thread112
  %i.dh = load ptr, ptr %2, align 8, !tbaa !182, !noalias !935
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de
  store i8 10, ptr %i.di, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %.thread112, %bb.o
  %i.dj = phi i64 [ %.pre.i.i, %bb.o ], [ %i.de, %.thread112 ]
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.dl = load i64, ptr %i.dd, align 8, !tbaa !178, !noalias !935
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dl, i64 1024)
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !169, !noalias !935 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2520
  store ptr null, ptr %i.do, align 8, !tbaa !223
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 2480
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !224
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2488
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !206
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 2456
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !193
  call void %i.dq(ptr noundef nonnull %i.a, i64 noundef %i.dm, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.dt, ptr noundef %i.dv), !inline_history !934
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !935
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dw = add i64 %i.db, -1
  %.not.i = icmp eq i64 %i.db, 0
  %i.dx = select i1 %.not.i, i64 %i.ap, i64 %i.dw
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit
  %.5115 = phi i8 [ %.5116, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.bn, %bb.p ]
  %.sroa.12.1 = phi i64 [ %i.ap, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA46_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.dx, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 1
  store ptr %i.dy, ptr %0, align 8, !tbaa !101
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.5115, ptr %i.dz, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %4 = alloca %class.anon.22, align 8             ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 8 uses
  %.sroa.0140.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !101 ; 6 uses
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.7143.0.copyload = load i64, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !102 ; 6 uses
  %i.g = icmp eq i64 %.sroa.7143.0.copyload, 0
  %i.h = icmp eq ptr %.sroa.0140.0.copyload, null
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %i.i, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 %.0710.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !87
  %.not.i.i = icmp eq i8 %i.k, 32
  %i.l = add i64 %.0710.i.i, 1                    ; 3 uses
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIKcE5trimlEc.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %exitcond.not.i.i = icmp eq i64 %i.l, %.sroa.7143.0.copyload
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE5trimlEc.exit:        ; preds = %.lr.ph.i.i
  %.not211 = icmp ult i64 %i.l, 2
  br i1 %.not211, label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0140.0.copyload, i64 %.0710.i.i ; 2 uses
  %i.n = sub nuw i64 %.sroa.7143.0.copyload, %.0710.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !210
  %i.q = add i64 %i.p, %.0710.i.i
  store i64 %i.q, ptr %i.o, align 8, !tbaa !210
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !212
  %i.t = add i64 %i.s, %.0710.i.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !212
  store ptr %i.m, ptr %i.f, align 8, !tbaa !101
  store i64 %i.n, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !102
  br label %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread

_ZNK2c415basic_substringIKcE5trimlEc.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZNK2c415basic_substringIKcE5trimlEc.exit
  %5 = phi i64 [ %i.n, %bb.c ], [ %.sroa.7143.0.copyload, %_ZNK2c415basic_substringIKcE5trimlEc.exit ], [ %.sroa.7143.0.copyload, %bb.a ], [ %.sroa.7143.0.copyload, %bb.b ] ; 9 uses
  %.sroa.0140.0 = phi ptr [ %i.m, %bb.c ], [ %.sroa.0140.0.copyload, %_ZNK2c415basic_substringIKcE5trimlEc.exit ], [ %.sroa.0140.0.copyload, %bb.a ], [ %.sroa.0140.0.copyload, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 -1, ptr %i.b, align 8, !tbaa !102
  %i.u = icmp ugt i64 %5, 1
  br i1 %i.u, label %.preheader.lr.ph.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread

.preheader.lr.ph.i:                               ; preds = %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 1 ; 4 uses
  %i.w = add i64 %5, -1                           ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.01224.i = phi i64 [ %i.z, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.01224.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.y, label %._crit_edge.i [
    i8 45, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
    i8 43, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.z = add nuw i64 %.01224.i, 1                 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.z, %i.w
  br i1 %exitcond27.not.i, label %.preheader.lr.ph.i82, label %.preheader.i, !llvm.loop !4

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit:  ; preds = %.preheader.i, %.preheader.i
  %i.aa = icmp eq i8 %i.y, 45
  %.not = icmp eq i64 %.01224.i, -1
  br i1 %.not, label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %switch.selectcmp = icmp eq i8 %i.y, 43
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.select63 = select i1 %i.aa, i32 1, i32 %switch.select ; 2 uses
  %i.ab = icmp eq i64 %.01224.i, 0
  br i1 %i.ab, label %bb.e, label %.preheader.lr.ph.i82

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 2
  %i.ad = add i64 %5, -2
  br label %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread

_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread: ; preds = %bb.e, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit
  %.sroa.0129.0 = phi ptr [ %i.v, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %i.ac, %bb.e ]
  %.sroa.12.0 = phi i64 [ %i.w, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %i.ad, %bb.e ] ; 2 uses
  %.1 = phi i32 [ 0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit ], [ %switch.select63, %bb.e ] ; 2 uses
  %.not27.i = icmp eq i64 %.sroa.12.0, 0
  br i1 %.not27.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread, label %.preheader.lr.ph.i82

.preheader.lr.ph.i82:                             ; preds = %._crit_edge.i, %bb.d, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread
  %.1168 = phi i32 [ %switch.select63, %bb.d ], [ %.1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.12.0166 = phi i64 [ %.01224.i, %bb.d ], [ %.sroa.12.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ %i.w, %._crit_edge.i ] ; 3 uses
  %.sroa.0129.0164 = phi ptr [ %i.v, %bb.d ], [ %.sroa.0129.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ], [ %i.v, %._crit_edge.i ] ; 2 uses
  br label %.preheader.i83

.preheader.i83:                                   ; preds = %bb.f, %.preheader.lr.ph.i82
  %.01326.i = phi i64 [ %i.ag, %bb.f ], [ 0, %.preheader.lr.ph.i82 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0129.0164, i64 %.01326.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87
  %.off = add i8 %i.af, -48
  %switch = icmp ult i8 %.off, 10
  br i1 %switch, label %bb.f, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.i83
  %.not.i74 = icmp eq i64 %.01326.i, -1
  %spec.select394 = select i1 %.not.i74, i64 %.sroa.12.0166, i64 %.01326.i
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit

bb.f:                                             ; preds = %.preheader.i83
  %i.ag = add nuw i64 %.01326.i, 1                ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.ag, %.sroa.12.0166
  br i1 %exitcond30.not.i, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit, label %.preheader.i83, !llvm.loop !5

_ZNK2c415basic_substringIKcE7left_ofEm.exit:      ; preds = %bb.f, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %.sroa.5154.0 = phi i64 [ %spec.select394, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ], [ %.sroa.12.0166, %bb.f ] ; 2 uses
  switch i64 %.sroa.5154.0, label %bb.g [
    i64 0, label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread
    i64 1, label %bb.h
  ], !prof !285

bb.g:                                             ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit
  tail call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA33_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(33) @.str.175)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit, %bb.g
  %i.ah = call noundef zeroext i1 @_ZN2c44atouImEEbNS_15basic_substringIKcEEPT_(ptr nonnull %.sroa.0129.0164, i64 %.sroa.5154.0, ptr noundef nonnull %i.b) #58
  br i1 %i.ah, label %bb.j, label %bb.i, !prof !88

bb.i:                                             ; preds = %bb.h
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA51_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(51) @.str.176)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not51 = icmp eq i64 %i.ai, 0
  br i1 %.not51, label %bb.k, label %bb.l, !prof !72

bb.k:                                             ; preds = %bb.j
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA30_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(30) @.str.177)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i64 [ %.pre, %bb.k ], [ %i.ai, %bb.j ]
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2488
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !206 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !215
  %i.ap = add i64 %i.aj, %i.ao                    ; 2 uses
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !102
  %.pre303 = load ptr, ptr %i.am, align 8, !tbaa !139
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre304 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !138
  br label %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread

_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread, %bb.l, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread
  %i.aq = phi i64 [ -1, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %i.ap, %bb.l ], [ -1, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ -1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ] ; 3 uses
  %i.ar = phi i64 [ %5, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.pre304, %bb.l ], [ %5, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %5, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %i.as = phi ptr [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.pre303, %bb.l ], [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %.sroa.0140.0, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %i.at = phi ptr [ %i.f, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %i.am, %bb.l ], [ %i.f, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %i.f, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ] ; 16 uses
  %.2 = phi i32 [ 0, %_ZNK2c415basic_substringIKcE5trimlEc.exit.thread ], [ %.1168, %bb.l ], [ %.1168, %_ZNK2c415basic_substringIKcE7left_ofEm.exit ], [ %.1, %_ZNK2c415basic_substringIKcE8first_ofES2_m.exit.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !210
  %i.aw = add i64 %i.av, %5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %5
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 5 uses
  %i.ba = sub i64 %i.ar, %5
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !101
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !225
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !226
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = add i64 %i.bf, %i.aw                    ; 10 uses
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !210
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !211
  %i.bj = add i64 %i.bi, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !211
  store i64 1, ptr %i.ax, align 8, !tbaa !212
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !219 ; 7 uses
  %i.bn = icmp ult i64 %i.bg, %i.bm
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bk, align 8, !tbaa !101 ; 4 uses
  br i1 %i.bn, label %.lr.ph.i.i85, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i85:                                     ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread, %bb.m
  %.046.i.i = phi i64 [ %i.bq, %bb.m ], [ %i.bg, %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bp, label %bb.m [
    i8 10, label %bb.n
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.i.i85
  %i.bq = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i86 = icmp eq i64 %i.bq, %i.bm
  br i1 %exitcond.not.i.i86, label %.thread.i, label %.lr.ph.i.i85, !llvm.loop !22

bb.n:                                             ; preds = %.lr.ph.i.i85, %.lr.ph.i.i85
  %i.br = icmp eq i8 %i.bp, 13
  %i.bs = zext i1 %i.br to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.bs ; 4 uses
  %i.bt = icmp ult i64 %spec.select.i.i, %i.bm
  br i1 %i.bt, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !87
  %i.bw = icmp eq i8 %i.bv, 10
  %i.bx = zext i1 %i.bw to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.bx
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.o, %bb.n
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.n ], [ %.046.i.i, %bb.o ], [ %i.bm, %bb.m ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.n ], [ %spec.select22.i.i, %bb.o ], [ %i.bm, %bb.m ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bg ; 3 uses
  %i.bz = sub i64 %.pn.i9.i, %i.bg                ; 3 uses
  store ptr %i.by, ptr %i.at, align 8, !tbaa !101
  store i64 %i.bz, ptr %i.az, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bg
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.p
  %.0710.i.i.i.i = phi i64 [ %i.cc, %bb.p ], [ 0, %.thread.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.0710.i.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.cb, 32
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cc, %i.bz
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.p, %.lr.ph.i.i.i.i, %.thread.i
  %i.cd = phi i64 [ -1, %.thread.i ], [ -1, %bb.p ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.ce = select i1 %.not.i.i.i, i64 %i.bm, i64 %.2.i.i
  %i.cf = sub i64 %i.ce, %i.bg
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bm ; 2 uses
  store ptr %i.cg, ptr %i.at, align 8, !tbaa !101
  store i64 0, ptr %i.az, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cd, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.cg, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.by, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cf, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bz, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store i64 %.sink24.i, ptr %i.ch, align 8, !tbaa !220
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr %.sink22.i, ptr %i.ci, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.bb, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  store ptr %.sink22.i, ptr %i.cj, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.bd, align 8, !tbaa !102
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !139
  %i.cl = load i64, ptr %i.bl, align 8, !tbaa !219 ; 2 uses
  %.not214245 = icmp ult i64 %i.bg, %i.cl
  br i1 %.not214245, label %.lr.ph, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread
  %i.co = phi i64 [ %i.aq, %.lr.ph ], [ %i.gj, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 19 uses
  %i.cp = phi i64 [ %i.bj, %.lr.ph ], [ %i.gn, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cq = phi i64 [ %.sink.i, %.lr.ph ], [ %i.dg, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cr = phi i64 [ %.sink21.i, %.lr.ph ], [ %i.gg, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ]
  %i.cs = phi i64 [ %i.aq, %.lr.ph ], [ %i.gk, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %i.ct = phi i64 [ %i.cl, %.lr.ph ], [ %i.gp, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 6 uses
  %i.cu = phi i64 [ %i.bg, %.lr.ph ], [ %i.gh, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %.035250 = phi i64 [ -1, %.lr.ph ], [ %.4, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 20 uses
  %.038248 = phi i64 [ 0, %.lr.ph ], [ %i.go, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.4.0246 = phi i64 [ 0, %.lr.ph ], [ %i.gl, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !101 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.046.i = phi i64 [ %i.cx, %bb.r ], [ %i.cu, %bb.q ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.046.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.cw, label %bb.r [
    i8 10, label %bb.s
    i8 13, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i
  %i.cx = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.cx, %i.ct
  br i1 %exitcond.not.i94, label %.thread179, label %.lr.ph.i, !llvm.loop !22

bb.s:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.cy = icmp eq i8 %i.cw, 13
  %i.cz = zext i1 %i.cy to i64
  %spec.select.i93 = add nuw i64 %.046.i, %i.cz   ; 4 uses
  %i.da = icmp ult i64 %spec.select.i93, %i.ct
  br i1 %i.da, label %bb.t, label %.thread179

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %spec.select.i93
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !87
  %i.dd = icmp eq i8 %i.dc, 10
  %i.de = zext i1 %i.dd to i64
  %spec.select22.i = add nuw i64 %spec.select.i93, %i.de
  br label %.thread179

.thread179:                                       ; preds = %bb.r, %bb.t, %bb.s
  %.pn.i182 = phi i64 [ %.046.i, %bb.s ], [ %.046.i, %bb.t ], [ %i.ct, %bb.r ] ; 3 uses
  %.2.i = phi i64 [ %spec.select.i93, %bb.s ], [ %spec.select22.i, %bb.t ], [ %i.ct, %bb.r ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.cu ; 12 uses
  %i.dg = sub i64 %.pn.i182, %i.cu                ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pn.i182, %i.cu    ; 2 uses
  br i1 %.not13.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread179, %bb.u
  %.0710.i.i.i = phi i64 [ %i.dj, %bb.u ], [ 0, %.thread179 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0710.i.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !87
  %.not.i.i.i88 = icmp eq i8 %i.di, 32
  br i1 %.not.i.i.i88, label %bb.u, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.dj = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dj, %i.dg
  br i1 %exitcond.not.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit: ; preds = %.lr.ph.i.i.i, %bb.u
  %i.dk = phi i64 [ %.0710.i.i.i, %.lr.ph.i.i.i ], [ -1, %bb.u ] ; 22 uses
  %.not.i.i90 = icmp eq i64 %.2.i, -1
  %i.dl = select i1 %.not.i.i90, i64 %i.ct, i64 %.2.i ; 13 uses
  %i.dm = sub i64 %i.dl, %i.cu                    ; 12 uses
  %.not52 = icmp eq i64 %i.cs, -1
  br i1 %.not52, label %.lr.ph.i97, label %bb.v

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread: ; preds = %.thread179
  %.not.i.i90342 = icmp eq i64 %.2.i, -1
  %i.dn = select i1 %.not.i.i90342, i64 %i.ct, i64 %.2.i ; 3 uses
  %i.do = sub i64 %i.dn, %i.cu                    ; 2 uses
  %.not52343 = icmp eq i64 %i.cs, -1
  br i1 %.not52343, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.v:                                             ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit
  %i.dp = icmp ult i64 %i.dk, %i.cs
  br i1 %i.dp, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.dq = icmp eq ptr %.sroa.02.0.copyload, null
  br i1 %i.dq, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.w, %bb.x
  %.01326.i.i.i = phi i64 [ %i.du, %bb.x ], [ 0, %bb.w ] ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 %.01326.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !87
  switch i8 %i.ds, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.x
end_hunk_0
