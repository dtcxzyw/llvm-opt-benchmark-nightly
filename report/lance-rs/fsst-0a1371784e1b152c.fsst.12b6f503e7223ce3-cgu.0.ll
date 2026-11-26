Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/fsst-0a1371784e1b152c.fsst.12b6f503e7223ce3-cgu.0?download=true
inline.NumInlined: 62
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable8finalize:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 4294967296
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.j
  %exitcond108.not = icmp eq i64 %i.bb, 1024
  br i1 %exitcond108.not, label %bb.e, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.bg = lshr i64 %i.be, 16
  %i.bh = and i64 %i.bg, 255
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !noundef !4 ; 2 uses
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = icmp ult i16 %i.bj, 512
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #16
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bk
  %i.bn = load <2 x i64>, ptr %i.bm, align 8
  store <2 x i64> %i.bn, ptr %i.bc, align 8
  br label %bb.g

bb.k:                                             ; preds = %.preheader63
  %i.bo = and i64 %.sroa.037.092, 255
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !noundef !4
  %i.br = or i16 %i.bq, 4096
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i16 [ %i.br, %bb.k ], [ %i.bw, %bb.m ]
  store i16 %storemerge, ptr %i.aw, align 2
  %exitcond107.not = icmp eq i64 %i.av, 65536
  br i1 %exitcond107.not, label %.preheader, label %.preheader63

bb.m:                                             ; preds = %.preheader63
  %i.bs = and i16 %i.ax, 255
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !noundef !4
  %i.bw = or i16 %i.bv, 8192
  br label %bb.l

bb.n:                                             ; preds = %bb.d, %bb.q
  %storemerge61 = phi i16 [ %i.cl, %bb.q ], [ 4607, %bb.d ]
  store i16 %storemerge61, ptr %i.aq, align 4
  %i.bx = add nuw nsw i64 %.sroa.035.091, 2       ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.sroa.035.091
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !noundef !4 ; 2 uses
  %i.cb = and i16 %i.ca, 256
  %.not.1 = icmp eq i16 %i.cb, 0
  br i1 %.not.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = and i16 %i.ca, 255
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !noundef !4
  %i.cg = or i16 %i.cf, 4096
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge61.1 = phi i16 [ %i.cg, %bb.o ], [ 4607, %bb.n ]
  store i16 %storemerge61.1, ptr %i.bz, align 2
  %exitcond106.not.1 = icmp eq i64 %i.bx, 256
  br i1 %exitcond106.not.1, label %.preheader63, label %bb.d

bb.q:                                             ; preds = %bb.d
  %i.ch = and i16 %i.ar, 255
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !noundef !4
  %i.cl = or i16 %i.ck, 4096
  br label %bb.n

bb.r:                                             ; preds = %bb.c
  %i.cm = load i16, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not62 = icmp eq i16 %i.cm, 0
  br i1 %.not62, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.c, %bb.r
  %i.cn = add nuw nsw i64 %i.an, 4294967295
  %i.co = and i64 %i.cn, 4294967295               ; 3 uses
  %i.cp = icmp samesign ult i64 %i.co, 8
  br i1 %i.cp, label %.thread, label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cq = trunc i64 %i.ak to i16
  %wide.trip.count = zext i16 %i.cm to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.t ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %.sroa.019.086 = phi i8 [ 0, %bb.t ], [ %spec.select, %bb.v ]
  %i.cr = add nuw nsw i64 %indvars.iv, 256        ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !4
  %i.cw = icmp ne i64 %indvars.iv, %indvars.iv102
  %i.cx = lshr i64 %i.cv, 28
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp ugt i32 %i.cy, 2
  %or.cond = and i1 %i.cw, %i.cz
  %i.da = trunc i64 %i.ct to i16
  %i.db = icmp eq i16 %i.cq, %i.da
  %or.cond5 = and i1 %i.db, %or.cond
  %spec.select = select i1 %or.cond5, i8 1, i8 %.sroa.019.086 ; 3 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond101.not, label %bb.y, label %bb.u

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

.thread:                                          ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !4 ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv102
  %i.df = zext i8 %i.dd to i16
  store i16 %i.df, ptr %i.de, align 2
  %i.dg = add i8 %i.dd, 1
  store i8 %i.dg, ptr %i.dc, align 1
  %i.dh = zext i8 %i.dd to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.s
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.di = trunc nuw i8 %spec.select to i1         ; 2 uses
  %i.dj = zext nneg i8 %spec.select to i16
  %.sroa.06.1 = add i16 %.sroa.06.090, %i.dj
  %i.dk = add i8 %.sroa.09.089, -1                ; 2 uses
  %.sroa.09.1 = select i1 %i.di, i8 %.sroa.09.089, i8 %i.dk
  %i.dl = zext i8 %i.dk to i16
  %.sroa.022.0 = select i1 %i.di, i16 %.sroa.06.090, i16 %i.dl ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv102
  store i16 %.sroa.022.0, ptr %i.dm, align 2
  %i.dn = zext i16 %.sroa.022.0 to i64            ; 2 uses
  %i.do = icmp ult i16 %.sroa.022.0, 512
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread, %bb.y
  %i.dp = phi i64 [ %i.dh, %.thread ], [ %i.dn, %bb.y ] ; 2 uses
  %.sroa.06.2118 = phi i16 [ %.sroa.06.090, %.thread ], [ %.sroa.06.1, %bb.y ] ; 2 uses
  %.sroa.09.2117 = phi i8 [ %.sroa.09.089, %.thread ], [ %.sroa.09.1, %bb.y ]
  %i.dq = and i64 %i.an, 4294967295               ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dq, 28
  %i.ds = shl nuw nsw i64 %i.dp, 16
  %i.dt = or disjoint i64 %i.ds, %i.dr
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 8, i64 %i.dq)
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = or disjoint i64 %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  store i64 %i.ak, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.dw, ptr %i.dy, align 8
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count104
  br i1 %exitcond105.not, label %.preheader64, label %bb.c

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.dn, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !53 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !54
  %i.b = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !54 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16, !noalias !55
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !56
  %i.d = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !56 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2

bb.c:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2: ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !57
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !58
  %i.g = tail call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 12288, i64 noundef range(i64 2, 9) 8) #15, !noalias !58 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i

bb.e:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 12288) #16
          to label %.noexc.i unwind label %bb.g, !noalias !57

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  store i64 512, ptr %i.a, align 8, !noalias !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  %.sroa.0.026.i.i = phi ptr [ %i.n, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ %i.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 6 uses
  %.sroa.03.025.i.i = phi i64 [ %i.m, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 1, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ]
  %storemerge24.i.i = phi i64 [ %i.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !60
  %i.k = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !60 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16
          to label %.noexc16.i.i unwind label %.body.i, !noalias !61

.noexc16.i.i:                                     ; preds = %bb.f
  unreachable

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %i.k, ptr noundef nonnull readonly align 2 dereferenceable(1024) %i.d, i64 1024, i1 false), !noalias !62
  %i.m = add nuw nsw i64 %.sroa.03.025.i.i, 1     ; 2 uses
  store i64 512, ptr %.sroa.0.026.i.i, align 8, !noalias !61
  %.sroa.521.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 8
  store ptr %i.k, ptr %.sroa.521.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !61
  %.sroa.7.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 16
  store i64 512, ptr %.sroa.7.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !61
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 24 ; 2 uses
  %i.o = add nuw nsw i64 %storemerge24.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.m, 512
  br i1 %exitcond.not.i.i, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

.body.i:                                          ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge24.i.i, ptr %i.j, align 8, !alias.scope !59, !noalias !57
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !61
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_tEEECs1BCiKJoB9mN_4fsst(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17, !noalias !57
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !57
  br label %bb.i

bb.h:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  store i64 512, ptr %i.n, align 8, !noalias !63
  %.sroa.5.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 32
  store ptr %i.d, ptr %.sroa.5.0..us-phi27.i.sroa_idx.i, align 8, !noalias !63
  %.sroa.7.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 40
  store i64 512, ptr %.sroa.7.0..us-phi27.i.sroa_idx.i, align 8, !noalias !63
  store i64 512, ptr %i.j, align 8, !alias.scope !59, !noalias !57
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !57
  store i64 512, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 512, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %bb.d, %bb.g, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.p, %.body.i ], [ %i.q, %bb.g ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtCs1BCiKJoB9mN_4fsst4fsst28missing_escape_payload_error() unnamed_addr #1 !guid !64 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 62)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !65 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 34 uses
  %i.f = alloca [4 x i8], align 4                 ; 34 uses
  %i.g = load i64, ptr %0, align 8, !noundef !4   ; 8 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = trunc i64 %i.g to i32
  %i.m = lshr i32 %i.l, 24
  %.sroa.8.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %.sroa.9.0.extract.shift = lshr i64 %i.g, 40
  %.sroa.9.0.extract.trunc = trunc nuw nsw i64 %.sroa.9.0.extract.shift to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.g, 48
  %.sroa.10.0.extract.trunc = trunc nuw nsw i64 %.sroa.10.0.extract.shift to i32
  %.sroa.11.0.extract.shift = lshr i64 %i.g, 56
  %.sroa.11.0.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.extract.shift to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = lshr i64 %i.o, 28                        ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %.pre = load ptr, ptr %1, align 8               ; 10 uses
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !8, !noundef !4 ; 16 uses
  %wide.trip.count = and i64 %i.p, 4294967295     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = and i32 %.sroa.0.0.extract.trunc, 255
  store i32 %i.t, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %.._crit_edge_crit_edge
  %i.v = phi ptr [ %.pre65, %.._crit_edge_crit_edge ], [ %i.s, %bb.t ], [ %i.s, %bb.r ], [ %i.s, %bb.p ], [ %i.s, %bb.n ], [ %i.s, %bb.l ], [ %i.s, %bb.j ], [ %i.s, %bb.h ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 65535
  store i32 %i.aa, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = lshr i64 %i.o, 16
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 511
  store i16 %i.ad, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.q, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ag, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

bb.e:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond63.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = and i32 %i.i, 255
  store i32 %i.ah, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ai, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.1.not = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond63.1.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = and i32 %i.k, 255
  store i32 %i.aj, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ak, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.2.not = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond63.2.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.m, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.al, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.3.not = icmp eq i64 %wide.trip.count, 4
  br i1 %exitcond63.3.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.am = and i32 %.sroa.8.0.extract.trunc, 255
  store i32 %i.am, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.an, label %bb.e, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.4.not = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond63.4.not, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = and i32 %.sroa.9.0.extract.trunc, 255
  store i32 %i.ao, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ap, label %bb.e, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.5.not = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond63.5.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = and i32 %.sroa.10.0.extract.trunc, 255
  store i32 %i.aq, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ar, label %bb.e, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.6.not = icmp eq i64 %wide.trip.count, 7
  br i1 %exitcond63.6.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.11.0.extract.trunc, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.as, label %bb.e, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.7.not = icmp eq i64 %wide.trip.count, 8
  br i1 %exitcond63.7.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTableNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(156176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !66 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 39 uses
  %i.b = alloca [2 x i8], align 2                 ; 36 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 37)
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @21, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.p = zext i16 %i.o to i64
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 147456
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.s, ptr %i.c, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.t = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.t, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.035.097 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.p ] ; 4 uses
  %i.u = add nuw nsw i64 %.sroa.035.097, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.097, ptr %i.e, align 8
  %exitcond.not = icmp eq i64 %.sroa.035.097, 512
  br i1 %exitcond.not, label %bb.o, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.v, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.x = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.x, label %.loopexit.sink.split, label %bb.f

.loopexit.sink.split:                             ; preds = %bb.m, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.ph = phi i1 [ true, %bb.e ], [ %i.an, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ true, %._crit_edge ], [ true, %bb.b ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 1, ptr %i.b, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.y, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.z, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 2, ptr %i.b, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.aa, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ab = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 3, ptr %i.b, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ac, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ad, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 4, ptr %i.b, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.af = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.af, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 5, ptr %i.b, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 156171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ag, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ah = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.ah, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 6, ptr %i.b, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ai, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.aj = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 7, ptr %i.b, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 156173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ak, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br i1 %i.al, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 8, ptr %i.b, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 156174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.am, ptr %i.w, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.035.097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.r, align 8
  store ptr @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @25, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ap, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.d
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 512, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %exitcond101.not = icmp eq i64 %i.u, %i.p
  br i1 %exitcond101.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTableNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(156176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !67 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 39 uses
  %i.b = alloca [2 x i8], align 2                 ; 36 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 38)
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @21, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 147456
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = add nuw nsw i64 %i.p, 255
  br label %bb.d

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.t, ptr %i.c, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @22, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.u, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.035.097 = phi i64 [ 256, %.lr.ph ], [ %i.v, %bb.p ] ; 5 uses
  %i.v = add nuw nsw i64 %.sroa.035.097, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.097, ptr %i.e, align 8
  %exitcond.not = icmp eq i64 %.sroa.035.097, 512
  br i1 %exitcond.not, label %bb.o, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156166
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 9 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.w, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.y, label %.loopexit.sink.split, label %bb.f

.loopexit.sink.split:                             ; preds = %bb.m, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.ph = phi i1 [ true, %bb.e ], [ %i.ao, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.sink.split, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ true, %._crit_edge ], [ true, %bb.b ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 1, ptr %i.b, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.z, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 2, ptr %i.b, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ab, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ac = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 3, ptr %i.b, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ad, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ae = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ae, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 4, ptr %i.b, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.af, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ag, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 5, ptr %i.b, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 156171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.ah, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ai, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 6, ptr %i.b, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 156172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.aj, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.ak, label %.loopexit.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 7, ptr %i.b, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.al, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br i1 %i.am, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 8, ptr %i.b, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 156174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  store ptr %i.an, ptr %i.x, align 8
  store ptr @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.ao = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.sroa.035.097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.ap, ptr %i.r, align 8
  store ptr @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  %i.aq = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @25, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aq, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.d
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 512, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %exitcond101.not = icmp eq i64 %.sroa.035.097, %i.s
  br i1 %exitcond101.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs1BCiKJoB9mN_4fsst4fsstNtB4_6SymbolNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !68 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 34 uses
  %i.f = alloca [4 x i8], align 4                 ; 34 uses
  %i.g = load i64, ptr %0, align 8, !noundef !4   ; 8 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = trunc i64 %i.g to i32
  %i.m = lshr i32 %i.l, 24
  %.sroa.8.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %.sroa.9.0.extract.shift = lshr i64 %i.g, 40
  %.sroa.9.0.extract.trunc = trunc nuw nsw i64 %.sroa.9.0.extract.shift to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.g, 48
  %.sroa.10.0.extract.trunc = trunc nuw nsw i64 %.sroa.10.0.extract.shift to i32
  %.sroa.11.0.extract.shift = lshr i64 %i.g, 56
  %.sroa.11.0.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.extract.shift to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = lshr i64 %i.o, 28                        ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %.pre = load ptr, ptr %1, align 8               ; 10 uses
  br i1 %.not, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !8, !noundef !4 ; 16 uses
  %wide.trip.count = and i64 %i.p, 4294967295     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = and i32 %.sroa.0.0.extract.trunc, 255
  store i32 %i.t, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.u, label %bb.e, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %.._crit_edge_crit_edge
  %i.v = phi ptr [ %.pre65, %.._crit_edge_crit_edge ], [ %i.s, %bb.t ], [ %i.s, %bb.r ], [ %i.s, %bb.p ], [ %i.s, %bb.n ], [ %i.s, %bb.l ], [ %i.s, %bb.j ], [ %i.s, %bb.h ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !4, !nonnull !4
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 65535
  store i32 %i.aa, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = lshr i64 %i.o, 16
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 511
  store i16 %i.ad, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.q, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.af, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ag = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.ag, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 8, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #16
  unreachable

bb.e:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond63.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ah = and i32 %i.i, 255
  store i32 %i.ah, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ai = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ai, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.1.not = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond63.1.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = and i32 %i.k, 255
  store i32 %i.aj, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ak = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ak, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.2.not = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond63.2.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.m, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.al, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.3.not = icmp eq i64 %wide.trip.count, 4
  br i1 %exitcond63.3.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.am = and i32 %.sroa.8.0.extract.trunc, 255
  store i32 %i.am, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.an = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.an, label %bb.e, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.4.not = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond63.4.not, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = and i32 %.sroa.9.0.extract.trunc, 255
  store i32 %i.ao, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ap = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ap, label %bb.e, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.5.not = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond63.5.not, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = and i32 %.sroa.10.0.extract.trunc, 255
  store i32 %i.aq, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.ar = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.ar, label %bb.e, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.6.not = icmp eq i64 %wide.trip.count, 7
  br i1 %exitcond63.6.not, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.sroa.11.0.extract.trunc, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  store ptr @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.as = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @19, ptr noundef nonnull %i.e)
  br i1 %i.as, label %bb.e, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond63.7.not = icmp eq i64 %wide.trip.count, 8
  br i1 %exitcond63.7.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCscI6d9CVNmLh_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!3 = !{i64 7556186079003085652}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{i64 8}
!9 = distinct !{!9, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst"}
!10 = distinct !{!10, !9, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst: argument 0"}
!11 = !{i64 4136234520114487543}
!12 = !{!10}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = distinct !{!14, i1 true, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst"}
!15 = distinct !{!15, !14, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 1"}
!16 = distinct !{!16, !14, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 0"}
!17 = !{i64 -483396544718306920}
!18 = !{!16, !15}
!19 = distinct !{!19, i1 true, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert"}
!20 = distinct !{!20, !19, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert: argument 0"}
!21 = !{i64 -1817050754695980385}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!20}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6, !7}
!26 = !{i64 7781365566608791045}
!27 = distinct !{!27, !6, !7}
!28 = !{i64 -724976512270260974}
!29 = !{i64 1592822818010911456}
!30 = distinct !{!30, i1 true, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!31 = distinct !{!31, !30, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!33 = distinct !{!33, !32, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!35 = distinct !{!35, !34, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!37 = distinct !{!37, !36, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!39 = distinct !{!39, !38, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!40 = distinct !{!40, !38, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!42 = distinct !{!42, !41, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst"}
!44 = distinct !{!44, !43, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 0"}
!45 = distinct !{!45, !43, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 1"}
!46 = distinct !{!46, i1 true, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst"}
!47 = distinct !{!47, !46, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!49 = distinct !{!49, !48, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!50 = distinct !{!50, !48, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!51 = distinct !{!51, i1 true, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!52 = distinct !{!52, !51, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!53 = !{i64 8612714466339471358}
!54 = !{!33, !31}
!55 = !{!31}
!56 = !{!37, !35}
!57 = !{!40, !39}
!58 = !{!42, !40, !39}
!59 = !{!44}
!60 = !{!52, !50, !49, !47, !44, !45, !40, !39}
!61 = !{!44, !45, !40, !39}
!62 = !{!50, !47, !44, !45, !40, !39}
!63 = !{!44, !40, !39}
!64 = !{i64 -5389841347276881315}
!65 = !{i64 8785960860359433409}
!66 = !{i64 1339286145353300594}
!67 = !{i64 5259740240000970845}
!68 = !{i64 8717846504239000886}
end_hunk_0
