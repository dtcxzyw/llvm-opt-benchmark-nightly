Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.177?download=true
inline.NumInlined: 486
inline.NumDeleted: 246
begin_hunk_0_@_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB2_14PyroscopeState11from_config:bb.a
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !797
  store ptr @51, ptr %i.w, align 8, !noalias !797
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 37, ptr %i.cq, align 8, !noalias !797
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr @51, ptr %i.cr, align 8, !noalias !797
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 37, ptr %i.cs, align 8, !noalias !797
  %i.ct = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr @66, ptr %i.ct, align 8, !noalias !797
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @65, ptr noundef nonnull %i.x, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.ab unwind label %bb.ai, !noalias !803

bb.aa:                                            ; preds = %bb.ab, %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !797
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ao)
          to label %bb.ac unwind label %bb.ai, !noalias !803

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !797
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB6_21PyroscopeAgentBuilder3newNtNtCsexYYUdYSQU6_5alloc6string6StringReB1O_B1O_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(304) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, i32 noundef %.sroa.02.0.i, ptr noundef nonnull %i.cl)
          to label %.noexc21 unwind label %bb.am

.noexc21:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !797
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !803
  %i.cu = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #25, !noalias !803 ; 10 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ad, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !8

bb.ad:                                            ; preds = %.noexc21
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc61.i unwind label %bb.ah, !noalias !803

.noexc61.i:                                       ; preds = %bb.ad
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %.noexc21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !796, !nonnull !6, !noundef !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !796, !noundef !6
  store ptr @70, ptr %i.cu, align 8, !noalias !803
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 3, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !803
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr @71, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !803
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 6, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !803
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr @72, ptr %i.da, align 8, !noalias !803
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i64 10, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !803
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr %i.cx, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !803
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i64 %i.cz, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !803
  store i64 2, ptr %i.r, align 8, !noalias !797
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.cu, ptr %i.db, align 8, !noalias !797
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 2, ptr %i.dc, align 8, !noalias !797
  invoke void @_RNvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB5_21PyroscopeAgentBuilder4tags(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(304) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc22 unwind label %bb.am

.noexc22:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !797
  invoke void @_RNvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB5_21PyroscopeAgentBuilder5build(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %i.u)
          to label %.noexc23 unwind label %bb.am

.noexc23:                                         ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !797
  %i.dd = load i64, ptr %i.v, align 8, !range !14, !noalias !797, !noundef !6 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.df, i64 40, i1 false), !noalias !797
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.cf

bb.af:                                            ; preds = %.noexc23
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.543.0..sroa_idx.i, i64 376, i1 false), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !797
  store i64 %i.dd, ptr %i.q, align 8, !noalias !797
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !797
  invoke void @_RNvMs6_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeINtB5_14PyroscopeAgentNtB5_19PyroscopeAgentReadyE5start(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(424) %i.q)
          to label %.noexc24 unwind label %bb.am

.noexc24:                                         ; preds = %bb.af
  %i.dg = load i64, ptr %i.p, align 8, !range !14, !noalias !797, !noundef !6 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.i, ptr noundef nonnull align 8 dereferenceable(40) %i.di, i64 40, i1 false), !noalias !797
  br i1 %i.dh, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.i, i64 40, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.i)
  br label %bb.cf

bb.ah:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1kbkjoW0HYw_9pyroscope9pyroscope21PyroscopeAgentBuilderECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(304) %i.t) #20
          to label %.body unwind label %bb.w, !noalias !803

bb.ai:                                            ; preds = %bb.aa, %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !805
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.aj, label %.body

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDNtNtNtCs1kbkjoW0HYw_9pyroscope7backend7backend7BackendEL_EEEE9drop_slowB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #24
          to label %.body unwind label %bb.w, !noalias !803

bb.ak:                                            ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.cj, %bb.bq, %bb.ak
  ret void

.body:                                            ; preds = %.body28, %bb.ax, %bb.am, %bb.aj, %bb.ai, %bb.ah, %bb.y, %.body.i, %bb.ce
  %.pn17 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.aj ], [ %i.hi, %bb.ce ], [ %i.dm, %bb.am ], [ %lpad.thr_comm.split-lp.i, %bb.ai ], [ %i.dj, %bb.ah ], [ %.pn52.i, %.body.i ], [ %.pn52.i, %bb.y ], [ %.pn, %bb.ax ], [ %.pn, %.body28 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger15PyroscopeConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ao) #20
          to label %bb.ck unwind label %bb.bx

bb.am:                                            ; preds = %bb.ac, %bb.af, %.noexc22, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, %.noexc19, %.sink.split.i, %bb.b, %bb.ch
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.noexc24
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.546.0..sroa_idx.i, i64 376, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.622.i, i64 40, i1 false), !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %i.dg, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvNtCsG258MDvU3F_3std3env3varReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 11)
          to label %.noexc25 unwind label %bb.ay

.noexc25:                                         ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.dn = load i64, ptr %i.l, align 8, !range !10, !alias.scope !806, !noundef !6
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %.noexc25
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !807, !noalias !806, !nonnull !6, !noundef !6 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !807, !noalias !806, !noundef !6 ; 13 uses
  br label %.lr.ph.split.i.i.i.i

.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %select.unfold.i.i.i.i
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #20
          to label %.body28 unwind label %bb.aw, !noalias !806

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.backedge, %bb.ao
  %i.du = phi i64 [ 0, %bb.ao ], [ %i.eo, %.lr.ph.split.i.i.i.i.backedge ] ; 3 uses
  %.lcssa151920.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %.lcssa1518.i.i.i.i, %.lr.ph.split.i.i.i.i.backedge ] ; 7 uses
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i, %bb.ar
  %i.dw = phi i64 [ %i.ek, %bb.ar ], [ %i.du, %.lr.ph.split.i.i.i.i ] ; 5 uses
  %i.dx = sub nuw i64 %i.dt, %i.dw                ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dw ; 2 uses
  %i.dz = icmp samesign ult i64 %i.dx, 16
  br i1 %i.dz, label %.preheader.i.i.i.i.i.i.i.i, label %bb.ap

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, %i.dw
  br i1 %.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.ea = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef range(i64 0, -9223372036854775808) %i.dx)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !808 ; 2 uses

.noexc4.i.i.i:                                    ; preds = %bb.ap
  %i.eb = extractvalue { i64, i64 } %i.ea, 0
  %i.ec = extractvalue { i64, i64 } %i.ea, 1
  %i.ed = trunc nuw i64 %i.eb to i1
  br i1 %i.ed, label %.loopexit.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.aq
  %.sroa.04.011.i.i.i.i.i.i.i.i = phi i64 [ %i.eh, %bb.aq ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.04.011.i.i.i.i.i.i.i.i
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !809, !noalias !810, !noundef !6
  %i.eg = icmp eq i8 %i.ef, 44
  br i1 %i.eg, label %.loopexit.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.eh = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.eh, %i.dx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc4.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %.noexc4.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ei = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.dx
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add i64 %i.dw, 1
  %i.ek = add i64 %i.ej, %.sroa.5.0.i.i.i.i.i.i.i.i ; 5 uses
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.ek, %i.dt
  %i.el = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.dw ; 3 uses
  %or.cond.i.i.i.i.not.i.i.i = icmp ult i64 %i.el, %i.dt
  br i1 %or.cond.i.i.i.i.not.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.loopexit.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.as:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.el
  %lhsc.i.i.i = load i8, ptr %i.em, align 1, !noalias !808
  %i.en = icmp eq i8 %lhsc.i.i.i, 44
  br i1 %i.en, label %select.unfold.i.i.i.i, label %bb.ar

select.unfold.i.i.i.i:                            ; preds = %bb.as, %bb.ar, %.noexc4.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %bb.aq, %.lr.ph.split.i.i.i.i
  %i.eo = phi i64 [ %i.dt, %bb.aq ], [ %i.du, %.lr.ph.split.i.i.i.i ], [ %i.dt, %.preheader.i.i.i.i.i.i.i.i ], [ %i.dt, %.noexc4.i.i.i ], [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ]
  %.lcssa1518.i.i.i.i = phi i64 [ %.lcssa151920.i.i.i.i, %bb.aq ], [ %.lcssa151920.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %.lcssa151920.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %.lcssa151920.i.i.i.i, %.noexc4.i.i.i ], [ %i.ek, %bb.as ], [ %.lcssa151920.i.i.i.i, %bb.ar ]
  %i.ep = phi i1 [ true, %bb.aq ], [ true, %.lr.ph.split.i.i.i.i ], [ true, %.preheader.i.i.i.i.i.i.i.i ], [ true, %.noexc4.i.i.i ], [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %.pn.i.i.i.i = phi i64 [ %i.dt, %bb.aq ], [ %i.dt, %.lr.ph.split.i.i.i.i ], [ %i.dt, %.preheader.i.i.i.i.i.i.i.i ], [ %i.dt, %.noexc4.i.i.i ], [ %i.el, %bb.as ], [ %i.dt, %bb.ar ]
  %.sroa.4.1.i.i.ph.i.i.i.i = sub nuw i64 %.pn.i.i.i.i, %.lcssa151920.i.i.i.i
  %.sroa.0.1.i.i.ph.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.lcssa151920.i.i.i.i
  %i.eq = invoke { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.ph.i.i.i.i, i64 noundef %.sroa.4.1.i.i.ph.i.i.i.i)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !808 ; 2 uses

.noexc5.i.i.i:                                    ; preds = %select.unfold.i.i.i.i
  %i.er = extractvalue { ptr, i64 } %i.eq, 1
  %i.es = icmp eq i64 %i.er, 9
  br i1 %i.es, label %.split.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkReNCNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB1k_14PyroscopeState29is_jemalloc_profiling_enabled00E0B1q_.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.noexc5.i.i.i
  %i.et = extractvalue { ptr, i64 } %i.eq, 0      ; 2 uses
  %i.eu = load i64, ptr %i.et, align 1
  %i.ev = xor i64 %i.eu, 8462954443958088304
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i64
  %i.ez = xor i64 %i.ey, 101
  %i.fa = or i64 %i.ev, %i.ez
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0                    ; 2 uses
  %brmerge.i.i.i.i = or i1 %i.ep, %i.fd
  br i1 %brmerge.i.i.i.i, label %bb.at, label %.lr.ph.split.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkReNCNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB1k_14PyroscopeState29is_jemalloc_profiling_enabled00E0B1q_.exit.backedge.i.i.i.i: ; preds = %.noexc5.i.i.i
  br i1 %i.ep, label %bb.at, label %.lr.ph.split.i.i.i.i.backedge

.lr.ph.split.i.i.i.i.backedge:                    ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkReNCNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB1k_14PyroscopeState29is_jemalloc_profiling_enabled00E0B1q_.exit.backedge.i.i.i.i, %.split.i.i.i.i
  br label %.lr.ph.split.i.i.i.i

bb.at:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkReNCNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB1k_14PyroscopeState29is_jemalloc_profiling_enabled00E0B1q_.exit.backedge.i.i.i.i, %.split.i.i.i.i
  %.not11.i.ph.i.i.i = phi i1 [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkReNCNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common15pyroscope_state4pyroNtB1k_14PyroscopeState29is_jemalloc_profiling_enabled00E0B1q_.exit.backedge.i.i.i.i ], [ %i.fd, %.split.i.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.au, !noalias !806

bb.au:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body28 unwind label %bb.av, !noalias !806

bb.av:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !806
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.az unwind label %bb.ay

bb.aw:                                            ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !806
  unreachable

.thread.i.i:                                      ; preds = %.noexc25
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.thread49 unwind label %bb.ay

.thread49:                                        ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bn

.body28:                                          ; preds = %bb.bj, %bb.bl, %bb.bm, %bb.au, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.by, %bb.br
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.br ], [ %i.ha, %bb.by ], [ %i.fe, %bb.au ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fj, %bb.ay ], [ %lpad.thr_comm.split-lp.i32, %bb.bl ], [ %lpad.thr_comm.split-lp.i32, %bb.bm ], [ %i.gg, %bb.bj ] ; 2 uses
  %i.fh = load i64, ptr %i.an, align 8, !range !14, !alias.scope !811, !noundef !6
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %.body, label %bb.ax

bb.ax:                                            ; preds = %.body28
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1kbkjoW0HYw_9pyroscope9pyroscope14PyroscopeAgentNtBE_21PyroscopeAgentRunningEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.an)
          to label %.body unwind label %bb.bx

bb.ay:                                            ; preds = %bb.be, %bb.bh, %.noexc38, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i33, %bb.ba, %.thread.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.an, %bb.cb, %bb.bo
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not11.i.ph.i.i.i, label %bb.ba, label %bb.bn

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !813
  %i.fk = invoke noundef nonnull ptr @_RNvNtNtCs1kbkjoW0HYw_9pyroscope7backend8jemalloc16jemalloc_backend()
          to label %.noexc36 unwind label %bb.ay  ; 3 uses

.noexc36:                                         ; preds = %bb.ba
  store ptr %i.fk, ptr %i.j, align 8, !noalias !813
  %i.fl = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !813 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, 6
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ugt i64 %i.fl, 2
  br i1 %i.fn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !813
  store ptr %i.fo, ptr %i.i, align 8, !noalias !813
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !813
  store ptr @51, ptr %i.h, align 8, !noalias !813
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 37, ptr %i.fp, align 8, !noalias !813
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @51, ptr %i.fq, align 8, !noalias !813
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 37, ptr %i.fr, align 8, !noalias !813
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @74, ptr %i.fs, align 8, !noalias !813
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @73, ptr noundef nonnull %i.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bd unwind label %bb.bl, !noalias !814

bb.bc:                                            ; preds = %bb.bd, %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !813
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ao)
          to label %bb.be unwind label %bb.bl, !noalias !814

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !813
  br label %bb.bc

bb.be:                                            ; preds = %bb.bc
  invoke fastcc void @_RINvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB6_21PyroscopeAgentBuilder3newNtNtCsexYYUdYSQU6_5alloc6string6StringReB1O_B1O_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(304) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i32 noundef 0, ptr noundef nonnull %i.fk)
          to label %.noexc37 unwind label %bb.ay

.noexc37:                                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !813
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !814
  %i.ft = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #25, !noalias !814 ; 10 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.bf, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i33, !prof !8

bb.bf:                                            ; preds = %.noexc37
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc.i unwind label %bb.bj, !noalias !814

.noexc.i:                                         ; preds = %bb.bf
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i33: ; preds = %.noexc37
  %i.fv = load ptr, ptr %i.cw, align 8, !alias.scope !812, !nonnull !6, !noundef !6
  %i.fw = load i64, ptr %i.cy, align 8, !alias.scope !812, !noundef !6
  store ptr @70, ptr %i.ft, align 8, !noalias !814
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !814
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr @71, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !814
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 6, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !814
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store ptr @72, ptr %i.fx, align 8, !noalias !814
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store i64 10, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !814
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store ptr %i.fv, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !814
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  store i64 %i.fw, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !814
  store i64 2, ptr %i.c, align 8, !noalias !813
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ft, ptr %i.fy, align 8, !noalias !813
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 2, ptr %i.fz, align 8, !noalias !813
  invoke void @_RNvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB5_21PyroscopeAgentBuilder4tags(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(304) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc38 unwind label %bb.ay

.noexc38:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !813
  invoke void @_RNvMs0_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeNtB5_21PyroscopeAgentBuilder5build(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %i.f)
          to label %.noexc39 unwind label %bb.ay

.noexc39:                                         ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !813
  %i.ga = load i64, ptr %i.g, align 8, !range !14, !noalias !813, !noundef !6 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i31, ptr noundef nonnull align 8 dereferenceable(40) %i.gc, i64 40, i1 false), !noalias !813
  br i1 %i.gb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i31, i64 40, i1 false), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i31)
  br label %bb.bz

bb.bh:                                            ; preds = %.noexc39
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.8.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.525.0..sroa_idx.i, i64 376, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !813
  store i64 %i.ga, ptr %i.b, align 8, !noalias !813
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i31, i64 40, i1 false), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i31)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !813
  invoke void @_RNvMs6_NtCs1kbkjoW0HYw_9pyroscope9pyroscopeINtB5_14PyroscopeAgentNtB5_19PyroscopeAgentReadyE5start(ptr noalias nofree noundef nonnull sret([424 x i8]) align 8 captures(none) dereferenceable(424) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(424) %i.b)
          to label %.noexc40 unwind label %bb.ay

.noexc40:                                         ; preds = %bb.bh
  %i.gd = load i64, ptr %i.a, align 8, !range !14, !noalias !813, !noundef !6 ; 3 uses
  %i.ge = icmp eq i64 %i.gd, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.612.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gf, i64 40, i1 false), !noalias !813
  br i1 %i.ge, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.612.i, i64 40, i1 false), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.i)
  br label %bb.bz

bb.bj:                                            ; preds = %bb.bf
  %i.gg = landingpad { ptr, i32 }
end_hunk_0
