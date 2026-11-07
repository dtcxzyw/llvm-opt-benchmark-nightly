Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE:bb.a
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ea, ptr noundef nonnull %i.ed, i64 noundef %i.dw)
          to label %bb.ay unwind label %.thread308.i, !noalias !5443 ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.pn374.i = phi { ptr, i64 } [ %i.ee, %bb.ay ], [ %i.ds, %bb.ba ]
  %.sroa.0229.1.i = phi ptr [ %i.ef, %bb.ay ], [ %i.eg, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5436
  br label %bb.ar

bb.ba:                                            ; preds = %bb.au
  %i.eg = extractvalue { ptr, i64 } %i.ds, 0
  br label %bb.az

bb.bb:                                            ; preds = %bb.cb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.bc:                                            ; preds = %bb.ar
  %i.ei = trunc i48 %i.do to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.do, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.do, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.ei, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.ei, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.ej = zext i32 %.sroa.10111.0.copyload to i64
  %i.ek = zext i32 %.sroa.11112.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5454
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.be, !noalias !5443

.noexc172.i:                                      ; preds = %bb.bc
  %i.el = load i64, ptr %i.a, align 8, !range !35, !noalias !5454, !noundef !33
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !36, !noalias !5454, !noundef !33 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.em, label %bb.bd, label %bb.bg, !prof !37

bb.bd:                                            ; preds = %.noexc172.i
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !5454
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eo, i64 %i.eq) #38
          to label %.noexc173.i unwind label %bb.be, !noalias !5443

.noexc173.i:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bi, %bb.be
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.be ], [ %i.ez, %bb.bi ] ; 2 uses
  %i.es = icmp eq i64 %i.ap, 0
  br i1 %i.es, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bf

bb.bf:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5443
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bg:                                            ; preds = %.noexc172.i
  %i.et = load ptr, ptr %i.ep, align 8, !noalias !5454, !nonnull !33, !noundef !33 ; 2 uses
  %i.eu = icmp ule i64 %i.bi, %i.eo
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5454
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.bh, i64 %i.bi, i1 false), !noalias !5455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5436
  store i64 1, ptr %i.j, align 8, !noalias !5436
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ev, align 8, !noalias !5436
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.eo, ptr %i.ew, align 8, !noalias !5436
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5436
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bi, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5436
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5456
  %i.ex = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5456 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.bh, label %bb.bk, !prof !70

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bi, !noalias !5443

.noexc175.i:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bj, !noalias !5443

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5443
  unreachable

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fb = zext i32 %.sroa.1994.0.copyload to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fc, align 2, !noalias !5436
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dk, ptr %i.fd, align 1, !noalias !5436
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.ff = and i8 %i.ab, 1
  store i8 %i.ff, ptr %i.fe, align 2, !noalias !5436
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ac, 11
  %i.fh = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fh, ptr %i.fg, align 1, !noalias !5436
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %i.fj = lshr i8 %i.ab, 3
  %i.fk = and i8 %i.fj, 1
  store i8 %i.fk, ptr %i.fi, align 4, !noalias !5436
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fl, align 8, !noalias !5436
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dl, ptr %i.fm, align 2, !noalias !5436
  store i64 0, ptr %i.n, align 8, !noalias !5436
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fn, align 4, !noalias !5436
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5436
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5436
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9110.0.copyload, ptr %i.fo, align 4, !noalias !5436
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.ej, ptr %i.fp, align 8, !noalias !5436
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ek, ptr %i.fq, align 8, !noalias !5436
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fr, align 8, !noalias !5436
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fs, align 8, !noalias !5436
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.ao, ptr %i.ft, align 8, !noalias !5436
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.ap, ptr %i.fu, align 8, !noalias !5436
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.ex, ptr %i.fv, align 8, !noalias !5436
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.fw, align 8, !noalias !5436
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.fx, align 8, !noalias !5436
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.fy, align 8, !noalias !5436
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fb, ptr %i.fz, align 8, !noalias !5436
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.ga, align 8, !noalias !5436
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %.val38, ptr %i.gb, align 8, !noalias !5436
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5436
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gc, align 8, !noalias !5436
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gd, align 1, !noalias !5436
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.ge, align 8, !noalias !5436
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.gf, align 8, !noalias !5436
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gg, align 8, !noalias !5436
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5436
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5436
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bm unwind label %bb.bl, !noalias !5443

.body178.i:                                       ; preds = %bb.bv, %bb.bq, %bb.bl
  %.pn.i = phi { ptr, i32 } [ %i.gp, %bb.bq ], [ %i.gu, %bb.bv ], [ %i.gh, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.cf, !noalias !5443

bb.bl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bk
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bm:                                            ; preds = %bb.bk
  %i.gi = load i64, ptr %i.m, align 8, !range !71, !noalias !5436, !noundef !33 ; 3 uses
  switch i64 %i.gi, label %bb.bs [
    i64 -9223372036854775802, label %bb.bn
    i64 -9223372036854775807, label %.thread399.i
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !5436, !noundef !33 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5457)
  %i.gl = load ptr, ptr %i.fv, align 8, !alias.scope !5457, !noalias !5436, !noundef !33 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gn = atomicrmw add ptr %i.gl, i64 -1 release, align 8, !noalias !5458
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %bb.br unwind label %bb.bq, !noalias !5443

bb.bq:                                            ; preds = %bb.bp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gk, ptr %i.fv, align 8, !noalias !5436
  br label %.body178.i

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  store ptr %i.gk, ptr %i.fv, align 8, !noalias !5436
  %.pre.i = load i64, ptr %i.m, align 8, !noalias !5436
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bt

bb.bs:                                            ; preds = %bb.bm
  %3 = icmp ne i64 %i.gi, -9223372036854775806
  call void @llvm.assume(i1 %3)
  %.sroa.19.8..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload80 = load i64, ptr %.sroa.19.8..sroa_idx79, align 8, !noalias !5459
  %.sroa.24.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload83 = load i64, ptr %.sroa.24.8..sroa_idx82, align 8, !noalias !5459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5436
  br label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %i.gq = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gr, label %bb.bu, label %.thread400.i

bb.bu:                                            ; preds = %bb.bt
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bu, %bb.bm
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gs, align 8, !alias.scope !5460, !noalias !5436, !nonnull !33, !noundef !33
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5443

.thread400.i:                                     ; preds = %bb.bt
  %i.gt = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gt, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bu, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.bv, !noalias !5443

bb.bv:                                            ; preds = %.thread400.i.thread
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.bw, !noalias !5443

bb.bw:                                            ; preds = %bb.bv
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5443
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5443

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bu, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5436
  %i.gw = load i16, ptr %i.fl, align 8, !range !72, !noalias !5436, !noundef !33
  %i.gx = icmp eq i16 %i.gw, 2
  %i.gy = load i16, ptr %i.fm, align 2, !noalias !5436
  %i.gz = icmp eq i16 %i.gy, 99
  %or.cond.i = select i1 %i.gx, i1 %i.gz, i1 false
  %i.ha = load i16, ptr %i.ge, align 8, !range !72, !noalias !5436
  %.not103.i = icmp eq i16 %i.ha, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hb = load i64, ptr %i.fz, align 8, !noalias !5436, !noundef !33 ; 2 uses
  %i.hc = add i64 %i.hb, %i.z                     ; 2 uses
  %.not104.i = icmp ult i64 %i.hc, %i.hb
  br i1 %.not104.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i64 %i.hc, ptr %i.fz, align 8, !noalias !5436
  %.sroa.074.0.copyload = load i64, ptr %i.n, align 8, !noalias !5459 ; 2 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1175.0.copyload = load i64, ptr %.sroa.1175.0..sroa_idx, align 8, !noalias !5459 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.ga, align 8, !noalias !5459 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5459 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gg, i64 176, i1 false), !noalias !5459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5436
  %i.hd = trunc nuw i8 %.sroa.047.3.i to i1
  %i.he = icmp ne i64 %i.cb, 0
  %or.cond369.not.i = and i1 %i.he, %i.hd
  br i1 %or.cond369.not.i, label %bb.ca, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.ca, %bb.by
  %i.hf = icmp eq i64 %i.bi, 0
  br i1 %i.hf, label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit, label %bb.bz

bb.bz:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5443
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit

bb.ca:                                            ; preds = %bb.by
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5443
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

bb.cb:                                            ; preds = %bb.bx, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", %bb.bs
  %.sroa.24.2 = phi i64 [ %.sroa.24.8.copyload83, %bb.bs ], [ 43, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ 27, %bb.bx ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.8.copyload80, %bb.bs ], [ ptrtoint (ptr @238 to i64), %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ ptrtoint (ptr @239 to i64), %bb.bx ] ; 2 uses
  %.sroa.1175.2 = phi i64 [ %i.gi, %bb.bs ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ -9223372036854775808, %bb.bx ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n)
          to label %bb.cc unwind label %bb.bb, !noalias !5443

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5436
  %i.hg = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hh = icmp ne i64 %i.cb, 0
  %or.cond372.not.i = and i1 %i.hh, %i.hg
  br i1 %or.cond372.not.i, label %bb.ce, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i": ; preds = %bb.ce, %bb.cc, %bb.ad
  %.sroa.24.1 = phi i64 [ %.sroa.24.2, %bb.ce ], [ %.sroa.24.2, %bb.cc ], [ undef, %bb.ad ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.2, %bb.ce ], [ %.sroa.19.2, %bb.cc ], [ %i.ci, %bb.ad ] ; 2 uses
  %.sroa.1175.1 = phi i64 [ %.sroa.1175.2, %bb.ce ], [ %.sroa.1175.2, %bb.cc ], [ -9223372036854775807, %bb.ad ] ; 2 uses
  %i.hi = icmp eq i64 %i.bi, 0
  br i1 %i.hi, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", label %bb.cd

bb.cd:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5443
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i"

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5443
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

bb.cf:                                            ; preds = %.body178.i
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5443
  unreachable

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i": ; preds = %bb.bf, %.body.i
  %i.hk = icmp eq i64 %.sroa.8.3.i, 0
  br i1 %i.hk, label %.thread327.i, label %bb.cg

bb.cg:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.3.i, i64 noundef range(i64 1, 0) %.sroa.8.3.i, i64 noundef 1) #30, !noalias !5443
  br label %.thread327.i

.thread327.i:                                     ; preds = %bb.cg, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", %.thread349.i
  %.pn108340.i = phi { ptr, i32 } [ %i.dp, %.thread349.i ], [ %eh.lpad-body.i, %bb.cg ], [ %eh.lpad-body.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ] ; 2 uses
  %.sroa.050.6339.i = phi i1 [ true, %.thread349.i ], [ false, %bb.cg ], [ false, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ]
  %i.hl = icmp eq i64 %.sroa.10.0.i, 0
  br i1 %i.hl, label %.thread341.i, label %bb.ch

bb.ch:                                            ; preds = %.thread327.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0229.0.i, i64 noundef range(i64 1, 0) %.sroa.10.0.i, i64 noundef 1) #30, !noalias !5443
  br label %.thread341.i

bb.ci:                                            ; preds = %.thread308.i, %.thread341.i
  %.pn108.pn326.i = phi { ptr, i32 } [ %i.dh, %.thread308.i ], [ %.pn108340.i, %.thread341.i ] ; 2 uses
  %.sroa.047.1325.i = phi i8 [ %.sroa.047.2.i, %.thread308.i ], [ %.sroa.047.3.i, %.thread341.i ] ; 2 uses
  %.sroa.0227.1323.i = phi ptr [ %.sroa.0227.2.i, %.thread308.i ], [ %.sroa.0227.3.i, %.thread341.i ] ; 2 uses
  %.sroa.8.1322.i = phi i64 [ %.sroa.8.2.i, %.thread308.i ], [ %.sroa.8.3.i, %.thread341.i ] ; 2 uses
  %i.hm = icmp eq i64 %.sroa.8.1322.i, 0
  br i1 %i.hm, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.1323.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.1323.i, i64 noundef range(i64 1, 0) %.sroa.8.1322.i, i64 noundef 1) #30, !noalias !5443
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.ck:                                            ; preds = %.thread294.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"
  %.pn108.pn.pn307.i = phi { ptr, i32 } [ %i.cl, %.thread294.i ], [ %.pn108.pn.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %.sroa.050.4306.i = phi i1 [ true, %.thread294.i ], [ %.sroa.050.4.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %i.hn = icmp eq i64 %i.cb, 0
  br i1 %i.hn, label %.body161.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5443
  br label %.body161.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i": ; preds = %bb.cd, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  %i.ho = icmp eq i64 %i.ap, 0
  %or.cond366.i = or i1 %i.ho, %.not.i157.not.i
  br i1 %or.cond366.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread, label %bb.aa

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.pn114274.i = phi { ptr, i32 } [ %.pn112.i, %bb.r ], [ %i.bn, %bb.s ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.hp = icmp eq i64 %i.ap, 0
  br i1 %i.hp, label %common.resume, label %common.resume.sink.split.i

_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", %bb.aa, %bb.t, %bb.j
  %.sroa.24.3.ph = phi i64 [ undef, %bb.j ], [ undef, %bb.t ], [ %.sroa.24.0, %bb.aa ], [ %.sroa.24.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.19.3.ph = phi i64 [ %i.au, %bb.j ], [ %i.bo, %bb.t ], [ %.sroa.19.0, %bb.aa ], [ %.sroa.19.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.1175.3.ph = phi i64 [ -9223372036854775807, %bb.j ], [ -9223372036854775807, %bb.t ], [ %.sroa.1175.0, %bb.aa ], [ %.sroa.1175.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5436
  br label %bb.cm

_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i", %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5436
  %i.hq = icmp eq i64 %.sroa.074.0.copyload, 2
  br i1 %i.hq, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit
  %.sroa.1175.3149 = phi i64 [ %.sroa.1175.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.1175.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  %.sroa.19.3148 = phi i64 [ %.sroa.19.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.19.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  %.sroa.24.3147 = phi i64 [ %.sroa.24.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.24.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1175.3149, ptr %i.hr, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3148, ptr %.sroa.2141.0..sroa_idx, align 8
  %.sroa.3142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.3147, ptr %.sroa.3142.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.cn:                                            ; preds = %bb.co
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r) #39
          to label %common.resume unwind label %bb.cu

bb.co:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.074.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.1175.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZN3zip4read26central_header_to_zip_file17hcebf9d4b0209b553E:bb.a
  %i.ej = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ef, ptr noundef nonnull %i.ei, i64 noundef %i.eb)
          to label %bb.ba unwind label %.thread308.i, !noalias !5505 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %.pn374.i = phi { ptr, i64 } [ %i.ej, %bb.ba ], [ %i.dx, %bb.bc ]
  %.sroa.0229.1.i = phi ptr [ %i.ek, %bb.ba ], [ %i.el, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5498
  br label %bb.at

bb.bc:                                            ; preds = %bb.aw
  %i.el = extractvalue { ptr, i64 } %i.dx, 0
  br label %bb.bb

bb.bd:                                            ; preds = %bb.cd
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.be:                                            ; preds = %bb.at
  %i.en = trunc i48 %i.dt to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.dt, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.dt, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.en, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.en, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.eo = zext i32 %.sroa.10110.0.copyload to i64
  %i.ep = zext i32 %.sroa.11111.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5516
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.bg, !noalias !5505

.noexc172.i:                                      ; preds = %bb.be
  %i.eq = load i64, ptr %i.a, align 8, !range !35, !noalias !5516, !noundef !33
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !36, !noalias !5516, !noundef !33 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.er, label %bb.bf, label %bb.bi, !prof !37

bb.bf:                                            ; preds = %.noexc172.i
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !5516
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.et, i64 %i.ev) #38
          to label %.noexc173.i unwind label %bb.bg, !noalias !5505

.noexc173.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bk, %bb.bg
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ew, %bb.bg ], [ %i.fe, %bb.bk ] ; 2 uses
  %i.ex = icmp eq i64 %i.au, 0
  br i1 %i.ex, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bh

bb.bh:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #30, !noalias !5505
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bi:                                            ; preds = %.noexc172.i
  %i.ey = load ptr, ptr %i.eu, align 8, !noalias !5516, !nonnull !33, !noundef !33 ; 2 uses
  %i.ez = icmp ule i64 %i.bn, %i.et
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5516
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr nonnull readonly align 1 %i.bm, i64 %i.bn, i1 false), !noalias !5517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5498
  store i64 1, ptr %i.j, align 8, !noalias !5498
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !5498
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.et, ptr %i.fb, align 8, !noalias !5498
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5498
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bn, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5498
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5518
  %i.fc = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5518 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bj, label %bb.bm, !prof !70

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bk, !noalias !5505

.noexc175.i:                                      ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bl, !noalias !5505

bb.bl:                                            ; preds = %bb.bk
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5505
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fg = zext i32 %.sroa.1993.0.copyload to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fh, align 2, !noalias !5498
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dp, ptr %i.fi, align 1, !noalias !5498
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.fk = and i8 %i.ag, 1
  store i8 %i.fk, ptr %i.fj, align 2, !noalias !5498
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ah, 11
  %i.fm = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fm, ptr %i.fl, align 1, !noalias !5498
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %i.fo = lshr i8 %i.ag, 3
  %i.fp = and i8 %i.fo, 1
  store i8 %i.fp, ptr %i.fn, align 4, !noalias !5498
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fq, align 8, !noalias !5498
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dq, ptr %i.fr, align 2, !noalias !5498
  store i64 0, ptr %i.n, align 8, !noalias !5498
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fs, align 4, !noalias !5498
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5498
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5498
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9109.0.copyload, ptr %i.ft, align 4, !noalias !5498
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.eo, ptr %i.fu, align 8, !noalias !5498
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ep, ptr %i.fv, align 8, !noalias !5498
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fw, align 8, !noalias !5498
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fx, align 8, !noalias !5498
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.at, ptr %i.fy, align 8, !noalias !5498
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.au, ptr %i.fz, align 8, !noalias !5498
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.fc, ptr %i.ga, align 8, !noalias !5498
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.gb, align 8, !noalias !5498
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.gc, align 8, !noalias !5498
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.gd, align 8, !noalias !5498
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fg, ptr %i.ge, align 8, !noalias !5498
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.gf, align 8, !noalias !5498
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %i.w, ptr %i.gg, align 8, !noalias !5498
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5498
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gh, align 8, !noalias !5498
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gi, align 1, !noalias !5498
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.gj, align 8, !noalias !5498
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.gk, align 8, !noalias !5498
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gl, align 8, !noalias !5498
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5498
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5498
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bo unwind label %bb.bn, !noalias !5505

.body178.i:                                       ; preds = %bb.bx, %bb.bs, %bb.bn
  %.pn.i = phi { ptr, i32 } [ %i.gu, %bb.bs ], [ %i.gz, %bb.bx ], [ %i.gm, %bb.bn ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.ch, !noalias !5505

bb.bn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bm
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bo:                                            ; preds = %bb.bm
  %i.gn = load i64, ptr %i.m, align 8, !range !71, !noalias !5498, !noundef !33 ; 3 uses
  switch i64 %i.gn, label %bb.bu [
    i64 -9223372036854775802, label %bb.bp
    i64 -9223372036854775807, label %.thread399.i
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.go = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !5498, !noundef !33 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5519)
  %i.gq = load ptr, ptr %i.ga, align 8, !alias.scope !5519, !noalias !5498, !noundef !33 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gs = atomicrmw add ptr %i.gq, i64 -1 release, align 8, !noalias !5520
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %bb.bt unwind label %bb.bs, !noalias !5505

bb.bs:                                            ; preds = %bb.br
  %i.gu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gp, ptr %i.ga, align 8, !noalias !5498
  br label %.body178.i

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  store ptr %i.gp, ptr %i.ga, align 8, !noalias !5498
  %.pre.i = load i64, ptr %i.m, align 8, !noalias !5498
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  %3 = icmp ne i64 %i.gn, -9223372036854775806
  call void @llvm.assume(i1 %3)
  %.sroa.19.8..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload79 = load i64, ptr %.sroa.19.8..sroa_idx78, align 8, !noalias !5521
  %.sroa.24.8..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload82 = load i64, ptr %.sroa.24.8..sroa_idx81, align 8, !noalias !5521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5498
  br label %bb.cd

bb.bv:                                            ; preds = %bb.bt
  %i.gv = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gw, label %bb.bw, label %.thread400.i

bb.bw:                                            ; preds = %bb.bv
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bw, %bb.bo
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gx, align 8, !alias.scope !5522, !noalias !5498, !nonnull !33, !noundef !33
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bn, !noalias !5505

.thread400.i:                                     ; preds = %bb.bv
  %i.gy = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gy, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bw, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.bx, !noalias !5505

bb.bx:                                            ; preds = %.thread400.i.thread
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.by, !noalias !5505

bb.by:                                            ; preds = %bb.bx
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5505
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bn, !noalias !5505

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bw, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5498
  %i.hb = load i16, ptr %i.fq, align 8, !range !72, !noalias !5498, !noundef !33
  %i.hc = icmp eq i16 %i.hb, 2
  %i.hd = load i16, ptr %i.fr, align 2, !noalias !5498
  %i.he = icmp eq i16 %i.hd, 99
  %or.cond.i = select i1 %i.hc, i1 %i.he, i1 false
  %i.hf = load i16, ptr %i.gj, align 8, !range !72, !noalias !5498
  %.not103.i = icmp eq i16 %i.hf, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hg = load i64, ptr %i.ge, align 8, !noalias !5498, !noundef !33 ; 2 uses
  %i.hh = add i64 %i.hg, %i.ae                    ; 2 uses
  %.not104.i = icmp ult i64 %i.hh, %i.hg
  br i1 %.not104.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i64 %i.hh, ptr %i.ge, align 8, !noalias !5498
  %.sroa.073.0.copyload = load i64, ptr %i.n, align 8, !noalias !5521 ; 2 uses
  %.sroa.1174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1174.0.copyload = load i64, ptr %.sroa.1174.0..sroa_idx, align 8, !noalias !5521 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.gf, align 8, !noalias !5521 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5521 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gl, i64 176, i1 false), !noalias !5521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5498
  %i.hi = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hj = icmp ne i64 %i.cg, 0
  %or.cond369.not.i = and i1 %i.hj, %i.hi
  br i1 %or.cond369.not.i, label %bb.cc, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.cc, %bb.ca
  %i.hk = icmp eq i64 %i.bn, 0
  br i1 %i.hk, label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit, label %bb.cb

bb.cb:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 1) #30, !noalias !5505
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit

bb.cc:                                            ; preds = %bb.ca
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 0) %i.cg, i64 noundef 1) #30, !noalias !5505
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

bb.cd:                                            ; preds = %bb.bz, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", %bb.bu
  %.sroa.24.2 = phi i64 [ %.sroa.24.8.copyload82, %bb.bu ], [ 43, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ 27, %bb.bz ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.8.copyload79, %bb.bu ], [ ptrtoint (ptr @238 to i64), %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ ptrtoint (ptr @239 to i64), %bb.bz ] ; 2 uses
  %.sroa.1174.2 = phi i64 [ %i.gn, %bb.bu ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ -9223372036854775808, %bb.bz ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n)
          to label %bb.ce unwind label %bb.bd, !noalias !5505

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5498
  %i.hl = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hm = icmp ne i64 %i.cg, 0
  %or.cond372.not.i = and i1 %i.hm, %i.hl
  br i1 %or.cond372.not.i, label %bb.cg, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i": ; preds = %bb.cg, %bb.ce, %bb.af
  %.sroa.24.1 = phi i64 [ %.sroa.24.2, %bb.cg ], [ %.sroa.24.2, %bb.ce ], [ undef, %bb.af ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.2, %bb.cg ], [ %.sroa.19.2, %bb.ce ], [ %i.cn, %bb.af ] ; 2 uses
  %.sroa.1174.1 = phi i64 [ %.sroa.1174.2, %bb.cg ], [ %.sroa.1174.2, %bb.ce ], [ -9223372036854775807, %bb.af ] ; 2 uses
  %i.hn = icmp eq i64 %i.bn, 0
  br i1 %i.hn, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 1) #30, !noalias !5505
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i"

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 0) %i.cg, i64 noundef 1) #30, !noalias !5505
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

bb.ch:                                            ; preds = %.body178.i
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5505
  unreachable

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i": ; preds = %bb.bh, %.body.i
  %i.hp = icmp eq i64 %.sroa.8.3.i, 0
  br i1 %i.hp, label %.thread327.i, label %bb.ci

bb.ci:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.3.i, i64 noundef range(i64 1, 0) %.sroa.8.3.i, i64 noundef 1) #30, !noalias !5505
  br label %.thread327.i

.thread327.i:                                     ; preds = %bb.ci, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", %.thread349.i
  %.pn108340.i = phi { ptr, i32 } [ %i.du, %.thread349.i ], [ %eh.lpad-body.i, %bb.ci ], [ %eh.lpad-body.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ] ; 2 uses
  %.sroa.050.6339.i = phi i1 [ true, %.thread349.i ], [ false, %bb.ci ], [ false, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ]
  %i.hq = icmp eq i64 %.sroa.10.0.i, 0
  br i1 %i.hq, label %.thread341.i, label %bb.cj

bb.cj:                                            ; preds = %.thread327.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0229.0.i, i64 noundef range(i64 1, 0) %.sroa.10.0.i, i64 noundef 1) #30, !noalias !5505
  br label %.thread341.i

bb.ck:                                            ; preds = %.thread308.i, %.thread341.i
  %.pn108.pn326.i = phi { ptr, i32 } [ %i.dm, %.thread308.i ], [ %.pn108340.i, %.thread341.i ] ; 2 uses
  %.sroa.047.1325.i = phi i8 [ %.sroa.047.2.i, %.thread308.i ], [ %.sroa.047.3.i, %.thread341.i ] ; 2 uses
  %.sroa.0227.1323.i = phi ptr [ %.sroa.0227.2.i, %.thread308.i ], [ %.sroa.0227.3.i, %.thread341.i ] ; 2 uses
  %.sroa.8.1322.i = phi i64 [ %.sroa.8.2.i, %.thread308.i ], [ %.sroa.8.3.i, %.thread341.i ] ; 2 uses
  %i.hr = icmp eq i64 %.sroa.8.1322.i, 0
  br i1 %i.hr, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i", label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.1323.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.1323.i, i64 noundef range(i64 1, 0) %.sroa.8.1322.i, i64 noundef 1) #30, !noalias !5505
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.cm:                                            ; preds = %.thread294.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"
  %.pn108.pn.pn307.i = phi { ptr, i32 } [ %i.cq, %.thread294.i ], [ %.pn108.pn.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %.sroa.050.4306.i = phi i1 [ true, %.thread294.i ], [ %.sroa.050.4.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %i.hs = icmp eq i64 %i.cg, 0
  br i1 %i.hs, label %.body161.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 0) %i.cg, i64 noundef 1) #30, !noalias !5505
  br label %.body161.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i": ; preds = %bb.cf, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  %i.ht = icmp eq i64 %i.au, 0
  %or.cond366.i = or i1 %i.ht, %.not.i157.not.i
  br i1 %or.cond366.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread, label %bb.ac

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.p, %bb.o
  %.pn114274.i = phi { ptr, i32 } [ %.pn112.i, %bb.t ], [ %i.bs, %bb.u ], [ %i.bp, %bb.p ], [ %i.bp, %bb.o ] ; 2 uses
  %i.hu = icmp eq i64 %i.au, 0
  br i1 %i.hu, label %common.resume, label %common.resume.sink.split.i

_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", %bb.ac, %bb.v, %bb.l
  %.sroa.24.3.ph = phi i64 [ undef, %bb.l ], [ undef, %bb.v ], [ %.sroa.24.0, %bb.ac ], [ %.sroa.24.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.19.3.ph = phi i64 [ %i.az, %bb.l ], [ %i.bt, %bb.v ], [ %.sroa.19.0, %bb.ac ], [ %.sroa.19.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.1174.3.ph = phi i64 [ -9223372036854775807, %bb.l ], [ -9223372036854775807, %bb.v ], [ %.sroa.1174.0, %bb.ac ], [ %.sroa.1174.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5498
  br label %bb.co

_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i", %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5498
  %i.hv = icmp eq i64 %.sroa.073.0.copyload, 2
  br i1 %i.hv, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit
  %.sroa.1174.3148 = phi i64 [ %.sroa.1174.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.1174.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  %.sroa.19.3147 = phi i64 [ %.sroa.19.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.19.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  %.sroa.24.3146 = phi i64 [ %.sroa.24.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.24.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1174.3148, ptr %i.hw, align 8
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3147, ptr %.sroa.2140.0..sroa_idx, align 8
  %.sroa.3141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.3146, ptr %.sroa.3141.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.cy

bb.cp:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.073.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.1174.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.19.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.hx = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$15stream_position17h284bf1a6bd975505E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.cr unwind label %bb.cq     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3zip4read26central_header_to_zip_file17hfe4374f62c37bd89E:bb.a
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ea, ptr noundef nonnull %i.ed, i64 noundef %i.dw)
          to label %bb.ay unwind label %.thread308.i, !noalias !5567 ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.pn374.i = phi { ptr, i64 } [ %i.ee, %bb.ay ], [ %i.ds, %bb.ba ]
  %.sroa.0229.1.i = phi ptr [ %i.ef, %bb.ay ], [ %i.eg, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5560
  br label %bb.ar

bb.ba:                                            ; preds = %bb.au
  %i.eg = extractvalue { ptr, i64 } %i.ds, 0
  br label %bb.az

bb.bb:                                            ; preds = %bb.cb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.bc:                                            ; preds = %bb.ar
  %i.ei = trunc i48 %i.do to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.do, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.do, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.ei, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.ei, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.ej = zext i32 %.sroa.10111.0.copyload to i64
  %i.ek = zext i32 %.sroa.11112.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5578
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.be, !noalias !5567

.noexc172.i:                                      ; preds = %bb.bc
  %i.el = load i64, ptr %i.a, align 8, !range !35, !noalias !5578, !noundef !33
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !36, !noalias !5578, !noundef !33 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.em, label %bb.bd, label %bb.bg, !prof !37

bb.bd:                                            ; preds = %.noexc172.i
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !5578
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eo, i64 %i.eq) #38
          to label %.noexc173.i unwind label %bb.be, !noalias !5567

.noexc173.i:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bi, %bb.be
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.be ], [ %i.ez, %bb.bi ] ; 2 uses
  %i.es = icmp eq i64 %i.ap, 0
  br i1 %i.es, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bf

bb.bf:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5567
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bg:                                            ; preds = %.noexc172.i
  %i.et = load ptr, ptr %i.ep, align 8, !noalias !5578, !nonnull !33, !noundef !33 ; 2 uses
  %i.eu = icmp ule i64 %i.bi, %i.eo
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5578
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.bh, i64 %i.bi, i1 false), !noalias !5579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5560
  store i64 1, ptr %i.j, align 8, !noalias !5560
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ev, align 8, !noalias !5560
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.eo, ptr %i.ew, align 8, !noalias !5560
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5560
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bi, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5560
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5580
  %i.ex = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5580 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.bh, label %bb.bk, !prof !70

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bi, !noalias !5567

.noexc175.i:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bj, !noalias !5567

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5567
  unreachable

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fb = zext i32 %.sroa.1994.0.copyload to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fc, align 2, !noalias !5560
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dk, ptr %i.fd, align 1, !noalias !5560
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.ff = and i8 %i.ab, 1
  store i8 %i.ff, ptr %i.fe, align 2, !noalias !5560
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ac, 11
  %i.fh = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fh, ptr %i.fg, align 1, !noalias !5560
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %i.fj = lshr i8 %i.ab, 3
  %i.fk = and i8 %i.fj, 1
  store i8 %i.fk, ptr %i.fi, align 4, !noalias !5560
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fl, align 8, !noalias !5560
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dl, ptr %i.fm, align 2, !noalias !5560
  store i64 0, ptr %i.n, align 8, !noalias !5560
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fn, align 4, !noalias !5560
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5560
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5560
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9110.0.copyload, ptr %i.fo, align 4, !noalias !5560
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.ej, ptr %i.fp, align 8, !noalias !5560
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ek, ptr %i.fq, align 8, !noalias !5560
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fr, align 8, !noalias !5560
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fs, align 8, !noalias !5560
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.ao, ptr %i.ft, align 8, !noalias !5560
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.ap, ptr %i.fu, align 8, !noalias !5560
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.ex, ptr %i.fv, align 8, !noalias !5560
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.fw, align 8, !noalias !5560
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.fx, align 8, !noalias !5560
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.fy, align 8, !noalias !5560
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fb, ptr %i.fz, align 8, !noalias !5560
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.ga, align 8, !noalias !5560
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %.val38, ptr %i.gb, align 8, !noalias !5560
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5560
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gc, align 8, !noalias !5560
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gd, align 1, !noalias !5560
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.ge, align 8, !noalias !5560
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.gf, align 8, !noalias !5560
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gg, align 8, !noalias !5560
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5560
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5560
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bm unwind label %bb.bl, !noalias !5567

.body178.i:                                       ; preds = %bb.bv, %bb.bq, %bb.bl
  %.pn.i = phi { ptr, i32 } [ %i.gp, %bb.bq ], [ %i.gu, %bb.bv ], [ %i.gh, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.cf, !noalias !5567

bb.bl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bk
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bm:                                            ; preds = %bb.bk
  %i.gi = load i64, ptr %i.m, align 8, !range !71, !noalias !5560, !noundef !33 ; 3 uses
  switch i64 %i.gi, label %bb.bs [
    i64 -9223372036854775802, label %bb.bn
    i64 -9223372036854775807, label %.thread399.i
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !5560, !noundef !33 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5581)
  %i.gl = load ptr, ptr %i.fv, align 8, !alias.scope !5581, !noalias !5560, !noundef !33 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gn = atomicrmw add ptr %i.gl, i64 -1 release, align 8, !noalias !5582
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %bb.br unwind label %bb.bq, !noalias !5567

bb.bq:                                            ; preds = %bb.bp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gk, ptr %i.fv, align 8, !noalias !5560
  br label %.body178.i

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  store ptr %i.gk, ptr %i.fv, align 8, !noalias !5560
  %.pre.i = load i64, ptr %i.m, align 8, !noalias !5560
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bt

bb.bs:                                            ; preds = %bb.bm
  %3 = icmp ne i64 %i.gi, -9223372036854775806
  call void @llvm.assume(i1 %3)
  %.sroa.19.8..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload80 = load i64, ptr %.sroa.19.8..sroa_idx79, align 8, !noalias !5583
  %.sroa.24.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload83 = load i64, ptr %.sroa.24.8..sroa_idx82, align 8, !noalias !5583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5560
  br label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %i.gq = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gr, label %bb.bu, label %.thread400.i

bb.bu:                                            ; preds = %bb.bt
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bu, %bb.bm
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gs, align 8, !alias.scope !5584, !noalias !5560, !nonnull !33, !noundef !33
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5567

.thread400.i:                                     ; preds = %bb.bt
  %i.gt = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gt, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bu, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.bv, !noalias !5567

bb.bv:                                            ; preds = %.thread400.i.thread
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.bw, !noalias !5567

bb.bw:                                            ; preds = %bb.bv
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5567
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5567

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bu, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5560
  %i.gw = load i16, ptr %i.fl, align 8, !range !72, !noalias !5560, !noundef !33
  %i.gx = icmp eq i16 %i.gw, 2
  %i.gy = load i16, ptr %i.fm, align 2, !noalias !5560
  %i.gz = icmp eq i16 %i.gy, 99
  %or.cond.i = select i1 %i.gx, i1 %i.gz, i1 false
  %i.ha = load i16, ptr %i.ge, align 8, !range !72, !noalias !5560
  %.not103.i = icmp eq i16 %i.ha, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hb = load i64, ptr %i.fz, align 8, !noalias !5560, !noundef !33 ; 2 uses
  %i.hc = add i64 %i.hb, %i.z                     ; 2 uses
  %.not104.i = icmp ult i64 %i.hc, %i.hb
  br i1 %.not104.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i64 %i.hc, ptr %i.fz, align 8, !noalias !5560
  %.sroa.074.0.copyload = load i64, ptr %i.n, align 8, !noalias !5583 ; 2 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1175.0.copyload = load i64, ptr %.sroa.1175.0..sroa_idx, align 8, !noalias !5583 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.ga, align 8, !noalias !5583 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5583 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gg, i64 176, i1 false), !noalias !5583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5560
  %i.hd = trunc nuw i8 %.sroa.047.3.i to i1
  %i.he = icmp ne i64 %i.cb, 0
  %or.cond369.not.i = and i1 %i.he, %i.hd
  br i1 %or.cond369.not.i, label %bb.ca, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.ca, %bb.by
  %i.hf = icmp eq i64 %i.bi, 0
  br i1 %i.hf, label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit, label %bb.bz

bb.bz:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5567
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit

bb.ca:                                            ; preds = %bb.by
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5567
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

bb.cb:                                            ; preds = %bb.bx, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", %bb.bs
  %.sroa.24.2 = phi i64 [ %.sroa.24.8.copyload83, %bb.bs ], [ 43, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ 27, %bb.bx ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %.sroa.19.8.copyload80, %bb.bs ], [ ptrtoint (ptr @238 to i64), %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ ptrtoint (ptr @239 to i64), %bb.bx ] ; 2 uses
  %.sroa.1175.2 = phi i64 [ %i.gi, %bb.bs ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" ], [ -9223372036854775808, %bb.bx ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n)
          to label %bb.cc unwind label %bb.bb, !noalias !5567

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5560
  %i.hg = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hh = icmp ne i64 %i.cb, 0
  %or.cond372.not.i = and i1 %i.hh, %i.hg
  br i1 %or.cond372.not.i, label %bb.ce, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i": ; preds = %bb.ce, %bb.cc, %bb.ad
  %.sroa.24.1 = phi i64 [ %.sroa.24.2, %bb.ce ], [ %.sroa.24.2, %bb.cc ], [ undef, %bb.ad ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.2, %bb.ce ], [ %.sroa.19.2, %bb.cc ], [ %i.ci, %bb.ad ] ; 2 uses
  %.sroa.1175.1 = phi i64 [ %.sroa.1175.2, %bb.ce ], [ %.sroa.1175.2, %bb.cc ], [ -9223372036854775807, %bb.ad ] ; 2 uses
  %i.hi = icmp eq i64 %i.bi, 0
  br i1 %i.hi, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", label %bb.cd

bb.cd:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5567
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i"

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5567
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"

bb.cf:                                            ; preds = %.body178.i
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5567
  unreachable

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i": ; preds = %bb.bf, %.body.i
  %i.hk = icmp eq i64 %.sroa.8.3.i, 0
  br i1 %i.hk, label %.thread327.i, label %bb.cg

bb.cg:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.3.i, i64 noundef range(i64 1, 0) %.sroa.8.3.i, i64 noundef 1) #30, !noalias !5567
  br label %.thread327.i

.thread327.i:                                     ; preds = %bb.cg, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", %.thread349.i
  %.pn108340.i = phi { ptr, i32 } [ %i.dp, %.thread349.i ], [ %eh.lpad-body.i, %bb.cg ], [ %eh.lpad-body.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ] ; 2 uses
  %.sroa.050.6339.i = phi i1 [ true, %.thread349.i ], [ false, %bb.cg ], [ false, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i" ]
  %i.hl = icmp eq i64 %.sroa.10.0.i, 0
  br i1 %i.hl, label %.thread341.i, label %bb.ch

bb.ch:                                            ; preds = %.thread327.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0229.0.i, i64 noundef range(i64 1, 0) %.sroa.10.0.i, i64 noundef 1) #30, !noalias !5567
  br label %.thread341.i

bb.ci:                                            ; preds = %.thread308.i, %.thread341.i
  %.pn108.pn326.i = phi { ptr, i32 } [ %i.dh, %.thread308.i ], [ %.pn108340.i, %.thread341.i ] ; 2 uses
  %.sroa.047.1325.i = phi i8 [ %.sroa.047.2.i, %.thread308.i ], [ %.sroa.047.3.i, %.thread341.i ] ; 2 uses
  %.sroa.0227.1323.i = phi ptr [ %.sroa.0227.2.i, %.thread308.i ], [ %.sroa.0227.3.i, %.thread341.i ] ; 2 uses
  %.sroa.8.1322.i = phi i64 [ %.sroa.8.2.i, %.thread308.i ], [ %.sroa.8.3.i, %.thread341.i ] ; 2 uses
  %i.hm = icmp eq i64 %.sroa.8.1322.i, 0
  br i1 %i.hm, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.1323.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.1323.i, i64 noundef range(i64 1, 0) %.sroa.8.1322.i, i64 noundef 1) #30, !noalias !5567
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.ck:                                            ; preds = %.thread294.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"
  %.pn108.pn.pn307.i = phi { ptr, i32 } [ %i.cl, %.thread294.i ], [ %.pn108.pn.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %.sroa.050.4306.i = phi i1 [ true, %.thread294.i ], [ %.sroa.050.4.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %i.hn = icmp eq i64 %i.cb, 0
  br i1 %i.hn, label %.body161.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5567
  br label %.body161.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i": ; preds = %bb.cd, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  %i.ho = icmp eq i64 %i.ap, 0
  %or.cond366.i = or i1 %i.ho, %.not.i157.not.i
  br i1 %or.cond366.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread, label %bb.aa

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.pn114274.i = phi { ptr, i32 } [ %.pn112.i, %bb.r ], [ %i.bn, %bb.s ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.hp = icmp eq i64 %i.ap, 0
  br i1 %i.hp, label %common.resume, label %common.resume.sink.split.i

_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", %bb.aa, %bb.t, %bb.j
  %.sroa.24.3.ph = phi i64 [ undef, %bb.j ], [ undef, %bb.t ], [ %.sroa.24.0, %bb.aa ], [ %.sroa.24.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.19.3.ph = phi i64 [ %i.au, %bb.j ], [ %i.bo, %bb.t ], [ %.sroa.19.0, %bb.aa ], [ %.sroa.19.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.1175.3.ph = phi i64 [ -9223372036854775807, %bb.j ], [ -9223372036854775807, %bb.t ], [ %.sroa.1175.0, %bb.aa ], [ %.sroa.1175.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5560
  br label %bb.cm

_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i", %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5560
  %i.hq = icmp eq i64 %.sroa.074.0.copyload, 2
  br i1 %i.hq, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit
  %.sroa.1175.3149 = phi i64 [ %.sroa.1175.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread ], [ %.sroa.1175.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit ]
  %.sroa.19.3148 = phi i64 [ %.sroa.19.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread ], [ %.sroa.19.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit ]
  %.sroa.24.3147 = phi i64 [ %.sroa.24.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread ], [ %.sroa.24.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1175.3149, ptr %i.hr, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3148, ptr %.sroa.2141.0..sroa_idx, align 8
  %.sroa.3142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.3147, ptr %.sroa.3142.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.cn:                                            ; preds = %bb.co
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r) #39
          to label %common.resume unwind label %bb.cu

bb.co:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.074.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.1175.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_2
