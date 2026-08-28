Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.08?download=true
inline.NumInlined: 568
inline.NumDeleted: 224
begin_hunk_0_@_RINvMsa_NtCs8yNfvVM1dno_3zip5writeINtNtB6_10zip_writer9ZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE10start_fileReuECslkzCjlEuW1f_5xtask:bb.a
  store i64 0, ptr %i.bj, align 8, !noalias !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 50
  %i.bl = load i8, ptr %i.bk, align 2, !range !23, !alias.scope !16, !noalias !24, !noundef !10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !18
  store i64 %.sroa.7.0.ph.i, ptr %i.ag, align 8, !noalias !18
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.7.0.ph.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %.sroa.9.0.ph.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 %i.bf, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i16 1, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !18
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 50
  store i16 %.sroa.12.0.ph.i, ptr %.sroa.12.0..sroa_idx.i, align 2, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !18
  %i.bo = invoke { ptr, i64 } @_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9serialize(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.ag)
          to label %bb.m unwind label %bb.f, !noalias !25 ; 2 uses

_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i, %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bq = load i16, ptr %i.bp, align 8, !range !9, !alias.scope !16, !noalias !24, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %i.bs = load i16, ptr %i.br, align 2, !alias.scope !16, !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !18
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.f, !noalias !25

.noexc.i:                                         ; preds = %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i
  %i.bt = load i64, ptr %i.q, align 8, !range !11, !noalias !32, !noundef !10
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !36, !noalias !32, !noundef !10 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.k, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i, !prof !37

bb.k:                                             ; preds = %.noexc.i
  %i.by = load i64, ptr %i.bx, align 8, !noalias !32
  br label %.invoke.i

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i: ; preds = %.noexc.i
  %i.bz = load ptr, ptr %i.bx, align 8, !noalias !32, !nonnull !10, !noundef !10 ; 2 uses
  %i.ca = icmp samesign ule i64 %3, %i.bw
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32
  %.not.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.l

bb.l:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !38
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  %i.cb = extractvalue { ptr, i64 } %i.bo, 0      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.bo, 1      ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  store i64 %i.cc, ptr %i.af, align 8, !noalias !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.ce, align 8, !noalias !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 %i.cc, ptr %i.cf, align 8, !noalias !18
  %i.cg = load ptr, ptr %i.bi, align 8, !noalias !18, !nonnull !10, !noundef !10
  %i.ch = load i64, ptr %i.bj, align 8, !noalias !18, !noundef !10 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ch)
          to label %.noexc81.i unwind label %bb.t, !noalias !25

.noexc81.i:                                       ; preds = %bb.m
  %i.ci = load i64, ptr %i.cf, align 8, !alias.scope !39, !noalias !18, !noundef !10 ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.cj)
  %.not.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc81.i
  %i.ck = load ptr, ptr %i.ce, align 8, !alias.scope !39, !noalias !18, !nonnull !10, !noundef !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.cg, i64 %i.ch, i1 false), !noalias !25
  %.pre.i.i = load i64, ptr %i.cf, align 8, !alias.scope !39, !noalias !18
  br label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.s, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cq, %bb.s ], [ %i.co, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !18
  br label %.thread.i

bb.o:                                             ; preds = %bb.n, %.noexc81.i
  %i.cm = phi i64 [ %.pre.i.i, %bb.n ], [ %i.ci, %.noexc81.i ]
  %i.cn = add i64 %i.cm, %i.ch
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !39, !noalias !18
  store i64 0, ptr %i.bj, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !18
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.q unwind label %bb.p, !noalias !25

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.r, !noalias !25

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.s, !noalias !25

bb.r:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !25
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECslkzCjlEuW1f_5xtask.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18
  br label %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit.i

bb.t:                                             ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #25
          to label %.thread.i unwind label %bb.u, !noalias !25

bb.u:                                             ; preds = %.thread.i, %bb.da, %bb.cy, %bb.t
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !25
  unreachable

bb.v:                                             ; preds = %bb.l, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslkzCjlEuW1f_5xtask.exit.i.i.i.i
  store i64 %i.bw, ptr %i.ad, align 8, !alias.scope !42, !noalias !18
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !42, !noalias !18
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !42, !noalias !18
  %i.ct = icmp sgt i64 %3, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw i64 %3, 30
  %i.cv = add i64 %i.cu, %i.bf                    ; 2 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.w, !noalias !25

bb.w:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread.i unwind label %bb.x, !noalias !25

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i unwind label %bb.f, !noalias !25

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.cz = load i16, ptr %i.cy, align 8, !alias.scope !16, !noalias !24, !noundef !10 ; 3 uses
  %i.da = icmp ugt i16 %i.cz, 1
  %.pre240.i = load i64, ptr %i.bj, align 8, !noalias !18 ; 4 uses
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i
  %i.db = icmp sgt i64 %.pre240.i, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = zext i16 %i.cz to i64                   ; 3 uses
  %i.dd = add i64 %.pre240.i, %i.cv
  %i.de = urem i64 %i.dd, %i.dc                   ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.ai, %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i
  %i.dg = phi i64 [ %.pre240.i, %bb.y ], [ %.pre.i, %bb.ai ], [ %.pre240.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !18
  store i64 %i.dg, ptr %i.aa, align 8, !noalias !18
  %i.dh = icmp sgt i64 %i.dg, -1
  call void @llvm.assume(i1 %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !18
  %i.di = load ptr, ptr %i.bi, align 8, !noalias !18, !nonnull !10, !noundef !10
  invoke void @_RINvMsd_NtCs8yNfvVM1dno_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef %i.bf, i64 noundef 0, i64 undef, i64 noundef 0, i16 noundef %i.bq, i16 %i.bs, i64 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dg)
          to label %bb.aj unwind label %bb.f, !noalias !25

bb.aa:                                            ; preds = %bb.y
  %i.dj = sub nuw nsw i64 %i.dc, %i.de
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.09.0.i = phi i64 [ %i.dj, %bb.aa ], [ %i.dl, %bb.ab ] ; 3 uses
  %i.dk = icmp samesign ult i64 %.sroa.09.0.i, 6
  %i.dl = add nuw nsw i64 %.sroa.09.0.i, %i.dc
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = add nsw i64 %.sroa.09.0.i, -4           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !43
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef range(i64 -65536, 65537) %i.dm, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc86.i unwind label %bb.f, !noalias !25

.noexc86.i:                                       ; preds = %bb.ac
  %i.dn = load i64, ptr %i.p, align 8, !range !11, !noalias !43, !noundef !10
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !36, !noalias !43, !noundef !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.do, label %bb.ad, label %bb.ae, !prof !37

bb.ad:                                            ; preds = %.noexc86.i
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !43
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.ad, %bb.k
  %i.dt = phi i64 [ %i.dq, %bb.ad ], [ %i.bw, %bb.k ]
  %i.du = phi i64 [ %i.ds, %bb.ad ], [ %i.by, %bb.k ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dt, i64 %i.du) #26
          to label %.cont.i unwind label %bb.f, !noalias !25

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.thread178.i:                                     ; preds = %bb.af, %bb.ae
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ae:                                            ; preds = %.noexc86.i
  %i.dv = load ptr, ptr %i.dr, align 8, !noalias !43, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !43
  store i16 %i.cz, ptr %i.dv, align 1, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18
  store i64 %i.dq, ptr %i.ab, align 8, !noalias !18
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.dv, ptr %.sroa.588.0..sroa_idx, align 8, !noalias !18
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.dm, ptr %.sroa.689.0..sroa_idx, align 8, !noalias !18
  %i.dw = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE16into_boxed_sliceCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.af unwind label %.thread178.i, !noalias !25 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dx = extractvalue { ptr, i64 } %i.dw, 0
  %i.dy = extractvalue { ptr, i64 } %i.dw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18
  invoke void @_RNvMs1_NtCs8yNfvVM1dno_3zip5writeNtB5_19ExtendedFileOptions24add_extra_data_unchecked(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i16 noundef -24290, ptr noalias noundef nonnull %i.dx, i64 noundef %i.dy)
          to label %bb.ag unwind label %.thread178.i, !noalias !25

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i64, ptr %i.ac, align 8, !range !12, !noalias !18, !noundef !10 ; 2 uses
  %.not69.i = icmp eq i64 %i.dz, -2
  br i1 %.not69.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.14.0.copyload53 = load i64, ptr %.sroa.14.0..sroa_idx52, align 8, !noalias !22
  %.sroa.19.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.19.0.copyload59 = load i64, ptr %.sroa.19.0..sroa_idx58, align 8, !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18
  br label %bb.db

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18
  %.pre.i = load i64, ptr %i.bj, align 8, !noalias !18
  br label %bb.z

bb.aj:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 259
  %i.eb = load i8, ptr %i.ea, align 1, !range !23, !alias.scope !13, !noalias !46, !noundef !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 204
  %i.ed = xor i8 %i.eb, 1
  store i8 %i.ed, ptr %i.ec, align 4, !noalias !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.z, i64 207 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !18, !noundef !10
  %i.eg = invoke noundef i16 @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.z)
          to label %bb.ak unwind label %bb.da, !noalias !25

bb.ak:                                            ; preds = %bb.aj
  %i.eh = trunc i16 %i.eg to i8
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.eh, i8 %i.ef)
  store i8 %..i.i, ptr %i.ee, align 1, !noalias !18
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %i.ei, align 8, !noalias !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.cv, ptr %i.ej, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.z, i64 208, i1 false), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.el = invoke { i64, i64 } @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE12get_index_ofBO_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek)
          to label %bb.am unwind label %.thread.i.i, !noalias !47

bb.al:                                            ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.aq
  br i1 %.sroa.02.2.i.i, label %bb.az, label %.thread.i

.thread.i.i:                                      ; preds = %bb.ao, %bb.an, %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.am:                                            ; preds = %bb.ak
  %i.en = extractvalue { i64, i64 } %i.el, 0
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !50
  %i.ep = invoke { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ek)
          to label %bb.ap unwind label %.thread.i.i, !noalias !47 ; 2 uses

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50
  store ptr %i.ek, ptr %i.n, align 8, !noalias !50
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsm_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !50
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @79, ptr noundef nonnull %i.n)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit.i.i unwind label %.thread.i.i, !noalias !47

bb.ap:                                            ; preds = %bb.an
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0      ; 5 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1      ; 5 uses
  store ptr %i.eq, ptr %i.m, align 8, !noalias !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.er, ptr %i.es, align 8, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !50
  %i.et = invoke { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.ar unwind label %bb.aq, !noalias !47 ; 2 uses

bb.aq:                                            ; preds = %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i, %bb.at, %bb.ar, %bb.ap
  %.sroa.02.2.i.i = phi i1 [ false, %bb.aw ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i ], [ false, %bb.at ], [ false, %bb.ar ], [ true, %bb.ap ]
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %i.er, 0
  br i1 %i.ev, label %bb.al, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef %i.er, i64 noundef 1) #27, !noalias !47
  br label %bb.al

bb.ar:                                            ; preds = %bb.ap
  %i.ew = extractvalue { ptr, i64 } %i.et, 0
  %i.ex = extractvalue { ptr, i64 } %i.et, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull align 8 dereferenceable(208) %i.x, i64 208, i1 false), !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !50
  invoke void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE11insert_fullCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %1, ptr noalias noundef nonnull %i.ew, i64 noundef %i.ex, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.k)
          to label %bb.as unwind label %bb.aq, !noalias !47

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %i.ey, i64 208, i1 false), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !50
  %i.ez = load i64, ptr %i.l, align 8, !range !54, !alias.scope !55, !noalias !50, !noundef !10
  %i.fa = icmp eq i64 %i.ez, 2
  br i1 %i.fa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i unwind label %bb.aq, !noalias !47

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !50
  %i.fb = invoke { i64, i64 } @_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeENtNtCs8yNfvVM1dno_3zip5types11ZipFileDataE12get_index_ofBO_ECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.au unwind label %bb.aq, !noalias !47 ; 2 uses

bb.au:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yNfvVM1dno_3zip5types11ZipFileDataEECslkzCjlEuW1f_5xtask.exit.i.i
  %i.fc = extractvalue { i64, i64 } %i.fb, 0
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %bb.au
  %i.fe = extractvalue { i64, i64 } %i.fb, 1
  %i.ff = icmp eq i64 %i.er, 0
  br i1 %i.ff, label %.thread206.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i: ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef %i.er, i64 noundef 1) #27, !noalias !47
  br label %.thread206.i

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #26
          to label %bb.ax unwind label %bb.aq, !noalias !47

bb.ax:                                            ; preds = %bb.aw
  unreachable

.thread206.i:                                     ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i15.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !18
  br label %bb.bc

bb.ay:                                            ; preds = %bb.az
end_hunk_0
