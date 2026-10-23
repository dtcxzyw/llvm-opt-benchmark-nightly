Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.04?download=true
inline.NumInlined: 11297
inline.NumDeleted: 4176
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvMs_NtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE5flushCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !19175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !19176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.aw, ptr noundef nonnull align 8 dereferenceable(744) %i.bq, i64 712, i1 false), !noalias !19177
  call void @llvm.experimental.noalias.scope.decl(metadata !19178)
  call void @llvm.experimental.noalias.scope.decl(metadata !19179)
  call void @llvm.experimental.noalias.scope.decl(metadata !19180)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.18.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.20.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.22.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.24.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !19176
  %.val166.i.i = load i64, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, align 8, !alias.scope !19181, !noundef !84 ; 5 uses
  %.val167.i.i = load i64, ptr %i.gj, align 8, !alias.scope !19181, !noundef !84
  %i.ih = icmp ult i64 %.val166.i.i, 22171567396285519
  call void @llvm.assume(i1 %i.ih)
  %.not.i.i.i = icmp eq i64 %.val167.i.i, %.val166.i.i
  br i1 %.not.i.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !19182
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !19183

.noexc.i.i:                                       ; preds = %bb.az
  %i.ii = load i64, ptr %i.u, align 8, !range !91, !noalias !19182, !noundef !84
  %i.ij = trunc nuw i64 %i.ii to i1
  %i.ik = load i64, ptr %i.gk, align 8, !range !143, !noalias !19182, !noundef !84 ; 3 uses
  br i1 %i.ij, label %bb.ba, label %bb.bb, !prof !85

bb.ba:                                            ; preds = %.noexc.i.i
  %i.il = load i64, ptr %i.gl, align 8, !noalias !19182
  br label %.invoke.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.loopexit, %bb.ei, %bb.eh
  %.sroa.089.0.i.i = phi i8 [ %.sroa.089.7.i.i, %bb.eh ], [ %.sroa.089.7.i.i, %bb.ei ], [ %.sroa.089.1.i.i.ph, %.loopexit ] ; 2 uses
  %.sroa.081.0.i.i = phi i8 [ %.sroa.081.7.i.i, %bb.eh ], [ %.sroa.081.7.i.i, %bb.ei ], [ %.sroa.081.1.i.i.ph, %.loopexit ]
  %.pn155.i.i = phi { ptr, i32 } [ %.pn153.i.i, %bb.eh ], [ %.pn153.i.i, %bb.ei ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %i.im = trunc nuw i8 %.sroa.081.0.i.i to i1
  br i1 %i.im, label %bb.fs, label %bb.fr

.loopexit:                                        ; preds = %bb.az, %bb.cl, %bb.el, %bb.fd
  %.sroa.089.1.i.i.ph = phi i8 [ 1, %bb.cl ], [ 1, %bb.az ], [ 0, %bb.el ], [ 1, %bb.fd ]
  %.sroa.081.1.i.i.ph = phi i8 [ 1, %bb.cl ], [ 1, %bb.az ], [ 0, %bb.el ], [ 0, %bb.fd ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.thread: ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.bb:                                            ; preds = %.noexc.i.i
  %i.in = load ptr, ptr %i.gl, align 8, !noalias !19182, !nonnull !84, !noundef !84 ; 2 uses
  %i.io = icmp samesign ugt i64 %i.ik, 36
  call void @llvm.assume(i1 %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !19182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.in, ptr noundef nonnull align 1 dereferenceable(37) @87, i64 37, i1 false), !noalias !19184
  store i64 0, ptr %i.bp, align 8, !alias.scope !19185
  store i64 %i.ik, ptr %.sroa.4291.0..sroa_idx.i.i, align 8, !alias.scope !19185
  store ptr %i.in, ptr %.sroa.5292.0..sroa_idx.i.i, align 8, !alias.scope !19185
  store i64 37, ptr %.sroa.6293.0..sroa_idx.i.i, align 8, !alias.scope !19185
  br label %bb.co

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !19186
  call void @llvm.experimental.noalias.scope.decl(metadata !19187)
  %i.ip = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !19188, !nonnull !84, !noundef !84 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !19189, !noundef !84
  %i.is = icmp ult i64 %.val166.i.i, %i.ir
  br i1 %i.is, label %bb.bd, label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !19189, !nonnull !84, !noundef !84
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.val166.i.i
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !19189, !nonnull !84, !noundef !84 ; 7 uses
  %i.ix = atomicrmw add ptr %i.iw, i64 1 monotonic, align 8, !noalias !19189
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.trap()
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.iz = add nuw nsw i64 %.val166.i.i, 1
  store i64 %i.iz, ptr %i.gj, align 8, !alias.scope !19188
  store ptr %i.iw, ptr %i.av, align 8, !noalias !19186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !19186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.au, ptr noundef nonnull align 8 dereferenceable(712) %i.aw, i64 416, i1 false), !noalias !19190
  %i.ja = load ptr, ptr %i.go, align 8, !noalias !19186, !nonnull !84, !noundef !84 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19191)
  call void @llvm.experimental.noalias.scope.decl(metadata !19192)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load i16, ptr %i.jb, align 8, !alias.scope !19191, !noalias !19183, !noundef !84
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.je = load i16, ptr %i.jd, align 8, !alias.scope !19192, !noalias !19183, !noundef !84
  %i.jf = icmp eq i16 %i.jc, %i.je
  br i1 %i.jf, label %bb.bg, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 50
  %i.jh = load i16, ptr %i.jg, align 2, !alias.scope !19191, !noalias !19183, !noundef !84
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 50
  %i.jj = load i16, ptr %i.ji, align 2, !alias.scope !19192, !noalias !19183, !noundef !84
  %i.jk = icmp eq i16 %i.jh, %i.jj
  br i1 %i.jk, label %bb.bh, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !19191, !noalias !19183, !nonnull !84, !noundef !84 ; 21 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !alias.scope !19192, !noalias !19183, !nonnull !84, !noundef !84 ; 21 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !19193)
  call void @llvm.experimental.noalias.scope.decl(metadata !19194)
  %i.jr = load i64, ptr %i.jn, align 8, !range !94, !alias.scope !19193, !noalias !19195, !noundef !84
  %i.js = icmp ne i64 %i.jr, -1                   ; 2 uses
  %i.jt = load i64, ptr %i.jq, align 8, !range !94, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.ju = icmp eq i64 %i.jt, -1                   ; 3 uses
  %not..i.i.i.i = xor i1 %i.ju, true
  %i.jv = xor i1 %i.js, %i.ju
  br i1 %i.jv, label %bb.bi, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.js, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 %not..i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !19196)
  call void @llvm.experimental.noalias.scope.decl(metadata !19197)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jx = load i64, ptr %i.jw, align 8, !alias.scope !19198, !noalias !19195, !noundef !84 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jz = load i64, ptr %i.jy, align 8, !alias.scope !19199, !noalias !19195, !noundef !84
  %i.ka = icmp eq i64 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bk, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !19199, !noalias !19195, !nonnull !84, !noundef !84
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !19198, !noalias !19195, !nonnull !84, !noundef !84
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ke, ptr nonnull %i.kc, i64 %i.jx), !noalias !19200
  %i.kf = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.kf, label %bb.bl, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  %i.kh = load i8, ptr %i.kg, align 8, !range !209, !alias.scope !19198, !noalias !19195, !noundef !84 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.kh, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.kj = load i8, ptr %i.ki, align 8, !range !209, !alias.scope !19199, !noalias !19195, !noundef !84 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kk = icmp eq i8 %i.kh, %i.kj
  br i1 %i.kk, label %bb.bo, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.kl = icmp eq i8 %i.kj, -1
  br i1 %i.kl, label %bb.bo, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.km = getelementptr inbounds nuw i8, ptr %i.jm, i64 81
  %i.kn = load i8, ptr %i.km, align 1, !range !123, !alias.scope !19198, !noalias !19195, !noundef !84
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jp, i64 81
  %i.kp = load i8, ptr %i.ko, align 1, !range !123, !alias.scope !19199, !noalias !19195, !noundef !84
  %i.kq = icmp eq i8 %i.kn, %i.kp
  br i1 %i.kq, label %bb.bp, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jm, i64 40 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !range !138, !alias.scope !19198, !noalias !19195, !noundef !84
  %.not5.i.i.i.i.i = icmp eq i64 %i.ks, -2
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jp, i64 40 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !range !138, !alias.scope !19199, !noalias !19195, !noundef !84
  %i.kv = icmp eq i64 %i.ku, -2                   ; 2 uses
  br i1 %.not5.i.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.kv, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %.split7.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  br i1 %i.kv, label %bb.bs, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split7.i.i.i.i.i:                                ; preds = %bb.bq
  %i.kw = call fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kt), !noalias !19195
  br i1 %i.kw, label %bb.bs, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bs:                                            ; preds = %.split7.i.i.i.i.i, %bb.br
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.ky = load i32, ptr %i.kx, align 8, !range !208, !alias.scope !19198, !noalias !19195, !noundef !84
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jm, i64 76
  %i.la = trunc nuw i32 %i.ky to i1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.lc = load i32, ptr %i.lb, align 8, !range !208, !alias.scope !19199, !noalias !19195, !noundef !84
  %2 = trunc nuw i32 %i.lc to i1                  ; 2 uses
  br i1 %i.la, label %bb.bt, label %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  br i1 %2, label %.split.i.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i.i.i:                                   ; preds = %bb.bt
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jp, i64 76
  %i.le = load i32, ptr %i.kz, align 4, !alias.scope !19198, !noalias !19195, !noundef !84
  %i.lf = load i32, ptr %i.ld, align 4, !alias.scope !19199, !noalias !19195, !noundef !84
  %i.lg = icmp eq i32 %i.le, %i.lf
  br i1 %i.lg, label %bb.ci, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.bs
  br i1 %2, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %bb.ci

bb.bu:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 %i.ju)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.li = load i32, ptr %i.lh, align 8, !alias.scope !19193, !noalias !19195, !noundef !84
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  %i.lk = load i32, ptr %i.lj, align 8, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.ll = icmp eq i32 %i.li, %i.lk
  br i1 %i.ll, label %bb.bv, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jm, i64 100
  %i.ln = load i32, ptr %i.lm, align 4, !alias.scope !19193, !noalias !19195, !noundef !84
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jp, i64 100
  %i.lp = load i32, ptr %i.lo, align 4, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.lq = icmp eq i32 %i.ln, %i.lp
  br i1 %i.lq, label %bb.bw, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jm, i64 104
  %i.ls = load i32, ptr %i.lr, align 8, !alias.scope !19193, !noalias !19195, !noundef !84
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jp, i64 104
  %i.lu = load i32, ptr %i.lt, align 8, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.lv = icmp eq i32 %i.ls, %i.lu
  br i1 %i.lv, label %bb.bx, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !19201)
  call void @llvm.experimental.noalias.scope.decl(metadata !19202)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !19203, !noalias !19195, !noundef !84 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.lz = load i64, ptr %i.ly, align 8, !alias.scope !19204, !noalias !19195, !noundef !84
  %i.ma = icmp eq i64 %i.lx, %i.lz
  br i1 %i.ma, label %bb.by, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.by:                                            ; preds = %bb.bx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !19204, !noalias !19195, !nonnull !84, !noundef !84
  %i.md = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !alias.scope !19203, !noalias !19195, !nonnull !84, !noundef !84
  %bcmp.i4.i.i.i.i = call i32 @bcmp(ptr nonnull %i.me, ptr nonnull %i.mc, i64 %i.lx), !noalias !19205
  %i.mf = icmp eq i32 %bcmp.i4.i.i.i.i, 0
  br i1 %i.mf, label %bb.bz, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bz:                                            ; preds = %bb.by
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jm, i64 88
  %i.mh = load i8, ptr %i.mg, align 8, !range !209, !alias.scope !19203, !noalias !19195, !noundef !84 ; 2 uses
  %.not.i5.i.i.i.i = icmp eq i8 %i.mh, -1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.mj = load i8, ptr %i.mi, align 8, !range !209, !alias.scope !19204, !noalias !19195, !noundef !84 ; 2 uses
  br i1 %.not.i5.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mk = icmp eq i8 %i.mh, %i.mj
  br i1 %i.mk, label %bb.cc, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.ml = icmp eq i8 %i.mj, -1
  br i1 %i.ml, label %bb.cc, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jm, i64 89
  %i.mn = load i8, ptr %i.mm, align 1, !range !123, !alias.scope !19203, !noalias !19195, !noundef !84
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jp, i64 89
  %i.mp = load i8, ptr %i.mo, align 1, !range !123, !alias.scope !19204, !noalias !19195, !noundef !84
  %i.mq = icmp eq i8 %i.mn, %i.mp
  br i1 %i.mq, label %bb.cd, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jm, i64 48 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !range !138, !alias.scope !19203, !noalias !19195, !noundef !84
  %.not5.i6.i.i.i.i = icmp eq i64 %i.ms, -2
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jp, i64 48 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !range !138, !alias.scope !19204, !noalias !19195, !noundef !84
  %i.mv = icmp eq i64 %i.mu, -2                   ; 2 uses
  br i1 %.not5.i6.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.mv, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %.split7.i7.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.mv, label %bb.cg, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split7.i7.i.i.i.i:                               ; preds = %bb.ce
  %i.mw = call fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mt), !noalias !19195
  br i1 %i.mw, label %bb.cg, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cg:                                            ; preds = %.split7.i7.i.i.i.i, %bb.cf
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  %i.my = load i32, ptr %i.mx, align 8, !range !208, !alias.scope !19203, !noalias !19195, !noundef !84
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jm, i64 84
  %i.na = trunc nuw i32 %i.my to i1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.nc = load i32, ptr %i.nb, align 8, !range !208, !alias.scope !19204, !noalias !19195, !noundef !84
  %3 = trunc nuw i32 %i.nc to i1                  ; 2 uses
  br i1 %i.na, label %bb.ch, label %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  br i1 %3, label %.split11.i.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split11.i.i.i.i:                                 ; preds = %bb.ch
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jp, i64 84
  %i.ne = load i32, ptr %i.mz, align 4, !alias.scope !19203, !noalias !19195, !noundef !84
  %i.nf = load i32, ptr %i.nd, align 4, !alias.scope !19204, !noalias !19195, !noundef !84
  %i.ng = icmp eq i32 %i.ne, %i.nf
  br i1 %i.ng, label %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i: ; preds = %bb.cg
  br i1 %3, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i

bb.ci:                                            ; preds = %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jm, i64 104
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !19193, !noalias !19195, !noundef !84 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.jp, i64 104
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.nl = icmp eq i64 %i.ni, %i.nk
  br i1 %i.nl, label %.split.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i.i:                                     ; preds = %bb.ci
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !19194, !noalias !19195, !nonnull !84, !noundef !84
  %i.no = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !19193, !noalias !19195, !nonnull !84, !noundef !84
  %i.nq = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types4TypeEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %i.np, ptr noundef nonnull %i.nn, i64 noundef %i.ni)
          to label %.noexc170.i.i unwind label %bb.cp, !noalias !19183

.noexc170.i.i:                                    ; preds = %.split.i.i.i
  br i1 %i.nq, label %bb.cj, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i, %.split11.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.jm, i64 108
  %i.ns = load i8, ptr %i.nr, align 4, !range !128, !alias.scope !19193, !noalias !19195, !noundef !84
  %i.nt = getelementptr inbounds nuw i8, ptr %i.jp, i64 108
  %i.nu = load i8, ptr %i.nt, align 4, !range !128, !alias.scope !19194, !noalias !19195, !noundef !84
  %i.nv = icmp eq i8 %i.ns, %i.nu
  br i1 %i.nv, label %bb.cj, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cj:                                            ; preds = %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.noexc170.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !19191, !noalias !19183, !noundef !84 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !19192, !noalias !19183, !noundef !84
  %i.oa = icmp eq i64 %i.nx, %i.nz
  br i1 %i.oa, label %bb.ck, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.ob = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !alias.scope !19192, !noalias !19183, !nonnull !84, !noundef !84
  %i.od = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !19191, !noalias !19183, !nonnull !84, !noundef !84
  %i.of = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCscdodAO9FK5_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %i.oe, ptr noundef nonnull %i.oc, i64 noundef %i.nx)
          to label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i unwind label %bb.cp, !noalias !19183

bb.cl:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !19206
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i.i unwind label %.loopexit, !noalias !19183

.noexc172.i.i:                                    ; preds = %bb.cl
  %i.og = load i64, ptr %i.t, align 8, !range !91, !noalias !19206, !noundef !84
  %i.oh = trunc nuw i64 %i.og to i1
  %i.oi = load i64, ptr %i.gm, align 8, !range !143, !noalias !19206, !noundef !84 ; 3 uses
  br i1 %i.oh, label %bb.cm, label %bb.cn, !prof !85

bb.cm:                                            ; preds = %.noexc172.i.i
  %i.oj = load i64, ptr %i.gn, align 8, !noalias !19206
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cm, %bb.ba
  %i.ok = phi i64 [ %i.oi, %bb.cm ], [ %i.ik, %bb.ba ]
  %i.ol = phi i64 [ %i.oj, %bb.cm ], [ %i.il, %bb.ba ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ok, i64 %i.ol) #29
          to label %.cont.i.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.thread, !noalias !19183

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cn:                                            ; preds = %.noexc172.i.i
  %i.om = load ptr, ptr %i.gn, align 8, !noalias !19206, !nonnull !84, !noundef !84 ; 2 uses
  %i.on = icmp samesign ugt i64 %i.oi, 44
  call void @llvm.assume(i1 %i.on)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !19206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.om, ptr noundef nonnull align 1 dereferenceable(45) @57, i64 45, i1 false), !noalias !19207
  %i.oo = inttoptr i64 %i.oi to ptr
  store i64 0, ptr %i.bp, align 8, !alias.scope !19185
  store ptr %i.oo, ptr %.sroa.4291.0..sroa_idx.i.i, align 8, !alias.scope !19185
  store ptr %i.om, ptr %.sroa.5292.0..sroa_idx.i.i, align 8, !alias.scope !19185
  store i64 45, ptr %.sroa.6293.0..sroa_idx.i.i, align 8, !alias.scope !19185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !19186
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.aw)
          to label %bb.fe unwind label %bb.fg, !noalias !19185

.body191.i.i:                                     ; preds = %bb.ev, %bb.eu, %bb.et, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsgsNUVCRJO2f_13influxdb3_lib.exit178.i.i, %bb.cp
  %.sroa.089.2.i.i = phi i8 [ %.sroa.089.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsgsNUVCRJO2f_13influxdb3_lib.exit178.i.i ], [ %.sroa.089.3.i.i, %bb.cp ], [ 1, %bb.ev ], [ 1, %bb.eu ], [ 1, %bb.et ]
  %.sroa.081.2.i.i = phi i8 [ %.sroa.081.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsgsNUVCRJO2f_13influxdb3_lib.exit178.i.i ], [ 0, %bb.cp ], [ 0, %bb.ev ], [ 0, %bb.eu ], [ 0, %bb.et ]
  %.pn151.i.i = phi { ptr, i32 } [ %.pn149.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsgsNUVCRJO2f_13influxdb3_lib.exit178.i.i ], [ %i.op, %bb.cp ], [ %i.rl, %bb.ev ], [ %i.rl, %bb.eu ], [ %i.rl, %bb.et ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(416) %i.au) #32
          to label %bb.eh unwind label %bb.ea, !noalias !19183

bb.cp:                                            ; preds = %bb.ex, %bb.ef, %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.cq, %bb.ck, %.split.i.i.i
  %.sroa.089.3.i.i = phi i8 [ 1, %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 1, %bb.ex ], [ 0, %bb.ef ], [ 1, %.split.i.i.i ], [ 1, %bb.cq ], [ 1, %bb.ck ]
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body191.i.i

_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.ck
  br i1 %i.of, label %bb.cq, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cq:                                            ; preds = %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i
  %i.oq = load i64, ptr %i.gq, align 8, !range !91, !noalias !19186, !noundef !84 ; 3 uses
  %i.or = load i64, ptr %i.gr, align 8, !noalias !19186
  %i.os = load i64, ptr %i.gs, align 8, !noalias !19186, !noundef !84 ; 2 uses
  %i.ot = trunc nuw i64 %i.oq to i1
  %..i.i = select i1 %i.ot, i64 %i.or, i64 %i.os  ; 3 uses
  %i.ou = load i64, ptr %i.gt, align 8, !noalias !19186, !noundef !84 ; 3 uses
  %i.ov = load ptr, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !19181, !nonnull !84, !align !90, !noundef !84
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ox = load i64, ptr %i.ow, align 8, !noalias !19183, !noundef !84 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !19186
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !19186
  invoke void @_RNvXs3_NtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writerNtB5_20ArrowColumnChunkDataNtNtNtB9_4file6reader11ChunkReader8get_read(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gi, i64 noundef %..i.i)
          to label %bb.cr unwind label %bb.cp, !noalias !19183

_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.cj, %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.noexc170.i.i, %bb.ci, %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i, %.split11.i.i.i.i, %bb.ch, %.split7.i7.i.i.i.i, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i, %bb.bt, %.split7.i.i.i.i.i, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !19186
  %i.oy = load ptr, ptr %i.go, align 8, !noalias !19186, !nonnull !84, !noundef !84
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store ptr %i.oz, ptr %i.as, align 8, !noalias !19186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !19186
  store ptr %i.av, ptr %i.ar, align 8, !noalias !19186
  store ptr @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4104.0..sroa_idx.i.i, align 8, !noalias !19186
  store ptr %i.as, ptr %i.gp, align 8, !noalias !19186
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.4108.0..sroa_idx.i.i, align 8, !noalias !19186
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull @20, ptr noundef nonnull %i.ar)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.cp, !noalias !19183

bb.cr:                                            ; preds = %bb.cq
  %i.pa = load i64, ptr %i.ap, align 8, !range !93, !noalias !19186, !noundef !84 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !noalias !19186
  br i1 %i.pb, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !19186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, i64 32, i1 false), !noalias !19208
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_2io4util4TakeNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3210.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5113.0..sroa_idx.i.i, i64 32, i1 false), !noalias !19186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !19186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, i64 32, i1 false), !noalias !19186
  call void @llvm.experimental.noalias.scope.decl(metadata !19209)
  store i64 %i.pa, ptr %i.aq, align 8, !alias.scope !19210, !noalias !19186
  store i64 %i.ou, ptr %i.gv, align 8, !alias.scope !19211, !noalias !19186
  store i64 %i.ou, ptr %i.gw, align 8, !alias.scope !19211, !noalias !19186
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.i)
  %i.pc = invoke { i64, ptr } @_RINvNtNtCs2AWtUsOyxgP_3std2io4copy4copyINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtB1k_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx)
          to label %bb.cu unwind label %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp, !noalias !19183 ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsgsNUVCRJO2f_13influxdb3_lib.exit178.i.i: ; preds = %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp, %bb.eo, %bb.en, %bb.em, %.body.thread.i.i, %bb.ed, %bb.dz
  %.sroa.089.4.i.i = phi i8 [ 1, %bb.en ], [ 1, %bb.eo ], [ %.sroa.081.6.i.i, %bb.ed ], [ 1, %bb.em ], [ 1, %.body.thread.i.i ], [ 1, %bb.dz ], [ 1, %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.081.4.i.i = phi i8 [ 0, %bb.en ], [ 0, %bb.eo ], [ %.sroa.081.6.i.i, %bb.ed ], [ 0, %bb.em ], [ 0, %.body.thread.i.i ], [ 0, %bb.dz ], [ 0, %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp ]
  %.pn149.i.i = phi { ptr, i32 } [ %i.rd, %bb.en ], [ %i.re, %bb.eo ], [ %i.qu, %bb.ed ], [ %i.rc, %bb.em ], [ %eh.lpad-body329.i.i, %.body.thread.i.i ], [ %i.qi, %bb.dz ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_2io4util4TakeNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.aq) #32
          to label %.body191.i.i unwind label %bb.ea, !noalias !19183

bb.cu:                                            ; preds = %bb.ct
  %i.pd = extractvalue { i64, ptr } %i.pc, 0
  %i.pe = extractvalue { i64, ptr } %i.pc, 1      ; 2 uses
  %i.pf = trunc nuw i64 %i.pd to i1
  br i1 %i.pf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !19186
  invoke void @_RNvXs1_NtCs7Ez7UXBn1VF_7parquet6errorsNtB5_12ParquetErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noundef nonnull %i.pe)
          to label %bb.fa unwind label %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp, !noalias !19183

bb.cw:                                            ; preds = %bb.cu
  %i.pg = ptrtoint ptr %i.pe to i64
  %.not141.i.i = icmp eq i64 %i.ou, %i.pg
  br i1 %.not141.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ph = load ptr, ptr %i.go, align 8, !noalias !19186, !nonnull !84, !noundef !84
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8, !noalias !19183
  %i.pj = icmp slt i64 %i.pi, 0
  br i1 %i.pj, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !19186
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef 71, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ep unwind label %.loopexit.split-lp220.loopexit.split-lp.loopexit.split-lp, !noalias !19183

bb.cz:                                            ; preds = %bb.cx
  %i.pk = load ptr, ptr %i.go, align 8, !noalias !19186, !nonnull !84, !noundef !84 ; 2 uses
  %i.pl = load i32, ptr %i.gz, align 8, !range !19212, !noalias !19186, !noundef !84 ; 2 uses
  %i.pm = load i32, ptr %i.ha, align 4, !noalias !19186 ; 2 uses
  %i.pn = load i32, ptr %i.hb, align 8, !noalias !19186, !noundef !84 ; 2 uses
  %i.po = load i64, ptr %i.gt, align 8, !noalias !19186, !noundef !84 ; 2 uses
  %i.pp = load i64, ptr %i.hc, align 8, !noalias !19186, !noundef !84 ; 2 uses
  %i.pq = load i64, ptr %i.hd, align 8, !noalias !19186, !noundef !84 ; 2 uses
  %i.pr = sub i64 %i.os, %..i.i
  %i.ps = add i64 %i.ox, %i.pr                    ; 2 uses
  %i.pt = load i64, ptr %i.he, align 8, !range !91, !noalias !19186, !noundef !84 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches9RawValuesNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2c_
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches9RawValuesNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = tail call { ptr, i64 } @_RNvXsd_NtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matchesNtB5_9RawValuesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21518
  call void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.e), !noalias !21519
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !21518, !nonnull !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !21518 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21518
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.c, !noalias !21519

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.b, align 8, !range !94, !alias.scope !21520, !noalias !21518, !noundef !84
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.l, !noalias !21519

bb.e:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !range !91, !noalias !21518, !noundef !84
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !143, !noalias !21518, !noundef !84 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g, !prof !85

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.q, align 8, !noalias !21518
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #29
          to label %bb.k unwind label %bb.c, !noalias !21519

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.q, align 8, !noalias !21518, !nonnull !84, !noundef !84 ; 2 uses
  %i.t = icmp ule i64 %i.i, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21518
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.u = load i64, ptr %i.b, align 8, !range !94, !alias.scope !21521, !noalias !21518, !noundef !84
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0B3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !21519
  br label %_RNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0B3_.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.g, i64 %i.i, i1 false), !noalias !21519
  br label %bb.h

bb.k:                                             ; preds = %bb.f
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21519
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0B3_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21518
  store i64 %i.p, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvCsgsNUVCRJO2f_13influxdb3_lib19extract_user_paramss1_0B3_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapReINtNtBb_6borrow3CoweEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !84
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !noundef !84  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !85

bb.d:                                             ; preds = %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !84
  tail call fastcc void @_RINvNvXs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB8_8BTreeMappppENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone13clone_subtreeReINtNtBe_6borrow3CoweENtNtBe_5alloc6GlobalECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.e, i64 noundef %i.g)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !140, !noundef !84 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775792
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808       ; 2 uses
  %i.d = icmp ult i64 %i.c, 18
  %i.e = select i1 %i.d, i64 %i.c, i64 16         ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !140, !noundef !84 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775792
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808       ; 2 uses
  %i.i = icmp ult i64 %i.h, 18
  %i.j = select i1 %i.i, i64 %i.h, i64 16
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.i, %.split, %bb.aa, %bb.y, %bb.z, %bb.ab, %bb.w, %bb.u, %bb.v, %bb.s, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.t, %bb.q, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.bb, %bb.l ], [ true, %bb.c ], [ %i.bg, %bb.m ], [ false, %bb.d ], [ %i.bl, %bb.n ], [ false, %bb.e ], [ %i.bq, %bb.o ], [ false, %bb.f ], [ %i.bu, %bb.r ], [ false, %bb.g ], [ %3, %bb.q ], [ %i.ce, %bb.t ], [ %.mux, %bb.i ], [ false, %bb.p ], [ false, %.split ], [ false, %bb.s ], [ %i.aw, %bb.k ], [ %i.da, %bb.ab ], [ true, %bb.aa ], [ false, %bb.y ], [ false, %bb.v ], [ %i.cw, %bb.z ], [ false, %bb.w ], [ false, %bb.u ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.b [
    i64 4, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.f
    i64 8, label %bb.g
    i64 14, label %bb.h
    i64 15, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !84
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !84
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !83, !noundef !84
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !83, !noundef !84
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.m, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !83, !noundef !84
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !83, !noundef !84
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.n, label %bb.b

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !84
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !84
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !83, !noundef !84
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !83, !noundef !84
  %2 = trunc nuw i8 %i.ak to i1                   ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !94, !noundef !84 ; 2 uses
  %.not10 = icmp eq i64 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !94, !noundef !84 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %brmerge = or i1 %.not10, %i.ap
  %i.aq = and i64 %i.am, %i.ao
  %.mux = icmp eq i64 %i.aq, -1
  br i1 %brmerge, label %bb.b, label %bb.s

bb.j:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.a, -1
  %i.ar = icmp eq i64 %i.f, -1                    ; 2 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i16, ptr %i.as, align 8, !noundef !84
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i16, ptr %i.au, align 8, !noundef !84
  %i.aw = icmp eq i16 %i.at, %i.av
  br label %bb.b

bb.l:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !84
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !noundef !84
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !range !122, !noundef !84
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !range !122, !noundef !84
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br label %bb.b

bb.n:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !range !122, !noundef !84
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !range !122, !noundef !84
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br label %bb.b

bb.o:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !range !83, !noundef !84
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !range !83, !noundef !84
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br label %bb.b

bb.p:                                             ; preds = %bb.h
  br i1 %2, label %bb.r, label %bb.b

bb.q:                                             ; preds = %bb.h
  %3 = xor i1 %2, true
  br label %bb.b

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bs = load i8, ptr %i.ai, align 1, !noundef !84
  %i.bt = load i8, ptr %i.br, align 1, !noundef !84
  %i.bu = icmp eq i8 %i.bs, %i.bt
  br label %bb.b

bb.s:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !84 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !84
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.t, label %bb.b

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !84, !noundef !84
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !84, !noundef !84
  %bcmp12 = tail call i32 @bcmp(ptr nonnull %i.cd, ptr nonnull %i.cb, i64 %i.bw)
  %i.ce = icmp eq i32 %bcmp12, 0
  br label %bb.b

bb.u:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.b, label %bb.w

bb.v:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.x, label %bb.b

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !84 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !84
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %.split, label %bb.b

.split:                                           ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !84, !noundef !84
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !84, !noundef !84
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cn, ptr nonnull %i.cl, i64 %i.cg)
  %i.co = icmp eq i32 %bcmp, 0
  br i1 %i.co, label %bb.x, label %bb.b

bb.x:                                             ; preds = %.split, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !range !21522, !noundef !84 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not8 = icmp eq i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !range !21522, !noundef !84 ; 2 uses
  br i1 %.not8, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cv = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cv, label %bb.aa, label %bb.b

bb.z:                                             ; preds = %bb.x
  %i.cw = icmp eq i32 %i.ct, -1
  br label %bb.b

bb.aa:                                            ; preds = %bb.y
  %i.cx = icmp eq i32 %i.cq, 5
  br i1 %i.cx, label %bb.ab, label %bb.b

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %i.cr, align 4, !noundef !84
  %i.cz = load i32, ptr %i.cu, align 4, !noundef !84
  %i.da = icmp eq i32 %i.cy, %i.cz
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !84, !noundef !84 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !84 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !84, !align !90, !noundef !84
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21531
  store ptr %1, ptr %i.c, align 8, !noalias !21533
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !21533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21533
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !21533
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !91, !noalias !21533, !noundef !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !21533 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21533
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !21534, !noundef !84 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !97, !alias.scope !21534, !noundef !84
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3h_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 72)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !21533
  br label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3h_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29, !noalias !21533
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3h_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !21533, !nonnull !84, !noundef !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21535
  store ptr %i.j, ptr %i.a, align 8, !noalias !21533
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21533
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !21533
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtCs92BnbMq7p8c_15influxdb3_write14DatabaseTablesEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4E_3VecB1s_E14extend_trustedBP_E0E0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !21536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21531
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdIBK_NtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21545
  store ptr %1, ptr %i.c, align 8, !noalias !21547
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !21547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21547
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc3vec3VecNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !21547
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !91, !noalias !21547, !noundef !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !21547 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21547
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !21548, !noundef !84 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !97, !alias.scope !21548, !noundef !84
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdIBJ_NtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3m_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 40)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !21547
  br label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdIBJ_NtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3m_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29, !noalias !21547
  unreachable

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdIBJ_NtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB3m_5slice4iter4IterBS_EEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !21547, !nonnull !84, !noundef !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21549
  store ptr %i.j, ptr %i.a, align 8, !noalias !21547
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
