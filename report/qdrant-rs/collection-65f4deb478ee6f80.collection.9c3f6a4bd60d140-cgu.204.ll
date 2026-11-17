Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.204?download=true
inline.NumInlined: 130
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtCsi5QhzQpov3h_11actix_files5namedNtB5_9NamedFile4openNtNtCsG258MDvU3F_3std4path7PathBufECsPYQCUnoTxQ_10collection:bb.a
bb.as:                                            ; preds = %bb.ar
  %spec.select.i = select i1 %i.fb, i64 -9223372036854775808, i64 -9223372036854775807
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ao, %bb.an
  %.sink.i = phi i64 [ -9223372036854775808, %bb.aq ], [ -9223372036854775808, %bb.ao ], [ %spec.select.i, %bb.as ], [ -9223372036854775808, %bb.an ]
  store i64 %.sink.i, ptr %i.u, align 8, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !104
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %bb.at, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !104
  %i.fc = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !104, !nonnull !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !104
  invoke fastcc void @_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replacecECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fd, i64 noundef %i.ff, i32 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7)
          to label %bb.ay unwind label %bb.ax

bb.av:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  store i64 -9223372036854775808, ptr %i.u, align 8, !noalias !104
  br label %bb.au

bb.aw:                                            ; preds = %bb.ds, %.body130.i, %bb.az, %bb.ax
  %.sroa.041.2.i = phi i1 [ true, %bb.ds ], [ true, %bb.ax ], [ true, %bb.az ], [ %.sroa.041.4.i, %.body130.i ]
  %.pn80.pn.pn.i = phi { ptr, i32 } [ %.pn80.pn.ph.i, %bb.ds ], [ %i.fg, %bb.ax ], [ %.pn.pn.i, %bb.az ], [ %.pn80.i, %.body130.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgoPClq0H8JF_9actix_web4http6header19content_disposition15DispositionTypeECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #16
          to label %bb.w unwind label %bb.cu, !noalias !104

bb.ax:                                            ; preds = %bb.au
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !104, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !104, !noundef !4
  invoke fastcc void @_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replacecECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fk, i32 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %bb.bc, %bb.ba
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bc ], [ %i.fl, %bb.ba ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #16
          to label %bb.aw unwind label %bb.cu, !noalias !104

bb.ba:                                            ; preds = %bb.ay
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.bb:                                            ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !104, !nonnull !4, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !104, !noundef !4
  invoke fastcc void @_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replacecECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i32 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bf, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.fv, %bb.bf ], [ %i.fq, %bb.bd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #16
          to label %bb.az unwind label %bb.cu, !noalias !104

bb.bd:                                            ; preds = %bb.bb
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !104, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !104, !noundef !4
  invoke fastcc void @_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replacecECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.fu, i32 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #16
          to label %bb.bc unwind label %bb.cu, !noalias !104

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.bh, !noalias !104

bb.bh:                                            ; preds = %bb.bg
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body111.i unwind label %bb.bi, !noalias !104

bb.bi:                                            ; preds = %bb.bh
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !104
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.bg
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.bj, !noalias !104

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i

.body111.i:                                       ; preds = %bb.bj, %bb.bh
  %eh.lpad-body112.i = phi { ptr, i32 } [ %i.fy, %bb.bj ], [ %i.fw, %bb.bh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #16
          to label %.body116.i unwind label %bb.cu, !noalias !104

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i115.i unwind label %bb.bk, !noalias !104

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body116.i unwind label %bb.bl, !noalias !104

bb.bl:                                            ; preds = %bb.bk
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !104
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i115.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit119.i unwind label %bb.bm, !noalias !104

.body116.i:                                       ; preds = %bb.bm, %bb.bk, %.body111.i
  %.pn75.i = phi { ptr, i32 } [ %eh.lpad-body112.i, %.body111.i ], [ %i.gb, %bb.bm ], [ %i.fz, %bb.bk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #16
          to label %bb.ds unwind label %bb.cu, !noalias !104

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i115.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit119.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i115.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i121.i unwind label %bb.bn, !noalias !104

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit119.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ds unwind label %bb.bo, !noalias !104

bb.bo:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !104
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i121.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit119.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit125.i unwind label %bb.bp, !noalias !104

bb.bp:                                            ; preds = %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i121.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit125.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsPYQCUnoTxQ_10collection.exit.i121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !104
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !104
  %i.gf = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #17, !noalias !104 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.bq, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !5

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit125.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #15
          to label %.noexc126.i unwind label %bb.bp, !noalias !104

.noexc126.i:                                      ; preds = %bb.bq
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit125.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !104
  store i64 -9223372036854775807, ptr %i.gf, align 8, !noalias !104
  store i64 1, ptr %i.o, align 8, !noalias !104
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.gh, align 8, !noalias !104
  %i.gi = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 1, ptr %i.gi, align 8, !noalias !104
  %i.gj = load i64, ptr %i.x, align 8, !range !11, !noalias !104, !noundef !4
  %.not77.i = icmp eq i64 %i.gj, -1
  %i.gk = load ptr, ptr %i.fc, align 8, !noalias !104, !nonnull !4 ; 10 uses
  %i.gl = load i64, ptr %i.fe, align 8, !noalias !104 ; 5 uses
  %i.gm = icmp samesign ult i64 %i.gl, 64
  br i1 %i.gm, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  %i.gn = and i64 %i.gl, 9223372036854775744
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn ; 3 uses
  %i.gp = and i64 %i.gl, 63                       ; 2 uses
  br label %.lr.ph.i.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 64 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.go
  br i1 %i.gr, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %bb.br
  %.sroa.01.028.i.i.i = phi ptr [ %i.gq, %bb.bs ], [ %i.gk, %bb.br ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i, align 1, !alias.scope !115, !noalias !116
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i = load <2 x i64>, ptr %i.gs, align 1, !alias.scope !115, !noalias !117
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i = load <2 x i64>, ptr %i.gt, align 1, !alias.scope !115, !noalias !118
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i = load <2 x i64>, ptr %i.gu, align 1, !alias.scope !115, !noalias !119
  %i.gv = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.gw = or <2 x i64> %i.gv, %.sroa.0.0.copyload.i10.i.i.i
  %i.gx = or <2 x i64> %i.gw, %.sroa.0.0.copyload.i11.i.i.i
  %i.gy = bitcast <2 x i64> %i.gx to <16 x i8>
  %i.gz = icmp slt <16 x i8> %i.gy, zeroinitializer
  %i.ha = bitcast <16 x i1> %i.gz to i16
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %bb.bs, label %.loopexit.i

._crit_edge.i.i.i:                                ; preds = %bb.bs
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  %i.hd = icmp samesign eq i64 %i.gp, 0
  br i1 %i.hd, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

bb.bt:                                            ; preds = %.lr.ph
  %i.he = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.hc
  br i1 %i.hf, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i, %bb.bt
  %i.hg = phi ptr [ %i.he, %bb.bt ], [ %i.go, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.hg, align 1, !alias.scope !115, !noalias !120, !noundef !4
  %i.hh = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.hh, label %bb.bt, label %.loopexit.i

bb.bu:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  %i.hi = and i64 %i.gl, 56                       ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.hi ; 7 uses
  %i.hk = and i64 %i.gl, 7                        ; 7 uses
  %i.hl = icmp samesign eq i64 %i.hi, 0
  br i1 %i.hl, label %._crit_edge.i.i, label %.lr.ph.i.i

2:                                                ; preds = %.lr.ph.i.i
  %3 = icmp samesign eq i64 %i.hi, 8
  br i1 %3, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.03.0.copyload.i.i.1 = load i64, ptr %4, align 1, !alias.scope !121, !noalias !104
  %5 = and i64 %.sroa.03.0.copyload.i.i.1, -9187201950435737472
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %.loopexit.i

7:                                                ; preds = %.lr.ph.i.i.1
  %8 = icmp samesign eq i64 %i.hi, 16
  br i1 %8, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %7
  %9 = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.sroa.03.0.copyload.i.i.2 = load i64, ptr %9, align 1, !alias.scope !121, !noalias !104
  %10 = and i64 %.sroa.03.0.copyload.i.i.2, -9187201950435737472
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %.loopexit.i

12:                                               ; preds = %.lr.ph.i.i.2
  %13 = icmp samesign eq i64 %i.hi, 24
  br i1 %13, label %._crit_edge.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %.sroa.03.0.copyload.i.i.3 = load i64, ptr %14, align 1, !alias.scope !121, !noalias !104
  %15 = and i64 %.sroa.03.0.copyload.i.i.3, -9187201950435737472
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %.loopexit.i

17:                                               ; preds = %.lr.ph.i.i.3
  %18 = icmp samesign eq i64 %i.hi, 32
  br i1 %18, label %._crit_edge.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %17
  %19 = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %.sroa.03.0.copyload.i.i.4 = load i64, ptr %19, align 1, !alias.scope !121, !noalias !104
  %20 = and i64 %.sroa.03.0.copyload.i.i.4, -9187201950435737472
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit.i

22:                                               ; preds = %.lr.ph.i.i.4
  %23 = icmp samesign eq i64 %i.hi, 40
  br i1 %23, label %._crit_edge.i.i, label %bb.bv

bb.bv:                                            ; preds = %22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %.sroa.03.0.copyload.i.i.5 = load i64, ptr %i.hm, align 1, !alias.scope !121, !noalias !104
  %24 = and i64 %.sroa.03.0.copyload.i.i.5, -9187201950435737472
  %i.hn = icmp eq i64 %24, 0
  br i1 %i.hn, label %25, label %.loopexit.i

25:                                               ; preds = %bb.bv
  %26 = icmp samesign eq i64 %i.hi, 48
  br i1 %26, label %._crit_edge.i.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %25
  %27 = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %.sroa.03.0.copyload.i.i.a = load i64, ptr %27, align 1, !alias.scope !121, !noalias !104
  %i.ho = and i64 %.sroa.03.0.copyload.i.i.a, -9187201950435737472
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %._crit_edge.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.bu
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.gk, align 1, !alias.scope !121, !noalias !104
  %28 = and i64 %.sroa.03.0.copyload.i.i, -9187201950435737472
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %2, label %.loopexit.i

._crit_edge.i.i:                                  ; preds = %2, %7, %12, %17, %22, %25, %.lr.ph.i.i.a, %bb.bu
  %i.hq = icmp samesign eq i64 %i.hk, 0
  br i1 %i.hq, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34

bb.bw:                                            ; preds = %.lr.ph34
  %i.hr = icmp samesign eq i64 %i.hk, 1
  br i1 %i.hr, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %bb.bw
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.hs, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.ht = icmp sgt i8 %.val.i.i.i.1, -1
  br i1 %i.ht, label %bb.bx, label %.loopexit.i

bb.bx:                                            ; preds = %.lr.ph34.1
  %i.hu = icmp samesign eq i64 %i.hk, 2
  br i1 %i.hu, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.2

.lr.ph34.2:                                       ; preds = %bb.bx
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.hv, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.hw = icmp sgt i8 %.val.i.i.i.2, -1
  br i1 %i.hw, label %bb.by, label %.loopexit.i

bb.by:                                            ; preds = %.lr.ph34.2
  %i.hx = icmp samesign eq i64 %i.hk, 3
  br i1 %i.hx, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.3

.lr.ph34.3:                                       ; preds = %bb.by
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.hy, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.hz = icmp sgt i8 %.val.i.i.i.3, -1
  br i1 %i.hz, label %bb.bz, label %.loopexit.i

bb.bz:                                            ; preds = %.lr.ph34.3
  %i.ia = icmp samesign eq i64 %i.hk, 4
  br i1 %i.ia, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.4

.lr.ph34.4:                                       ; preds = %bb.bz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.val.i.i.i.4 = load i8, ptr %i.ib, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.ic = icmp sgt i8 %.val.i.i.i.4, -1
  br i1 %i.ic, label %bb.ca, label %.loopexit.i

bb.ca:                                            ; preds = %.lr.ph34.4
  %i.id = icmp samesign eq i64 %i.hk, 5
  br i1 %i.id, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.5

.lr.ph34.5:                                       ; preds = %bb.ca
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hj, i64 5
  %.val.i.i.i.5 = load i8, ptr %i.ie, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.if = icmp sgt i8 %.val.i.i.i.5, -1
  br i1 %i.if, label %bb.cb, label %.loopexit.i

bb.cb:                                            ; preds = %.lr.ph34.5
  %i.ig = icmp samesign eq i64 %i.hk, 6
  br i1 %i.ig, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.lr.ph34.6

.lr.ph34.6:                                       ; preds = %bb.cb
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hj, i64 6
  %.val.i.i.i.6 = load i8, ptr %i.ih, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.ii = icmp sgt i8 %.val.i.i.i.6, -1
  br i1 %i.ii, label %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i, label %.loopexit.i

.lr.ph34:                                         ; preds = %._crit_edge.i.i
  %.val.i.i.i = load i8, ptr %i.hj, align 1, !alias.scope !121, !noalias !122, !noundef !4
  %i.ij = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.ij, label %bb.bw, label %.loopexit.i

.body130.i:                                       ; preds = %bb.cv, %bb.cr, %bb.cc
  %.sroa.041.4.i = phi i1 [ false, %bb.cv ], [ true, %bb.cc ], [ false, %bb.cr ]
  %.pn80.i = phi { ptr, i32 } [ %i.iw, %bb.cv ], [ %i.ik, %bb.cc ], [ %i.jj, %bb.cr ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsgoPClq0H8JF_9actix_web4http6header19content_disposition16DispositionParamEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #16
          to label %bb.aw unwind label %bb.cu, !noalias !104

bb.cc:                                            ; preds = %bb.ch, %.loopexit.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body130.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %bb.bv, %.lr.ph.i.i.a, %.lr.ph34, %.lr.ph34.1, %.lr.ph34.2, %.lr.ph34.3, %.lr.ph34.4, %.lr.ph34.5, %.lr.ph34.6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cg unwind label %bb.cc, !noalias !104

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i: ; preds = %bb.bt, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %.lr.ph34.6, %._crit_edge.i.i.i, %._crit_edge.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !104
  br i1 %.not77.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsPYQCUnoTxQ_10collection.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.ce, !noalias !104

bb.ce:                                            ; preds = %bb.cd
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.du unwind label %bb.cf, !noalias !104

bb.cf:                                            ; preds = %bb.ce
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !104
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.cd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.i, !noalias !104

bb.cg:                                            ; preds = %.loopexit.i
  %i.io = load i64, ptr %i.c, align 8, !range !7, !noalias !104, !noundef !4
  %i.ip = trunc nuw i64 %i.io to i1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !range !8, !noalias !104, !noundef !4 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ip, label %bb.ch, label %bb.ci, !prof !5

bb.ch:                                            ; preds = %bb.cg
  %i.it = load i64, ptr %i.is, align 8, !noalias !104
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ir, i64 %i.it) #15
          to label %bb.ct unwind label %bb.cc, !noalias !104

bb.ci:                                            ; preds = %bb.cg
  %i.iu = load ptr, ptr %i.is, align 8, !noalias !104, !nonnull !4, !noundef !4 ; 2 uses
  %i.iv = icmp samesign ugt i64 %i.ir, 4
  call void @llvm.assume(i1 %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.iu, ptr noundef nonnull align 1 dereferenceable(5) @11, i64 5, i1 false), !noalias !104
  store i64 %i.ir, ptr %i.m, align 8, !noalias !104
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.iu, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !104
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 5, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !104
  store i64 -1, ptr %i.l, align 8, !noalias !104
  %.sroa.012.0.copyload.i = load i64, ptr %i.x, align 8, !noalias !104 ; 2 uses
  %.sroa.514.0.copyload.i = load ptr, ptr %i.fc, align 8, !noalias !104 ; 3 uses
  %.sroa.617.0.copyload.i = load i64, ptr %i.fe, align 8, !noalias !104 ; 6 uses
  %.not78.i = icmp eq i64 %.sroa.012.0.copyload.i, -1
  br i1 %.not78.i, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.617.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cl unwind label %bb.ck, !noalias !104

bb.ck:                                            ; preds = %bb.cm, %bb.cj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6qzQSbWG68S_13language_tags11LanguageTagEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(72) %i.l) #16
          to label %bb.cv unwind label %bb.cu, !noalias !104

bb.cl:                                            ; preds = %bb.cj
  %i.ix = load i64, ptr %i.b, align 8, !range !7, !noalias !104, !noundef !4
  %i.iy = trunc nuw i64 %i.ix to i1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !range !8, !noalias !104, !noundef !4 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.iy, label %bb.cm, label %bb.cn, !prof !5

bb.cm:                                            ; preds = %bb.cl
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !104
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ja, i64 %i.jc) #15
          to label %bb.ct unwind label %bb.ck, !noalias !104

bb.cn:                                            ; preds = %bb.cl
  %i.jd = load ptr, ptr %i.jb, align 8, !noalias !104, !nonnull !4, !noundef !4 ; 3 uses
  %i.je = icmp ule i64 %.sroa.617.0.copyload.i, %i.ja
  call void @llvm.assume(i1 %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  %.not79.i = icmp eq i64 %.sroa.617.0.copyload.i, 0
  br i1 %.not79.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jd, ptr nonnull align 1 %.sroa.514.0.copyload.i, i64 %.sroa.617.0.copyload.i, i1 false), !noalias !104
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.ci
  %.sroa.655.0.i = phi i64 [ 0, %bb.cn ], [ %.sroa.617.0.copyload.i, %bb.co ], [ %.sroa.617.0.copyload.i, %bb.ci ]
  %.sroa.354.0.i = phi ptr [ %i.jd, %bb.cn ], [ %i.jd, %bb.co ], [ %.sroa.514.0.copyload.i, %bb.ci ]
  %.sroa.053.0.i = phi i64 [ %i.ja, %bb.cn ], [ %i.ja, %bb.co ], [ %.sroa.012.0.copyload.i, %bb.ci ]
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.760.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !104
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.659.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !104
  %i.jf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.053.0.i, ptr %i.jf, align 8, !noalias !104
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.354.0.i, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !104
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.655.0.i, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !104
  store i64 -9223372036854775806, ptr %i.n, align 8, !noalias !104
  %i.jg = load i64, ptr %i.gi, align 8, !alias.scope !123, !noalias !104, !noundef !4 ; 3 uses
  %i.jh = load i64, ptr %i.o, align 8, !range !124, !alias.scope !123, !noalias !104, !noundef !4
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgoPClq0H8JF_9actix_web4http6header19content_disposition16DispositionParamE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.cw unwind label %bb.cr, !noalias !125

bb.cr:                                            ; preds = %bb.cq
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgoPClq0H8JF_9actix_web4http6header19content_disposition16DispositionParamECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.n) #16
          to label %.body130.i unwind label %bb.cs, !noalias !104

bb.cs:                                            ; preds = %bb.cr
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !104
  unreachable

bb.ct:                                            ; preds = %bb.cm, %bb.ch
  unreachable

bb.cu:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dk, %bb.dj, %bb.df, %bb.cv, %bb.ck, %.body130.i, %.body116.i, %.body111.i, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.w, %.body.i
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !102
  unreachable

bb.cv:                                            ; preds = %bb.ck
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs6EFb6a2W5dE_10actix_http6header6shared7charset7CharsetECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #16
          to label %.body130.i unwind label %bb.cu, !noalias !104

bb.cw:                                            ; preds = %bb.cq, %bb.cp
  %i.jm = load ptr, ptr %i.gh, align 8, !alias.scope !123, !noalias !104, !nonnull !4, !noundef !4
  %i.jn = getelementptr inbounds nuw [144 x i8], ptr %i.jm, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.jn, ptr noundef nonnull align 8 dereferenceable(144) %i.n, i64 144, i1 false), !noalias !104
  %i.jo = add i64 %i.jg, 1
  store i64 %i.jo, ptr %i.gi, align 8, !alias.scope !123, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !104
  %i.jp = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !104
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsPYQCUnoTxQ_10collection.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.cw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !104
  invoke void @_RNvMs2_NtCsG258MDvU3F_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ab)
          to label %bb.cx unwind label %bb.dq, !noalias !104

bb.cx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsPYQCUnoTxQ_10collection.exit.i
  %i.jq = load i64, ptr %i.h, align 8, !range !126, !noalias !104, !noundef !4 ; 3 uses
  %i.jr = icmp eq i64 %i.jq, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !104 ; 3 uses
  br i1 %i.jr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !104
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jt, ptr %i.ju, align 8, !alias.scope !102
  store i64 2, ptr %0, align 8, !alias.scope !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgoPClq0H8JF_9actix_web4http6header19content_disposition18ContentDispositionECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y)
          to label %bb.dm unwind label %bb.dl, !noalias !104
end_hunk_0
