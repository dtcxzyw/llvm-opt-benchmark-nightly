Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector18query_count_before:bb.a
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4page(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4path(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5pages(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5query(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector6anchor(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector7locator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2, i128 %3) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [12 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 1                 ; 8 uses
  %i.u = alloca [4 x i8], align 1                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [4 x i8], align 4                ; 7 uses
  %i.ap = alloca [96 x i8], align 8               ; 14 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 169 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 67 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 101 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46413)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !46414, !noalias !46415, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !46414, !noalias !46415, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !46414, !noalias !46415, !nonnull !28, !align !39, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !46414, !noalias !46415, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !46416
  store ptr %i.bh, ptr %i.be, align 8, !noalias !46416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !46416
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bl, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !46416
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !46416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !46416
  invoke void @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.bo = load i8, ptr %i.bd, align 8, !range !108, !noalias !46416, !noundef !28
  %.not226.not.i = icmp eq i8 %i.bo, -1
  br i1 %.not226.not.i, label %.loopexit36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bs, align 8, !alias.scope !46412, !noalias !46413
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !46412, !noalias !46413 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.bt = load i64, ptr %0, align 8, !range !55, !alias.scope !46412, !noalias !46413
  %.not.i37.i = icmp eq i64 %i.bt, -1             ; 4 uses
  %i.bu = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bv = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bx = urem i32 %i.bw, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.by = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.by to i16
  %i.bz = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bz to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ca = icmp eq i32 %i.bv, 0
  %i.cb = urem i32 %i.bv, 1000000
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = urem i32 %i.bv, 1000
  %i.ce = icmp eq i32 %i.cd, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cf = udiv i32 %i.bv, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cg = udiv i32 %i.bv, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ch = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.ch, ptr @90, ptr @89
  %i.ci = select i1 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @90, i64 2), ptr getelementptr inbounds nuw (i8, ptr @89, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.not140.i.i = icmp eq i32 %i.br, 0             ; 18 uses
  %i.cn = lshr i32 %i.br, 4
  %i.co = and i32 %i.cn, 511                      ; 9 uses
  %i.cp = and i32 %i.br, 7
  %i.cq = add nuw nsw i32 %i.co, %i.cp
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cq to i16
  %i.cr = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cs = icmp samesign ult i16 %i.cr, 6          ; 2 uses
  %narrow58.i.i = add nuw nsw i16 %i.cr, 1
  %narrow59.i.i = select i1 %i.cs, i16 %narrow58.i.i, i16 0
  %i.ct = zext nneg i16 %narrow59.i.i to i64      ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @88, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @80, i64 %i.ct ; 2 uses
  %i.cx = lshr i32 %i.br, 3                       ; 3 uses
  %i.cy = and i32 %i.cx, 1023                     ; 7 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 7 uses
  %i.da = icmp samesign ult i32 %i.cy, 733        ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr @55, i64 %i.cz ; 6 uses
  %i.dc = icmp ne i32 %i.br, 0
  %or.cond5.i.i = select i1 %i.dc, i1 %i.bu, i1 false ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !46412, !noalias !46413 ; 7 uses
  %i.df = ashr i32 %i.br, 13                      ; 13 uses
  %or.cond.i93.i = icmp ult i32 %i.df, 10000      ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.lhs.trunc.i96.i = trunc nuw nsw i32 %i.df to i16 ; 2 uses
  %i.dg = udiv i16 %.lhs.trunc.i96.i, 100
  %i.dh = trunc nuw nsw i16 %i.dg to i8           ; 2 uses
  %i.di = udiv i8 %i.dh, 10
  %i.dj = or disjoint i8 %i.di, 48                ; 2 uses
  %i.dk = urem i8 %i.dh, 10
  %i.dl = or disjoint i8 %i.dk, 48                ; 2 uses
  %i.dm = trunc i32 %i.cx to i8                   ; 2 uses
  %i.dn = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.do = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.dp = urem i32 %i.do, 60
  %i.dq = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dr = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.ds = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.dr, i32 %i.ds, i32 %.sroa.21.0.copyload.i.i ; 6 uses
  %2 = zext i1 %i.dr to i32
  %.sroa.04.0.i.i = add nuw nsw i32 %i.dn, %2
  %i.dt = trunc i32 %i.dq to i8                   ; 4 uses
  %i.du = icmp ugt i8 %i.dt, 99                   ; 2 uses
  %i.dv = udiv i8 %i.dt, 10
  %i.dw = or disjoint i8 %i.dv, 48                ; 2 uses
  %i.dx = urem i8 %i.dt, 10
  %i.dy = or disjoint i8 %i.dx, 48                ; 2 uses
  %i.dz = trunc nuw nsw i32 %i.dp to i8           ; 3 uses
  %i.ea = udiv i8 %i.dz, 10
  %i.eb = or disjoint i8 %i.ea, 48                ; 2 uses
  %i.ec = urem i8 %i.dz, 10
  %i.ed = or disjoint i8 %i.ec, 48                ; 2 uses
  %i.ee = trunc nuw nsw i32 %.sroa.04.0.i.i to i8 ; 2 uses
  %i.ef = udiv i8 %i.ee, 10
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = urem i8 %i.ee, 10
  %i.ei = or disjoint i8 %i.eh, 48
  %i.ej = icmp eq i32 %storemerge.i.i, 0
  %i.ek = urem i32 %storemerge.i.i, 1000000
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = urem i32 %storemerge.i.i, 1000
  %i.en = icmp eq i32 %i.em, 0
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eo = udiv i32 %storemerge.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ep = udiv i32 %storemerge.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eq = urem i16 %.lhs.trunc.i96.i, 100
  %i.er = trunc nuw nsw i16 %i.eq to i8           ; 2 uses
  %i.es = udiv i8 %i.er, 10
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = urem i8 %i.er, 10
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.ex = add nuw nsw i32 %i.ew, %i.dn
  %i.ey = trunc nuw nsw i32 %i.ex to i8           ; 3 uses
  %i.ez = udiv i8 %i.ey, 10
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = urem i8 %i.ey, 10
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.fk = sext i32 %i.de to i64
  %.sroa.055.0.i.i = select i1 %.not.i37.i, i64 0, i64 %i.fk
  %i.fl = add nsw i32 %i.df, -1
  %i.fm = icmp slt i32 %i.df, 1                   ; 2 uses
  %i.fn = sub nsw i32 1, %i.df
  %i.fo = udiv i32 %i.fn, 400
  %i.fp = add nuw nsw i32 %i.fo, 1                ; 2 uses
  %i.fq = mul nuw nsw i32 %i.fp, 400
  %.neg.i.i = mul nsw i32 %i.fp, -146097
  %i.fr = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.fs = add nuw nsw i32 %i.co, -719163
  %i.ft = sub nsw i64 %i.fr, %.sroa.055.0.i.i
  %.sroa.426.0..sroa_idx.i116.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i117.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i120.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i123.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fw = zext nneg i32 %i.bv to i64
  %.sroa.426.0..sroa_idx.i105.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.445.0..sroa_idx.i106.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.430.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx.i110.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.434.0..sroa_idx.i112.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fz = urem i32 %i.dq, 12                      ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = trunc nuw nsw i32 %i.fz to i8
  %i.gc = select i1 %i.ga, i8 12, i8 %i.gb
  %i.gd = zext nneg i32 %i.co to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.cr to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.gg = trunc i32 %i.br to i8
  %i.gh = and i8 %i.gg, 15                        ; 4 uses
  %i.gi = trunc nuw nsw i32 %i.co to i16
  %i.gj = add nuw nsw i16 %i.gi, 6
  %.lhs.trunc1.i101.i.i = sub nuw nsw i16 %i.gj, %i.cr
  %i.gk = udiv i16 %.lhs.trunc1.i101.i.i, 7
  %i.gl = trunc nuw nsw i16 %i.gk to i8
  %spec.select.i96.i.i = zext nneg i16 %i.cr to i32 ; 2 uses
  %3 = add nuw nsw i32 %spec.select.i96.i.i, 7
  %.pn.i.i.i = select i1 %i.cs, i32 %3, i32 %spec.select.i96.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.co, 6
  %4 = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %5 = trunc nsw i32 %4 to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %5, 6
  %i.gm = sdiv i16 %.lhs.trunc1.i.i.i, 7
  %i.gn = trunc nuw nsw i16 %i.gm to i8
  %i.go = srem i32 %i.df, 100                     ; 4 uses
  %i.gp = icmp slt i32 %i.go, 0
  %i.gq = add nsw i32 %i.go, 100
  %spec.select.i.i.i = select i1 %i.gp, i32 %i.gq, i32 %i.go
  %i.gr = trunc nuw nsw i32 %spec.select.i.i.i to i8
  %i.gs = sdiv i32 %i.df, 100
  %.lobit.i.i.i = ashr i32 %i.go, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.gs
  %i.gt = trunc i32 %.sroa.0.0.i.i.i to i8
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 6 uses
  %spec.select.i = select i1 %i.fm, i32 %.neg.i.i, i32 0
  %i.gv = select i1 %i.fm, i32 %i.fq, i32 0
  %spec.select228.i = add nsw i32 %i.fl, %i.gv    ; 2 uses
  %i.gw = sdiv i32 %spec.select228.i, 100         ; 2 uses
  %i.gx = mul nsw i32 %spec.select228.i, 1461
  %i.gy = ashr i32 %i.gx, 2
  %i.gz = ashr i32 %i.gw, 2
  %i.ha = add i32 %i.fs, %spec.select.i
  %i.hb = sub i32 %i.ha, %i.gw
  %i.hc = add i32 %i.hb, %i.gy
  %narrow.i.i = add i32 %i.hc, %i.gz
  %i.hd = sext i32 %narrow.i.i to i64
  %i.he = mul nsw i64 %i.hd, 86400
  %i.hf = add nsw i64 %i.ft, %i.he
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hk = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.hl = insertelement <2 x ptr> %i.hk, ptr %i.ci, i64 1
  %i.hm = shl nuw nsw i16 %i.cr, 3
  %switch.shiftamt = zext nneg i16 %i.hm to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

.loopexit.i:                                      ; preds = %.noexc53.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ci, %.noexc163.i.i, %.noexc.peel.i.i
  %lpad.loopexit182.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit73.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit68.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit63.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.al, %bb.aj, %bb.ah, %bb.ep, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i84.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit85.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit80.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit75.i.i, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fq, %bb.fp, %bb.fo, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ff, %bb.fd, %bb.fc, %bb.fa, %bb.ez, %bb.ew, %bb.et, %bb.es, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i.i, %.noexc161.i, %bb.en, %bb.em, %bb.el, %bb.ej, %bb.ei, %bb.eh, %bb.ef, %bb.ee, %bb.ec, %bb.ea, %bb.dz, %bb.dx, %bb.dw, %bb.dv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i19.i.i, %bb.dt, %bb.dr, %bb.dp, %bb.do, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i12.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i136.i, %bb.dj, %bb.di, %bb.db, %bb.da, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit224.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit219.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit214.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit209.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit199.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i198.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit191.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i190.i.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit183.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i182.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit180.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit175.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i167.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i164.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i168.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i161.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i157.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i153.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i115.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i119.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i122.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i104.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i108.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i111.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i.i.i, %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.av, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.am
  %lpad.loopexit185.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke326.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit182.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit185.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCseKXfNLkF2r6_6chrono6format4ItemECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #62
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !46416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !46416
  %i.hn = load i8, ptr %i.bc, align 8, !range !87, !noalias !46416, !noundef !28
  switch i8 %i.hn, label %default.unreachable [
    i8 0, label %bb.fz
    i8 1, label %bb.gb
    i8 2, label %bb.fz
    i8 3, label %bb.gb
    i8 4, label %bb.c
    i8 5, label %bb.ay
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, %bb.ax, %bb.aw, %bb.af, %bb.y, %bb.x, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ho = load i8, ptr %i.fj, align 2, !range !40, !noalias !46416, !noundef !28 ; 6 uses
  %.val.i = load i8, ptr %i.bp, align 1, !range !46417, !noalias !46416, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !46418)
  switch i8 %.val.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.invoke.i

bb.e:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.invoke325.i

bb.f:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.invoke325.i

bb.g:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.am

bb.h:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.an

bb.i:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.ao

bb.j:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.ap

bb.k:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.ar

bb.l:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.invoke325.i

bb.m:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %.invoke325.i

bb.n:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.at

bb.o:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %switch.lookup

bb.p:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %switch.lookup.i.i

bb.q:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i, label %bb.aw

bb.r:                                             ; preds = %bb.c
  br i1 %i.bu, label %.invoke325.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

bb.s:                                             ; preds = %bb.c
  br i1 %i.bu, label %.invoke325.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

bb.t:                                             ; preds = %bb.c
  br i1 %i.bu, label %.invoke325.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

bb.u:                                             ; preds = %bb.c
  br i1 %i.bu, label %.invoke325.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

bb.v:                                             ; preds = %bb.c
  br i1 %i.bu, label %bb.ax, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

bb.w:                                             ; preds = %bb.c
  br i1 %or.cond5.i.i, label %_RNvMNtNtCseKXfNLkF2r6_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, label %_RINvMNtNtCseKXfNLkF2r6_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.thread.i

.invoke.i:                                        ; preds = %.noexc8.i, %bb.d
  %i.hp = phi i32 [ %i.ki, %.noexc8.i ], [ %i.df, %bb.d ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46419)
  %i.hq = add nsw i32 %i.hp, -1000
  %or.cond.i = icmp ult i32 %i.hq, 9000
  br i1 %or.cond.i, label %bb.z, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i: ; preds = %.invoke.i
  %i.hr = sext i32 %i.hp to i64
  %spec.select.i.i17 = icmp ugt i32 %i.hp, 9999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.hr, ptr %i.g, align 8, !noalias !46420
  br i1 %spec.select.i.i17, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i
  switch i8 %i.ho, label %default.unreachable [
    i8 0, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit.i
    i8 1, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit53.i
    i8 2, label %_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst.exit58.i
  ]

bb.y:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs9fPPV5zPXBl_5typst.exit.thread.i
end_hunk_0
