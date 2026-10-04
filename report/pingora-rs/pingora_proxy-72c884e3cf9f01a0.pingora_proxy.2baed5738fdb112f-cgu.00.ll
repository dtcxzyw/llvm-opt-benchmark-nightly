Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_proxy-72c884e3cf9f01a0.pingora_proxy.2baed5738fdb112f-cgu.00?download=true
inline.NumInlined: 281
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter:bb.a
  br i1 %i.lt, label %.noexc10.i.i.i.i, label %.noexc11.i.i.i.i, !prof !10

bb.bj:                                            ; preds = %bb.bh
  %.sroa.68.0.copyload.i.i.i.i = load i8, ptr %i.hp, align 8, !noalias !806
  %i.lu = trunc nuw i8 %.sroa.68.0.copyload.i.i.i.i to i1
  br i1 %i.lu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs3Kwrwkha1e5_13pingora_proxy(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i.i.i.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i.i.i.i) #23
          to label %bb.bo unwind label %.loopexit275.i.i, !noalias !804

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEECs3Kwrwkha1e5_13pingora_proxy(ptr nonnull %.sroa.46.0.copyload.i.i.i.i)
          to label %bb.bo unwind label %.loopexit275.i.i, !noalias !804

.noexc10.i.i.i.i:                                 ; preds = %bb.bi
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs3gSIjo26Km0_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !804

.noexc13.i.i.i:                                   ; preds = %.noexc10.i.i.i.i
  unreachable

.noexc11.i.i.i.i:                                 ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i.i.i.i) ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i.i.i.i, i64 40
  store atomic i64 %i.ls, ptr %i.lv release, align 8, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !807
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bg
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3gSIjo26Km0_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3T_4SyncNtB3c_10UnwindSafeEL_EEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #22
          to label %.body.i.i.i unwind label %bb.bn, !noalias !804

bb.bn:                                            ; preds = %bb.bm
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !804
  unreachable

.loopexit275.i.i:                                 ; preds = %bb.bl, %bb.bk, %bb.bd, %_RNvMs4_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i.i.i.i
  %lpad.loopexit276.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i:                           ; preds = %.noexc10.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i, %.loopexit275.i.i, %bb.bm
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.bm ], [ %lpad.loopexit276.i.i, %.loopexit275.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q) #22
          to label %.thread241.i.i unwind label %bb.br, !noalias !804

.thread.i.i.i:                                    ; preds = %_RNvMs4_NtNtCs3gSIjo26Km0_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.az, %.noexc155.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !799
  store i32 0, ptr %i.hk, align 8, !noalias !799
  br label %.loopexit278.i.i

bb.bo:                                            ; preds = %.noexc11.i.i.i.i, %bb.bl, %bb.bk
  %i.lx = extractvalue { i32, i32 } %i.lr, 1
  %i.ly = extractvalue { i32, i32 } %i.lr, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !799
  store i32 %i.ly, ptr %i.hk, align 8, !noalias !799
  store i32 %i.lx, ptr %i.hq, align 4, !noalias !799
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bp, label %.loopexit278.i.i

.loopexit278.i.i:                                 ; preds = %bb.bo, %.thread.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q)
          to label %bb.bt unwind label %.thread244.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !784

bb.bp:                                            ; preds = %bb.bo
  %i.ma = load ptr, ptr %i.jk, align 8, !noalias !804, !nonnull !5, !noundef !5
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 184
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !804, !nonnull !5, !noundef !5 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load i64, ptr %i.md, align 8, !range !9, !noalias !804, !noundef !5
  %i.mf = trunc nuw i64 %i.me to i1
  br i1 %i.mf, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !804
  %i.mi = call i64 @llvm.uadd.sat.i64(i64 %i.mh, i64 1)
  br label %bb.bs

bb.br:                                            ; preds = %.body.i.i.i
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !804
  unreachable

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.3.0.i153.i.i = phi i64 [ %i.mi, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.0.0.i154.i.i = phi i64 [ 1, %bb.bq ], [ 0, %bb.bp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !799
  store i64 %.sroa.0.0.i154.i.i, ptr %i.w, align 8, !noalias !783
  store i64 %.sroa.3.0.i153.i.i, ptr %.sroa.4.0..sroa_idx198.i.i, align 8, !noalias !783
  store ptr %.sroa.0.1.i137.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !783
  store i64 %.sroa.4.1.i136.i.i, ptr %.sroa.7199.0..sroa_idx.i.i, align 8, !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !783
  invoke void @_RNvMNtNtCs3gSIjo26Km0_14regex_automata4util8capturesNtB2_8Captures17get_group_by_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 5)
          to label %bb.bu unwind label %.loopexit279.loopexit.i.i, !noalias !784

bb.bt:                                            ; preds = %.loopexit278.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !799
  store i64 -9223372036854775808, ptr %i.bd, align 8, !alias.scope !784, !noalias !785
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit192.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit192.i.i: ; preds = %bb.cx, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !783
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ops5range5RangejEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !783
  br label %bb.db

.loopexit279.loopexit.i.i:                        ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %bb.bs
  %lpad.loopexit287.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit279.i.i

.loopexit279.loopexit.split-lp.i.i:               ; preds = %bb.cw
  %lpad.loopexit.split-lp288.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit279.i.i

.loopexit.split-lp280.i.i:                        ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i
  %lpad.loopexit.split-lp282.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit279.i.i

.loopexit279.i.i:                                 ; preds = %.loopexit.split-lp280.i.i, %.loopexit279.loopexit.split-lp.i.i, %.loopexit279.loopexit.i.i
  %lpad.phi283.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp282.i.i, %.loopexit.split-lp280.i.i ], [ %lpad.loopexit287.i.i, %.loopexit279.loopexit.i.i ], [ %lpad.loopexit.split-lp288.i.i, %.loopexit279.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i)
          to label %.thread241.i.i unwind label %bb.da, !noalias !784

bb.bu:                                            ; preds = %bb.bs
  %i.mk = load i64, ptr %i.t, align 8, !range !9, !noalias !783, !noundef !5
  %i.ml = trunc nuw i64 %i.mk to i1
  br i1 %i.ml, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.mm = load i64, ptr %.sroa.7199.0..sroa_idx.i.i, align 8, !noalias !783, !noundef !5 ; 6 uses
  %i.mn = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !783, !nonnull !5, !noundef !5 ; 6 uses
  %i.mo = load i64, ptr %i.hr, align 8, !noalias !783, !noundef !5 ; 9 uses
  %i.mp = load i64, ptr %i.hs, align 8, !noalias !783, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !783
  %i.mq = icmp ugt i64 %i.mo, %i.mp
  %i.mr = icmp ugt i64 %i.mp, %i.mm
  %or.cond.i.i158.i.i = or i1 %i.mq, %i.mr
  br i1 %or.cond.i.i158.i.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, label %bb.bw, !prof !808

bb.bw:                                            ; preds = %bb.bv
  %i.ms = icmp eq i64 %i.mo, %i.mm
  br i1 %i.ms, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mt = icmp eq i64 %i.mo, 0
  br i1 %i.mt, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.mu = icmp eq i64 %i.mp, %i.mm
  br i1 %i.mu, label %bb.cb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !809, !noalias !810, !noundef !5
  %i.mx = icmp sgt i8 %i.mw, -65
  br i1 %i.mx, label %bb.by, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, !prof !811

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i: ; preds = %bb.by
  %i.my = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mp
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !809, !noalias !810, !noundef !5
  %i.na = icmp sgt i8 %i.mz, -65
  br i1 %i.na, label %bb.cb, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, !prof !812

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i, %bb.cl, %bb.ch, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i, %bb.bz, %bb.bv
  %i.nb = phi ptr [ %i.mn, %bb.bv ], [ %i.mn, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i ], [ %i.mn, %bb.bz ], [ %i.oj, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i ], [ %i.oj, %bb.cl ], [ %i.oj, %bb.ch ]
  %i.nc = phi i64 [ %i.mm, %bb.bv ], [ %i.mm, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i ], [ %i.mm, %bb.bz ], [ %i.oi, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i ], [ %i.oi, %bb.cl ], [ %i.oi, %bb.ch ]
  %i.nd = phi i64 [ %i.mo, %bb.bv ], [ %i.mo, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i ], [ %i.mo, %bb.bz ], [ %i.ok, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i ], [ %i.ok, %bb.cl ], [ %i.ok, %bb.ch ]
  %i.ne = phi i64 [ %i.mp, %bb.bv ], [ %i.mp, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i ], [ %i.mp, %bb.bz ], [ %i.ol, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i ], [ %i.ol, %bb.cl ], [ %i.ol, %bb.ch ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nb, i64 noundef %i.nc, i64 noundef %i.nd, i64 noundef %i.ne, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #24
          to label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.cont.i.i unwind label %.loopexit.split-lp280.i.i, !noalias !784

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.cont.i.i: ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i
  unreachable

bb.ca:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !783
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.ce, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.cf, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.cc, %bb.cc, %bb.cb, %bb.ca
  %.sroa.9.0.i.i = phi i64 [ undef, %bb.ca ], [ 0, %.preheader.i.i.i ], [ undef, %bb.cc ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ %i.of, %bb.cf ], [ undef, %.lr.ph.i.i.i ], [ undef, %bb.ce ], [ undef, %.preheader56.i.i.i.preheader ], [ %i.nv, %.preheader56.i.i.i ] ; 4 uses
  %.sroa.016.0.i.i = phi i1 [ false, %bb.ca ], [ true, %.preheader.i.i.i ], [ false, %bb.cc ], [ false, %bb.cb ], [ false, %bb.cc ], [ %i.oa, %bb.cf ], [ %i.oa, %.lr.ph.i.i.i ], [ false, %bb.ce ], [ false, %.preheader56.i.i.i.preheader ], [ true, %.preheader56.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !783
  invoke void @_RNvMNtNtCs3gSIjo26Km0_14regex_automata4util8capturesNtB2_8Captures17get_group_by_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 3)
          to label %bb.cg unwind label %.loopexit279.loopexit.i.i, !noalias !784

bb.cb:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i.i.i, %bb.by, %bb.bw
  %i.nf = sub nuw i64 %i.mp, %i.mo                ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo ; 3 uses
  switch i64 %i.nf, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.nh = load i8, ptr %i.ng, align 1, !alias.scope !813, !noalias !814, !noundef !5 ; 2 uses
  switch i8 %i.nh, label %bb.cd [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.cb
  %.pr.i.i.i = load i8, ptr %i.ng, align 1, !alias.scope !813, !noalias !814
  br label %bb.cd

bb.cd:                                            ; preds = %thread-pre-split.i.i.i, %bb.cc
  %i.ni = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.nh, %bb.cc ]
  %cond.i.i.i = icmp eq i8 %i.ni, 43              ; 2 uses
  %i.nj = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.nf, %i.nj    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i160.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.nk = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.nk, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.cd
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.ce
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i161.i.i515, i64 1
  %i.nm = add nsw i64 %.sroa.15.1.i.i.i514, -1    ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.nm, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.cd, %.preheader56.i.i.i
  %.sroa.0.1.i161.i.i515 = phi ptr [ %i.nl, %.preheader56.i.i.i ], [ %.sroa.0.0.i160.i.i, %bb.cd ] ; 2 uses
  %.sroa.15.1.i.i.i514 = phi i64 [ %i.nm, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.cd ]
  %.sroa.042.0.i.i.i513 = phi i64 [ %i.nv, %.preheader56.i.i.i ], [ 0, %bb.cd ]
  %i.nn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i513, i64 10) ; 2 uses
  %i.no = extractvalue { i64, i1 } %i.nn, 1
  br i1 %i.no, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.ce, !prof !10

bb.ce:                                            ; preds = %.preheader56.i.i.i.preheader
  %i.np = extractvalue { i64, i1 } %i.nn, 0       ; 2 uses
  %i.nq = load i8, ptr %.sroa.0.1.i161.i.i515, align 1, !alias.scope !813, !noalias !814, !noundef !5
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -48                  ; 2 uses
  %i.nt = icmp ugt i32 %i.ns, 9
  %i.nu = zext nneg i32 %i.ns to i64
  %i.nv = add i64 %i.np, %i.nu                    ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %i.np
  %or.cond261.i.i = select i1 %i.nt, i1 true, i1 %i.nw, !prof !775
  br i1 %or.cond261.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !775

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.cf
  %.sroa.0.269.i.i.i = phi ptr [ %i.od, %bb.cf ], [ %.sroa.0.0.i160.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.oc, %bb.cf ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.of, %bb.cf ], [ 0, %.preheader.i.i.i ]
  %i.nx = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !813, !noalias !814, !noundef !5
  %i.ny = zext i8 %i.nx to i32
  %i.nz = add nsw i32 %i.ny, -48                  ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 10                  ; 3 uses
  br i1 %i.oa, label %bb.cf, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %i.ob = mul i64 %.sroa.042.267.i.i.i, 10
  %i.oc = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.oe = zext nneg i32 %i.nz to i64
  %i.of = add i64 %i.ob, %i.oe                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.oc, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

bb.cg:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.og = load i64, ptr %i.s, align 8, !range !9, !noalias !783, !noundef !5
  %i.oh = trunc nuw i64 %i.og to i1
  br i1 %i.oh, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.oi = load i64, ptr %.sroa.7199.0..sroa_idx.i.i, align 8, !noalias !783, !noundef !5 ; 6 uses
  %i.oj = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !783, !nonnull !5, !noundef !5 ; 6 uses
  %i.ok = load i64, ptr %i.ht, align 8, !noalias !783, !noundef !5 ; 9 uses
  %i.ol = load i64, ptr %i.hu, align 8, !noalias !783, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !783
  %i.om = icmp ugt i64 %i.ok, %i.ol
  %i.on = icmp ugt i64 %i.ol, %i.oi
  %or.cond.i.i162.i.i = or i1 %i.om, %i.on
  br i1 %or.cond.i.i162.i.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, label %bb.ci, !prof !808

bb.ci:                                            ; preds = %bb.ch
  %i.oo = icmp eq i64 %i.ok, %i.oi
  br i1 %i.oo, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.op = icmp eq i64 %i.ok, 0
  br i1 %i.op, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %i.oq = icmp eq i64 %i.ol, %i.oi
  br i1 %i.oq, label %bb.cn, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ok
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !815, !noalias !816, !noundef !5
  %i.ot = icmp sgt i8 %i.os, -65
  br i1 %i.ot, label %bb.ck, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, !prof !811

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i: ; preds = %bb.ck
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ol
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !815, !noalias !816, !noundef !5
  %i.ow = icmp sgt i8 %i.ov, -65
  br i1 %i.ow, label %bb.cn, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread3.i.invoke.i.i, !prof !812

bb.cm:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !783
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.cq, %.preheader56.i172.i.i.preheader, %.lr.ph.i182.i.i, %bb.co, %bb.co, %bb.cn, %bb.cm
  %.not109.i.i = icmp ult i64 %.sroa.9.0.i.i, %.sroa.4.1.i
  %or.cond116.i.i = select i1 %.sroa.016.0.i.i, i1 %.not109.i.i, i1 false
  br i1 %or.cond116.i.i, label %6, label %bb.cz

bb.cn:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.i164.i.i, %bb.ck, %bb.ci
  %i.ox = sub nuw i64 %i.ol, %i.ok                ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ok ; 3 uses
  switch i64 %i.ox, label %thread-pre-split.i187.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn
  %i.oz = load i8, ptr %i.oy, align 1, !alias.scope !817, !noalias !818, !noundef !5 ; 2 uses
  switch i8 %i.oz, label %bb.cp [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i187.i.i:                        ; preds = %bb.cn
  %.pr.i188.i.i = load i8, ptr %i.oy, align 1, !alias.scope !817, !noalias !818
  br label %bb.cp

bb.cp:                                            ; preds = %thread-pre-split.i187.i.i, %bb.co
  %i.pa = phi i8 [ %.pr.i188.i.i, %thread-pre-split.i187.i.i ], [ %i.oz, %bb.co ]
  %cond.i168.i.i = icmp eq i8 %i.pa, 43           ; 2 uses
  %i.pb = sext i1 %cond.i168.i.i to i64
  %.sroa.15.0.i169.i.i = add nsw i64 %i.ox, %i.pb ; 4 uses
  %.sroa.0.0.idx.i170.i.i = zext i1 %cond.i168.i.i to i64
  %.sroa.0.0.i171.i.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.sroa.0.0.idx.i170.i.i ; 2 uses
  %i.pc = icmp samesign ult i64 %.sroa.15.0.i169.i.i, 17
  br i1 %i.pc, label %.preheader.i180.i.i, label %.preheader56.i172.i.i.preheader

.preheader.i180.i.i:                              ; preds = %bb.cp
  %.not5366.i181.i.i = icmp eq i64 %.sroa.15.0.i169.i.i, 0
  br i1 %.not5366.i181.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i, label %.lr.ph.i182.i.i

.preheader56.i172.i.i:                            ; preds = %bb.cq
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i175.i.i518, i64 1
  %i.pe = add nsw i64 %.sroa.15.1.i174.i.i517, -1 ; 2 uses
  %.not52.i176.i.i = icmp eq i64 %i.pe, 0
  br i1 %.not52.i176.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i, label %.preheader56.i172.i.i.preheader

.preheader56.i172.i.i.preheader:                  ; preds = %bb.cp, %.preheader56.i172.i.i
  %.sroa.0.1.i175.i.i518 = phi ptr [ %i.pd, %.preheader56.i172.i.i ], [ %.sroa.0.0.i171.i.i, %bb.cp ] ; 2 uses
  %.sroa.15.1.i174.i.i517 = phi i64 [ %i.pe, %.preheader56.i172.i.i ], [ %.sroa.15.0.i169.i.i, %bb.cp ]
  %.sroa.042.0.i173.i.i516 = phi i64 [ %i.pn, %.preheader56.i172.i.i ], [ 0, %bb.cp ]
  %i.pf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i173.i.i516, i64 10) ; 2 uses
  %i.pg = extractvalue { i64, i1 } %i.pf, 1
  br i1 %i.pg, label %.loopexit.i.i, label %bb.cq, !prof !10

bb.cq:                                            ; preds = %.preheader56.i172.i.i.preheader
  %i.ph = extractvalue { i64, i1 } %i.pf, 0       ; 2 uses
  %i.pi = load i8, ptr %.sroa.0.1.i175.i.i518, align 1, !alias.scope !817, !noalias !818, !noundef !5
  %i.pj = zext i8 %i.pi to i32
  %i.pk = add nsw i32 %i.pj, -48                  ; 2 uses
  %i.pl = icmp ugt i32 %i.pk, 9
  %i.pm = zext nneg i32 %i.pk to i64
  %i.pn = add i64 %i.ph, %i.pm                    ; 3 uses
  %i.po = icmp ult i64 %i.pn, %i.ph
  %or.cond264.i.i = select i1 %i.pl, i1 true, i1 %i.po, !prof !775
  br i1 %or.cond264.i.i, label %.loopexit.i.i, label %.preheader56.i172.i.i, !prof !775

.lr.ph.i182.i.i:                                  ; preds = %.preheader.i180.i.i, %bb.cr
  %.sroa.0.269.i183.i.i = phi ptr [ %i.pv, %bb.cr ], [ %.sroa.0.0.i171.i.i, %.preheader.i180.i.i ] ; 2 uses
  %.sroa.15.268.i184.i.i = phi i64 [ %i.pu, %bb.cr ], [ %.sroa.15.0.i169.i.i, %.preheader.i180.i.i ]
  %.sroa.042.267.i185.i.i = phi i64 [ %i.px, %bb.cr ], [ 0, %.preheader.i180.i.i ]
  %i.pp = load i8, ptr %.sroa.0.269.i183.i.i, align 1, !alias.scope !817, !noalias !818, !noundef !5
  %i.pq = zext i8 %i.pp to i32
  %i.pr = add nsw i32 %i.pq, -48                  ; 2 uses
  %i.ps = icmp ult i32 %i.pr, 10
  br i1 %i.ps, label %bb.cr, label %.loopexit.i.i

bb.cr:                                            ; preds = %.lr.ph.i182.i.i
  %i.pt = mul i64 %.sroa.042.267.i185.i.i, 10
  %i.pu = add nsw i64 %.sroa.15.268.i184.i.i, -1  ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i183.i.i, i64 1
  %i.pw = zext nneg i32 %i.pr to i64
  %i.px = add i64 %i.pt, %i.pw                    ; 2 uses
  %.not53.i186.i.i = icmp eq i64 %i.pu, 0
  br i1 %.not53.i186.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i, label %.lr.ph.i182.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i: ; preds = %.preheader56.i172.i.i, %bb.cr, %.preheader.i180.i.i
  %.sroa.11230.0.i.i = phi i64 [ %i.px, %bb.cr ], [ 0, %.preheader.i180.i.i ], [ %i.pn, %.preheader56.i172.i.i ] ; 2 uses
  br i1 %.sroa.016.0.i.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i
  %.not108.i.i.a = icmp ult i64 %.sroa.9.0.i.i, %.sroa.4.1.i
  br i1 %.not108.i.i.a, label %bb.cu, label %bb.cz

bb.ct:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit189.i.i
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.1.i, i64 %.sroa.11230.0.i.i)
  br label %.loopexit290.i.i

bb.cu:                                            ; preds = %bb.cs
  %5 = call i64 @llvm.umin.i64(i64 %i.hv, i64 %.sroa.11230.0.i.i)
  %i.py = add nuw i64 %5, 1
  br label %6

.loopexit290.i.i:                                 ; preds = %6, %bb.ct
  %.sroa.525.0.i.i = phi i64 [ %.sroa.4.1.i, %bb.ct ], [ %.sroa.036.0.i.i, %6 ] ; 2 uses
  %.sroa.023.0.i.i = phi i64 [ %spec.select.i.i, %bb.ct ], [ %.sroa.9.0.i.i, %6 ] ; 2 uses
  %i.pz = icmp ult i64 %.sroa.023.0.i.i, %.sroa.038.0.ph392.i.i
  br i1 %i.pz, label %bb.cx, label %bb.cv

6:                                                ; preds = %bb.cu, %.loopexit.i.i
  %.sroa.036.0.i.i = phi i64 [ %i.py, %bb.cu ], [ %.sroa.4.1.i, %.loopexit.i.i ] ; 2 uses
  %.not110.i.i = icmp ugt i64 %.sroa.036.0.i.i, %.sroa.9.0.i.i
  br i1 %.not110.i.i, label %.loopexit290.i.i, label %bb.cz

bb.cv:                                            ; preds = %.loopexit290.i.i
  %i.qa = load i64, ptr %i.hj, align 8, !alias.scope !819, !noalias !783, !noundef !5 ; 3 uses
  %i.qb = load i64, ptr %i.y, align 8, !range !7, !alias.scope !819, !noalias !783, !noundef !5
  %i.qc = icmp eq i64 %i.qa, %i.qb
  br i1 %i.qc, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEE8grow_oneCs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #25
          to label %bb.cy unwind label %.loopexit279.loopexit.split-lp.i.i, !noalias !784

bb.cx:                                            ; preds = %.loopexit290.i.i
  store i64 -9223372036854775808, ptr %i.bd, align 8, !alias.scope !784, !noalias !785
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit192.i.i unwind label %.thread244.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !784

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %i.qd = load ptr, ptr %i.hi, align 8, !alias.scope !819, !noalias !783, !nonnull !5, !noundef !5
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.qd, i64 %i.qa ; 2 uses
  store i64 %.sroa.023.0.i.i, ptr %i.qe, align 8, !noalias !784
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store i64 %.sroa.525.0.i.i, ptr %i.qf, align 8, !noalias !784
  %i.qg = add i64 %i.qa, 1
  store i64 %i.qg, ptr %i.hj, align 8, !alias.scope !819, !noalias !783
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit194.i.i unwind label %.thread244.loopexit.split-lp.loopexit.loopexit.split-lp.i.i, !noalias !784

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit194.i.i: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !783
  %i.qh = load i8, ptr %.sroa.569.0..sroa_idx.i.i, align 1, !range !11, !alias.scope !820, !noalias !783, !noundef !5
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %.outer._crit_edge.i.i, label %.lr.ph391.i.i

bb.cz:                                            ; preds = %6, %bb.cs, %.loopexit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3gSIjo26Km0_14regex_automata4util8captures8CapturesECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit196.i.i unwind label %.thread244.loopexit.split-lp.loopexit.loopexit.i.i, !noalias !784

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit196.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !783
  %i.qj = load i8, ptr %.sroa.569.0..sroa_idx.i.i, align 1, !range !11, !alias.scope !821, !noalias !783, !noundef !5
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %.outer._crit_edge.i.i, label %bb.ap

bb.da:                                            ; preds = %.thread241.i.i, %.loopexit279.i.i
  %i.ql = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !784
  unreachable

common.resume:                                    ; preds = %.body, %.thread241.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn111240.i.i, %.thread241.i.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.thread241.i.i:                                   ; preds = %.loopexit279.i.i, %.body.i.i.i, %.thread244.loopexit.split-lp.loopexit.split-lp.i.i, %.thread244.loopexit.split-lp.loopexit.loopexit.split-lp.i.i, %.thread244.loopexit.split-lp.loopexit.loopexit.i.i, %.thread244.loopexit.i.i
  %.pn111240.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.phi283.i.i, %.loopexit279.i.i ], [ %lpad.loopexit.i.i, %.thread244.loopexit.i.i ], [ %lpad.loopexit.split-lp273.i.i, %.thread244.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit284.i.i, %.thread244.loopexit.split-lp.loopexit.loopexit.i.i ], [ %lpad.loopexit.split-lp285.i.i, %.thread244.loopexit.split-lp.loopexit.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ops5range5RangejEEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #22
          to label %common.resume unwind label %bb.da, !noalias !784

.split349.i.i:                                    ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCs3Kwrwkha1e5_13pingora_proxy.exit.i.i
  store i64 -9223372036854775808, ptr %i.bd, align 8, !alias.scope !784, !noalias !785
  br label %bb.db

bb.db:                                            ; preds = %.split349.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6xJwbBeREfY_5regex5regex6string8CapturesECs3Kwrwkha1e5_13pingora_proxy.exit192.i.i, %bb.ai, %bb.ab, %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !783
  br label %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit

bb.dc:                                            ; preds = %bb.dd, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false), !noalias !780
  %i.qm = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac), !noalias !776 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !780
  %.not16.i = icmp eq ptr %i.qm, null
  br i1 %.not16.i, label %bb.di, label %bb.df

bb.dd:                                            ; preds = %bb.n
  %i.qn = load ptr, ptr %i.cv, align 8, !noalias !776, !noundef !5
  %i.qo = getelementptr i8, ptr %i.qn, i64 %i.cx
  %i.qp = getelementptr i8, ptr %i.qo, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qp) ]
  %i.qq = load i8, ptr %i.qp, align 1, !noalias !776, !noundef !5
  %i.qr = icmp eq i8 %i.qq, 34
  br i1 %i.qr, label %bb.de, label %bb.dc

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @61, i64 32, i1 false), !noalias !780
  %i.qs = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab), !noalias !776 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !780
  %.not17.i = icmp eq ptr %i.qs, null
  br i1 %.not17.i, label %bb.di, label %bb.dh

bb.df:                                            ; preds = %bb.dc
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qu = load i64, ptr %i.qt, align 8, !noalias !776, !noundef !5 ; 2 uses
  %i.qv = load i64, ptr %i.cw, align 8, !noalias !776, !noundef !5
  %i.qw = icmp eq i64 %i.qu, %i.qv
  br i1 %i.qw, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.dh, %bb.df
  %.sink.i = phi ptr [ %i.qs, %bb.dh ], [ %i.qm, %bb.df ]
  %.sink159.i = phi i64 [ %i.rb, %bb.dh ], [ %i.qu, %bb.df ]
  %i.qx = load ptr, ptr %i.cv, align 8, !noalias !776, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !776, !noundef !5
  %bcmp18.i = call i32 @bcmp(ptr %i.qz, ptr %i.qx, i64 %.sink159.i), !noalias !776
  %.sroa.04.0.in.i = icmp eq i32 %bcmp18.i, 0
  br i1 %.sroa.04.0.in.i, label %bb.o, label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !776, !noundef !5 ; 2 uses
  %i.rc = load i64, ptr %i.cw, align 8, !noalias !776, !noundef !5
  %i.rd = icmp eq i64 %i.rb, %i.rc
  br i1 %i.rd, label %bb.dg, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dc
  store i64 -9223372036854775808, ptr %i.bd, align 8, !alias.scope !776, !noalias !781
  br label %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit

_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit: ; preds = %_RNvXsq_NtCs84JG9zk80ZV_4http6methodNtB5_5InnerNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, %bb.m, %bb.p, %bb.ax, %bb.db, %bb.di
  %i.re = load i64, ptr %i.bd, align 8, !range !14, !noundef !5 ; 3 uses
  %i.rf = icmp ne i64 %i.re, -9223372036854775806
  call void @llvm.assume(i1 %i.rf)
  %i.rg = xor i64 %i.re, -9223372036854775808
  %i.rh = icmp slt i64 %i.re, 0
  %i.ri = select i1 %i.rh, i64 %i.rg, i64 2
  switch i64 %i.ri, label %bb.dj [
    i64 0, label %bb.dk
    i64 1, label %bb.dl
    i64 2, label %bb.dm
    i64 3, label %bb.dn
  ]

.loopexit:                                        ; preds = %bb.i, %.preheader56.i.i.preheader, %.lr.ph.i.i, %bb.e, %bb.g, %bb.g, %bb.f
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ig

bb.dj:                                            ; preds = %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit
  unreachable

bb.dk:                                            ; preds = %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit
  %i.rj = invoke noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameReECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 @38, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 5)
          to label %bb.dp unwind label %bb.do     ; 2 uses

bb.dl:                                            ; preds = %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit
  %i.rk = invoke noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader10set_statusNtNtCs84JG9zk80ZV_4http6status10StatusCodeECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %2, i16 noundef 206)
          to label %bb.du unwind label %bb.do     ; 2 uses

bb.dm:                                            ; preds = %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  %i.rl = invoke noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.eq unwind label %bb.do     ; 3 uses

bb.dn:                                            ; preds = %_RNvNvNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter19range_header_filter18request_range_type.exit
  %i.rm = invoke noundef align 8 ptr @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader10set_statusNtNtCs84JG9zk80ZV_4http6status10StatusCodeECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %2, i16 noundef 416)
          to label %bb.go unwind label %bb.do     ; 2 uses

.body:                                            ; preds = %bb.gl, %bb.id, %bb.hv, %bb.ho, %bb.hh, %bb.ha, %bb.gw, %bb.gq, %bb.gf, %bb.gb, %bb.fy, %bb.fv, %bb.fn, %bb.fj, %bb.en, %bb.ei, %bb.ea, %bb.dw, %bb.dr, %bb.do, %.body.i
  %.pn = phi { ptr, i32 } [ %i.wq, %bb.fy ], [ %i.wx, %bb.gf ], [ %i.abg, %bb.hv ], [ %i.xw, %bb.gq ], [ %i.xu, %bb.gl ], [ %i.wn, %bb.fv ], [ %i.vp, %bb.fn ], [ %i.tg, %bb.en ], [ %i.sz, %bb.ei ], [ %i.rw, %bb.ea ], [ %i.ro, %bb.dr ], [ %i.aag, %bb.ho ], [ %i.rq, %bb.dw ], [ %eh.lpad-body.i, %.body.i ], [ %i.vj, %bb.fj ], [ %i.ws, %bb.gb ], [ %i.ya, %bb.gw ], [ %i.yg, %bb.ha ], [ %i.zg, %bb.hh ], [ %i.rn, %bb.do ], [ %i.ace, %bb.id ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3Kwrwkha1e5_13pingora_proxy11proxy_cache12range_filter9RangeTypeEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bd) #22
          to label %common.resume unwind label %bb.gm

bb.do:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit183, %bb.ia, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit173, %bb.ht, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit163, %bb.hm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit153, %bb.hf, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit71, %bb.gk, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit79, %bb.fs, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit87, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit95, %bb.ef, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit99, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3Kwrwkha1e5_13pingora_proxy.exit185, %bb.gt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit130, %bb.fg, %bb.ff, %bb.ex, %bb.ev, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3Kwrwkha1e5_13pingora_proxy.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueEECs3Kwrwkha1e5_13pingora_proxy.exit, %bb.dn, %bb.dm, %bb.dl, %bb.dk
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dp:                                            ; preds = %bb.dk
  %.not.i100 = icmp eq ptr %i.rj, null
  br i1 %.not.i100, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit103, label %bb.dq, !prof !13

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !822
  store ptr %i.rj, ptr %i.ag, align 8, !noalias !822
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #26
          to label %bb.ds unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #22
          to label %.body unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit103: ; preds = %bb.gk, %bb.gj, %bb.ib, %bb.el, %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.ig

bb.du:                                            ; preds = %bb.dl
  %.not.i96 = icmp eq ptr %i.rk, null
  br i1 %.not.i96, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit99, label %bb.dv, !prof !13

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !823
  store ptr %i.rk, ptr %i.ah, align 8, !noalias !823
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #22
          to label %.body unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit99: ; preds = %bb.du
  %i.rs = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !range !824, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !825
  invoke void @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap6removeRNtNtB8_4name10HeaderNameECs3Kwrwkha1e5_13pingora_proxy(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 @38)
          to label %.noexc unwind label %bb.do

.noexc:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEE6unwrapCs3Kwrwkha1e5_13pingora_proxy.exit99
  %.not59 = icmp eq i64 %i.rt, -1
  %i.ru = getelementptr inbounds nuw i8, ptr %i.n, i64 32
end_hunk_0
