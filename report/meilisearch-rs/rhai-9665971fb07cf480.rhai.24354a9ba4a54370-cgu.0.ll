Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$19exec_native_fn_call17hc8b56f7fcaf6958cE":bb.a
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.hn = phi ptr [ %.sroa.8409.0462, %bb.br ], [ %.sroa.8409.0.copyload411, %bb.bs ] ; 3 uses
  %i.ho = phi i8 [ 12, %bb.br ], [ %.sroa.0403.0.copyload404, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8406)
  br i1 %.sroa.017.0.shrunk, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  %i.hp = icmp eq i8 %i.ho, 12
  br i1 %i.hp, label %bb.ca, label %bb.cb

bb.bv:                                            ; preds = %bb.bt
  %i.hq = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !align !61, !noundef !60 ; 2 uses
  store ptr null, ptr %i.hq, align 8
  %.not221 = icmp eq ptr %i.hr, null
  br i1 %.not221, label %bb.bx, label %bb.bw, !prof !71

bb.bw:                                            ; preds = %bb.bv
  %.not222 = icmp eq i64 %9, 0
  br i1 %.not222, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @697) #70
          to label %bb.bc unwind label %bb.el

bb.by:                                            ; preds = %bb.bw
  store ptr %i.hr, ptr %8, align 8
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bw
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @698) #70
          to label %bb.bc unwind label %bb.el

bb.ca:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  store ptr %i.hn, ptr %0, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.hs, align 8
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

bb.cb:                                            ; preds = %bb.bu
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  store i8 %i.ho, ptr %i.ap, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.hn, ptr %.sroa.543.0..sroa_idx, align 8
  %i.ht = icmp ne i64 %9, 0
  %or.cond3.not = and i1 %i.ht, %10
  br i1 %or.cond3.not, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread495, %bb.cb
  %cond4 = icmp eq i64 %5, 5
  br i1 %cond4, label %bb.ch, label %.critedge246

bb.cd:                                            ; preds = %bb.cb
  %i.hu = load ptr, ptr %8, align 8, !nonnull !60, !align !61, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !34700, !noundef !60
  %.not.i337 = icmp eq i64 %i.hw, 0
  br i1 %.not.i337, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !34700, !noundef !60
  %.not7.i339 = icmp eq i64 %i.hy, 0
  br i1 %.not7.i339, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ia = load i64, ptr %i.hz, align 8, !noalias !34700, !noundef !60
  %.not8.i340 = icmp eq i64 %i.ia, 0
  br i1 %.not8.i340, label %.thread495, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  invoke fastcc void @_ZN4rhai4eval10data_check15calc_data_sizes17h0206cec8add315a4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hu)
          to label %.noexc341 unwind label %bb.eb

.noexc341:                                        ; preds = %bb.cg
  %i.ib = invoke noundef align 8 ptr @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$13throw_on_size17hcfdbe303d39ce1a5E"(ptr noundef nonnull readonly align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc342 unwind label %bb.eb ; 3 uses

.noexc342:                                        ; preds = %.noexc341
  %.not9.i = icmp eq ptr %i.ib, null
  br i1 %.not9.i, label %.thread495, label %.critedge244, !prof !79

.thread491:                                       ; preds = %bb.ea, %bb.ah, %bb.ap, %bb.aw, %bb.ax, %bb.ay, %bb.af, %bb.al, %bb.ak, %bb.as, %bb.av, %bb.bo, %bb.dc, %bb.cx, %bb.cl, %bb.cj, %bb.dv, %bb.de
  %lpad.thr_comm489 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread495:                                       ; preds = %bb.cf, %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cc

.critedge244:                                     ; preds = %.noexc342
  %i.ic = call noundef nonnull align 8 ptr @_ZN4rhai5types5error13EvalAltResult13fill_position17h75101b1c5096b6b4E(ptr noalias noundef nonnull align 8 %i.ib, i16 noundef %12, i16 noundef %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ib, ptr %0, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.id, align 8
  br label %bb.ea

bb.ch:                                            ; preds = %bb.cc
  %i.ie = load i32, ptr %4, align 1
  %i.if = xor i32 %i.ie, 1852404336
  %i.ig = getelementptr i8, ptr %4, i64 4
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = zext i8 %i.ih to i32
  %i.ij = xor i32 %i.ii, 116
  %i.ik = or i32 %i.if, %i.ij
  %i.il = icmp ne i32 %i.ik, 0
  %i.im = zext i1 %i.il to i32
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.ci, label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !align !66, !noundef !60
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.not231 = icmp eq ptr %i.ip, null
  br i1 %.not231, label %.split509.thread, label %bb.cj

.split509.thread:                                 ; preds = %bb.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.ea

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.664)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic21into_immutable_string17hf6a14c8ebc35905dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ap)
          to label %bb.ck unwind label %.thread491

.split509:                                        ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

bb.ck:                                            ; preds = %bb.cj
  %i.ir = load ptr, ptr %i.as, align 8, !noundef !60 ; 2 uses
  %.not232 = icmp eq ptr %i.ir, null
  %i.is = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  br i1 %.not232, label %.thread498, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.it = load i64, ptr %i.is, align 8, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$19exec_native_fn_call28_$u7b$$u7b$closure$u7d$$u7d$17h950f095eac616074E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.n, ptr nonnull %1, i16 %12, i16 %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ir, i64 noundef %i.it)
          to label %bb.cm unwind label %.thread491

.thread498:                                       ; preds = %bb.ck
  %i.iu = load ptr, ptr %i.is, align 8, !nonnull !60, !noundef !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %.sroa.062.0.copyload = load i8, ptr %i.n, align 8 ; 2 uses
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.664, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.664.0..sroa_idx, i64 7, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.666.0.copyload = load ptr, ptr %.sroa.666.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.not233 = icmp eq i8 %.sroa.062.0.copyload, 35
  br i1 %.not233, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.664, i64 7, i1 false)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.471.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i8 %.sroa.062.0.copyload, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.666.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %i.iv = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 64, i64 noundef 8)
          to label %bb.cz unwind label %bb.co, !noalias !34701 ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m) #72
          to label %.body unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.cq:                                            ; preds = %bb.cm, %.thread498
  %.sroa.666.0503 = phi ptr [ %i.iu, %.thread498 ], [ %.sroa.666.0.copyload, %bb.cm ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.666.0503) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.664)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.666.0503) ]
  store ptr %.sroa.666.0503, ptr %i.at, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.666.0503, i64 16 ; 3 uses
  %i.iz = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy)
          to label %.noexc287 unwind label %bb.ct

.noexc287:                                        ; preds = %bb.cq
  br i1 %i.iz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.noexc287
  %i.ja = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy)
          to label %.noexc288 unwind label %bb.ct ; 2 uses

.noexc288:                                        ; preds = %bb.cr
  %i.jb = extractvalue { ptr, i64 } %i.ja, 0
  %i.jc = extractvalue { ptr, i64 } %i.ja, 1
  br label %bb.cv

bb.cs:                                            ; preds = %.noexc287
  %i.jd = load ptr, ptr %i.iy, align 8, !nonnull !60, !noundef !60
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.666.0503, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !noundef !60
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cq, %bb.cr, %bb.cv
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = atomicrmw add ptr %.sroa.666.0503, i64 -1 release, align 8, !noalias !34702
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.cu, label %.body

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %.body unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cs, %.noexc288
  %.pre-phi = phi ptr [ %i.jd, %bb.cs ], [ %i.jb, %.noexc288 ] ; 2 uses
  %.merged.i286 = phi i64 [ %i.jf, %bb.cs ], [ %i.jc, %.noexc288 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi) ]
  %i.jj = load ptr, ptr %i.io, align 8, !nonnull !60, !noundef !60
  %i.jk = load ptr, ptr %i.iq, align 8, !nonnull !60, !align !61, !noundef !60
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !invariant.load !60, !nonnull !60
  invoke void %i.jm(ptr noundef nonnull align 1 %i.jj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi, i64 noundef %.merged.i286)
          to label %bb.cw unwind label %bb.ct

bb.cw:                                            ; preds = %bb.cv
  %i.jn = atomicrmw add ptr %.sroa.666.0503, i64 -1 release, align 8, !noalias !34703
  %i.jo = icmp eq i64 %i.jn, 1
  br i1 %i.jo, label %bb.cx, label %.split509

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %.split509 unwind label %.thread491

bb.cy:                                            ; preds = %bb.eb, %bb.dn, %bb.cu, %bb.el, %.body, %.body249
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.cz:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iv, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  store ptr %i.iv, ptr %0, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.jq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

.noexc357:                                        ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

bb.da:                                            ; preds = %bb.ch
  %i.jr = load i32, ptr %4, align 1
  %i.js = xor i32 %i.jr, 1969382756
  %i.jt = getelementptr i8, ptr %4, i64 4
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = xor i32 %i.jv, 103
  %i.jx = or i32 %i.js, %i.jw
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.db, label %.critedge246

.critedge246:                                     ; preds = %bb.cc, %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.753.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.012.2, ptr %.sroa.753.0..sroa_idx.c, align 8
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

bb.db:                                            ; preds = %bb.da
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !align !66, !noundef !60
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.not226 = icmp eq ptr %i.kc, null
  br i1 %.not226, label %.thread511, label %bb.dc

.thread511:                                       ; preds = %bb.db
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.ea

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.683)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic21into_immutable_string17hf6a14c8ebc35905dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ap)
          to label %bb.dd unwind label %.thread491

bb.dd:                                            ; preds = %bb.dc
  %i.ke = load ptr, ptr %i.aq, align 8, !noundef !60 ; 2 uses
  %.not227 = icmp eq ptr %i.ke, null
  %i.kf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  br i1 %.not227, label %.thread513, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kg = load i64, ptr %i.kf, align 8, !noundef !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$19exec_native_fn_call28_$u7b$$u7b$closure$u7d$$u7d$17h242cb7073249368bE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.l, ptr nonnull %1, i16 %12, i16 %13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ke, i64 noundef %i.kg)
          to label %bb.df unwind label %.thread491

.thread513:                                       ; preds = %bb.dd
  %i.kh = load ptr, ptr %i.kf, align 8, !nonnull !60, !noundef !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dj

bb.df:                                            ; preds = %bb.de
  %.sroa.081.0.copyload = load i8, ptr %i.l, align 8 ; 2 uses
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.683, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.683.0..sroa_idx, i64 7, i1 false)
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.685.0.copyload = load ptr, ptr %.sroa.685.0..sroa_idx, align 8 ; 2 uses
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.888, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.888.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.not228 = icmp eq i8 %.sroa.081.0.copyload, 35
  br i1 %.not228, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.291.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.683, i64 7, i1 false)
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.493.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.888, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.683)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888)
  store i8 %.sroa.081.0.copyload, ptr %i.k, align 8
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.685.0.copyload, ptr %.sroa.392.0..sroa_idx, align 8
  %i.ki = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 64, i64 noundef 8)
          to label %bb.dw unwind label %bb.dh, !noalias !34704 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k) #72
          to label %.body unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.dj:                                            ; preds = %bb.df, %.thread513
  %.sroa.685.0518 = phi ptr [ %i.kh, %.thread513 ], [ %.sroa.685.0.copyload, %bb.df ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.685.0518) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.683)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.685.0518) ]
  store ptr %.sroa.685.0518, ptr %i.ar, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.685.0518, i64 16 ; 3 uses
  %i.km = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl)
          to label %.noexc282 unwind label %bb.dm

.noexc282:                                        ; preds = %bb.dj
  br i1 %i.km, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.noexc282
  %i.kn = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kl)
          to label %.noexc283 unwind label %bb.dm ; 2 uses

.noexc283:                                        ; preds = %bb.dk
  %i.ko = extractvalue { ptr, i64 } %i.kn, 0
  %i.kp = extractvalue { ptr, i64 } %i.kn, 1
  br label %bb.do

bb.dl:                                            ; preds = %.noexc282
  %i.kq = load ptr, ptr %i.kl, align 8, !nonnull !60, !noundef !60
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.685.0518, i64 32
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !60
  br label %bb.do

bb.dm:                                            ; preds = %bb.dp, %bb.dj, %bb.dk, %bb.dq, %bb.ds
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ku = atomicrmw add ptr %.sroa.685.0518, i64 -1 release, align 8, !noalias !34705
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dn, label %.body

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ar)
          to label %.body unwind label %bb.cy

bb.do:                                            ; preds = %bb.dl, %.noexc283
  %.pre-phi564 = phi ptr [ %i.kq, %bb.dl ], [ %i.ko, %.noexc283 ] ; 2 uses
  %.merged.i281 = phi i64 [ %i.ks, %bb.dl ], [ %i.kp, %.noexc283 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi564) ]
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !noundef !60 ; 3 uses
  %.not230 = icmp eq ptr %i.kx, null
  br i1 %.not230, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 3 uses
  %i.kz = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky)
          to label %.noexc278 unwind label %bb.dm

.noexc278:                                        ; preds = %bb.dp
  br i1 %i.kz, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.noexc278
  %i.la = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ky)
          to label %.noexc279 unwind label %bb.dm ; 2 uses

.noexc279:                                        ; preds = %bb.dq
  %i.lb = extractvalue { ptr, i64 } %i.la, 0
  %i.lc = extractvalue { ptr, i64 } %i.la, 1
  br label %bb.dt

bb.dr:                                            ; preds = %.noexc278
  %i.ld = load ptr, ptr %i.ky, align 8, !nonnull !60, !noundef !60
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lf = load i64, ptr %i.le, align 8, !noundef !60
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do, %bb.dt
  %.sroa.5100.0 = phi i64 [ %.merged.i, %bb.dt ], [ undef, %bb.do ]
  %.sroa.099.0 = phi ptr [ %.pre-phi566, %bb.dt ], [ null, %bb.do ]
  %i.lg = load ptr, ptr %i.kb, align 8, !nonnull !60, !noundef !60
  %i.lh = load ptr, ptr %i.kd, align 8, !nonnull !60, !align !61, !noundef !60
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !invariant.load !60, !nonnull !60
  invoke void %i.lj(ptr noundef nonnull align 1 %i.lg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi564, i64 noundef %.merged.i281, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.099.0, i64 %.sroa.5100.0, i16 noundef %12, i16 noundef %13)
          to label %bb.du unwind label %bb.dm

bb.dt:                                            ; preds = %bb.dr, %.noexc279
  %.pre-phi566 = phi ptr [ %i.ld, %bb.dr ], [ %i.lb, %.noexc279 ] ; 2 uses
  %.merged.i = phi i64 [ %i.lf, %bb.dr ], [ %i.lc, %.noexc279 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi566) ]
  br label %bb.ds

bb.du:                                            ; preds = %bb.ds
  %i.lk = atomicrmw add ptr %.sroa.685.0518, i64 -1 release, align 8, !noalias !34706
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.dv, label %.noexc357

bb.dv:                                            ; preds = %bb.du
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ar)
          to label %.noexc357 unwind label %.thread491

bb.dw:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ki, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  store ptr %i.ki, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.lm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365": ; preds = %bb.cz, %bb.dw, %.split509, %bb.ea, %.noexc357, %.critedge246, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !34707)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !34708, !align !61, !noundef !60
  %.not.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i, label %"_ZN69_$LT$rhai..func..call..ArgBackup$u20$as$u20$core..ops..drop..Drop$GT$4drop17h25351fa180e816a9E.exit.i", label %bb.dx, !prof !79

bb.dx:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"
  invoke void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2768, i64 noundef 77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2769) #70
          to label %.noexc.i360 unwind label %bb.dy, !noalias !34707

.noexc.i360:                                      ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.az)
          to label %.body249 unwind label %bb.dz, !inline_history !78

"_ZN69_$LT$rhai..func..call..ArgBackup$u20$as$u20$core..ops..drop..Drop$GT$4drop17h25351fa180e816a9E.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365"
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.az)
          to label %"_ZN4core3ptr48drop_in_place$LT$rhai..func..call..ArgBackup$GT$17h9ffa0fd5981207a7E.exit" unwind label %bb.m

bb.dz:                                            ; preds = %bb.dy
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34707
  unreachable

bb.ea:                                            ; preds = %.split509.thread, %.thread511, %.critedge244
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ap)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit365" unwind label %.thread491, !inline_history !78

bb.eb:                                            ; preds = %bb.cg, %.noexc341
  %lpad.thr_comm.split-lp490 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ap)
          to label %.body unwind label %bb.cy, !inline_history !78

"_ZN4core3ptr48drop_in_place$LT$rhai..func..call..ArgBackup$GT$17h9ffa0fd5981207a7E.exit": ; preds = %"_ZN69_$LT$rhai..func..call..ArgBackup$u20$as$u20$core..ops..drop..Drop$GT$4drop17h25351fa180e816a9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eq, %"_ZN4core3ptr48drop_in_place$LT$rhai..func..call..ArgBackup$GT$17h9ffa0fd5981207a7E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !34709)
  %i.lr = load i8, ptr %i.bc, align 8, !range !108, !alias.scope !34709, !noundef !60
  %i.ls = icmp eq i8 %i.lr, 5
  br i1 %i.ls, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit", label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !34710)
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rhai..func..function..RhaiFunc$GT$17h7f9230e723de46a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bc)
          to label %bb.eh unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34711)
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !34712, !noundef !60 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %common.resume, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lx = atomicrmw add ptr %i.lv, i64 -1 release, align 8, !noalias !34713
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.eg, label %common.resume

bb.eg:                                            ; preds = %bb.ef
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lu)
          to label %common.resume unwind label %bb.ek

bb.eh:                                            ; preds = %bb.ed
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34714)
  %i.ma = load ptr, ptr %i.lz, align 8, !alias.scope !34715, !noundef !60 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit", label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mc = atomicrmw add ptr %i.ma, i64 -1 release, align 8, !noalias !34716
  %i.md = icmp eq i64 %i.mc, 1
  br i1 %i.md, label %bb.ej, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit"

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lz)
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$GT$17hb81e6464e1e0db3fE.exit"

bb.ek:                                            ; preds = %bb.eg
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34717
end_hunk_0
