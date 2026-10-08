Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9161
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB7_13V1HttpHandler26handle_parameterized_query0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
    i8 0, label %bb.ex
    i8 1, label %bb.gf
    i8 2, label %bb.gg
    i8 3, label %bb.gi
    i8 4, label %bb.iz
    i8 5, label %bb.hg
  ]

bb.ex:                                            ; preds = %bb.ew, %.thread318.i.i
  %i.qq = phi ptr [ %i.fb, %.thread318.i.i ], [ %i.dk, %bb.ew ] ; 6 uses
  %i.qr = phi ptr [ %i.fc, %.thread318.i.i ], [ %i.dj, %bb.ew ] ; 6 uses
  %i.qs = phi ptr [ %i.fd, %.thread318.i.i ], [ %.phi.trans.insert.i, %bb.ew ] ; 6 uses
  %i.qt = phi ptr [ %i.fe, %.thread318.i.i ], [ %i.fa, %bb.ew ] ; 6 uses
  %i.qu = phi ptr [ %.sroa.7120.0..sroa_idx.i.i, %.thread318.i.i ], [ %.phi.trans.insert.i.i, %bb.ew ] ; 6 uses
  %i.qv = phi ptr [ %i.gp, %.thread318.i.i ], [ %i.qp, %bb.ew ] ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2092 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 2091 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 2089
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.qy, i8 0, i64 7, i1 false), !noalias !7823
  store i8 1, ptr %i.qw, align 4, !noalias !7823
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.qz, ptr noundef nonnull align 8 dereferenceable(240) %i.qv, i64 240, i1 false), !noalias !7823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !7823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) @141, i64 32, i1 false), !noalias !7823
  %i.ra = invoke noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.qz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi)
          to label %bb.ez unwind label %bb.ey, !noalias !7824 ; 3 uses

bb.ey:                                            ; preds = %bb.ex
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57.i.i

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !7823
  %.not.i69.i.i.i = icmp eq ptr %i.ra, null
  br i1 %.not.i69.i.i.i, label %.thread331.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rc = getelementptr i8, ptr %i.ra, i64 8
  %.val.i.i68.i.i = load ptr, ptr %i.rc, align 8, !noalias !7824, !nonnull !13, !noundef !13 ; 3 uses
  %i.rd = getelementptr i8, ptr %i.ra, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.rd, align 8, !noalias !7824, !noundef !13 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.val.i.i68.i.i, i64 %.val3.i.i.i.i
  %i.rf = icmp samesign eq i64 %.val3.i.i.i.i, 0
  br i1 %i.rf, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.re
  br i1 %i.rh, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fa, %bb.fb
  %.sroa.02.01.i.i.i.i.i.i = phi ptr [ %i.rg, %bb.fb ], [ %.val.i.i68.i.i, %bb.fa ] ; 2 uses
  %i.ri = load i8, ptr %.sroa.02.01.i.i.i.i.i.i, align 1, !noalias !7824, !noundef !13 ; 2 uses
  %i.rj = add i8 %i.ri, -32
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.rj, 95
  %i.rk = icmp eq i8 %i.ri, 9
  %or.cond1.i.i.i.i.i.i = or i1 %i.rk, %or.cond.i.i.i.i.i.i
  br i1 %or.cond1.i.i.i.i.i.i, label %bb.fb, label %.thread331.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.fb, %bb.fa
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7825)
  call void @llvm.experimental.noalias.scope.decl(metadata !7826)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.417.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !7827
  call void @llvm.experimental.noalias.scope.decl(metadata !7828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !7827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !7829
  invoke void @_RNvXsa_Cs9bTpyRJ5uZ7_4mimeNtB5_4MimeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i68.i.i, i64 noundef %.val3.i.i.i.i)
          to label %.noexc71.i.i.i unwind label %bb.fx, !noalias !7824

.noexc71.i.i.i:                                   ; preds = %.loopexit.i.i.i
  %i.rm = load i64, ptr %i.bd, align 8, !range !28, !noalias !7829, !noundef !13 ; 3 uses
  %i.rn = icmp eq i64 %i.rm, 2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  br i1 %i.rn, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i.i.i.i, label %bb.fc

_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i.i.i.i: ; preds = %.noexc71.i.i.i
  %.sroa.417.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.417.i.i.i.i.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.417.8..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ro, i64 16, i1 false), !noalias !7827
  %.sroa.438.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.438.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.417.i.i.i.i.i.i, i64 23, i1 false), !noalias !7827
  store i8 12, ptr %i.bh, align 8, !alias.scope !7828, !noalias !7830
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i.i.i.i

bb.fc:                                            ; preds = %.noexc71.i.i.i
  %.sroa.414.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ro, align 8, !noalias !7829
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !7829
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.515.0..sroa_idx.i.i.i.i.i.i, i64 32, i1 false), !noalias !7829
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i.i.i, i64 23, i1 false), !noalias !7829
  store i64 %i.rm, ptr %i.bg, align 8, !noalias !7829
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i8 %.sroa.414.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7829
  call void @llvm.experimental.noalias.scope.decl(metadata !7831)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.rq = load i8, ptr %i.rp, align 8, !range !20, !alias.scope !7831, !noalias !7832, !noundef !13
  %i.rr = trunc nuw i8 %i.rq to i1                ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.rs, align 8, !alias.scope !7831, !noalias !7832 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !7831, !noalias !7832, !nonnull !13
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.rr, ptr %.val.i.i.i.i.i.i.i, ptr %.val8.i.i.i.i.i.i.i ; 8 uses
  %.val9.i.i.i.i.i.i.i = load i64, ptr %i.rt, align 8, !alias.scope !7831, !noalias !7832
  %.val10.cast.i.i.i.i.i.i.i = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %.sroa.4.0.i.i.i.i.i.i.i = select i1 %i.rr, i64 %.val9.i.i.i.i.i.i.i, i64 %.val10.cast.i.i.i.i.i.i.i ; 7 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !7831, !noalias !7832, !noundef !13 ; 7 uses
  %i.rw = icmp eq i64 %i.rv, 0
  br i1 %i.rw, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.rv, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.fe, label %.split.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.fd
  %i.rx = icmp eq i64 %i.rv, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %i.rx, label %_RNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB5_4Mime5type_.exit.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.rv
  %i.rz = load i8, ptr %i.ry, align 1, !alias.scope !7833, !noalias !7834, !noundef !13
  %i.sa = icmp sgt i8 %i.rz, -65
  br i1 %i.sa, label %_RNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB5_4Mime5type_.exit.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i

bb.ff:                                            ; preds = %bb.fv, %bb.fu, %bb.fs, %.invoke.i.i.i.i.i.i
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs9bTpyRJ5uZ7_4mime4MimeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.bg) #34
          to label %.body.i57.i.i unwind label %bb.fw, !noalias !7835

_RNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB5_4Mime5type_.exit.i.i.i.i.i.i: ; preds = %bb.fe, %.split.i.i.i.i.i.i.i.i
  %i.sc = icmp eq i64 %i.rv, 9
  br i1 %i.sc, label %bb.fg, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i

bb.fg:                                            ; preds = %_RNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB5_4Mime5type_.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i.i) ]
  %i.sd = load i64, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 1
  %i.se = xor i64 %i.sd, 8241992391291860333
  %i.sf = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 8
  %i.sg = load i8, ptr %i.sf, align 1
  %i.sh = zext i8 %i.sg to i64
  %i.si = xor i64 %i.sh, 116
  %i.sj = or i64 %i.se, %i.si
  %i.sk = icmp ne i64 %i.sj, 0
  %i.sl = zext i1 %i.sk to i32
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.fh, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !7836)
  %i.sn = trunc nuw i64 %i.rm to i1
  br i1 %i.sn, label %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.so = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.sp = load i64, ptr %i.so, align 8, !range !49, !alias.scope !7836, !noalias !7837, !noundef !13 ; 3 uses
  %i.sq = icmp ne i64 %i.sp, -9223372036854775807
  call void @llvm.assume(i1 %i.sq)
  %i.sr = xor i64 %i.sp, -9223372036854775808
  %i.ss = icmp slt i64 %i.sp, 0
  %i.st = select i1 %i.ss, i64 %i.sr, i64 1
  switch i64 %i.st, label %bb.fj [
    i64 0, label %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i
    i64 1, label %bb.fk
    i64 2, label %bb.fl
  ]

bb.fj:                                            ; preds = %bb.fi
  unreachable

bb.fk:                                            ; preds = %bb.fi
  br label %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fi
  %.sroa.3.0.in.v.i.i.i.i.i.i.i.i = select i1 %i.rr, i64 72, i64 64
  br label %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i

_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk, %bb.fi, %bb.fh
  %.sink.i.sink.i.i.i.i.i.i.i = phi i64 [ 8, %bb.fh ], [ 40, %bb.fk ], [ %.sroa.3.0.in.v.i.i.i.i.i.i.i.i, %bb.fl ], [ 24, %bb.fi ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sink.i.sink.i.i.i.i.i.i.i
  %.sroa.0.0.i55.i.i.i.i.i.i = load i64, ptr %i.su, align 8, !alias.scope !7836, !noalias !7837 ; 10 uses
  %.not.i.i57.not.i.i.i.i.i.i = icmp ugt i64 %.sroa.0.0.i55.i.i.i.i.i.i, 9
  br i1 %.not.i.i57.not.i.i.i.i.i.i, label %bb.fm, label %.invoke.i.i.i.i.i.i

bb.fm:                                            ; preds = %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.4.0.i.i.i.i.i.i.i, 10
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.fn, label %.split.i.i58.i.i.i.i.i.i

.split.i.i58.i.i.i.i.i.i:                         ; preds = %bb.fm
  %i.sv = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i, 10
  br i1 %i.sv, label %bb.fo, label %.invoke.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 10
  %i.sx = load i8, ptr %i.sw, align 1, !alias.scope !7838, !noalias !7839, !noundef !13
  %i.sy = icmp sgt i8 %i.sx, -65
  br i1 %i.sy, label %bb.fo, label %.invoke.i.i.i.i.i.i

bb.fo:                                            ; preds = %bb.fn, %.split.i.i58.i.i.i.i.i.i
  %.not6.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i55.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.fp, label %.split7.i.i.i.i.i.i.i.i

.split7.i.i.i.i.i.i.i.i:                          ; preds = %bb.fo
  %i.sz = icmp eq i64 %.sroa.0.0.i55.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  br i1 %i.sz, label %bb.fq, label %.invoke.i.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.0.0.i55.i.i.i.i.i.i
  %i.tb = load i8, ptr %i.ta, align 1, !alias.scope !7838, !noalias !7839, !noundef !13
  %i.tc = icmp sgt i8 %i.tb, -65
  br i1 %i.tc, label %bb.fq, label %.invoke.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.fp, %.split7.i.i.i.i.i.i.i.i, %bb.fn, %.split.i.i58.i.i.i.i.i.i, %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i, %bb.fe, %.split.i.i.i.i.i.i.i.i
  %i.td = phi i64 [ 10, %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i ], [ 10, %bb.fp ], [ 10, %.split7.i.i.i.i.i.i.i.i ], [ 10, %bb.fn ], [ 10, %.split.i.i58.i.i.i.i.i.i ], [ 0, %bb.fe ], [ 0, %.split.i.i.i.i.i.i.i.i ]
  %i.te = phi i64 [ %.sroa.0.0.i55.i.i.i.i.i.i, %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0.i55.i.i.i.i.i.i, %bb.fp ], [ %.sroa.0.0.i55.i.i.i.i.i.i, %.split7.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i55.i.i.i.i.i.i, %bb.fn ], [ %.sroa.0.0.i55.i.i.i.i.i.i, %.split.i.i58.i.i.i.i.i.i ], [ %i.rv, %bb.fe ], [ %i.rv, %.split.i.i.i.i.i.i.i.i ]
  %i.tf = phi ptr [ @411, %_RNCNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB7_4Mime7subtype0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i ], [ @411, %bb.fp ], [ @411, %.split7.i.i.i.i.i.i.i.i ], [ @411, %bb.fn ], [ @411, %.split.i.i58.i.i.i.i.i.i ], [ @410, %bb.fe ], [ @410, %.split.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i.i.i.i, i64 noundef %i.td, i64 noundef %i.te, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tf) #36
          to label %.cont.i.i.i.i.i.i unwind label %bb.ff, !noalias !7835

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.fq:                                            ; preds = %bb.fp, %.split7.i.i.i.i.i.i.i.i
  %i.tg = icmp eq i64 %.sroa.0.0.i55.i.i.i.i.i.i, 19
  br i1 %i.tg, label %bb.fr, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 10 ; 2 uses
  %i.ti = load i64, ptr %i.th, align 1
  %i.tj = xor i64 %i.ti, 8386094127413096294
  %i.tk = getelementptr i8, ptr %i.th, i64 8
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i64
  %i.tn = xor i64 %i.tm, 97
  %i.to = or i64 %i.tj, %i.tn
  %i.tp = icmp ne i64 %i.to, 0
  %i.tq = zext i1 %i.tp to i32
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.fs, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !7829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !7829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) @1, i64 24, i1 false), !noalias !7829
  invoke void @_RINvMs2_Cs9bTpyRJ5uZ7_4mimeNtB6_4Mime9get_paramNtB6_4NameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.ft unwind label %bb.ff, !noalias !7835

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !7829
  %i.ts = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.tt = load i8, ptr %i.ts, align 8, !range !17, !noalias !7829, !noundef !13
  %.not.i.i.i.i70.i.i = icmp eq i8 %i.tt, 2
  br i1 %.not.i.i.i.i70.i.i, label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.sroa.070.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !noalias !7829, !nonnull !13, !noundef !13
  %.sroa.471.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.471.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.471.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !7829
  invoke fastcc void @_RNCINvCsgwXesxSsAwT_6multer14parse_boundaryReE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bc, ptr nonnull %.sroa.070.0.copyload.i.i.i.i.i.i, i64 %.sroa.471.0.copyload.i.i.i.i.i.i)
          to label %bb.fv unwind label %bb.ff, !noalias !7835

bb.fv:                                            ; preds = %bb.fu
  %i.tu = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tu, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !7830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !7829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !7829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !7829
  store i8 13, ptr %i.be, align 8, !noalias !7829
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgwXesxSsAwT_6multer5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.be)
          to label %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread11.i.i.i.i.i unwind label %bb.ff, !noalias !7835

_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread11.i.i.i.i.i: ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !7829
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs9bTpyRJ5uZ7_4mime4MimeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.bg)
          to label %.noexc72.i.i.i unwind label %bb.fx, !noalias !7824

.noexc72.i.i.i:                                   ; preds = %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread11.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !7829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !7827
  br label %.thread.i.i.i.i.i

_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i: ; preds = %bb.fr, %bb.fq, %bb.fg, %_RNvMs2_Cs9bTpyRJ5uZ7_4mimeNtB5_4Mime5type_.exit.i.i.i.i.i.i, %bb.fc
  store i8 11, ptr %i.bh, align 8, !alias.scope !7828, !noalias !7830
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs9bTpyRJ5uZ7_4mime4MimeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i.i.i.i unwind label %bb.fx, !noalias !7824

bb.fw:                                            ; preds = %bb.ff
  %i.tv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !7835
  unreachable

_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i: ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !7829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !7829
  store i8 13, ptr %i.be, align 8, !noalias !7829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !7830
  %.pr.pre.pre.i.i.i.i.i = load i8, ptr %i.bh, align 8, !noalias !7827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !7829
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs9bTpyRJ5uZ7_4mime4MimeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %i.bg)
          to label %.noexc74.i.i.i unwind label %bb.fx, !noalias !7824

.noexc74.i.i.i:                                   ; preds = %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i
  %i.tw = icmp eq i8 %.pr.pre.pre.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !7829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !7827
  br i1 %i.tw, label %.thread.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.noexc74.i.i.i, %.noexc72.i.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(24) %i.tx, i64 24, i1 false), !noalias !7840
  br label %bb.fy

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i.i.i.i: ; preds = %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i, %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !7829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !7827
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.sink.split.i.i.i.i.i, %.noexc74.i.i.i
  store i64 -1, ptr %i.rl, align 16, !alias.scope !7841, !noalias !7840
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgwXesxSsAwT_6multer5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bh)
          to label %bb.fy unwind label %bb.fx, !noalias !7824

.thread331.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ez
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 1888
  store i64 -1, ptr %i.ty, align 16, !alias.scope !7825, !noalias !7842
  store i8 1, ptr %i.qx, align 1, !noalias !7823
  br label %bb.fz

bb.fx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread9.i.i.i.i.i, %_RINvCsgwXesxSsAwT_6multer14parse_boundaryReECsgsNUVCRJO2f_13influxdb3_lib.exit.thread11.i.i.i.i.i, %.loopexit.i.i.i
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57.i.i

bb.fy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsgwXesxSsAwT_6multer5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7827
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i.i.i.i.i)
  %.val68.pr.i.i.i = load i64, ptr %i.rl, align 16, !noalias !7823
  store i8 1, ptr %i.qx, align 1, !noalias !7823
  %.not.i76.i.i.i = icmp eq i64 %.val68.pr.i.i.i, -1
  br i1 %.not.i76.i.i.i, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy, %.thread331.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !7843
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, i64 noundef range(i64 0, -9223372036854775808) 50, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc77.i.i.i unwind label %bb.gc, !noalias !7824

.noexc77.i.i.i:                                   ; preds = %bb.fz
  %i.ua = load i64, ptr %i.ba, align 8, !range !14, !noalias !7843, !noundef !13
  %i.ub = trunc nuw i64 %i.ua to i1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ud = load i64, ptr %i.uc, align 8, !range !15, !noalias !7843, !noundef !13 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  br i1 %i.ub, label %bb.ga, label %bb.gd, !prof !16

bb.ga:                                            ; preds = %.noexc77.i.i.i
  %i.uf = load i64, ptr %i.ue, align 8, !noalias !7843
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ud, i64 %i.uf) #36
          to label %.noexc78.i.i.i unwind label %bb.gc, !noalias !7824

.noexc78.i.i.i:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.fy
  store i8 0, ptr %i.qw, align 4, !noalias !7823
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 2096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.ug, ptr noundef nonnull align 16 dereferenceable(240) %i.qz, i64 240, i1 false), !noalias !7823
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2840
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !7823
  br label %bb.gi

bb.gc:                                            ; preds = %bb.ga, %bb.fz
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i.i.i

bb.gd:                                            ; preds = %.noexc77.i.i.i
  %i.ui = load ptr, ptr %i.ue, align 8, !noalias !7843, !nonnull !13, !noundef !13 ; 2 uses
  %i.uj = icmp ugt i64 %i.ud, 49
  call void @llvm.assume(i1 %i.uj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !7843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.ui, ptr noundef nonnull readonly align 1 dereferenceable(50) @328, i64 range(i64 0, -9223372036854775808) 50, i1 false), !noalias !7844
  %i.uk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 2, ptr %i.uk, align 8, !noalias !7823
  %.sroa.5.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.ud, ptr %.sroa.5.0..sroa_idx.i69.i.i, align 8, !noalias !7823
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ui, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7823
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i64 50, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7823
  store i64 2, ptr %i.bj, align 8, !noalias !7823
  br label %bb.ge

bb.ge:                                            ; preds = %bb.lg, %bb.he, %bb.gd
  %i.ul = phi ptr [ %i.agx, %bb.lg ], [ %i.vo, %bb.he ], [ %i.qq, %bb.gd ] ; 4 uses
  %i.um = phi ptr [ %i.agy, %bb.lg ], [ %i.vp, %bb.he ], [ %i.qr, %bb.gd ] ; 4 uses
  %i.un = phi ptr [ %i.agz, %bb.lg ], [ %i.vq, %bb.he ], [ %i.qs, %bb.gd ] ; 4 uses
  %i.uo = phi ptr [ %i.aha, %bb.lg ], [ %i.vr, %bb.he ], [ %i.qt, %bb.gd ] ; 4 uses
  %i.up = phi ptr [ %i.ahb, %bb.lg ], [ %i.vs, %bb.he ], [ %i.qu, %bb.gd ] ; 4 uses
  %i.uq = phi ptr [ %i.ahc, %bb.lg ], [ %i.vt, %bb.he ], [ %i.qv, %bb.gd ] ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 2091 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !range !20, !noalias !7823, !noundef !13
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %bb.lh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib.exit168.i.i.i

.body80.i.i.i:                                    ; preds = %bb.le, %bb.gu, %bb.gq, %bb.gh, %bb.gc
  %i.uu = phi ptr [ %i.qq, %bb.gc ], [ %i.aiu, %bb.le ], [ %i.vo, %bb.gu ], [ %i.vo, %bb.gq ], [ %i.vo, %bb.gh ] ; 2 uses
  %i.uv = phi ptr [ %i.qr, %bb.gc ], [ %i.aiv, %bb.le ], [ %i.vp, %bb.gu ], [ %i.vp, %bb.gq ], [ %i.vp, %bb.gh ] ; 2 uses
  %i.uw = phi ptr [ %i.qs, %bb.gc ], [ %i.aiw, %bb.le ], [ %i.vq, %bb.gu ], [ %i.vq, %bb.gq ], [ %i.vq, %bb.gh ] ; 2 uses
  %i.ux = phi ptr [ %i.qt, %bb.gc ], [ %i.aix, %bb.le ], [ %i.vr, %bb.gu ], [ %i.vr, %bb.gq ], [ %i.vr, %bb.gh ] ; 2 uses
  %i.uy = phi ptr [ %i.qu, %bb.gc ], [ %i.aiy, %bb.le ], [ %i.vs, %bb.gu ], [ %i.vs, %bb.gq ], [ %i.vs, %bb.gh ] ; 2 uses
  %i.uz = phi ptr [ %i.qv, %bb.gc ], [ %i.aiz, %bb.le ], [ %i.vt, %bb.gu ], [ %i.vt, %bb.gq ], [ %i.vt, %bb.gh ] ; 2 uses
  %.pn61.i.i.i = phi { ptr, i32 } [ %i.uh, %bb.gc ], [ %.pn57.i.i.i, %bb.le ], [ %i.wj, %bb.gu ], [ %.pn.i.i63.i.i, %bb.gq ], [ %i.vn, %bb.gh ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 2091
  %i.vb = load i8, ptr %i.va, align 1, !range !20, !noalias !7823, !noundef !13
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %bb.lv, label %.body.i57.i.i

.body.i57.i.i:                                    ; preds = %bb.lv, %bb.ll, %bb.lj, %.body80.i.i.i, %bb.fx, %bb.ff, %bb.ey
  %i.vd = phi ptr [ %i.qq, %bb.ff ], [ %i.uu, %bb.lv ], [ %i.uu, %.body80.i.i.i ], [ %i.ul, %bb.lj ], [ %i.ul, %bb.ll ], [ %i.qq, %bb.ey ], [ %i.qq, %bb.fx ] ; 2 uses
  %i.ve = phi ptr [ %i.qr, %bb.ff ], [ %i.uv, %bb.lv ], [ %i.uv, %.body80.i.i.i ], [ %i.um, %bb.lj ], [ %i.um, %bb.ll ], [ %i.qr, %bb.ey ], [ %i.qr, %bb.fx ] ; 2 uses
  %i.vf = phi ptr [ %i.qs, %bb.ff ], [ %i.uw, %bb.lv ], [ %i.uw, %.body80.i.i.i ], [ %i.un, %bb.lj ], [ %i.un, %bb.ll ], [ %i.qs, %bb.ey ], [ %i.qs, %bb.fx ] ; 2 uses
  %i.vg = phi ptr [ %i.qt, %bb.ff ], [ %i.ux, %bb.lv ], [ %i.ux, %.body80.i.i.i ], [ %i.uo, %bb.lj ], [ %i.uo, %bb.ll ], [ %i.qt, %bb.ey ], [ %i.qt, %bb.fx ] ; 2 uses
  %i.vh = phi ptr [ %i.qu, %bb.ff ], [ %i.uy, %bb.lv ], [ %i.uy, %.body80.i.i.i ], [ %i.up, %bb.lj ], [ %i.up, %bb.ll ], [ %i.qu, %bb.ey ], [ %i.qu, %bb.fx ] ; 2 uses
  %i.vi = phi ptr [ %i.qv, %bb.ff ], [ %i.uz, %bb.lv ], [ %i.uz, %.body80.i.i.i ], [ %i.uq, %bb.lj ], [ %i.uq, %bb.ll ], [ %i.qv, %bb.ey ], [ %i.qv, %bb.fx ] ; 2 uses
  %.pn63.i.i.i = phi { ptr, i32 } [ %i.sb, %bb.ff ], [ %.pn61.i.i.i, %bb.lv ], [ %.pn61.i.i.i, %.body80.i.i.i ], [ %i.ajj, %bb.lj ], [ %i.ajl, %bb.ll ], [ %i.rb, %bb.ey ], [ %i.tz, %bb.fx ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 2091
end_hunk_0
begin_hunk_1_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.val66.i965 = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i957, align 16, !noalias !12873, !nonnull !13, !noundef !13 ; 2 uses
  %.val67.i966 = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i959, align 8, !noalias !12873, !noundef !13 ; 2 uses
  store i8 0, ptr %i.fbt, align 1, !noalias !12873
  %.sroa.0200.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0200.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0200.64..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.agx, i64 48, i1 false), !noalias !12873
  %i.fdr = getelementptr inbounds nuw i8, ptr %1, i64 1234
  store i8 0, ptr %i.fdr, align 2, !noalias !12873
  %i.fds = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %.sroa.11213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.11213.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %i.fds, i64 80, i1 false), !noalias !12873
  %i.fdt = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.fdt, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0200.i, i64 128, i1 false), !noalias !12873
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0200.i)
  %.sroa.9211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %.val66.i965, ptr %.sroa.9211.0..sroa_idx.i, align 16, !noalias !12873
  %.sroa.10212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1384
  store i64 %.val67.i966, ptr %.sroa.10212.0..sroa_idx.i, align 8, !noalias !12873
  %.sroa.13215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.fdq, ptr %.sroa.13215.0..sroa_idx.i, align 16, !noalias !12873
  %.sroa.16218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1606 ; 2 uses
  store i8 0, ptr %.sroa.16218.0..sroa_idx.i, align 2, !noalias !12873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afs), !noalias !12873
  br label %bb.aqb

bb.apt:                                           ; preds = %bb.axa, %bb.awy, %bb.aww, %bb.awu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i870, %bb.awt, %bb.awr, %bb.avw, %bb.avr, %.body94.i893, %.body.i913
  %i.fdu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !12874
  unreachable

bb.apu:                                           ; preds = %bb.avc, %.body94.i893
  %i.fdv = phi ptr [ %i.fer, %.body94.i893 ], [ %i.ftd, %bb.avc ]
  %i.fdw = phi ptr [ %i.fes, %.body94.i893 ], [ %i.fte, %bb.avc ]
  %.pn43.i = phi { ptr, i32 } [ %eh.lpad-body95.i, %.body94.i893 ], [ %i.fti, %bb.avc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.agj), !noalias !12873
  br label %bb.apv

bb.apv:                                           ; preds = %bb.aws, %bb.apu, %bb.apr, %bb.app, %bb.apb, %bb.aoz
  %i.fdx = phi ptr [ %i.fdv, %bb.apu ], [ %i.ftz, %bb.aws ], [ %i.fbk, %bb.apr ], [ %i.fbk, %bb.app ], [ %i.fbk, %bb.aoz ], [ %i.fbk, %bb.apb ]
  %i.fdy = phi ptr [ %i.fdw, %bb.apu ], [ %i.fua, %bb.aws ], [ %i.fbl, %bb.apr ], [ %i.fbl, %bb.app ], [ %i.fbl, %bb.aoz ], [ %i.fbl, %bb.apb ]
  %.pn43.pn.i868 = phi { ptr, i32 } [ %.pn43.i, %bb.apu ], [ %.pn38.pn.pn.pn.i, %bb.aws ], [ %i.fdo, %bb.apr ], [ %.pn11.pn.pn.pn.pn.pn.i, %bb.app ], [ %i.fby, %bb.aoz ], [ %i.fca, %bb.apb ]
  %i.fdz = getelementptr inbounds nuw i8, ptr %1, i64 1237 ; 2 uses
  %i.fea = load i8, ptr %i.fdz, align 1, !range !20, !noalias !12873, !noundef !13
  %i.feb = trunc nuw i8 %i.fea to i1
  %i.fec = load ptr, ptr %i.agx, align 8, !noalias !12873
  %i.fed = icmp ne ptr %i.fec, null
  %or.cond.not.i869 = select i1 %i.feb, i1 %i.fed, i1 false
  br i1 %or.cond.not.i869, label %bb.awu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsEECsgsNUVCRJO2f_13influxdb3_lib.exit.i870

bb.apw:                                           ; preds = %bb.aow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12159.sroa.5.i, i64 24, i1 false), !noalias !12873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.33.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16163.i, i64 7, i1 false), !noalias !12873
  %.sroa.10297.sroa.0.0.extract.trunc326.i = trunc i32 %.sroa.16.2.i.i950 to i8
  %.sroa.10297.sroa.6.0.extract.shift329.i = lshr i32 %.sroa.16.2.i.i950, 8
  %.sroa.10297.sroa.6.0.extract.trunc330.i = trunc i32 %.sroa.10297.sroa.6.0.extract.shift329.i to i8
  %i.fee = ptrtoint ptr %.sroa.29.2.i.i946 to i64
  br label %bb.apx

bb.apx:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879, %bb.apw
  %i.fef = phi ptr [ %i.fbk, %bb.apw ], [ %i.fue, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ] ; 2 uses
  %i.feg = phi ptr [ %i.fbl, %bb.apw ], [ %i.fuf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ] ; 2 uses
  %.sroa.21.0.i880 = phi i64 [ %.sroa.27.2.i.i947, %bb.apw ], [ %.sroa.21.1.i876, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.18.0.i = phi i64 [ %.sroa.24.2.i.i948, %bb.apw ], [ %.sroa.18.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.15300.0.i = phi ptr [ %.sroa.19.2.i.i949, %bb.apw ], [ %.sroa.15300.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.6294.0.i = phi i32 [ %.sroa.9147.2.i.i951, %bb.apw ], [ %.sroa.6294.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.24.0.i881 = phi i64 [ %i.fee, %bb.apw ], [ %.sroa.24.1.i877, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.26.0.i = phi i64 [ %.sroa.30.sroa.0.2.i.i953, %bb.apw ], [ %.sroa.26.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.32.0.i = phi i8 [ %.sroa.31.2.i.i945, %bb.apw ], [ %.sroa.32.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.10297.sroa.0.0.i = phi i8 [ %.sroa.10297.sroa.0.0.extract.trunc326.i, %bb.apw ], [ %.sroa.10297.sroa.0.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.10297.sroa.6.0.i = phi i8 [ %.sroa.10297.sroa.6.0.extract.trunc330.i, %bb.apw ], [ %.sroa.10297.sroa.6.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %.sroa.10297.sroa.7.0.i = phi i32 [ %.sroa.16.2.i.i950, %bb.apw ], [ %.sroa.10297.sroa.7.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %i.feh = phi <2 x i64> [ %i.fbn, %bb.apw ], [ %i.fug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i879 ]
  %i.fei = getelementptr inbounds nuw i8, ptr %1, i64 1234 ; 2 uses
  %i.fej = load i8, ptr %i.fei, align 2, !range !20, !noalias !12873, !noundef !13
  %i.fek = trunc nuw i8 %i.fej to i1
  br i1 %i.fek, label %bb.awo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit.i882

bb.apy:                                           ; preds = %.body.i913, %bb.awv
  %i.fel = phi ptr [ %i.fvm, %bb.awv ], [ %i.ewq, %.body.i913 ] ; 3 uses
  %i.fem = phi ptr [ %i.fvn, %bb.awv ], [ %i.ewr, %.body.i913 ] ; 3 uses
  %.pn48.pn.i = phi { ptr, i32 } [ %.pn46.i871, %bb.awv ], [ %eh.lpad-body.i914, %.body.i913 ] ; 3 uses
  %i.fen = getelementptr inbounds nuw i8, ptr %1, i64 1234
  %i.feo = load i8, ptr %i.fen, align 2, !range !20, !noalias !12873, !noundef !13
  %i.fep = trunc nuw i8 %i.feo to i1
  br i1 %i.fep, label %bb.awx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsgsNUVCRJO2f_13influxdb3_lib.exit121.i

bb.apz:                                           ; preds = %bb.asd, %bb.asc
  %i.feq = landingpad { ptr, i32 }
          cleanup
  br label %.body94.i893

.body94.i893:                                     ; preds = %.body144.i.i, %bb.apz
  %i.fer = phi ptr [ %i.evt, %bb.apz ], [ %i.fsk, %.body144.i.i ]
  %i.fes = phi ptr [ %i.evs, %bb.apz ], [ %i.fsl, %.body144.i.i ]
  %i.fet = phi ptr [ %i.feu, %bb.apz ], [ %i.fsn, %.body144.i.i ]
  %eh.lpad-body95.i = phi { ptr, i32 } [ %i.feq, %bb.apz ], [ %.pn59.i.i, %.body144.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi20query_influxql_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.fet) #34
          to label %bb.apu unwind label %bb.apt, !noalias !12874

bb.aqa:                                           ; preds = %bb.amk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agx), !noalias !12873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.agj), !noalias !12873
  %.phi.trans.insert403.i = getelementptr inbounds nuw i8, ptr %1, i64 1606 ; 4 uses
  %.pre404.i = load i8, ptr %.phi.trans.insert403.i, align 2, !range !39, !noalias !12904
  %i.feu = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afs), !noalias !12873
  switch i8 %.pre404.i, label %default.unreachable8563 [
    i8 0, label %._crit_edge7766
    i8 1, label %bb.asc
    i8 2, label %bb.asd
    i8 3, label %bb.aqc
    i8 4, label %bb.aqd
  ]

._crit_edge7766:                                  ; preds = %bb.aqa
  %.phi.trans.insert7767 = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.pre7768 = load ptr, ptr %.phi.trans.insert7767, align 16, !noalias !12904
  %.phi.trans.insert7769 = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %.pre7770 = load ptr, ptr %.phi.trans.insert7769, align 16, !noalias !12904
  %.phi.trans.insert7771 = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %.pre7772 = load i64, ptr %.phi.trans.insert7771, align 8, !noalias !12904
  br label %bb.aqb

bb.aqb:                                           ; preds = %._crit_edge7766, %.thread428.i
  %i.fev = phi ptr [ %i.fbk, %.thread428.i ], [ %i.evt, %._crit_edge7766 ] ; 17 uses
  %i.few = phi ptr [ %i.fbl, %.thread428.i ], [ %i.evs, %._crit_edge7766 ] ; 17 uses
  %i.fex = phi i64 [ %.val67.i966, %.thread428.i ], [ %.pre7772, %._crit_edge7766 ] ; 2 uses
  %i.fey = phi ptr [ %.val66.i965, %.thread428.i ], [ %.pre7770, %._crit_edge7766 ] ; 2 uses
  %i.fez = phi ptr [ %i.fdq, %.thread428.i ], [ %.pre7768, %._crit_edge7766 ] ; 6 uses
  %i.ffa = phi ptr [ %.sroa.16218.0..sroa_idx.i, %.thread428.i ], [ %.phi.trans.insert403.i, %._crit_edge7766 ] ; 17 uses
  %i.ffb = phi ptr [ %i.fdt, %.thread428.i ], [ %i.feu, %._crit_edge7766 ] ; 20 uses
  %i.ffc = getelementptr inbounds nuw i8, ptr %1, i64 1605 ; 2 uses
  %i.ffd = getelementptr inbounds nuw i8, ptr %1, i64 1603 ; 2 uses
  %i.ffe = getelementptr inbounds nuw i8, ptr %1, i64 1602 ; 2 uses
  %i.fff = getelementptr inbounds nuw i8, ptr %1, i64 1604 ; 2 uses
  %i.ffg = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 3 uses
  %i.ffh = getelementptr inbounds nuw i8, ptr %1, i64 1601 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.ffg, i8 0, i64 6, i1 false), !noalias !12904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12904
  store i8 1, ptr %i.ffc, align 1, !noalias !12904
  %i.ffi = getelementptr inbounds nuw i8, ptr %1, i64 1576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afv, ptr noundef nonnull align 8 dereferenceable(24) %i.ffi, i64 24, i1 false), !noalias !12904
  store i8 1, ptr %i.ffd, align 1, !noalias !12904
  %i.ffj = getelementptr inbounds nuw i8, ptr %1, i64 1616 ; 3 uses
  %i.ffk = getelementptr inbounds nuw i8, ptr %1, i64 1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ffj, ptr noundef nonnull align 16 dereferenceable(48) %i.ffk, i64 48, i1 false), !noalias !12904
  store i8 1, ptr %i.ffe, align 2, !noalias !12904
  %i.ffl = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.ffm = getelementptr inbounds nuw i8, ptr %1, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ffl, ptr noundef nonnull align 16 dereferenceable(80) %i.ffm, i64 80, i1 false), !noalias !12904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afu), !noalias !12904
  invoke void @_RNvCs8dx9gOL6MFw_26iox_query_influxql_rewrite16parse_statements(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.afu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fey, i64 noundef %i.fex)
          to label %bb.aqf unwind label %bb.aqe, !noalias !12905

bb.aqc:                                           ; preds = %bb.aqa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12904
  br label %bb.asf

bb.aqd:                                           ; preds = %bb.aqa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afv), !noalias !12904
  br label %bb.asr

bb.aqe:                                           ; preds = %bb.aqb
  %i.ffn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afu), !noalias !12904
  br label %.body93.i.i

bb.aqf:                                           ; preds = %bb.aqb
  call void @llvm.experimental.noalias.scope.decl(metadata !12906)
  %i.ffo = load i64, ptr %i.afu, align 8, !range !30, !alias.scope !12907, !noalias !12908, !noundef !13 ; 2 uses
  %.not.i83.i.i = icmp eq i64 %i.ffo, -2
  %i.ffp = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %.sroa.8152.sroa.0.0.copyload249.i.i = load ptr, ptr %i.ffp, align 8, !alias.scope !12909, !noalias !12904 ; 3 uses
  %.sroa.8152.sroa.8.0..sroa_idx251.i.i = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %.sroa.8152.sroa.8.0.copyload252.i.i = load i64, ptr %.sroa.8152.sroa.8.0..sroa_idx251.i.i, align 8, !alias.scope !12909, !noalias !12904 ; 3 uses
  %.sroa.8152.sroa.9.0..sroa_idx254.i.i = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  %.sroa.8152.sroa.9.0.copyload255.i.i = load i64, ptr %.sroa.8152.sroa.9.0..sroa_idx254.i.i, align 8, !alias.scope !12909, !noalias !12904 ; 4 uses
  br i1 %.not.i83.i.i, label %bb.aqg, label %bb.asb

bb.aqg:                                           ; preds = %bb.aqf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afu), !noalias !12904
  %i.ffq = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store ptr %.sroa.8152.sroa.0.0.copyload249.i.i, ptr %i.ffq, align 16, !noalias !12904
  %.sroa.4257.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store i64 %.sroa.8152.sroa.8.0.copyload252.i.i, ptr %.sroa.4257.0..sroa_idx.i.i, align 8, !noalias !12904
  %.sroa.5258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488 ; 2 uses
  store i64 %.sroa.8152.sroa.9.0.copyload255.i.i, ptr %.sroa.5258.0..sroa_idx.i.i, align 16, !noalias !12904
  %i.ffr = icmp ult i64 %.sroa.8152.sroa.9.0.copyload255.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.ffr)
  %i.ffs = icmp eq i64 %.sroa.8152.sroa.9.0.copyload255.i.i, 1
  br i1 %i.ffs, label %bb.aqh, label %bb.arx

bb.aqh:                                           ; preds = %bb.aqg
  %i.fft = inttoptr i64 %.sroa.8152.sroa.8.0.copyload252.i.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12910)
  store i64 0, ptr %.sroa.5258.0..sroa_idx.i.i, align 16, !alias.scope !12910, !noalias !12911
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8152.sroa.0.0.copyload249.i.i) ]
  %.sroa.0157.0.copyload158.i.i = load i64, ptr %i.fft, align 8, !noalias !12912 ; 2 uses
  %.sroa.7.0..sroa_idx159.i.i = getelementptr inbounds nuw i8, ptr %i.fft, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx159.i.i, i64 56, i1 false), !noalias !12912
  %.not.i.i87.i = icmp eq i64 %.sroa.0157.0.copyload158.i.i, -1
  br i1 %.not.i.i87.i, label %bb.aqi, label %bb.aqk, !prof !16

bb.aqi:                                           ; preds = %bb.aqh
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #36
          to label %.noexc.i91.i unwind label %bb.aqj, !noalias !12905

.noexc.i91.i:                                     ; preds = %bb.aqi
  unreachable

bb.aqj:                                           ; preds = %bb.aqi
  %i.ffu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.arw

bb.aqk:                                           ; preds = %bb.aqh
  store i64 %.sroa.0157.0.copyload158.i.i, ptr %i.ffb, align 8, !alias.scope !12913, !noalias !12904
  %.sroa.7.0..sroa_idx.i.i901 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i.i901, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i.i, i64 56, i1 false), !alias.scope !12913, !noalias !12904
  store i8 1, ptr %i.fff, align 4, !noalias !12904
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aft), !noalias !12904
  store i8 0, ptr %i.ffc, align 1, !noalias !12904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aft, ptr noundef nonnull align 8 dereferenceable(24) %i.afv, i64 24, i1 false), !noalias !12904
  invoke void @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE12resolve_dbrpCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.afs, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ffb)
          to label %bb.aqm unwind label %bb.aql, !noalias !12905

bb.aql:                                           ; preds = %bb.aqk
  %i.ffv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.aft) #34
          to label %bb.arv unwind label %bb.aru, !noalias !12905

bb.aqm:                                           ; preds = %bb.aqk
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.aft, align 8, !noalias !12904 ; 4 uses
  %.sroa.8.0..sroa_idx.i.i902 = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i902, align 8, !noalias !12904 ; 5 uses
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  %.sroa.8.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12904 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aft), !noalias !12904
  %.not21.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, -1
  %i.ffw = load i64, ptr %i.afs, align 8, !range !12, !noalias !12904, !noundef !13 ; 2 uses
  %.not22.i.i = icmp eq i64 %i.ffw, -1            ; 2 uses
  br i1 %.not21.i.i, label %bb.aqo, label %bb.aqn

bb.aqn:                                           ; preds = %bb.aqm
  br i1 %.not22.i.i, label %bb.aqs, label %bb.aqt

bb.aqo:                                           ; preds = %bb.aqm
  br i1 %.not22.i.i, label %bb.aqq, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %.sroa.3.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %.sroa.3.sroa.0.0.copyload.i90.i = load ptr, ptr %.sroa.3.0..sroa_idx.i89.i, align 8, !noalias !12904
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.afs, i64 16
  %.sroa.3.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12904
  br label %bb.aqs

bb.aqq:                                           ; preds = %bb.aqo
  store i8 1, ptr %i.ffh, align 1, !noalias !12904
  %i.ffx = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 -1, ptr %i.ffx, align 8, !noalias !12904
  br label %bb.aqr

bb.aqr:                                           ; preds = %bb.aqw, %bb.aqs, %bb.aqq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afq), !noalias !12904
  store i8 0, ptr %i.fff, align 4, !noalias !12904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.afq, ptr noundef nonnull align 16 dereferenceable(64) %i.ffb, i64 64, i1 false), !noalias !12904
  %i.ffy = getelementptr inbounds nuw i8, ptr %1, i64 1360 ; 2 uses
  %i.ffz = invoke { i64, ptr } @_RNvMCs8dx9gOL6MFw_26iox_query_influxql_rewriteINtB2_9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementE12to_statementCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.afq)
          to label %bb.aqy unwind label %bb.aqx, !noalias !12905 ; 2 uses

bb.aqs:                                           ; preds = %bb.aqp, %bb.aqn
  %.sroa.3.sroa.3.0.i.i = phi i64 [ %.sroa.3.sroa.3.0.copyload.i.i, %bb.aqp ], [ %.sroa.8.sroa.7.0.copyload.i.i, %bb.aqn ]
  %.sroa.3.sroa.0.0.i.i = phi ptr [ %.sroa.3.sroa.0.0.copyload.i90.i, %bb.aqp ], [ %.sroa.8.sroa.0.0.copyload.i.i, %bb.aqn ]
  %.sroa.06.0.i.i = phi i64 [ %i.ffw, %bb.aqp ], [ %.sroa.01.0.copyload.i.i, %bb.aqn ]
  store i8 1, ptr %i.ffh, align 1, !noalias !12904
  %i.fga = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 %.sroa.06.0.i.i, ptr %i.fga, align 8, !noalias !12904
  %.sroa.3.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %.sroa.3.sroa.0.0.i.i, ptr %.sroa.3.0..sroa_idx8.i.i, align 16, !noalias !12904
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx8.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i64 %.sroa.3.sroa.3.0.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx8.sroa_idx.i.i, align 8, !noalias !12904
  br label %bb.aqr

bb.aqt:                                           ; preds = %bb.aqn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.afr), !noalias !12904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.afr, ptr noundef nonnull align 8 dereferenceable(24) %i.afs, i64 24, i1 false), !noalias !12904
  %i.fgb = getelementptr inbounds nuw i8, ptr %i.afr, i64 8 ; 2 uses
  %i.fgc = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %.val80.i.i = load i64, ptr %i.fgc, align 8, !noalias !12904, !noundef !13 ; 2 uses
  %i.fgd = icmp eq i64 %.sroa.8.sroa.7.0.copyload.i.i, %.val80.i.i
  br i1 %i.fgd, label %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, label %._RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread_crit_edge.i.i

._RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread_crit_edge.i.i: ; preds = %bb.aqt
  %.sroa.4.0.copyload.pre.i.i = load i64, ptr %i.fgb, align 8, !noalias !12904
  br label %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.aqt
  %.val79.i.i = load ptr, ptr %i.fgb, align 8, !noalias !12904, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.i.i) ]
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.8.sroa.0.0.copyload.i.i, ptr nonnull readonly %.val79.i.i, i64 %.sroa.8.sroa.7.0.copyload.i.i), !noalias !12905
  %i.fge = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.fgf = ptrtoint ptr %.val79.i.i to i64
  br i1 %i.fge, label %bb.aqu, label %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %._RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread_crit_edge.i.i
  %.sroa.4.0.copyload.i.i903 = phi i64 [ %.sroa.4.0.copyload.pre.i.i, %._RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread_crit_edge.i.i ], [ %i.fgf, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ]
  %i.fgg = inttoptr i64 %.sroa.01.0.copyload.i.i to ptr
  %.sroa.0246.0.copyload.i.i = load i64, ptr %i.afr, align 8, !noalias !12904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afr), !noalias !12904
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i

bb.aqu:                                           ; preds = %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i
  store i8 1, ptr %i.ffh, align 1, !noalias !12904
  %i.fgh = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.fgh, align 8, !noalias !12904
  %.sroa.4.0..sroa_idx302.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %.sroa.8.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx302.i.i, align 16, !noalias !12904
  %.sroa.5.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i64 %.sroa.8.sroa.7.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i88.i, align 8, !noalias !12904
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afr)
          to label %bb.aqw unwind label %bb.aqv, !noalias !12905

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit139.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i, %bb.auc, %bb.aua, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i
  %i.fgi = phi ptr [ %i.fke, %bb.aua ], [ %i.fev, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.fke, %bb.auc ], [ %i.fke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ] ; 2 uses
  %i.fgj = phi ptr [ %i.fkf, %bb.aua ], [ %i.few, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.fkf, %bb.auc ], [ %i.fkf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ] ; 2 uses
  %i.fgk = phi ptr [ %i.fkg, %bb.aua ], [ %i.ffa, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.fkg, %bb.auc ], [ %i.fkg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ] ; 2 uses
  %i.fgl = phi ptr [ %i.fkh, %bb.aua ], [ %i.ffb, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.fkh, %bb.auc ], [ %i.fkh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ] ; 3 uses
  %.sroa.16.sroa.7.sroa.7.sroa.7.0.i.i = phi i64 [ %.sroa.16.sroa.7.sroa.7.sroa.7.1.i.i, %bb.aua ], [ %.val80.i.i, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.16.sroa.7.sroa.7.sroa.7.1.i.i, %bb.auc ], [ %.sroa.16.sroa.7.sroa.7.sroa.7.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.16.sroa.7.sroa.7.sroa.0.0.i.i = phi i64 [ %.sroa.16.sroa.7.sroa.7.sroa.0.1.i.i, %bb.aua ], [ %.sroa.4.0.copyload.i.i903, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.16.sroa.7.sroa.7.sroa.0.1.i.i, %bb.auc ], [ %.sroa.16.sroa.7.sroa.7.sroa.0.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.16.sroa.7.sroa.0.0.i.i = phi i64 [ %.sroa.16.sroa.7.sroa.0.1.i.i, %bb.aua ], [ %.sroa.0246.0.copyload.i.i, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.16.sroa.7.sroa.0.1.i.i, %bb.auc ], [ %.sroa.16.sroa.7.sroa.0.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.16.sroa.0.0.i.i = phi i64 [ %.sroa.16.sroa.0.1.i.i, %bb.aua ], [ %.sroa.8.sroa.7.0.copyload.i.i, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.16.sroa.0.1.i.i, %bb.auc ], [ %.sroa.16.sroa.0.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.15.0.i.i = phi ptr [ %.sroa.15.1.i.i, %bb.aua ], [ %.sroa.8.sroa.0.0.copyload.i.i, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.15.1.i.i, %bb.auc ], [ %.sroa.15.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.14213.0.i.i = phi ptr [ %.sroa.14213.1.i.i, %bb.aua ], [ %i.fgg, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.14213.1.i.i, %bb.auc ], [ %.sroa.14213.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %.sroa.0208.0.i.i = phi i32 [ %.sroa.0208.1.i.i, %bb.aua ], [ 48, %_RNvXs1h_NtCscdodAO9FK5_5alloc6stringNtB6_6StringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %.sroa.0208.1.i.i, %bb.auc ], [ %.sroa.0208.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i135.i.i ]
  %i.fgm = getelementptr inbounds nuw i8, ptr %1, i64 1601
  store i8 0, ptr %i.fgm, align 1, !noalias !12904
  %i.fgn = getelementptr inbounds nuw i8, ptr %1, i64 1604 ; 2 uses
  %i.fgo = load i8, ptr %i.fgn, align 4, !range !20, !noalias !12904, !noundef !13
  %i.fgp = trunc nuw i8 %i.fgo to i1
  br i1 %i.fgp, label %bb.auh, label %bb.aug

bb.aqv:                                           ; preds = %bb.aqu
  %i.fgq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afr), !noalias !12904
  br label %.body122.i.i

bb.aqw:                                           ; preds = %bb.aqu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afr), !noalias !12904
  br label %bb.aqr

bb.aqx:                                           ; preds = %bb.aqr
  %i.fgr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afq), !noalias !12904
  br label %bb.art

bb.aqy:                                           ; preds = %bb.aqr
  %i.fgs = extractvalue { i64, ptr } %i.ffz, 0    ; 3 uses
  %i.fgt = extractvalue { i64, ptr } %i.ffz, 1    ; 2 uses
  store i64 %i.fgs, ptr %i.ffy, align 16, !noalias !12904
  %i.fgu = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 2 uses
  store ptr %i.fgt, ptr %i.fgu, align 8, !noalias !12904
  store i8 1, ptr %i.ffg, align 16, !noalias !12904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.afq), !noalias !12904
  %i.fgv = icmp eq i64 %i.fgs, 4
  br i1 %i.fgv, label %bb.aqz, label %bb.arb

bb.aqz:                                           ; preds = %bb.aqy
  %i.fgw = getelementptr inbounds nuw i8, ptr %i.fgt, i64 128 ; 2 uses
  %i.fgx = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12914)
  call void @llvm.experimental.noalias.scope.decl(metadata !12915)
  %i.fgy = load i64, ptr %i.fgw, align 8, !range !12, !alias.scope !12915, !noalias !12916, !noundef !13
  %.not.i84.i.i = icmp eq i64 %i.fgy, -1
  br i1 %.not.i84.i.i, label %.thread.i.i907, label %bb.ara

bb.ara:                                           ; preds = %bb.aqz
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser6select9DimensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fgx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fgw)
          to label %._crit_edge.i.i unwind label %bb.arc, !noalias !12905

._crit_edge.i.i:                                  ; preds = %bb.ara
  %.val81.pre.i.i = load i64, ptr %i.ffy, align 16, !range !53, !noalias !12904
  br label %bb.ard

.thread.i.i907:                                   ; preds = %bb.aqz
  store i64 -1, ptr %i.fgx, align 16, !alias.scope !12914, !noalias !12917
  br label %bb.are

bb.arb:                                           ; preds = %bb.aqy
  %i.fgz = getelementptr inbounds nuw i8, ptr %1, i64 1520
  store i64 -1, ptr %i.fgz, align 16, !noalias !12904
  br label %bb.ard

bb.arc:                                           ; preds = %bb.ara
  %i.fha = landingpad { ptr, i32 }
end_hunk_1
