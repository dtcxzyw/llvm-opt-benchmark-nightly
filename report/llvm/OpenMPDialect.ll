Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPDialect?download=true
inline.NumInlined: 86000
inline.NumDeleted: 22767
loop-unroll.NumCompletelyUnrolled: 325
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 334
begin_hunk_0_@_ZN4mlir3omp23symbolizeClauseMapFlagsEN4llvm9StringRefE:bb.a
  %.not.i.i32 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ao = load i32, ptr %i.z, align 1
  %i.ap = xor i32 %i.ao, 1635216481
  %i.aq = getelementptr i8, ptr %i.z, i64 4
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = zext i16 %i.ar to i32
  %i.at = xor i32 %i.as, 29561
  %i.au = or i32 %i.ap, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not.i.i41 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i120

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.ax = load i16, ptr %i.z, align 1
  %i.ay = xor i16 %i.ax, 25956
  %i.az = getelementptr i8, ptr %i.z, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i16
  %i.bc = xor i16 %i.bb, 108
  %i.bd = or i16 %i.ay, %i.bc
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %bb.b
  %i.bg = load i64, ptr %i.z, align 1
  %i.bh = xor i64 %i.bg, 8097312092911330674
  %i.bi = getelementptr i8, ptr %i.z, i64 8
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = xor i64 %i.bk, 1835102817
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i59 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i138

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.bp = load i32, ptr %i.z, align 1
  %i.bq = icmp ne i32 %i.bp, 1986622064
  %i.br = zext i1 %i.bq to i32
  %.not.i.i68 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.bs = load i32, ptr %i.z, align 1
  %i.bt = xor i32 %i.bs, 1702127980
  %i.bu = getelementptr i8, ptr %i.z, i64 3
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 1818325605
  %i.bx = or i32 %i.bt, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not.i.i77 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i102

_ZN4llvmneENS_9StringRefES0_.exit.i.i84:          ; preds = %bb.b
  %i.ca = load i64, ptr %i.z, align 1
  %i.cb = icmp ne i64 %i.ca, 8388345085396282729
  %i.cc = zext i1 %i.cb to i32
  %.not.i.i86 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i86, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i165

_ZN4llvmneENS_9StringRefES0_.exit.i.i93:          ; preds = %bb.b
  %i.cd = load i32, ptr %i.z, align 1
  %i.ce = xor i32 %i.cd, 1936682083
  %i.cf = getelementptr i8, ptr %i.z, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.ch, 101
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not.i.i95 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i95, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i102:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  %i.cm = load i32, ptr %i.z, align 1
  %i.cn = xor i32 %i.cm, 1936028272
  %i.co = getelementptr i8, ptr %i.z, i64 3
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = xor i32 %i.cp, 1953391987
  %i.cr = or i32 %i.cn, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %.not.i.i104 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i156

_ZN4llvmneENS_9StringRefES0_.exit.i.i111:         ; preds = %bb.b
  %i.cu = load i64, ptr %i.z, align 1
  %i.cv = xor i64 %i.cu, 7813578637762915695
  %i.cw = getelementptr i8, ptr %i.z, i64 8
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cy, 100
  %i.da = or i64 %i.cv, %i.cz
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not.i.i113 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i113, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i120:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %i.dd = load i32, ptr %i.z, align 1
  %i.de = xor i32 %i.dd, 1635021921
  %i.df = getelementptr i8, ptr %i.z, i64 4
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i32
  %i.di = xor i32 %i.dh, 26723
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %.not.i.i122 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i122, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i129:         ; preds = %bb.b
  %i.dm = load i64, ptr %i.z, align 1
  %i.dn = xor i64 %i.dm, 7016441520512595041
  %i.do = getelementptr i8, ptr %i.z, i64 5
  %i.dp = load i64, ptr %i.do, align 1
  %i.dq = xor i64 %i.dp, 8320788952091025256
  %i.dr = or i64 %i.dn, %i.dq
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %.not.i.i131 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i131, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i174

_ZN4llvmneENS_9StringRefES0_.exit.i.i138:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i57
  %i.du = load i64, ptr %i.z, align 1
  %i.dv = xor i64 %i.du, 7953190243005658209
  %i.dw = getelementptr i8, ptr %i.z, i64 8
  %i.dx = load i32, ptr %i.dw, align 1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = xor i64 %i.dy, 1919252069
  %i.ea = or i64 %i.dv, %i.dz
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %.not.i.i140 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i140, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i147:         ; preds = %bb.b
  %i.ed = load i64, ptr %i.z, align 1
  %i.ee = xor i64 %i.ed, 7016441520512595041
  %i.ef = getelementptr i8, ptr %i.z, i64 3
  %i.eg = load i64, ptr %i.ef, align 1
  %i.eh = xor i64 %i.eg, 8031173096581391201
  %i.ei = or i64 %i.ee, %i.eh
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %.not.i.i149 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i149, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i156:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i102
  %i.el = load i32, ptr %i.z, align 1
  %i.em = xor i32 %i.el, 1600546162
  %i.en = getelementptr i8, ptr %i.z, i64 3
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = xor i32 %i.eo, 1920233567
  %i.eq = or i32 %i.em, %i.ep
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %.not.i.i158 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i158, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i165:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i84
  %i.et = load i64, ptr %i.z, align 1
  %i.eu = icmp ne i64 %i.et, 7306373996464203122
  %i.ev = zext i1 %i.eu to i32
  %.not.i.i167 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i167, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

_ZN4llvmneENS_9StringRefES0_.exit.i.i174:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
  %i.ew = load i64, ptr %i.z, align 1
  %i.ex = xor i64 %i.ew, 7163386860157236073
  %i.ey = getelementptr i8, ptr %i.z, i64 5
  %i.ez = load i64, ptr %i.ey, align 1
  %i.fa = xor i64 %i.ez, 8247340372647438710
  %i.fb = or i64 %i.ex, %i.fa
  %i.fc = icmp ne i64 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %.not.i.i176 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i176, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178, label %.thread554

.thread554:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156, %_ZN4llvmneENS_9StringRefES0_.exit.i.i165, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.thread574

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156, %_ZN4llvmneENS_9StringRefES0_.exit.i.i165, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174
  %.sroa.42.18 = phi i32 [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156 ], [ 131072, %_ZN4llvmneENS_9StringRefES0_.exit.i.i165 ], [ 16384, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138 ], [ 32768, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147 ], [ 4096, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120 ], [ 8192, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129 ], [ 1024, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102 ], [ 2048, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84 ], [ 512, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 262144, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174 ]
  %i.fe = or i32 %.sroa.42.18, %.0772             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ff = getelementptr inbounds nuw i8, ptr %.016771, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ff, %i.l
  br i1 %.not, label %.thread574.loopexit, label %bb.b

.thread574.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit178
  %i.fg = zext i32 %i.fe to i64
  %i.fh = or disjoint i64 %i.fg, 4294967296
  br label %.thread574

.thread574:                                       ; preds = %.thread574.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread419, %.thread554
  %.sroa.3.3 = phi i64 [ 0, %.thread554 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread419 ], [ %i.fh, %.thread574.loopexit ]
  %i.fi = load ptr, ptr %4, align 8, !tbaa !136   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.f
  br i1 %i.fj, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread574
  call void @free(ptr noundef %i.fi) #32
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread574, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

declare void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir3omp23symbolizeClauseMapFlagsEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 524288
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3omp23stringifyClauseRequiresB5cxx11ENS0_14ClauseRequiresE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  store i32 1701736302, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !131
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i32 0, ptr %i.f, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 2, ptr %i.g, align 4, !tbaa !138
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.32, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 15, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 2
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.33, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 15, ptr %.sroa.3.0..sroa_idx.i10, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %i.o = and i32 %1, 4
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11
  %.not.i12 = icmp samesign ult i32 %i.n, 2
  br i1 %.not.i12, label %bb.g, label %bb.f, !prof !139

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.34, i64 21)
  %.pre27.pre = load i32, ptr %i.f, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14

bb.g:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p ; 2 uses
  store ptr @.str.34, ptr %i.q, align 8
  %.sroa.3.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 21, ptr %.sroa.3.0..sroa_idx.i13, align 8
  %i.r = add nuw nsw i32 %i.n, 1                  ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14: ; preds = %bb.g, %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11
  %.pre27 = phi i32 [ %i.r, %bb.g ], [ %.pre27.pre, %bb.f ], [ %i.n, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit11 ] ; 3 uses
  %i.s = and i32 %1, 8
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14
  %i.t = load i32, ptr %i.g, align 4, !tbaa !138
  %.not.i15 = icmp ult i32 %.pre27, %i.t
  br i1 %.not.i15, label %bb.j, label %bb.i, !prof !139

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.35, i64 18)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !137, !noalias !1206
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17

bb.j:                                             ; preds = %bb.h
  %i.u = zext i32 %.pre27 to i64
  %i.v = load ptr, ptr %2, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.u ; 2 uses
  store ptr @.str.35, ptr %i.w, align 1
  %.sroa.3.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 18, ptr %.sroa.3.0..sroa_idx.i16, align 1
  %i.x = load i32, ptr %i.f, align 8, !tbaa !137
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14
  %i.z = phi i32 [ %i.y, %bb.j ], [ %.pre, %bb.i ], [ %.pre27, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit14 ]
  %i.aa = load ptr, ptr %2, align 8, !tbaa !136, !noalias !1206 ; 2 uses
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.aa, ptr noundef %i.ac, ptr nonnull @.str.30, i64 1)
  %i.ad = load ptr, ptr %2, align 8, !tbaa !136   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.e
  br i1 %i.ae, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17
  call void @free(ptr noundef %i.ad) #32
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir3omp23symbolizeClauseRequiresEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread104

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736302
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread104

_ZN4llvmeqENS_9StringRefES0_.exit.thread104:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !138
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.30, i64 1, i32 noundef -1, i1 noundef zeroext true) #32
  %i.i = load ptr, ptr %4, align 8, !tbaa !136    ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !137  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not143 = icmp eq i32 %i.j, 0
  br i1 %.not143, label %.thread139, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread104
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43
  %.0145 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43 ]
  %.016144 = phi ptr [ %i.i, %.lr.ph ], [ %i.bi, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016144, i64 16, i1 false), !tbaa.struct !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.o = load i64, ptr %i.m, align 8, !tbaa !143
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.31, i64 6, i64 noundef 0) #32
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !143  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.31, i64 6, i64 noundef -1) #32
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !143  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !144    ; 8 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread119 [
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 21, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 6874027341416654194
  %i.ac = getelementptr i8, ptr %i.z, i64 7
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7233184987898867551
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ai = load i64, ptr %i.z, align 1
  %i.aj = xor i64 %i.ai, 6873730434638376565
  %i.ak = getelementptr i8, ptr %i.z, i64 7
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8319104478668415327
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i23 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %.thread119

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.aq = load i128, ptr %i.z, align 1
  %i.ar = xor i128 %i.aq, 145381156020520468057465332613811629685
  %i.as = getelementptr i8, ptr %i.z, i64 5
  %i.at = load i128, ptr %i.as, align 1
  %i.au = xor i128 %i.at, 161430769346573719744337125471548302437
  %i.av = or i128 %i.ar, %i.au
  %i.aw = icmp ne i128 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not.i.i32 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %.thread119

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.ay = load i128, ptr %i.z, align 1
  %i.az = xor i128 %i.ay, 148148589239519256911908126935166646628
  %i.ba = getelementptr i8, ptr %i.z, i64 16
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = zext i16 %i.bb to i128
  %i.bd = xor i128 %i.bc, 29554
  %i.be = or i128 %i.az, %i.bd
  %i.bf = icmp ne i128 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i41 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %.thread119

.thread119:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.thread139

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %.sroa.12.3 = phi i32 [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ]
  %i.bh = or i32 %.sroa.12.3, %.0145              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.bi = getelementptr inbounds nuw i8, ptr %.016144, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.l
  br i1 %.not, label %.thread139.loopexit, label %bb.b

.thread139.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43
  %i.bj = zext i32 %i.bh to i64
  %i.bk = or disjoint i64 %i.bj, 4294967296
  br label %.thread139

.thread139:                                       ; preds = %.thread139.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread104, %.thread119
  %.sroa.3.3 = phi i64 [ 0, %.thread119 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread104 ], [ %i.bk, %.thread139.loopexit ]
  %i.bl = load ptr, ptr %4, align 8, !tbaa !136   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.f
  br i1 %i.bm, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread139
  call void @free(ptr noundef %i.bl) #32
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread139, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir3omp23symbolizeClauseRequiresEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 16
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir3omp25stringifyClauseTaskDependENS0_16ClauseTaskDependE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir3omp25stringifyClauseTaskDependENS0_16ClauseTaskDependE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir3omp25stringifyClauseTaskDependENS0_16ClauseTaskDependE.1595, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.7.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.1, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir3omp25symbolizeClauseTaskDependEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #6 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39 [
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
    i64 23, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i26
    i64 18, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i35
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 7309453677196173684
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = xor i64 %i.e, 1852400750
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 7309453677196173684
  %i.l = getelementptr i8, ptr %0, i64 5
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 8391735957814341733
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not.i.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.r = load i64, ptr %0, align 1
  %i.s = xor i64 %i.r, 7309453677196173684
  %i.t = getelementptr i8, ptr %0, i64 7
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 8391736000680062565
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not.i.i19 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i19, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

_ZN4llvmneENS_9StringRefES0_.exit.i.i26:          ; preds = %bb.a
  %i.z = load i128, ptr %0, align 1
  %i.aa = xor i128 %i.z, 140194072930619159780234336783031296372
  %i.ab = getelementptr i8, ptr %0, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 154717211197677988765056422491329949285
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not.i.i28 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i28, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39, label %.thread118

.thread118:                                       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39

_ZN4llvmneENS_9StringRefES0_.exit.i.i35:          ; preds = %bb.a
  %i.ah = load i128, ptr %0, align 1
  %i.ai = xor i128 %i.ah, 153465907821275794282135506591046394228
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i128
  %i.am = xor i128 %i.al, 29797
  %i.an = or i128 %i.ai, %i.am
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i37 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.i37, i64 4294967300, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39

_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp16ClauseTaskDependEES5_E4CaseENS_13StringLiteralES5_.exit39: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i35, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread118
  %.sroa.20.4 = phi i64 [ 0, %bb.a ], [ 4294967299, %_ZN4llvmneENS_9StringRefES0_.exit.i.i26 ], [ %i.aq, %_ZN4llvmneENS_9StringRefES0_.exit.i.i35 ], [ 0, %.thread118 ], [ 4294967298, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  ret i64 %.sroa.20.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN4mlir3omp25symbolizeClauseTaskDependEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.6.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.6.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir3omp30stringifyDataSharingClauseTypeENS0_21DataSharingClauseTypeE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi i64 [ 0, %bb.c ], [ 12, %bb.b ], [ 7, %bb.a ]
  %.sroa.0.0 = phi ptr [ @.str.1, %bb.c ], [ @.str.42, %bb.b ], [ @.str.41, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967298) i64 @_ZN4mlir3omp30symbolizeDataSharingClauseTypeEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #6 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp21DataSharingClauseTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread [
    i64 7, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp21DataSharingClauseTypeEES5_E4CaseENS_13StringLiteralES5_.exit12
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 7598259166782843238
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = xor i64 %i.e, 1702125942
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %bcmp.i.i.i.i9.fr = freeze i32 %i.i
  %.not.i.i10 = icmp eq i32 %bcmp.i.i.i.i9.fr, 0  ; 2 uses
  %spec.select37 = select i1 %.not.i.i10, i64 4294967297, i64 4294967296
  br i1 %.not.i.i10, label %bb.b, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp21DataSharingClauseTypeEES5_E4CaseENS_13StringLiteralES5_.exit12.thread

_ZN4llvm12StringSwitchISt8optionalIN4mlir3omp21DataSharingClauseTypeEES5_E4CaseENS_13StringLiteralES5_.exit12: ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = xor i32 %i.j, 1986622064
  %i.l = getelementptr i8, ptr %0, i64 3
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1702125942
  %i.o = or i32 %i.k, %i.n
end_hunk_0
