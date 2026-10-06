Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_:.lr.ph.i
  %i.bb = getelementptr i8, ptr %i.as, i64 8
  %.val5.i6 = load i64, ptr %i.bb, align 8, !noundef !5
  %i.bc = icmp ult i64 %.val4.i5, %.val5.i6       ; 3 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 8
  %.val2.i7 = load i64, ptr %i.bd, align 8, !noundef !5
  %i.be = getelementptr i8, ptr %i.av, i64 8
  %.val3.i8 = load i64, ptr %i.be, align 8, !noundef !5
  %i.bf = icmp ult i64 %.val2.i7, %.val3.i8       ; 3 uses
  %i.bg = select i1 %i.bc, ptr %i.ax, ptr %i.as, !unpredictable !5
  %i.bh = select i1 %i.bf, ptr %i.av, ptr %i.az, !unpredictable !5
  %i.bi = select i1 %i.bf, ptr %i.ax, ptr %i.av, !unpredictable !5
  %i.bj = select i1 %i.bc, ptr %i.as, ptr %i.bi, !unpredictable !5 ; 3 uses
  %i.bk = select i1 %i.bc, ptr %i.av, ptr %i.ax, !unpredictable !5
  %i.bl = select i1 %i.bf, ptr %i.az, ptr %i.bk, !unpredictable !5 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val.i9 = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  %.val1.i10 = load i64, ptr %i.bn, align 8, !noundef !5
  %i.bo = icmp ult i64 %.val.i9, %.val1.i10       ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bl, ptr %i.bj, !unpredictable !5
  %i.bq = select i1 %i.bo, ptr %i.bj, ptr %i.bl, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.br = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.bs = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bt = getelementptr i8, ptr %2, i64 112       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9423)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bv = getelementptr i8, ptr %2, i64 72
  %.sroa.011.0.val.i = load i64, ptr %i.bv, align 8, !alias.scope !9423, !noundef !5
  %i.bw = getelementptr i8, ptr %2, i64 8
  %.sroa.06.0.val.i = load i64, ptr %i.bw, align 8, !alias.scope !9423, !noundef !5
  %i.bx = icmp ult i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.bx, ptr %i.ak, ptr %2
  %i.by = xor i1 %i.bx, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !9424
  %i.bz = zext i1 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bz ; 3 uses
  %i.cb = zext i1 %i.by to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = getelementptr i8, ptr %2, i64 120
  %.sroa.017.0.val.i = load i64, ptr %i.ce, align 8, !alias.scope !9423, !noundef !5
  %i.cf = getelementptr i8, ptr %2, i64 56
  %.sroa.015.0.val.i = load i64, ptr %i.cf, align 8, !alias.scope !9423, !noundef !5
  %i.cg = icmp ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cg, ptr %i.ai, ptr %i.bt
  %i.ch = xor i1 %i.cg, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !9425
  %.neg.i.i = sext i1 %i.ch to i64
  %i.ci = getelementptr [16 x i8], ptr %i.bt, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.cg to i64
  %i.cj = getelementptr [16 x i8], ptr %i.ai, i64 %.neg13.i.i ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cl = getelementptr i8, ptr %i.ca, i64 8
  %.sroa.011.0.val.i.1 = load i64, ptr %i.cl, align 8, !alias.scope !9423, !noundef !5
  %i.cm = getelementptr i8, ptr %i.cc, i64 8
  %.sroa.06.0.val.i.1 = load i64, ptr %i.cm, align 8, !alias.scope !9423, !noundef !5
  %i.cn = icmp ult i64 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i21.i.1 = select i1 %i.cn, ptr %i.ca, ptr %i.cc
  %i.co = xor i1 %i.cn, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.1, i64 16, i1 false), !noalias !9424
  %i.cp = zext i1 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.co to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = getelementptr i8, ptr %i.ci, i64 8
  %.sroa.017.0.val.i.1 = load i64, ptr %i.cu, align 8, !alias.scope !9423, !noundef !5
  %i.cv = getelementptr i8, ptr %i.cj, i64 8
  %.sroa.015.0.val.i.1 = load i64, ptr %i.cv, align 8, !alias.scope !9423, !noundef !5
  %i.cw = icmp ult i64 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.cw, ptr %i.cj, ptr %i.ci
  %i.cx = xor i1 %i.cw, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !9425
  %.neg.i.i.1 = sext i1 %i.cx to i64
  %i.cy = getelementptr [16 x i8], ptr %i.ci, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.cw to i64
  %i.cz = getelementptr [16 x i8], ptr %i.cj, i64 %.neg13.i.i.1 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.db = getelementptr i8, ptr %i.cq, i64 8
  %.sroa.011.0.val.i.2 = load i64, ptr %i.db, align 8, !alias.scope !9423, !noundef !5
  %i.dc = getelementptr i8, ptr %i.cs, i64 8
  %.sroa.06.0.val.i.2 = load i64, ptr %i.dc, align 8, !alias.scope !9423, !noundef !5
  %i.dd = icmp ult i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i21.i.2 = select i1 %i.dd, ptr %i.cq, ptr %i.cs
  %i.de = xor i1 %i.dd, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.2, i64 16, i1 false), !noalias !9424
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.de to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = getelementptr i8, ptr %i.cy, i64 8
  %.sroa.017.0.val.i.2 = load i64, ptr %i.dk, align 8, !alias.scope !9423, !noundef !5
  %i.dl = getelementptr i8, ptr %i.cz, i64 8
  %.sroa.015.0.val.i.2 = load i64, ptr %i.dl, align 8, !alias.scope !9423, !noundef !5
  %i.dm = icmp ult i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.dm, ptr %i.cz, ptr %i.cy
  %i.dn = xor i1 %i.dm, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !9425
  %.neg.i.i.2 = sext i1 %i.dn to i64
  %i.do = getelementptr [16 x i8], ptr %i.cy, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.dm to i64
  %i.dp = getelementptr [16 x i8], ptr %i.cz, i64 %.neg13.i.i.2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dr = getelementptr i8, ptr %i.dg, i64 8
  %.sroa.011.0.val.i.3 = load i64, ptr %i.dr, align 8, !alias.scope !9423, !noundef !5
  %i.ds = getelementptr i8, ptr %i.di, i64 8
  %.sroa.06.0.val.i.3 = load i64, ptr %i.ds, align 8, !alias.scope !9423, !noundef !5
  %i.dt = icmp ult i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.dt, ptr %i.dg, ptr %i.di
  %i.du = xor i1 %i.dt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !9424
  %i.dv = zext i1 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = zext i1 %i.du to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.do, i64 8
  %.sroa.017.0.val.i.3 = load i64, ptr %i.dz, align 8, !alias.scope !9423, !noundef !5
  %i.ea = getelementptr i8, ptr %i.dp, i64 8
  %.sroa.015.0.val.i.3 = load i64, ptr %i.ea, align 8, !alias.scope !9423, !noundef !5
  %i.eb = icmp ult i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.eb, ptr %i.dp, ptr %i.do
  %i.ec = xor i1 %i.eb, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !9425
  %.neg.i.i.3 = sext i1 %i.ec to i64
  %i.ed = getelementptr [16 x i8], ptr %i.do, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.eb to i64
  %i.ee = getelementptr [16 x i8], ptr %i.dp, i64 %.neg13.i.i.3
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  %i.eh = icmp ne ptr %i.dy, %i.ef
  %i.ei = icmp ne ptr %i.dw, %i.eg
  %or.cond.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !25
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1n_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCINvB1j_6uniqueB2d_Es1_0E0EB1n_.exit, !prof !25

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37, !noalias !9423
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1n_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCINvB1j_6uniqueB2d_Es1_0E0EB1n_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9448, !noalias !9449, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9448, !noalias !9449, !noundef !5
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9448, !noalias !9449, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9448, !noalias !9449, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9430
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9450, !noalias !9451, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9450, !noalias !9451, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9452, !noalias !9449
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9453, !noalias !9454
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9453, !noalias !9454
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9455), !noalias !9449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9456), !noalias !9449
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9450, !noalias !9451, !nonnull !5, !align !9, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9450, !noalias !9451, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9452, !noalias !9449
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9453, !noalias !9454
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9453, !noalias !9454
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9450, !noalias !9451, !nonnull !5, !align !9, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9450, !noalias !9451, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9452, !noalias !9449
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9453, !noalias !9454
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9453, !noalias !9454
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.159 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.159
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9436
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9436
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9458)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9459
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9458, !noalias !9460, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9457, !noalias !9461, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9459, !noalias !9462
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cc
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9457, !noalias !9463, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9458, !noalias !9464, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9459, !noalias !9465
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9459, !noalias !9466
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i
  %i.ef = shl nuw nsw i64 %i.ca, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eh = icmp ugt i64 %i.br, 1
  br i1 %i.eh, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ei = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ej = lshr i64 %.sroa.018.0, 1
  %i.ek = add nuw i64 %i.ej, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.el = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.el, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = or i64 %1, 1
  %i.en = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = xor i32 %i.ep, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9436
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9489, !noalias !9490, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9489, !noalias !9490, !noundef !5
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9489, !noalias !9490, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9489, !noalias !9490, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9471
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9491, !noalias !9492, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9491, !noalias !9492, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9493, !noalias !9490
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9494, !noalias !9495
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9494, !noalias !9495
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9496), !noalias !9490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9497), !noalias !9490
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9491, !noalias !9492, !nonnull !5, !align !9, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9491, !noalias !9492, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9493, !noalias !9490
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9494, !noalias !9495
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9494, !noalias !9495
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9491, !noalias !9492, !nonnull !5, !align !9, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9491, !noalias !9492, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9493, !noalias !9490
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9494, !noalias !9495
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9494, !noalias !9495
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.159 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.159
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9477
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9477
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
end_hunk_0
