Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/fsst-0a1371784e1b152c.fsst.12b6f503e7223ce3-cgu.0?download=true
inline.NumInlined: 62
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable8finalize:bb.a
  %i.cf = load i16, ptr %i.ce, align 2, !noundef !3
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
  %i.ck = load i16, ptr %i.cj, align 2, !noundef !3
  %i.cl = or i16 %i.ck, 4096
  br label %bb.n

bb.r:                                             ; preds = %bb.c
  %i.cm = load i16, ptr %i.c, align 8, !noundef !3 ; 2 uses
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
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !3
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
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !3 ; 3 uses
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
define void @_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !46
  %i.b = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !46 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16, !noalias !47
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !48
  %i.d = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !48 ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !50
  %i.g = tail call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 12288, i64 noundef range(i64 2, 9) 8) #15, !noalias !50 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i

bb.e:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 12288) #16
          to label %.noexc.i unwind label %bb.g, !noalias !49

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst.exit2
  store i64 512, ptr %i.a, align 8, !noalias !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.i, align 8, !noalias !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  %.sroa.0.026.i.i = phi ptr [ %i.n, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ %i.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 6 uses
  %.sroa.03.025.i.i = phi i64 [ %i.m, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 1, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ]
  %storemerge24.i.i = phi i64 [ %i.o, %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.i.i ] ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !52
  %i.k = tail call noundef align 2 dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775807) 1024, i64 noundef range(i64 2, 9) 2) #15, !noalias !52 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i

bb.f:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 1024) #16
          to label %.noexc16.i.i unwind label %.body.i, !noalias !53

.noexc16.i.i:                                     ; preds = %bb.f
  unreachable

_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %i.k, ptr noundef nonnull readonly align 2 dereferenceable(1024) %i.d, i64 1024, i1 false), !noalias !54
  %i.m = add nuw nsw i64 %.sroa.03.025.i.i, 1     ; 2 uses
  store i64 512, ptr %.sroa.0.026.i.i, align 8, !noalias !53
  %.sroa.521.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 8
  store ptr %i.k, ptr %.sroa.521.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !53
  %.sroa.7.0..sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 16
  store i64 512, ptr %.sroa.7.0..sroa.0.0.sroa_idx.i.i, align 8, !noalias !53
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 24 ; 2 uses
  %i.o = add nuw nsw i64 %storemerge24.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %i.m, 512
  br i1 %exitcond.not.i.i, label %bb.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_tEE7reserveCs1BCiKJoB9mN_4fsst.exit.split.i.i

.body.i:                                          ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge24.i.i, ptr %i.j, align 8, !alias.scope !51, !noalias !55
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !53
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_tEEECs1BCiKJoB9mN_4fsst(ptr noalias noundef align 8 dereferenceable(24) %i.a) #17, !noalias !49
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 2) #15, !noalias !49
  br label %bb.i

bb.h:                                             ; preds = %_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst.exit.i.i
  store i64 512, ptr %i.n, align 8, !noalias !56
  %.sroa.5.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 32
  store ptr %i.d, ptr %.sroa.5.0..us-phi27.i.sroa_idx.i, align 8, !noalias !56
  %.sroa.7.0..us-phi27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 40
  store i64 512, ptr %.sroa.7.0..us-phi27.i.sroa_idx.i, align 8, !noalias !56
  store i64 512, ptr %i.j, align 8, !alias.scope !51, !noalias !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49
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
define noundef nonnull ptr @_RNvNtCs1BCiKJoB9mN_4fsst4fsst28missing_escape_payload_error() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 62)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1BCiKJoB9mN_4fsst4fsstNtB2_6SymbolNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 34 uses
  %i.f = alloca [4 x i8], align 4                 ; 34 uses
  %i.g = load i64, ptr %0, align 8, !noundef !3   ; 8 uses
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
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 3 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !align !7, !noundef !3 ; 16 uses
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
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !3, !nonnull !3
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
end_hunk_0
begin_hunk_1_@_RNvXs_NtCs1BCiKJoB9mN_4fsst4fsstNtB4_6SymbolNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
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
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = !{i64 8}
!8 = distinct !{!8, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst"}
!9 = distinct !{!9, !8, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VectEECs1BCiKJoB9mN_4fsst: argument 0"}
!10 = !{!9}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = distinct !{!12, i1 false, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst"}
!13 = distinct !{!13, !12, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 1"}
!14 = distinct !{!14, !12, !"_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECs1BCiKJoB9mN_4fsst: argument 0"}
!15 = !{!14, !13}
!16 = distinct !{!16, i1 false, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert"}
!17 = distinct !{!17, !16, !"_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable11hash_insert: argument 0"}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!17}
!20 = distinct !{!20, !5, !6}
!21 = distinct !{!21, !5, !6}
!22 = distinct !{!22, !5, !6}
!23 = distinct !{!23, i1 false, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!24 = distinct !{!24, !23, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!25 = distinct !{!25, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!26 = distinct !{!26, !25, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!27 = distinct !{!27, i1 false, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!28 = distinct !{!28, !27, !"_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!29 = distinct !{!29, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!30 = distinct !{!30, !29, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!31 = distinct !{!31, i1 false, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!32 = distinct !{!32, !31, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!33 = distinct !{!33, !31, !"_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemINtB5_3VectENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!34 = distinct !{!34, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!35 = distinct !{!35, !34, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!36 = distinct !{!36, i1 false, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst"}
!37 = distinct !{!37, !36, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 0"}
!38 = distinct !{!38, !36, !"_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEE11extend_withCs1BCiKJoB9mN_4fsst: argument 1"}
!39 = distinct !{!39, i1 false, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst"}
!40 = distinct !{!40, !39, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs1BCiKJoB9mN_4fsst: argument 0"}
!41 = distinct !{!41, i1 false, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst"}
!42 = distinct !{!42, !41, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 1"}
!43 = distinct !{!43, !41, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_intNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1BCiKJoB9mN_4fsst: argument 0"}
!44 = distinct !{!44, i1 false, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst"}
!45 = distinct !{!45, !44, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1BCiKJoB9mN_4fsst: argument 0"}
!46 = !{!26, !24}
!47 = !{!24}
!48 = !{!30, !28}
!49 = !{!33, !32}
!50 = !{!35, !33, !32}
!51 = !{!37}
!52 = !{!45, !43, !42, !40, !37, !38, !33, !32}
!53 = !{!37, !38, !33, !32}
!54 = !{!43, !40, !37, !38, !33, !32}
!55 = !{!38, !33, !32}
!56 = !{!37, !33, !32}
end_hunk_1
