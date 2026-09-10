Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parser-1c08171a2541c4e2.parser.a236489b19f90125-cgu.09?download=true
inline.NumInlined: 107
inline.NumDeleted: 61
begin_hunk_0_@_RNvMNtCsdVrXiLXuAnx_6parser11frontmatterNtB2_12ScriptSource5parse:bb.a
bb.bj:                                            ; preds = %bb.ay
  %i.lo = extractvalue { ptr, i64 } %i.kk, 0
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.gi                    ; 2 uses
  %i.lr = add i64 %i.lq, %i.kl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.lq, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.lr, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.lu, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4159.0..sroa_idx, align 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 0, ptr %.sroa.5160.0..sroa_idx, align 8
  invoke fastcc void @_RNvMs_NtCsdVrXiLXuAnx_6parser11frontmatterNtB4_16FrontmatterError17push_visible_span(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.j, i64 noundef %i.em, i64 noundef %i.ew)
          to label %bb.bk unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lv, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bi

bb.bl:                                            ; preds = %bb.au
  %i.lw = add i64 %.sroa.0.1.i.i, %i.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.ib, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 %i.lw, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store i64 0, ptr %i.lz, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4154.0..sroa_idx, align 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.5155.0..sroa_idx, align 8
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lz) #18
          to label %bb.bo unwind label %bb.bm, !noalias !201

bb.bm:                                            ; preds = %bb.bl
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser11frontmatter16FrontmatterErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n) #16
          to label %.body unwind label %bb.bn, !noalias !201

bb.bn:                                            ; preds = %bb.bm
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !201
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.mc = load ptr, ptr %.sroa.4154.0..sroa_idx, align 8, !alias.scope !202, !noalias !201, !nonnull !9, !noundef !9 ; 2 uses
  store i64 %i.em, ptr %i.mc, align 8, !noalias !201
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i64 %i.ew, ptr %i.md, align 8, !noalias !201
  store i64 1, ptr %.sroa.5155.0..sroa_idx, align 8, !alias.scope !202, !noalias !201
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.me, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 2, ptr %0, align 8
  br label %bb.bi

bb.bp:                                            ; preds = %bb.cf, %bb.bw, %bb.bi
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdVrXiLXuAnx_6parser.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdVrXiLXuAnx_6parser.exit: ; preds = %bb.bp
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.be

._crit_edge:                                      ; preds = %bb.ca, %.critedge656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ae, ptr %i.q, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsdVrXiLXuAnx_6parser, ptr %.sroa.4132.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @10, ptr noundef nonnull %i.q)
          to label %bb.bt unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %.critedge656, %bb.ca
  %.sroa.074.0556 = phi i64 [ %i.mh, %bb.ca ], [ %i.ho, %.critedge656 ]
  %i.mh = add i64 %.sroa.074.0556, -1             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.mi = load ptr, ptr %i.gl, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.mj = load i64, ptr %i.gn, align 8, !noundef !9 ; 4 uses
  %i.mk = icmp ugt i64 %i.mh, %i.mj
  br i1 %i.mk, label %.invoke, label %bb.bs, !prof !12

bb.bs:                                            ; preds = %.lr.ph
  %i.ml = icmp eq i64 %i.mh, %i.mj
  br i1 %i.ml, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit

bb.bt:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %2, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %2, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store i64 0, ptr %i.mo, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4145.0..sroa_idx, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.5146.0..sroa_idx, align 8
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mo) #18
          to label %bb.bw unwind label %bb.bu, !noalias !203

bb.bu:                                            ; preds = %bb.bt
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser11frontmatter16FrontmatterErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s) #16
          to label %.body unwind label %bb.bv, !noalias !203

bb.bv:                                            ; preds = %bb.bu
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !203
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.mr = load ptr, ptr %.sroa.4145.0..sroa_idx, align 8, !alias.scope !204, !noalias !203, !nonnull !9, !noundef !9 ; 2 uses
  store i64 %i.em, ptr %i.mr, align 8, !noalias !203
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.ew, ptr %i.ms, align 8, !noalias !203
  store i64 1, ptr %.sroa.5146.0..sroa_idx, align 8, !alias.scope !204, !noalias !203
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mt, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 2, ptr %0, align 8
  br label %bb.bp

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.bs
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mh
  %i.mv = load i8, ptr %i.mu, align 1, !alias.scope !205, !noundef !9
  %i.mw = icmp sgt i8 %i.mv, -65
  br i1 %i.mw, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %.invoke, !prof !13

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread: ; preds = %bb.bs, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  invoke void @_RNvNtCs1FJxqhktgJ4_6winnow6stream7memmem_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7396.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9397.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mi, i64 noundef range(i64 0, -9223372036854775808) %i.mh)
          to label %_RNvNtCs1FJxqhktgJ4_6winnow6stream6memmem.exit unwind label %.loopexit

_RNvNtCs1FJxqhktgJ4_6winnow6stream6memmem.exit:   ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread
  %i.mx = load i64, ptr %i.x, align 8, !range !8, !noundef !9
  %i.my = trunc nuw i64 %i.mx to i1
  br i1 %i.my, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %_RNvNtCs1FJxqhktgJ4_6winnow6stream6memmem.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.nb = add i64 %i.na, 1                        ; 8 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit346, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not.i337 = icmp ult i64 %i.nb, %.sroa.9397.0
  br i1 %.not.i337, label %bb.bz, label %.split3.i338

.split3.i338:                                     ; preds = %bb.by
  %i.nd = icmp eq i64 %i.nb, %.sroa.9397.0
  br i1 %i.nd, label %.split.i339, label %.invoke

bb.bz:                                            ; preds = %bb.by
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.7396.0, i64 %i.nb
  %i.nf = load i8, ptr %i.ne, align 1, !alias.scope !206, !noalias !207, !noundef !9
  %i.ng = icmp sgt i8 %i.nf, -65
  br i1 %i.ng, label %.split.i339, label %.invoke

.split.i339:                                      ; preds = %bb.bz, %.split3.i338
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.7396.0, i64 %i.nb
  %i.ni = sub i64 %.sroa.9397.0, %i.nb
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit346

bb.ca:                                            ; preds = %_RNvNtCs1FJxqhktgJ4_6winnow6stream6memmem.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.nj = icmp ugt i64 %i.mh, 2
  br i1 %i.nj, label %.lr.ph, label %._crit_edge

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit346: ; preds = %bb.bx, %.split.i339
  %.sroa.8401.0 = phi i64 [ %.sroa.9397.0, %bb.bx ], [ %i.ni, %.split.i339 ] ; 5 uses
  %.sroa.6400.0 = phi ptr [ %.sroa.7396.0, %bb.bx ], [ %i.nh, %.split.i339 ] ; 7 uses
  store ptr %.sroa.6400.0, ptr %i.ah, align 8, !captures !171
  store i64 %.sroa.8401.0, ptr %i.aj, align 8
  %i.nk = ptrtoint ptr %.sroa.6400.0 to i64
  %i.nl = sub i64 %i.nk, %i.el
  %.not.i347 = icmp ult i64 %i.mh, %.sroa.8401.0
  br i1 %.not.i347, label %bb.cb, label %.split3.i348

.split3.i348:                                     ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit346
  %i.nm = icmp eq i64 %i.mh, %.sroa.8401.0
  br i1 %i.nm, label %.split.i349, label %.invoke

bb.cb:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit346
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.6400.0, i64 %i.mh
  %i.no = load i8, ptr %i.nn, align 1, !alias.scope !208, !noalias !209, !noundef !9
  %i.np = icmp sgt i8 %i.no, -65
  br i1 %i.np, label %.split.i349, label %.invoke

.split.i349:                                      ; preds = %bb.cb, %.split3.i348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6400.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.nq = sub i64 %i.ei, %i.mh
  store i64 %i.nq, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.w, ptr %i.t, align 8
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4136.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @12, ptr noundef nonnull %i.t)
          to label %bb.cc unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %.split.i349
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.6400.0, i64 %i.mh
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.nl, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i64 %i.nt, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store i64 0, ptr %i.nw, align 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4140.0..sroa_idx, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.5141.0..sroa_idx, align 8
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nw) #18
          to label %bb.cf unwind label %bb.cd, !noalias !210

bb.cd:                                            ; preds = %bb.cc
  %i.nx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser11frontmatter16FrontmatterErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v) #16
          to label %.body unwind label %bb.ce, !noalias !210

bb.ce:                                            ; preds = %bb.cd
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !210
  unreachable

bb.cf:                                            ; preds = %bb.cc
  %i.nz = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !alias.scope !211, !noalias !210, !nonnull !9, !noundef !9 ; 2 uses
  store i64 %i.em, ptr %i.nz, align 8, !noalias !210
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i64 %i.ew, ptr %i.oa, align 8, !noalias !210
  store i64 1, ptr %.sroa.5141.0..sroa_idx, align 8, !alias.scope !211, !noalias !210
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ob, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bp

bb.cg:                                            ; preds = %.body
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsdVrXiLXuAnx_6parser11frontmatterNtB4_16FrontmatterError17push_visible_span(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !214, !noundef !9 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !215, !alias.scope !214, !noundef !9
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEE8grow_oneCsdVrXiLXuAnx_6parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #18
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdVrXiLXuAnx_6parser11frontmatter16FrontmatterErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #16
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !214, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.j, align 8
  %i.k = add i64 %i.c, 1
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECsdVrXiLXuAnx_6parser.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !alias.scope !238, !noalias !239, !noundef !9 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !alias.scope !238, !noalias !239, !noundef !9
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !alias.scope !238, !noalias !239, !noundef !9
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit16.i.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !alias.scope !238, !noalias !239, !noundef !9
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit16.i.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit14.i.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit16.i.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdVrXiLXuAnx_6parser.exit12.i.i.i.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0EBE_.exit [
    i32 10, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 11, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 12, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 13, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 133, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 8232, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 8233, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 8206, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 8207, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 9, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
    i32 32, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
  ]

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i: ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.c, %i.e
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = icmp eq ptr %i.an, %i.a
  br i1 %i.as, label %_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0EBE_.exit, label %.lr.ph.i.i.i

_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0EBE_.exit: ; preds = %bb.c, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i
  %storemerge.i.i6.i = phi i64 [ %i.c, %bb.c ], [ %1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0ENtB5_8Searcher4nextB1b_.exit.i.i.i ] ; 8 uses
  %i.at = icmp eq i64 %storemerge.i.i6.i, 0
  br i1 %i.at, label %_RINvMNtCshzWfHUSfYae_4core3stre5rfindcECsdVrXiLXuAnx_6parser.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre4findNCNvNtCsdVrXiLXuAnx_6parser11frontmatter14strip_ws_lines0EBE_.exit
  %i.au = icmp ugt i64 %storemerge.i.i6.i, %1
  br i1 %i.au, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread15, label %bb.e, !prof !12
end_hunk_0
