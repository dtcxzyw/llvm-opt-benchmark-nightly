Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/IcoImageLoader?download=true
inline.NumInlined: 6024
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  %i.ra = load i64, ptr %.reload.addr1310.a, align 8
  %i.rb = and i64 %i.ra, -2
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rb) #38
  br i1 %.01971392, label %.from.1060, label %.from..split5411068

.from.1060:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit354.thread, %.split553, %bb.bx
  %.pn244552 = phi { ptr, i32 } [ %i.qr, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit354.thread ], [ %i.qy, %.split553 ], [ %i.qs, %bb.bx ]
  call void @__cxa_free_exception(ptr %i.qn) #34
  br label %.from..split5411068

bb.by:                                            ; preds = %bb.bu
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc355 unwind label %.from.1053

.noexc355:                                        ; preds = %bb.by
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !94
  invoke void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIiLm2EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.rd, i32 noundef 4, ptr nonnull @.str.18, i64 61, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1344.a)
          to label %bb.bz unwind label %.from.1053

bb.bz:                                            ; preds = %.noexc355
  %.val267.reload1296 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !123
  %storemerge215663.reload1274 = load i16, ptr %storemerge215663.spill.addr, align 8, !tbaa !123
  %.reload1208 = load ptr, ptr %.spill.addr, align 8, !tbaa !123 ; 7 uses
  %i.re = zext i16 %storemerge215663.reload1274 to i64
  %i.rf = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1296, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = getelementptr inbounds nuw i8, ptr %.reload1208, i64 112
  %i.ri = load i32, ptr %i.rf, align 4, !tbaa !103
  %i.rj = add i32 %i.ri, 31                       ; 2 uses
  %i.rk = srem i32 %i.rj, 32
  %i.rl = sub nsw i32 %i.rj, %i.rk
  %i.rm = sext i32 %i.rl to i64
  %i.rn = lshr i64 %i.rm, 3                       ; 2 uses
  store i64 %i.rn, ptr %.reload.addr1326.a, align 8, !tbaa !138
  %i.ro = load i32, ptr %i.rg, align 4, !tbaa !104
  %i.rp = sext i32 %i.ro to i64
  %i.rq = mul i64 %i.rn, %i.rp                    ; 5 uses
  %i.rr = load i32, ptr %i.rh, align 8, !tbaa !143 ; 2 uses
  %i.rs = and i32 %i.rr, 16
  %.not.i.i.i357 = icmp eq i32 %i.rs, 0
  br i1 %.not.i.i.i357, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rt = getelementptr inbounds nuw i8, ptr %.reload1208, i64 64
  %i.ru = getelementptr inbounds nuw i8, ptr %.reload1208, i64 104 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !144 ; 2 uses
  %i.rw = load ptr, ptr %i.rt, align 8, !tbaa !145 ; 3 uses
  %i.rx = icmp ult ptr %i.rv, %i.rw
  br i1 %i.rx, label %.from..thread.i, label %.from.992.a

.from..thread.i:                                  ; preds = %bb.ca
  store ptr %i.rw, ptr %i.ru, align 8, !tbaa !144
  br label %.from.992.a

bb.cb:                                            ; preds = %bb.bz
  %i.ry = and i32 %i.rr, 8
  %.not1.i.i.i = icmp eq i32 %i.ry, 0
  br i1 %.not1.i.i.i, label %.from.996, label %.from.988

.from.992.a:                                      ; preds = %.from..thread.i, %bb.ca
  %i.rz = phi ptr [ %i.rw, %.from..thread.i ], [ %i.rv, %bb.ca ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.reload1208, i64 56
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !146 ; 2 uses
  %i.sc = ptrtoint ptr %i.rz to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  br label %.from.996

.from.988:                                        ; preds = %bb.cb
  %i.sf = getelementptr inbounds nuw i8, ptr %.reload1208, i64 48
  %i.sg = getelementptr inbounds nuw i8, ptr %.reload1208, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.si = load ptr, ptr %i.sf, align 8, !tbaa !147
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = sub i64 %i.sj, %i.sk
  br label %.from.996

.from.996:                                        ; preds = %bb.cb, %.from.988, %.from.992.a
  %.pn17.i = phi ptr [ %i.sb, %.from.992.a ], [ %i.sh, %.from.988 ], [ null, %bb.cb ]
  %.sroa.4.0.i.i4.i = phi i64 [ %i.se, %.from.992.a ], [ %i.sl, %.from.988 ], [ 0, %bb.cb ]
  %i.sm = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %.reload1208)
          to label %bb.cc unwind label %.from.1053

bb.cc:                                            ; preds = %.from.996
  %i.sn = extractvalue { i64, i64 } %i.sm, 1      ; 2 uses
  %i.so = icmp eq i64 %i.rq, -1
  %i.sp = sub i64 %.sroa.4.0.i.i4.i, %i.sn
  %.sroa.3.0.i = select i1 %i.so, i64 %i.sp, i64 %i.rq ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 %i.sn
  store ptr %.sroa.0.0.i, ptr %.reload.addr1325, align 8
  store i64 %.sroa.3.0.i, ptr %i.gv, align 8
  %.not226 = icmp eq i64 %.sroa.3.0.i, %i.rq
  br i1 %.not226, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sq = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  store i64 %i.rq, ptr %.reload.addr1335, align 16, !tbaa !83, !noalias !500
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %.reload.addr1310.a, ptr nonnull @.str.19, i64 34, i64 4, ptr nonnull %.reload.addr1335)
          to label %bb.ce unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1310.a)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.sq, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.sq, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit611.unreachable667 unwind label %.thread1396

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread: ; preds = %bb.cd
  %i.sr = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1051

bb.cg:                                            ; preds = %bb.ce
  %i.ss = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.st = load i8, ptr %.reload.addr1310.a, align 8
  %i.su = trunc i8 %i.st to i1
  br i1 %i.su, label %.split557, label %.from.1051

.thread1396:                                      ; preds = %bb.cf
  %i.sv = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.sw = load i8, ptr %.reload.addr1310.a, align 8
  %i.sx = trunc i8 %i.sw to i1
  br i1 %i.sx, label %.split557, label %.from..split5411068

.split557:                                        ; preds = %.thread1396, %bb.cg
  %i.sy = phi { ptr, i32 } [ %i.sv, %.thread1396 ], [ %i.ss, %bb.cg ] ; 2 uses
  %.01931398 = phi i1 [ false, %.thread1396 ], [ true, %bb.cg ]
  %i.sz = load ptr, ptr %i.gn, align 8, !tbaa !83
  %i.ta = load i64, ptr %.reload.addr1310.a, align 8
  %i.tb = and i64 %i.ta, -2
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tb) #38
  br i1 %.01931398, label %.from.1051, label %.from..split5411068

.from.1051:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread, %.split557, %bb.cg
  %.pn240556 = phi { ptr, i32 } [ %i.sr, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread ], [ %i.sy, %.split557 ], [ %i.ss, %bb.cg ]
  call void @__cxa_free_exception(ptr %i.sq) #34
  br label %.from..split5411068

bb.ch:                                            ; preds = %bb.cc
  %.reload1212 = load ptr, ptr %.spill.addr, align 8, !tbaa !123
  %i.tc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1212, i64 noundef %i.rq, i32 noundef 1)
          to label %bb.ci unwind label %.from.1053 ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1311, i8 0, i64 24, i1 false)
  %i.td = load ptr, ptr %.reload.addr1329.a, align 8, !tbaa !132 ; 2 uses
  %i.te = load ptr, ptr %i.gp, align 8, !tbaa !133 ; 2 uses
  store ptr %i.te, ptr %.spill.addr1307, align 8
  %.not585653 = icmp eq ptr %i.td, %i.te
  br i1 %.not585653, label %._crit_edge657, label %.lr.ph656

.from.1053:                                       ; preds = %.noexc355, %bb.by, %bb.bi, %bb.ax, %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310, %bb.ch, %.from.996
  %i.tf = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5411068

.lr.ph656:                                        ; preds = %bb.ci, %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %.sroa.0494.0654 = phi ptr [ %i.yz, %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.td, %bb.ci ] ; 6 uses
  store ptr %.sroa.0494.0654, ptr %.sroa.0494.0654.spill.addr, align 8
  %i.tg = load ptr, ptr %.sroa.0494.0654, align 8, !tbaa !152 ; 6 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0494.0654, i64 8 ; 5 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !153 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.tg, %i.ti
  br i1 %.not10.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i362

.lr.ph.i.i.i.i362:                                ; preds = %.lr.ph656, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.tv, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.tg, %.lr.ph656 ] ; 6 uses
  %i.tj = load i8, ptr %.011.i.i.i.i, align 8     ; 2 uses
  %i.tk = trunc i8 %i.tj to i1                    ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.tm = load i64, ptr %i.tl, align 8
  %i.tn = lshr i8 %i.tj, 1
  %i.to = zext nneg i8 %i.tn to i64
  %i.tp = select i1 %i.tk, i64 %i.tm, i64 %i.to
  %.not.i.i.i.i.i363 = icmp eq i64 %i.tp, 1
  br i1 %.not.i.i.i.i.i363, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i362
  %i.tq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 1
  %i.tt = select i1 %i.tk, ptr %i.tr, ptr %i.ts
  %lhsc = load i8, ptr %i.tt, align 1
  %i.tu = icmp eq i8 %lhsc, 65
  br i1 %i.tu, label %.loopexit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i362
  %i.tv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i364 = icmp eq ptr %i.tv, %i.ti
  br i1 %.not.i.i.i.i364, label %.loopexit.thread, label %.lr.ph.i.i.i.i362, !llvm.loop !461

.loopexit:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph656
  %.0.lcssa.i.i.i.i = phi ptr [ %i.tg, %.lr.ph656 ], [ %.011.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ] ; 2 uses
  %i.tw = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.tx = ptrtoint ptr %i.tg to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = getelementptr inbounds i8, ptr %i.tg, i64 %i.ty
  %.not.i365 = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ti
  %.not227586 = icmp eq ptr %i.tg, null
  %.not227 = or i1 %.not227586, %.not.i365
  br i1 %.not227, label %.loopexit.thread, label %.from..loopexit

.loopexit.thread:                                 ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %.loopexit
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc366 unwind label %.body411.from..loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc366:                                        ; preds = %.loopexit.thread
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !94
  invoke void @_ZN4tlog6Logger3logIJRtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ub, i32 noundef 4, ptr nonnull @.str.21, i64 77, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1348)
          to label %bb.cj unwind label %.body411.from..loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %.noexc366
  %i.uc = load ptr, ptr %.sroa.0494.0654, align 8, !tbaa !152 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.ud, align 8, !tbaa !83 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.reload.addr1310.a, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !156
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !164 ; 2 uses
  store i32 %i.uh, ptr %.reload.addr1346, align 8, !tbaa !165
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !168 ; 2 uses
  store i32 %i.uj, ptr %.reload.addr1347.a, align 4, !tbaa !165
  %i.uk = load ptr, ptr %i.th, align 8, !tbaa !153 ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0494.0654, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !169
  %i.un = icmp ult ptr %i.uk, %i.um
  br i1 %i.un, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr1331, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev7ChannelC1ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES9_NS1_10shared_ptrINS_11PixelBufferEEEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.uk, ptr nonnull align 1 dereferenceable(2) @.str.20, i64 1, i64 %.sroa.0.0.copyload.i, i32 noundef %i.uh, i32 noundef %i.uj, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr1331, i64 noundef 0, i64 noundef 1)
          to label %bb.cl unwind label %.body369.from..body.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.uo = load ptr, ptr %i.gw, align 8, !tbaa !170 ; 5 uses
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i.i.i368, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = atomicrmw add ptr %i.up, i64 -1 acq_rel, align 8
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %bb.cn, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.us = load ptr, ptr %i.uo, align 8, !tbaa !65
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #34, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #34
  br label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

.body369.from..body.i.i:                          ; preds = %bb.ck
  %i.uv = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1331) #34
  store ptr %i.uk, ptr %i.th, align 8, !tbaa !153
  br label %.body397

.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i: ; preds = %bb.cl, %bb.cm, %bb.cn
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uk, i64 72 ; 2 uses
  store ptr %i.uw, ptr %i.th, align 8, !tbaa !153
  br label %.from.1010

bb.co:                                            ; preds = %bb.cj
  %i.ux = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0494.0654, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1310.a, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1346, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1347.a)
          to label %.from.1010 unwind label %.body411.from..loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.from.1010:                                       ; preds = %bb.co, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i
  %.0.i = phi ptr [ %i.uw, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i ], [ %i.ux, %bb.co ] ; 6 uses
  store ptr %.0.i, ptr %.0.i.spill.addr, align 8
  store ptr %.0.i, ptr %i.th, align 8, !tbaa !153
  %i.uy = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i372 = load i64, ptr %i.uy, align 8, !tbaa !83 ; 2 uses
  %i.uz = shl i64 %.sroa.0.0.copyload.i372, 32
  %i.va = ashr exact i64 %i.uz, 32
  %i.vb = ashr i64 %.sroa.0.0.copyload.i372, 32
  %i.vc = mul nsw i64 %i.va, %i.vb                ; 2 uses
  %i.vd = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ve = icmp eq i8 %i.vd, 0
  br i1 %i.ve, label %bb.cp, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !171

bb.cp:                                            ; preds = %.from.1010
  %i.vf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i373 = icmp eq i32 %i.vf, 0
  br i1 %.not.i373, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.cr unwind label %.body374.from.

bb.cr:                                            ; preds = %bb.cq
  %i.vg = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body374.from.:                                   ; preds = %bb.cq
  %i.vh = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body397

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.cr, %bb.cp, %.from.1010
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.vi = getelementptr inbounds i8, ptr %.0.i, i64 -32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !156, !noalias !501 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !164, !noalias !501
  %.not.i376 = icmp eq i32 %i.vl, 7
  br i1 %.not.i376, label %bb.ct, label %bb.cs, !prof !172

bb.cs:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.vm = call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !501 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vm, ptr noundef nonnull @.str.105)
          to label %.invoke unwind label %.body374.from.1019.a, !noalias !501

.body374.from.1019.a:                             ; preds = %bb.cs
  %i.vn = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.vm) #34, !noalias !501
  br label %.body397

bb.ct:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload1253 = load i32, ptr %.spill.addr1249, align 8, !tbaa !123
  %i.vo = load ptr, ptr %i.vj, align 8, !tbaa !173, !noalias !501
  %i.vp = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !174, !noalias !501
  %i.vr = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !175, !noalias !501
  %.sroa.0.0.copyload.i377 = load i64, ptr %i.uy, align 8, !tbaa !83, !noalias !501
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vs
  store ptr %i.vt, ptr %.reload.addr1324, align 8, !tbaa !178, !alias.scope !501
  store i64 %i.vq, ptr %i.gy, align 8, !tbaa !179, !alias.scope !501
  store i64 %.sroa.0.0.copyload.i377, ptr %i.gx, align 8, !tbaa !83, !alias.scope !501
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1310.a, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.vc, i64 noundef %i.vc, ptr noundef nonnull byval(%class.anon.119) align 8 %.reload.addr1324, i32 noundef %.reload1253)
          to label %bb.cu unwind label %.body411.from..loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  %i.vu = load ptr, ptr %i.gn, align 8, !tbaa !75
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load atomic i32, ptr %i.vv acquire, align 4
  %i.vx = icmp slt i32 %i.vw, 2
  br i1 %i.vx, label %bb.cv, label %AfterCoroSave858.a

bb.cv:                                            ; preds = %bb.cu
  %i.vy = load ptr, ptr %i.gn, align 8, !tbaa !75
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = atomicrmw add ptr %i.vz, i32 -1 acq_rel, align 4
  %i.wb = icmp slt i32 %i.wa, 1
  br i1 %i.wb, label %bb.cw, label %.thread562.sink.split

bb.cw:                                            ; preds = %bb.cv
  %i.wc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i384 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i384:                                    ; preds = %bb.cw
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !94 ; 7 uses
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !116
  %i.wf = and i32 %i.we, 8
  %.not.i.i.i.i385 = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i.i.i385, label %bb.cx, label %.thread562.sink.split

bb.cx:                                            ; preds = %.noexc.i.i384
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !117 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !118 ; 2 uses
  %.not12.i.i.i.i.i386 = icmp eq ptr %i.wh, %i.wj
  br i1 %.not12.i.i.i.i.i386, label %.thread562.sink.split, label %.from..lr.ph.i.i.i.i.i387

.from..lr.ph.i.i.i.i.i387:                        ; preds = %bb.cx
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wd, i64 48
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wd, i64 33
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wd, i64 40
  br label %.from..noexc2.i.i389

.from..noexc2.i.i389:                             ; preds = %.noexc2.i.i389, %.from..lr.ph.i.i.i.i.i387
  %.sroa.09.013.i.i.i.i.i388 = phi ptr [ %i.wh, %.from..lr.ph.i.i.i.i.i387 ], [ %i.wz, %.noexc2.i.i389 ] ; 2 uses
  %i.wo = load ptr, ptr %.sroa.09.013.i.i.i.i.i388, align 8, !tbaa !121 ; 2 uses
  %i.wp = load i8, ptr %i.wk, align 8             ; 2 uses
  %i.wq = trunc i8 %i.wp to i1                    ; 2 uses
  %i.wr = load ptr, ptr %i.wl, align 8
  %i.ws = select i1 %i.wq, ptr %i.wr, ptr %i.wm
  %i.wt = load i64, ptr %i.wn, align 8
  %i.wu = lshr i8 %i.wp, 1
  %i.wv = zext nneg i8 %i.wu to i64
  %i.ww = select i1 %i.wq, i64 %i.wt, i64 %i.wv
  %i.wx = load ptr, ptr %i.wo, align 8, !tbaa !65
  %i.wy = load ptr, ptr %i.wx, align 8
  invoke void %i.wy(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, ptr %i.ws, i64 %i.ww, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i389 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i389:                                   ; preds = %.from..noexc2.i.i389
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i388, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
.from.1060:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit354.thread, %.split553, %bb.as
  %.pn244552 = phi { ptr, i32 } [ %i.ig, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit354.thread ], [ %i.in, %.split553 ], [ %i.ih, %bb.as ]
  tail call void @__cxa_free_exception(ptr %i.ic) #34
  br label %.from..split5411068

bb.at:                                            ; preds = %bb.ap
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc355 unwind label %.from.1053

.noexc355:                                        ; preds = %bb.at
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !94
  invoke void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIiLm2EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.it, i32 noundef 4, ptr nonnull @.str.18, i64 61, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1344.a)
          to label %bb.au unwind label %.from.1053

bb.au:                                            ; preds = %.noexc355
  %.val267.reload1296 = load ptr, ptr %.val267.reload.addr1293, align 8, !tbaa !123
  %storemerge215663.reload1274 = load i16, ptr %storemerge215663.reload.addr1271, align 16, !tbaa !123
  %.reload.addr1207 = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %.reload1208 = load ptr, ptr %.reload.addr1207, align 8, !tbaa !123 ; 7 uses
  %i.iu = zext i16 %storemerge215663.reload1274 to i64
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1296, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.reload1208, i64 112
  %i.iy = load i32, ptr %i.iv, align 4, !tbaa !103
  %i.iz = add i32 %i.iy, 31                       ; 2 uses
  %i.ja = srem i32 %i.iz, 32
  %i.jb = sub nsw i32 %i.iz, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = lshr i64 %i.jc, 3                       ; 2 uses
  store i64 %i.jd, ptr %.reload.addr1326.a, align 16, !tbaa !138
  %i.je = load i32, ptr %i.iw, align 4, !tbaa !104
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %i.jd, %i.jf                    ; 5 uses
  %i.jh = load i32, ptr %i.ix, align 8, !tbaa !143 ; 2 uses
  %i.ji = and i32 %i.jh, 16
  %.not.i.i.i357 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i357, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jj = getelementptr inbounds nuw i8, ptr %.reload1208, i64 64
  %i.jk = getelementptr inbounds nuw i8, ptr %.reload1208, i64 104 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !144 ; 2 uses
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !145 ; 3 uses
  %i.jn = icmp ult ptr %i.jl, %i.jm
  br i1 %i.jn, label %.from..thread.i, label %.from.992.a

.from..thread.i:                                  ; preds = %bb.av
  store ptr %i.jm, ptr %i.jk, align 8, !tbaa !144
  br label %.from.992.a

bb.aw:                                            ; preds = %bb.au
  %i.jo = and i32 %i.jh, 8
  %.not1.i.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not1.i.i.i, label %.from.996, label %.from.988

.from.992.a:                                      ; preds = %.from..thread.i, %bb.av
  %i.jp = phi ptr [ %i.jm, %.from..thread.i ], [ %i.jl, %bb.av ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.reload1208, i64 56
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !146 ; 2 uses
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  br label %.from.996

.from.988:                                        ; preds = %bb.aw
  %i.jv = getelementptr inbounds nuw i8, ptr %.reload1208, i64 48
  %i.jw = getelementptr inbounds nuw i8, ptr %.reload1208, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8            ; 2 uses
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !147
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jx to i64
  %i.kb = sub i64 %i.jz, %i.ka
  br label %.from.996

.from.996:                                        ; preds = %bb.aw, %.from.988, %.from.992.a
  %.pn17.i = phi ptr [ %i.jr, %.from.992.a ], [ %i.jx, %.from.988 ], [ null, %bb.aw ]
  %.sroa.4.0.i.i4.i = phi i64 [ %i.ju, %.from.992.a ], [ %i.kb, %.from.988 ], [ 0, %bb.aw ]
  %i.kc = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %.reload1208)
          to label %bb.ax unwind label %.from.1053

bb.ax:                                            ; preds = %.from.996
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ke = extractvalue { i64, i64 } %i.kc, 1      ; 2 uses
  %i.kf = icmp eq i64 %i.jg, -1
  %i.kg = sub i64 %.sroa.4.0.i.i4.i, %i.ke
  %.sroa.3.0.i = select i1 %i.kf, i64 %i.kg, i64 %i.jg ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 %i.ke
  store ptr %.sroa.0.0.i, ptr %.reload.addr1325, align 8
  store i64 %.sroa.3.0.i, ptr %i.kd, align 16
  %.not226 = icmp eq i64 %.sroa.3.0.i, %i.jg
  br i1 %.not226, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kh = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  store i64 %i.jg, ptr %.reload.addr1335, align 16, !tbaa !83, !noalias !1521
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %.reload.addr1310.a, ptr nonnull @.str.19, i64 34, i64 4, ptr nonnull %.reload.addr1335)
          to label %bb.az unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1310.a)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.kh, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.kh, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit611.unreachable667 unwind label %.thread22

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread: ; preds = %bb.ay
  %i.ki = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1051

bb.bb:                                            ; preds = %bb.az
  %i.kj = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.kk = load i8, ptr %.reload.addr1310.a, align 8
  %i.kl = trunc i8 %i.kk to i1
  br i1 %i.kl, label %.split557, label %.from.1051

.thread22:                                        ; preds = %bb.ba
  %i.km = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.kn = load i8, ptr %.reload.addr1310.a, align 8
  %i.ko = trunc i8 %i.kn to i1
  br i1 %i.ko, label %.split557, label %.from..split5411068

.split557:                                        ; preds = %.thread22, %bb.bb
  %i.kp = phi { ptr, i32 } [ %i.km, %.thread22 ], [ %i.kj, %bb.bb ] ; 2 uses
  %.019324 = phi i1 [ false, %.thread22 ], [ true, %bb.bb ]
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !83
  %i.ks = load i64, ptr %.reload.addr1310.a, align 8
  %i.kt = and i64 %i.ks, -2
  tail call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kt) #38
  br i1 %.019324, label %.from.1051, label %.from..split5411068

.from.1051:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread, %.split557, %bb.bb
  %.pn240556 = phi { ptr, i32 } [ %i.ki, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit361.thread ], [ %i.kp, %.split557 ], [ %i.kj, %bb.bb ]
  tail call void @__cxa_free_exception(ptr %i.kh) #34
  br label %.from..split5411068

bb.bc:                                            ; preds = %bb.ax
  %.reload1212 = load ptr, ptr %.reload.addr1207, align 8, !tbaa !123
  %i.ku = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1212, i64 noundef %i.jg, i32 noundef 1)
          to label %bb.bd unwind label %.from.1053 ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr1311, i8 0, i64 24, i1 false)
  %i.kv = load ptr, ptr %.reload.addr1329.a, align 8, !tbaa !132 ; 2 uses
  %i.kw = load ptr, ptr %i.ho, align 16, !tbaa !133 ; 2 uses
  %.spill.addr1307 = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %i.kw, ptr %.spill.addr1307, align 16
  %.not585653 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not585653, label %._crit_edge657, label %.lr.ph656

.from.1053:                                       ; preds = %.noexc355, %bb.at, %bb.ae, %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310, %bb.t, %.from.996, %bb.bc
  %i.kx = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5411068

.lr.ph656:                                        ; preds = %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.bd
  %.sroa.0494.0654 = phi ptr [ %i.kv, %bb.bd ], [ %i.qy, %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ] ; 6 uses
  %.sroa.0494.0654.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %.sroa.0494.0654, ptr %.sroa.0494.0654.spill.addr, align 8
  %i.ky = load ptr, ptr %.sroa.0494.0654, align 8, !tbaa !152 ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0494.0654, i64 8 ; 5 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !153 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ky, %i.la
  br i1 %.not10.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i362

.lr.ph.i.i.i.i362:                                ; preds = %.lr.ph656, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ln, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.ky, %.lr.ph656 ] ; 6 uses
  %i.lb = load i8, ptr %.011.i.i.i.i, align 8     ; 2 uses
  %i.lc = trunc i8 %i.lb to i1                    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = lshr i8 %i.lb, 1
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = select i1 %i.lc, i64 %i.le, i64 %i.lg
  %.not.i.i.i.i.i363 = icmp eq i64 %i.lh, 1
  br i1 %.not.i.i.i.i.i363, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i362
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 1
  %i.ll = select i1 %i.lc, ptr %i.lj, ptr %i.lk
  %lhsc = load i8, ptr %i.ll, align 1
  %i.lm = icmp eq i8 %lhsc, 65
  br i1 %i.lm, label %.loopexit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i362
  %i.ln = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i364 = icmp eq ptr %i.ln, %i.la
  br i1 %.not.i.i.i.i364, label %.loopexit.thread, label %.lr.ph.i.i.i.i362, !llvm.loop !1493

.loopexit:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph656
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ky, %.lr.ph656 ], [ %.011.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ] ; 2 uses
  %i.lo = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.lp = ptrtoint ptr %i.ky to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = getelementptr inbounds i8, ptr %i.ky, i64 %i.lq
  %.not.i365 = icmp eq ptr %.0.lcssa.i.i.i.i, %i.la
  %.not227586 = icmp eq ptr %i.ky, null
  %.not227 = or i1 %.not227586, %.not.i365
  br i1 %.not227, label %.loopexit.thread, label %.from..loopexit

.loopexit.thread:                                 ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %.loopexit
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc366 unwind label %.body411.from.

.noexc366:                                        ; preds = %.loopexit.thread
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !94
  invoke void @_ZN4tlog6Logger3logIJRtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.lt, i32 noundef 4, ptr nonnull @.str.21, i64 77, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1348)
          to label %bb.be unwind label %.body411.from.

bb.be:                                            ; preds = %.noexc366
  %i.lu = load ptr, ptr %.sroa.0494.0654, align 8, !tbaa !152 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.lv, align 8, !tbaa !83 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %.reload.addr1310.a, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !156
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !164 ; 2 uses
  store i32 %i.lz, ptr %.reload.addr1346, align 16, !tbaa !165
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !168 ; 2 uses
  store i32 %i.mb, ptr %.reload.addr1347.a, align 4, !tbaa !165
  %i.mc = load ptr, ptr %i.kz, align 8, !tbaa !153 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0494.0654, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !169
  %i.mf = icmp ult ptr %i.mc, %i.me
  br i1 %i.mf, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr1331, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev7ChannelC1ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES9_NS1_10shared_ptrINS_11PixelBufferEEEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.mc, ptr nonnull align 1 dereferenceable(2) @.str.20, i64 1, i64 %.sroa.0.0.copyload.i, i32 noundef %i.lz, i32 noundef %i.mb, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr1331, i64 noundef 0, i64 noundef 1)
          to label %bb.bg unwind label %.body369.from..body.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.mh = load ptr, ptr %i.mg, align 16, !tbaa !170 ; 5 uses
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i368, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = atomicrmw add ptr %i.mi, i64 -1 acq_rel, align 8
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.bi, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !65
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8
  tail call void %i.mn(ptr noundef nonnull align 8 dereferenceable(24) %i.mh) #34, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mh) #34
  br label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

.body369.from..body.i.i:                          ; preds = %bb.bf
  %i.mo = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1331) #34
  store ptr %i.mc, ptr %i.kz, align 8, !tbaa !153
  br label %.body397

.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i: ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 72 ; 2 uses
  store ptr %i.mp, ptr %i.kz, align 8, !tbaa !153
  br label %.from.1010

bb.bj:                                            ; preds = %bb.be
  %i.mq = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0494.0654, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1310.a, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1346, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1347.a)
          to label %.from.1010 unwind label %.body411.from.

.from.1010:                                       ; preds = %bb.bj, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i
  %.0.i = phi ptr [ %i.mp, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i ], [ %i.mq, %bb.bj ] ; 6 uses
  %.0.i.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %.0.i, ptr %.0.i.spill.addr, align 16
  store ptr %.0.i, ptr %i.kz, align 8, !tbaa !153
  %i.mr = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i372 = load i64, ptr %i.mr, align 8, !tbaa !83 ; 2 uses
  %i.ms = shl i64 %.sroa.0.0.copyload.i372, 32
  %i.mt = ashr exact i64 %i.ms, 32
  %i.mu = ashr i64 %.sroa.0.0.copyload.i372, 32
  %i.mv = mul nsw i64 %i.mt, %i.mu                ; 2 uses
  %i.mw = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.mx = icmp eq i8 %i.mw, 0
  br i1 %i.mx, label %bb.bk, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !171

bb.bk:                                            ; preds = %.from.1010
  %i.my = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i373 = icmp eq i32 %i.my, 0
  br i1 %.not.i373, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bm unwind label %.body374.from.

bb.bm:                                            ; preds = %bb.bl
  %i.mz = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body374.from.:                                   ; preds = %bb.bl
  %i.na = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body397

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.bm, %bb.bk, %.from.1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.nb = getelementptr inbounds i8, ptr %.0.i, i64 -32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !156, !noalias !1522 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !164, !noalias !1522
  %.not.i376 = icmp eq i32 %i.ne, 7
  br i1 %.not.i376, label %bb.bo, label %bb.bn, !prof !172

bb.bn:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.nf = tail call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !1522 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull @.str.105)
          to label %.invoke unwind label %.body374.from.1019.a, !noalias !1522

.body374.from.1019.a:                             ; preds = %bb.bn
  %i.ng = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.nf) #34, !noalias !1522
  br label %.body397

bb.bo:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload.addr1252 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.reload1253 = load i32, ptr %.reload.addr1252, align 8, !tbaa !123
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !173, !noalias !1522
  %i.nk = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !174, !noalias !1522
  %i.nm = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !175, !noalias !1522
  %.sroa.0.0.copyload.i377 = load i64, ptr %i.mr, align 8, !tbaa !83, !noalias !1522
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nn
  store ptr %i.no, ptr %.reload.addr1324, align 16, !tbaa !178, !alias.scope !1522
  store i64 %i.nl, ptr %i.ni, align 8, !tbaa !179, !alias.scope !1522
  store i64 %.sroa.0.0.copyload.i377, ptr %i.nh, align 16, !tbaa !83, !alias.scope !1522
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1310.a, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.mv, i64 noundef %i.mv, ptr noundef nonnull byval(%class.anon.119) align 8 %.reload.addr1324, i32 noundef %.reload1253)
          to label %bb.bp unwind label %.body411.from.

bb.bp:                                            ; preds = %bb.bo
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !75
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load atomic i32, ptr %i.nr acquire, align 4
  %i.nt = icmp slt i32 %i.ns, 2
  br i1 %i.nt, label %bb.bq, label %AfterCoroSave858.a

bb.bq:                                            ; preds = %bb.bp
  %i.nu = load ptr, ptr %i.np, align 8, !tbaa !75
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = atomicrmw add ptr %i.nv, i32 -1 acq_rel, align 4
  %i.nx = icmp slt i32 %i.nw, 1
  br i1 %i.nx, label %bb.br, label %.thread562.sink.split

bb.br:                                            ; preds = %bb.bq
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i384 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i382.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i384:                                    ; preds = %bb.br
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !94 ; 7 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !116
  %i.ob = and i32 %i.oa, 8
  %.not.i.i.i.i385 = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i.i.i385, label %bb.bs, label %.thread562.sink.split

bb.bs:                                            ; preds = %.noexc.i.i384
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !117 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !118 ; 2 uses
  %.not12.i.i.i.i.i386 = icmp eq ptr %i.od, %i.of
  br i1 %.not12.i.i.i.i.i386, label %.thread562.sink.split, label %.from..lr.ph.i.i.i.i.i387

.from..lr.ph.i.i.i.i.i387:                        ; preds = %bb.bs
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 33
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  br label %.from..noexc2.i.i389

.from..noexc2.i.i389:                             ; preds = %.noexc2.i.i389, %.from..lr.ph.i.i.i.i.i387
  %.sroa.09.013.i.i.i.i.i388 = phi ptr [ %i.od, %.from..lr.ph.i.i.i.i.i387 ], [ %i.ov, %.noexc2.i.i389 ] ; 2 uses
  %i.ok = load ptr, ptr %.sroa.09.013.i.i.i.i.i388, align 8, !tbaa !121 ; 2 uses
  %i.ol = load i8, ptr %i.og, align 8             ; 2 uses
  %i.om = trunc i8 %i.ol to i1                    ; 2 uses
  %i.on = load ptr, ptr %i.oh, align 8
  %i.oo = select i1 %i.om, ptr %i.on, ptr %i.oi
  %i.op = load i64, ptr %i.oj, align 8
  %i.oq = lshr i8 %i.ol, 1
  %i.or = zext nneg i8 %i.oq to i64
  %i.os = select i1 %i.om, i64 %i.op, i64 %i.or
  %i.ot = load ptr, ptr %i.ok, align 8, !tbaa !65
end_hunk_1
begin_hunk_2_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy:resume.entry
!1315 = distinct !{!1315, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1316 = distinct !{!1316, !1315, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1317 = !{!1310}
!1318 = !{!1312}
!1319 = !{!1312, !1310}
!1320 = !{!1314, !1312, !1310}
!1321 = !{!1316}
!1322 = !{!379, !66, i64 16}
!1323 = distinct !{!1323, i1 true, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1324 = distinct !{!1324, !1323, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1325 = distinct !{!1325, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1326 = distinct !{!1326, !1325, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1327 = distinct !{!1327, i1 true, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1328 = distinct !{!1328, !1327, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1329 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1330 = distinct !{!1330, !101}
!1331 = !{!1324}
!1332 = !{!1326}
!1333 = !{!1326, !1324}
!1334 = !{!1328, !1326, !1324}
!1335 = !{!"p1 _ZTSNSt3__16threadE", !66, i64 0}
!1336 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1335, i64 0}
!1337 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1336, i64 0}
!1338 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1335, i64 0, !1335, i64 8, !1337, i64 16}
!1339 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1340 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !410, i64 0, !1339, i64 24}
!1341 = !{!"_ZTSNSt3__115recursive_mutexE", !58, i64 0}
!1342 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !58, i64 0}
!1343 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1342, i64 0}
!1344 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1343, i64 0}
!1345 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1344, i64 0}
!1346 = !{!"_ZTSNSt3__16atomicIlEE", !1345, i64 0}
!1347 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !58, i64 0}
!1348 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1346, i64 0, !1347, i64 8, !59, i64 40}
!1349 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !58, i64 0}
!1350 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1349, i64 0}
!1351 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1350, i64 0}
!1352 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1351, i64 0}
!1353 = !{!"_ZTSNSt3__16atomicImEE", !1352, i64 0}
!1354 = !{!"_ZTSN3tev10ThreadPoolE", !135, i64 8, !1338, i64 16, !1340, i64 40, !1341, i64 72, !1348, i64 112, !1341, i64 160, !1353, i64 200, !1353, i64 208}
!1355 = !{!1354, !135, i64 8}
!1356 = !{!415, !135, i64 52}
!1357 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1358 = distinct !{null, null, null}
!1359 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !66, i64 0}
!1360 = !{!1359, !66, i64 0}
!1361 = distinct !{!1361, !101}
!1362 = distinct !{null, null, null, null, null, null, null, null, null}
!1363 = distinct !{null, null, null, null}
!1364 = distinct !{null}
!1365 = distinct !{!1365, !101}
!1366 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1367 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1368 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1369 = distinct !{null}
!1370 = !{!"_ZTSNSt3__17promiseIvEE", !222, i64 0}
!1371 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !401, i64 0, !1370, i64 48}
!1372 = !{!1371, !222, i64 48}
!1373 = distinct !{!1373, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1374 = distinct !{!1374, !1373, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1375 = distinct !{!1375, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1376 = distinct !{!1376, !1375, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1377 = distinct !{!1377, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1378 = distinct !{!1378, !1377, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1379 = distinct !{!1379, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1380 = distinct !{!1380, !1379, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1381 = distinct !{!1381, !101, !279, !280}
!1382 = distinct !{!1382, !245}
!1383 = distinct !{!1383, !101, !279}
!1384 = !{!1374}
!1385 = !{!1376}
!1386 = !{!1376, !1374}
!1387 = !{!1378, !1376, !1374}
!1388 = !{!1380}
!1389 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_", !66, i64 0}
!1390 = !{!1389, !66, i64 0}
!1391 = distinct !{!1391, i1 true, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1392 = distinct !{!1392, !1391, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1393 = distinct !{!1393, !101}
!1394 = !{!420, !420, i64 0}
!1395 = !{!1392}
!1396 = distinct !{!1396, !101}
!1397 = !{!421, !420, i64 0}
!1398 = distinct !{!1398, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1399 = distinct !{!1399, !1398, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1400 = distinct !{!1400, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1401 = distinct !{!1401, !1400, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1402 = distinct !{!1402, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1403 = distinct !{!1403, !1402, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1404 = distinct !{!1404, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1405 = distinct !{!1405, !1404, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1406 = distinct !{!1406, !101}
!1407 = distinct !{!1407, i1 true, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1408 = distinct !{!1408, !1407, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1409 = !{!1399}
!1410 = !{!1401}
!1411 = !{!1401, !1399}
!1412 = !{!1403, !1401, !1399}
!1413 = !{!1405}
!1414 = !{!"branch_weights", i32 1, i32 127}
!1415 = !{!1408}
!1416 = distinct !{!1416, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1417 = distinct !{!1417, !1416, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1418 = distinct !{!1418, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1419 = distinct !{!1419, !1418, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1420 = distinct !{!1420, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1421 = distinct !{!1421, !1420, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1422 = distinct !{!1422, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1423 = distinct !{!1423, !1422, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1424 = !{!1417}
!1425 = !{!1419}
!1426 = !{!1419, !1417}
!1427 = !{!1421, !1419, !1417}
!1428 = !{!1423}
!1429 = distinct !{!1429, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1430 = distinct !{!1430, !1429, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1431 = distinct !{!1431, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1432 = distinct !{!1432, !1431, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1433 = distinct !{!1433, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1434 = distinct !{!1434, !1433, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1435 = distinct !{!1435, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1436 = distinct !{!1436, !1435, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1437 = !{!1430}
!1438 = !{!1432}
!1439 = !{!1432, !1430}
!1440 = !{!1434, !1432, !1430}
!1441 = !{!1436}
!1442 = distinct !{!1442, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1443 = distinct !{!1443, !1442, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1444 = distinct !{!1444, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1445 = distinct !{!1445, !1444, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1446 = distinct !{!1446, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1447 = distinct !{!1447, !1446, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1448 = distinct !{!1448, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1449 = distinct !{!1449, !1448, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1450 = !{!1443}
!1451 = !{!1445}
!1452 = !{!1445, !1443}
!1453 = !{!1447, !1445, !1443}
!1454 = !{!1449}
!1455 = !{!424, !66, i64 8}
!1456 = distinct !{!1456, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1457 = distinct !{!1457, !1456, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1458 = distinct !{!1458, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1459 = distinct !{!1459, !1458, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1460 = distinct !{!1460, i1 true, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1461 = distinct !{!1461, !1460, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1462 = distinct !{!1462, i1 true, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1463 = distinct !{!1463, !1462, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1464 = distinct !{!1464, !101}
!1465 = distinct !{!1465, !101}
!1466 = !{!1457}
!1467 = !{!1459}
!1468 = !{!1459, !1457}
!1469 = !{!1461, !1459, !1457}
!1470 = !{!1463}
!1471 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_", !66, i64 0}
!1472 = !{!1471, !66, i64 0}
!1473 = !{!"_ZTSZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiE3$_2", !80, i64 0, !193, i64 8, !85, i64 16, !195, i64 24, !197, i64 32}
!1474 = !{!1473, !80, i64 0}
!1475 = !{!1473, !85, i64 16}
!1476 = !{!1473, !193, i64 8}
!1477 = !{!1473, !195, i64 24}
!1478 = !{!"_ZTSNSt3__14spanIKhLm18446744073709551615EEE", !91, i64 0, !77, i64 8}
!1479 = !{!1478, !91, i64 0}
!1480 = !{!"branch_weights", i32 -2004248167, i32 118691432}
!1481 = distinct !{!1481, i1 true, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1482 = distinct !{!1482, !1481, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1483 = distinct !{!1483, i1 true, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!1484 = distinct !{!1484, !1483, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1485 = distinct !{!1485, i1 true, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1486 = distinct !{!1486, !1485, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1487 = distinct !{!1487, i1 true, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!1488 = distinct !{!1488, !1487, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1489 = distinct !{!1489, i1 true, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_"}
!1490 = distinct !{!1490, !1489, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!1491 = distinct !{!1491, i1 true, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1492 = distinct !{!1492, !1491, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1493 = distinct !{!1493, !101}
!1494 = distinct !{!1494, i1 true, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1495 = distinct !{!1495, !1494, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1496 = distinct !{!1496, i1 true, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1497 = distinct !{!1497, !1496, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1498 = distinct !{!1498, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!1499 = distinct !{!1499, !1498, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!1500 = distinct !{!1500, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!1501 = distinct !{!1501, !1500, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!1502 = distinct !{!1502, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!1503 = distinct !{!1503, !1502, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!1504 = distinct !{!1504, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!1505 = distinct !{!1505, !1504, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!1506 = distinct !{!1506, !101}
!1507 = distinct !{!1507, i1 true, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!1508 = distinct !{!1508, !1507, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!1509 = distinct !{!1509, i1 true, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1510 = distinct !{!1510, !1509, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1511 = distinct !{!1511, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1512 = distinct !{!1512, !1511, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1513 = distinct !{!1513, !101}
!1514 = distinct !{!1514, !101}
!1515 = !{!"branch_weights", i32 0, i32 -1870692793, i32 793657734, i32 -689682259, i32 287453131}
!1516 = !{!1482}
!1517 = !{!1484, !1482}
!1518 = !{!1486}
!1519 = !{!1488, !1486}
!1520 = !{!1490}
!1521 = !{!1492}
!1522 = !{!1495}
!1523 = !{!1497}
!1524 = !{!1505, !1503, !1501, !1499}
!1525 = !{!1508}
!1526 = !{!1510}
!1527 = !{!1512}
!1528 = !{!1512, !1510}
!1529 = !{!"branch_weights", i32 0, i32 -1870692793, i32 793657734, i32 -689682259, i32 287453131, i32 292584607}
end_hunk_2
