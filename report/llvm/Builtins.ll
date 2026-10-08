Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Builtins?download=true
inline.NumInlined: 563
inline.NumDeleted: 271
begin_hunk_0_@_ZNK5clang7Builtin7Context29shouldGenerateFPMathIntrinsicEjN4llvm6TripleESt8optionalIbEbbb:bb.a
  br label %_ZN4llvm6TripleC2ERKS0_.exit

_ZN4llvm6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %i.aw = load ptr, ptr %7, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 44
  %.val = load i32, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.val31 = load i32, ptr %i.bb, align 8          ; 3 uses
  %.off.i = add i32 %1, -614
  %switch.i = icmp ult i32 %.off.i, 7
  br i1 %switch.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN4llvm6TripleC2ERKS0_.exit
  %i.bc = add i32 %.val31, -1
  %spec.select.i.i = icmp ult i32 %i.bc, 12
  br i1 %spec.select.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %.val, 15
  %i.be = icmp ult i32 %.val31, 2
  %i.bf = and i32 %.val31, -2
  %i.bg = icmp eq i32 %i.bf, 28
  %i.bh = or i1 %i.be, %i.bg
  %or.cond.i = select i1 %i.bd, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvm6TripleC2ERKS0_.exit
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.bi = phi i1 [ true, %bb.l ], [ %5, %bb.k ], [ %5, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.al
  br i1 %i.bk, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bl = load i64, ptr %i.al, align 8, !tbaa !37
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #18
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %bb.m, %_ZNK5clang7Builtin7Context7isConstEj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not78 = phi i1 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %5, %_ZNK5clang7Builtin7Context7isConstEj.exit ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bn = load i32, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.bo = add i32 %i.bn, 1695
  %.not36.i.i.i32 = icmp ult i32 %1, %i.bo        ; 2 uses
  br i1 %.not36.i.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6TripleD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = add i32 %1, -1695
  %i.bs = sub i32 %i.br, %i.bn
  br label %bb.q

bb.o:                                             ; preds = %_ZN4llvm6TripleD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = icmp ugt i32 %1, 1694
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = add i32 %1, -1695
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.030.0.in.i.i.i33 = phi ptr [ %i.bp, %bb.n ], [ %i.bv, %bb.p ], [ %0, %bb.o ]
  %.sroa.7.0.in.in.i.i.i34 = phi ptr [ %i.bq, %bb.n ], [ %i.bw, %bb.p ], [ %i.bt, %bb.o ]
  %.021.i.i.i35 = phi i32 [ %i.bs, %bb.n ], [ %i.bx, %bb.p ], [ %1, %bb.o ] ; 2 uses
  %.sroa.7.0.in.i.i.i36 = load i32, ptr %.sroa.7.0.in.in.i.i.i34, align 8, !tbaa !47
  %.sroa.7.0.i.i.i37 = zext i32 %.sroa.7.0.in.i.i.i36 to i64
  %.sroa.030.0.i.i.i38 = load ptr, ptr %.sroa.030.0.in.i.i.i33, align 8, !tbaa !21 ; 4 uses
  %.idx.i.i.i39 = mul nuw nsw i64 %.sroa.7.0.i.i.i37, 40
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i38, i64 %.idx.i.i.i39
  %i.bz = zext i32 %.021.i.i.i35 to i64           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i38, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %.not27.i9.i.i41 = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not27.i9.i.i41, label %_ZNK5clang7Builtin7Context32isConstWithoutErrnoAndExceptionsEj.exit, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.q, %.lr.ph.i.i.i42
  %i.cc = phi i64 [ %i.ci, %.lr.ph.i.i.i42 ], [ %i.cb, %bb.q ]
  %.12242.i11.i.i43 = phi i32 [ %i.ce, %.lr.ph.i.i.i42 ], [ %.021.i.i.i35, %bb.q ]
  %.02043.i10.i.i44 = phi ptr [ %i.cf, %.lr.ph.i.i.i42 ], [ %.sroa.030.0.i.i.i38, %bb.q ] ; 2 uses
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = sub nuw i32 %.12242.i11.i.i43, %i.cd    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i44, i64 40 ; 3 uses
  %.not.not.i.i.i45 = icmp ne ptr %i.cf, %i.by
  call void @llvm.assume(i1 %.not.not.i.i.i45)
  %i.cg = zext i32 %i.ce to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i44, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %.not27.i.i.i46 = icmp ugt i64 %i.ci, %i.cg
  br i1 %.not27.i.i.i46, label %_ZNK5clang7Builtin7Context32isConstWithoutErrnoAndExceptionsEj.exit, label %.lr.ph.i.i.i42

_ZNK5clang7Builtin7Context32isConstWithoutErrnoAndExceptionsEj.exit: ; preds = %.lr.ph.i.i.i42, %bb.q
  %.02043.i.lcssa.i.i47 = phi ptr [ %.sroa.030.0.i.i.i38, %bb.q ], [ %i.cf, %.lr.ph.i.i.i42 ] ; 2 uses
  %.lcssa.i.i48 = phi i64 [ %i.bz, %bb.q ], [ %i.cg, %.lr.ph.i.i.i42 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.02043.i.lcssa.i.i47, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %.lcssa.i.i48
  %i.cm = load ptr, ptr %.02043.i.lcssa.i.i47, align 8, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.0.0.copyload.i.i49 = load i32, ptr %i.cn, align 4, !tbaa !31
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.cp = zext i32 %.sroa.0.0.copyload.i.i49 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cq, i32 noundef 101) #17
  %i.cs = icmp ne ptr %i.cr, null                 ; 2 uses
  br i1 %.not36.i.i.i32, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang7Builtin7Context32isConstWithoutErrnoAndExceptionsEj.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cv = add i32 %1, -1695
  %i.cw = sub i32 %i.cv, %i.bn
  br label %bb.u

bb.s:                                             ; preds = %_ZNK5clang7Builtin7Context32isConstWithoutErrnoAndExceptionsEj.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = icmp ugt i32 %1, 1694
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = add i32 %1, -1695
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.030.0.in.i.i.i51 = phi ptr [ %i.ct, %bb.r ], [ %i.cz, %bb.t ], [ %0, %bb.s ]
  %.sroa.7.0.in.in.i.i.i52 = phi ptr [ %i.cu, %bb.r ], [ %i.da, %bb.t ], [ %i.cx, %bb.s ]
  %.021.i.i.i53 = phi i32 [ %i.cw, %bb.r ], [ %i.db, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.sroa.7.0.in.i.i.i54 = load i32, ptr %.sroa.7.0.in.in.i.i.i52, align 8, !tbaa !47
  %.sroa.7.0.i.i.i55 = zext i32 %.sroa.7.0.in.i.i.i54 to i64
  %.sroa.030.0.i.i.i56 = load ptr, ptr %.sroa.030.0.in.i.i.i51, align 8, !tbaa !21 ; 4 uses
  %.idx.i.i.i57 = mul nuw nsw i64 %.sroa.7.0.i.i.i55, 40
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i56, i64 %.idx.i.i.i57
  %i.dd = zext i32 %.021.i.i.i53 to i64           ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i56, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !25 ; 2 uses
  %.not27.i9.i.i59 = icmp ugt i64 %i.df, %i.dd
  br i1 %.not27.i9.i.i59, label %_ZNK5clang7Builtin7Context24isConstWithoutExceptionsEj.exit, label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %bb.u, %.lr.ph.i.i.i60
  %i.dg = phi i64 [ %i.dm, %.lr.ph.i.i.i60 ], [ %i.df, %bb.u ]
  %.12242.i11.i.i61 = phi i32 [ %i.di, %.lr.ph.i.i.i60 ], [ %.021.i.i.i53, %bb.u ]
  %.02043.i10.i.i62 = phi ptr [ %i.dj, %.lr.ph.i.i.i60 ], [ %.sroa.030.0.i.i.i56, %bb.u ] ; 2 uses
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = sub nuw i32 %.12242.i11.i.i61, %i.dh    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i62, i64 40 ; 3 uses
  %.not.not.i.i.i63 = icmp ne ptr %i.dj, %i.dc
  call void @llvm.assume(i1 %.not.not.i.i.i63)
  %i.dk = zext i32 %i.di to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02043.i10.i.i62, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !25 ; 2 uses
  %.not27.i.i.i64 = icmp ugt i64 %i.dm, %i.dk
  br i1 %.not27.i.i.i64, label %_ZNK5clang7Builtin7Context24isConstWithoutExceptionsEj.exit, label %.lr.ph.i.i.i60

_ZNK5clang7Builtin7Context24isConstWithoutExceptionsEj.exit: ; preds = %.lr.ph.i.i.i60, %bb.u
  %.02043.i.lcssa.i.i65 = phi ptr [ %.sroa.030.0.i.i.i56, %bb.u ], [ %i.dj, %.lr.ph.i.i.i60 ] ; 2 uses
  %.lcssa.i.i66 = phi i64 [ %i.dd, %bb.u ], [ %i.dk, %.lr.ph.i.i.i60 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.02043.i.lcssa.i.i65, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw [20 x i8], ptr %i.do, i64 %.lcssa.i.i66
  %i.dq = load ptr, ptr %.02043.i.lcssa.i.i65, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.dr, align 4, !tbaa !31
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !45
  %i.dt = zext i32 %.sroa.0.0.copyload.i.i67 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  %i.dv = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.du, i32 noundef 103) #17
  %i.dw = icmp ne ptr %i.dv, null                 ; 2 uses
  %i.dx = or i1 %i.cs, %i.dw                      ; 2 uses
  %.not.not = xor i1 %.not78, true
  %brmerge = or i1 %4, %.not.not
  br i1 %brmerge, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK5clang7Builtin7Context24isConstWithoutExceptionsEj.exit
  %i.dy = and i16 %3, 257
  %or.cond84.a = icmp eq i16 %i.dy, 257
  %brmerge87 = or i1 %or.cond84.a, %5
  br i1 %brmerge87, label %.thread79, label %.thread82

bb.w:                                             ; preds = %_ZNK5clang7Builtin7Context24isConstWithoutExceptionsEj.exit
  br i1 %.not78, label %.thread79, label %.thread82

.thread79:                                        ; preds = %bb.v, %bb.w
  %i.dz = xor i1 %i.cs, true
  %i.ea = and i1 %i.dw, %i.dz
  br i1 %i.ea, label %.thread82, label %bb.x

bb.x:                                             ; preds = %.thread79
  %.not4 = xor i1 %i.dx, true
  %or.cond6 = or i1 %4, %.not4
  %i.eb = and i16 %3, 257
  %or.cond85 = icmp eq i16 %i.eb, 257
  %or.cond86 = select i1 %or.cond6, i1 true, i1 %or.cond85
  %brmerge88 = or i1 %5, %or.cond86
  %8 = and i1 %i.e, %i.dx
  %not.brmerge88 = xor i1 %brmerge88, true
  %spec.select89 = select i1 %not.brmerge88, i1 true, i1 %8
  br label %.thread82

.thread82:                                        ; preds = %bb.x, %bb.v, %.thread79, %bb.w
  %.1 = phi i1 [ true, %bb.w ], [ %spec.select89, %bb.x ], [ true, %.thread79 ], [ true, %bb.v ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7Builtin7Context18initializeBuiltinsERNS_15IdentifierTableERKNS_11LangOptionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(1136) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallString", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 22 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store i64 256, ptr %i.c, align 8, !tbaa !30
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = mul nuw nsw i64 %i.g, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not204 = icmp eq i32 %i.f, 0
  br i1 %.not204, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.b

._crit_edge209:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx243 = mul nuw nsw i64 %i.q, 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx243
  %.not83218 = icmp eq i32 %i.p, 0
  br i1 %.not83218, label %._crit_edge223, label %.lr.ph222

.lr.ph222:                                        ; preds = %._crit_edge209
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.u

bb.b:                                             ; preds = %.lr.ph208, %._crit_edge
  %.0206 = phi i32 [ 0, %.lr.ph208 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.076205 = phi ptr [ %i.d, %.lr.ph208 ], [ %i.ad, %._crit_edge ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.076205, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.076205, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %.idx242 = mul nuw nsw i64 %i.z, 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx242
  %.not88201 = icmp eq i64 %i.z, 0
  br i1 %.not88201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.076205, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.076205, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %bb.t, %bb.b
  %.1.lcssa = phi i32 [ %.0206, %bb.b ], [ %i.db, %bb.t ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.076205, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.h
  br i1 %.not, label %._crit_edge209, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.1203 = phi i32 [ %.0206, %.lr.ph ], [ %i.db, %bb.t ] ; 3 uses
  %.081202 = phi ptr [ %i.x, %.lr.ph ], [ %i.dc, %bb.t ] ; 3 uses
  %.not89 = icmp eq i32 %.1203, 0
  br i1 %.not89, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %.076205, align 8, !tbaa !44
  %.val90 = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.af = call fastcc noundef zeroext i1 @_ZL18builtinIsSupportedRKN4llvm11StringTableERKN5clang7Builtin4InfoERKNS3_11LangOptionsE(ptr %.val90, ptr noundef nonnull align 4 dereferenceable(20) %.081202, ptr noundef nonnull align 8 dereferenceable(1136) %2)
  br i1 %i.af, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %.081.val = load i32, ptr %.081202, align 4, !tbaa !31
  %i.ag = load ptr, ptr %.076205, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 2 uses
  %i.ai = zext i32 %.081.val to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #16
  br label %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i

_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i:     ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !46 ; 5 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZL18getBuiltinNameIntoRKN5clang7Builtin10InfosShardERKNS0_4InfoERN4llvm15SmallVectorImplIcEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !45
  store i64 0, ptr %i.b, align 8, !tbaa !29
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !30
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.h, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.a, i64 noundef %i.al, i64 noundef 1) #16
  %.pre8.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.pre8.i.i.i = phi i64 [ 0, %bb.g ], [ %.pre8.pre.i.i.i, %bb.h ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.pre8.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.an, i64 %i.al, i1 false)
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !29
  %i.as = add i64 %.pre.i.i.i, %i.al              ; 3 uses
  store i64 %i.as, ptr %i.b, align 8, !tbaa !29
  %i.at = add i64 %i.as, %.sroa.0.0.i.i.i         ; 2 uses
  %i.au = load i64, ptr %i.c, align 8, !tbaa !30
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.a, i64 noundef %i.at, i64 noundef 1) #16
  %.pre8.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i
  %.pre8.i.i = phi i64 [ %i.as, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre8.pre.i.i, %bb.i ] ; 2 uses
  %.not.i.i9.i = icmp samesign eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i9.i, label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %i.aw = load ptr, ptr %3, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre8.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.aj, i64 %.sroa.0.0.i.i.i, i1 false)
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i

_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i: ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %i.ay = phi i64 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.j ]
  %i.az = add i64 %i.ay, %.sroa.0.0.i.i.i         ; 2 uses
  store i64 %i.az, ptr %i.b, align 8, !tbaa !29
  %i.ba = load ptr, ptr %3, align 8, !tbaa !28
  br label %_ZL18getBuiltinNameIntoRKN5clang7Builtin10InfosShardERKNS0_4InfoERN4llvm15SmallVectorImplIcEE.exit

_ZL18getBuiltinNameIntoRKN5clang7Builtin10InfosShardERKNS0_4InfoERN4llvm15SmallVectorImplIcEE.exit: ; preds = %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i, %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i
  %.sroa.3.0.i = phi i64 [ %i.az, %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i ], [ %.sroa.0.0.i.i.i, %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i ] ; 9 uses
  %.sroa.02.0.i = phi ptr [ %i.ba, %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit.i ], [ %i.aj, %_ZNK4llvm11StringTableixENS0_6OffsetE.exit.i ] ; 4 uses
  %i.bb = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.02.0.i, i64 %.sroa.3.0.i) #16
  %i.bc = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr %.sroa.02.0.i, i64 %.sroa.3.0.i, i32 noundef %i.bb) #16 ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !55
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57 ; 2 uses
  %.not.i.i161 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i161, label %bb.k, label %_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_.exit

bb.k:                                             ; preds = %_ZL18getBuiltinNameIntoRKN5clang7Builtin10InfosShardERKNS0_4InfoERN4llvm15SmallVectorImplIcEE.exit
  %i.bh = and i64 %.sroa.3.0.i, -8
  %i.bi = add i64 %i.bh, 24                       ; 2 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bi, %i.bk                    ; 2 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !69
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.bo = inttoptr i64 %i.bl to ptr
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !68
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bp = add i64 %.sroa.3.0.i, 17
  %i.bq = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef %i.bp, i64 noundef %i.bi, i8 3)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.l ], [ %i.bq, %bb.m ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %.sroa.02.0.i, i64 %.sroa.3.0.i, i1 false)
  br label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i

_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i: ; preds = %bb.n, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.3.0.i
  store i8 0, ptr %i.bs, align 1, !tbaa !37
  store i64 %.sroa.3.0.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !109
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !112
end_hunk_0
