Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/RawImageLoader?download=true
inline.NumInlined: 5617
inline.NumDeleted: 2204
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !69
  %i.kd = zext i16 %i.kc to i64
  %.sroa.2.0.insert.ext.i = add nuw nsw i64 %i.kd, %i.jx
  %.sroa.27.0.insert.shift.i = shl nuw nsw i64 %i.jx, 32
  %.sroa.06.0.insert.insert.i = or disjoint i64 %.sroa.27.0.insert.shift.i, %i.ju
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.06.0.insert.insert.i, ptr %13, align 8
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ii, align 8
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc123 unwind label %.from.443

.noexc123:                                        ; preds = %bb.aw
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !170
  invoke void @_ZN4tlog6Logger3logIJRiRKN7nanogui5ArrayIiLm2EEES7_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.kf, i32 noundef 4, ptr nonnull @.str.9, i64 30, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %i.ii)
          to label %_ZN4tlog5debugIJRiRKN7nanogui5ArrayIiLm2EEES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit125 unwind label %.from.443

_ZN4tlog5debugIJRiRKN7nanogui5ArrayIiLm2EEES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit125: ; preds = %.noexc123
  %i.kg = load i32, ptr %i.ii, align 8, !tbaa !168 ; 2 uses
  %i.kh = load i32, ptr %13, align 8, !tbaa !168  ; 2 uses
  %i.ki = icmp sge i32 %i.kg, %i.kh
  %i.kj = load i32, ptr %i.ij, align 4, !tbaa !168 ; 2 uses
  %i.kk = load i32, ptr %i.ik, align 4, !tbaa !168 ; 2 uses
  %i.kl = icmp sge i32 %i.kj, %i.kk
  %i.km = and i1 %i.ki, %i.kl
  br i1 %i.km, label %bb.ax, label %.from.390

bb.ax:                                            ; preds = %_ZN4tlog5debugIJRiRKN7nanogui5ArrayIiLm2EEES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit125
  %i.kn = sub nsw i32 %i.kg, %i.kh
  %i.ko = sub nsw i32 %i.kj, %i.kk
  %i.kp = zext nneg i32 %i.kn to i64
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = mul nuw nsw i64 %i.kq, %i.kp
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %.from.390, label %bb.ay

.from.443:                                        ; preds = %bb.aw, %.noexc123
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.from..body102

bb.ay:                                            ; preds = %bb.ax
  %.sroa.07.0.copyload = load i64, ptr %13, align 8, !tbaa !83 ; 2 uses
  %.sroa.28.0.copyload = load i64, ptr %i.ii, align 8, !tbaa !83 ; 2 uses
  %.sroa.0.0.extract.trunc.i126 = trunc i64 %.sroa.07.0.copyload to i32
  %.sroa.2.0.extract.shift.i127 = lshr i64 %.sroa.07.0.copyload, 32
  %.sroa.2.0.extract.trunc.i128 = trunc nuw i64 %.sroa.2.0.extract.shift.i127 to i32
  %.sroa.3.8.extract.trunc.i129 = trunc i64 %.sroa.28.0.copyload to i32
  %.sroa.5.8.extract.shift.i130 = lshr i64 %.sroa.28.0.copyload, 32
  %.sroa.5.8.extract.trunc.i131 = trunc nuw i64 %.sroa.5.8.extract.shift.i130 to i32
  %i.ku = load i32, ptr %.reload.addr536, align 8, !tbaa !168
  %i.kv = call noundef i32 @llvm.smax.i32(i32 %i.ku, i32 %.sroa.0.0.extract.trunc.i126)
  %i.kw = load i32, ptr %i.if, align 4, !tbaa !168
  %i.kx = call noundef i32 @llvm.smax.i32(i32 %i.kw, i32 %.sroa.2.0.extract.trunc.i128)
  %.sroa.2.0.insert.ext.i.i132 = zext i32 %i.kx to i64
  %.sroa.2.0.insert.shift.i.i133 = shl nuw i64 %.sroa.2.0.insert.ext.i.i132, 32
  %.sroa.0.0.insert.ext.i.i134 = zext i32 %i.kv to i64
  %.sroa.0.0.insert.insert.i.i135 = or disjoint i64 %.sroa.2.0.insert.shift.i.i133, %.sroa.0.0.insert.ext.i.i134
  %i.ky = load i32, ptr %i.ia, align 8, !tbaa !168
  %i.kz = call noundef i32 @llvm.smin.i32(i32 %i.ky, i32 %.sroa.3.8.extract.trunc.i129)
  %i.la = load i32, ptr %i.ig, align 4, !tbaa !168
  %i.lb = call noundef i32 @llvm.smin.i32(i32 %i.la, i32 %.sroa.5.8.extract.trunc.i131)
  %.sroa.2.0.insert.ext.i2.i136 = zext i32 %i.lb to i64
  %.sroa.2.0.insert.shift.i3.i137 = shl nuw i64 %.sroa.2.0.insert.ext.i2.i136, 32
  %.sroa.0.0.insert.ext.i4.i138 = zext i32 %i.kz to i64
  %.sroa.0.0.insert.insert.i5.i139 = or disjoint i64 %.sroa.2.0.insert.shift.i3.i137, %.sroa.0.0.insert.ext.i4.i138
  store i64 %.sroa.0.0.insert.insert.i.i135, ptr %.reload.addr536, align 8, !tbaa !83
  store i64 %.sroa.0.0.insert.insert.i5.i139, ptr %i.ia, align 8, !tbaa !83
  br label %.from.390

.from.390:                                        ; preds = %_ZN4tlog5debugIJRiRKN7nanogui5ArrayIiLm2EEES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit125, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.lc = load i32, ptr %i.b, align 4, !tbaa !168 ; 2 uses
  %i.ld = add nsw i32 %i.lc, 1                    ; 2 uses
  store i32 %i.ld, ptr %i.b, align 4, !tbaa !168
  %i.le = icmp slt i32 %i.lc, 1
  br i1 %i.le, label %bb.aw, label %bb.av, !llvm.loop !499

bb.az:                                            ; preds = %bb.av
  %i.lf = load <4 x i32>, ptr %.reload.addr536, align 8, !tbaa !168
  %i.lg = freeze <4 x i32> %i.lf
  %i.lh = bitcast <4 x i32> %i.lg to <2 x i64>    ; 2 uses
  %i.li = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.lh, <2 x i64> %i.lh, <2 x i64> splat (i64 32))
  store <2 x i64> %i.li, ptr %.reload.addr536, align 8, !tbaa !83
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !523
  %i.ll = zext i16 %i.lk to i32
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ln = load i16, ptr %i.lm, align 8, !tbaa !524
  %i.lo = zext i16 %i.ln to i32
  store i32 %i.ll, ptr %.reload.addr538, align 8, !tbaa !168
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 769012
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !168
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc142 unwind label %.from.438

.noexc142:                                        ; preds = %bb.ba
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !170
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEERKiRS4_S9_S6_RKfSB_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSG_(ptr noundef nonnull align 8 dereferenceable(56) %i.lr, i32 noundef 4, ptr nonnull @.str.10, i64 67, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr544, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr548, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr536, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr538, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr547, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr546)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEERKiRS3_S8_S5_RKfSA_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit unwind label %.from.438

_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEERKiRS3_S8_S5_RKfSA_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit: ; preds = %.noexc142
  invoke void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr530, i64 noundef 1)
          to label %bb.bb unwind label %.from.433

bb.bb:                                            ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEERKiRS3_S8_S5_RKfSA_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.ls = load ptr, ptr %.reload.addr530, align 8, !tbaa !176
  %.spill.addr507 = getelementptr inbounds nuw i8, ptr %i.c, i64 769040 ; 6 uses
  store ptr %i.ls, ptr %.spill.addr507, align 8
  %.sroa.0.0.copyload = load i64, ptr %.reload.addr544, align 8, !tbaa !83
  store ptr @.str.11, ptr %14, align 8, !tbaa !526
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.lt, align 8, !tbaa !527
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.60") align 8 %.reload.addr525, i64 noundef 3, i1 noundef zeroext false, i64 %.sroa.0.0.copyload, i32 noundef 7, i32 noundef 6, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %14, i32 noundef %7)
          to label %bb.bc unwind label %.from.404

bb.bc:                                            ; preds = %bb.bb
  %i.lu = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load atomic i32, ptr %i.lv acquire, align 4
  %i.lx = icmp slt i32 %i.lw, 2
  br i1 %i.lx, label %bb.bd, label %AfterCoroSave

bb.bd:                                            ; preds = %bb.bc
  %i.ly = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = atomicrmw add ptr %i.lz, i32 -1 acq_rel, align 4
  %i.mb = icmp slt i32 %i.ma, 1
  br i1 %i.mb, label %bb.be, label %.thread.sink.split

bb.be:                                            ; preds = %bb.bd
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.be
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !170 ; 7 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !183
  %i.mf = and i32 %i.me, 8
  %.not.i.i.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i.i.i, label %bb.bf, label %.thread.sink.split

bb.bf:                                            ; preds = %.noexc.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !184 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.mh, %i.mj
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.bf
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %i.md, i64 33
  %i.mn = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.mh, %.from..lr.ph.i.i.i.i.i ], [ %i.mz, %.noexc2.i.i ] ; 2 uses
  %i.mo = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.mp = load i8, ptr %i.mk, align 8             ; 2 uses
  %i.mq = trunc i8 %i.mp to i1                    ; 2 uses
  %i.mr = load ptr, ptr %i.ml, align 8
  %i.ms = select i1 %i.mq, ptr %i.mr, ptr %i.mm
  %i.mt = load i64, ptr %i.mn, align 8
  %i.mu = lshr i8 %i.mp, 1
  %i.mv = zext nneg i8 %i.mu to i64
  %i.mw = select i1 %i.mq, i64 %i.mt, i64 %i.mv
  %i.mx = load ptr, ptr %i.mo, align 8, !tbaa !71
  %i.my = load ptr, ptr %i.mx, align 8
  invoke void %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr %i.ms, i64 %i.mw, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mz, %i.mj
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

.from..loopexit.split-lp.i.i:                     ; preds = %bb.be
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

bb.bg:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.na = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.na) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.bc
  %index.addr550 = getelementptr inbounds nuw i8, ptr %i.c, i64 769080
  store i8 0, ptr %index.addr550, align 8
  %i.nb = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr525, ptr nonnull %i.c) #32
  br i1 %i.nb, label %AfterCoroEnd, label %bb.bh

.from.438:                                        ; preds = %bb.ba, %.noexc142
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body102

.from.433:                                        ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEERKiRS3_S8_S5_RKfSA_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body102

.from.404:                                        ; preds = %bb.bb
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.431

bb.bh:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr525, align 8, !tbaa !190, !noalias !528 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nf = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body145.from.401, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.bi, %bb.bf, %.noexc.i.i, %bb.bd
  store ptr null, ptr %.reload.addr525, align 8, !tbaa !190
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.bh
  %i.nh = load ptr, ptr %i.ak, align 8, !tbaa !193, !noalias !529 ; 7 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !193, !noalias !529
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.20") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(144) %i.nh)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %.thread
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = atomicrmw add ptr %i.ni, i64 -1 acq_rel, align 8
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.bk, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.bk:                                            ; preds = %bb.bj
  %i.nl = load ptr, ptr %i.nh, align 8, !tbaa !71
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #32, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.bl:                                            ; preds = %.thread
  %i.no = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nq = atomicrmw add ptr %i.np, i64 -1 acq_rel, align 8
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %.body145.from.398, label %.from..body145

.body145.from.398:                                ; preds = %bb.bl
  %i.ns = load ptr, ptr %i.nh, align 8, !tbaa !71
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #32, !inline_history !2
  br label %.from..body145

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.bk, %bb.bj
  %.reload517 = load ptr, ptr %.spill.addr507, align 8, !tbaa !195 ; 4 uses
  %i.nv = load ptr, ptr %.reload517, align 8, !tbaa !200 ; 5 uses
  %.not.i.i194 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i194, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %.reload517, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !201 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.nv, %i.nx
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i195

.lr.ph.i.i.i.i.i195:                              ; preds = %bb.bm, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ny, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.nx, %bb.bm ] ; 3 uses
  %i.ny = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.nz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !204 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i195
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = atomicrmw add ptr %i.ob, i64 -1 acq_rel, align 8
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %bb.bo, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.oe = load ptr, ptr %i.oa, align 8, !tbaa !71
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(24) %i.oa) #32, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oa) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn, %.lr.ph.i.i.i.i.i195
  %i.oh = load i8, ptr %i.ny, align 8
  %i.oi = trunc i8 %i.oh to i1
  br i1 %i.oi, label %bb.bp, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.bp:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.oj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !83
  %i.ol = load i64, ptr %i.ny, align 8
  %i.om = and i64 %i.ol, -2
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.om) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.bp, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i196 = icmp eq ptr %i.nv, %i.ny
  br i1 %.not.i.i.i.i.i196, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i195

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload513 = load ptr, ptr %.spill.addr507, align 8, !tbaa !195 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload513, align 8, !tbaa !200
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.bm, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload511 = phi ptr [ %.reload513, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload517, %bb.bm ] ; 2 uses
  %i.on = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.nv, %bb.bm ] ; 2 uses
  store ptr %i.nv, ptr %i.nw, align 8, !tbaa !201
  %i.oo = getelementptr inbounds nuw i8, ptr %.reload511, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !205
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.os) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload511, i8 0, i64 24, i1 false)
  %.reload519.pre = load ptr, ptr %.spill.addr507, align 8, !tbaa !195
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i
  %.reload519 = phi ptr [ %.reload517, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ], [ %.reload519.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ] ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.reload519, i64 8
  %i.ou = load <2 x ptr>, ptr %.reload.addr526, align 8, !tbaa !205
  store <2 x ptr> %i.ou, ptr %.reload519, align 8, !tbaa !205
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 768712 ; 4 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !205
  %i.ox = getelementptr inbounds nuw i8, ptr %.reload519, i64 16
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr526, i8 0, i64 24, i1 false)
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr525) #32
  %i.oy = getelementptr inbounds nuw i8, ptr %.reload519, i64 84
  store i8 1, ptr %i.oy, align 4, !tbaa !241
  %i.oz = load ptr, ptr %.reload519, align 8, !tbaa !200 ; 2 uses
  %i.pa = load ptr, ptr %i.ot, align 8, !tbaa !201
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = sdiv exact i64 %i.pd, 72
  store ptr %i.oz, ptr %.reload.addr540, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 769032
  store i64 %i.pe, ptr %i.pf, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr540)
          to label %.noexc149 unwind label %.body150.from.421

.noexc149:                                        ; preds = %bb.bq
  %i.pg = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.ph = load i64, ptr %i.ov, align 8, !tbaa !245
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr525, ptr %i.pg, i64 %i.ph)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %.noexc149
  %i.pi = load i64, ptr %i.ar, align 8, !tbaa !246 ; 2 uses
  %i.pj = icmp ugt i64 %i.pi, 5
  br i1 %i.pj, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.pk = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.pl = mul i64 %i.pi, 24
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pl) #36
  br label %bb.bv

bb.bt:                                            ; preds = %.noexc149
  %i.pm = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pn = load i64, ptr %i.ar, align 8, !tbaa !246 ; 2 uses
  %i.po = icmp ugt i64 %i.pn, 5
  br i1 %i.po, label %bb.bu, label %.from.431

bb.bu:                                            ; preds = %bb.bt
  %i.pp = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.pq = mul i64 %i.pn, 24
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.pq) #36
  br label %.from.431

bb.bv:                                            ; preds = %bb.bs, %bb.br
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !247
  store ptr %i.ps, ptr %.reload.addr537, align 8, !tbaa !248
  %i.pt = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr545)
          to label %bb.bw unwind label %.from.415

bb.bw:                                            ; preds = %bb.bv
  %i.pu = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.pv = icmp eq i8 %i.pu, 0
  br i1 %i.pv, label %bb.bx, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !249

bb.bx:                                            ; preds = %bb.bw
  %i.pw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i152 = icmp eq i32 %i.pw, 0
  br i1 %.not.i152, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bz unwind label %.body153.from.408

bb.bz:                                            ; preds = %bb.by
  %i.px = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body153.from.408:                                ; preds = %bb.by
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.from..body153

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.bz, %bb.bx, %bb.bw
  %.reload = load i32, ptr %.spill.addr, align 4, !tbaa !195
  %i.pz = load i32, ptr %i.hr, align 4, !tbaa !168
  %i.qa = mul i64 %i.pt, 3
  store ptr %.reload.addr545, ptr %15, align 8, !tbaa !251
  %i.qb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.reload.addr544, ptr %i.qb, align 8, !tbaa !251
  %i.qc = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.reload.addr548, ptr %i.qc, align 8, !tbaa !252
  %i.qd = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %.reload.addr525, ptr %i.qd, align 8, !tbaa !254
  %i.qe = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %.reload.addr537, ptr %i.qe, align 8, !tbaa !256
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.pz, i64 noundef %i.qa, ptr noundef nonnull byval(%class.anon.91) align 8 %15, i32 noundef %.reload)
          to label %bb.ca unwind label %.body153.from.

bb.ca:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.qf = load ptr, ptr %i.ov, align 8, !tbaa !81
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load atomic i32, ptr %i.qg acquire, align 4
  %i.qi = icmp slt i32 %i.qh, 2
  br i1 %i.qi, label %bb.cb, label %AfterCoroSave286

bb.cb:                                            ; preds = %bb.ca
  %i.qj = load ptr, ptr %i.ov, align 8, !tbaa !81
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = atomicrmw add ptr %i.qk, i32 -1 acq_rel, align 4
  %i.qm = icmp slt i32 %i.ql, 1
  br i1 %i.qm, label %bb.cc, label %.thread239.sink.split

bb.cc:                                            ; preds = %bb.cb
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i159 unwind label %.from..loopexit.split-lp.i.i156

.noexc.i.i159:                                    ; preds = %bb.cc
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !170 ; 7 uses
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !183
  %i.qq = and i32 %i.qp, 8
  %.not.i.i.i.i160 = icmp eq i32 %i.qq, 0
  br i1 %.not.i.i.i.i160, label %bb.cd, label %.thread239.sink.split

bb.cd:                                            ; preds = %.noexc.i.i159
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !184 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i161 = icmp eq ptr %i.qs, %i.qu
  br i1 %.not12.i.i.i.i.i161, label %.thread239.sink.split, label %.from..lr.ph.i.i.i.i.i162

.from..lr.ph.i.i.i.i.i162:                        ; preds = %bb.cd
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qo, i64 33
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  br label %.from..noexc2.i.i166

.from..noexc2.i.i166:                             ; preds = %.noexc2.i.i166, %.from..lr.ph.i.i.i.i.i162
  %.sroa.09.013.i.i.i.i.i163 = phi ptr [ %i.qs, %.from..lr.ph.i.i.i.i.i162 ], [ %i.rk, %.noexc2.i.i166 ] ; 2 uses
  %i.qz = load ptr, ptr %.sroa.09.013.i.i.i.i.i163, align 8, !tbaa !188 ; 2 uses
  %i.ra = load i8, ptr %i.qv, align 8             ; 2 uses
  %i.rb = trunc i8 %i.ra to i1                    ; 2 uses
  %i.rc = load ptr, ptr %i.qw, align 8
  %i.rd = select i1 %i.rb, ptr %i.rc, ptr %i.qx
  %i.re = load i64, ptr %i.qy, align 8
  %i.rf = lshr i8 %i.ra, 1
  %i.rg = zext nneg i8 %i.rf to i64
  %i.rh = select i1 %i.rb, i64 %i.re, i64 %i.rg
  %i.ri = load ptr, ptr %i.qz, align 8, !tbaa !71
  %i.rj = load ptr, ptr %i.ri, align 8
  invoke void %i.rj(ptr noundef nonnull align 8 dereferenceable(8) %i.qz, ptr %i.rd, i64 %i.rh, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i166 unwind label %.from..loopexit.i.i164, !inline_history !0

.noexc2.i.i166:                                   ; preds = %.from..noexc2.i.i166
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i163, i64 16 ; 2 uses
  %.not.i.i.i.i.i167 = icmp eq ptr %i.rk, %i.qu
  br i1 %.not.i.i.i.i.i167, label %.thread239.sink.split, label %.from..noexc2.i.i166

.from..loopexit.i.i164:                           ; preds = %.from..noexc2.i.i166
  %lpad.loopexit.i.i165 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ce

.from..loopexit.split-lp.i.i156:                  ; preds = %bb.cc
  %lpad.loopexit.split-lp.i.i157 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ce

bb.ce:                                            ; preds = %.from..loopexit.split-lp.i.i156, %.from..loopexit.i.i164
  %lpad.phi.i.i158 = phi { ptr, i32 } [ %lpad.loopexit.i.i165, %.from..loopexit.i.i164 ], [ %lpad.loopexit.split-lp.i.i157, %.from..loopexit.split-lp.i.i156 ]
  %i.rl = extractvalue { ptr, i32 } %lpad.phi.i.i158, 0
  call void @__clang_call_terminate(ptr %i.rl) #37
  unreachable

AfterCoroSave286:                                 ; preds = %bb.ca
  %index.addr551 = getelementptr inbounds nuw i8, ptr %i.c, i64 769080
  store i8 1, ptr %index.addr551, align 8
  %i.rm = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr526, ptr nonnull %i.c) #32
  br i1 %i.rm, label %AfterCoroEnd, label %bb.cf

.body145.from.401:                                ; preds = %bb.bi
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body145

.from..body145:                                   ; preds = %.body145.from.401, %.body145.from.398, %bb.bl
  %eh.lpad-body146 = phi { ptr, i32 } [ %i.rn, %.body145.from.401 ], [ %i.no, %.body145.from.398 ], [ %i.no, %bb.bl ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr525) #32
  br label %.from.431

.body150.from.421:                                ; preds = %bb.bq
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.431

.from.415:                                        ; preds = %bb.bv, %bb.cl
  %i.rp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body153

.body153.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.rq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body153

bb.cf:                                            ; preds = %AfterCoroSave286
  %.pr237 = load ptr, ptr %.reload.addr526, align 8, !tbaa !258 ; 3 uses
  %.not.i168 = icmp eq ptr %.pr237, null
  br i1 %.not.i168, label %.thread239, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rr = getelementptr inbounds nuw i8, ptr %.pr237, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  invoke void %i.rs(ptr nonnull %.pr237)
          to label %.thread239.sink.split unwind label %.body153.from.411, !inline_history !4

.thread239.sink.split:                            ; preds = %.noexc2.i.i166, %bb.cg, %bb.cd, %.noexc.i.i159, %bb.cb
  store ptr null, ptr %.reload.addr526, align 8, !tbaa !258
  br label %.thread239

.thread239:                                       ; preds = %.thread239.sink.split, %bb.cf
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.ch unwind label %.body153.from.411

bb.ch:                                            ; preds = %.thread239
  %.reload521 = load ptr, ptr %.spill.addr507, align 8, !tbaa !195
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr526) #32
  %i.rt = getelementptr inbounds nuw i8, ptr %.reload521, i64 220
  store i32 1, ptr %i.rt, align 4, !tbaa !259
  %i.ru = getelementptr inbounds nuw i8, ptr %i.c, i64 768912 ; 3 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !260 ; 3 uses
  %i.rw = load ptr, ptr %i.di, align 8, !tbaa !99
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 72
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !260
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 80
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !99
  %i.sc = icmp eq ptr %i.rz, %i.sb
  br i1 %i.sc, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.reload523 = load ptr, ptr %.spill.addr507, align 8, !tbaa !195 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.reload523, i64 104 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !99 ; 7 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.reload523, i64 112
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !100
  %i.sh = icmp ult ptr %i.se, %i.sg
  br i1 %i.sh, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.se, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527, i8 0, i64 24, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 768864 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.si, ptr noundef nonnull align 8 dereferenceable(24) %i.sj, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sj, i8 0, i64 24, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 768888 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sk, ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i8 0, i64 24, i1 false)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 72 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sm, i8 0, i64 24, i1 false)
  %i.so = load <2 x ptr>, ptr %i.ru, align 8, !tbaa !100
  store <2 x ptr> %i.so, ptr %i.sm, align 8, !tbaa !100
  %i.sp = load ptr, ptr %i.dk, align 8, !tbaa !100
  store ptr %i.sp, ptr %i.sn, align 8, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ru, i8 0, i64 24, i1 false)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.se, i64 96
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.sr = getelementptr inbounds nuw i8, ptr %.reload523, i64 96
  %i.ss = invoke noundef ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527)
          to label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %.from.415

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.cl, %bb.ck
  %.0.i = phi ptr [ %i.sq, %bb.ck ], [ %i.ss, %bb.cl ]
  store ptr %.0.i, ptr %i.sd, align 8, !tbaa !99
  br label %bb.cm

.body153.from.411:                                ; preds = %bb.cg, %.thread239
  %i.st = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr526) #32
  br label %.from..body153

bb.cm:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.ci, %bb.ch
  %i.su = load ptr, ptr %.reload.addr549, align 8, !tbaa !75 ; 2 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i unwind label %bb.cp

.noexc.i:                                         ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.su, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr530)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.sw = landingpad { ptr, i32 }
          catch ptr null
  %i.sx = extractvalue { ptr, i32 } %i.sw, 0
  call void @__clang_call_terminate(ptr %i.sx) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.co
  %i.sy = load i64, ptr %i.ak, align 8, !tbaa !246 ; 2 uses
  %i.sz = icmp ugt i64 %i.sy, 5
  br i1 %i.sz, label %bb.cq, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

bb.cq:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.ta = load ptr, ptr %.reload.addr525, align 8, !tbaa !244
  %i.tb = mul i64 %i.sy, 24
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.tb) #36
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from..body153:                                   ; preds = %.body153.from., %.body153.from.408, %.body153.from.411, %.from.415
  %.pn79 = phi { ptr, i32 } [ %i.rp, %.from.415 ], [ %i.st, %.body153.from.411 ], [ %i.rq, %.body153.from. ], [ %i.py, %.body153.from.408 ] ; 2 uses
  %i.tc = load i64, ptr %i.ak, align 8, !tbaa !246 ; 2 uses
  %i.td = icmp ugt i64 %i.tc, 5
  br i1 %i.td, label %.body150.from., label %.from.431

.body150.from.:                                   ; preds = %.from..body153
  %i.te = load ptr, ptr %.reload.addr525, align 8, !tbaa !244
  %i.tf = mul i64 %i.tc, 24
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.tf) #36
  br label %.from.431

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, %bb.cq
  %i.tg = load ptr, ptr %.reload.addr530, align 8, !tbaa !176 ; 5 uses
  %.not.i.i172 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i172, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 768960 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !261 ; 2 uses
  %.not6.i.i.i.i173 = icmp eq ptr %i.tg, %i.ti
  br i1 %.not6.i.i.i.i173, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %bb.cr, %.lr.ph.i.i.i.i174
  %.07.i.i.i.i175 = phi ptr [ %i.tj, %.lr.ph.i.i.i.i174 ], [ %i.ti, %bb.cr ]
  %i.tj = getelementptr inbounds i8, ptr %.07.i.i.i.i175, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.tj) #32
  %.not.i.i.i.i176 = icmp eq ptr %i.tg, %i.tj
  br i1 %.not.i.i.i.i176, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i174

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i174
  %.pre1.i.i177 = load ptr, ptr %.reload.addr530, align 8, !tbaa !176
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.cr, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.tk = phi ptr [ %.pre1.i.i177, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.tg, %bb.cr ] ; 2 uses
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !261
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 768968
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !262
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tk to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tp) #36
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(112) %.reload.addr527) #32
  call void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512) %.reload.addr524) #32
  br label %bb.ct

.from.431:                                        ; preds = %.from.404, %.from..body145, %.body150.from.421, %.body150.from., %bb.bt, %bb.bu, %.from..body153
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.ne, %.from.404 ], [ %eh.lpad-body146, %.from..body145 ], [ %.pn79, %.body150.from. ], [ %i.ro, %.body150.from.421 ], [ %i.pm, %bb.bu ], [ %i.pm, %bb.bt ], [ %.pn79, %.from..body153 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr530) #32
  br label %.from..body102

.from..body102:                                   ; preds = %.body102.from.476, %.body102.from.473, %.body102.from.467, %.body102.from.464, %.body102.from.462, %.body102.from.458, %.body102.from.456, %.body102.from.452, %.body102.from.450, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit114, %.split222, %.split226, %.split230, %.from.446, %.from.443, %.from.438, %.from.433, %.from.431
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %.body102.from.473 ], [ %i.eh, %.body102.from.476 ], [ %i.gy, %.body102.from.464 ], [ %i.fs, %.body102.from.452 ], [ %i.gi, %.body102.from.458 ], [ %i.hg, %.split230 ], [ %.pn84221, %.body102.from.450 ], [ %i.fx, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109 ], [ %.pn83225, %.body102.from.456 ], [ %i.gn, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111 ], [ %.pn82229, %.body102.from.462 ], [ %i.hd, %.body102.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit114 ], [ %i.fr, %.body102.from.467 ], [ %i.gq, %.split226 ], [ %i.ga, %.split222 ], [ %i.jd, %.from.446 ], [ %i.kt, %.from.443 ], [ %i.nc, %.from.438 ], [ %.pn79.pn.pn, %.from.431 ], [ %i.nd, %.from.433 ]
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(112) %.reload.addr527) #32
  call void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512) %.reload.addr524) #32
  br label %.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99

.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99: ; preds = %.from..body102, %.from.479, %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99.from., %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99.from.315, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit100483, %.from.486
  %.pn85.pn = phi { ptr, i32 } [ %.pn85218, %.from.486 ], [ %i.cm, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit100483 ], [ %i.cp, %.split ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98 ], [ %i.bu, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99.from.315 ], [ %.pn, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99.from. ], [ %.pn84.pn.pn.pn, %.from..body102 ], [ %i.fq, %.from.479 ]
  %.23 = extractvalue { ptr, i32 } %.pn85.pn, 0
  %i.tq = call ptr @__cxa_begin_catch(ptr %.23) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr549)
          to label %bb.cs unwind label %bb.cx

bb.cs:                                            ; preds = %.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99
  invoke void @__cxa_end_catch()
          to label %bb.ct unwind label %.from.497

bb.ct:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %bb.cs
  %i.tr = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = atomicrmw add ptr %i.ts, i32 -1 acq_rel, align 4 ; 2 uses
  %i.tu = icmp slt i32 %i.tt, 1
  br i1 %i.tu, label %bb.cu, label %_ZN3tev5Latch9countDownEv.exit.i178

bb.cu:                                            ; preds = %bb.ct
  %i.tv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i183 unwind label %.from..loopexit.split-lp.i.i180

.noexc.i.i183:                                    ; preds = %bb.cu
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !170 ; 7 uses
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !183
  %i.ty = and i32 %i.tx, 8
  %.not.i.i.i.i184 = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i.i.i184, label %bb.cv, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.cv:                                            ; preds = %.noexc.i.i183
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !184 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i185 = icmp eq ptr %i.ua, %i.uc
  br i1 %.not12.i.i.i.i.i185, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i186

.from..lr.ph.i.i.i.i.i186:                        ; preds = %bb.cv
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tw, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tw, i64 48
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tw, i64 33
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  br label %.from..noexc2.i.i190

.from..noexc2.i.i190:                             ; preds = %.noexc2.i.i190, %.from..lr.ph.i.i.i.i.i186
  %.sroa.09.013.i.i.i.i.i187 = phi ptr [ %i.ua, %.from..lr.ph.i.i.i.i.i186 ], [ %i.us, %.noexc2.i.i190 ] ; 2 uses
  %i.uh = load ptr, ptr %.sroa.09.013.i.i.i.i.i187, align 8, !tbaa !188 ; 2 uses
  %i.ui = load i8, ptr %i.ud, align 8             ; 2 uses
  %i.uj = trunc i8 %i.ui to i1                    ; 2 uses
  %i.uk = load ptr, ptr %i.ue, align 8
  %i.ul = select i1 %i.uj, ptr %i.uk, ptr %i.uf
  %i.um = load i64, ptr %i.ug, align 8
  %i.un = lshr i8 %i.ui, 1
  %i.uo = zext nneg i8 %i.un to i64
  %i.up = select i1 %i.uj, i64 %i.um, i64 %i.uo
  %i.uq = load ptr, ptr %i.uh, align 8, !tbaa !71
  %i.ur = load ptr, ptr %i.uq, align 8
  invoke void %i.ur(ptr noundef nonnull align 8 dereferenceable(8) %i.uh, ptr %i.ul, i64 %i.up, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i190 unwind label %.from..loopexit.i.i188, !inline_history !0

.noexc2.i.i190:                                   ; preds = %.from..noexc2.i.i190
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i187, i64 16 ; 2 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.us, %i.uc
  br i1 %.not.i.i.i.i.i191, label %_ZN3tev5Latch9countDownEv.exit.i178, label %.from..noexc2.i.i190

.from..loopexit.i.i188:                           ; preds = %.from..noexc2.i.i190
  %lpad.loopexit.i.i189 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cw

.from..loopexit.split-lp.i.i180:                  ; preds = %bb.cu
  %lpad.loopexit.split-lp.i.i181 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cw

bb.cw:                                            ; preds = %.from..loopexit.split-lp.i.i180, %.from..loopexit.i.i188
  %lpad.phi.i.i182 = phi { ptr, i32 } [ %lpad.loopexit.i.i189, %.from..loopexit.i.i188 ], [ %lpad.loopexit.split-lp.i.i181, %.from..loopexit.split-lp.i.i180 ]
  %i.ut = extractvalue { ptr, i32 } %lpad.phi.i.i182, 0
  call void @__clang_call_terminate(ptr %i.ut) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i178:              ; preds = %.noexc2.i.i190, %bb.ct
  %i.uu = icmp slt i32 %i.tt, 2
  br i1 %i.uu, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i183, %bb.cv, %_ZN3tev5Latch9countDownEv.exit.i178
  %i.uv = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !263 ; 2 uses
  %i.ux = inttoptr i64 %i.uw to ptr               ; 3 uses
  store ptr %i.ux, ptr %.reload.addr524, align 8
  %.not.i192 = icmp eq i64 %i.uw, 0
  br i1 %.not.i192, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend292

AfterCoroSuspend292:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.c, align 8
  %index.addr552 = getelementptr inbounds nuw i8, ptr %i.c, i64 769080
  store i8 2, ptr %index.addr552, align 8
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr nonnull %i.ux)
  br label %AfterCoroEnd

bb.cx:                                            ; preds = %.from._ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit99
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.504 unwind label %bb.da

.from.497:                                        ; preds = %bb.cs
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.504

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i178
  %i.vb = load ptr, ptr %i.m, align 8, !tbaa !82  ; 5 uses
  %.not.i.i193 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i193, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = atomicrmw add ptr %i.vc, i64 -1 acq_rel, align 8
  %i.ve = icmp eq i64 %i.vd, 0
  br i1 %i.ve, label %bb.cz, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.cz:                                            ; preds = %bb.cy
  %i.vf = load ptr, ptr %i.vb, align 8, !tbaa !71
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef nonnull align 8 dereferenceable(24) %i.vb) #32, !inline_history !5
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vb) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.cy, %bb.cz
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr549) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 769088) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend292, %AfterCoroSave286, %AfterCoroSave
  ret void

.body.from.504:                                   ; preds = %bb.cx, %.from.497
  %.pn86 = phi { ptr, i32 } [ %i.va, %.from.497 ], [ %i.uz, %bb.cx ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr549) #32
  br label %.body

.body:                                            ; preds = %.body.from.504, %.body.from.501, %.body.from.
  %.merged89 = phi { ptr, i32 } [ %.pn86, %.body.from.504 ], [ %i.h, %.body.from. ], [ %i.g, %.body.from.501 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 769088) #32
  resume { ptr, i32 } %.merged89

bb.da:                                            ; preds = %bb.cx
  %i.vi = landingpad { ptr, i32 }
          catch ptr null
  %i.vj = extractvalue { ptr, i32 } %i.vi, 0
  call void @__clang_call_terminate(ptr %i.vj) #37
  unreachable

bb.db:                                            ; preds = %bb.ap, %bb.ai, %bb.ab, %bb.l
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !75, !noalias !532 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !269, !noalias !532 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #35
          to label %bb.e unwind label %bb.f, !noalias !532

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #32, !noalias !532
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !532 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !269, !noalias !532
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #32, !noalias !532
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !263
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !271
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !263
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit

_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit: ; preds = %bb.h, %bb.g
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.h, %bb.f ]
  %i.u = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.u) #37
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @_ZN3tev7toLowerENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr, i64) local_unnamed_addr #8

declare void @_ZN3tev8toStringERKNSt3__14__fs10filesystem4pathE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !83
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.017.i = phi ptr [ %i.h, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit
end_hunk_0
begin_hunk_1_@_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE:bb.a
  br i1 %i.h, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = load i64, ptr %2, align 8
  %i.l = and i64 %i.k, -2
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.e, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.f, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.f, %.split ]
  call void @__cxa_free_exception(ptr %i.c) #32
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %.pn21, %bb.e ], [ %i.f, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.f, %.split ]
  resume { ptr, i32 } %.pn20

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !168  ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.noexc, label %bb.h, !prof !276

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %i.a to i64
  %i.q = zext nneg i32 %i.n to i64
  %i.r = mul nuw nsw i64 %i.p, %i.q
  ret i64 %i.r

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.68") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.91) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.70", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !555
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !558
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !558
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !558
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !558
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !559
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !560
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !560

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !279, !noalias !560
  store ptr %i.j, ptr %i.i, align 8, !tbaa !279, !alias.scope !560
  store ptr null, ptr %7, align 8, !tbaa !279, !noalias !560
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !560 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !560
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !560
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !560 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !560
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !560
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !170 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !183
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #37
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !170 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !183
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !184 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i30 ], [ %i.ck, %.noexc2.i.i34 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !188 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !0

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  call void @__clang_call_terminate(ptr %i.cl) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !263 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 1, ptr %index.addr80, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.74 unwind label %bb.w

.from.70:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.74

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #32
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #32
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !258
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.97, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr %1, ptr %i.c, align 8, !tbaa !263
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !183
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not12.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc2.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !0

.noexc2.i:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.af) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !258
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !258
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !183
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_1
begin_hunk_2_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.ac unwind label %.thread184

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.137.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ax = load i8, ptr %8, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %.split, label %.from.137.sink.split

.thread184:                                       ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ba = load i8, ptr %8, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134

.split:                                           ; preds = %.thread184, %bb.i
  %i.bc = phi { ptr, i32 } [ %i.az, %.thread184 ], [ %i.aw, %bb.i ] ; 2 uses
  %.0186 = phi i1 [ false, %.thread184 ], [ true, %bb.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #32
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i32 %i.bl, ptr %10, align 8, !tbaa !439
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !440
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !263
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !445 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !446
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !263
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !263
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !263
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !447
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !447
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !263
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !445
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1282

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #32
  br label %.from.158

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !170 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !183
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !184 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cm, %.from..lr.ph.i.i.i.i.i ], [ %i.de, %.noexc2.i.i ] ; 2 uses
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 8             ; 2 uses
  %i.cv = trunc i8 %i.cu to i1                    ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cr
  %i.cy = load i64, ptr %i.cs, align 8
  %i.cz = lshr i8 %i.cu, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cv, i64 %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !71
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.de, %i.co
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.df = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.df) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !448 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !445 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !448
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !445
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !446
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #37
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #32
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.158
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !170 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !183
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !184 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ei, %.from..lr.ph.i.i.i.i.i65 ], [ %i.fa, %.noexc2.i.i69 ] ; 2 uses
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !188 ; 2 uses
  %i.eq = load i8, ptr %i.el, align 8             ; 2 uses
  %i.er = trunc i8 %i.eq to i1                    ; 2 uses
  %i.es = load ptr, ptr %i.em, align 8
  %i.et = select i1 %i.er, ptr %i.es, ptr %i.en
  %i.eu = load i64, ptr %i.eo, align 8
  %i.ev = lshr i8 %i.eq, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = select i1 %i.er, i64 %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !71
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !0

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fa, %i.ek
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.v
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.fb = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.fb) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !263 ; 2 uses
  %i.ff = inttoptr i64 %i.fe to ptr               ; 3 uses
  store ptr %i.ff, ptr %.reload.addr178, align 8
  %.not.i71 = icmp eq i64 %i.fe, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend109

AfterCoroSuspend109:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 1, ptr %index.addr183, align 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr nonnull %i.ff)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.158
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.174 unwind label %bb.ab

.from.167:                                        ; preds = %bb.u
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.174

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !71
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #32
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #37
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #32
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #32
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future.70") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.68") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.70", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1303
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1303
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1303
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1303
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1304
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1305
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1305

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !1305
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !279, !noalias !1305
  store ptr %i.j, ptr %i.i, align 8, !tbaa !279, !alias.scope !1305
  store ptr null, ptr %4, align 8, !tbaa !279, !noalias !1305
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1305 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !1305
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !1305
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1305 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1305
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1305
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !263
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr, ptr nonnull align 1 poison, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !170 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !183
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !184 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ag, %.from..lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc2.i.i ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.az = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #37
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !170 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !183
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !184 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i26 ], [ %i.ck, %.noexc2.i.i30 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !188 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !0

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  call void @__clang_call_terminate(ptr %i.cl) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !263 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr76, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.70 unwind label %bb.w

.from.66:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.70

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #32
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.68") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.70", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 20 uses
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy, ptr %destroy.addr, align 8
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 8 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1316
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1316
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1316
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1316
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1317
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1318
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1318

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !1318
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !279, !noalias !1318
  store ptr %i.j, ptr %i.i, align 8, !tbaa !279, !alias.scope !1318
  store ptr null, ptr %2, align 8, !tbaa !279, !noalias !1318
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1318 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !1318
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !1318
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1318 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1318
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1318
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !448    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !445  ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.u, ptr %.spill.addr, align 8
  %.not51.not63 = icmp eq ptr %i.s, %i.u
  br i1 %.not51.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.041.064.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 5 uses
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.041.064 = phi ptr [ %i.bo, %bb.o ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  store ptr %.sroa.041.064, ptr %.sroa.041.064.spill.addr, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.041.064, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !170 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !184 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aj, %.from..lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc2.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bc = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bc) #37
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !450
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #32
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !450 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !450 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i32 } %i.bh, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #32 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !450
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !450
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.af

.from.104:                                        ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %.from.104 ], [ %i.bp, %bb.p ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge.from.._crit_edge.loopexit:            ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !455
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !456
  %i.br = ptrtoint ptr %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.from.._crit_edge.loopexit
  %i.bs = phi ptr [ %.pre70, %._crit_edge.from.._crit_edge.loopexit ], [ null, %bb.e ] ; 2 uses
  %i.bt = phi i64 [ %i.br, %._crit_edge.from.._crit_edge.loopexit ], [ 0, %bb.e ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bt, %i.bv                    ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 8
  br i1 %i.bx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #35
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !455
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #35
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  br label %.loopexit52

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #37
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !455 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !456
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !455
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !457
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #36
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !170 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !183
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !184 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 33
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.dh, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dz, %.noexc2.i.i36 ] ; 2 uses
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !188 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !71
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !0

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.z
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.ea = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  call void @__clang_call_terminate(ptr %i.ea) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !263 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  store ptr %i.ee, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.ed, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 1, ptr %index.addr144, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr nonnull %i.ee)
  br label %AfterCoroEnd

bb.ac:                                            ; preds = %.loopexit52
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.128 unwind label %bb.af

.from.124:                                        ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.128

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #32
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #37
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !448    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !448
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !445
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !446
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #10

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445
  %i.d = load ptr, ptr %0, align 8, !tbaa !448
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775776
  %i.n = ashr exact i64 %i.m, 4
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 576460752303423487 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 576460752303423487
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #34 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !263
  store i64 %i.v, ptr %i.s, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !263
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !263
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !447
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !447
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !445 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !448   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !263
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !263
  store ptr null, ptr %i.ag, align 8, !tbaa !263
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !263
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !263
  store ptr null, ptr %i.aj, align 8, !tbaa !1320
  store ptr null, ptr %i.ak, align 8, !tbaa !1321
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !447
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !447
  store ptr null, ptr %i.an, align 8, !tbaa !447
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1319

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !446
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !446
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !446
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !446
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !446
  store ptr %i.t, ptr %i.a, align 8, !tbaa !446
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #32
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #36
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.15) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.68") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.3", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.70", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.70", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 13 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !263
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1332
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1332
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1332
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1332
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1333
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1334
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1334

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !1334
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !279, !noalias !1334
  store ptr %i.j, ptr %i.i, align 8, !tbaa !279, !alias.scope !1334
  store ptr null, ptr %8, align 8, !tbaa !279, !noalias !1334
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1334 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !1334
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !1334
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1334 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1334
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #32, !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1334
  store ptr %4, ptr %.reload.addr, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %index.addr82, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %5, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #32
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task.68") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.70", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1345
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1345
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1345
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1345
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1346
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1347
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1347

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !263, !alias.scope !1347
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !279, !noalias !1347
  store ptr %i.j, ptr %i.i, align 8, !tbaa !279, !alias.scope !1347
  store ptr null, ptr %2, align 8, !tbaa !279, !noalias !1347
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1347 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !263, !noalias !1347
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !263, !alias.scope !1347
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1347 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1347
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1347
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1347
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1348, !nonnull !326, !align !332
  %i.u = load i32, ptr %1, align 8, !tbaa !439
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !440
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !183
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.al, %.from..lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc2.i.i ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.from..loopexit.split-lp.i.i:                     ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.be = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !183
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !184 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 33
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.bx, %.from..lr.ph.i.i.i.i.i22 ], [ %i.cp, %.noexc2.i.i26 ] ; 2 uses
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !188 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !71
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !0

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.cp, %i.bz
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.cq = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  call void @__clang_call_terminate(ptr %i.cq) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !263 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 1, ptr %index.addr71, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr nonnull %i.cu)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.66 unwind label %bb.w

.from.62:                                         ; preds = %bb.p
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.66

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #32
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #32
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.311", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.70", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.312, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1359 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1359
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !71, !noalias !1359
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !71, !noalias !1359
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !263, !noalias !1359
  store i64 %i.g, ptr %i.f, align 8, !tbaa !263, !noalias !1359
  store ptr %i.d, ptr %i.e, align 16, !tbaa !461, !noalias !1359
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1359

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #32, !noalias !1359
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #32, !noalias !1359
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #36, !noalias !1359
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !464, !alias.scope !1360
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !465, !alias.scope !1360
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.70") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1381, !range !333, !noundef !326
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN10moodycamel20LightweightSemaphore6signalEl.exit, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store ptr %i.d, ptr %9, align 8, !tbaa !464
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !465
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !464
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !465
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !472
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !475
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1382
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !476  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !477
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !472
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !472 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.ak, ptr noundef nonnull align 16 dereferenceable(5) %i.w, i64 5, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  br label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 16 dereferenceable(53) %8)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i unwind label %bb.m

_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i: ; preds = %bb.g, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i
  %.0.i.i = phi ptr [ %i.al, %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i ], [ %i.am, %bb.g ] ; 3 uses
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !476
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !478 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !472 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii":.from.
  %i.mt = extractelement <2 x float> %i.mp, i64 1
  store float %i.mt, ptr %i.ms, align 4, !tbaa !63
  %indvars.iv.next44.i.us = add nuw nsw i64 %indvars.iv43.i.us, 1 ; 2 uses
  %exitcond47.not.i.us = icmp eq i64 %indvars.iv.next44.i.us, %i.x
  br i1 %exitcond47.not.i.us, label %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit23.us.split", label %.lr.ph.split.split.us.i.us, !llvm.loop !1407

"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit23.us.split": ; preds = %.lr.ph.split.split.us.i.us
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count70
  br i1 %exitcond51.not, label %._crit_edge.split, label %.lr.ph.split.split.us.i.us.from..lr.ph.i.us29, !llvm.loop !1408

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %.not4.i.i, label %.lr.ph.split.split.split.us.i.us.from..lr.ph.i.us32, label %.lr.ph.split.split.split.i.from..lr.ph.i

.lr.ph.split.split.split.us.i.us.from..lr.ph.i.us32: ; preds = %.lr.ph.split.split.split, %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit24.us"
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit24.us" ], [ %i.ao, %.lr.ph.split.split.split ] ; 3 uses
  %i.mu = mul nsw i64 %indvars.iv42, %i.x
  %i.mv = getelementptr [8 x i8], ptr %i.al, i64 %i.mu
  br label %.lr.ph.split.split.split.us.i.us

.lr.ph.split.split.split.us.i.us:                 ; preds = %.lr.ph.split.split.split.us.i.us, %.lr.ph.split.split.split.us.i.us.from..lr.ph.i.us32
  %indvars.iv37.i.us = phi i64 [ %indvars.iv.next38.i.us, %.lr.ph.split.split.split.us.i.us ], [ 0, %.lr.ph.split.split.split.us.i.us.from..lr.ph.i.us32 ] ; 3 uses
  %.sroa.0.0.copyload.us25.i.us = load i64, ptr %i.ac, align 4, !tbaa !83
  %i.mw = xor i64 %indvars.iv37.i.us, -1
  %i.mx = shl nsw i64 %i.mw, 32
  %.sroa.2.0.extract.shift.i.us27105.i.us = add i64 %.sroa.0.0.copyload.us25.i.us, %i.mx
  %i.my = ashr i64 %.sroa.2.0.extract.shift.i.us27105.i.us, 32
  %i.mz = mul nsw i64 %i.my, %i.aj
  %i.na = add nsw i64 %i.mz, %indvars.iv42        ; 3 uses
  %i.nb = getelementptr [8 x i8], ptr %i.mv, i64 %indvars.iv37.i.us ; 2 uses
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !1433
  %i.nd = uitofp i16 %i.nc to float
  %i.ne = fdiv float %i.nd, 6.553500e+04
  %i.nf = mul i64 %i.na, %.pre93.i
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.pre91.i, i64 %i.nf
  store float %i.ne, ptr %i.ng, align 4, !tbaa !63
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  %i.ni = mul i64 %i.na, %.pre98.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.pre95.i, i64 %i.ni
  %i.nk = load <2 x i16>, ptr %i.nh, align 2, !tbaa !1433
  %i.nl = uitofp <2 x i16> %i.nk to <2 x float>
  %i.nm = fdiv <2 x float> %i.nl, splat (float 6.553500e+04) ; 2 uses
  %i.nn = extractelement <2 x float> %i.nm, i64 0
  store float %i.nn, ptr %i.nj, align 4, !tbaa !63
  %i.no = mul i64 %i.na, %.pre103.i
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.pre100.i, i64 %i.no
  %i.nq = extractelement <2 x float> %i.nm, i64 1
  store float %i.nq, ptr %i.np, align 4, !tbaa !63
  %indvars.iv.next38.i.us = add nuw nsw i64 %indvars.iv37.i.us, 1 ; 2 uses
  %exitcond41.not.i.us = icmp eq i64 %indvars.iv.next38.i.us, %i.x
  br i1 %exitcond41.not.i.us, label %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit24.us", label %.lr.ph.split.split.split.us.i.us, !llvm.loop !1407

"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit24.us": ; preds = %.lr.ph.split.split.split.us.i.us
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count70
  br i1 %exitcond46.not, label %._crit_edge.split, label %.lr.ph.split.split.split.us.i.us.from..lr.ph.i.us32, !llvm.loop !1408

._crit_edge.split:                                ; preds = %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit25", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit24.us", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit23.us.split", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit23.us.split.us.us", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit.us.split.split", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit.us.split.split.us.us", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit.us.split.us.us.split", %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit.us.split.us.us.split.us.us", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr101)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.split
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #37
  unreachable

.lr.ph.split.split.split.i.from..lr.ph.i:         ; preds = %.lr.ph.split.split.split, %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit25"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit25" ], [ %i.ao, %.lr.ph.split.split.split ] ; 3 uses
  %i.nt = mul nsw i64 %indvars.iv, %i.x
  %i.nu = getelementptr [8 x i8], ptr %i.al, i64 %i.nt
  %i.nv = xor i64 %indvars.iv, -1
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.i.from..lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.split.split.i ], [ 0, %.lr.ph.split.split.split.i.from..lr.ph.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 4, !tbaa !83 ; 2 uses
  %i.nw = xor i64 %indvars.iv.i, -1
  %i.nx = add i64 %.sroa.0.0.copyload.i, %i.nv
  %i.ny = shl nsw i64 %i.nw, 32
  %.sroa.2.0.extract.shift.i104.i = add i64 %.sroa.0.0.copyload.i, %i.ny
  %i.nz = ashr i64 %.sroa.2.0.extract.shift.i104.i, 32
  %i.oa = mul nsw i64 %i.nz, %i.aj
  %sext = shl i64 %i.nx, 32
  %i.ob = ashr exact i64 %sext, 32
  %i.oc = add nsw i64 %i.oa, %i.ob                ; 3 uses
  %i.od = getelementptr [8 x i8], ptr %i.nu, i64 %indvars.iv.i ; 2 uses
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !1433
  %i.of = uitofp i16 %i.oe to float
  %i.og = fdiv float %i.of, 6.553500e+04
  %i.oh = mul i64 %i.oc, %.pre93.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.pre91.i, i64 %i.oh
  store float %i.og, ptr %i.oi, align 4, !tbaa !63
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %i.ok = mul i64 %i.oc, %.pre98.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.pre95.i, i64 %i.ok
  %i.om = load <2 x i16>, ptr %i.oj, align 2, !tbaa !1433
  %i.on = uitofp <2 x i16> %i.om to <2 x float>
  %i.oo = fdiv <2 x float> %i.on, splat (float 6.553500e+04) ; 2 uses
  %i.op = extractelement <2 x float> %i.oo, i64 0
  store float %i.op, ptr %i.ol, align 4, !tbaa !63
  %i.oq = mul i64 %i.oc, %.pre103.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.pre100.i, i64 %i.oq
  %i.os = extractelement <2 x float> %i.oo, i64 1
  store float %i.os, ptr %i.or, align 4, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit25", label %.lr.ph.split.split.split.i, !llvm.loop !1407

"_ZZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_1clEi.exit.loopexit25": ; preds = %.lr.ph.split.split.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count70
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.split.split.split.i.from..lr.ph.i, !llvm.loop !1408

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.ot = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = atomicrmw add ptr %i.ou, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ow = icmp slt i32 %i.ov, 1
  br i1 %i.ow, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !170 ; 7 uses
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !183
  %i.pa = and i32 %i.oz, 8
  %.not.i.i.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !184 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.pc, %i.pe
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 33
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.pc, %.from..lr.ph.i.i.i.i.i ], [ %i.pu, %.noexc2.i.i ] ; 2 uses
  %i.pj = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.pk = load i8, ptr %i.pf, align 8             ; 2 uses
  %i.pl = trunc i8 %i.pk to i1                    ; 2 uses
  %i.pm = load ptr, ptr %i.pg, align 8
  %i.pn = select i1 %i.pl, ptr %i.pm, ptr %i.ph
  %i.po = load i64, ptr %i.pi, align 8
  %i.pp = lshr i8 %i.pk, 1
  %i.pq = zext nneg i8 %i.pp to i64
  %i.pr = select i1 %i.pl, i64 %i.po, i64 %i.pq
  %i.ps = load ptr, ptr %i.pj, align 8, !tbaa !71
  %i.pt = load ptr, ptr %i.ps, align 8
  invoke void %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, ptr %i.pn, i64 %i.pr, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.pu, %i.pe
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.pv = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.pv) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.pw = icmp slt i32 %i.ov, 2
  br i1 %i.pw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.px = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.py = load i64, ptr %i.px, align 8, !tbaa !263 ; 2 uses
  %i.pz = inttoptr i64 %i.py to ptr               ; 3 uses
  store ptr %i.pz, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.py, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr102 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr102, align 8
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr nonnull %i.pz)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.qb = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i20 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = atomicrmw add ptr %i.qc, i64 -1 acq_rel, align 8
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.qf = load ptr, ptr %i.qb, align 8, !tbaa !71
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(24) %i.qb) #32, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qb) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr101) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.95, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.95 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #10

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #28

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !455  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !455
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.394", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.g, ptr %3, align 8, !tbaa !1441, !alias.scope !1442
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !482, !alias.scope !1442
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #34
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !456
  store ptr %i.l, ptr %i.i, align 8, !tbaa !455
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #32
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1440

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !455
  br label %bb.e

.body:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %4, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = load i64, ptr %4, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.h:                                             ; preds = %.body, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.t, %.body ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #32
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !456
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.b
  %i.f = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !455
end_hunk_3
begin_hunk_4_@_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_:bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #35
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #32
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !262
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !262
  store ptr %i.l, ptr %i.i, align 8, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !269
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !269
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #32
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #32
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !183
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !450
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #32
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !450 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !450 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #32
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #32 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #32
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !450 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !450
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #32
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !455
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #32
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #35
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #32
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !455
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #35
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #32
  br label %.loopexit52

.loopexit52.from.111:                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  br label %.loopexit52

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #37
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !455 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !456
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !455
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !457
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #36
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #32
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !81
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !170 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !183
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !184 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i31 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i32

.from..lr.ph.i.i.i.i.i32:                         ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i36

.from..noexc2.i.i36:                              ; preds = %.noexc2.i.i36, %.from..lr.ph.i.i.i.i.i32
  %.sroa.09.013.i.i.i.i.i33 = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i32 ], [ %i.dc, %.noexc2.i.i36 ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !188 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !0

.noexc2.i.i36:                                    ; preds = %.from..noexc2.i.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.dc, %i.cm
  br i1 %.not.i.i.i.i.i37, label %_ZN3tev5Latch9countDownEv.exit.i25, label %.from..noexc2.i.i36

.from..loopexit.i.i34:                            ; preds = %.from..noexc2.i.i36
  %lpad.loopexit.i.i35 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i.i26:                   ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i27 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i.i26, %.from..loopexit.i.i34
  %lpad.phi.i.i28 = phi { ptr, i32 } [ %lpad.loopexit.i.i35, %.from..loopexit.i.i34 ], [ %lpad.loopexit.split-lp.i.i27, %.from..loopexit.split-lp.i.i26 ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i28, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !81
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !263 ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  store ptr %i.dh, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.dg, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr143, align 8
  %i.di = load ptr, ptr %i.dh, align 8
  musttail call void %i.di(ptr nonnull %i.dh)
  ret void

bb.y:                                             ; preds = %.loopexit52
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

.from.124:                                        ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !82 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.y, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.dk, %.from.124 ], [ %i.dj, %bb.y ]
  store ptr null, ptr %0, align 8
  store i8 1, ptr %index.addr143, align 8
  resume { ptr, i32 } %.pn18

bb.ac:                                            ; preds = %bb.y, %bb.k
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  tail call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #7 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !1445

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !456 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !455  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !456
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !455
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !457
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #31 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i20 = icmp eq ptr %i.b, null
  br i1 %.not.i.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr101 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr101) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !183
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i.i21 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i22

.from..lr.ph.i.i.i.i.i22:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i26

.from..noexc2.i.i26:                              ; preds = %.noexc2.i.i26, %.from..lr.ph.i.i.i.i.i22
  %.sroa.09.013.i.i.i.i.i23 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i22 ], [ %i.aj, %.noexc2.i.i26 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !188 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !0

.noexc2.i.i26:                                    ; preds = %.from..noexc2.i.i26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i23, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i27, label %_ZN3tev5Latch9countDownEv.exit.i15, label %.from..noexc2.i.i26

.from..loopexit.i.i24:                            ; preds = %.from..noexc2.i.i26
  %lpad.loopexit.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i16:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i17 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i16, %.from..loopexit.i.i24
  %lpad.phi.i.i18 = phi { ptr, i32 } [ %lpad.loopexit.i.i25, %.from..loopexit.i.i24 ], [ %lpad.loopexit.split-lp.i.i17, %.from..loopexit.split-lp.i.i16 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i18, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !263 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.an, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %index.addr71, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.62:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.ar, %.from.62 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !483

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !1446

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
          to label %bb.a unwind label %.from.64

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave49

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread35.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !183
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !184  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread35.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread35.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

.from..loopexit.split-lp.i.i:                     ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.e

bb.e:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #32
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !4

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.72

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i20

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i24 unwind label %.from..loopexit.split-lp.i.i21

.noexc.i.i24:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !170 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !183
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !184 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i26 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i26, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i27

.from..lr.ph.i.i.i.i.i27:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i31

.from..noexc2.i.i31:                              ; preds = %.noexc2.i.i31, %.from..lr.ph.i.i.i.i.i27
  %.sroa.09.013.i.i.i.i.i28 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i27 ], [ %i.bu, %.noexc2.i.i31 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !188 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i31 unwind label %.from..loopexit.i.i29, !inline_history !0

.noexc2.i.i31:                                    ; preds = %.from..noexc2.i.i31
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i32, label %_ZN3tev5Latch9countDownEv.exit.i20, label %.from..noexc2.i.i31

.from..loopexit.i.i29:                            ; preds = %.from..noexc2.i.i31
  %lpad.loopexit.i.i30 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i21:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i22 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i21, %.from..loopexit.i.i29
  %lpad.phi.i.i23 = phi { ptr, i32 } [ %lpad.loopexit.i.i30, %.from..loopexit.i.i29 ], [ %lpad.loopexit.split-lp.i.i22, %.from..loopexit.split-lp.i.i21 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i23, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !263 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr, align 8
  %.not.i33 = icmp eq i64 %i.by, 0
  br i1 %.not.i33, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  musttail call void %i.ca(ptr nonnull %i.bz)
  ret void

bb.o:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

.from.72:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave49
  ret void

bb.r:                                             ; preds = %bb.o, %.from.72
  %.pn14 = phi { ptr, i32 } [ %i.cc, %.from.72 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn14

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !1447

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !183
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i.i25 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i25, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i26

.from..lr.ph.i.i.i.i.i26:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i30

.from..noexc2.i.i30:                              ; preds = %.noexc2.i.i30, %.from..lr.ph.i.i.i.i.i26
  %.sroa.09.013.i.i.i.i.i27 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i26 ], [ %i.aj, %.noexc2.i.i30 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !188 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !0

.noexc2.i.i30:                                    ; preds = %.from..noexc2.i.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i27, i64 16 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i31, label %_ZN3tev5Latch9countDownEv.exit.i19, label %.from..noexc2.i.i30

.from..loopexit.i.i28:                            ; preds = %.from..noexc2.i.i30
  %lpad.loopexit.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i20:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i21 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i20, %.from..loopexit.i.i28
  %lpad.phi.i.i22 = phi { ptr, i32 } [ %lpad.loopexit.i.i29, %.from..loopexit.i.i28 ], [ %lpad.loopexit.split-lp.i.i21, %.from..loopexit.split-lp.i.i20 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i22, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !263 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %index.addr76, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.66:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.ar, %.from.66 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14RawImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !483

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !258 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #32
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !448 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !445 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !448
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !445
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !446
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #32
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #32
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !170  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !183
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.ab, %.from..lr.ph.i.i.i.i.i65 ], [ %i.at, %.noexc2.i.i69 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !188 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !0

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i.i.i70, label %_ZN3tev5Latch9countDownEv.exit.i58, label %.from..noexc2.i.i69

.from..loopexit.i.i67:                            ; preds = %.from..noexc2.i.i69
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i59:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i60 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i59, %.from..loopexit.i.i67
  %lpad.phi.i.i61 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.from..loopexit.i.i67 ], [ %lpad.loopexit.split-lp.i.i60, %.from..loopexit.split-lp.i.i59 ]
  %i.au = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  tail call void @__clang_call_terminate(ptr %i.au) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !263 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr178, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr183 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %index.addr183, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.167:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !82 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.167 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !1448

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #32
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !448 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !445 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !448
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !445
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !446
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !82  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(120) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !258 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !258
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !183
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i30 ], [ %i.aj, %.noexc2.i.i34 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !188 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !0

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = load i64, ptr %i.am, align 8, !tbaa !263 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %index.addr80, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.70:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(120) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !483

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(769088) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.91, align 8             ; 6 uses
  %.reload.addr524 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.reload.addr525 = getelementptr inbounds nuw i8, ptr %0, i64 768552 ; 8 uses
  %.reload.addr526 = getelementptr inbounds nuw i8, ptr %0, i64 768696 ; 13 uses
  %.reload.addr527 = getelementptr inbounds nuw i8, ptr %0, i64 768840 ; 5 uses
  %.reload.addr530 = getelementptr inbounds nuw i8, ptr %0, i64 768952 ; 4 uses
  %.reload.addr540 = getelementptr inbounds nuw i8, ptr %0, i64 769024 ; 2 uses
  %.reload.addr541 = getelementptr inbounds nuw i8, ptr %0, i64 768992 ; 2 uses
  %.reload.addr544 = getelementptr inbounds nuw i8, ptr %0, i64 769048
  %.reload.addr545 = getelementptr inbounds nuw i8, ptr %0, i64 769056 ; 2 uses
  %.reload.addr548 = getelementptr inbounds nuw i8, ptr %0, i64 769072
  %.reload.addr549 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 769080 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend288, !prof !1453

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.pr = load ptr, ptr %.reload.addr525, align 8, !tbaa !190, !noalias !1454 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body145.from.401, !inline_history !1

.thread.sink.split:                               ; preds = %bb.a
  store ptr null, ptr %.reload.addr525, align 8, !tbaa !190
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !193, !noalias !1455 ; 7 uses
  store ptr null, ptr %i.d, align 16, !tbaa !193, !noalias !1455
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.20") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(144) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.d:                                             ; preds = %.thread
  %i.l = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body145.from.398, label %.from.429

.body145.from.398:                                ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !2
  br label %.from.429

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.c, %bb.b
  %.reload.addr516 = getelementptr inbounds nuw i8, ptr %0, i64 769040 ; 3 uses
  %.reload517 = load ptr, ptr %.reload.addr516, align 16, !tbaa !195 ; 4 uses
  %i.s = load ptr, ptr %.reload517, align 8, !tbaa !200 ; 5 uses
  %.not.i.i194 = icmp eq ptr %i.s, null
  br i1 %.not.i.i194, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.reload517, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !201  ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i195

.lr.ph.i.i.i.i.i195:                              ; preds = %bb.e, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.u, %bb.e ] ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !204  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i195
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #32, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i195
  %i.ae = load i8, ptr %i.v, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.ai = load i64, ptr %i.v, align 8
  %i.aj = and i64 %i.ai, -2
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i196 = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i.i.i196, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i195

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload513 = load ptr, ptr %.reload.addr516, align 16, !tbaa !195 ; 2 uses
  %.pre.i.i = load ptr, ptr %.reload513, align 8, !tbaa !200
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.e, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %.reload511 = phi ptr [ %.reload513, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload517, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.s, %bb.e ] ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %.reload511, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !205
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ap) #36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload511, i8 0, i64 24, i1 false)
  %.reload519.pre = load ptr, ptr %.reload.addr516, align 16, !tbaa !195
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %.reload519 = phi ptr [ %.reload519.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ], [ %.reload517, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 768704 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.reload519, i64 8
  %i.as = load <2 x ptr>, ptr %.reload.addr526, align 8, !tbaa !205
  store <2 x ptr> %i.as, ptr %.reload519, align 8, !tbaa !205
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 768712 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !205
  %i.av = getelementptr inbounds nuw i8, ptr %.reload519, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr526, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr525) #32
  %i.aw = getelementptr inbounds nuw i8, ptr %.reload519, i64 84
  store i8 1, ptr %i.aw, align 4, !tbaa !241
  %i.ax = load ptr, ptr %.reload519, align 8, !tbaa !200 ; 2 uses
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !201
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 72
  store ptr %i.ax, ptr %.reload.addr540, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 769032
  store i64 %i.bc, ptr %i.bd, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr540)
          to label %.noexc149 unwind label %.body150.from.421

.noexc149:                                        ; preds = %bb.i
  %i.be = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !245
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr525, ptr %i.be, i64 %i.bf)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.noexc149
  %i.bg = load i64, ptr %i.aq, align 16, !tbaa !246 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 5
  br i1 %i.bh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.bj = mul i64 %i.bg, 24
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bj) #36
  br label %bb.n

bb.l:                                             ; preds = %.noexc149
  %i.bk = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bl = load i64, ptr %i.aq, align 16, !tbaa !246 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 5
  br i1 %i.bm, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %.reload.addr526, align 8, !tbaa !244
  %i.bo = mul i64 %i.bl, 24
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bo) #36
  br label %bb.aj

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !247
  store ptr %i.bq, ptr %.reload.addr541, align 16, !tbaa !248
  %i.br = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr545)
          to label %bb.o unwind label %.from.415

bb.o:                                             ; preds = %bb.n
  %i.bs = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !249

bb.p:                                             ; preds = %bb.o
  %i.bu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i152 = icmp eq i32 %i.bu, 0
  br i1 %.not.i152, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.r unwind label %.body153.from.408

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body153.from.408:                                ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.from..body153

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.r, %bb.p, %bb.o
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 769076
  %.reload = load i32, ptr %.reload.addr, align 4, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 769060
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !168
  %i.bz = mul i64 %i.br, 3
  store ptr %.reload.addr545, ptr %1, align 8, !tbaa !251
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.reload.addr544, ptr %i.ca, align 8, !tbaa !251
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.reload.addr548, ptr %i.cb, align 8, !tbaa !252
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.reload.addr525, ptr %i.cc, align 8, !tbaa !254
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.reload.addr541, ptr %i.cd, align 8, !tbaa !256
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.68") align 8 %.reload.addr526, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.by, i64 noundef %i.bz, ptr noundef nonnull byval(%class.anon.91) align 8 %1, i32 noundef %.reload)
          to label %bb.s unwind label %.body153.from.

bb.s:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ce = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load atomic i32, ptr %i.cf acquire, align 4
  %i.ch = icmp slt i32 %i.cg, 2
  br i1 %i.ch, label %bb.t, label %AfterCoroSave286

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = atomicrmw add ptr %i.cj, i32 -1 acq_rel, align 4
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.u, label %.thread239.sink.split

bb.u:                                             ; preds = %bb.t
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i159 unwind label %.from..loopexit.split-lp.i.i156

.noexc.i.i159:                                    ; preds = %bb.u
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !170 ; 7 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !183
  %i.cp = and i32 %i.co, 8
  %.not.i.i.i.i160 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i160, label %bb.v, label %.thread239.sink.split

bb.v:                                             ; preds = %.noexc.i.i159
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !184 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i161 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not12.i.i.i.i.i161, label %.thread239.sink.split, label %.from..lr.ph.i.i.i.i.i162

.from..lr.ph.i.i.i.i.i162:                        ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  br label %.from..noexc2.i.i166

.from..noexc2.i.i166:                             ; preds = %.noexc2.i.i166, %.from..lr.ph.i.i.i.i.i162
  %.sroa.09.013.i.i.i.i.i163 = phi ptr [ %i.cr, %.from..lr.ph.i.i.i.i.i162 ], [ %i.dj, %.noexc2.i.i166 ] ; 2 uses
  %i.cy = load ptr, ptr %.sroa.09.013.i.i.i.i.i163, align 8, !tbaa !188 ; 2 uses
  %i.cz = load i8, ptr %i.cu, align 8             ; 2 uses
  %i.da = trunc i8 %i.cz to i1                    ; 2 uses
  %i.db = load ptr, ptr %i.cv, align 8
  %i.dc = select i1 %i.da, ptr %i.db, ptr %i.cw
  %i.dd = load i64, ptr %i.cx, align 8
  %i.de = lshr i8 %i.cz, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = select i1 %i.da, i64 %i.dd, i64 %i.df
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr %i.dc, i64 %i.dg, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i166 unwind label %.from..loopexit.i.i164, !inline_history !0

.noexc2.i.i166:                                   ; preds = %.from..noexc2.i.i166
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i163, i64 16 ; 2 uses
  %.not.i.i.i.i.i167 = icmp eq ptr %i.dj, %i.ct
  br i1 %.not.i.i.i.i.i167, label %.thread239.sink.split, label %.from..noexc2.i.i166

.from..loopexit.i.i164:                           ; preds = %.from..noexc2.i.i166
  %lpad.loopexit.i.i165 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.from..loopexit.split-lp.i.i156:                  ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i157 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.from..loopexit.split-lp.i.i156, %.from..loopexit.i.i164
  %lpad.phi.i.i158 = phi { ptr, i32 } [ %lpad.loopexit.i.i165, %.from..loopexit.i.i164 ], [ %lpad.loopexit.split-lp.i.i157, %.from..loopexit.split-lp.i.i156 ]
  %i.dk = extractvalue { ptr, i32 } %lpad.phi.i.i158, 0
  tail call void @__clang_call_terminate(ptr %i.dk) #37
  unreachable

AfterCoroSave286:                                 ; preds = %bb.s
  store i8 1, ptr %index.addr, align 8
  %i.dl = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr526, ptr nonnull %0) #32
  br i1 %i.dl, label %CoroEnd, label %AfterCoroSuspend288

.body145.from.401:                                ; preds = %bb.a
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.429

.from.429:                                        ; preds = %.body145.from.398, %.body145.from.401, %bb.d
  %eh.lpad-body146 = phi { ptr, i32 } [ %i.dm, %.body145.from.401 ], [ %i.l, %.body145.from.398 ], [ %i.l, %bb.d ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr525) #32
  br label %bb.aj

.body150.from.421:                                ; preds = %bb.i
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

.from.415:                                        ; preds = %bb.n, %bb.ac
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body153

.body153.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body153

AfterCoroSuspend288:                              ; preds = %resume.entry, %AfterCoroSave286
  %.pr237 = load ptr, ptr %.reload.addr526, align 8, !tbaa !258 ; 3 uses
  %.not.i168 = icmp eq ptr %.pr237, null
  br i1 %.not.i168, label %.thread239, label %bb.x

bb.x:                                             ; preds = %AfterCoroSuspend288
  %i.dq = getelementptr inbounds nuw i8, ptr %.pr237, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr nonnull %.pr237)
          to label %.thread239.sink.split unwind label %.body153.from.411, !inline_history !4

.thread239.sink.split:                            ; preds = %.noexc2.i.i166, %bb.x, %bb.v, %.noexc.i.i159, %bb.t
  store ptr null, ptr %.reload.addr526, align 8, !tbaa !258
  br label %.thread239

.thread239:                                       ; preds = %.thread239.sink.split, %AfterCoroSuspend288
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 768704
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %bb.y unwind label %.body153.from.411

bb.y:                                             ; preds = %.thread239
  %.reload.addr520 = getelementptr inbounds nuw i8, ptr %0, i64 769040 ; 2 uses
  %.reload521 = load ptr, ptr %.reload.addr520, align 16, !tbaa !195
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 768920
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr526) #32
  %i.du = getelementptr inbounds nuw i8, ptr %.reload521, i64 220
  store i32 1, ptr %i.du, align 4, !tbaa !259
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 768912 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !260 ; 3 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !99
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !260
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !99
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.reload523 = load ptr, ptr %.reload.addr520, align 16, !tbaa !195 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.reload523, i64 104 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !99 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.reload523, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !100
  %i.ei = icmp ult ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ef, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527, i8 0, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 768864 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 16 dereferenceable(24) %i.ek, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 768888 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 72 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false)
  %i.ep = load <2 x ptr>, ptr %i.dv, align 16, !tbaa !100
  store <2 x ptr> %i.ep, ptr %i.en, align 8, !tbaa !100
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 768928
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !100
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.reload523, i64 96
  %i.eu = invoke noundef ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr527)
          to label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %.from.415

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.ac, %bb.ab
  %.0.i = phi ptr [ %i.es, %bb.ab ], [ %i.eu, %bb.ac ]
  store ptr %.0.i, ptr %i.ee, align 8, !tbaa !99
  br label %bb.ad

.body153.from.411:                                ; preds = %bb.x, %.thread239
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr526) #32
  br label %.from..body153

bb.ad:                                            ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.z, %bb.y
  %i.ew = load ptr, ptr %.reload.addr549, align 16, !tbaa !75 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i unwind label %bb.ag

.noexc.i:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr530)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  tail call void @__clang_call_terminate(ptr %i.ez) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 768560
  %i.fb = load i64, ptr %i.fa, align 16, !tbaa !246 ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, 5
  br i1 %i.fc, label %bb.ah, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

bb.ah:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.fd = load ptr, ptr %.reload.addr525, align 8, !tbaa !244
  %i.fe = mul i64 %i.fb, 24
  tail call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fe) #36
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from..body153:                                   ; preds = %.body153.from.411, %.body153.from., %.body153.from.408, %.from.415
  %.pn79 = phi { ptr, i32 } [ %i.do, %.from.415 ], [ %i.ev, %.body153.from.411 ], [ %i.dp, %.body153.from. ], [ %i.bw, %.body153.from.408 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 768560
  %i.fg = load i64, ptr %i.ff, align 16, !tbaa !246 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 5
  br i1 %i.fh, label %.body150.from., label %bb.aj

.body150.from.:                                   ; preds = %.from..body153
  %i.fi = load ptr, ptr %.reload.addr525, align 8, !tbaa !244
  %i.fj = mul i64 %i.fg, 24
  tail call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fj) #36
  br label %bb.aj

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %bb.ah, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.fk = load ptr, ptr %.reload.addr530, align 8, !tbaa !176 ; 5 uses
  %.not.i.i172 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i172, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 768960 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !261 ; 2 uses
  %.not6.i.i.i.i173 = icmp eq ptr %i.fk, %i.fm
  br i1 %.not6.i.i.i.i173, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %bb.ai, %.lr.ph.i.i.i.i174
  %.07.i.i.i.i175 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i174 ], [ %i.fm, %bb.ai ]
  %i.fn = getelementptr inbounds i8, ptr %.07.i.i.i.i175, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.fn) #32
  %.not.i.i.i.i176 = icmp eq ptr %i.fk, %i.fn
  br i1 %.not.i.i.i.i176, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i174

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i174
  %.pre1.i.i177 = load ptr, ptr %.reload.addr530, align 8, !tbaa !176
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.ai, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.fo = phi ptr [ %.pre1.i.i177, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.fk, %bb.ai ] ; 2 uses
  store ptr %i.fk, ptr %i.fl, align 16, !tbaa !261
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 768968
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !262
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64
  %i.ft = sub i64 %i.fr, %i.fs
  tail call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.ft) #36
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(112) %.reload.addr527) #32
  tail call void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512) %.reload.addr524) #32
  br label %bb.al

bb.aj:                                            ; preds = %.from..body153, %bb.m, %bb.l, %.body150.from., %.body150.from.421, %.from.429
  %.pn79.pn.pn = phi { ptr, i32 } [ %eh.lpad-body146, %.from.429 ], [ %.pn79, %.body150.from. ], [ %i.dn, %.body150.from.421 ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ], [ %.pn79, %.from..body153 ]
  tail call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr530) #32
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(112) %.reload.addr527) #32
  tail call void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512) %.reload.addr524) #32
  %.23 = extractvalue { ptr, i32 } %.pn79.pn.pn, 0
  %i.fu = tail call ptr @__cxa_begin_catch(ptr %.23) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr549)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %.from.497

bb.al:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !81
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = atomicrmw add ptr %i.fx, i32 -1 acq_rel, align 4 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 1
  br i1 %i.fz, label %bb.am, label %_ZN3tev5Latch9countDownEv.exit.i178

bb.am:                                            ; preds = %bb.al
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i183 unwind label %.from..loopexit.split-lp.i.i180

.noexc.i.i183:                                    ; preds = %bb.am
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !170 ; 7 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !183
  %i.gd = and i32 %i.gc, 8
  %.not.i.i.i.i184 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i184, label %bb.an, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.an:                                            ; preds = %.noexc.i.i183
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !184 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !185 ; 2 uses
  %.not12.i.i.i.i.i185 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not12.i.i.i.i.i185, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i186

.from..lr.ph.i.i.i.i.i186:                        ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 33
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  br label %.from..noexc2.i.i190

.from..noexc2.i.i190:                             ; preds = %.noexc2.i.i190, %.from..lr.ph.i.i.i.i.i186
  %.sroa.09.013.i.i.i.i.i187 = phi ptr [ %i.gf, %.from..lr.ph.i.i.i.i.i186 ], [ %i.gx, %.noexc2.i.i190 ] ; 2 uses
  %i.gm = load ptr, ptr %.sroa.09.013.i.i.i.i.i187, align 8, !tbaa !188 ; 2 uses
  %i.gn = load i8, ptr %i.gi, align 8             ; 2 uses
  %i.go = trunc i8 %i.gn to i1                    ; 2 uses
  %i.gp = load ptr, ptr %i.gj, align 8
  %i.gq = select i1 %i.go, ptr %i.gp, ptr %i.gk
  %i.gr = load i64, ptr %i.gl, align 8
  %i.gs = lshr i8 %i.gn, 1
  %i.gt = zext nneg i8 %i.gs to i64
  %i.gu = select i1 %i.go, i64 %i.gr, i64 %i.gt
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !71
  %i.gw = load ptr, ptr %i.gv, align 8
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gm, ptr %i.gq, i64 %i.gu, i32 noundef 8, ptr nonnull @.str.67, i64 36)
          to label %.noexc2.i.i190 unwind label %.from..loopexit.i.i188, !inline_history !0

.noexc2.i.i190:                                   ; preds = %.from..noexc2.i.i190
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i187, i64 16 ; 2 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.gx, %i.gh
  br i1 %.not.i.i.i.i.i191, label %_ZN3tev5Latch9countDownEv.exit.i178, label %.from..noexc2.i.i190

.from..loopexit.i.i188:                           ; preds = %.from..noexc2.i.i190
  %lpad.loopexit.i.i189 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

.from..loopexit.split-lp.i.i180:                  ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i181 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.ao:                                            ; preds = %.from..loopexit.split-lp.i.i180, %.from..loopexit.i.i188
  %lpad.phi.i.i182 = phi { ptr, i32 } [ %lpad.loopexit.i.i189, %.from..loopexit.i.i188 ], [ %lpad.loopexit.split-lp.i.i181, %.from..loopexit.split-lp.i.i180 ]
  %i.gy = extractvalue { ptr, i32 } %lpad.phi.i.i182, 0
  tail call void @__clang_call_terminate(ptr %i.gy) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i178:              ; preds = %.noexc2.i.i190, %bb.al
  %i.gz = icmp slt i32 %i.fy, 2
  br i1 %i.gz, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i178, %bb.an, %.noexc.i.i183
  %i.ha = load ptr, ptr %i.fv, align 8, !tbaa !81
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !263 ; 2 uses
  %i.hc = inttoptr i64 %i.hb to ptr               ; 3 uses
  store ptr %i.hc, ptr %.reload.addr524, align 8
  %.not.i192 = icmp eq i64 %i.hb, 0
  br i1 %.not.i192, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 8
  %i.hd = load ptr, ptr %i.hc, align 8
  musttail call void %i.hd(ptr nonnull %i.hc)
  ret void

bb.aq:                                            ; preds = %bb.aj
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.au

.from.497:                                        ; preds = %bb.ak
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i178, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = load ptr, ptr %i.hg, align 16, !tbaa !82 ; 5 uses
  %.not.i.i193 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i193, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = atomicrmw add ptr %i.hi, i64 -1 acq_rel, align 8
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.as, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.as:                                            ; preds = %bb.ar
  %i.hl = load ptr, ptr %i.hh, align 8, !tbaa !71
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(24) %i.hh) #32, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hh) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.as, %bb.ar, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr549) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 769088) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSave286
  ret void

bb.at:                                            ; preds = %bb.aq, %.from.497
  %.pn86 = phi { ptr, i32 } [ %i.hf, %.from.497 ], [ %i.he, %bb.aq ]
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn86

bb.au:                                            ; preds = %bb.aq
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  tail call void @__clang_call_terminate(ptr %i.hp) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(769088) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr524 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr525 = getelementptr inbounds nuw i8, ptr %0, i64 768552 ; 2 uses
  %.reload.addr527 = getelementptr inbounds nuw i8, ptr %0, i64 768840
  %.reload.addr530 = getelementptr inbounds nuw i8, ptr %0, i64 768952 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 769080
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %.from.424
    i8 1, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from._ZN3tev4TaskIvE12await_resumeEv.exit
    i8 2, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  ], !prof !1456

.from.424:                                        ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr525) #32
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from._ZN3tev4TaskIvE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr526 = getelementptr inbounds nuw i8, ptr %0, i64 768696
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr526) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768560
  %i.b = load i64, ptr %i.a, align 16, !tbaa !246 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %bb.a, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

bb.a:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from._ZN3tev4TaskIvE12await_resumeEv.exit
  %i.d = load ptr, ptr %.reload.addr525, align 8, !tbaa !244
  %i.e = mul i64 %i.b, 24
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.e) #36
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %bb.a, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from._ZN3tev4TaskIvE12await_resumeEv.exit, %.from.424
  %i.f = load ptr, ptr %.reload.addr530, align 8, !tbaa !176 ; 5 uses
  %.not.i.i172 = icmp eq ptr %i.f, null
  br i1 %.not.i.i172, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 768960 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !261 ; 2 uses
  %.not6.i.i.i.i173 = icmp eq ptr %i.f, %i.h
  br i1 %.not6.i.i.i.i173, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %bb.b, %.lr.ph.i.i.i.i174
  %.07.i.i.i.i175 = phi ptr [ %i.i, %.lr.ph.i.i.i.i174 ], [ %i.h, %bb.b ]
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i175, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.i) #32
  %.not.i.i.i.i176 = icmp eq ptr %i.f, %i.i
  br i1 %.not.i.i.i.i176, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i174

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i174
  %.pre1.i.i177 = load ptr, ptr %.reload.addr530, align 8, !tbaa !176
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.b, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.j = phi ptr [ %.pre1.i.i177, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  store ptr %i.f, ptr %i.g, align 16, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 768968
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !262
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.o) #36
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(112) %.reload.addr527) #32
  tail call void @_ZN6LibRawD1Ev(ptr noundef nonnull align 8 dead_on_return(768512) dereferenceable(768512) %.reload.addr524) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %resume.entry
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !82  ; 5 uses
  %.not.i.i193 = icmp eq ptr %i.q, null
  br i1 %.not.i.i193, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 -1 acq_rel, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #32, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr549 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr549) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 769088) #32
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #25

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind }
attributes #33 = { allocsize(0) }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!52, !53, !54, !55}
!llvm.ident = !{!56}
!llvm.errno.tbaa = !{!61}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!8 = distinct !{!8, !171}
!9 = distinct !{null, null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !171}
!12 = distinct !{!12, !171}
!13 = distinct !{!13, !171}
!14 = distinct !{null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !171}
!18 = distinct !{!18, !171}
!19 = distinct !{!19, !171}
!20 = distinct !{!20, !171}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !171}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{!26, !171}
!27 = distinct !{!27, !171}
!28 = distinct !{!28, !171}
!29 = distinct !{null, null, null, null}
!30 = distinct !{!30, !171}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{!34, !171}
!35 = distinct !{!35, !171}
!36 = distinct !{!36, !171}
!37 = distinct !{null}
!38 = distinct !{null, null, null, null}
!39 = distinct !{null, null, null}
!40 = distinct !{null}
!41 = distinct !{!41, !171}
!42 = distinct !{!42, !171}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null, null}
!45 = distinct !{null, null}
!46 = distinct !{!46, !171}
!47 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!48 = distinct !{null}
!49 = distinct !{null, null, null}
!50 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!51 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!52 = !{i32 1, !"long-double-type", !"x86_fp80"}
!53 = !{i32 8, !"PIC Level", i32 2}
!54 = !{i32 7, !"PIE Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 2}
!56 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"omnipotent char", !57, i64 0}
!59 = !{!"int", !58, i64 0}
!60 = !{!"__libc_errno", !59, i64 0}
!61 = !{!60, !59, i64 0}
!62 = !{!"float", !58, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"short", !58, i64 0}
end_hunk_4
begin_hunk_5_@llvm.fshl.v2i64
!283 = !{!282, !72, i64 24}
!284 = !{!282, !104, i64 0}
!285 = !{!282, !134, i64 16}
!286 = !{!282, !134, i64 8}
!287 = !{!"_ZTSN3fmt3v126detail4typeE", !58, i64 0}
!288 = !{!287, !287, i64 0}
!289 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !72, i64 0}
!290 = !{!289, !289, i64 0}
!291 = !{!104, !104, i64 0}
!292 = !{!134, !134, i64 0}
!293 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !104, i64 0, !134, i64 8}
!294 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !293, i64 0, !59, i64 16}
!295 = !{!294, !59, i64 16}
!296 = !{!108, !108, i64 0}
!297 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !108, i64 0, !58, i64 8}
!298 = !{!297, !108, i64 0}
!299 = !{!"_ZTSN3fmt3v1211basic_specsE", !59, i64 0, !58, i64 4}
!300 = !{!299, !59, i64 0}
!301 = !{!"_ZTSN3fmt3v1212format_specsE", !299, i64 0, !59, i64 8, !59, i64 12}
!302 = !{!301, !59, i64 12}
!303 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !134, i64 0, !59, i64 8}
!304 = !{!303, !134, i64 0}
!305 = !{!303, !59, i64 8}
!306 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !72, i64 0}
!307 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !306, i64 0, !59, i64 8}
!308 = !{!307, !59, i64 8}
!309 = !{!"llvm.loop.isvectorized", i32 1}
!310 = !{!"llvm.loop.unroll.runtime.disable"}
!311 = !{!"branch_weights", i32 4, i32 28}
!312 = !{!"llvm.loop.unroll.disable"}
!313 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!314 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !211, i64 0, !58, i64 1}
!315 = !{!314, !211, i64 0}
!316 = !{!314, !58, i64 1}
!317 = !{!301, !59, i64 8}
!318 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !72, i64 0}
!319 = !{!318, !318, i64 0}
!320 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !58, i64 0}
!321 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !320, i64 0, !287, i64 16}
!322 = !{!321, !287, i64 16}
!323 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !289, i64 0}
!324 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !323, i64 0, !318, i64 8, !87, i64 16, !87, i64 40, !87, i64 64}
!325 = !{!324, !318, i64 8}
!326 = !{}
!327 = !{i64 4}
!328 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !72, i64 0}
!329 = !{!328, !328, i64 0}
!330 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !72, i64 0}
!331 = !{!330, !330, i64 0}
!332 = !{i64 8}
!333 = !{i8 0, i8 2}
!334 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !104, i64 0, !104, i64 8, !59, i64 16}
!335 = !{!334, !104, i64 0}
!336 = !{!334, !104, i64 8}
!337 = !{!334, !59, i64 16}
!338 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !148, i64 0, !134, i64 8, !134, i64 16, !72, i64 24}
!339 = !{!338, !148, i64 0}
!340 = !{!338, !134, i64 16}
!341 = !{!338, !134, i64 8}
!342 = !{!293, !104, i64 0}
!343 = !{!293, !134, i64 8}
!344 = !{!"_ZTSN3fmt3v124signE", !58, i64 0}
!345 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !344, i64 0, !104, i64 8}
!346 = !{!345, !344, i64 0}
!347 = !{!345, !104, i64 8}
!348 = !{!344, !344, i64 0}
!349 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !59, i64 0, !59, i64 4}
!350 = !{!349, !59, i64 4}
!351 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !72, i64 0}
!352 = !{!351, !351, i64 0}
!353 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !72, i64 0}
!354 = !{!353, !353, i64 0}
!355 = !{!211, !211, i64 0}
!356 = !{!"p1 bool", !72, i64 0}
!357 = !{!356, !356, i64 0}
!358 = !{!349, !59, i64 0}
!359 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !134, i64 0, !59, i64 8}
!360 = !{!359, !59, i64 8}
!361 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !72, i64 0}
!362 = !{!361, !361, i64 0}
!363 = !{!359, !134, i64 0}
!364 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !104, i64 0, !59, i64 8, !59, i64 12}
!365 = !{!364, !104, i64 0}
!366 = !{!364, !59, i64 8}
!367 = !{!364, !59, i64 12}
!368 = !{!"__int128", !58, i64 0}
!369 = !{!368, !368, i64 0}
!370 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !148, i64 0, !134, i64 8, !134, i64 16, !72, i64 24}
!371 = !{!370, !72, i64 24}
!372 = !{!370, !148, i64 0}
!373 = !{!370, !134, i64 16}
!374 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !370, i64 0, !58, i64 32}
!375 = !{!"_ZTSN3fmt3v126detail6bigintE", !374, i64 0, !59, i64 160}
!376 = !{!375, !59, i64 160}
!377 = !{!370, !134, i64 8}
!378 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !344, i64 0, !364, i64 8, !59, i64 24, !58, i64 28, !59, i64 32, !58, i64 36, !59, i64 40}
!379 = !{!378, !344, i64 0}
!380 = !{!378, !59, i64 24}
!381 = !{!378, !58, i64 28}
!382 = !{!378, !59, i64 32}
!383 = !{!378, !58, i64 36}
!384 = !{!378, !59, i64 40}
!385 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !72, i64 0}
!386 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !87, i64 0, !58, i64 24}
!387 = !{!386, !58, i64 24}
!388 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !72, i64 0}
!389 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !388, i64 0, !134, i64 8}
!390 = !{!389, !134, i64 8}
!391 = !{!389, !388, i64 0}
!392 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !104, i64 0, !59, i64 8}
!393 = !{!392, !104, i64 0}
!394 = !{!392, !59, i64 8}
!395 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !58, i64 0}
!396 = !{!395, !395, i64 0}
!397 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !72, i64 0}
!398 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !72, i64 0}
!399 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !344, i64 0, !359, i64 8, !59, i64 24, !58, i64 28, !59, i64 32, !58, i64 36, !59, i64 40}
!400 = !{!399, !344, i64 0}
!401 = !{!399, !59, i64 24}
!402 = !{!399, !58, i64 28}
!403 = !{!399, !59, i64 32}
!404 = !{!399, !58, i64 36}
!405 = !{!399, !59, i64 40}
!406 = !{!"p1 long", !72, i64 0}
!407 = !{!406, !406, i64 0}
!408 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !72, i64 0}
!409 = !{!408, !408, i64 0}
!410 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !211, i64 0, !134, i64 8, !293, i64 16}
!411 = !{!410, !211, i64 0}
!412 = !{!410, !134, i64 8}
!413 = !{!"branch_weights", i32 8, i32 24}
!414 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !282, i64 0, !58, i64 32, !134, i64 288}
!415 = !{!414, !134, i64 288}
!416 = !{!209, !206, i64 0}
!417 = !{!209, !206, i64 8}
!418 = !{!206, !206, i64 0}
!419 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !72, i64 0}
!420 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !419, i64 0, !79, i64 8}
!421 = !{!420, !79, i64 8}
!422 = !{!187, !79, i64 8}
!423 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !72, i64 0}
!424 = !{!423, !423, i64 0}
!425 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !423, i64 0}
!426 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !425, i64 0, !211, i64 8}
!427 = !{!426, !211, i64 8}
!428 = !{!178, !178, i64 0}
!429 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !72, i64 0}
!430 = !{!"_ZTSN4tlog7IOutputE"}
!431 = !{!"_ZTSN4tlog13ConsoleOutputE", !430, i64 0, !211, i64 8, !429, i64 16, !266, i64 24}
!432 = !{!431, !211, i64 8}
!433 = !{!"_ZTSNSt3__18ios_baseE", !59, i64 8, !134, i64 16, !134, i64 24, !59, i64 32, !59, i64 36, !72, i64 40, !72, i64 48, !98, i64 56, !148, i64 64, !134, i64 72, !134, i64 80, !406, i64 88, !134, i64 96, !134, i64 104, !98, i64 112, !134, i64 120, !134, i64 128}
!434 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !433, i64 0, !429, i64 136, !59, i64 144}
!435 = !{!434, !59, i64 144}
!436 = !{!"_ZTSSt9type_info", !104, i64 8}
!437 = !{!436, !104, i64 8}
!438 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iEUlvE_", !59, i64 0, !59, i64 4, !72, i64 8}
!439 = !{!438, !59, i64 0}
!440 = !{!438, !59, i64 4}
!441 = !{!"p1 _ZTSN3tev4TaskIvEE", !72, i64 0}
!442 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !441, i64 0}
!443 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !442, i64 0}
!444 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !441, i64 0, !441, i64 8, !443, i64 16}
!445 = !{!444, !441, i64 8}
!446 = !{!441, !441, i64 0}
!447 = !{!79, !79, i64 0}
!448 = !{!444, !441, i64 0}
!449 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !57, i64 0}
!450 = !{!449, !449, i64 0}
!451 = !{!"p1 _ZTSSt13exception_ptr", !72, i64 0}
!452 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !451, i64 0}
!453 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !452, i64 0}
!454 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !451, i64 0, !451, i64 8, !453, i64 16}
!455 = !{!454, !451, i64 8}
!456 = !{!454, !451, i64 0}
!457 = !{!451, !451, i64 0}
!458 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !58, i64 0}
!459 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !72, i64 0}
!460 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !458, i64 0, !459, i64 32}
!461 = !{!460, !459, i64 32}
!462 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !72, i64 0}
!463 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !462, i64 0, !79, i64 8}
!464 = !{!463, !462, i64 0}
!465 = !{!463, !79, i64 8}
!466 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !72, i64 0}
!467 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !466, i64 0}
!468 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !467, i64 0}
!469 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !466, i64 0, !466, i64 8, !468, i64 16}
!470 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !72, i64 0}
!471 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !458, i64 0, !470, i64 32}
!472 = !{!471, !470, i64 32}
!473 = !{!"_ZTSNSt3__18functionIFvvEEE", !471, i64 0}
!474 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !473, i64 0, !59, i64 48, !211, i64 52}
!475 = !{!474, !59, i64 48}
!476 = !{!469, !466, i64 8}
!477 = !{!466, !466, i64 0}
!478 = !{!469, !466, i64 0}
!479 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !72, i64 0}
!480 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !479, i64 0}
!481 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !480, i64 0, !211, i64 8}
!482 = !{!481, !211, i64 8}
!483 = !{!"branch_weights", i32 -1546098377, i32 -693363755}
!484 = distinct !{!484, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!485 = distinct !{!485, !484, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!486 = distinct !{!486, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!487 = distinct !{!487, !486, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!488 = distinct !{!488, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!489 = distinct !{!489, !488, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!490 = distinct !{!490, !"_ZNKSt3__14__fs10filesystem4path9extensionB8ne180100Ev"}
!491 = distinct !{!491, !490, !"_ZNKSt3__14__fs10filesystem4path9extensionB8ne180100Ev: argument 0"}
!492 = distinct !{!492, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!493 = distinct !{!493, !492, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!494 = distinct !{!494, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!495 = distinct !{!495, !494, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!496 = distinct !{!496, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!497 = distinct !{!497, !496, !"_ZN3fmt3v126formatIJPKcEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!498 = distinct !{!498, !171}
!499 = distinct !{!499, !171}
!500 = distinct !{!500, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!501 = distinct !{!501, !500, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!502 = distinct !{!502, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!503 = distinct !{!503, !502, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!504 = !{!485}
!505 = !{!487}
!506 = !{!487, !485}
!507 = !{!489, !487, !485}
!508 = !{!491}
!509 = !{!"p2 _ZTS10_ExifEntry", !98, i64 0}
!510 = !{!"p1 _ZTS19_ExifContentPrivate", !72, i64 0}
!511 = !{!"_ZTS12_ExifContent", !509, i64 0, !59, i64 8, !94, i64 16, !510, i64 24}
!512 = !{!511, !94, i64 16}
!513 = !{!158, !72, i64 768296}
!514 = !{!158, !72, i64 768280}
!515 = !{!158, !59, i64 5396}
!516 = !{!158, !59, i64 5392}
!517 = !{!493}
!518 = !{!495}
!519 = !{!497}
!520 = !{!158, !64, i64 30}
!521 = !{!158, !64, i64 28}
!522 = !{!158, !59, i64 48}
!523 = !{!158, !64, i64 26}
!524 = !{!158, !64, i64 24}
!525 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !104, i64 0, !134, i64 8}
!526 = !{!525, !104, i64 0}
!527 = !{!525, !134, i64 8}
!528 = !{!501}
!529 = !{!503, !501}
!530 = distinct !{!530, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv"}
!531 = distinct !{!531, !530, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!532 = !{!531}
!533 = distinct !{!533, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_"}
!534 = distinct !{!534, !533, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_: argument 0"}
!535 = distinct !{!535, !171}
!536 = !{!272, !272, i64 0}
!537 = !{!534}
!538 = !{!214, !62, i64 48}
!539 = !{!215, !211, i64 32}
!540 = !{!222, !211, i64 1}
!541 = !{!229, !211, i64 4}
!542 = distinct !{null, null, null, null, null, null, null, null, null}
!543 = distinct !{null, null}
!544 = distinct !{!544, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!545 = distinct !{!545, !544, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!546 = !{!545}
!547 = distinct !{!547, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!548 = distinct !{!548, !547, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!549 = distinct !{!549, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!550 = distinct !{!550, !549, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!551 = distinct !{!551, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!552 = distinct !{!552, !551, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!553 = distinct !{!553, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!554 = distinct !{!554, !553, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!555 = !{i64 0, i64 8, !251, i64 8, i64 8, !251, i64 16, i64 8, !252, i64 24, i64 8, !254, i64 32, i64 8, !256}
!556 = !{!548}
!557 = !{!550}
!558 = !{!550, !548}
!559 = !{!552, !550, !548}
!560 = !{!554}
!561 = distinct !{null, null}
!562 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_9ImageDataENS_9allocatorIS5_EEEEEES8_EEEE", !72, i64 0}
!563 = !{!562, !72, i64 0}
!564 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!565 = distinct !{!565, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_"}
!566 = distinct !{!566, !565, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_: argument 0"}
!567 = distinct !{null}
!568 = !{!566}
!569 = !{!"p1 _ZTSNSt3__114error_categoryE", !72, i64 0}
!570 = !{!569, !569, i64 0}
!571 = !{i64 0, i64 4, !168, i64 8, i64 8, !570}
!572 = distinct !{null, null}
!573 = distinct !{null, ptr @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev, null, null, null, null}
!574 = distinct !{null, null, null, null, null}
!575 = distinct !{!575, !"_ZNSt3__18literals15string_literalsli1sB8ne180100EPKcm"}
!576 = distinct !{!576, !575, !"_ZNSt3__18literals15string_literalsli1sB8ne180100EPKcm: argument 0"}
!577 = distinct !{!577, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!578 = distinct !{!578, !577, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!579 = !{!"_ZTS7ExifTag", !58, i64 0}
!580 = !{!"_ZTS10ExifFormat", !58, i64 0}
!581 = !{!"p1 _ZTS17_ExifEntryPrivate", !72, i64 0}
!582 = !{!"_ZTS10_ExifEntry", !579, i64 0, !580, i64 4, !134, i64 8, !104, i64 16, !59, i64 24, !93, i64 32, !581, i64 40}
!583 = !{!582, !93, i64 32}
!584 = !{!582, !579, i64 0}
!585 = !{!582, !580, i64 4}
!586 = !{!582, !134, i64 8}
!587 = !{!582, !59, i64 24}
!588 = !{!582, !104, i64 16}
!589 = !{!576}
!590 = !{!578}
!591 = distinct !{!591, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!592 = distinct !{!592, !591, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!593 = !{!592}
!594 = distinct !{!594, !"_ZNK3fmt3v127context3argEi"}
!595 = distinct !{!595, !594, !"_ZNK3fmt3v127context3argEi: argument 0"}
!596 = distinct !{!596, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!597 = distinct !{!597, !596, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!598 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!599 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!600 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!601 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null, null}
!602 = distinct !{!602, !"_ZNK3fmt3v127context3argEi"}
!603 = distinct !{!603, !602, !"_ZNK3fmt3v127context3argEi: argument 0"}
!604 = distinct !{!604, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!605 = distinct !{!605, !604, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!606 = !{!597, !595}
!607 = !{!306, !306, i64 0}
!608 = !{!605, !603}
!609 = distinct !{null, null, null}
!610 = distinct !{null, null, null}
!611 = distinct !{null, null, null}
!612 = distinct !{null, null, null, null}
!613 = distinct !{!613, !171, !309, !310}
!614 = distinct !{!614, !171, !309, !310}
!615 = distinct !{!615, !312}
!616 = distinct !{!616, !171, !309}
!617 = distinct !{!617, !171}
!618 = distinct !{null, null, null, null}
!619 = distinct !{null, null, null, null, null}
!620 = distinct !{null, null, null}
!621 = distinct !{null, null, null, null}
!622 = distinct !{!622, !171}
!623 = distinct !{!623, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev"}
!624 = distinct !{!624, !623, !"_ZNKSt3__18numpunctIcE8groupingB8ne180100Ev: argument 0"}
!625 = !{!264, !134, i64 8}
!626 = !{!624}
!627 = distinct !{!627, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!628 = distinct !{!628, !627, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!629 = !{!628}
!630 = distinct !{!630, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE"}
!631 = distinct !{!631, !630, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE: argument 0"}
!632 = !{!631}
!633 = distinct !{!633, !171}
!634 = distinct !{!634, !171}
!635 = distinct !{null, null, null, null}
!636 = distinct !{!636, !171}
!637 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !148, i64 0, !328, i64 8, !330, i64 16}
!638 = !{!637, !148, i64 0}
!639 = !{!637, !328, i64 8}
!640 = !{!637, !330, i64 16}
!641 = distinct !{null, null, null, null}
!642 = distinct !{null, null, null, null}
!643 = distinct !{!643, !171}
!644 = distinct !{!644, !171, !309, !310}
!645 = distinct !{!645, !171, !309, !310}
!646 = distinct !{!646, !312}
!647 = distinct !{!647, !171, !309}
!648 = distinct !{!648, !171}
!649 = distinct !{!649, !171}
!650 = distinct !{!650, !171}
!651 = distinct !{!651, !171}
!652 = distinct !{null}
!653 = distinct !{null}
!654 = distinct !{!654, !171, !309, !310}
!655 = distinct !{!655, !171, !309, !310}
!656 = distinct !{!656, !312}
!657 = distinct !{!657, !171, !309}
!658 = distinct !{null}
!659 = distinct !{!659, !171}
!660 = !{!338, !72, i64 24}
!661 = distinct !{!661, !171}
!662 = distinct !{!662, !171}
!663 = distinct !{!663, !171}
!664 = distinct !{null, null, null, null}
!665 = distinct !{!665, !171}
!666 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !148, i64 0, !328, i64 8, !330, i64 16}
!667 = !{!666, !148, i64 0}
!668 = !{!666, !328, i64 8}
!669 = !{!666, !330, i64 16}
!670 = distinct !{null, null, null}
!671 = distinct !{!671, !171, !309, !310}
!672 = distinct !{!672, !171, !309, !310}
!673 = distinct !{!673, !312}
!674 = distinct !{!674, !171, !309}
!675 = distinct !{null, null, null, null}
!676 = distinct !{null, null, null, null}
!677 = distinct !{!677, !171}
!678 = distinct !{null, null, null, null}
!679 = distinct !{null, null, null}
!680 = distinct !{!680, !171, !309, !310}
!681 = distinct !{!681, !171, !309, !310}
!682 = distinct !{!682, !312}
!683 = distinct !{!683, !171, !309}
end_hunk_5
begin_hunk_6_@llvm.fshl.v2i64
!1245 = !{!1244, !1243, i64 0}
!1246 = !{!1244, !211, i64 8}
!1247 = distinct !{!1247, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_16MultiChannelViewIfEC1ES5_Qntsr3stdE10is_const_vIT_EEUlRS4_E_E10__iteratorILb0EEdeB8ne180100Ev"}
!1248 = distinct !{!1248, !1247, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_16MultiChannelViewIfEC1ES5_Qntsr3stdE10is_const_vIT_EEUlRS4_E_E10__iteratorILb0EEdeB8ne180100Ev: argument 0"}
!1249 = distinct !{!1249, !"_ZNSt3__16invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEENS_13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"}
!1250 = distinct !{!1250, !1249, !"_ZNSt3__16invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEENS_13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_: argument 0"}
!1251 = distinct !{!1251, !"_ZNSt3__18__invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEEDTclclsr3stdE7declvalIS7_EEspclsr3stdE7declvalIT0_EEEEOS7_DpOSB_"}
!1252 = distinct !{!1252, !1251, !"_ZNSt3__18__invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEEDTclclsr3stdE7declvalIS7_EEspclsr3stdE7declvalIT0_EEEEOS7_DpOSB_: argument 0"}
!1253 = distinct !{!1253, !"_ZZN3tev16MultiChannelViewIfEC1ENSt3__14spanINS_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EENKUlRS4_E_clES7_"}
!1254 = distinct !{!1254, !1253, !"_ZZN3tev16MultiChannelViewIfEC1ENSt3__14spanINS_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EENKUlRS4_E_clES7_: argument 0"}
!1255 = distinct !{!1255, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1256 = distinct !{!1256, !1255, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1257 = !{!"_ZTSNSt3__14spanIN3tev7ChannelELm18446744073709551615EEE", !196, i64 0, !134, i64 8}
!1258 = !{!1257, !134, i64 8}
!1259 = !{!1257, !196, i64 0}
!1260 = !{!203, !202, i64 0}
!1261 = !{!1256, !1254, !1252, !1250, !1248}
!1262 = !{!"_ZTSNSt3__122__compressed_pair_elemIPvLi0ELb0EEE", !72, i64 0}
!1263 = !{!"_ZTSN3tev11PixelBuffer7DeleterE", !72, i64 0}
!1264 = !{!"_ZTSNSt3__122__compressed_pair_elemIN3tev11PixelBuffer7DeleterELi1ELb0EEE", !1263, i64 0}
!1265 = !{!"_ZTSNSt3__117__compressed_pairIPvN3tev11PixelBuffer7DeleterEEE", !1262, i64 0, !1264, i64 8}
!1266 = !{!"_ZTSNSt3__110unique_ptrIvN3tev11PixelBuffer7DeleterEEE", !1265, i64 0}
!1267 = !{!"_ZTSN3tev12EPixelFormatE", !58, i64 0}
!1268 = !{!"_ZTSN3tev11PixelBufferE", !1266, i64 0, !134, i64 16, !134, i64 24, !1267, i64 32}
!1269 = !{!1268, !1267, i64 32}
!1270 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1271 = !{!"_ZTSN3tev7ChannelE", !87, i64 0, !238, i64 24, !1267, i64 32, !203, i64 40, !134, i64 56, !134, i64 64}
!1272 = !{!1271, !134, i64 64}
!1273 = !{!1271, !134, i64 56}
!1274 = distinct !{!1274, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1275 = distinct !{!1275, !1274, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1276 = distinct !{!1276, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1277 = distinct !{!1277, !1276, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1278 = distinct !{!1278, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1279 = distinct !{!1279, !1278, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1280 = distinct !{!1280, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1281 = distinct !{!1281, !1280, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1282 = distinct !{!1282, !171}
!1283 = distinct !{!1283, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1284 = distinct !{!1284, !1283, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1285 = !{!1275}
!1286 = !{!1277}
!1287 = !{!1277, !1275}
!1288 = !{!1279, !1277, !1275}
!1289 = !{!1281}
!1290 = !{!"branch_weights", i32 1, i32 127}
!1291 = !{!"branch_weights", i32 127, i32 255873}
!1292 = !{!1284}
!1293 = distinct !{!1293, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1294 = distinct !{!1294, !1293, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1295 = distinct !{!1295, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1296 = distinct !{!1296, !1295, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1297 = distinct !{!1297, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1298 = distinct !{!1298, !1297, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1299 = distinct !{!1299, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1300 = distinct !{!1300, !1299, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1301 = !{!1294}
!1302 = !{!1296}
!1303 = !{!1296, !1294}
!1304 = !{!1298, !1296, !1294}
!1305 = !{!1300}
!1306 = distinct !{!1306, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1307 = distinct !{!1307, !1306, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1308 = distinct !{!1308, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1309 = distinct !{!1309, !1308, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1310 = distinct !{!1310, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1311 = distinct !{!1311, !1310, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1312 = distinct !{!1312, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1313 = distinct !{!1313, !1312, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1314 = !{!1307}
!1315 = !{!1309}
!1316 = !{!1309, !1307}
!1317 = !{!1311, !1309, !1307}
!1318 = !{!1313}
!1319 = distinct !{!1319, !171}
!1320 = !{!277, !277, i64 0}
!1321 = !{!78, !78, i64 0}
!1322 = distinct !{!1322, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1323 = distinct !{!1323, !1322, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1324 = distinct !{!1324, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1325 = distinct !{!1325, !1324, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1326 = distinct !{!1326, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1327 = distinct !{!1327, !1326, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1328 = distinct !{!1328, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1329 = distinct !{!1329, !1328, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1330 = !{!1323}
!1331 = !{!1325}
!1332 = !{!1325, !1323}
!1333 = !{!1327, !1325, !1323}
!1334 = !{!1329}
!1335 = distinct !{!1335, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1336 = distinct !{!1336, !1335, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1337 = distinct !{!1337, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1338 = distinct !{!1338, !1337, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1339 = distinct !{!1339, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1340 = distinct !{!1340, !1339, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1341 = distinct !{!1341, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1342 = distinct !{!1342, !1341, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1343 = !{!1336}
!1344 = !{!1338}
!1345 = !{!1338, !1336}
!1346 = !{!1340, !1338, !1336}
!1347 = !{!1342}
!1348 = !{!438, !72, i64 8}
!1349 = distinct !{!1349, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1350 = distinct !{!1350, !1349, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1351 = distinct !{!1351, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1352 = distinct !{!1352, !1351, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1353 = distinct !{!1353, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1354 = distinct !{!1354, !1353, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1355 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1356 = distinct !{!1356, !171}
!1357 = !{!1350}
!1358 = !{!1352}
!1359 = !{!1352, !1350}
!1360 = !{!1354, !1352, !1350}
!1361 = !{!"p1 _ZTSNSt3__16threadE", !72, i64 0}
!1362 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1361, i64 0}
!1363 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1362, i64 0}
!1364 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1361, i64 0, !1361, i64 8, !1363, i64 16}
!1365 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1366 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !469, i64 0, !1365, i64 24}
!1367 = !{!"_ZTSNSt3__115recursive_mutexE", !58, i64 0}
!1368 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !58, i64 0}
!1369 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1368, i64 0}
!1370 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1369, i64 0}
!1371 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1370, i64 0}
!1372 = !{!"_ZTSNSt3__16atomicIlEE", !1371, i64 0}
!1373 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !58, i64 0}
!1374 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1372, i64 0, !1373, i64 8, !59, i64 40}
!1375 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !58, i64 0}
!1376 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1375, i64 0}
!1377 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1376, i64 0}
!1378 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1377, i64 0}
!1379 = !{!"_ZTSNSt3__16atomicImEE", !1378, i64 0}
!1380 = !{!"_ZTSN3tev10ThreadPoolE", !211, i64 8, !1364, i64 16, !1366, i64 40, !1367, i64 72, !1374, i64 112, !1367, i64 160, !1379, i64 200, !1379, i64 208}
!1381 = !{!1380, !211, i64 8}
!1382 = !{!474, !211, i64 52}
!1383 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1384 = distinct !{null, null, null}
!1385 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !72, i64 0}
!1386 = !{!1385, !72, i64 0}
!1387 = distinct !{!1387, !171}
!1388 = distinct !{null, null, null, null, null, null, null, null, null}
!1389 = distinct !{null, null, null, null}
!1390 = distinct !{null}
!1391 = distinct !{!1391, !171}
!1392 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1393 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1394 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1395 = distinct !{null}
!1396 = !{!"_ZTSNSt3__17promiseIvEE", !277, i64 0}
!1397 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !460, i64 0, !1396, i64 48}
!1398 = !{!1397, !277, i64 48}
!1399 = distinct !{!1399, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1400 = distinct !{!1400, !1399, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1401 = distinct !{!1401, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1402 = distinct !{!1402, !1401, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1403 = distinct !{!1403, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1404 = distinct !{!1404, !1403, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1405 = distinct !{!1405, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1406 = distinct !{!1406, !1405, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1407 = distinct !{!1407, !171}
!1408 = distinct !{!1408, !171}
!1409 = distinct !{!1409, !171, !309, !310}
!1410 = distinct !{!1410, !171, !309}
!1411 = distinct !{!1411, !"LVerDomain"}
!1412 = distinct !{!1412, !1411}
!1413 = distinct !{!1413, !1411}
!1414 = distinct !{!1414, !1411}
!1415 = distinct !{!1415, !171, !309, !310}
!1416 = distinct !{!1416, !171, !309}
!1417 = !{!1400}
!1418 = !{!1402}
!1419 = !{!1402, !1400}
!1420 = !{!1404, !1402, !1400}
!1421 = !{!1406}
!1422 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14RawImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUliiE_", !72, i64 0}
!1423 = !{!1422, !72, i64 0}
!1424 = !{!"_ZTSZNK3tev14RawImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiE3$_1", !250, i64 0, !250, i64 8, !148, i64 16, !253, i64 24, !255, i64 32}
!1425 = !{!1424, !250, i64 0}
!1426 = !{!1424, !250, i64 8}
!1427 = !{!1424, !148, i64 16}
!1428 = !{!1424, !255, i64 32}
!1429 = !{!1424, !253, i64 24}
!1430 = !{!"_ZTSN3tev11ChannelViewIfEE", !140, i64 0, !134, i64 8, !238, i64 16}
!1431 = !{!1430, !140, i64 0}
!1432 = !{!1430, !134, i64 8}
!1433 = !{!64, !64, i64 0}
!1434 = !{!1412}
!1435 = !{!1414, !1413}
!1436 = !{!1414}
!1437 = !{!1413}
!1438 = distinct !{!1438, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1439 = distinct !{!1439, !1438, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1440 = distinct !{!1440, !171}
!1441 = !{!479, !479, i64 0}
!1442 = !{!1439}
!1443 = distinct !{!1443, !171}
!1444 = !{!480, !479, i64 0}
!1445 = !{!"branch_weights", i32 -2004248167, i32 118691432}
!1446 = !{!"branch_weights", i32 -171659984, i32 343608614}
!1447 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!1448 = !{!"branch_weights", i32 -840054308, i32 -1751137347}
!1449 = distinct !{!1449, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1450 = distinct !{!1450, !1449, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1451 = distinct !{!1451, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!1452 = distinct !{!1452, !1451, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1453 = !{!"branch_weights", i32 -286703, i32 -716093168}
!1454 = !{!1450}
!1455 = !{!1452, !1450}
!1456 = !{!"branch_weights", i32 0, i32 -286703, i32 -716093168, i32 -1433640971}
end_hunk_6
