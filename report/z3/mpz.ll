Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpz?download=true
inline.NumInlined: 1746
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK11mpz_managerILb1EE11display_binERSoRK3mpzj:bb.a
  %.str.5..str.8.i51.2 = select i1 %.not10.i50.2, ptr @.str.5, ptr @.str.8
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.2, i64 noundef 1) ; 0 uses
  %i.do = and i64 %i.di, 268435456
  %.not10.i50.3 = icmp eq i64 %i.do, 0
  %.str.5..str.8.i51.3 = select i1 %.not10.i50.3, ptr @.str.5, ptr @.str.8
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.3, i64 noundef 1) ; 0 uses
  %i.dq = and i64 %i.di, 134217728
  %.not10.i50.4 = icmp eq i64 %i.dq, 0
  %.str.5..str.8.i51.4 = select i1 %.not10.i50.4, ptr @.str.5, ptr @.str.8
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.4, i64 noundef 1) ; 0 uses
  %i.ds = and i64 %i.di, 67108864
  %.not10.i50.5 = icmp eq i64 %i.ds, 0
  %.str.5..str.8.i51.5 = select i1 %.not10.i50.5, ptr @.str.5, ptr @.str.8
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.5, i64 noundef 1) ; 0 uses
  %i.du = and i64 %i.di, 33554432
  %.not10.i50.6 = icmp eq i64 %i.du, 0
  %.str.5..str.8.i51.6 = select i1 %.not10.i50.6, ptr @.str.5, ptr @.str.8
  %i.dv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.6, i64 noundef 1) ; 0 uses
  %i.dw = and i64 %i.di, 16777216
  %.not10.i50.7 = icmp eq i64 %i.dw, 0
  %.str.5..str.8.i51.7 = select i1 %.not10.i50.7, ptr @.str.5, ptr @.str.8
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.7, i64 noundef 1) ; 0 uses
  %i.dy = and i64 %i.di, 8388608
  %.not10.i50.8 = icmp eq i64 %i.dy, 0
  %.str.5..str.8.i51.8 = select i1 %.not10.i50.8, ptr @.str.5, ptr @.str.8
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.8, i64 noundef 1) ; 0 uses
  %i.ea = and i64 %i.di, 4194304
  %.not10.i50.9 = icmp eq i64 %i.ea, 0
  %.str.5..str.8.i51.9 = select i1 %.not10.i50.9, ptr @.str.5, ptr @.str.8
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.9, i64 noundef 1) ; 0 uses
  %i.ec = and i64 %i.di, 2097152
  %.not10.i50.10 = icmp eq i64 %i.ec, 0
  %.str.5..str.8.i51.10 = select i1 %.not10.i50.10, ptr @.str.5, ptr @.str.8
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.10, i64 noundef 1) ; 0 uses
  %i.ee = and i64 %i.di, 1048576
  %.not10.i50.11 = icmp eq i64 %i.ee, 0
  %.str.5..str.8.i51.11 = select i1 %.not10.i50.11, ptr @.str.5, ptr @.str.8
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.11, i64 noundef 1) ; 0 uses
  %i.eg = and i64 %i.di, 524288
  %.not10.i50.12 = icmp eq i64 %i.eg, 0
  %.str.5..str.8.i51.12 = select i1 %.not10.i50.12, ptr @.str.5, ptr @.str.8
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.12, i64 noundef 1) ; 0 uses
  %i.ei = and i64 %i.di, 262144
  %.not10.i50.13 = icmp eq i64 %i.ei, 0
  %.str.5..str.8.i51.13 = select i1 %.not10.i50.13, ptr @.str.5, ptr @.str.8
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.13, i64 noundef 1) ; 0 uses
  %i.ek = and i64 %i.di, 131072
  %.not10.i50.14 = icmp eq i64 %i.ek, 0
  %.str.5..str.8.i51.14 = select i1 %.not10.i50.14, ptr @.str.5, ptr @.str.8
  %i.el = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.14, i64 noundef 1) ; 0 uses
  %i.em = and i64 %i.di, 65536
  %.not10.i50.15 = icmp eq i64 %i.em, 0
  %.str.5..str.8.i51.15 = select i1 %.not10.i50.15, ptr @.str.5, ptr @.str.8
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.15, i64 noundef 1) ; 0 uses
  %i.eo = and i64 %i.di, 32768
  %.not10.i50.16 = icmp eq i64 %i.eo, 0
  %.str.5..str.8.i51.16 = select i1 %.not10.i50.16, ptr @.str.5, ptr @.str.8
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.16, i64 noundef 1) ; 0 uses
  %i.eq = and i64 %i.di, 16384
  %.not10.i50.17 = icmp eq i64 %i.eq, 0
  %.str.5..str.8.i51.17 = select i1 %.not10.i50.17, ptr @.str.5, ptr @.str.8
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.17, i64 noundef 1) ; 0 uses
  %i.es = and i64 %i.di, 8192
  %.not10.i50.18 = icmp eq i64 %i.es, 0
  %.str.5..str.8.i51.18 = select i1 %.not10.i50.18, ptr @.str.5, ptr @.str.8
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.18, i64 noundef 1) ; 0 uses
  %i.eu = and i64 %i.di, 4096
  %.not10.i50.19 = icmp eq i64 %i.eu, 0
  %.str.5..str.8.i51.19 = select i1 %.not10.i50.19, ptr @.str.5, ptr @.str.8
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.19, i64 noundef 1) ; 0 uses
  %i.ew = and i64 %i.di, 2048
  %.not10.i50.20 = icmp eq i64 %i.ew, 0
  %.str.5..str.8.i51.20 = select i1 %.not10.i50.20, ptr @.str.5, ptr @.str.8
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.20, i64 noundef 1) ; 0 uses
  %i.ey = and i64 %i.di, 1024
  %.not10.i50.21 = icmp eq i64 %i.ey, 0
  %.str.5..str.8.i51.21 = select i1 %.not10.i50.21, ptr @.str.5, ptr @.str.8
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.21, i64 noundef 1) ; 0 uses
  %i.fa = and i64 %i.di, 512
  %.not10.i50.22 = icmp eq i64 %i.fa, 0
  %.str.5..str.8.i51.22 = select i1 %.not10.i50.22, ptr @.str.5, ptr @.str.8
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.22, i64 noundef 1) ; 0 uses
  %i.fc = and i64 %i.di, 256
  %.not10.i50.23 = icmp eq i64 %i.fc, 0
  %.str.5..str.8.i51.23 = select i1 %.not10.i50.23, ptr @.str.5, ptr @.str.8
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.23, i64 noundef 1) ; 0 uses
  %i.fe = and i64 %i.di, 128
  %.not10.i50.24 = icmp eq i64 %i.fe, 0
  %.str.5..str.8.i51.24 = select i1 %.not10.i50.24, ptr @.str.5, ptr @.str.8
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.24, i64 noundef 1) ; 0 uses
  %i.fg = and i64 %i.di, 64
  %.not10.i50.25 = icmp eq i64 %i.fg, 0
  %.str.5..str.8.i51.25 = select i1 %.not10.i50.25, ptr @.str.5, ptr @.str.8
  %i.fh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.25, i64 noundef 1) ; 0 uses
  %i.fi = and i64 %i.di, 32
  %.not10.i50.26 = icmp eq i64 %i.fi, 0
  %.str.5..str.8.i51.26 = select i1 %.not10.i50.26, ptr @.str.5, ptr @.str.8
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.26, i64 noundef 1) ; 0 uses
  %i.fk = and i64 %i.di, 16
  %.not10.i50.27 = icmp eq i64 %i.fk, 0
  %.str.5..str.8.i51.27 = select i1 %.not10.i50.27, ptr @.str.5, ptr @.str.8
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.27, i64 noundef 1) ; 0 uses
  %i.fm = and i64 %i.di, 8
  %.not10.i50.28 = icmp eq i64 %i.fm, 0
  %.str.5..str.8.i51.28 = select i1 %.not10.i50.28, ptr @.str.5, ptr @.str.8
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.28, i64 noundef 1) ; 0 uses
  %i.fo = and i64 %i.di, 4
  %.not10.i50.29 = icmp eq i64 %i.fo, 0
  %.str.5..str.8.i51.29 = select i1 %.not10.i50.29, ptr @.str.5, ptr @.str.8
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.29, i64 noundef 1) ; 0 uses
  %i.fq = and i64 %i.di, 2
  %.not10.i50.30 = icmp eq i64 %i.fq, 0
  %.str.5..str.8.i51.30 = select i1 %.not10.i50.30, ptr @.str.5, ptr @.str.8
  %i.fr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.30, i64 noundef 1) ; 0 uses
  %i.fs = and i64 %i.di, 1
  %.not10.i50.31 = icmp eq i64 %i.fs, 0
  %.str.5..str.8.i51.31 = select i1 %.not10.i50.31, ptr @.str.5, ptr @.str.8
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.31, i64 noundef 1) ; 0 uses
  br label %_ZL19display_binary_dataRSomm.exit45

_ZL19display_binary_dataRSomm.exit45:             ; preds = %.lr.ph14.i38, %.lr.ph14.i48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond64.not, label %_ZL19display_binary_dataRSomm.exit, label %.lr.ph58.split, !llvm.loop !166

_ZL19display_binary_dataRSomm.exit:               ; preds = %_ZL19display_binary_dataRSomm.exit45, %.lr.ph58.split.us, %.lr.ph14.i, %.loopexit.thread, %.loopexit, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb1EE4hashERK3mpz(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !18
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.n, ptr nonnull %i.k, i32 noundef 17)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  ret i32 %.1
}

declare noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64, ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !18     ; 2 uses
  switch i32 %i.e, label %bb.l [
    i32 2, label %bb.c
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %2, 31
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i32 1, %2
  store i32 %i.g, ptr %3, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.k = lshr i32 %2, 5                           ; 3 uses
  %i.l = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.m = and i32 %2, 31
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 6) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._ZN11mpz_managerILb1EE10deallocateER3mpz.exit_crit_edge.i, label %bb.f

._ZN11mpz_managerILb1EE10deallocateER3mpz.exit_crit_edge.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateER3mpz.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %i.s = icmp ult i32 %i.r, %spec.store.select.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.u = load i8, ptr %i.t, align 4               ; 3 uses
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = and i8 %i.u, 2
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.o)
  %.pre.i.i = load i8, ptr %i.t, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.h, %bb.g
  %i.x = phi i8 [ %i.u, %bb.g ], [ %.pre.i.i, %bb.h ]
  store ptr null, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11mpz_managerILb1EE10deallocateER3mpz.exit.i

_ZN11mpz_managerILb1EE10deallocateER3mpz.exit.i:  ; preds = %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i, %._ZN11mpz_managerILb1EE10deallocateER3mpz.exit_crit_edge.i
  %i.y = phi i8 [ %.pre.i, %._ZN11mpz_managerILb1EE10deallocateER3mpz.exit_crit_edge.i ], [ %i.x, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i ]
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = and i8 %i.y, -4
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = shl nuw nsw i32 %spec.store.select.i, 2
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %spec.store.select.i, ptr %i.ag, align 4, !tbaa !12
  store ptr %i.af, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11mpz_managerILb1EE18allocate_if_neededER3mpzj.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = or i8 %i.u, 1
  store i8 %i.ah, ptr %i.t, align 4
  br label %_ZN11mpz_managerILb1EE18allocate_if_neededER3mpzj.exit

_ZN11mpz_managerILb1EE18allocate_if_neededER3mpzj.exit: ; preds = %_ZN11mpz_managerILb1EE10deallocateER3mpz.exit.i, %bb.i
  %i.ai = phi ptr [ %i.af, %_ZN11mpz_managerILb1EE10deallocateER3mpz.exit.i ], [ %i.o, %bb.i ] ; 3 uses
  store i32 %i.l, ptr %i.ai, align 4, !tbaa !26
  %.not57 = icmp eq i32 %i.k, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb1EE18allocate_if_neededER3mpzj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %5 = lshr i32 %2, 3
  %6 = and i32 %5, 536870908
  %7 = zext nneg i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aj, i8 0, i64 %7, i1 false), !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11mpz_managerILb1EE18allocate_if_neededER3mpzj.exit
  %i.ak = shl nuw i32 1, %i.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = zext nneg i32 %i.k to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !27
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 4
  br label %bb.ac

bb.j:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.ar, align 4
  br label %bb.ac

bb.k:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 4
  br label %bb.ac

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -4
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !14
  store i32 %i.e, ptr %4, align 8, !tbaa !18
  store i8 %i.az, ptr %i.ax, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, -4
  store i8 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.be, align 8, !tbaa !14
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit:       ; preds = %bb.l, %bb.m
  %i.bf = phi ptr [ %i.ba, %bb.l ], [ %i.be, %bb.m ] ; 4 uses
  %i.bg = phi ptr [ %i.ax, %bb.l ], [ %i.bb, %bb.m ] ; 8 uses
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, -2
  store i8 %i.bj, ptr %i.bh, align 4
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph55, %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49
  %.054 = phi i32 [ 1, %.lr.ph55 ], [ %i.dd, %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49 ] ; 2 uses
  %i.bl = and i32 %.054, %2
  %.not40 = icmp eq i32 %i.bl, 0
  br i1 %.not40, label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load i8, ptr %i.bh, align 4             ; 3 uses
  %i.bn = and i8 %i.bm, 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bp = load i8, ptr %i.bg, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %3, align 8, !tbaa !18
  %i.bt = sext i32 %i.bs to i64
  %i.bu = load i32, ptr %4, align 8, !tbaa !18
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.bv, %i.bt                ; 4 uses
  %i.bx = add nsw i64 %i.bw, 2147483648
  %or.cond.i.i = icmp ult i64 %i.bx, 4294967296
  br i1 %or.cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = trunc nsw i64 %i.bw to i32
  store i32 %i.by, ptr %3, align 8, !tbaa !18
  store i8 %i.bm, ptr %i.bh, align 4
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.t, label %.thread27.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cb = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !61 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 6, ptr %i.cc, align 4, !tbaa !12
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !14
  %i.cd = load i8, ptr %i.bh, align 4
  %i.ce = and i8 %i.cd, -3
  br label %.thread27.i.i.i

.thread27.i.i.i:                                  ; preds = %bb.s, %bb.t
  %i.cf = phi ptr [ %i.cb, %bb.t ], [ %i.bz, %bb.s ] ; 2 uses
  %i.cg = phi i8 [ %i.ce, %bb.t ], [ %i.bm, %bb.s ]
  %i.ch = or i8 %i.cg, 1
  store i8 %i.ch, ptr %i.bh, align 4
  %i.ci = icmp slt i64 %i.bw, 0
  %.sink.i.i.i = select i1 %i.ci, i32 -1, i32 1
  %.0.i.i.i = call i64 @llvm.abs.i64(i64 %i.bw, i1 true) ; 2 uses
  store i32 %.sink.i.i.i, ptr %3, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %.0.i.i.i, ptr %i.cj, align 4
  %i.ck = icmp samesign ult i64 %.0.i.i.i, 4294967296
  %.ph.i.i.i = select i1 %i.ck, i32 1, i32 2
  store i32 %.ph.i.i.i, ptr %i.cf, align 4, !tbaa !26
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

bb.u:                                             ; preds = %bb.p, %bb.o
  call void @_ZN11mpz_managerILb1EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit:    ; preds = %bb.u, %.thread27.i.i.i, %bb.r, %bb.n
  %i.cl = load i8, ptr %i.bg, align 4             ; 3 uses
  %i.cm = and i8 %i.cl, 1
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit
  %i.co = load i32, ptr %4, align 8, !tbaa !18
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %i.cp                ; 4 uses
  %or.cond.i.i41 = icmp samesign ult i64 %i.cq, 2147483648
  br i1 %or.cond.i.i41, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  store i32 %i.cr, ptr %4, align 8, !tbaa !18
  store i8 %i.cl, ptr %i.bg, align 4
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49

bb.x:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.y, label %.thread27.i.i.i45

bb.y:                                             ; preds = %bb.x
  %i.cu = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !61 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 6, ptr %i.cv, align 4, !tbaa !12
  store ptr %i.cu, ptr %i.bf, align 8, !tbaa !14
  %i.cw = load i8, ptr %i.bg, align 4
  %i.cx = and i8 %i.cw, -3
  br label %.thread27.i.i.i45

.thread27.i.i.i45:                                ; preds = %bb.x, %bb.y
  %i.cy = phi ptr [ %i.cu, %bb.y ], [ %i.cs, %bb.x ] ; 2 uses
  %i.cz = phi i8 [ %i.cx, %bb.y ], [ %i.cl, %bb.x ]
  %i.da = or i8 %i.cz, 1
  store i8 %i.da, ptr %i.bg, align 4
  store i32 1, ptr %4, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.cq, ptr %i.db, align 4
  %i.dc = icmp samesign ult i64 %i.cq, 4294967296
  %.ph.i.i.i48 = select i1 %i.dc, i32 1, i32 2
  store i32 %.ph.i.i.i48, ptr %i.cy, align 4, !tbaa !26
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49

bb.z:                                             ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit
  call void @_ZN11mpz_managerILb1EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49

_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49:  ; preds = %bb.w, %.thread27.i.i.i45, %bb.z
  %i.dd = shl i32 %.054, 1                        ; 2 uses
  %.not = icmp ugt i32 %i.dd, %2
  br i1 %.not, label %._crit_edge56, label %bb.n, !llvm.loop !167

._crit_edge56:                                    ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit49, %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit
  %i.de = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb1EE3delER3mpz.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge56
  %i.df = load i8, ptr %i.bg, align 4             ; 2 uses
  %i.dg = and i8 %i.df, 2
end_hunk_0
begin_hunk_1_@_ZNK11mpz_managerILb0EE11display_binERSoRK3mpzj:bb.a
  %i.dm = and i64 %i.di, 536870912
  %.not10.i50.2 = icmp eq i64 %i.dm, 0
  %.str.5..str.8.i51.2 = select i1 %.not10.i50.2, ptr @.str.5, ptr @.str.8
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.2, i64 noundef 1) ; 0 uses
  %i.do = and i64 %i.di, 268435456
  %.not10.i50.3 = icmp eq i64 %i.do, 0
  %.str.5..str.8.i51.3 = select i1 %.not10.i50.3, ptr @.str.5, ptr @.str.8
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.3, i64 noundef 1) ; 0 uses
  %i.dq = and i64 %i.di, 134217728
  %.not10.i50.4 = icmp eq i64 %i.dq, 0
  %.str.5..str.8.i51.4 = select i1 %.not10.i50.4, ptr @.str.5, ptr @.str.8
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.4, i64 noundef 1) ; 0 uses
  %i.ds = and i64 %i.di, 67108864
  %.not10.i50.5 = icmp eq i64 %i.ds, 0
  %.str.5..str.8.i51.5 = select i1 %.not10.i50.5, ptr @.str.5, ptr @.str.8
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.5, i64 noundef 1) ; 0 uses
  %i.du = and i64 %i.di, 33554432
  %.not10.i50.6 = icmp eq i64 %i.du, 0
  %.str.5..str.8.i51.6 = select i1 %.not10.i50.6, ptr @.str.5, ptr @.str.8
  %i.dv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.6, i64 noundef 1) ; 0 uses
  %i.dw = and i64 %i.di, 16777216
  %.not10.i50.7 = icmp eq i64 %i.dw, 0
  %.str.5..str.8.i51.7 = select i1 %.not10.i50.7, ptr @.str.5, ptr @.str.8
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.7, i64 noundef 1) ; 0 uses
  %i.dy = and i64 %i.di, 8388608
  %.not10.i50.8 = icmp eq i64 %i.dy, 0
  %.str.5..str.8.i51.8 = select i1 %.not10.i50.8, ptr @.str.5, ptr @.str.8
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.8, i64 noundef 1) ; 0 uses
  %i.ea = and i64 %i.di, 4194304
  %.not10.i50.9 = icmp eq i64 %i.ea, 0
  %.str.5..str.8.i51.9 = select i1 %.not10.i50.9, ptr @.str.5, ptr @.str.8
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.9, i64 noundef 1) ; 0 uses
  %i.ec = and i64 %i.di, 2097152
  %.not10.i50.10 = icmp eq i64 %i.ec, 0
  %.str.5..str.8.i51.10 = select i1 %.not10.i50.10, ptr @.str.5, ptr @.str.8
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.10, i64 noundef 1) ; 0 uses
  %i.ee = and i64 %i.di, 1048576
  %.not10.i50.11 = icmp eq i64 %i.ee, 0
  %.str.5..str.8.i51.11 = select i1 %.not10.i50.11, ptr @.str.5, ptr @.str.8
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.11, i64 noundef 1) ; 0 uses
  %i.eg = and i64 %i.di, 524288
  %.not10.i50.12 = icmp eq i64 %i.eg, 0
  %.str.5..str.8.i51.12 = select i1 %.not10.i50.12, ptr @.str.5, ptr @.str.8
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.12, i64 noundef 1) ; 0 uses
  %i.ei = and i64 %i.di, 262144
  %.not10.i50.13 = icmp eq i64 %i.ei, 0
  %.str.5..str.8.i51.13 = select i1 %.not10.i50.13, ptr @.str.5, ptr @.str.8
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.13, i64 noundef 1) ; 0 uses
  %i.ek = and i64 %i.di, 131072
  %.not10.i50.14 = icmp eq i64 %i.ek, 0
  %.str.5..str.8.i51.14 = select i1 %.not10.i50.14, ptr @.str.5, ptr @.str.8
  %i.el = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.14, i64 noundef 1) ; 0 uses
  %i.em = and i64 %i.di, 65536
  %.not10.i50.15 = icmp eq i64 %i.em, 0
  %.str.5..str.8.i51.15 = select i1 %.not10.i50.15, ptr @.str.5, ptr @.str.8
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.15, i64 noundef 1) ; 0 uses
  %i.eo = and i64 %i.di, 32768
  %.not10.i50.16 = icmp eq i64 %i.eo, 0
  %.str.5..str.8.i51.16 = select i1 %.not10.i50.16, ptr @.str.5, ptr @.str.8
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.16, i64 noundef 1) ; 0 uses
  %i.eq = and i64 %i.di, 16384
  %.not10.i50.17 = icmp eq i64 %i.eq, 0
  %.str.5..str.8.i51.17 = select i1 %.not10.i50.17, ptr @.str.5, ptr @.str.8
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.17, i64 noundef 1) ; 0 uses
  %i.es = and i64 %i.di, 8192
  %.not10.i50.18 = icmp eq i64 %i.es, 0
  %.str.5..str.8.i51.18 = select i1 %.not10.i50.18, ptr @.str.5, ptr @.str.8
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.18, i64 noundef 1) ; 0 uses
  %i.eu = and i64 %i.di, 4096
  %.not10.i50.19 = icmp eq i64 %i.eu, 0
  %.str.5..str.8.i51.19 = select i1 %.not10.i50.19, ptr @.str.5, ptr @.str.8
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.19, i64 noundef 1) ; 0 uses
  %i.ew = and i64 %i.di, 2048
  %.not10.i50.20 = icmp eq i64 %i.ew, 0
  %.str.5..str.8.i51.20 = select i1 %.not10.i50.20, ptr @.str.5, ptr @.str.8
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.20, i64 noundef 1) ; 0 uses
  %i.ey = and i64 %i.di, 1024
  %.not10.i50.21 = icmp eq i64 %i.ey, 0
  %.str.5..str.8.i51.21 = select i1 %.not10.i50.21, ptr @.str.5, ptr @.str.8
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.21, i64 noundef 1) ; 0 uses
  %i.fa = and i64 %i.di, 512
  %.not10.i50.22 = icmp eq i64 %i.fa, 0
  %.str.5..str.8.i51.22 = select i1 %.not10.i50.22, ptr @.str.5, ptr @.str.8
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.22, i64 noundef 1) ; 0 uses
  %i.fc = and i64 %i.di, 256
  %.not10.i50.23 = icmp eq i64 %i.fc, 0
  %.str.5..str.8.i51.23 = select i1 %.not10.i50.23, ptr @.str.5, ptr @.str.8
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.23, i64 noundef 1) ; 0 uses
  %i.fe = and i64 %i.di, 128
  %.not10.i50.24 = icmp eq i64 %i.fe, 0
  %.str.5..str.8.i51.24 = select i1 %.not10.i50.24, ptr @.str.5, ptr @.str.8
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.24, i64 noundef 1) ; 0 uses
  %i.fg = and i64 %i.di, 64
  %.not10.i50.25 = icmp eq i64 %i.fg, 0
  %.str.5..str.8.i51.25 = select i1 %.not10.i50.25, ptr @.str.5, ptr @.str.8
  %i.fh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.25, i64 noundef 1) ; 0 uses
  %i.fi = and i64 %i.di, 32
  %.not10.i50.26 = icmp eq i64 %i.fi, 0
  %.str.5..str.8.i51.26 = select i1 %.not10.i50.26, ptr @.str.5, ptr @.str.8
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.26, i64 noundef 1) ; 0 uses
  %i.fk = and i64 %i.di, 16
  %.not10.i50.27 = icmp eq i64 %i.fk, 0
  %.str.5..str.8.i51.27 = select i1 %.not10.i50.27, ptr @.str.5, ptr @.str.8
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.27, i64 noundef 1) ; 0 uses
  %i.fm = and i64 %i.di, 8
  %.not10.i50.28 = icmp eq i64 %i.fm, 0
  %.str.5..str.8.i51.28 = select i1 %.not10.i50.28, ptr @.str.5, ptr @.str.8
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.28, i64 noundef 1) ; 0 uses
  %i.fo = and i64 %i.di, 4
  %.not10.i50.29 = icmp eq i64 %i.fo, 0
  %.str.5..str.8.i51.29 = select i1 %.not10.i50.29, ptr @.str.5, ptr @.str.8
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.29, i64 noundef 1) ; 0 uses
  %i.fq = and i64 %i.di, 2
  %.not10.i50.30 = icmp eq i64 %i.fq, 0
  %.str.5..str.8.i51.30 = select i1 %.not10.i50.30, ptr @.str.5, ptr @.str.8
  %i.fr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.30, i64 noundef 1) ; 0 uses
  %i.fs = and i64 %i.di, 1
  %.not10.i50.31 = icmp eq i64 %i.fs, 0
  %.str.5..str.8.i51.31 = select i1 %.not10.i50.31, ptr @.str.5, ptr @.str.8
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.5..str.8.i51.31, i64 noundef 1) ; 0 uses
  br label %_ZL19display_binary_dataRSomm.exit45

_ZL19display_binary_dataRSomm.exit45:             ; preds = %.lr.ph14.i38, %.lr.ph14.i48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond64.not, label %_ZL19display_binary_dataRSomm.exit, label %.lr.ph58.split, !llvm.loop !274

_ZL19display_binary_dataRSomm.exit:               ; preds = %_ZL19display_binary_dataRSomm.exit45, %.lr.ph58.split.us, %.lr.ph14.i, %.loopexit.thread, %.loopexit, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb0EE4hashERK3mpz(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !18
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = tail call noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.n, ptr nonnull %i.k, i32 noundef 17)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !18     ; 2 uses
  switch i32 %i.e, label %bb.l [
    i32 2, label %bb.c
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %2, 31
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i32 1, %2
  store i32 %i.g, ptr %3, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.k = lshr i32 %2, 5                           ; 3 uses
  %i.l = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.m = and i32 %2, 31
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 6) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %._ZN11mpz_managerILb0EE10deallocateER3mpz.exit_crit_edge.i, label %bb.f

._ZN11mpz_managerILb0EE10deallocateER3mpz.exit_crit_edge.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateER3mpz.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12   ; 2 uses
  %i.s = icmp ult i32 %i.r, %spec.store.select.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.u = load i8, ptr %i.t, align 4               ; 3 uses
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = and i8 %i.u, 2
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i32 %i.r, 2
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = zext nneg i32 %i.y to i64
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.z, ptr noundef nonnull %i.o)
  %.pre.i.i = load i8, ptr %i.t, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aa = phi i8 [ %i.u, %bb.g ], [ %.pre.i.i, %bb.h ]
  store ptr null, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11mpz_managerILb0EE10deallocateER3mpz.exit.i

_ZN11mpz_managerILb0EE10deallocateER3mpz.exit.i:  ; preds = %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i, %._ZN11mpz_managerILb0EE10deallocateER3mpz.exit_crit_edge.i
  %i.ab = phi i8 [ %.pre.i, %._ZN11mpz_managerILb0EE10deallocateER3mpz.exit_crit_edge.i ], [ %i.aa, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i ]
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = and i8 %i.ab, -4
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = shl nuw nsw i32 %spec.store.select.i, 2
  %i.ag = add nuw nsw i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.ah) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %spec.store.select.i, ptr %i.aj, align 4, !tbaa !12
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !14
  br label %_ZN11mpz_managerILb0EE18allocate_if_neededER3mpzj.exit

bb.i:                                             ; preds = %bb.f
  %i.ak = or i8 %i.u, 1
  store i8 %i.ak, ptr %i.t, align 4
  br label %_ZN11mpz_managerILb0EE18allocate_if_neededER3mpzj.exit

_ZN11mpz_managerILb0EE18allocate_if_neededER3mpzj.exit: ; preds = %_ZN11mpz_managerILb0EE10deallocateER3mpz.exit.i, %bb.i
  %i.al = phi ptr [ %i.ai, %_ZN11mpz_managerILb0EE10deallocateER3mpz.exit.i ], [ %i.o, %bb.i ] ; 3 uses
  store i32 %i.l, ptr %i.al, align 4, !tbaa !26
  %.not57 = icmp eq i32 %i.k, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11mpz_managerILb0EE18allocate_if_neededER3mpzj.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %5 = lshr i32 %2, 3
  %6 = and i32 %5, 536870908
  %7 = zext nneg i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.am, i8 0, i64 %7, i1 false), !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11mpz_managerILb0EE18allocate_if_neededER3mpzj.exit
  %i.an = shl nuw i32 1, %i.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = zext nneg i32 %i.k to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !27
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = or i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 4
  br label %bb.ac

bb.j:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 4
  br label %bb.ac

bb.k:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 4
  br label %bb.ac

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = and i8 %i.bb, -4
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !14
  store i32 %i.e, ptr %4, align 8, !tbaa !18
  store i8 %i.bc, ptr %i.ba, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, -4
  store i8 %i.bg, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !14
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.l, %bb.m
  %i.bi = phi ptr [ %i.bd, %bb.l ], [ %i.bh, %bb.m ] ; 4 uses
  %i.bj = phi ptr [ %i.ba, %bb.l ], [ %i.be, %bb.m ] ; 8 uses
  store i32 1, ptr %3, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bk, align 4
  %.not53 = icmp eq i32 %2, 0
  br i1 %.not53, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph55, %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49
  %.054 = phi i32 [ 1, %.lr.ph55 ], [ %i.dg, %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49 ] ; 2 uses
  %i.bo = and i32 %.054, %2
  %.not40 = icmp eq i32 %i.bo, 0
  br i1 %.not40, label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load i8, ptr %i.bk, align 4             ; 3 uses
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bs = load i8, ptr %i.bj, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %3, align 8, !tbaa !18
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load i32, ptr %4, align 8, !tbaa !18
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.by, %i.bw                ; 4 uses
  %i.ca = add nsw i64 %i.bz, 2147483648
  %or.cond.i.i = icmp ult i64 %i.ca, 4294967296
  br i1 %or.cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = trunc nsw i64 %i.bz to i32
  store i32 %i.cb, ptr %3, align 8, !tbaa !18
  store i8 %i.bp, ptr %i.bk, align 4
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %.thread27.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.ce = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !220 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 6, ptr %i.cf, align 4, !tbaa !12
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !14
  %i.cg = load i8, ptr %i.bk, align 4
  %i.ch = and i8 %i.cg, -3
  br label %.thread27.i.i.i

.thread27.i.i.i:                                  ; preds = %bb.s, %bb.t
  %i.ci = phi ptr [ %i.ce, %bb.t ], [ %i.cc, %bb.s ] ; 2 uses
  %i.cj = phi i8 [ %i.ch, %bb.t ], [ %i.bp, %bb.s ]
  %i.ck = or i8 %i.cj, 1
  store i8 %i.ck, ptr %i.bk, align 4
  %i.cl = icmp slt i64 %i.bz, 0
  %.sink.i.i.i = select i1 %i.cl, i32 -1, i32 1
  %.0.i.i.i = call i64 @llvm.abs.i64(i64 %i.bz, i1 true) ; 2 uses
  store i32 %.sink.i.i.i, ptr %3, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.0.i.i.i, ptr %i.cm, align 4
  %i.cn = icmp samesign ult i64 %.0.i.i.i, 4294967296
  %.ph.i.i.i = select i1 %i.cn, i32 1, i32 2
  store i32 %.ph.i.i.i, ptr %i.ci, align 4, !tbaa !26
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

bb.u:                                             ; preds = %bb.p, %bb.o
  call void @_ZN11mpz_managerILb0EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit:    ; preds = %bb.u, %.thread27.i.i.i, %bb.r, %bb.n
  %i.co = load i8, ptr %i.bj, align 4             ; 3 uses
  %i.cp = and i8 %i.co, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit
  %i.cr = load i32, ptr %4, align 8, !tbaa !18
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.cs                ; 4 uses
  %or.cond.i.i41 = icmp samesign ult i64 %i.ct, 2147483648
  br i1 %or.cond.i.i41, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  store i32 %i.cu, ptr %4, align 8, !tbaa !18
  store i8 %i.co, ptr %i.bj, align 4
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49

bb.x:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.y, label %.thread27.i.i.i45

bb.y:                                             ; preds = %bb.x
  %i.cx = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !220 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 6, ptr %i.cy, align 4, !tbaa !12
  store ptr %i.cx, ptr %i.bi, align 8, !tbaa !14
  %i.cz = load i8, ptr %i.bj, align 4
  %i.da = and i8 %i.cz, -3
  br label %.thread27.i.i.i45

.thread27.i.i.i45:                                ; preds = %bb.x, %bb.y
  %i.db = phi ptr [ %i.cx, %bb.y ], [ %i.cv, %bb.x ] ; 2 uses
  %i.dc = phi i8 [ %i.da, %bb.y ], [ %i.co, %bb.x ]
  %i.dd = or i8 %i.dc, 1
  store i8 %i.dd, ptr %i.bj, align 4
  store i32 1, ptr %4, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.ct, ptr %i.de, align 4
  %i.df = icmp samesign ult i64 %i.ct, 4294967296
  %.ph.i.i.i48 = select i1 %i.df, i32 1, i32 2
  store i32 %.ph.i.i.i48, ptr %i.db, align 4, !tbaa !26
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49

bb.z:                                             ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit
  call void @_ZN11mpz_managerILb0EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49

_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49:  ; preds = %bb.w, %.thread27.i.i.i45, %bb.z
  %i.dg = shl i32 %.054, 1                        ; 2 uses
  %.not = icmp ugt i32 %i.dg, %2
  br i1 %.not, label %._crit_edge56, label %bb.n, !llvm.loop !275

._crit_edge56:                                    ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit49, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.dh = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb0EE3delER3mpz.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge56
  %i.di = load i8, ptr %i.bj, align 4             ; 2 uses
  %i.dj = and i8 %i.di, 2
end_hunk_1
