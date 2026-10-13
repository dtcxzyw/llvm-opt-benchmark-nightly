Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.08?download=true
inline.NumInlined: 568
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsa_NtCs8yNfvVM1dno_3zip5writeINtNtB6_10zip_writer9ZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE10start_fileReuECslkzCjlEuW1f_5xtask:bb.a
  store i64 0, ptr %i.bj, align 8, !noalias !90
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 50
  %i.bl = load i8, ptr %i.bk, align 2, !range !10, !alias.scope !89, !noalias !92, !noundef !7
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = icmp ugt ptr %i.be, inttoptr (i64 4294967294 to ptr) ; 3 uses
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.bn, label %bb.j, label %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i

bb.i:                                             ; preds = %bb.g
  %spec.select.i.i = zext i1 %i.bn to i64
  %spec.select17.i.i = select i1 %i.bn, i16 24, i16 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.12.0.ph.i = phi i16 [ %spec.select17.i.i, %bb.i ], [ 8, %bb.h ]
  %.sroa.9.0.ph.i = phi i64 [ %spec.select.i.i, %bb.i ], [ 1, %bb.h ]
  %.sroa.7.0.ph.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !90
  store i64 %.sroa.7.0.ph.i, ptr %i.ag, align 8, !noalias !90
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.7.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.9.0.ph.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.bf, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i16 1, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !90
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 50
  store i16 %.sroa.12.0.ph.i, ptr %.sroa.12.0..sroa_idx.i, align 2, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !90
  %i.bo = invoke { ptr, i64 } @_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9serialize(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.ag)
          to label %bb.m unwind label %bb.f, !noalias !93 ; 2 uses

_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bq = load i16, ptr %i.bp, align 8, !range !6, !alias.scope !89, !noalias !92, !noundef !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.bs = load i16, ptr %i.br, align 2, !alias.scope !89, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !90
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.f, !noalias !93

.noexc.i:                                         ; preds = %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i
  %i.bt = load i64, ptr %i.q, align 8, !range !8, !noalias !96, !noundef !7
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !11, !noalias !96, !noundef !7 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.k, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i, !prof !12

bb.k:                                             ; preds = %.noexc.i
  %i.by = load i64, ptr %i.bx, align 8, !noalias !96
  br label %.invoke.i

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i: ; preds = %.noexc.i
  %i.bz = load ptr, ptr %i.bx, align 8, !noalias !96, !nonnull !7, !noundef !7 ; 2 uses
  %i.ca = icmp samesign ule i64 %3, %i.bw
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !96
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !97
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  %i.cb = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.bo, 1      ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  store i64 %i.cc, ptr %i.af, align 8, !noalias !90
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.ce, align 8, !noalias !90
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 %i.cc, ptr %i.cf, align 8, !noalias !90
  %i.cg = load ptr, ptr %i.bi, align 8, !noalias !90, !nonnull !7, !noundef !7
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !90, !noundef !7 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ch)
          to label %.noexc81.i unwind label %bb.t, !noalias !93

.noexc81.i:                                       ; preds = %bb.m
  %i.ci = load i64, ptr %i.cf, align 8, !alias.scope !98, !noalias !90, !noundef !7 ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.cj)
  %.not.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc81.i
  %i.ck = load ptr, ptr %i.ce, align 8, !alias.scope !98, !noalias !90, !nonnull !7, !noundef !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.cg, i64 %i.ch, i1 false), !noalias !93
  %.pre.i.i = load i64, ptr %i.cf, align 8, !alias.scope !98, !noalias !90
  br label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.s, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cq, %bb.s ], [ %i.co, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !90
  br label %.thread.i

bb.o:                                             ; preds = %bb.n, %.noexc81.i
  %i.cm = phi i64 [ %.pre.i.i, %bb.n ], [ %i.ci, %.noexc81.i ]
  %i.cn = add i64 %i.cm, %i.ch
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !98, !noalias !90
  store i64 0, ptr %i.bj, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !90
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.q unwind label %bb.p, !noalias !93

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.r, !noalias !93

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.s, !noalias !93

bb.r:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !93
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !90
  br label %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i

bb.t:                                             ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #25
          to label %.thread.i unwind label %bb.u, !noalias !93

bb.u:                                             ; preds = %.thread.i, %bb.db, %bb.cz, %bb.t
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !93
  unreachable

bb.v:                                             ; preds = %bb.l, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i
  store i64 %i.bw, ptr %i.ad, align 8, !alias.scope !99, !noalias !90
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !99, !noalias !90
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !99, !noalias !90
  %i.ct = icmp sgt i64 %3, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw i64 %3, 30
  %i.cv = add i64 %i.cu, %i.bf                    ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.w, !noalias !93

bb.w:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread.i unwind label %bb.x, !noalias !93

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !93
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.f, !noalias !93

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.cz = load i16, ptr %i.cy, align 8, !alias.scope !89, !noalias !92, !noundef !7 ; 3 uses
  %i.da = icmp ugt i16 %i.cz, 1
  %.pre240.i = load i64, ptr %i.bj, align 8, !noalias !90 ; 4 uses
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i
  %i.db = icmp sgt i64 %.pre240.i, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = zext i16 %i.cz to i64                   ; 5 uses
  %i.dd = add i64 %.pre240.i, %i.cv
  %i.de = urem i64 %i.dd, %i.dc                   ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.aj, %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i
  %i.dg = phi i64 [ %.pre240.i, %bb.y ], [ %.pre.i, %bb.aj ], [ %.pre240.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !90
  store i64 %i.dg, ptr %i.aa, align 8, !noalias !90
  %i.dh = icmp sgt i64 %i.dg, -1
  call void @llvm.assume(i1 %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !90
  %i.di = load ptr, ptr %i.bi, align 8, !noalias !90, !nonnull !7, !noundef !7
  invoke void @_RINvMsd_NtCs8yNfvVM1dno_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef %i.bf, i64 noundef 0, i64 undef, i64 noundef 0, i16 noundef %i.bq, i16 %i.bs, i64 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dg)
          to label %bb.ak unwind label %bb.f, !noalias !93

bb.aa:                                            ; preds = %bb.y
  %i.dj = sub nuw nsw i64 %i.dc, %i.de            ; 3 uses
  %i.dk = icmp samesign ult i64 %i.dj, 6
  br i1 %i.dk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dl = add nuw nsw i64 %i.dj, %i.dc            ; 3 uses
  %i.dm = icmp samesign ult i64 %i.dl, 6
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dn = add nuw nsw i64 %i.dl, %i.dc            ; 3 uses
  %i.do = icmp samesign ult i64 %i.dn, 6
  %i.dp = add nuw nsw i64 %i.dn, %i.dc
  %spec.select = select i1 %i.do, i64 %i.dp, i64 %i.dn
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.09.0.i.lcssa = phi i64 [ %i.dj, %bb.aa ], [ %i.dl, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.dq = add nsw i64 %.sroa.09.0.i.lcssa, -4     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !100
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef range(i64 -65536, 65537) %i.dq, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc86.i unwind label %bb.f, !noalias !93

.noexc86.i:                                       ; preds = %bb.ad
  %i.dr = load i64, ptr %i.p, align 8, !range !8, !noalias !100, !noundef !7
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !11, !noalias !100, !noundef !7 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.ds, label %bb.ae, label %bb.af, !prof !12

bb.ae:                                            ; preds = %.noexc86.i
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !100
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ae, %bb.k
  %i.dx = phi i64 [ %i.du, %bb.ae ], [ %i.bw, %bb.k ]
  %i.dy = phi i64 [ %i.dw, %bb.ae ], [ %i.by, %bb.k ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dx, i64 %i.dy) #26
          to label %.cont.i unwind label %bb.f, !noalias !93

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.thread178.i:                                     ; preds = %bb.ag, %bb.af
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.af:                                            ; preds = %.noexc86.i
  %i.dz = load ptr, ptr %i.dv, align 8, !noalias !100, !nonnull !7, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !100
  store i16 %i.cz, ptr %i.dz, align 1, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !90
  store i64 %i.du, ptr %i.ab, align 8, !noalias !90
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dz, ptr %.sroa.588.0..sroa_idx, align 8, !noalias !90
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.dq, ptr %.sroa.689.0..sroa_idx, align 8, !noalias !90
  %i.ea = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.ag unwind label %.thread178.i, !noalias !93 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !90
  invoke void @_RNvMs1_NtCs8yNfvVM1dno_3zip5writeNtB5_19ExtendedFileOptions24add_extra_data_unchecked(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i16 noundef -24290, ptr noalias noundef nonnull %i.eb, i64 noundef %i.ec)
          to label %bb.ah unwind label %.thread178.i, !noalias !93

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i64, ptr %i.ac, align 8, !range !9, !noalias !90, !noundef !7 ; 2 uses
  %.not69.i = icmp eq i64 %i.ed, -2
  br i1 %.not69.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.14.0.copyload53 = load i64, ptr %.sroa.14.0..sroa_idx52, align 8, !noalias !91
  %.sroa.19.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.19.0.copyload59 = load i64, ptr %.sroa.19.0..sroa_idx58, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !90
  br label %bb.dc

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !90
  %.pre.i = load i64, ptr %i.bj, align 8, !noalias !90
  br label %bb.z

bb.ak:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 259
  %i.ef = load i8, ptr %i.ee, align 1, !range !10, !alias.scope !88, !noalias !101, !noundef !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 204
  %i.eh = xor i8 %i.ef, 1
  store i8 %i.eh, ptr %i.eg, align 4, !noalias !90
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 207 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !90, !noundef !7
  %i.ek = invoke noundef i16 @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.z)
          to label %bb.al unwind label %bb.db, !noalias !93

bb.al:                                            ; preds = %bb.ak
  %i.el = trunc i16 %i.ek to i8
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.el, i8 %i.ej)
  store i8 %..i.i, ptr %i.ei, align 1, !noalias !90
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %i.em, align 8, !noalias !90
  %i.en = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.cv, ptr %i.en, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.z, i64 208, i1 false), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !90
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.ep = invoke { i64, i64 } @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE12get_index_ofBO_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %bb.an unwind label %.thread.i.i, !noalias !102

bb.am:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ar
  br i1 %.sroa.02.2.i.i, label %bb.ba, label %.thread.i

.thread.i.i:                                      ; preds = %bb.ap, %bb.ao, %bb.al
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.an:                                            ; preds = %bb.al
  %i.er = extractvalue { i64, i64 } %i.ep, 0
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !103
  %i.et = invoke { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %bb.aq unwind label %.thread.i.i, !noalias !102 ; 2 uses

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !103
  store ptr %i.eo, ptr %i.n, align 8, !noalias !103
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsm_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !103
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @79, ptr noundef nonnull %i.n)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit.i.i unwind label %.thread.i.i, !noalias !102

bb.aq:                                            ; preds = %bb.ao
  %i.eu = extractvalue { ptr, i64 } %i.et, 0      ; 5 uses
  %i.ev = extractvalue { ptr, i64 } %i.et, 1      ; 5 uses
  store ptr %i.eu, ptr %i.m, align 8, !noalias !103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ev, ptr %i.ew, align 8, !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !103
  %i.ex = invoke { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.as unwind label %bb.ar, !noalias !102 ; 2 uses

bb.ar:                                            ; preds = %bb.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i, %bb.au, %bb.as, %bb.aq
  %.sroa.02.2.i.i = phi i1 [ false, %bb.ax ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i ], [ false, %bb.au ], [ false, %bb.as ], [ true, %bb.aq ]
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = icmp eq i64 %i.ev, 0
  br i1 %i.ez, label %bb.am, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef %i.ev, i64 noundef 1) #27, !noalias !102
  br label %bb.am

bb.as:                                            ; preds = %bb.aq
  %i.fa = extractvalue { ptr, i64 } %i.ex, 0
  %i.fb = extractvalue { ptr, i64 } %i.ex, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.x, i64 208, i1 false), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !103
  invoke void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE11insert_fullCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %1, ptr noalias noundef nonnull %i.fa, i64 noundef %i.fb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.k)
          to label %bb.at unwind label %bb.ar, !noalias !102

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %i.fc, i64 208, i1 false), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !103
  %i.fd = load i64, ptr %i.l, align 8, !range !13, !alias.scope !105, !noalias !103, !noundef !7
  %i.fe = icmp eq i64 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.ar, !noalias !102

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !103
  %i.ff = invoke { i64, i64 } @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE12get_index_ofBO_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.av unwind label %bb.ar, !noalias !102 ; 2 uses

bb.av:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i
  %i.fg = extractvalue { i64, i64 } %i.ff, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %bb.aw, label %bb.ax, !prof !5

bb.aw:                                            ; preds = %bb.av
  %i.fi = extractvalue { i64, i64 } %i.ff, 1
  %i.fj = icmp eq i64 %i.ev, 0
  br i1 %i.fj, label %.thread206.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef %i.ev, i64 noundef 1) #27, !noalias !102
  br label %.thread206.i

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26
          to label %bb.ay unwind label %bb.ar, !noalias !102

bb.ay:                                            ; preds = %bb.ax
  unreachable

.thread206.i:                                     ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !90
  br label %bb.bd

end_hunk_0
