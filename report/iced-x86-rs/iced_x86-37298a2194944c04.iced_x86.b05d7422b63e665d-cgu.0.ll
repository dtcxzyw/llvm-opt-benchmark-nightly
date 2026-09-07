Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder19add_reg_or_mem_full:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !4199, !noalias !4200, !noundef !21 ; 2 uses
  %i.ss = icmp sgt i64 %i.sr, -1
  call void @llvm.assume(i1 %i.ss)
  %i.st = icmp eq i64 %i.sr, 0
  br i1 %i.st, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.split58
  call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  %.val.i.i151 = load i64, ptr %i.bz, align 8, !alias.scope !4202, !noalias !4199 ; 2 uses
  %i.su = icmp eq i64 %.val.i.i151, 0
  br i1 %i.su, label %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.val1.i.i152 = load ptr, ptr %i.sv, align 8, !alias.scope !4202, !noalias !4199, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i152, i64 noundef %.val.i.i151, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4203
  br label %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit

bb.ff:                                            ; preds = %.split58
  call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  %.val.i1.i153 = load i64, ptr %i.sp, align 8, !alias.scope !4205, !noalias !4200 ; 2 uses
  %i.sw = icmp eq i64 %.val.i1.i153, 0
  br i1 %i.sw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i155, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i2.i154 = load ptr, ptr %i.sx, align 8, !alias.scope !4205, !noalias !4200, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i154, i64 noundef %.val.i1.i153, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4206
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i155

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i155: ; preds = %bb.fg, %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !alias.scope !4207
  br label %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit

bb.fh:                                            ; preds = %bb.c
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.cg
  %i.ta = load i8, ptr %i.sz, align 1, !alias.scope !4208, !noundef !21
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction11op_register.exit

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction11op_register.exit: ; preds = %.thread189, %bb.fh
  %i.tb = phi i32 [ %i.cm, %bb.fh ], [ %i.cf, %.thread189 ] ; 5 uses
  %i.tc = phi ptr [ %i.ck, %bb.fh ], [ %i.cd, %.thread189 ]
  %.sroa.0.0.i157 = phi i8 [ %i.ta, %bb.fh ], [ 0, %.thread189 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %2, ptr %i.f, align 4, !noalias !4209
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.te = load i32, ptr %i.td, align 8, !alias.scope !4209, !noundef !21
  %i.tf = icmp eq i32 %i.te, 64
  br i1 %i.tf, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction11op_register.exit
  %i.tg = zext i8 %4 to i32
  %i.th = zext i8 %3 to i32
  %i.ti = add nuw nsw i32 %i.th, 7
  %i.tj = icmp samesign ult i32 %i.ti, %i.tg
  %i.tk = add i8 %3, 7
  %spec.select.i158 = select i1 %i.tj, i8 %i.tk, i8 %4
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction11op_register.exit
  %.sroa.0.0.i159 = phi i8 [ %4, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction11op_register.exit ], [ %spec.select.i158, %bb.fi ] ; 2 uses
  %.not.i160 = icmp ule i8 %3, %.sroa.0.0.i157
  %.not22.i = icmp ule i8 %.sroa.0.0.i157, %.sroa.0.0.i159
  %or.cond.not.i = and i1 %.not.i160, %.not22.i
  br i1 %or.cond.not.i, label %bb.fp, label %.split.i161

.split.i161:                                      ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4209
  %i.tl = zext i8 %.sroa.0.0.i157 to i32
  store i32 %i.tl, ptr %i.d, align 4, !noalias !4209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4209
  %i.tm = zext i8 %3 to i32
  store i32 %i.tm, ptr %i.c, align 4, !noalias !4209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4209
  %i.tn = zext i8 %.sroa.0.0.i159 to i32
  store i32 %i.tn, ptr %i.b, align 4, !noalias !4209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4209
  store ptr %i.f, ptr %i.a, align 8, !noalias !4209
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4209
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.to, align 8, !noalias !4209
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !4209
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.tp, align 8, !noalias !4209
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4209
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.tq, align 8, !noalias !4209
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !4209
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @87, ptr noundef nonnull %i.a), !noalias !4209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4209
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tt = load i64, ptr %i.ts, align 8, !alias.scope !4212, !noalias !4211, !noundef !21 ; 2 uses
  %i.tu = icmp sgt i64 %i.tt, -1
  call void @llvm.assume(i1 %i.tu)
  %i.tv = icmp eq i64 %i.tt, 0
  br i1 %i.tv, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %.split.i161
  call void @llvm.experimental.noalias.scope.decl(metadata !4213)
  %.val.i.i.i162 = load i64, ptr %i.e, align 8, !alias.scope !4214, !noalias !4212 ; 2 uses
  %i.tw = icmp eq i64 %.val.i.i.i162, 0
  br i1 %i.tw, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i163 = load ptr, ptr %i.tx, align 8, !alias.scope !4214, !noalias !4212, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i163, i64 noundef %.val.i.i.i162, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4215
  br label %bb.fo

bb.fm:                                            ; preds = %.split.i161
  call void @llvm.experimental.noalias.scope.decl(metadata !4216)
  %.val.i1.i.i164 = load i64, ptr %i.tr, align 8, !alias.scope !4217, !noalias !4211 ; 2 uses
  %i.ty = icmp eq i64 %.val.i1.i.i164, 0
  br i1 %i.ty, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i.i166, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i2.i.i165 = load ptr, ptr %i.tz, align 8, !alias.scope !4217, !noalias !4211, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i165, i64 noundef %.val.i1.i.i164, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4218
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i.i166

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i.i166: ; preds = %bb.fn, %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tr, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !4219
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fk, %bb.fl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit

bb.fp:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %narrow = sub nuw i8 %.sroa.0.0.i157, %3
  %i.ua = zext i8 %narrow to i32                  ; 4 uses
  %i.ub = icmp eq i8 %3, 1
  br i1 %i.ub, label %bb.fq, label %bb.fr

_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i155, %bb.fe, %bb.fd, %bb.fo, %bb.i, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i149, %bb.fa, %bb.ez, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i118, %bb.ab, %bb.aa, %bb.fr, %bb.d, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit3.i, %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder12add_mem_op16.exit, %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder10add_mem_op.exit
  ret void

bb.fq:                                            ; preds = %bb.fp
  %i.uc = icmp ugt i8 %.sroa.0.0.i157, 12
  br i1 %i.uc, label %bb.ft, label %bb.fs

bb.fr:                                            ; preds = %bb.fu, %bb.ft, %bb.fv, %bb.fp
  %i.ud = phi i32 [ %i.tb, %bb.ft ], [ %i.us, %bb.fv ], [ %i.tb, %bb.fp ], [ %spec.select203, %bb.fu ]
  %.sroa.0.0 = phi i32 [ %i.uo, %bb.ft ], [ %i.ur, %bb.fv ], [ %i.ua, %bb.fp ], [ %i.ua, %bb.fu ] ; 2 uses
  %i.ue = trunc i32 %.sroa.0.0 to i8
  %i.uf = and i8 %i.ue, 7
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 150 ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 2, !noundef !21
  %i.ui = or i8 %i.uh, %i.uf
  %i.uj = or i8 %i.ui, -64
  store i8 %i.uj, ptr %i.ug, align 2
  %i.uk = lshr i32 %.sroa.0.0, 3
  %i.ul = and i32 %i.uk, 3
  %i.um = or i32 %i.ud, %i.ul
  store i32 %i.um, ptr %i.tc, align 8
  br label %_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder17set_error_message.exit

bb.fs:                                            ; preds = %bb.fq
  %i.un = icmp samesign ugt i8 %.sroa.0.0.i157, 8
  br i1 %i.un, label %bb.fv, label %bb.fu

bb.ft:                                            ; preds = %bb.fq
  %i.uo = add nsw i32 %i.ua, -4
  br label %bb.fr

bb.fu:                                            ; preds = %bb.fs
  %i.up = icmp samesign ugt i8 %.sroa.0.0.i157, 4
  %i.uq = or i32 %i.tb, 2048
  %spec.select203 = select i1 %i.up, i32 %i.uq, i32 %i.tb
  br label %bb.fr

bb.fv:                                            ; preds = %bb.fs
  %i.ur = add nsw i32 %i.ua, -4
  %i.us = or i32 %i.tb, 64
  br label %bb.fr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 3294390847744) i64 @_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder20get_constant_offsets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i8, ptr %i.a, align 4, !range !41, !noundef !21
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.e
    i8 6, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ 256, %bb.c ], [ 512, %bb.d ], [ 2048, %bb.f ], [ 1024, %bb.e ]
  %.sroa.0.0.shrunk = phi i32 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %i.n, %bb.d ], [ %i.x, %bb.f ], [ %i.s, %bb.e ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.d = load i8, ptr %i.c, align 1, !range !42, !noundef !21
  switch i8 %i.d, label %default.unreachable1 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 11, label %bb.h
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 14, label %bb.i
    i8 15, label %bb.j
    i8 16, label %bb.j
    i8 17, label %bb.g
    i8 18, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !noundef !21
  %i.i = sub i32 %i.f, %i.h
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !noundef !21
  %i.n = sub i32 %i.k, %i.m
  br label %bb.b

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i32, ptr %i.o, align 8, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.r = load i32, ptr %i.q, align 4, !noundef !21
  %i.s = sub i32 %i.p, %i.r
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i32, ptr %i.t, align 8, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = load i32, ptr %i.v, align 4, !noundef !21
  %i.x = sub i32 %i.u, %i.w
  br label %bb.b

bb.g:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.b, %bb.b, %bb.b
  %.sroa.30.0 = phi i64 [ 0, %bb.k ], [ 1099511627776, %bb.l ], [ 1099511627776, %bb.m ], [ 2199023255552, %bb.n ], [ 2199023255552, %bb.o ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %.sroa.26.0 = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ], [ %i.bi, %bb.m ], [ %i.bp, %bb.n ], [ %i.bw, %bb.o ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %.sroa.18.0 = phi i64 [ 134217728, %bb.k ], [ 33554432, %bb.l ], [ 16777216, %bb.m ], [ 33554432, %bb.n ], [ 67108864, %bb.o ], [ 16777216, %bb.h ], [ 33554432, %bb.i ], [ 67108864, %bb.j ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %.sroa.10.0.shrunk = phi i32 [ %i.au, %bb.k ], [ %i.az, %bb.l ], [ %i.bg, %bb.m ], [ %i.bn, %bb.n ], [ %i.bu, %bb.o ], [ %i.af, %bb.h ], [ %i.ak, %bb.i ], [ %i.ap, %bb.j ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ]
  %.sroa.26.0.insert.ext = shl i64 %.sroa.26.0, 32
  %.sroa.26.0.insert.shift = and i64 %.sroa.26.0.insert.ext, 1095216660480
  %i.y = shl i32 %.sroa.10.0.shrunk, 16
  %i.z = and i32 %i.y, 16711680
  %.sroa.10.0.insert.shift = zext nneg i32 %i.z to i64
  %i.aa = and i32 %.sroa.0.0.shrunk, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %i.aa to i64
  %.sroa.26.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.0.0.insert.ext
  %.sroa.18.0.insert.insert = or disjoint i64 %.sroa.26.0.insert.insert, %.sroa.30.0
  %.sroa.10.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.insert, %.sroa.18.0
  %.sroa.0.0.insert.mask = or disjoint i64 %.sroa.10.0.insert.insert, %.sroa.26.0.insert.shift
  %.sroa.0.0.insert.insert = or i64 %.sroa.0.0.insert.mask, %.sroa.10.0.insert.shift
  ret i64 %.sroa.0.0.insert.insert

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !21
  %i.af = sub i32 %i.ac, %i.ae
  br label %bb.g

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !21
  %i.ak = sub i32 %i.ah, %i.aj
  br label %bb.g

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.am = load i32, ptr %i.al, align 4, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ao = load i32, ptr %i.an, align 4, !noundef !21
  %i.ap = sub i32 %i.am, %i.ao
  br label %bb.g

bb.k:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.at = load i32, ptr %i.as, align 4, !noundef !21
  %i.au = sub i32 %i.ar, %i.at
  br label %bb.g

bb.l:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aw = load i32, ptr %i.av, align 4, !noundef !21
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !21
  %i.az = sub i32 %i.aw, %i.ay                    ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 2
  br label %bb.g

bb.m:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !21
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !noundef !21
  %i.bg = sub i32 %i.bd, %i.bf                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 1
  br label %bb.g

bb.n:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !21
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !21
  %i.bn = sub i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 2
  br label %bb.g

bb.o:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.br = load i32, ptr %i.bq, align 4, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !21
  %i.bu = sub i32 %i.br, %i.bt                    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 4
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x867encoderNtB2_7Encoder21set_error_message_str(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 31, 122) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !21 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4224)
  %i.f = load i64, ptr %i.e, align 8, !range !22, !alias.scope !4225, !noundef !21
  %i.g = icmp samesign ugt i64 %2, %i.f
  br i1 %i.g, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i: ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !alias.scope !4224, !noundef !21 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i
  %i.j = phi i64 [ %i.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !4224, !nonnull !21, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !4224
end_hunk_0
begin_hunk_1_@_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings:bb.a
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #46
          to label %.noexc.i unwind label %.lr.ph.i.i.i.i.preheader, !noalias !4670

.noexc.i:                                         ; preds = %bb.d
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.c ], [ 8, %bb.b ]
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !noalias !4670
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !4670
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4674
  store ptr %i.e, ptr %i.b, align 8, !noalias !4675
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !4675
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !4675
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i, %bb.h
  %.val9.i.i.i.i.i.i = phi i64 [ %i.z, %bb.h ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ] ; 3 uses
  %i.s = phi ptr [ %i.t, %bb.h ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ] ; 4 uses
  %.sroa.010.0.copyload.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !4677 ; 3 uses
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.411.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4677, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.512.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4677 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4678
  invoke void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.411.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.512.0.copyload.i.i.i.i.i.i)
          to label %bb.h unwind label %bb.e, !noalias !4678

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx1, align 8, !alias.scope !4676, !noalias !4679
  %i.v = icmp eq i64 %.sroa.010.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.v, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.411.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.010.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4680
  br label %.body.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringE7reserveBI_.exit.i.i.i ], [ %i.z, %bb.h ]
  %i.w = icmp eq i64 %i.j, 0
  br i1 %i.w, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = mul nuw i64 %i.j, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !4677
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4678
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.val9.i.i.i.i.i.i ; 4 uses
  store i64 %.sroa.010.0.copyload.i.i.i.i.i.i, ptr %i.y, align 8, !noalias !4682
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.411.0.copyload.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4682
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %.sroa.512.0.copyload.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !4682
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !4682
  %i.z = add nuw nsw i64 %.val9.i.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64.i.i.i.i.i.i.i)
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.body.i:                                          ; preds = %bb.f, %bb.e
  store i64 %.val9.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !4683, !noalias !4684
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #42, !noalias !4679
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #42, !noalias !4670
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, %.body.i
  %.pn6.i = phi { ptr, i32 } [ %i.u, %.body.i ], [ %i.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %.pn6.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4685), !noalias !4686
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4687), !noalias !4686
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !4688, !noalias !4689 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !4688, !noalias !4689, !nonnull !21, !noundef !21
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !4690
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.af = icmp eq i64 %i.ac, %i.g
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i.i
  %i.ag = icmp eq i64 %i.j, 0
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECsf8MNnN4IDbl_8iced_x86.exit.i.i.i
  %i.ah = mul nuw i64 %i.j, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !4689
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2n_15FormatterString3newEEB2p_.exit

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENvMB15_B13_3newEE9from_iterB17_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !4683, !noalias !4684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4670
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8handlersNtB2_21OpCodeHandler_Invalid6decode(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !21
  %i.c = or i32 %i.b, 64
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i16, i16 } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer10read_code2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.013 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.02.012 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.02.012, 31                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa7 = phi i64 [ %i.c, %._crit_edge ], [ %.promoted, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8
  %i.n = shl i32 %i.k, %i.m
  %i.o = or i32 %i.n, %.sroa.0.013
  %i.p = trunc i32 %i.o to i16                    ; 3 uses
  %i.q = add nuw nsw i16 %i.p, 1
  %i.r = icmp samesign ult i16 %i.p, 4935
  tail call void @llvm.assume(i1 %i.r)
  %i.s = insertvalue { i16, i16 } poison, i16 %i.p, 0
  %i.t = insertvalue { i16, i16 } %i.s, i16 %i.q, 1
  ret { i16, i16 } %i.t

bb.e:                                             ; preds = %bb.b
  %i.u = and i32 %i.k, 127
  %i.v = shl i32 %i.u, %i.m
  %i.w = or i32 %i.v, %.sroa.0.013
  %i.x = add i32 %.sroa.02.012, 7
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc range(i48 8590000128, 21195986968576) i48 @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer10read_code3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 3 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.03.014 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.01.013 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.g = phi i64 [ %.promoted, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !21 ; 2 uses
  %i.j = add i64 %i.g, 1                          ; 3 uses
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.i, -1
  %i.m = and i32 %.sroa.03.014, 31                ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa8 = phi i64 [ %i.c, %._crit_edge ], [ %.promoted, %bb.a ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa8, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.j, ptr %i.a, align 8
  %i.n = shl i32 %i.k, %i.m
  %i.o = or i32 %i.n, %.sroa.01.013               ; 2 uses
  %i.p = trunc i32 %i.o to i16                    ; 3 uses
  %i.q = add nuw nsw i16 %i.p, 1
  %i.r = add nuw nsw i16 %i.p, 2
  %i.s = icmp samesign ult i16 %i.p, 4934
  tail call void @llvm.assume(i1 %i.s)
  %.sroa.3.0.insert.ext = zext nneg i16 %i.r to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 32
  %.sroa.2.0.insert.ext = zext nneg i16 %i.q to i48
  %.sroa.2.0.insert.shift = shl nuw nsw i48 %.sroa.2.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.mask = and i32 %i.o, 8191
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.b
  %i.t = and i32 %i.k, 127
  %i.u = shl i32 %i.t, %i.m
  %i.v = or i32 %i.u, %.sroa.01.013
  %i.w = add i32 %.sroa.03.014, 7
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer11deserialize(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

._crit_edge43:                                    ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph42, %bb.e
  %i.m = phi i64 [ %i.e, %.lr.ph42 ], [ %i.af, %bb.e ] ; 4 uses
  %i.n = phi i64 [ %i.d, %.lr.ph42 ], [ %i.ae, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !noundef !21 ; 2 uses
  %i.r = add nuw i64 %i.n, 1                      ; 4 uses
  store i64 %i.r, ptr %i.b, align 8
  %i.s = icmp ult i8 %i.q, 2
  call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.u = icmp ult i64 %i.r, %i.m
  br i1 %i.u, label %.lr.ph, label %.preheader._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.v = call fastcc { ptr, ptr } @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_deNtB2_17TableDeserializer29read_handler_or_null_instance(ptr noalias nofree noundef align 8 dereferenceable(80) %0) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  %i.y = load i64, ptr %i.h, align 8, !alias.scope !4703, !noalias !4704, !noundef !21 ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !22, !alias.scope !4703, !noalias !4704, !noundef !21
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !4704
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit

common.resume.sink.split:                         ; preds = %bb.l, %bb.p
  %.sroa.020.0.copyload.lcssa.sink = phi i64 [ %.sroa.020.0.copyload, %bb.p ], [ %.val.i8, %bb.l ]
  %.sroa.4.0.copyload.lcssa.sink = phi ptr [ %.sroa.4.0.copyload, %bb.p ], [ %.val3.i, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.ba, %bb.l ]
  %i.ab = shl nuw i64 %.sroa.020.0.copyload.lcssa.sink, 4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.lcssa.sink, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !21
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bi, %bb.o ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit: ; preds = %bb.d, %bb.c
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !4703, !noalias !4704, !nonnull !21, !noundef !21
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.y ; 3 uses
  store i64 -1, ptr %i.ad, align 8, !noalias !4703
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4703
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4703
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit
  %storemerge.in = phi i64 [ %i.y, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit ], [ %i.bf, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf8MNnN4IDbl_8iced_x867decoder8table_de11HandlerInfoE8push_mutBL_.exit12 ]
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.h, align 8, !noalias !21
  %i.ae = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.af = load i64, ptr %i.c, align 8, !noundef !21 ; 2 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge43

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.sroa.0.037 = phi i32 [ %i.bp, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %.sroa.02.036 = phi i32 [ %i.bq, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.ah = phi i64 [ %i.ak, %bb.q ], [ %i.r, %.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !21 ; 2 uses
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.b, align 8
  %i.al = zext i8 %i.aj to i32                    ; 2 uses
  %i.am = icmp sgt i8 %i.aj, -1
  br i1 %i.am, label %bb.f, label %bb.q

.preheader._crit_edge:                            ; preds = %.preheader, %bb.q
  %.lcssa = phi i64 [ %i.m, %bb.q ], [ %i.r, %.preheader ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.an = and i32 %.sroa.02.036, 31
  %i.ao = shl i32 %i.al, %i.an
  %i.ap = or i32 %i.ao, %.sroa.0.037              ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4706
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  %i.as = shl nuw nsw i64 %i.aq, 4                ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !4707
  %i.at = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.as, i64 noundef range(i64 1, 9) 8) #41, !noalias !4707 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.av = ptrtoint ptr %i.at to i64
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i

bb.h:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.as) #46, !noalias !4706
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.10.0.i = phi i64 [ %i.av, %bb.g ], [ 8, %bb.f ]
  %i.aw = inttoptr i64 %.sroa.10.0.i to ptr
  store i64 %i.aq, ptr %i.a, align 8, !noalias !4706
  store ptr %i.aw, ptr %i.j, align 8, !noalias !4706
  store i64 0, ptr %i.k, align 8, !noalias !4706
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i
  %i.ax = phi i64 [ %i.bc, %bb.m ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit.i ] ; 3 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.aq
end_hunk_1
