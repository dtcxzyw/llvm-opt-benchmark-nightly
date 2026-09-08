Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/IcoImageLoader?download=true
inline.NumInlined: 6024
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  %switch.select2.i1183 = select i1 %switch.selectcmp1.i1186, ptr @.str.26, ptr %switch.select.i1184
  %i.ih = zext i16 %storemerge215662 to i64
  %.val267 = load ptr, ptr %i.s, align 8, !tbaa !93 ; 2 uses
  store ptr %.val267, ptr %.val267.spill.addr, align 8
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %.val267, i64 %i.ih
  store ptr %switch.select2.i1183, ptr %.reload.addr1298, align 8, !tbaa !90
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc296 unwind label %.from.1128

.noexc296:                                        ; preds = %.from..lr.ph664
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !92
  invoke void @_ZN4tlog6Logger3logIJRtPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.ik, i32 noundef 4, ptr nonnull @.str.13, i64 35, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298 unwind label %.from.1128

_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298: ; preds = %.noexc296
  %.reload1216 = load ptr, ptr %.spill.addr, align 8, !tbaa !121 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1317, i8 0, i64 24, i1 false)
  %i.il = load ptr, ptr %.reload1216, align 8, !tbaa !63
  %i.im = getelementptr i8, ptr %i.il, i64 -24
  %i.in = load i64, ptr %i.im, align 8
  %i.io = getelementptr inbounds i8, ptr %.reload1216, i64 %i.in
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.io, i32 noundef 0)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit unwind label %.from.923

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit: ; preds = %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298
  %.reload1248 = load i64, ptr %.spill.addr1246, align 8, !tbaa !121
  %.reload1214 = load ptr, ptr %.spill.addr, align 8, !tbaa !121
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !103
  %i.ir = zext i32 %i.iq to i64
  %i.is = add i64 %.reload1248, %i.ir
  %i.it = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1214, i64 noundef %i.is, i32 noundef 0)
          to label %bb.ae unwind label %.from.923 ; 0 uses

bb.ae:                                            ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit
  %.reload1212 = load ptr, ptr %.spill.addr, align 8, !tbaa !121 ; 3 uses
  %i.iu = load ptr, ptr %.reload1212, align 8, !tbaa !63
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr %.reload1212, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !80
  %i.ja = and i32 %i.iz, 5
  %.not595 = icmp eq i32 %i.ja, 0
  br i1 %.not595, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jb = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298, ptr noundef nonnull @.str.14)
          to label %bb.ag unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.jb, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.jb, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable668 unwind label %.thread1366

.from.1128:                                       ; preds = %.from..lr.ph664, %.noexc296
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  br label %.from.1149

.from.923:                                        ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit, %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298
  %i.je = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split545914

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread: ; preds = %bb.af
  %i.jf = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.919

bb.ai:                                            ; preds = %bb.ag
  %i.jg = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.jh = load i8, ptr %.reload.addr1298, align 8
  %i.ji = trunc i8 %i.jh to i1
  br i1 %i.ji, label %.split545, label %.from.919

.thread1366:                                      ; preds = %bb.ah
  %i.jj = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.jk = load i8, ptr %.reload.addr1298, align 8
  %i.jl = trunc i8 %i.jk to i1
  br i1 %i.jl, label %.split545, label %.from..split545914

.split545:                                        ; preds = %.thread1366, %bb.ai
  %i.jm = phi { ptr, i32 } [ %i.jj, %.thread1366 ], [ %i.jg, %bb.ai ] ; 2 uses
  %.01991368 = phi i1 [ false, %.thread1366 ], [ true, %bb.ai ]
  %i.jn = load ptr, ptr %i.gn, align 8, !tbaa !81
  %i.jo = load i64, ptr %.reload.addr1298, align 8
  %i.jp = and i64 %i.jo, -2
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jp) #38
  br i1 %.01991368, label %.from.919, label %.from..split545914

.from.919:                                        ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread, %.split545, %bb.ai
  %.pn217544 = phi { ptr, i32 } [ %i.jf, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread ], [ %i.jm, %.split545 ], [ %i.jg, %bb.ai ]
  call void @__cxa_free_exception(ptr %i.jb) #34
  br label %.from..split545914

bb.aj:                                            ; preds = %bb.ae
  %.reload1239 = load i32, ptr %.spill.addr1237, align 8, !tbaa !121
  %.reload1234 = load ptr, ptr %.spill.addr1232, align 8, !tbaa !121
  %.reload1229 = load i64, ptr %.spill.addr1227, align 8, !tbaa !121
  %.reload1224 = load ptr, ptr %.spill.addr1222, align 8, !tbaa !121
  %.reload1219 = load ptr, ptr %.spill.addr1217, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tev14PngImageLoaderE, i64 16), ptr %.reload.addr1313, align 8, !tbaa !63
  invoke void @_ZNK3tev14PngImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1313, ptr noundef nonnull align 8 dereferenceable(120) %.reload1212, ptr noundef nonnull align 8 dereferenceable(24) %.reload1219, ptr %.reload1224, i64 %.reload1229, ptr noundef nonnull align 4 dereferenceable(9) %.reload1234, i32 noundef %.reload1239)
          to label %bb.ak unwind label %.from.912

bb.ak:                                            ; preds = %bb.aj
  %i.jq = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load atomic i32, ptr %i.jr acquire, align 4
  %i.jt = icmp slt i32 %i.js, 2
  br i1 %i.jt, label %bb.al, label %AfterCoroSave

bb.al:                                            ; preds = %bb.ak
  %i.ju = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = atomicrmw add ptr %i.jv, i32 -1 acq_rel, align 4
  %i.jx = icmp slt i32 %i.jw, 1
  br i1 %i.jx, label %bb.am, label %.thread.sink.split

bb.am:                                            ; preds = %bb.al
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.am
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92 ; 7 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !114
  %i.kb = and i32 %i.ka, 8
  %.not.i.i.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not.i.i.i.i, label %bb.an, label %.thread.sink.split

bb.an:                                            ; preds = %.noexc.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !115 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.kd, %i.kf
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.an
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 33
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.kd, %.from..lr.ph.i.i.i.i.i ], [ %i.kv, %.noexc2.i.i ] ; 2 uses
  %i.kk = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.kl = load i8, ptr %i.kg, align 8             ; 2 uses
  %i.km = trunc i8 %i.kl to i1                    ; 2 uses
  %i.kn = load ptr, ptr %i.kh, align 8
  %i.ko = select i1 %i.km, ptr %i.kn, ptr %i.ki
  %i.kp = load i64, ptr %i.kj, align 8
  %i.kq = lshr i8 %i.kl, 1
  %i.kr = zext nneg i8 %i.kq to i64
  %i.ks = select i1 %i.km, i64 %i.kp, i64 %i.kr
  %i.kt = load ptr, ptr %i.kk, align 8, !tbaa !63
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr %i.ko, i64 %i.ks, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kv, %i.kf
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

.from..loopexit.split-lp.i.i:                     ; preds = %bb.am
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.ao:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.kw = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.kw) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.ak
  store i8 0, ptr %index.addr1339, align 8
  %i.kx = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %i.f) #34
  br i1 %i.kx, label %AfterCoroEnd, label %bb.ap

.from.912:                                        ; preds = %bb.aj
  %i.ky = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split545914

bb.ap:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr1298, align 8, !tbaa !123, !noalias !489 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kz = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  invoke void %i.la(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body304.from.909, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aq, %bb.an, %.noexc.i.i, %bb.al
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !123
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ap
  %i.lb = load ptr, ptr %i.go, align 8, !tbaa !125, !noalias !490 ; 7 uses
  store ptr null, ptr %i.go, align 8, !tbaa !125, !noalias !490
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.13") align 8 %.reload.addr1299, ptr noundef nonnull align 8 dereferenceable(144) %i.lb)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.thread
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = atomicrmw add ptr %i.lc, i64 -1 acq_rel, align 8
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %bb.as, label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !63
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #34, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.at:                                            ; preds = %.thread
  %i.li = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lk = atomicrmw add ptr %i.lj, i64 -1 acq_rel, align 8
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %.body304.from.906, label %.from..body304

.body304.from.906:                                ; preds = %bb.at
  %i.lm = load ptr, ptr %i.lb, align 8, !tbaa !63
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #34, !inline_history !2
  br label %.from..body304

_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.as, %bb.ar
  %i.lp = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 5 uses
  %.not.i.i.i306 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i306, label %.thread548, label %bb.au

bb.au:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.lq = load ptr, ptr %i.gp, align 8, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.lp, %i.lq
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i ], [ %i.lq, %bb.au ]
  %i.lr = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.lr) #34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lp, %i.lr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %bb.au, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i
  %i.ls = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.lp, %bb.au ] ; 2 uses
  store ptr %i.lp, ptr %i.gp, align 8, !tbaa !131
  %i.lt = load ptr, ptr %i.gq, align 8, !tbaa !132
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #38
  br label %.thread548

.thread548:                                       ; preds = %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.lx = load <2 x ptr>, ptr %.reload.addr1299, align 8, !tbaa !132
  store <2 x ptr> %i.lx, ptr %.reload.addr1317, align 8, !tbaa !132
  %i.ly = load ptr, ptr %i.gr, align 8, !tbaa !132
  store ptr %i.ly, ptr %i.gq, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1299, i8 0, i64 24, i1 false)
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %bb.ax

.body304.from.909:                                ; preds = %bb.aq
  %i.lz = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..body304

.from..body304:                                   ; preds = %.body304.from.909, %.body304.from.906, %bb.at
  %eh.lpad-body305 = phi { ptr, i32 } [ %i.lz, %.body304.from.909 ], [ %i.li, %.body304.from.906 ], [ %i.li, %bb.at ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.from..split545914

.from..split545914:                               ; preds = %.from..body304, %.from.912, %.thread1366, %.split545, %.from.919, %.from.923
  %.pn217.pn = phi { ptr, i32 } [ %.pn217544, %.from.919 ], [ %i.jm, %.split545 ], [ %i.jj, %.thread1366 ], [ %i.je, %.from.923 ], [ %eh.lpad-body305, %.from..body304 ], [ %i.ky, %.from.912 ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn217.pn, 0   ; 3 uses
  %.2167 = extractvalue { ptr, i32 } %.pn217.pn, 1 ; 2 uses
  %i.ma = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE) #34
  %i.mb = icmp eq i32 %.2167, %i.ma
  br i1 %i.mb, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %.from..split545914
  %i.mc = call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN4tlog5debugIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr nonnull @.str.16, i64 28, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_end_catch()
          to label %bb.ax unwind label %.from.935

bb.ax:                                            ; preds = %.thread548, %bb.aw
  %i.md = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 2 uses
  %i.me = load ptr, ptr %i.gp, align 8, !tbaa !131 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %bb.ay, label %.from.1080

bb.ay:                                            ; preds = %bb.ax
  %.reload1210 = load ptr, ptr %.spill.addr, align 8, !tbaa !121 ; 2 uses
  %i.mg = load ptr, ptr %.reload1210, align 8, !tbaa !63
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %.reload1210, i64 %i.mi
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.mj, i32 noundef 0)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310 unwind label %.from.1063

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310: ; preds = %bb.ay
  %.val267.reload1288 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !121
  %storemerge215662.reload1266 = load i16, ptr %storemerge215662.spill.addr, align 8, !tbaa !121
  %.reload1250 = load i64, ptr %.spill.addr1246, align 8, !tbaa !121
  %.reload1208 = load ptr, ptr %.spill.addr, align 8, !tbaa !121
  %i.mk = zext i16 %storemerge215662.reload1266 to i64
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1288, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 20
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !103
  %i.mo = zext i32 %i.mn to i64
  %i.mp = add i64 %.reload1250, %i.mo
  %i.mq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1208, i64 noundef %i.mp, i32 noundef 0)
          to label %bb.az unwind label %.from.1063 ; 0 uses

bb.az:                                            ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310
  %.reload1206 = load ptr, ptr %.spill.addr, align 8, !tbaa !121 ; 3 uses
  %i.mr = load ptr, ptr %.reload1206, align 8, !tbaa !63
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %.reload1206, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !80
  %i.mx = and i32 %i.mw, 5
  %.not596 = icmp eq i32 %i.mx, 0
  br i1 %.not596, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.my = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298, ptr noundef nonnull @.str.14)
          to label %bb.bb unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.my, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.my, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable unwind label %.thread1372

bb.bd:                                            ; preds = %.from..split545914
  %i.mz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageLoadErrorE) #34
  %i.na = icmp eq i32 %.2167, %i.mz
  br i1 %i.na, label %bb.be, label %.from..loopexit611

bb.be:                                            ; preds = %bb.bd
  %i.nb = call ptr @__cxa_begin_catch(ptr %.6) #34
  %i.nc = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #34
  store ptr %i.nc, ptr %.reload.addr1298, align 8, !tbaa !90
  invoke void @_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr nonnull @.str.15, i64 23, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.929

bb.bg:                                            ; preds = %bb.be
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1126 unwind label %bb.fe

.from.929:                                        ; preds = %bb.bf
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1126

.loopexit611.from.1126:                           ; preds = %.from.929, %bb.bg
  %.pn220 = phi { ptr, i32 } [ %i.ne, %.from.929 ], [ %i.nd, %bb.bg ]
  %.7 = extractvalue { ptr, i32 } %.pn220, 0
  br label %.from..loopexit611

bb.bh:                                            ; preds = %bb.av
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1124 unwind label %bb.fe

.from.935:                                        ; preds = %bb.aw
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1124

.loopexit611.from.1124:                           ; preds = %.from.935, %bb.bh
  %.pn221 = phi { ptr, i32 } [ %i.ng, %.from.935 ], [ %i.nf, %bb.bh ]
  %.8 = extractvalue { ptr, i32 } %.pn221, 0
  br label %.from..loopexit611

.from.1063:                                       ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310, %bb.ay
  %i.nh = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5531054

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread: ; preds = %bb.ba
  %i.ni = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1059

bb.bi:                                            ; preds = %bb.bb
  %i.nj = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.nk = load i8, ptr %.reload.addr1298, align 8
  %i.nl = trunc i8 %i.nk to i1
  br i1 %i.nl, label %.split553, label %.from.1059

.thread1372:                                      ; preds = %bb.bc
  %i.nm = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.nn = load i8, ptr %.reload.addr1298, align 8
  %i.no = trunc i8 %i.nn to i1
  br i1 %i.no, label %.split553, label %.from..split5531054

.split553:                                        ; preds = %.thread1372, %bb.bi
  %i.np = phi { ptr, i32 } [ %i.nm, %.thread1372 ], [ %i.nj, %bb.bi ] ; 2 uses
  %.02011374 = phi i1 [ false, %.thread1372 ], [ true, %bb.bi ]
  %i.nq = load ptr, ptr %i.gn, align 8, !tbaa !81
  %i.nr = load i64, ptr %.reload.addr1298, align 8
  %i.ns = and i64 %i.nr, -2
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.ns) #38
  br i1 %.02011374, label %.from.1059, label %.from..split5531054

.from.1059:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread, %.split553, %bb.bi
  %.pn247552 = phi { ptr, i32 } [ %i.ni, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread ], [ %i.np, %.split553 ], [ %i.nj, %bb.bi ]
  call void @__cxa_free_exception(ptr %i.my) #34
  br label %.from..split5531054

bb.bj:                                            ; preds = %bb.az
  %.val267.reload1290 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !121
  %storemerge215662.reload1268 = load i16, ptr %storemerge215662.spill.addr, align 8, !tbaa !121
  %.reload1245 = load i32, ptr %.spill.addr1237, align 8, !tbaa !121
  %.reload1236 = load ptr, ptr %.spill.addr1232, align 8, !tbaa !121
  %.reload1231 = load i64, ptr %.spill.addr1227, align 8, !tbaa !121
  %.reload1226 = load ptr, ptr %.spill.addr1222, align 8, !tbaa !121
  %.reload1221 = load ptr, ptr %.spill.addr1217, align 8, !tbaa !121
  %i.nt = zext i16 %storemerge215662.reload1268 to i64
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1290, i64 %i.nt
  %i.nv = load <2 x i32>, ptr %i.nu, align 4, !tbaa !96
  store <2 x i32> %i.nv, ptr %.reload.addr1332, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tev14BmpImageLoaderE, i64 16), ptr %.reload.addr1320, align 8, !tbaa !63
  store i8 0, ptr %.reload.addr1321, align 8, !tbaa !81
  store i8 0, ptr %i.gt, align 8, !tbaa !135
  invoke void @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1320, ptr noundef nonnull align 8 dereferenceable(120) %.reload1206, ptr noundef nonnull align 8 dereferenceable(24) %.reload1221, ptr %.reload1226, i64 %.reload1231, ptr noundef nonnull align 4 dereferenceable(9) %.reload1236, i32 noundef %.reload1245, ptr noundef nonnull byval(%"class.std::__1::optional") align 8 %.reload.addr1321, ptr noundef nonnull %.reload.addr1332, i1 noundef zeroext true)
          to label %bb.bk unwind label %.from.954

bb.bk:                                            ; preds = %bb.bj
  %i.nw = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load atomic i32, ptr %i.nx acquire, align 4
  %i.nz = icmp slt i32 %i.ny, 2
  br i1 %i.nz, label %bb.bl, label %AfterCoroSave834

bb.bl:                                            ; preds = %bb.bk
  %i.oa = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = atomicrmw add ptr %i.ob, i32 -1 acq_rel, align 4
  %i.od = icmp slt i32 %i.oc, 1
  br i1 %i.od, label %bb.bm, label %.thread558.sink.split

bb.bm:                                            ; preds = %bb.bl
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i318 unwind label %.from..loopexit.split-lp.i.i315

.noexc.i.i318:                                    ; preds = %bb.bm
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !92 ; 7 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !114
  %i.oh = and i32 %i.og, 8
  %.not.i.i.i.i319 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i.i.i319, label %bb.bn, label %.thread558.sink.split

bb.bn:                                            ; preds = %.noexc.i.i318
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !115 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i320 = icmp eq ptr %i.oj, %i.ol
  br i1 %.not12.i.i.i.i.i320, label %.thread558.sink.split, label %.from..lr.ph.i.i.i.i.i321

.from..lr.ph.i.i.i.i.i321:                        ; preds = %bb.bn
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.oo = getelementptr inbounds nuw i8, ptr %i.of, i64 33
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  br label %.from..noexc2.i.i325

.from..noexc2.i.i325:                             ; preds = %.noexc2.i.i325, %.from..lr.ph.i.i.i.i.i321
  %.sroa.09.013.i.i.i.i.i322 = phi ptr [ %i.oj, %.from..lr.ph.i.i.i.i.i321 ], [ %i.pb, %.noexc2.i.i325 ] ; 2 uses
  %i.oq = load ptr, ptr %.sroa.09.013.i.i.i.i.i322, align 8, !tbaa !119 ; 2 uses
  %i.or = load i8, ptr %i.om, align 8             ; 2 uses
  %i.os = trunc i8 %i.or to i1                    ; 2 uses
  %i.ot = load ptr, ptr %i.on, align 8
  %i.ou = select i1 %i.os, ptr %i.ot, ptr %i.oo
  %i.ov = load i64, ptr %i.op, align 8
  %i.ow = lshr i8 %i.or, 1
  %i.ox = zext nneg i8 %i.ow to i64
  %i.oy = select i1 %i.os, i64 %i.ov, i64 %i.ox
  %i.oz = load ptr, ptr %i.oq, align 8, !tbaa !63
  %i.pa = load ptr, ptr %i.oz, align 8
  invoke void %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr %i.ou, i64 %i.oy, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i325 unwind label %.from..loopexit.i.i323, !inline_history !0

.noexc2.i.i325:                                   ; preds = %.from..noexc2.i.i325
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i322, i64 16 ; 2 uses
  %.not.i.i.i.i.i326 = icmp eq ptr %i.pb, %i.ol
  br i1 %.not.i.i.i.i.i326, label %.thread558.sink.split, label %.from..noexc2.i.i325

.from..loopexit.i.i323:                           ; preds = %.from..noexc2.i.i325
  %lpad.loopexit.i.i324 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bo

.from..loopexit.split-lp.i.i315:                  ; preds = %bb.bm
  %lpad.loopexit.split-lp.i.i316 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bo

bb.bo:                                            ; preds = %.from..loopexit.split-lp.i.i315, %.from..loopexit.i.i323
  %lpad.phi.i.i317 = phi { ptr, i32 } [ %lpad.loopexit.i.i324, %.from..loopexit.i.i323 ], [ %lpad.loopexit.split-lp.i.i316, %.from..loopexit.split-lp.i.i315 ]
  %i.pc = extractvalue { ptr, i32 } %lpad.phi.i.i317, 0
  call void @__clang_call_terminate(ptr %i.pc) #39
  unreachable

AfterCoroSave834:                                 ; preds = %bb.bk
  store i8 1, ptr %index.addr1339, align 8
  %i.pd = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %i.f) #34
  br i1 %i.pd, label %AfterCoroEnd, label %bb.bp

.from.954:                                        ; preds = %bb.bj
  %i.pe = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5531054

bb.bp:                                            ; preds = %AfterCoroSave834
  %.pr556 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !123, !noalias !491 ; 3 uses
  %.not.i328 = icmp eq ptr %.pr556, null
  br i1 %.not.i328, label %.thread558, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pf = getelementptr inbounds nuw i8, ptr %.pr556, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  invoke void %i.pg(ptr nonnull %.pr556)
          to label %.thread558.sink.split unwind label %.body331.from.951, !inline_history !1

.thread558.sink.split:                            ; preds = %.noexc2.i.i325, %bb.bq, %bb.bn, %.noexc.i.i318, %bb.bl
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !123
  br label %.thread558

.thread558:                                       ; preds = %.thread558.sink.split, %bb.bp
  %i.ph = load ptr, ptr %i.go, align 8, !tbaa !125, !noalias !492 ; 7 uses
  store ptr null, ptr %i.go, align 8, !tbaa !125, !noalias !492
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.13") align 8 %.reload.addr1299, ptr noundef nonnull align 8 dereferenceable(144) %i.ph)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %.thread558
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = atomicrmw add ptr %i.pi, i64 -1 acq_rel, align 8
  %i.pk = icmp eq i64 %i.pj, 0
  br i1 %i.pk, label %bb.bs, label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333

bb.bs:                                            ; preds = %bb.br
  %i.pl = load ptr, ptr %i.ph, align 8, !tbaa !63
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #34, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333

bb.bt:                                            ; preds = %.thread558
  %i.po = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pq = atomicrmw add ptr %i.pp, i64 -1 acq_rel, align 8
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %.body331.from.948, label %.from..body331

.body331.from.948:                                ; preds = %bb.bt
  %i.ps = load ptr, ptr %i.ph, align 8, !tbaa !63
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #34, !inline_history !2
  br label %.from..body331

_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333: ; preds = %bb.bs, %bb.br
  %i.pv = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 5 uses
  %.not.i.i.i334 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i334, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333
  %i.pw = load ptr, ptr %i.gp, align 8, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i.i.i335 = icmp eq ptr %i.pv, %i.pw
  br i1 %.not6.i.i.i.i.i.i335, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341, label %.lr.ph.i.i.i.i.i.i336

.lr.ph.i.i.i.i.i.i336:                            ; preds = %bb.bu, %.lr.ph.i.i.i.i.i.i336
  %.07.i.i.i.i.i.i337 = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i336 ], [ %i.pw, %bb.bu ]
  %i.px = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i337, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.px) #34
  %.not.i.i.i.i.i.i338 = icmp eq ptr %i.pv, %i.px
  br i1 %.not.i.i.i.i.i.i338, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339, label %.lr.ph.i.i.i.i.i.i336

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339: ; preds = %.lr.ph.i.i.i.i.i.i336
  %.pre.i.i.i340 = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341: ; preds = %bb.bu, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339
  %i.py = phi ptr [ %.pre.i.i.i340, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339 ], [ %i.pv, %bb.bu ] ; 2 uses
  store ptr %i.pv, ptr %i.gp, align 8, !tbaa !131
  %i.pz = load ptr, ptr %i.gq, align 8, !tbaa !132
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #38
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341, %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333
  %.val267.reload1282 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !121
  %storemerge215662.reload1260 = load i16, ptr %storemerge215662.spill.addr, align 8, !tbaa !121
  %i.qd = zext i16 %storemerge215662.reload1260 to i64
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1282, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = load <2 x ptr>, ptr %.reload.addr1299, align 8, !tbaa !132
  store <2 x ptr> %i.qg, ptr %.reload.addr1317, align 8, !tbaa !132
  %i.qh = load ptr, ptr %i.gr, align 8, !tbaa !132
  store ptr %i.qh, ptr %i.gq, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1299, i8 0, i64 24, i1 false)
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %i.qi = load i32, ptr %i.qe, align 4, !tbaa !101
  %i.qj = load i32, ptr %i.qf, align 4, !tbaa !102 ; 2 uses
  %i.qk = load i32, ptr %.reload.addr1332, align 8, !tbaa !96
  %.not.i.i352 = icmp ne i32 %i.qk, %i.qi         ; 2 uses
  %i.ql = load i32, ptr %i.gu, align 4            ; 2 uses
  %.not.1.i.i = icmp ne i32 %i.ql, %i.qj
  %.not.lcssa.i.not.i = select i1 %.not.i.i352, i1 true, i1 %.not.1.i.i
  br i1 %.not.lcssa.i.not.i, label %bb.bw, label %.from.1078

bb.bw:                                            ; preds = %bb.bv
  %i.qm = shl nsw i32 %i.qj, 1
  %.not.1.i.i354 = icmp ne i32 %i.ql, %i.qm
  %.not.lcssa.i.not.i355 = select i1 %.not.i.i352, i1 true, i1 %.not.1.i.i354
  br i1 %.not.lcssa.i.not.i355, label %.noexc, label %bb.ca

.noexc:                                           ; preds = %bb.bw
  %.val267.reload1292 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !121
  %storemerge215662.reload1270 = load i16, ptr %storemerge215662.spill.addr, align 8, !tbaa !121
  %i.qn = zext i16 %storemerge215662.reload1270 to i64
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1292, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qq = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  store ptr %.reload.addr1332, ptr %.reload.addr1300, align 16, !tbaa !81
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.hq, align 8, !tbaa !81
  %i.qr = load i32, ptr %i.qo, align 4, !tbaa !96, !noalias !493
  store i32 %i.qr, ptr %i.hp, align 16, !tbaa !81, !noalias !493
  %i.qs = load i32, ptr %i.qp, align 4, !tbaa !96, !noalias !493
  store i32 %i.qs, ptr %i.ho, align 16, !tbaa !81, !noalias !493
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %.reload.addr1298, ptr nonnull @.str.17, i64 60, i64 287, ptr nonnull %.reload.addr1300)
          to label %bb.bx unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread

bb.bx:                                            ; preds = %.noexc
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.qq, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.qq, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.qq, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable667 unwind label %.thread1378

.body331.from.951:                                ; preds = %bb.bq
  %i.qt = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..body331

.from..body331:                                   ; preds = %.body331.from.951, %.body331.from.948, %bb.bt
  %eh.lpad-body332 = phi { ptr, i32 } [ %i.qt, %.body331.from.951 ], [ %i.po, %.body331.from.948 ], [ %i.po, %bb.bt ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.from..split5531054

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread: ; preds = %.noexc
  %i.qu = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1046

bb.bz:                                            ; preds = %bb.bx
  %i.qv = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.qw = load i8, ptr %.reload.addr1298, align 8
  %i.qx = trunc i8 %i.qw to i1
  br i1 %i.qx, label %.split565, label %.from.1046

.thread1378:                                      ; preds = %bb.by
  %i.qy = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.qz = load i8, ptr %.reload.addr1298, align 8
  %i.ra = trunc i8 %i.qz to i1
  br i1 %i.ra, label %.split565, label %.from..split5531054

.split565:                                        ; preds = %.thread1378, %bb.bz
  %i.rb = phi { ptr, i32 } [ %i.qy, %.thread1378 ], [ %i.qv, %bb.bz ] ; 2 uses
  %.01971380 = phi i1 [ false, %.thread1378 ], [ true, %bb.bz ]
  %i.rc = load ptr, ptr %i.gn, align 8, !tbaa !81
  %i.rd = load i64, ptr %.reload.addr1298, align 8
  %i.re = and i64 %i.rd, -2
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.re) #38
  br i1 %.01971380, label %.from.1046, label %.from..split5531054

.from.1046:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread, %.split565, %bb.bz
  %.pn244564 = phi { ptr, i32 } [ %i.qu, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread ], [ %i.rb, %.split565 ], [ %i.qv, %bb.bz ]
  call void @__cxa_free_exception(ptr %i.qq) #34
  br label %.from..split5531054

bb.ca:                                            ; preds = %bb.bw
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc358 unwind label %.from.1050

.noexc358:                                        ; preds = %bb.ca
end_hunk_0
begin_hunk_1_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr1319, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev7ChannelC1ENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES9_NS1_10shared_ptrINS_11PixelBufferEEEmm(ptr noundef nonnull align 8 dereferenceable(72) %i.up, ptr nonnull align 1 dereferenceable(2) @.str.20, i64 1, i64 %.sroa.0.0.copyload.i, i32 noundef %i.um, i32 noundef %i.uo, ptr nofree noundef nonnull align 8 dereferenceable(16) %.reload.addr1319, i64 noundef 0, i64 noundef 1)
          to label %bb.cn unwind label %.body372.from..body.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.ut = load ptr, ptr %i.gw, align 8, !tbaa !168 ; 5 uses
  %.not.i.i.i.i.i.i371 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i.i.i.i371, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = atomicrmw add ptr %i.uu, i64 -1 acq_rel, align 8
  %i.uw = icmp eq i64 %i.uv, 0
  br i1 %i.uw, label %bb.cp, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.ux = load ptr, ptr %i.ut, align 8, !tbaa !63
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(24) %i.ut) #34, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ut) #34
  br label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

.body372.from..body.i.i:                          ; preds = %bb.cm
  %i.va = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1319) #34
  store ptr %i.up, ptr %i.tm, align 8, !tbaa !151
  br label %.body403

.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i: ; preds = %bb.cn, %bb.co, %bb.cp
  %i.vb = getelementptr inbounds nuw i8, ptr %i.up, i64 72 ; 2 uses
  store ptr %i.vb, ptr %i.tm, align 8, !tbaa !151
  br label %.from.990

bb.cq:                                            ; preds = %bb.cl
  %i.vc = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0506.0653, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1298, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1334, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1335)
          to label %.from.990 unwind label %.body372.from.

.from.990:                                        ; preds = %bb.cq, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i
  %.0.i = phi ptr [ %i.vb, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i ], [ %i.vc, %bb.cq ] ; 6 uses
  store ptr %.0.i, ptr %.0.i.spill.addr, align 8
  store ptr %.0.i, ptr %i.tm, align 8, !tbaa !151
  %i.vd = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i375 = load i64, ptr %i.vd, align 8, !tbaa !81 ; 2 uses
  %sext = shl i64 %.sroa.0.0.copyload.i375, 32
  %i.ve = ashr exact i64 %sext, 32
  %i.vf = ashr i64 %.sroa.0.0.copyload.i375, 32
  %i.vg = mul nsw i64 %i.ve, %i.vf                ; 2 uses
  %i.vh = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.vi = icmp eq i8 %i.vh, 0
  br i1 %i.vi, label %bb.cr, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !169

bb.cr:                                            ; preds = %.from.990
  %i.vj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i376 = icmp eq i32 %i.vj, 0
  br i1 %.not.i376, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.ct unwind label %.body377.from.

bb.ct:                                            ; preds = %bb.cs
  %i.vk = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body377.from.:                                   ; preds = %bb.cs
  %i.vl = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body403

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.ct, %bb.cr, %.from.990
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.vm = getelementptr inbounds i8, ptr %.0.i, i64 -32
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !154, !noalias !495 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 32
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !162, !noalias !495
  %.not.i379 = icmp eq i32 %i.vp, 7
  br i1 %.not.i379, label %bb.cw, label %bb.cu, !prof !170

bb.cu:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.vq = call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !495 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vq, ptr noundef nonnull @.str.105)
          to label %bb.cv unwind label %.body377.from.999, !noalias !495

bb.cv:                                            ; preds = %bb.cu
  invoke void @__cxa_throw(ptr nonnull %i.vq, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
          to label %.noexc381 unwind label %.body377.from..loopexit.split-lp

.noexc381:                                        ; preds = %bb.cv
  unreachable

.body377.from.999:                                ; preds = %bb.cu
  %i.vr = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.vq) #34, !noalias !495
  br label %.body403

bb.cw:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload1241 = load i32, ptr %.spill.addr1237, align 8, !tbaa !121
  %i.vs = load ptr, ptr %i.vn, align 8, !tbaa !171, !noalias !495
  %i.vt = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !172, !noalias !495
  %i.vv = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !173, !noalias !495
  %.sroa.0.0.copyload.i380 = load i64, ptr %i.vd, align 8, !tbaa !81, !noalias !495
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.vw
  store ptr %i.vx, ptr %.reload.addr1312, align 8, !tbaa !176, !alias.scope !495
  store i64 %i.vu, ptr %i.gy, align 8, !tbaa !177, !alias.scope !495
  store i64 %.sroa.0.0.copyload.i380, ptr %i.gx, align 8, !tbaa !81, !alias.scope !495
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.vg, i64 noundef %i.vg, ptr noundef nonnull byval(%class.anon.119) align 8 %.reload.addr1312, i32 noundef %.reload1241)
          to label %bb.cx unwind label %.body377.from..loopexit602

bb.cx:                                            ; preds = %bb.cw
  %i.vy = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load atomic i32, ptr %i.vz acquire, align 4
  %i.wb = icmp slt i32 %i.wa, 2
  br i1 %i.wb, label %bb.cy, label %AfterCoroSave838

bb.cy:                                            ; preds = %bb.cx
  %i.wc = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = atomicrmw add ptr %i.wd, i32 -1 acq_rel, align 4
  %i.wf = icmp slt i32 %i.we, 1
  br i1 %i.wf, label %bb.cz, label %.thread574.sink.split

bb.cz:                                            ; preds = %bb.cy
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i388 unwind label %.from..loopexit.split-lp.i.i385

.noexc.i.i388:                                    ; preds = %bb.cz
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !92 ; 7 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !114
  %i.wj = and i32 %i.wi, 8
  %.not.i.i.i.i389 = icmp eq i32 %i.wj, 0
  br i1 %.not.i.i.i.i389, label %bb.da, label %.thread574.sink.split

bb.da:                                            ; preds = %.noexc.i.i388
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !115 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i390 = icmp eq ptr %i.wl, %i.wn
  br i1 %.not12.i.i.i.i.i390, label %.thread574.sink.split, label %.from..lr.ph.i.i.i.i.i391

.from..lr.ph.i.i.i.i.i391:                        ; preds = %bb.da
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wh, i64 48
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wh, i64 33
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wh, i64 40
  br label %.from..noexc2.i.i395

.from..noexc2.i.i395:                             ; preds = %.noexc2.i.i395, %.from..lr.ph.i.i.i.i.i391
  %.sroa.09.013.i.i.i.i.i392 = phi ptr [ %i.wl, %.from..lr.ph.i.i.i.i.i391 ], [ %i.xd, %.noexc2.i.i395 ] ; 2 uses
  %i.ws = load ptr, ptr %.sroa.09.013.i.i.i.i.i392, align 8, !tbaa !119 ; 2 uses
  %i.wt = load i8, ptr %i.wo, align 8             ; 2 uses
  %i.wu = trunc i8 %i.wt to i1                    ; 2 uses
  %i.wv = load ptr, ptr %i.wp, align 8
  %i.ww = select i1 %i.wu, ptr %i.wv, ptr %i.wq
  %i.wx = load i64, ptr %i.wr, align 8
  %i.wy = lshr i8 %i.wt, 1
  %i.wz = zext nneg i8 %i.wy to i64
  %i.xa = select i1 %i.wu, i64 %i.wx, i64 %i.wz
  %i.xb = load ptr, ptr %i.ws, align 8, !tbaa !63
  %i.xc = load ptr, ptr %i.xb, align 8
  invoke void %i.xc(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr %i.ww, i64 %i.xa, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i395 unwind label %.from..loopexit.i.i393, !inline_history !0

.noexc2.i.i395:                                   ; preds = %.from..noexc2.i.i395
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i392, i64 16 ; 2 uses
  %.not.i.i.i.i.i396 = icmp eq ptr %i.xd, %i.wn
  br i1 %.not.i.i.i.i.i396, label %.thread574.sink.split, label %.from..noexc2.i.i395

.from..loopexit.i.i393:                           ; preds = %.from..noexc2.i.i395
  %lpad.loopexit.i.i394 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.db

.from..loopexit.split-lp.i.i385:                  ; preds = %bb.cz
  %lpad.loopexit.split-lp.i.i386 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.db

bb.db:                                            ; preds = %.from..loopexit.split-lp.i.i385, %.from..loopexit.i.i393
  %lpad.phi.i.i387 = phi { ptr, i32 } [ %lpad.loopexit.i.i394, %.from..loopexit.i.i393 ], [ %lpad.loopexit.split-lp.i.i386, %.from..loopexit.split-lp.i.i385 ]
  %i.xe = extractvalue { ptr, i32 } %lpad.phi.i.i387, 0
  call void @__clang_call_terminate(ptr %i.xe) #39
  unreachable

AfterCoroSave838:                                 ; preds = %bb.cx
  store i8 2, ptr %index.addr1339, align 8
  %i.xf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %i.f) #34
  br i1 %i.xf, label %AfterCoroEnd, label %bb.dc

.body403.from.:                                   ; preds = %.loopexit.thread, %.noexc369
  %i.xg = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body372.from.:                                   ; preds = %bb.cq
  %i.xh = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body377.from..loopexit602:                       ; preds = %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body377.from..loopexit.split-lp:                 ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

bb.dc:                                            ; preds = %AfterCoroSave838
  %.pr572 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !179 ; 3 uses
  %.not.i397 = icmp eq ptr %.pr572, null
  br i1 %.not.i397, label %.thread574, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.xi = getelementptr inbounds nuw i8, ptr %.pr572, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8
  invoke void %i.xj(ptr nonnull %.pr572)
          to label %.thread574.sink.split unwind label %.body377.from.1002, !inline_history !4

.thread574.sink.split:                            ; preds = %.noexc2.i.i395, %bb.dd, %bb.da, %.noexc.i.i388, %bb.cy
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !179
  br label %.thread574

.thread574:                                       ; preds = %.thread574.sink.split, %bb.dc
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread unwind label %.body377.from.1002

.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread: ; preds = %.thread574
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %.0.i.reload = load ptr, ptr %.0.i.spill.addr, align 8, !tbaa !121
  %i.xk = getelementptr inbounds i8, ptr %.0.i.reload, i64 -72
  br label %.from..loopexit

.body377.from.1002:                               ; preds = %bb.dd, %.thread574
  %i.xl = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.body403

.from..loopexit:                                  ; preds = %.loopexit, %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread
  %.0192 = phi ptr [ %i.xk, %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread ], [ %i.ue, %.loopexit ] ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0192, i64 40
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !154, !noalias !496 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !162, !noalias !496
  %.not.i400 = icmp eq i32 %i.xp, 7
  br i1 %.not.i400, label %bb.dg, label %bb.de, !prof !170

bb.de:                                            ; preds = %.from..loopexit
  %i.xq = call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !496 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, ptr noundef nonnull @.str.105)
          to label %bb.df unwind label %.body403.from.1027, !noalias !496

bb.df:                                            ; preds = %bb.de
  invoke void @__cxa_throw(ptr nonnull %i.xq, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
          to label %.noexc402 unwind label %.body403.from..loopexit.split-lp605

.noexc402:                                        ; preds = %bb.df
  unreachable

.body403.from.1027:                               ; preds = %bb.de
  %i.xr = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.xq) #34, !noalias !496
  br label %.body403

bb.dg:                                            ; preds = %.from..loopexit
  %i.xs = load ptr, ptr %i.xn, align 8, !tbaa !171, !noalias !496
  %i.xt = getelementptr inbounds nuw i8, ptr %.0192, i64 64
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !172, !noalias !496 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.0192, i64 56
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !173, !noalias !496
  %i.xx = getelementptr inbounds nuw i8, ptr %.0192, i64 24
  %.sroa.0.0.copyload.i401 = load i64, ptr %i.xx, align 8, !tbaa !81, !noalias !496 ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.xw ; 2 uses
  %i.xz = load ptr, ptr %i.gs, align 8, !tbaa !184 ; 6 uses
  %i.ya = load ptr, ptr %i.gr, align 8, !tbaa !185 ; 2 uses
  %i.yb = icmp ult ptr %i.xz, %i.ya
  br i1 %i.yb, label %.from.1010, label %bb.dh

.from.1010:                                       ; preds = %bb.dg
  store ptr %i.xy, ptr %i.xz, align 8, !tbaa !186
  %.sroa.6.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i64 %i.xu, ptr %.sroa.6.0..sroa_idx499, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  store i64 %.sroa.0.0.copyload.i401, ptr %.sroa.7.0..sroa_idx501, align 8, !tbaa !81
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  br label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.yd = load ptr, ptr %.reload.addr1299, align 8, !tbaa !187
  %i.ye = ptrtoint ptr %i.xz to i64
  %i.yf = ptrtoint ptr %i.yd to i64               ; 2 uses
  %i.yg = sub i64 %i.ye, %i.yf                    ; 2 uses
  %i.yh = sdiv exact i64 %i.yg, 24
  %i.yi = add nsw i64 %i.yh, 1                    ; 2 uses
  %i.yj = icmp ugt i64 %i.yi, 768614336404564650
  br i1 %i.yj, label %bb.di, label %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1299) #37
          to label %.noexc413 unwind label %.body403.from..loopexit.split-lp605

.noexc413:                                        ; preds = %bb.di
  unreachable

_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.dh
  %i.yk = ptrtoint ptr %i.ya to i64
  %i.yl = sub i64 %i.yk, %i.yf
  %i.ym = sdiv exact i64 %i.yl, 24                ; 2 uses
  %.not.i.i.i406 = icmp ult i64 %i.ym, 384307168202282325
  %i.yn = shl nuw nsw i64 %i.ym, 1
  %.sroa.speculated.i.i.i407 = call i64 @llvm.umax.i64(i64 %i.yn, i64 %i.yi)
  %.0.i.i.i408 = select i1 %.not.i.i.i406, i64 %.sroa.speculated.i.i.i407, i64 768614336404564650 ; 4 uses
  %i.yo = icmp ne i64 %.0.i.i.i408, 0
  call void @llvm.assume(i1 %i.yo)
  %i.yp = icmp ugt i64 %.0.i.i.i408, 768614336404564650
  br i1 %i.yp, label %bb.dj, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i

bb.dj:                                            ; preds = %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #37
          to label %.noexc414 unwind label %.body403.from..loopexit.split-lp605

.noexc414:                                        ; preds = %bb.dj
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  %i.yq = mul nuw i64 %.0.i.i.i408, 24
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yq) #36
          to label %.noexc415 unwind label %.body403.from..loopexit604 ; 2 uses

.noexc415:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yg ; 6 uses
  %i.yt = getelementptr inbounds nuw [24 x i8], ptr %i.yr, i64 %.0.i.i.i408
  store ptr %i.xy, ptr %i.ys, align 8, !tbaa !186
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i64 %i.xu, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store i64 %.sroa.0.0.copyload.i401, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !81
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 24 ; 3 uses
  %i.yv = load ptr, ptr %i.gs, align 8, !tbaa !184
  %.promoted.fr.i.i.i.i.i.i409 = freeze ptr %i.yv ; 2 uses
  %i.yw = load ptr, ptr %.reload.addr1299, align 8, !tbaa !187 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i409, %i.yw
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i410

.lr.ph.i.i.i.i.i.i.i.i.i410:                      ; preds = %.noexc415, %.lr.ph.i.i.i.i.i.i.i.i.i410
  %i.yx = phi ptr [ %i.yz, %.lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %i.ys, %.noexc415 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yy, %.lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %.promoted.fr.i.i.i.i.i.i409, %.noexc415 ]
  %i.yy = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  %i.yz = getelementptr inbounds i8, ptr %i.yx, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yz, ptr noundef nonnull align 8 dereferenceable(24) %i.yy, i64 24, i1 false), !tbaa.struct !188, !noalias !497
  %.not.i.i.i.i.i.i.i.i.i411 = icmp eq ptr %i.yy, %i.yw
  br i1 %.not.i.i.i.i.i.i.i.i.i411, label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410, label %.lr.ph.i.i.i.i.i.i.i.i.i410, !llvm.loop !468

_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i410
  br label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !468

_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc415, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.yz, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %i.ys, %.noexc415 ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %.reload.addr1299, align 8, !tbaa !185
  store ptr %i.yu, ptr %i.gs, align 8, !tbaa !185
  %i.za = load ptr, ptr %i.gr, align 8, !tbaa !185
  store ptr %i.yt, ptr %i.gr, align 8, !tbaa !185
  %.not.i5.i.i = icmp eq ptr %i.yw, null
  br i1 %.not.i5.i.i, label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.from.1014

.from.1014:                                       ; preds = %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yw to i64
  %i.zd = sub i64 %i.zb, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %i.yw, i64 noundef %i.zd) #38
  br label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %.from.1010, %.from.1014
  %.0.i412 = phi ptr [ %i.yc, %.from.1010 ], [ %i.yu, %.from.1014 ], [ %i.yu, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ]
  %.sroa.0506.0653.reload = load ptr, ptr %.sroa.0506.0653.spill.addr, align 8, !tbaa !121
  %.reload1297 = load ptr, ptr %.spill.addr1295, align 8, !tbaa !121
  store ptr %.0.i412, ptr %i.gs, align 8, !tbaa !184
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.0506.0653.reload, i64 280 ; 2 uses
  %.not597 = icmp eq ptr %i.ze, %.reload1297
  br i1 %.not597, label %._crit_edge656, label %.lr.ph655

.body403.from..loopexit604:                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit606 = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body403.from..loopexit.split-lp605:              ; preds = %bb.dj, %bb.di, %bb.df
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

._crit_edge656:                                   ; preds = %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.ck
  %i.zf = load i32, ptr %i.gu, align 4, !tbaa !96
  %i.zg = icmp sgt i32 %i.zf, 0
  %i.zh = zext i1 %i.zg to i8
  store i8 %i.zh, ptr %.reload.addr1334, align 8, !tbaa !189
  %i.zi = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %bb.dk, label %_ZN3tev10ThreadPool6globalEv.exit419, !prof !169

bb.dk:                                            ; preds = %._crit_edge656
  %i.zk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i416 = icmp eq i32 %i.zk, 0
  br i1 %.not.i416, label %_ZN3tev10ThreadPool6globalEv.exit419, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.dm unwind label %.body417.from.1020

bb.dm:                                            ; preds = %bb.dl
  %i.zl = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit419

.body417.from.1020:                               ; preds = %bb.dl
  %i.zm = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body403

_ZN3tev10ThreadPool6globalEv.exit419:             ; preds = %bb.dm, %bb.dk, %._crit_edge656
  %.val267.reload1294 = load ptr, ptr %.val267.spill.addr, align 8, !tbaa !121
  %storemerge215662.reload1272 = load i16, ptr %storemerge215662.spill.addr, align 8, !tbaa !121
  %.reload1243 = load i32, ptr %.spill.addr1237, align 8, !tbaa !121
  %i.zn = zext i16 %storemerge215662.reload1272 to i64
  %i.zo = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1294, i64 %i.zn ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !102 ; 2 uses
  %i.zr = load i32, ptr %i.zo, align 4, !tbaa !101
  %i.zs = sext i32 %i.zr to i64
  %i.zt = sext i32 %i.zq to i64
  %i.zu = mul nsw i64 %i.zs, %i.zt
  %i.zv = load ptr, ptr %i.gs, align 8, !tbaa !184
  %i.zw = load ptr, ptr %.reload.addr1299, align 8, !tbaa !187
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = sub i64 %i.zx, %i.zy
  %i.aaa = sdiv exact i64 %i.zz, 24
  %i.aab = mul i64 %i.zu, %i.aaa
  store ptr %.reload.addr1314, ptr %.reload.addr1301, align 8, !tbaa !190
  store ptr %.reload.addr1334, ptr %i.hc, align 8, !tbaa !192
  store ptr %i.zo, ptr %i.hb, align 8, !tbaa !95
  store ptr %.reload.addr1313, ptr %i.ha, align 8, !tbaa !194
  store ptr %.reload.addr1299, ptr %i.gz, align 8, !tbaa !196
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.zq, i64 noundef %i.aab, ptr noundef nonnull byval(%class.anon.120) align 8 %.reload.addr1301, i32 noundef %.reload1243)
          to label %bb.dn unwind label %.body417.from.

bb.dn:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit419
  %i.aac = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load atomic i32, ptr %i.aad acquire, align 4
  %i.aaf = icmp slt i32 %i.aae, 2
  br i1 %i.aaf, label %bb.do, label %AfterCoroSave842

bb.do:                                            ; preds = %bb.dn
  %i.aag = load ptr, ptr %i.gn, align 8, !tbaa !73
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aai = atomicrmw add ptr %i.aah, i32 -1 acq_rel, align 4
  %i.aaj = icmp slt i32 %i.aai, 1
  br i1 %i.aaj, label %bb.dp, label %.thread585.sink.split

bb.dp:                                            ; preds = %bb.do
  %i.aak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i424 unwind label %.from..loopexit.split-lp.i.i421

.noexc.i.i424:                                    ; preds = %bb.dp
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !92 ; 7 uses
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !114
  %i.aan = and i32 %i.aam, 8
  %.not.i.i.i.i425 = icmp eq i32 %i.aan, 0
  br i1 %.not.i.i.i.i425, label %bb.dq, label %.thread585.sink.split

bb.dq:                                            ; preds = %.noexc.i.i424
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !115 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i426 = icmp eq ptr %i.aap, %i.aar
  br i1 %.not12.i.i.i.i.i426, label %.thread585.sink.split, label %.from..lr.ph.i.i.i.i.i427

.from..lr.ph.i.i.i.i.i427:                        ; preds = %bb.dq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aal, i64 48
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aal, i64 33
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  br label %.from..noexc2.i.i431

.from..noexc2.i.i431:                             ; preds = %.noexc2.i.i431, %.from..lr.ph.i.i.i.i.i427
  %.sroa.09.013.i.i.i.i.i428 = phi ptr [ %i.aap, %.from..lr.ph.i.i.i.i.i427 ], [ %i.abh, %.noexc2.i.i431 ] ; 2 uses
  %i.aaw = load ptr, ptr %.sroa.09.013.i.i.i.i.i428, align 8, !tbaa !119 ; 2 uses
  %i.aax = load i8, ptr %i.aas, align 8           ; 2 uses
  %i.aay = trunc i8 %i.aax to i1                  ; 2 uses
  %i.aaz = load ptr, ptr %i.aat, align 8
  %i.aba = select i1 %i.aay, ptr %i.aaz, ptr %i.aau
  %i.abb = load i64, ptr %i.aav, align 8
  %i.abc = lshr i8 %i.aax, 1
  %i.abd = zext nneg i8 %i.abc to i64
  %i.abe = select i1 %i.aay, i64 %i.abb, i64 %i.abd
  %i.abf = load ptr, ptr %i.aaw, align 8, !tbaa !63
  %i.abg = load ptr, ptr %i.abf, align 8
  invoke void %i.abg(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr %i.aba, i64 %i.abe, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i431 unwind label %.from..loopexit.i.i429, !inline_history !0

.noexc2.i.i431:                                   ; preds = %.from..noexc2.i.i431
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i428, i64 16 ; 2 uses
  %.not.i.i.i.i.i432 = icmp eq ptr %i.abh, %i.aar
  br i1 %.not.i.i.i.i.i432, label %.thread585.sink.split, label %.from..noexc2.i.i431

.from..loopexit.i.i429:                           ; preds = %.from..noexc2.i.i431
  %lpad.loopexit.i.i430 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dr

.from..loopexit.split-lp.i.i421:                  ; preds = %bb.dp
  %lpad.loopexit.split-lp.i.i422 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dr

bb.dr:                                            ; preds = %.from..loopexit.split-lp.i.i421, %.from..loopexit.i.i429
  %lpad.phi.i.i423 = phi { ptr, i32 } [ %lpad.loopexit.i.i430, %.from..loopexit.i.i429 ], [ %lpad.loopexit.split-lp.i.i422, %.from..loopexit.split-lp.i.i421 ]
  %i.abi = extractvalue { ptr, i32 } %lpad.phi.i.i423, 0
  call void @__clang_call_terminate(ptr %i.abi) #39
  unreachable

AfterCoroSave842:                                 ; preds = %bb.dn
  store i8 3, ptr %index.addr1339, align 8
  %i.abj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %i.f) #34
  br i1 %i.abj, label %AfterCoroEnd, label %bb.ds

.body417.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit419
  %i.abk = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

bb.ds:                                            ; preds = %AfterCoroSave842
  %.pr583 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !179 ; 3 uses
  %.not.i434 = icmp eq ptr %.pr583, null
  br i1 %.not.i434, label %.thread585, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abl = getelementptr inbounds nuw i8, ptr %.pr583, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8
  invoke void %i.abm(ptr nonnull %.pr583)
          to label %.thread585.sink.split unwind label %.body417.from.1023, !inline_history !4

.thread585.sink.split:                            ; preds = %.noexc2.i.i431, %bb.dt, %bb.dq, %.noexc.i.i424, %bb.do
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !179
  br label %.thread585

.thread585:                                       ; preds = %.thread585.sink.split, %bb.ds
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %bb.du unwind label %.body417.from.1023

bb.du:                                            ; preds = %.thread585
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %i.abn = load ptr, ptr %.reload.addr1299, align 8, !tbaa !187 ; 4 uses
  %.not.i.i438.jt12 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i438.jt12, label %.from.1078, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store ptr %i.abn, ptr %i.gs, align 8, !tbaa !184
  %i.abo = load ptr, ptr %i.gr, align 8, !tbaa !185
  %i.abp = ptrtoint ptr %i.abo to i64
  %i.abq = ptrtoint ptr %i.abn to i64
  %i.abr = sub i64 %i.abp, %i.abq
  call void @_ZdlPvm(ptr noundef nonnull %i.abn, i64 noundef %i.abr) #38
  br label %.from.1078

.body417.from.1023:                               ; preds = %bb.dt, %.thread585
  %i.abs = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.body403

.body403:                                         ; preds = %.body417.from., %.body417.from.1020, %.body417.from.1023, %.body377.from..loopexit602, %.body377.from..loopexit.split-lp, %.body377.from., %.body377.from.999, %.body377.from.1002, %.body372.from..body.i.i, %.body372.from., %.body403.from..loopexit604, %.body403.from..loopexit.split-lp605, %.body403.from., %.body403.from.1027
  %.pn236.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body377.from..loopexit.split-lp ], [ %i.xr, %.body403.from.1027 ], [ %i.xg, %.body403.from. ], [ %lpad.loopexit.split-lp607, %.body403.from..loopexit.split-lp605 ], [ %i.va, %.body372.from..body.i.i ], [ %lpad.loopexit606, %.body403.from..loopexit604 ], [ %i.xh, %.body372.from. ], [ %i.xl, %.body377.from.1002 ], [ %i.vl, %.body377.from. ], [ %i.vr, %.body377.from.999 ], [ %lpad.loopexit, %.body377.from..loopexit602 ], [ %i.abs, %.body417.from.1023 ], [ %i.abk, %.body417.from. ], [ %i.zm, %.body417.from.1020 ] ; 2 uses
  %i.abt = load ptr, ptr %.reload.addr1299, align 8, !tbaa !187 ; 4 uses
  %.not.i.i439 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i439, label %.from..split5531054, label %bb.dw

bb.dw:                                            ; preds = %.body403
  store ptr %i.abt, ptr %i.gs, align 8, !tbaa !184
  %i.abu = load ptr, ptr %i.gr, align 8, !tbaa !185
  %i.abv = ptrtoint ptr %i.abu to i64
  %i.abw = ptrtoint ptr %i.abt to i64
  %i.abx = sub i64 %i.abv, %i.abw
  call void @_ZdlPvm(ptr noundef nonnull %i.abt, i64 noundef %i.abx) #38
  br label %.from..split5531054

.from.1078:                                       ; preds = %bb.bv, %bb.dv, %bb.du
  %.pre710 = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  %.pre711 = load ptr, ptr %i.gp, align 8, !tbaa !131
  br label %.from.1080

.from..split5531054:                              ; preds = %.body403, %bb.dw, %.thread1384, %.split569, %.from.1032, %.from.1037, %.from.1039, %.thread1378, %.split565, %.from..body331, %.from.954, %.from.1046, %.from.1050, %.thread1372, %.split553, %.from.1059, %.from.1063
  %.pn247.pn = phi { ptr, i32 } [ %.pn247552, %.from.1059 ], [ %i.np, %.split553 ], [ %i.nm, %.thread1372 ], [ %i.nh, %.from.1063 ], [ %.pn244564, %.from.1046 ], [ %i.rb, %.split565 ], [ %i.qy, %.thread1378 ], [ %i.su, %.from.1050 ], [ %i.pe, %.from.954 ], [ %eh.lpad-body332, %.from..body331 ], [ %.pn240568, %.from.1037 ], [ %i.td, %.split569 ], [ %i.ta, %.thread1384 ], [ %i.tk, %.from.1039 ], [ %i.sv, %.from.1032 ], [ %.pn236.pn, %bb.dw ], [ %.pn236.pn, %.body403 ] ; 2 uses
  %.24 = extractvalue { ptr, i32 } %.pn247.pn, 0  ; 3 uses
  %.18183 = extractvalue { ptr, i32 } %.pn247.pn, 1 ; 2 uses
  %i.aby = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE) #34
  %i.abz = icmp eq i32 %.18183, %i.aby
  br i1 %i.abz, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %.from..split5531054
  %i.aca = call ptr @__cxa_begin_catch(ptr %.24) #34 ; 0 uses
  invoke void @_ZN4tlog7warningIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr nonnull @.str.23, i64 29, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336)
          to label %bb.dy unwind label %bb.ed

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.1075

bb.dz:                                            ; preds = %.from..split5531054
  %i.acb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageLoadErrorE) #34
  %i.acc = icmp eq i32 %.18183, %i.acb
  br i1 %i.acc, label %bb.ea, label %.from..loopexit611

bb.ea:                                            ; preds = %bb.dz
  %i.acd = call ptr @__cxa_begin_catch(ptr %.24) #34
  %i.ace = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acd) #34
  store ptr %i.ace, ptr %.reload.addr1298, align 8, !tbaa !90
  invoke void @_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr nonnull @.str.22, i64 23, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.1069

bb.ec:                                            ; preds = %bb.ea
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1122 unwind label %bb.fe

.from.1069:                                       ; preds = %bb.eb
  %i.acg = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1122

.loopexit611.from.1122:                           ; preds = %.from.1069, %bb.ec
  %.pn250 = phi { ptr, i32 } [ %i.acg, %.from.1069 ], [ %i.acf, %bb.ec ]
  %.25 = extractvalue { ptr, i32 } %.pn250, 0
  br label %.from..loopexit611

bb.ed:                                            ; preds = %bb.dx
  %i.ach = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1120 unwind label %bb.fe

.from.1075:                                       ; preds = %bb.dy
  %i.aci = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1120

.loopexit611.from.1120:                           ; preds = %.from.1075, %bb.ed
  %.pn251 = phi { ptr, i32 } [ %i.aci, %.from.1075 ], [ %i.ach, %bb.ed ]
  %.26 = extractvalue { ptr, i32 } %.pn251, 0
  br label %.from..loopexit611

.from.1080:                                       ; preds = %bb.ax, %.from.1078
  %i.acj = phi ptr [ %.pre711, %.from.1078 ], [ %i.me, %bb.ax ] ; 3 uses
  %i.ack = phi ptr [ %.pre710, %.from.1078 ], [ %i.md, %bb.ax ] ; 3 uses
  %.not600657 = icmp eq ptr %i.ack, %i.acj
  br i1 %.not600657, label %._crit_edge661, label %.lr.ph660

.lr.ph660:                                        ; preds = %.from.1080, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit449
  %.sroa.0494.0658 = phi ptr [ %i.aeh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit449 ], [ %i.ack, %.from.1080 ] ; 5 uses
  %i.acl = load i16, ptr %.reload.addr1336, align 4, !tbaa !97, !noalias !498
  %i.acm = zext i16 %i.acl to i32
  store i32 %i.acm, ptr %.reload.addr1320, align 16, !tbaa !81, !noalias !498
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  store i64 0, ptr %i.go, align 16, !noalias !499
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.hh, align 16, !tbaa !198, !noalias !499
  store ptr %i.hg, ptr %.reload.addr1298, align 8, !tbaa !199, !noalias !499
  store i64 500, ptr %i.gn, align 8, !tbaa !200, !noalias !499
  store ptr @.str.24, ptr %.reload.addr1299, align 16, !tbaa !90, !noalias !499
  store i64 9, ptr %i.gs, align 8, !tbaa !136, !noalias !499
  store i32 0, ptr %i.gr, align 16, !tbaa !203, !noalias !499
  store ptr %.reload.addr1298, ptr %i.hf, align 8, !tbaa !205, !noalias !499
  store i64 2, ptr %i.he, align 16, !tbaa !207, !noalias !499
  store ptr %.reload.addr1320, ptr %.sroa.2.0..sroa_idx.i17.i1188, align 8, !tbaa !81, !noalias !499
  store ptr null, ptr %i.hd, align 16, !tbaa !171, !noalias !499
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.24, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr1299)
          to label %bb.ee unwind label %bb.eh

bb.ee:                                            ; preds = %.lr.ph660
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.acn = load i64, ptr %i.go, align 16, !tbaa !208, !noalias !501 ; 8 uses
  %i.aco = icmp ult i64 %i.acn, -9
  call void @llvm.assume(i1 %i.aco)
  %i.acp = load ptr, ptr %.reload.addr1298, align 8, !tbaa !199, !noalias !501
  %i.acq = icmp ult i64 %i.acn, 23
  br i1 %i.acq, label %bb.ef, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ee
  %i.acr = or i64 %i.acn, 7                       ; 2 uses
  %i.acs = icmp eq i64 %i.acr, 23
  %i.act = add nuw i64 %i.acr, 1
  %i.acu = select i1 %i.acs, i64 25, i64 %i.act   ; 2 uses
  %i.acv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acu) #36
          to label %.from..noexc.i unwind label %bb.eh, !noalias !499 ; 2 uses

.from..noexc.i:                                   ; preds = %.thread.i.i.i.i
  store ptr %i.acv, ptr %i.hj, align 16, !tbaa !81, !alias.scope !501
  %i.acw = or i64 %i.acu, 1
  store i64 %i.acw, ptr %.reload.addr1314, align 16, !alias.scope !501
  store i64 %i.acn, ptr %i.hi, align 8, !tbaa !81, !alias.scope !501
  br label %.from.1089

bb.ef:                                            ; preds = %bb.ee
  %i.acx = trunc nuw nsw i64 %i.acn to i8
  %i.acy = shl nuw nsw i8 %i.acx, 1
  store i8 %i.acy, ptr %.reload.addr1314, align 16, !alias.scope !501
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.acn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.from.1091, label %.from.1089

.from.1089:                                       ; preds = %bb.ef, %.from..noexc.i
  %.017.i.i.i.i = phi ptr [ %i.acv, %.from..noexc.i ], [ %i.hk, %bb.ef ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.acp, i64 %i.acn, i1 false)
  br label %.from.1091

.from.1091:                                       ; preds = %bb.ef, %.from.1089
end_hunk_1
begin_hunk_2_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.

.loopexit611.from.1118:                           ; preds = %bb.ep
  %i.agd = landingpad { ptr, i32 }
          catch ptr null
  %i.age = extractvalue { ptr, i32 } %i.agd, 0
  br label %.from..loopexit611

.from..loopexit611:                               ; preds = %bb.bd, %bb.dz, %.loopexit611.from.1126, %.loopexit611.from.1124, %.loopexit611.from.1122, %.loopexit611.from.1120, %.loopexit611.from..body442, %.loopexit611.from.1118
  %.28 = phi ptr [ %.26, %.loopexit611.from.1120 ], [ %.25, %.loopexit611.from.1122 ], [ %.7, %.loopexit611.from.1126 ], [ %.27, %.loopexit611.from..body442 ], [ %i.age, %.loopexit611.from.1118 ], [ %.8, %.loopexit611.from.1124 ], [ %.24, %bb.dz ], [ %.6, %bb.bd ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1317) #34
  br label %.from.1149

.from.1149:                                       ; preds = %.from.1128, %.from..loopexit611
  %.29 = phi ptr [ %.28, %.from..loopexit611 ], [ %i.jd, %.from.1128 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1318) #34
  br label %.from..split1135

._crit_edge665:                                   ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit462.jt12, %._crit_edge651.thread, %._crit_edge651
  %i.agf = load ptr, ptr %.reload.addr1338, align 8, !tbaa !67 ; 2 uses
  %i.agg = icmp eq ptr %i.agf, null
  br i1 %i.agg, label %bb.er, label %bb.es

bb.er:                                            ; preds = %._crit_edge665
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #37
          to label %.noexc.i463 unwind label %bb.et

.noexc.i463:                                      ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %._crit_edge665
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.agf, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1318)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.agh = landingpad { ptr, i32 }
          catch ptr null
  %i.agi = extractvalue { ptr, i32 } %i.agh, 0
  call void @__clang_call_terminate(ptr %i.agi) #39
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.es
  %i.agj = load ptr, ptr %.reload.addr1318, align 8, !tbaa !130 ; 5 uses
  %.not.i.i464 = icmp eq ptr %i.agj, null
  br i1 %.not.i.i464, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, label %bb.eu

bb.eu:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.agk = getelementptr inbounds nuw i8, ptr %i.f, i64 888 ; 2 uses
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i465 = icmp eq ptr %i.agj, %i.agl
  br i1 %.not6.i.i.i.i465, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %bb.eu, %.lr.ph.i.i.i.i466
  %.07.i.i.i.i467 = phi ptr [ %i.agm, %.lr.ph.i.i.i.i466 ], [ %i.agl, %bb.eu ]
  %i.agm = getelementptr inbounds i8, ptr %.07.i.i.i.i467, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.agm) #34
  %.not.i.i.i.i468 = icmp eq ptr %i.agj, %i.agm
  br i1 %.not.i.i.i.i468, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469, label %.lr.ph.i.i.i.i466

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469: ; preds = %.lr.ph.i.i.i.i466
  %.pre1.i.i470 = load ptr, ptr %.reload.addr1318, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471: ; preds = %bb.eu, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469
  %i.agn = phi ptr [ %.pre1.i.i470, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469 ], [ %i.agj, %bb.eu ] ; 2 uses
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !131
  %i.ago = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !132
  %i.agq = ptrtoint ptr %i.agp to i64
  %i.agr = ptrtoint ptr %i.agn to i64
  %i.ags = sub i64 %i.agq, %i.agr
  call void @_ZdlPvm(ptr noundef %i.agn, i64 noundef %i.ags) #38
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472: ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471
  %i.agt = load ptr, ptr %i.s, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i473 = icmp eq ptr %i.agt, null
  br i1 %.not.i.i.i473, label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472
  store ptr %i.agt, ptr %i.bp, align 8, !tbaa !94
  %i.agu = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  %.val1.i.i.i = load ptr, ptr %i.agu, align 8, !tbaa !95
  %i.agv = ptrtoint ptr %.val1.i.i.i to i64
  %i.agw = ptrtoint ptr %i.agt to i64
  %i.agx = sub i64 %i.agv, %i.agw
  call void @_ZdlPvm(ptr noundef nonnull %i.agt, i64 noundef %i.agx) #38
  br label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit

.from..split1135:                                 ; preds = %.split536, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1154, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit2781152, %.from.1138, %.from.1141, %.from.1144, %.from.1146, %.from.1149, %.from.1151, %.from.1157, %.from.1159
  %.31 = phi ptr [ %.0530, %.from.1157 ], [ %.01350, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1154 ], [ %i.af, %.from.1159 ], [ %.1535, %.from.1151 ], [ %.11358, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit2781152 ], [ %.3, %.from.1144 ], [ %i.ig, %.from.1146 ], [ %.29, %.from.1149 ], [ %i.dk, %.from.1141 ], [ %i.dj, %.from.1138 ], [ %.0531, %.split ], [ %.1537, %.split536 ] ; 2 uses
  %i.agy = load ptr, ptr %i.s, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i474 = icmp eq ptr %i.agy, null
  br i1 %.not.i.i.i474, label %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476, label %bb.ew

bb.ew:                                            ; preds = %.from..split1135
  %i.agz = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  store ptr %i.agy, ptr %i.agz, align 8, !tbaa !94
  %i.aha = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  %.val1.i.i.i475 = load ptr, ptr %i.aha, align 8, !tbaa !95
  %i.ahb = ptrtoint ptr %.val1.i.i.i475 to i64
  %i.ahc = ptrtoint ptr %i.agy to i64
  %i.ahd = sub i64 %i.ahb, %i.ahc
  call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef %i.ahd) #38
  br label %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476

.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476: ; preds = %.from..split1135, %bb.ew, %.from.1162
  %.32 = phi ptr [ %i.ad, %.from.1162 ], [ %.31, %bb.ew ], [ %.31, %.from..split1135 ]
  %i.ahe = call ptr @__cxa_begin_catch(ptr %.32) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1338)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476
  invoke void @__cxa_end_catch()
          to label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit unwind label %.from.1173

_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit: ; preds = %bb.ev, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, %bb.ex
  %i.ahf = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = atomicrmw add ptr %i.ahg, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ahi = icmp slt i32 %i.ahh, 1
  br i1 %i.ahi, label %bb.ey, label %_ZN3tev5Latch9countDownEv.exit.i477

bb.ey:                                            ; preds = %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit
  %i.ahj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i482 unwind label %.from..loopexit.split-lp.i.i479

.noexc.i.i482:                                    ; preds = %bb.ey
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !92 ; 7 uses
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !114
  %i.ahm = and i32 %i.ahl, 8
  %.not.i.i.i.i483 = icmp eq i32 %i.ahm, 0
  br i1 %.not.i.i.i.i483, label %bb.ez, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.ez:                                            ; preds = %.noexc.i.i482
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !115 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i484 = icmp eq ptr %i.aho, %i.ahq
  br i1 %.not12.i.i.i.i.i484, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i485

.from..lr.ph.i.i.i.i.i485:                        ; preds = %bb.ez
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahk, i64 48
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahk, i64 33
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahk, i64 40
  br label %.from..noexc2.i.i489

.from..noexc2.i.i489:                             ; preds = %.noexc2.i.i489, %.from..lr.ph.i.i.i.i.i485
  %.sroa.09.013.i.i.i.i.i486 = phi ptr [ %i.aho, %.from..lr.ph.i.i.i.i.i485 ], [ %i.aig, %.noexc2.i.i489 ] ; 2 uses
  %i.ahv = load ptr, ptr %.sroa.09.013.i.i.i.i.i486, align 8, !tbaa !119 ; 2 uses
  %i.ahw = load i8, ptr %i.ahr, align 8           ; 2 uses
  %i.ahx = trunc i8 %i.ahw to i1                  ; 2 uses
  %i.ahy = load ptr, ptr %i.ahs, align 8
  %i.ahz = select i1 %i.ahx, ptr %i.ahy, ptr %i.aht
  %i.aia = load i64, ptr %i.ahu, align 8
  %i.aib = lshr i8 %i.ahw, 1
  %i.aic = zext nneg i8 %i.aib to i64
  %i.aid = select i1 %i.ahx, i64 %i.aia, i64 %i.aic
  %i.aie = load ptr, ptr %i.ahv, align 8, !tbaa !63
  %i.aif = load ptr, ptr %i.aie, align 8
  invoke void %i.aif(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr %i.ahz, i64 %i.aid, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i489 unwind label %.from..loopexit.i.i487, !inline_history !0

.noexc2.i.i489:                                   ; preds = %.from..noexc2.i.i489
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i486, i64 16 ; 2 uses
  %.not.i.i.i.i.i490 = icmp eq ptr %i.aig, %i.ahq
  br i1 %.not.i.i.i.i.i490, label %_ZN3tev5Latch9countDownEv.exit.i477, label %.from..noexc2.i.i489

.from..loopexit.i.i487:                           ; preds = %.from..noexc2.i.i489
  %lpad.loopexit.i.i488 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fa

.from..loopexit.split-lp.i.i479:                  ; preds = %bb.ey
  %lpad.loopexit.split-lp.i.i480 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fa

bb.fa:                                            ; preds = %.from..loopexit.split-lp.i.i479, %.from..loopexit.i.i487
  %lpad.phi.i.i481 = phi { ptr, i32 } [ %lpad.loopexit.i.i488, %.from..loopexit.i.i487 ], [ %lpad.loopexit.split-lp.i.i480, %.from..loopexit.split-lp.i.i479 ]
  %i.aih = extractvalue { ptr, i32 } %lpad.phi.i.i481, 0
  call void @__clang_call_terminate(ptr %i.aih) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i477:              ; preds = %.noexc2.i.i489, %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit
  %i.aii = icmp slt i32 %i.ahh, 2
  br i1 %i.aii, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i482, %bb.ez, %_ZN3tev5Latch9countDownEv.exit.i477
  %i.aij = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !171 ; 2 uses
  %i.ail = inttoptr i64 %i.aik to ptr             ; 3 uses
  store ptr %i.ail, ptr %.reload.addr1298, align 8
  %.not.i491 = icmp eq i64 %i.aik, 0
  br i1 %.not.i491, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend848

AfterCoroSuspend848:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.f, align 8
  %index.addr1343 = getelementptr inbounds nuw i8, ptr %i.f, i64 1048
  store i8 4, ptr %index.addr1343, align 8
  %i.aim = load ptr, ptr %i.ail, align 8
  call void %i.aim(ptr nonnull %i.ail)
  br label %AfterCoroEnd

bb.fb:                                            ; preds = %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476
  %i.ain = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.1180 unwind label %bb.fe

.from.1173:                                       ; preds = %bb.ex
  %i.aio = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.1180

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i477
  %i.aip = load ptr, ptr %i.p, align 8, !tbaa !74 ; 5 uses
  %.not.i.i492 = icmp eq ptr %i.aip, null
  br i1 %.not.i.i492, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = atomicrmw add ptr %i.aiq, i64 -1 acq_rel, align 8
  %i.ais = icmp eq i64 %i.air, 0
  br i1 %i.ais, label %bb.fd, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.fd:                                            ; preds = %bb.fc
  %i.ait = load ptr, ptr %i.aip, align 8, !tbaa !63
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  %i.aiv = load ptr, ptr %i.aiu, align 8
  call void %i.aiv(ptr noundef nonnull align 8 dereferenceable(24) %i.aip) #34, !inline_history !5
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aip) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.fc, %bb.fd
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr1338) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 1056) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave842, %AfterCoroSave834, %AfterCoroSave, %AfterCoroSave838, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend848
  ret void

.body.from.1180:                                  ; preds = %bb.fb, %.from.1173
  %.pn255 = phi { ptr, i32 } [ %i.aio, %.from.1173 ], [ %i.ain, %bb.fb ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1338) #34
  br label %.body

.body:                                            ; preds = %.body.from.1180, %.body.from.1177, %.body.from.
  %.merged258 = phi { ptr, i32 } [ %.pn255, %.body.from.1180 ], [ %i.k, %.body.from. ], [ %i.j, %.body.from.1177 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 1056) #34
  resume { ptr, i32 } %.merged258

bb.fe:                                            ; preds = %bb.fb, %bb.ed, %bb.ec, %bb.bh, %bb.bg
  %i.aiw = landingpad { ptr, i32 }
          catch ptr null
  %i.aix = extractvalue { ptr, i32 } %i.aiw, 0
  call void @__clang_call_terminate(ptr %i.aix) #39
  unreachable

.loopexit609.unreachable:                         ; preds = %bb.bc
  unreachable

.loopexit609.unreachable666:                      ; preds = %bb.ch
  unreachable

.loopexit609.unreachable667:                      ; preds = %bb.by
  unreachable

.loopexit609.unreachable668:                      ; preds = %bb.ah
  unreachable

bb.ff:                                            ; preds = %bb.z, %bb.l, %bb.f
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !67, !noalias !504 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #37
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !219, !noalias !504 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #37
          to label %bb.e unwind label %bb.f, !noalias !504

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #34, !noalias !504
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !504 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !219, !noalias !504
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #34, !noalias !504
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !171
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !171
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
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !81
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@llvm.eh.typeid.for.p0
declare i32 @llvm.eh.typeid.for.p0(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZN4tlog6Logger3logIJRtPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i32 noundef 8, ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #39
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog5debugIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZN4tlog6Logger3logIJRtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i32 noundef 4, ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2)
  ret void
}

declare void @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 4 dereferenceable(9), i32 noundef, ptr noundef byval(%"class.std::__1::optional") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.119) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !188
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !516
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !516
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !516
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !516
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !517
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !517
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !518
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !518

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !518
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !222, !noalias !518
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !518
  store ptr null, ptr %7, align 8, !tbaa !222, !noalias !518
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !518 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !518
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !518
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !518 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !518
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !518
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr76, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #39
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !114
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !119 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !63
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !171 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #34
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.102, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #39
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  store ptr %1, ptr %i.c, align 8, !tbaa !171
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !114
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.af) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !179
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_3
begin_hunk_4_@_ZN3tev4TaskIvED2Ev:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74  ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #34, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #34
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #34
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.120) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #35 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !527
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !530
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !530
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !530
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !530
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !531
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !532
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !532

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !532
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !222, !noalias !532
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !532
  store ptr null, ptr %7, align 8, !tbaa !222, !noalias !532
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !532 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !532
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !532
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !532 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !532
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !532
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #34
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #39
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !114
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !119 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !63
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !171 ; 2 uses
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #34
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #34
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog7warningIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZN4tlog6Logger3logIJRtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i32 noundef 8, ptr %0, i64 %1, ptr noundef nonnull align 2 dereferenceable(2) %2)
  ret void
}

declare void @_ZN3tev7Channel14joinIfNonemptyENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 6 uses
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #37
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #34
  invoke void @_ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(116) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #34
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.d ]
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11ImageLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev14IcoImageLoaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3tev14IcoImageLoader4nameEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit:
  store i8 6, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.b, align 4, !tbaa !81
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__117__assoc_sub_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__117__assoc_sub_stateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__117__assoc_sub_stateE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(144) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_4
begin_hunk_5_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
          to label %bb.ac unwind label %.thread185

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.138.sink.split

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %8, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from.138.sink.split

.thread185:                                       ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135

.split:                                           ; preds = %.thread185, %bb.i
  %i.ba = phi { ptr, i32 } [ %i.ax, %.thread185 ], [ %i.au, %bb.i ] ; 2 uses
  %.0187 = phi i1 [ false, %.thread185 ], [ true, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0187, label %.from.138, label %.from.157

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135: ; preds = %.thread185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.from.157

.from.138.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.from.138

.from.138:                                        ; preds = %.from.138.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.ba, %.split ], [ %.pn4284.ph, %.from.138.sink.split ]
  call void @__cxa_free_exception(ptr %i.ap) #34
  br label %.from.157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.bf = phi i64 [ %i.ao, %bb.f ], [ %i.ai, %.lr.ph.preheader ]
  %i.bg = phi i64 [ %i.am, %bb.f ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bf, %2
  %i.bj = add i64 %i.bh, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i64 %i.bj, ptr %10, align 8, !tbaa !374
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !375
  store ptr %.reload.addr180, ptr %i.ad, align 8, !tbaa !171
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.133

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !380 ; 6 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !381
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bo = load i64, ptr %9, align 8, !tbaa !171
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !171
  %i.bp = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !171
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !171
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !382
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !382
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !171
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr179, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.130

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bs, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bt, %bb.k ]
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !380
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1260

.from.133:                                        ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.142

.from.130:                                        ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #34
  br label %.from.142

.from.142:                                        ; preds = %.from.133, %.from.130
  %.pn43 = phi { ptr, i32 } [ %i.bv, %.from.130 ], [ %i.bu, %.from.133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.from.157

.from.157:                                        ; preds = %.from.142, %.from.138, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.142 ], [ %.pn4284, %.from.138 ], [ %i.ax, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135 ], [ %i.ba, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #34
  br label %.from.159

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !92 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !114
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.ck, %.from..lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc2.i.i ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !63
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.cm
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
  %i.dd = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dd) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr183, align 8
  %i.de = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.de, label %AfterCoroEnd, label %bb.q

.from.151:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.159

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.148, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.148

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %i.dj = load ptr, ptr %.reload.addr179, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.s ]
  %i.dm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dm) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dn = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !380
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !381
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #39
  unreachable

.from.148:                                        ; preds = %bb.r, %.thread
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %.from.159

.from.159:                                        ; preds = %.from.148, %.from.151, %.from.154, %.from.157
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %.from.154 ], [ %.pn43.pn, %.from.157 ], [ %i.dv, %.from.148 ], [ %i.df, %.from.151 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #34
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.159
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !92 ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !114
  %i.ee = and i32 %i.ed, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !115 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i64 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not12.i.i.i.i.i64, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i65

.from..lr.ph.i.i.i.i.i65:                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  br label %.from..noexc2.i.i69

.from..noexc2.i.i69:                              ; preds = %.noexc2.i.i69, %.from..lr.ph.i.i.i.i.i65
  %.sroa.09.013.i.i.i.i.i66 = phi ptr [ %i.eg, %.from..lr.ph.i.i.i.i.i65 ], [ %i.ey, %.noexc2.i.i69 ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !119 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1                    ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %i.el
  %i.es = load i64, ptr %i.em, align 8
  %i.et = lshr i8 %i.eo, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.ep, i64 %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !63
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr %i.er, i64 %i.ev, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !0

.noexc2.i.i69:                                    ; preds = %.from..noexc2.i.i69
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i66, i64 16 ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq ptr %i.ey, %i.ei
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
  %i.ez = extractvalue { ptr, i32 } %lpad.phi.i.i61, 0
  call void @__clang_call_terminate(ptr %i.ez) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fa = icmp slt i32 %i.dz, 2
  br i1 %i.fa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !171 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  store ptr %i.fd, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.fc, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend110

AfterCoroSuspend110:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr184 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 1, ptr %index.addr184, align 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr nonnull %i.fd)
  br label %AfterCoroEnd

bb.y:                                             ; preds = %.from.159
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.175 unwind label %bb.ab

.from.168:                                        ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.175

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 acq_rel, align 8
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend110, %AfterCoroSave
  ret void

.body.from.175:                                   ; preds = %bb.y, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.fg, %.from.168 ], [ %i.ff, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr182) #34
  br label %.body

.body:                                            ; preds = %.body.from.175, %.body.from.172, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.175 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.172 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #34
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #39
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #34
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future.98") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1279
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1279
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1279
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1279
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1280
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1281
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1281

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1281
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !222, !noalias !1281
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1281
  store ptr null, ptr %4, align 8, !tbaa !222, !noalias !1281
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1281 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1281
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1281
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1281 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1281
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34, !noalias !1281
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1281
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr nonnull align 1 poison, ptr noundef nonnull byval(%class.anon.342) align 8 %2, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #39
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !114
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !119 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !63
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !171 ; 2 uses
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #34
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 20 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1292
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1292
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1292
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1292
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1293
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !1294
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1294

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1294
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !222, !noalias !1294
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1294
  store ptr null, ptr %2, align 8, !tbaa !222, !noalias !1294
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1294 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1294
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1294
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1294 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1294
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34, !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !1294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !383    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !380  ; 2 uses
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !116 ; 2 uses
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
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.bc) #39
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !385
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #34
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !385 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !385 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !179
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
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #34 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #34
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #34
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !385
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !385
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #34
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !390
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !391
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
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #34
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #37
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #34
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !390
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #37
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #34
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
  call void @__clang_call_terminate(ptr %i.cn) #39
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !390 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #34
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !391
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !390
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !392
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #38
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #34
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !92 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !114
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !115 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !116 ; 2 uses
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
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !119 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !63
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.ea) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !171 ; 2 uses
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
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !63
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #34
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #39
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !383    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !380  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #34
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !380
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #10

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !380
  %i.d = load ptr, ptr %0, align 8, !tbaa !383
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !381
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
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #37
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !171
  store i64 %i.v, ptr %i.s, align 8, !tbaa !171
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !171
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !171
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !382
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !382
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !171
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !380 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !383   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !171
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !171
  store ptr null, ptr %i.ag, align 8, !tbaa !171
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !171
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !171
  store ptr null, ptr %i.aj, align 8, !tbaa !1296
  store ptr null, ptr %i.ak, align 8, !tbaa !1297
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !382
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !382
  store ptr null, ptr %i.an, align 8, !tbaa !382
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1295

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !381
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !381
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !381
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !381
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !381
  store ptr %i.t, ptr %i.a, align 8, !tbaa !381
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #34
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #38
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.29) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.96") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly byval(%class.anon.342) align 8 captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.2", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future.98", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #35 ; 12 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.spill.addr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1308
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1308
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1308
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1308
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1309
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !1310
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !1310

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1310
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !222, !noalias !1310
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1310
  store ptr null, ptr %7, align 8, !tbaa !222, !noalias !1310
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1310 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1310
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1310
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1310 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1310
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34, !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !1310
  store ptr %3, ptr %.reload.addr76, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %index.addr80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged14 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  resume { ptr, i32 } %.merged14
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1321
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1321
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1321
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1321
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1322
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !1323
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1323

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1323
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !222, !noalias !1323
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1323
  store ptr null, ptr %2, align 8, !tbaa !222, !noalias !1323
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1323 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1323
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1323
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1323 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1323
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34, !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !1323
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1324, !nonnull !241, !align !242
  %i.u = load i64, ptr %1, align 8, !tbaa !374
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !375
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.u, i64 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !114
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !115 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !63
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.be) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #39
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !114
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !116 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !119 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cq) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !171 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #34
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.98") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.358", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.98", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.359, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #36, !noalias !1335 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1335
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !63, !noalias !1335
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !63, !noalias !1335
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !171, !noalias !1335
  store i64 %i.g, ptr %i.f, align 8, !tbaa !171, !noalias !1335
  store ptr %i.d, ptr %i.e, align 16, !tbaa !396, !noalias !1335
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1335

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #34, !noalias !1335
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #34, !noalias !1335
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #38, !noalias !1335
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !399, !alias.scope !1336
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !400, !alias.scope !1336
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1357, !range !240, !noundef !241
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %i.d, ptr %9, align 8, !tbaa !399
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !400
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !399
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !400
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !407
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !410
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1358
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !411  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !412
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !407
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !407 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #39
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
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !411
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !413 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !407 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_5
begin_hunk_6_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1390
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1390
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1390 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1390
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34, !noalias !1390
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1390
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !1392, !nonnull !241, !align !242 ; 2 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !176 ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val20 = load i64, ptr %i.u, align 8, !tbaa !177 ; 6 uses
  %i.v = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ugt i64 %i.v, 7
  %ident.check.not = icmp eq i64 %.val20, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.from.39.preheader

vector.ph:                                        ; preds = %.from..lr.ph
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.w = add i64 %2, %n.vec
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.y, align 4, !tbaa !61
  store <4 x float> splat (float 1.000000e+00), ptr %i.z, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.from.39.preheader

.from.39.preheader:                               ; preds = %.from..lr.ph, %middle.block
  %.023.ph = phi i64 [ %2, %.from..lr.ph ], [ %i.w, %middle.block ] ; 4 uses
  %i.ab = sub i64 %3, %.023.ph
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.39.prol.loopexit, label %.from.39.prol

.from.39.prol:                                    ; preds = %.from.39.preheader, %.from.39.prol
  %.023.prol = phi i64 [ %i.ae, %.from.39.prol ], [ %.023.ph, %.from.39.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.from.39.prol ], [ 0, %.from.39.preheader ]
  %i.ac = mul i64 %.023.prol, %.val20
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ac
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !61
  %i.ae = add nuw i64 %.023.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.from.39.prol.loopexit, label %.from.39.prol, !llvm.loop !1384

.from.39.prol.loopexit:                           ; preds = %.from.39.prol, %.from.39.preheader
  %.023.unr = phi i64 [ %.023.ph, %.from.39.preheader ], [ %i.ae, %.from.39.prol ]
  %i.af = sub i64 %.023.ph, %3
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.from.39

._crit_edge:                                      ; preds = %.from.39.prol.loopexit, %.from.39, %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr49)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable

.from.39:                                         ; preds = %.from.39.prol.loopexit, %.from.39
  %.023 = phi i64 [ %i.au, %.from.39 ], [ %.023.unr, %.from.39.prol.loopexit ] ; 5 uses
  %i.aj = mul i64 %.023, %.val20
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aj
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !61
  %i.al = add nuw i64 %.023, 1
  %i.am = mul i64 %i.al, %.val20
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.am
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !61
  %i.ao = add nuw i64 %.023, 2
  %i.ap = mul i64 %i.ao, %.val20
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ap
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !61
  %i.ar = add nuw i64 %.023, 3
  %i.as = mul i64 %i.ar, %.val20
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.as
  store float 1.000000e+00, ptr %i.at, align 4, !tbaa !61
  %i.au = add nuw i64 %.023, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.au, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %.from.39, !llvm.loop !1385

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92 ; 7 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !114
  %i.bc = and i32 %i.bb, 8
  %.not.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !115 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.be, %.from..lr.ph.i.i.i.i.i ], [ %i.bw, %.noexc2.i.i ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.bm = load i8, ptr %i.bh, align 8             ; 2 uses
  %i.bn = trunc i8 %i.bm to i1                    ; 2 uses
  %i.bo = load ptr, ptr %i.bi, align 8
  %i.bp = select i1 %i.bn, ptr %i.bo, ptr %i.bj
  %i.bq = load i64, ptr %i.bk, align 8
  %i.br = lshr i8 %i.bm, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = select i1 %i.bn, i64 %i.bq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !63
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr %i.bp, i64 %i.bt, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bg
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
  %i.bx = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bx) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.by = icmp slt i32 %i.ax, 2
  br i1 %i.by, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !171 ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  store ptr %i.cb, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr50 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr50, align 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr nonnull %i.cb)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i64 -1 acq_rel, align 8
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.43, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.43 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #34
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1) #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE24__emplace_back_slow_pathIJS1_EEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  store ptr %.0, ptr %i.a, align 8, !tbaa !390
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.441", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN3tev17CompoundException12buildMessageENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr %1, i64 %2)
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = load i64, ptr %4, align 8
  %i.f = and i64 %i.e, -2
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #38
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev17CompoundExceptionE, i64 16), ptr %0, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.idx8 = shl nuw nsw i64 %2, 3                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.g, ptr %3, align 8, !tbaa !1396, !alias.scope !1397
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !417, !alias.scope !1397
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #36
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !391
  store ptr %i.l, ptr %i.i, align 8, !tbaa !390
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !392
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #34
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1395

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !390
  br label %bb.e

.body:                                            ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #34
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %4, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = load i64, ptr %4, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #38
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.h

bb.h:                                             ; preds = %.body, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.t, %.body ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #34
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !391
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.b
  %i.f = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !390
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !392
  %i.i = ptrtoint ptr %i.h to i64
end_hunk_6
begin_hunk_7_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #34
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i32 %i.bl, ptr %10, align 8, !tbaa !419
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !420
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !171
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !380 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !381
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !171
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !171
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !171
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !171
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !382
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !382
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !171
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !380
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1408

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #34
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #34
  br label %.from.158

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !114
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !115 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !116 ; 2 uses
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
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 8             ; 2 uses
  %i.cv = trunc i8 %i.cu to i1                    ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cr
  %i.cy = load i64, ptr %i.cs, align 8
  %i.cz = lshr i8 %i.cu, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cv, i64 %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.df) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !380
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !381
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #39
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #34
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.158
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !114
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !115 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !116 ; 2 uses
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
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !119 ; 2 uses
  %i.eq = load i8, ptr %i.el, align 8             ; 2 uses
  %i.er = trunc i8 %i.eq to i1                    ; 2 uses
  %i.es = load ptr, ptr %i.em, align 8
  %i.et = select i1 %i.er, ptr %i.es, ptr %i.en
  %i.eu = load i64, ptr %i.eo, align 8
  %i.ev = lshr i8 %i.eq, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = select i1 %i.er, i64 %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !63
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.fb) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !171 ; 2 uses
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
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #34
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #34
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #39
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1428
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1428
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1428
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1428
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1429
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1430
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1430

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !222, !noalias !1430
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1430
  store ptr null, ptr %4, align 8, !tbaa !222, !noalias !1430
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1430 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1430
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1430
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1430 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1430
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34, !noalias !1430
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1430
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !171
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr nonnull align 1 poison, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.az) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #39
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !114
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !119 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !63
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cl) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !171 ; 2 uses
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #34
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.96") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.2", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.98", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #35 ; 13 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !171
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1441
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1441
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1441
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1441
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1442
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34, !noalias !1443
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1443

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1443
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !222, !noalias !1443
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1443
  store ptr null, ptr %8, align 8, !tbaa !222, !noalias !1443
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1443 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1443
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1443
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1443 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1443
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #34, !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34, !noalias !1443
  store ptr %4, ptr %.reload.addr, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %index.addr82, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %5, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #34
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task.96") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1454
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1454
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1454
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1454
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1455
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !1456
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1456

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1456
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !222, !noalias !1456
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1456
  store ptr null, ptr %2, align 8, !tbaa !222, !noalias !1456
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1456 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1456
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1456
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1456 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1456
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !1456
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1457, !nonnull !241, !align !242
  %i.u = load i32, ptr %1, align 8, !tbaa !419
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !420
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !114
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !115 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !63
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.be) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #34
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #39
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !114
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !116 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !119 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  call void @__clang_call_terminate(ptr %i.cq) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !171 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #34
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.96") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.98", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr62)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %bb.a unwind label %.body.from.56 ; 5 uses

.body.from.56:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr62) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1470
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !63, !noalias !1470
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1470
  store i32 2, ptr %i.g, align 8, !tbaa !69, !noalias !1470
  store ptr %i.f, ptr %i.d, align 8, !tbaa !73, !alias.scope !1471
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !74, !alias.scope !1471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !1472
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.98") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr62)
          to label %bb.b unwind label %bb.d, !noalias !1472

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !171, !alias.scope !1472
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !222, !noalias !1472
  store ptr %i.j, ptr %i.i, align 8, !tbaa !222, !alias.scope !1472
  store ptr null, ptr %4, align 8, !tbaa !222, !noalias !1472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !1472 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !171, !noalias !1472
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !171, !alias.scope !1472
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1472 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1472
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #34, !noalias !1472
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !1472
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !1474, !nonnull !241, !align !242 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1476, !nonnull !241, !align !242
  %i.v = load i64, ptr %i.u, align 8, !tbaa !136  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1477 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.x, align 4, !tbaa !101  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.z to i64  ; 2 uses
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1478, !nonnull !241
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !189, !range !240, !noundef !241
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1479, !nonnull !241, !align !242
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1481 ; 2 uses
  br i1 %i.af, label %._crit_edge28.i.us.us.from..lr.ph.split.us.split.us, label %._crit_edge28.i.us.from.._crit_edge28.i.us.preheader

._crit_edge28.i.us.from.._crit_edge28.i.us.preheader: ; preds = %.lr.ph.split.us
  %i.aj = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %.from.._crit_edge28.i.us

._crit_edge28.i.us.us.from..lr.ph.split.us.split.us: ; preds = %.lr.ph.split.us
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !102
  %i.al = sext i32 %2 to i64
  %wide.trip.count30 = sext i32 %3 to i64
  br label %.from.._crit_edge28.i.us.us

.from.._crit_edge28.i.us.us:                      ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us.us", %._crit_edge28.i.us.us.from..lr.ph.split.us.split.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us.us" ], [ %i.al, %._crit_edge28.i.us.us.from..lr.ph.split.us.split.us ] ; 3 uses
  %i.am = mul i64 %indvars.iv27, %i.v
  %i.an = trunc nsw i64 %indvars.iv27 to i32
  %i.ao = xor i32 %i.an, -1
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = getelementptr i8, ptr %i.ai, i64 %i.am
  %i.ar = sext i32 %i.ap to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.us.us, %.from.._crit_edge28.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.from.._crit_edge28.i.us.us ], [ %indvars.iv.next.i.us.us, %.loopexit.i.us.us ] ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.i.us.us to i32
  %i.at = lshr i64 %indvars.iv.i.us.us, 3
  %i.au = and i64 %i.at, 536870911
  %i.av = and i32 %i.as, 7
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %i.ay = zext i8 %i.ax to i32
  %i.az = lshr exact i32 128, %i.av
  %i.ba = and i32 %i.az, %i.ay
  %.not.i.us.us = icmp eq i32 %i.ba, 0
  br i1 %.not.i.us.us, label %.loopexit.i.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !1482, !nonnull !241, !align !242 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !187 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !184 ; 2 uses
  %.not2122.i.us.us = icmp eq ptr %i.bc, %i.be
  br i1 %.not2122.i.us.us, label %.loopexit.i.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.g, %.lr.ph.i.us.us
  %.sroa.018.023.i.us.us = phi ptr [ %i.bp, %.lr.ph.i.us.us ], [ %i.bc, %bb.g ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us.us, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !96
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, %i.ar
  %i.bj = add nsw i64 %i.bi, %indvars.iv.i.us.us
  %i.bk = load ptr, ptr %.sroa.018.023.i.us.us, align 8, !tbaa !176
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us.us, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !177
  %i.bn = mul i64 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bn
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us.us, i64 24 ; 2 uses
  %.not21.i.us.us = icmp eq ptr %i.bp, %i.be
  br i1 %.not21.i.us.us, label %.loopexit.i.us.us, label %.lr.ph.i.us.us

.loopexit.i.us.us:                                ; preds = %.lr.ph.i.us.us, %bb.g, %bb.f
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us.us", label %bb.f, !llvm.loop !1466

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us.us": ; preds = %.loopexit.i.us.us
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %._crit_edge, label %.from.._crit_edge28.i.us.us, !llvm.loop !1467

.from.._crit_edge28.i.us:                         ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us", %._crit_edge28.i.us.from.._crit_edge28.i.us.preheader
  %indvars.iv = phi i64 [ %i.aj, %._crit_edge28.i.us.from.._crit_edge28.i.us.preheader ], [ %indvars.iv.next, %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us" ] ; 3 uses
  %i.bq = mul i64 %indvars.iv, %i.v
  %i.br = getelementptr i8, ptr %i.ai, i64 %i.bq
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.us, %.from.._crit_edge28.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.from.._crit_edge28.i.us ], [ %indvars.iv.next.i.us, %.loopexit.i.us ] ; 4 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.bt = lshr i64 %indvars.iv.i.us, 3
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = and i32 %i.bs, 7
  %i.bw = getelementptr i8, ptr %i.br, i64 %i.bu
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !81
  %i.by = zext i8 %i.bx to i32
  %i.bz = lshr exact i32 128, %i.bv
  %i.ca = and i32 %i.bz, %i.by
  %.not.i.us = icmp eq i32 %i.ca, 0
  br i1 %.not.i.us, label %.loopexit.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !1482, !nonnull !241, !align !242 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !184 ; 2 uses
  %.not2122.i.us = icmp eq ptr %i.cc, %i.ce
  br i1 %.not2122.i.us, label %.loopexit.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.i, %.lr.ph.i.us
  %.sroa.018.023.i.us = phi ptr [ %i.cp, %.lr.ph.i.us ], [ %i.cc, %bb.i ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !96
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %indvars.iv, %i.ch
  %i.cj = add nsw i64 %i.ci, %indvars.iv.i.us
  %i.ck = load ptr, ptr %.sroa.018.023.i.us, align 8, !tbaa !176
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !177
  %i.cn = mul i64 %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cn
  store float 0.000000e+00, ptr %i.co, align 4, !tbaa !61
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.018.023.i.us, i64 24 ; 2 uses
  %.not21.i.us = icmp eq ptr %i.cp, %i.ce
  br i1 %.not21.i.us, label %.loopexit.i.us, label %.lr.ph.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph.i.us, %bb.i, %bb.h
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us", label %bb.h, !llvm.loop !1466

"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us": ; preds = %.loopexit.i.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.from.._crit_edge28.i.us, !llvm.loop !1467

._crit_edge:                                      ; preds = %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us", %"_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_2clEi.exit.loopexit.us.us", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr62)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #39
  unreachable

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !92 ; 7 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !114
  %i.cz = and i32 %i.cy, 8
  %.not.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !115 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.db, %.from..lr.ph.i.i.i.i.i ], [ %i.dt, %.noexc2.i.i ] ; 2 uses
  %i.di = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.dj = load i8, ptr %i.de, align 8             ; 2 uses
  %i.dk = trunc i8 %i.dj to i1                    ; 2 uses
  %i.dl = load ptr, ptr %i.df, align 8
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  %i.dn = load i64, ptr %i.dh, align 8
  %i.do = lshr i8 %i.dj, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = select i1 %i.dk, i64 %i.dn, i64 %i.dp
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !63
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr %i.dm, i64 %i.dq, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i:                     ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.du = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.du) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.dv = icmp slt i32 %i.cu, 2
  br i1 %i.dv, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.l, %_ZN3tev5Latch9countDownEv.exit.i
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !171 ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr               ; 3 uses
  store ptr %i.dy, ptr %.reload.addr, align 8
  %.not.i20 = icmp eq i64 %i.dx, 0
  br i1 %.not.i20, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr63 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr63, align 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr nonnull %i.dy)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !74  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = atomicrmw add ptr %i.eb, i64 -1 acq_rel, align 8
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !63
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(24) %i.ea) #34, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ea) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr62) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #34
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.56, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.56 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #34
  resume { ptr, i32 } %.merged18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr null, ptr %2, align 8, !tbaa !223
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223
  %.not = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #37
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !132
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !132
  store ptr %i.l, ptr %i.i, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !219
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #34
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #3 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !114
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116  ; 2 uses
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
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !385
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #34
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !385 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !385 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !179
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
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #34 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #34
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #34
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !385 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !385
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #34
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !390
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #34
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #37
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #34
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !390
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #37
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #34
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
  tail call void @__clang_call_terminate(ptr %i.bp) #39
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !390 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #34
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !391
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !390
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !392
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #38
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #34
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !92 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !114
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !116 ; 2 uses
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
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !119 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !63
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.dd) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !171 ; 2 uses
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
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !74 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
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
  tail call void @__clang_call_terminate(ptr %i.du) #39
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !1483

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !391 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #34
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !391
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !392
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #38
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #33 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr49 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr49) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
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
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #17 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend49, !prof !422

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr)
          to label %bb.a unwind label %.from.62

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave47

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread33.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !114
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread33.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not12.i.i.i.i.i, label %.thread33.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.p, %.from..lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc2.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread33.sink.split, label %.from..noexc2.i.i

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
  tail call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable

AfterCoroSave47:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %0) #34
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend49

.from.62:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend49:                               ; preds = %resume.entry, %AfterCoroSave47
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread33, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend49
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread33.sink.split unwind label %.from.60, !inline_history !4

.thread33.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !179
  br label %.thread33

.thread33:                                        ; preds = %.thread33.sink.split, %AfterCoroSuspend49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.60

bb.g:                                             ; preds = %.thread33
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #39
  unreachable

.from.60:                                         ; preds = %bb.f, %.thread33
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  br label %bb.i

bb.i:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.60 ], [ %i.ak, %.from.62 ]
  %.07 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.07) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i18

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i22 unwind label %.from..loopexit.split-lp.i.i19

.noexc.i.i22:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !114
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i23 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i23, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !115 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not12.i.i.i.i.i24, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i25

.from..lr.ph.i.i.i.i.i25:                         ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  br label %.from..noexc2.i.i29

.from..noexc2.i.i29:                              ; preds = %.noexc2.i.i29, %.from..lr.ph.i.i.i.i.i25
  %.sroa.09.013.i.i.i.i.i26 = phi ptr [ %i.bc, %.from..lr.ph.i.i.i.i.i25 ], [ %i.bu, %.noexc2.i.i29 ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i26, align 8, !tbaa !119 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !63
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i29 unwind label %.from..loopexit.i.i27, !inline_history !0

.noexc2.i.i29:                                    ; preds = %.from..noexc2.i.i29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i26, i64 16 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i30, label %_ZN3tev5Latch9countDownEv.exit.i18, label %.from..noexc2.i.i29

.from..loopexit.i.i27:                            ; preds = %.from..noexc2.i.i29
  %lpad.loopexit.i.i28 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.from..loopexit.split-lp.i.i19:                   ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i20 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.from..loopexit.split-lp.i.i19, %.from..loopexit.i.i27
  %lpad.phi.i.i21 = phi { ptr, i32 } [ %lpad.loopexit.i.i28, %.from..loopexit.i.i27 ], [ %lpad.loopexit.split-lp.i.i20, %.from..loopexit.split-lp.i.i19 ]
  %i.bv = extractvalue { ptr, i32 } %lpad.phi.i.i21, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i18:               ; preds = %.noexc2.i.i29, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %bb.l, %.noexc.i.i22
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr76, align 8
  %.not.i31 = icmp eq i64 %i.by, 0
  br i1 %.not.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

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

.from.70:                                         ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave47
  ret void

bb.r:                                             ; preds = %bb.o, %.from.70
  %.pn12 = phi { ptr, i32 } [ %i.cc, %.from.70 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !423

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
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
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr178, align 16, !tbaa !179 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr178, align 16, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #34
  %i.d = load ptr, ptr %.reload.addr179, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !380
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !381
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #34
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #34
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !119 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.au) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %index.addr184, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  musttail call void %i.az(ptr nonnull %i.ay)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.168:                                        ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !74 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #34
  ret void

bb.n:                                             ; preds = %bb.k, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.168 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !424

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #34
  %i.a = load ptr, ptr %.reload.addr179, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !380
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !74  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #33 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr62) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
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
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.resume"(ptr noundef nonnull align 8 dereferenceable(96) %0) #17 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !422

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
          to label %bb.a unwind label %.from.64

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave49

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread35.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !114
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #34
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !4

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #39
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.72

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i20

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i24 unwind label %.from..loopexit.split-lp.i.i21

.noexc.i.i24:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !114
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !115 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !119 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !63
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.bv) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !171 ; 2 uses
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #34
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
  tail call void @__clang_call_terminate(ptr %i.cm) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSU_PS0_iE_clESU_SZ_i.destroy"(ptr noundef nonnull align 8 dereferenceable(96) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !423

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
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
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNKS_14IcoImageLoader4loadERNS3_19basic_istringstreamIcNS3_11char_traitsIcEENS3_9allocatorIcEEEERKNS3_4__fs10filesystem4pathENS3_17basic_string_viewIcSA_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES5_S5_mT0_iEUliiE_EESR_S5_S5_mSS_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !179 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #34
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !380
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !381
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #34
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #34
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !114
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !119 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.au) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171 ; 2 uses
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
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !74 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #34
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
  tail call void @__clang_call_terminate(ptr %i.bl) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !424

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #34
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !383 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !380 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #34
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !383
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !380
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #38
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !74  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(120) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !179 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !179
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !114
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !119 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.60, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.an = load i64, ptr %i.am, align 8, !tbaa !171 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
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
  tail call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(120) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !421

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(1056) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr1298 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 58 uses
  %.reload.addr1299 = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 17 uses
  %.reload.addr1300 = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %.reload.addr1301 = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %.reload.addr1312 = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %.reload.addr1313 = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 7 uses
  %.reload.addr1314 = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 9 uses
  %.reload.addr1317 = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 14 uses
  %.reload.addr1318 = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 5 uses
  %.reload.addr1319 = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %.reload.addr1320 = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %.reload.addr1321 = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %.reload.addr1323 = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.reload.addr1332 = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 5 uses
  %.reload.addr1334 = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %.reload.addr1335 = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %.reload.addr1336 = getelementptr inbounds nuw i8, ptr %0, i64 1036 ; 9 uses
  %.reload.addr1338 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 7 uses
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend836
    i8 2, label %AfterCoroSuspend840
    i8 3, label %AfterCoroSuspend844
  ], !prof !1518

bb.a:                                             ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit462.jt12
  %storemerge215662.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 %i.ze, ptr %storemerge215662.spill.addr, align 16
  %.val265.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1038
  %.val265.reload = load i16, ptr %.val265.reload.addr, align 2, !tbaa !121 ; 2 uses
  %switch.selectcmp1.i1186 = icmp eq i16 %.val265.reload, 1
  %switch.selectcmp.i1185 = icmp eq i16 %.val265.reload, 2
  %switch.select.i1184 = select i1 %switch.selectcmp.i1185, ptr @.str.27, ptr @.str.28
  %switch.select2.i1183 = select i1 %switch.selectcmp1.i1186, ptr @.str.26, ptr %switch.select.i1184
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = zext i16 %i.ze to i64
  %.val267 = load ptr, ptr %i.a, align 8, !tbaa !93 ; 2 uses
  %.val267.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %.val267, ptr %.val267.spill.addr, align 8
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.val267, i64 %i.b
  store ptr %switch.select2.i1183, ptr %.reload.addr1298, align 8, !tbaa !90
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc296 unwind label %.from.1128

.noexc296:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  invoke void @_ZN4tlog6Logger3logIJRtPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef 4, ptr nonnull @.str.13, i64 35, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298 unwind label %.from.1128

_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298: ; preds = %.noexc296
  %.reload.addr1215 = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  %.reload1216 = load ptr, ptr %.reload.addr1215, align 8, !tbaa !121 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1317, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %.reload1216, align 8, !tbaa !63
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %.reload1216, i64 %i.h
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.i, i32 noundef 0)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit unwind label %.from.923

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit: ; preds = %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298
  %.reload.addr1247 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %.reload1248 = load i64, ptr %.reload.addr1247, align 16, !tbaa !121
  %.reload1214 = load ptr, ptr %.reload.addr1215, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %.reload1248, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1214, i64 noundef %i.m, i32 noundef 0)
          to label %bb.b unwind label %.from.923  ; 0 uses

bb.b:                                             ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit
  %.reload1212 = load ptr, ptr %.reload.addr1215, align 8, !tbaa !121 ; 3 uses
  %i.o = load ptr, ptr %.reload1212, align 8, !tbaa !63
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %.reload1212, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !80
  %i.u = and i32 %i.t, 5
  %.not595 = icmp eq i32 %i.u, 0
  br i1 %.not595, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298, ptr noundef nonnull @.str.14)
          to label %bb.d unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.v, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable668 unwind label %.thread4

.from.1128:                                       ; preds = %bb.a, %.noexc296
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  br label %bb.do

.from.923:                                        ; preds = %_ZN4tlog5debugIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit298, %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split545914

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread: ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.919

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.ab = load i8, ptr %.reload.addr1298, align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %.split545, label %.from.919

.thread4:                                         ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.ae = load i8, ptr %.reload.addr1298, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %.split545, label %.from..split545914

.split545:                                        ; preds = %.thread4, %bb.f
  %i.ag = phi { ptr, i32 } [ %i.ad, %.thread4 ], [ %i.aa, %bb.f ] ; 2 uses
  %.01996 = phi i1 [ false, %.thread4 ], [ true, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.aj = load i64, ptr %.reload.addr1298, align 8
  %i.ak = and i64 %i.aj, -2
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.ak) #38
  br i1 %.01996, label %.from.919, label %.from..split545914

.from.919:                                        ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread, %.split545, %bb.f
  %.pn217544 = phi { ptr, i32 } [ %i.z, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit302.thread ], [ %i.ag, %.split545 ], [ %i.aa, %bb.f ]
  tail call void @__cxa_free_exception(ptr %i.v) #34
  br label %.from..split545914

bb.g:                                             ; preds = %bb.b
  %.reload.addr1238 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.reload1239 = load i32, ptr %.reload.addr1238, align 8, !tbaa !121
  %.reload.addr1233 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.reload1234 = load ptr, ptr %.reload.addr1233, align 8, !tbaa !121
  %.reload.addr1228 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.reload1229 = load i64, ptr %.reload.addr1228, align 16, !tbaa !121
  %.reload.addr1223 = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.reload1224 = load ptr, ptr %.reload.addr1223, align 8, !tbaa !121
  %.reload.addr1218 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.reload1219 = load ptr, ptr %.reload.addr1218, align 16, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tev14PngImageLoaderE, i64 16), ptr %.reload.addr1313, align 8, !tbaa !63
  invoke void @_ZNK3tev14PngImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1313, ptr noundef nonnull align 8 dereferenceable(120) %.reload1212, ptr noundef nonnull align 8 dereferenceable(24) %.reload1219, ptr %.reload1224, i64 %.reload1229, ptr noundef nonnull align 4 dereferenceable(9) %.reload1234, i32 noundef %.reload1239)
          to label %bb.h unwind label %.from.912

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load atomic i32, ptr %i.an acquire, align 4
  %i.ap = icmp slt i32 %i.ao, 2
  br i1 %i.ap, label %bb.i, label %AfterCoroSave

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92 ; 7 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !114
  %i.ax = and i32 %i.aw, 8
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %.noexc.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !115 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.az, %.from..lr.ph.i.i.i.i.i ], [ %i.br, %.noexc2.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %i.bh = load i8, ptr %i.bc, align 8             ; 2 uses
  %i.bi = trunc i8 %i.bh to i1                    ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8
  %i.bk = select i1 %i.bi, ptr %i.bj, ptr %i.be
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = lshr i8 %i.bh, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = select i1 %i.bi, i64 %i.bl, i64 %i.bn
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr %i.bk, i64 %i.bo, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, %i.bb
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.from..loopexit.split-lp.i.i:                     ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.bs = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #39
  unreachable

AfterCoroSave:                                    ; preds = %bb.h
  store i8 0, ptr %index.addr, align 8
  %i.bt = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %0) #34
  br i1 %i.bt, label %CoroEnd, label %AfterCoroSuspend

.from.912:                                        ; preds = %bb.g
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split545914

AfterCoroSuspend:                                 ; preds = %resume.entry, %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr1298, align 8, !tbaa !123, !noalias !1519 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %AfterCoroSuspend
  %i.bv = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body304.from.909, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.m, %bb.k, %.noexc.i.i, %bb.i
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !123
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !125, !noalias !1520 ; 7 uses
  store ptr null, ptr %i.bx, align 16, !tbaa !125, !noalias !1520
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.13") align 8 %.reload.addr1299, ptr noundef nonnull align 8 dereferenceable(144) %i.by)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 acq_rel, align 8
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #34, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.p:                                             ; preds = %.thread
  %i.cf = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 acq_rel, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.body304.from.906, label %.from..body304

.body304.from.906:                                ; preds = %bb.p
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #34, !inline_history !2
  br label %.from..body304

_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.o, %bb.n
  %i.cm = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 5 uses
  %.not.i.i.i306 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i306, label %.thread548, label %bb.q

bb.q:                                             ; preds = %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not6.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.co, %bb.q ]
  %i.cp = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.cp) #34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cp
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %bb.q, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i
  %i.cq = phi ptr [ %.pre.i.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.cm, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.cm, ptr %i.cn, align 16, !tbaa !131
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !132
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cv) #38
  br label %.thread548

.thread548:                                       ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cy = load <2 x ptr>, ptr %.reload.addr1299, align 16, !tbaa !132
  store <2 x ptr> %i.cy, ptr %.reload.addr1317, align 8, !tbaa !132
  %i.cz = load ptr, ptr %i.cw, align 16, !tbaa !132
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr1299, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %bb.t

.body304.from.909:                                ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..body304

.from..body304:                                   ; preds = %.body304.from.906, %.body304.from.909, %bb.p
  %eh.lpad-body305 = phi { ptr, i32 } [ %i.da, %.body304.from.909 ], [ %i.cf, %.body304.from.906 ], [ %i.cf, %bb.p ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.from..split545914

.from..split545914:                               ; preds = %.from..body304, %.from.912, %.thread4, %.split545, %.from.919, %.from.923
  %.pn217.pn = phi { ptr, i32 } [ %.pn217544, %.from.919 ], [ %i.ag, %.split545 ], [ %i.ad, %.thread4 ], [ %i.y, %.from.923 ], [ %eh.lpad-body305, %.from..body304 ], [ %i.bu, %.from.912 ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn217.pn, 0   ; 3 uses
  %.2167 = extractvalue { ptr, i32 } %.pn217.pn, 1 ; 2 uses
  %i.db = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE) #34
  %i.dc = icmp eq i32 %.2167, %i.db
  br i1 %i.dc, label %bb.r, label %bb.z

bb.r:                                             ; preds = %.from..split545914
  %i.dd = tail call ptr @__cxa_begin_catch(ptr %.6) #34 ; 0 uses
  invoke void @_ZN4tlog5debugIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr nonnull @.str.16, i64 28, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %.from.935

bb.t:                                             ; preds = %bb.s, %.thread548
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.df = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 2 uses
  %i.dg = load ptr, ptr %i.de, align 16, !tbaa !131 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.u, label %.from.1080

bb.u:                                             ; preds = %bb.t
  %.reload.addr1209 = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  %.reload1210 = load ptr, ptr %.reload.addr1209, align 8, !tbaa !121 ; 2 uses
  %i.di = load ptr, ptr %.reload1210, align 8, !tbaa !63
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %.reload1210, i64 %i.dk
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.dl, i32 noundef 0)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310 unwind label %.from.1063

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310: ; preds = %bb.u
  %.val267.reload.addr1287 = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %.val267.reload1288 = load ptr, ptr %.val267.reload.addr1287, align 8, !tbaa !121
  %storemerge215662.reload.addr1265 = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %storemerge215662.reload1266 = load i16, ptr %storemerge215662.reload.addr1265, align 16, !tbaa !121
  %.reload.addr1249 = getelementptr inbounds nuw i8, ptr %0, i64 976
  %.reload1250 = load i64, ptr %.reload.addr1249, align 16, !tbaa !121
  %.reload1208 = load ptr, ptr %.reload.addr1209, align 8, !tbaa !121
  %i.dm = zext i16 %storemerge215662.reload1266 to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1288, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !103
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add i64 %.reload1250, %i.dq
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %.reload1208, i64 noundef %i.dr, i32 noundef 0)
          to label %bb.v unwind label %.from.1063 ; 0 uses

bb.v:                                             ; preds = %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310
  %.reload1206 = load ptr, ptr %.reload.addr1209, align 8, !tbaa !121 ; 3 uses
  %i.dt = load ptr, ptr %.reload1206, align 8, !tbaa !63
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %.reload1206, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !80
  %i.dz = and i32 %i.dy, 5
  %.not596 = icmp eq i32 %i.dz, 0
  br i1 %.not596, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ea = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298, ptr noundef nonnull @.str.14)
          to label %bb.x unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.ea, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable unwind label %.thread10

bb.z:                                             ; preds = %.from..split545914
  %i.eb = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageLoadErrorE) #34
  %i.ec = icmp eq i32 %.2167, %i.eb
  br i1 %i.ec, label %bb.aa, label %.from..loopexit611

bb.aa:                                            ; preds = %bb.z
  %i.ed = tail call ptr @__cxa_begin_catch(ptr %.6) #34
  %i.ee = tail call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #34
  store ptr %i.ee, ptr %.reload.addr1298, align 8, !tbaa !90
  invoke void @_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr nonnull @.str.15, i64 23, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.929

bb.ac:                                            ; preds = %bb.aa
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1126 unwind label %bb.dz

.from.929:                                        ; preds = %bb.ab
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1126

.loopexit611.from.1126:                           ; preds = %.from.929, %bb.ac
  %.pn220 = phi { ptr, i32 } [ %i.eg, %.from.929 ], [ %i.ef, %bb.ac ]
  %.7 = extractvalue { ptr, i32 } %.pn220, 0
  br label %.from..loopexit611

bb.ad:                                            ; preds = %bb.r
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1124 unwind label %bb.dz

.from.935:                                        ; preds = %bb.s
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1124

.loopexit611.from.1124:                           ; preds = %.from.935, %bb.ad
  %.pn221 = phi { ptr, i32 } [ %i.ei, %.from.935 ], [ %i.eh, %bb.ad ]
  %.8 = extractvalue { ptr, i32 } %.pn221, 0
  br label %.from..loopexit611

.from.1063:                                       ; preds = %bb.u, %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearB8ne180100Ej.exit310
  %i.ej = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5531054

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread: ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1059

bb.ae:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.em = load i8, ptr %.reload.addr1298, align 8
  %i.en = trunc i8 %i.em to i1
  br i1 %i.en, label %.split553, label %.from.1059

.thread10:                                        ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.ep = load i8, ptr %.reload.addr1298, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %.split553, label %.from..split5531054

.split553:                                        ; preds = %.thread10, %bb.ae
  %i.er = phi { ptr, i32 } [ %i.eo, %.thread10 ], [ %i.el, %bb.ae ] ; 2 uses
  %.020112 = phi i1 [ false, %.thread10 ], [ true, %bb.ae ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !81
  %i.eu = load i64, ptr %.reload.addr1298, align 8
  %i.ev = and i64 %i.eu, -2
  tail call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #38
  br i1 %.020112, label %.from.1059, label %.from..split5531054

.from.1059:                                       ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread, %.split553, %bb.ae
  %.pn247552 = phi { ptr, i32 } [ %i.ek, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit313.thread ], [ %i.er, %.split553 ], [ %i.el, %bb.ae ]
  tail call void @__cxa_free_exception(ptr %i.ea) #34
  br label %.from..split5531054

bb.af:                                            ; preds = %bb.v
  %.val267.reload1290 = load ptr, ptr %.val267.reload.addr1287, align 8, !tbaa !121
  %storemerge215662.reload1268 = load i16, ptr %storemerge215662.reload.addr1265, align 16, !tbaa !121
  %.reload.addr1244 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.reload1245 = load i32, ptr %.reload.addr1244, align 8, !tbaa !121
  %.reload.addr1235 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.reload1236 = load ptr, ptr %.reload.addr1235, align 8, !tbaa !121
  %.reload.addr1230 = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.reload1231 = load i64, ptr %.reload.addr1230, align 16, !tbaa !121
  %.reload.addr1225 = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.reload1226 = load ptr, ptr %.reload.addr1225, align 8, !tbaa !121
  %.reload.addr1220 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.reload1221 = load ptr, ptr %.reload.addr1220, align 16, !tbaa !121
  %i.ew = zext i16 %storemerge215662.reload1268 to i64
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1290, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ez = load <2 x i32>, ptr %i.ex, align 4, !tbaa !96
  store <2 x i32> %i.ez, ptr %.reload.addr1332, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tev14BmpImageLoaderE, i64 16), ptr %.reload.addr1320, align 16, !tbaa !63
  store i8 0, ptr %.reload.addr1321, align 8, !tbaa !81
  store i8 0, ptr %i.ey, align 16, !tbaa !135
  invoke void @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1320, ptr noundef nonnull align 8 dereferenceable(120) %.reload1206, ptr noundef nonnull align 8 dereferenceable(24) %.reload1221, ptr %.reload1226, i64 %.reload1231, ptr noundef nonnull align 4 dereferenceable(9) %.reload1236, i32 noundef %.reload1245, ptr noundef nonnull byval(%"class.std::__1::optional") align 8 %.reload.addr1321, ptr noundef nonnull %.reload.addr1332, i1 noundef zeroext true)
          to label %bb.ag unwind label %.from.954

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !73
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load atomic i32, ptr %i.fc acquire, align 4
  %i.fe = icmp slt i32 %i.fd, 2
  br i1 %i.fe, label %bb.ah, label %AfterCoroSave834

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !73
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %i.fi = icmp slt i32 %i.fh, 1
  br i1 %i.fi, label %bb.ai, label %.thread558.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i318 unwind label %.from..loopexit.split-lp.i.i315

.noexc.i.i318:                                    ; preds = %bb.ai
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !92 ; 7 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !114
  %i.fm = and i32 %i.fl, 8
  %.not.i.i.i.i319 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i.i319, label %bb.aj, label %.thread558.sink.split

bb.aj:                                            ; preds = %.noexc.i.i318
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !115 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i320 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not12.i.i.i.i.i320, label %.thread558.sink.split, label %.from..lr.ph.i.i.i.i.i321

.from..lr.ph.i.i.i.i.i321:                        ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 33
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  br label %.from..noexc2.i.i325

.from..noexc2.i.i325:                             ; preds = %.noexc2.i.i325, %.from..lr.ph.i.i.i.i.i321
  %.sroa.09.013.i.i.i.i.i322 = phi ptr [ %i.fo, %.from..lr.ph.i.i.i.i.i321 ], [ %i.gg, %.noexc2.i.i325 ] ; 2 uses
  %i.fv = load ptr, ptr %.sroa.09.013.i.i.i.i.i322, align 8, !tbaa !119 ; 2 uses
  %i.fw = load i8, ptr %i.fr, align 8             ; 2 uses
  %i.fx = trunc i8 %i.fw to i1                    ; 2 uses
  %i.fy = load ptr, ptr %i.fs, align 8
  %i.fz = select i1 %i.fx, ptr %i.fy, ptr %i.ft
  %i.ga = load i64, ptr %i.fu, align 8
  %i.gb = lshr i8 %i.fw, 1
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = select i1 %i.fx, i64 %i.ga, i64 %i.gc
  %i.ge = load ptr, ptr %i.fv, align 8, !tbaa !63
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr %i.fz, i64 %i.gd, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i325 unwind label %.from..loopexit.i.i323, !inline_history !0

.noexc2.i.i325:                                   ; preds = %.from..noexc2.i.i325
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i322, i64 16 ; 2 uses
  %.not.i.i.i.i.i326 = icmp eq ptr %i.gg, %i.fq
  br i1 %.not.i.i.i.i.i326, label %.thread558.sink.split, label %.from..noexc2.i.i325

.from..loopexit.i.i323:                           ; preds = %.from..noexc2.i.i325
  %lpad.loopexit.i.i324 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ak

.from..loopexit.split-lp.i.i315:                  ; preds = %bb.ai
  %lpad.loopexit.split-lp.i.i316 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ak

bb.ak:                                            ; preds = %.from..loopexit.split-lp.i.i315, %.from..loopexit.i.i323
  %lpad.phi.i.i317 = phi { ptr, i32 } [ %lpad.loopexit.i.i324, %.from..loopexit.i.i323 ], [ %lpad.loopexit.split-lp.i.i316, %.from..loopexit.split-lp.i.i315 ]
  %i.gh = extractvalue { ptr, i32 } %lpad.phi.i.i317, 0
  tail call void @__clang_call_terminate(ptr %i.gh) #39
  unreachable

AfterCoroSave834:                                 ; preds = %bb.ag
  store i8 1, ptr %index.addr, align 8
  %i.gi = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %0) #34
  br i1 %i.gi, label %CoroEnd, label %AfterCoroSuspend836

.from.954:                                        ; preds = %bb.af
  %i.gj = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..split5531054

AfterCoroSuspend836:                              ; preds = %resume.entry, %AfterCoroSave834
  %.pr556 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !123, !noalias !1521 ; 3 uses
  %.not.i328 = icmp eq ptr %.pr556, null
  br i1 %.not.i328, label %.thread558, label %bb.al

bb.al:                                            ; preds = %AfterCoroSuspend836
  %i.gk = getelementptr inbounds nuw i8, ptr %.pr556, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  invoke void %i.gl(ptr nonnull %.pr556)
          to label %.thread558.sink.split unwind label %.body331.from.951, !inline_history !1

.thread558.sink.split:                            ; preds = %.noexc2.i.i325, %bb.al, %bb.aj, %.noexc.i.i318, %bb.ah
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !123
  br label %.thread558

.thread558:                                       ; preds = %.thread558.sink.split, %AfterCoroSuspend836
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !125, !noalias !1522 ; 7 uses
  store ptr null, ptr %i.gm, align 16, !tbaa !125, !noalias !1522
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.13") align 8 %.reload.addr1299, ptr noundef nonnull align 8 dereferenceable(144) %i.gn)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.thread558
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = atomicrmw add ptr %i.go, i64 -1 acq_rel, align 8
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.an, label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333

bb.an:                                            ; preds = %bb.am
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #34, !inline_history !2
  br label %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333

bb.ao:                                            ; preds = %.thread558
  %i.gu = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = atomicrmw add ptr %i.gv, i64 -1 acq_rel, align 8
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %.body331.from.948, label %.from..body331

.body331.from.948:                                ; preds = %bb.ao
  %i.gy = load ptr, ptr %i.gn, align 8, !tbaa !63
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  tail call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #34, !inline_history !2
  br label %.from..body331

_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333: ; preds = %bb.an, %bb.am
  %i.hb = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 5 uses
  %.not.i.i.i334 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i334, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 16, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i.i.i335 = icmp eq ptr %i.hb, %i.hd
  br i1 %.not6.i.i.i.i.i.i335, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341, label %.lr.ph.i.i.i.i.i.i336

.lr.ph.i.i.i.i.i.i336:                            ; preds = %bb.ap, %.lr.ph.i.i.i.i.i.i336
  %.07.i.i.i.i.i.i337 = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i336 ], [ %i.hd, %bb.ap ]
  %i.he = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i337, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.he) #34
  %.not.i.i.i.i.i.i338 = icmp eq ptr %i.hb, %i.he
  br i1 %.not.i.i.i.i.i.i338, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339, label %.lr.ph.i.i.i.i.i.i336

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339: ; preds = %.lr.ph.i.i.i.i.i.i336
  %.pre.i.i.i340 = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341: ; preds = %bb.ap, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339
  %i.hf = phi ptr [ %.pre.i.i.i340, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i339 ], [ %i.hb, %bb.ap ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.hb, ptr %i.hc, align 16, !tbaa !131
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !132
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hk) #38
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i341, %_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv.exit333
  %.val267.reload.addr1281 = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %.val267.reload1282 = load ptr, ptr %.val267.reload.addr1281, align 8, !tbaa !121
  %storemerge215662.reload.addr1259 = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %storemerge215662.reload1260 = load i16, ptr %storemerge215662.reload.addr1259, align 16, !tbaa !121
  %i.hl = zext i16 %storemerge215662.reload1260 to i64
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1282, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.hs = load <2 x ptr>, ptr %.reload.addr1299, align 16, !tbaa !132
  store <2 x ptr> %i.hs, ptr %.reload.addr1317, align 8, !tbaa !132
  %i.ht = load ptr, ptr %i.ho, align 16, !tbaa !132
  store ptr %i.ht, ptr %i.hq, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr1299, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %i.hu = load i32, ptr %i.hm, align 4, !tbaa !101
  %i.hv = load i32, ptr %i.hn, align 4, !tbaa !102 ; 2 uses
  %i.hw = load i32, ptr %.reload.addr1332, align 8, !tbaa !96
  %.not.i.i352 = icmp ne i32 %i.hw, %i.hu         ; 2 uses
  %i.hx = load i32, ptr %i.hp, align 4            ; 2 uses
  %.not.1.i.i = icmp ne i32 %i.hx, %i.hv
  %.not.lcssa.i.not.i = select i1 %.not.i.i352, i1 true, i1 %.not.1.i.i
  br i1 %.not.lcssa.i.not.i, label %bb.ar, label %.from.1078

bb.ar:                                            ; preds = %bb.aq
  %i.hy = shl nsw i32 %i.hv, 1
  %.not.1.i.i354 = icmp ne i32 %i.hx, %i.hy
  %.not.lcssa.i.not.i355 = select i1 %.not.i.i352, i1 true, i1 %.not.1.i.i354
  br i1 %.not.lcssa.i.not.i355, label %.noexc, label %bb.av

.noexc:                                           ; preds = %bb.ar
  %.val267.reload1292 = load ptr, ptr %.val267.reload.addr1281, align 8, !tbaa !121
  %storemerge215662.reload1270 = load i16, ptr %storemerge215662.reload.addr1259, align 16, !tbaa !121
  %i.hz = zext i16 %storemerge215662.reload1270 to i64
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1292, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.if = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  store ptr %.reload.addr1332, ptr %.reload.addr1300, align 16, !tbaa !81
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ie, align 8, !tbaa !81
  %i.ig = load i32, ptr %i.ia, align 4, !tbaa !96, !noalias !1523
  store i32 %i.ig, ptr %i.id, align 16, !tbaa !81, !noalias !1523
  %i.ih = load i32, ptr %i.ib, align 4, !tbaa !96, !noalias !1523
  store i32 %i.ih, ptr %i.ic, align 16, !tbaa !81, !noalias !1523
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %.reload.addr1298, ptr nonnull @.str.17, i64 60, i64 287, ptr nonnull %.reload.addr1300)
          to label %bb.as unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread

bb.as:                                            ; preds = %.noexc
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1298)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.if, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.if, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.loopexit609.unreachable667 unwind label %.thread16

.body331.from.951:                                ; preds = %bb.al
  %i.ii = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from..body331

.from..body331:                                   ; preds = %.body331.from.948, %.body331.from.951, %bb.ao
  %eh.lpad-body332 = phi { ptr, i32 } [ %i.ii, %.body331.from.951 ], [ %i.gu, %.body331.from.948 ], [ %i.gu, %bb.ao ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.from..split5531054

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit357.thread: ; preds = %.noexc
  %i.ij = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.from.1046

bb.au:                                            ; preds = %bb.as
  %i.ik = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.il = load i8, ptr %.reload.addr1298, align 8
  %i.im = trunc i8 %i.il to i1
  br i1 %i.im, label %.split565, label %.from.1046

.thread16:                                        ; preds = %bb.at
  %i.in = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null                          ; 2 uses
  %i.io = load i8, ptr %.reload.addr1298, align 8
  %i.ip = trunc i8 %i.io to i1
  br i1 %i.ip, label %.split565, label %.from..split5531054

.split565:                                        ; preds = %.thread16, %bb.au
  %i.iq = phi { ptr, i32 } [ %i.in, %.thread16 ], [ %i.ik, %bb.au ] ; 2 uses
  %.019718 = phi i1 [ false, %.thread16 ], [ true, %bb.au ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !81
  %i.it = load i64, ptr %.reload.addr1298, align 8
  %i.iu = and i64 %i.it, -2
end_hunk_7
begin_hunk_8_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.mm = load ptr, ptr %i.ml, align 16, !tbaa !168 ; 5 uses
  %.not.i.i.i.i.i.i371 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i371, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = atomicrmw add ptr %i.mn, i64 -1 acq_rel, align 8
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %bb.bk, label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.mq = load ptr, ptr %i.mm, align 8, !tbaa !63
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  tail call void %i.ms(ptr noundef nonnull align 8 dereferenceable(24) %i.mm) #34, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mm) #34
  br label %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i

.body372.from..body.i.i:                          ; preds = %bb.bh
  %i.mt = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr1319) #34
  store ptr %i.mh, ptr %i.le, align 8, !tbaa !151
  br label %.body403

.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i: ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mh, i64 72 ; 2 uses
  store ptr %i.mu, ptr %i.le, align 8, !tbaa !151
  br label %.from.990

bb.bl:                                            ; preds = %bb.bg
  %i.mv = invoke noundef ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0506.0653, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1298, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1334, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1335)
          to label %.from.990 unwind label %.body372.from.

.from.990:                                        ; preds = %bb.bl, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i
  %.0.i = phi ptr [ %i.mu, %.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE22__construct_one_at_endB8ne180100IJRA2_KcN7nanogui5ArrayIiLm2EEENS1_12EPixelFormatESD_EEEvDpOT_.exit.i ], [ %i.mv, %bb.bl ] ; 6 uses
  %.0.i.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr %.0.i, ptr %.0.i.spill.addr, align 16
  store ptr %.0.i, ptr %i.le, align 8, !tbaa !151
  %i.mw = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.sroa.0.0.copyload.i375 = load i64, ptr %i.mw, align 8, !tbaa !81 ; 2 uses
  %sext = shl i64 %.sroa.0.0.copyload.i375, 32
  %i.mx = ashr exact i64 %sext, 32
  %i.my = ashr i64 %.sroa.0.0.copyload.i375, 32
  %i.mz = mul nsw i64 %i.mx, %i.my                ; 2 uses
  %i.na = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.nb = icmp eq i8 %i.na, 0
  br i1 %i.nb, label %bb.bm, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !169

bb.bm:                                            ; preds = %.from.990
  %i.nc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i376 = icmp eq i32 %i.nc, 0
  br i1 %.not.i376, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bo unwind label %.body377.from.

bb.bo:                                            ; preds = %bb.bn
  %i.nd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body377.from.:                                   ; preds = %bb.bn
  %i.ne = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body403

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.bo, %bb.bm, %.from.990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.nf = getelementptr inbounds i8, ptr %.0.i, i64 -32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !154, !noalias !1525 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !162, !noalias !1525
  %.not.i379 = icmp eq i32 %i.ni, 7
  br i1 %.not.i379, label %bb.br, label %bb.bp, !prof !170

bb.bp:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.nj = tail call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !1525 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, ptr noundef nonnull @.str.105)
          to label %bb.bq unwind label %.body377.from.999, !noalias !1525

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_throw(ptr nonnull %i.nj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
          to label %.noexc381 unwind label %.body377.from..loopexit.split-lp

.noexc381:                                        ; preds = %bb.bq
  unreachable

.body377.from.999:                                ; preds = %bb.bp
  %i.nk = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.nj) #34, !noalias !1525
  br label %.body403

bb.br:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload.addr1240 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.reload1241 = load i32, ptr %.reload.addr1240, align 8, !tbaa !121
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.nn = load ptr, ptr %i.ng, align 8, !tbaa !171, !noalias !1525
  %i.no = getelementptr inbounds i8, ptr %.0.i, i64 -8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !172, !noalias !1525
  %i.nq = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !173, !noalias !1525
  %.sroa.0.0.copyload.i380 = load i64, ptr %i.mw, align 8, !tbaa !81, !noalias !1525
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nr
  store ptr %i.ns, ptr %.reload.addr1312, align 16, !tbaa !176, !alias.scope !1525
  store i64 %i.np, ptr %i.nm, align 8, !tbaa !177, !alias.scope !1525
  store i64 %.sroa.0.0.copyload.i380, ptr %i.nl, align 16, !tbaa !81, !alias.scope !1525
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.mz, i64 noundef %i.mz, ptr noundef nonnull byval(%class.anon.119) align 8 %.reload.addr1312, i32 noundef %.reload1241)
          to label %bb.bs unwind label %.body377.from..loopexit602

bb.bs:                                            ; preds = %bb.br
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !73
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load atomic i32, ptr %i.nv acquire, align 4
  %i.nx = icmp slt i32 %i.nw, 2
  br i1 %i.nx, label %bb.bt, label %AfterCoroSave838

bb.bt:                                            ; preds = %bb.bs
  %i.ny = load ptr, ptr %i.nt, align 8, !tbaa !73
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = atomicrmw add ptr %i.nz, i32 -1 acq_rel, align 4
  %i.ob = icmp slt i32 %i.oa, 1
  br i1 %i.ob, label %bb.bu, label %.thread574.sink.split

bb.bu:                                            ; preds = %bb.bt
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i388 unwind label %.from..loopexit.split-lp.i.i385

.noexc.i.i388:                                    ; preds = %bb.bu
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !92 ; 7 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !114
  %i.of = and i32 %i.oe, 8
  %.not.i.i.i.i389 = icmp eq i32 %i.of, 0
  br i1 %.not.i.i.i.i389, label %bb.bv, label %.thread574.sink.split

bb.bv:                                            ; preds = %.noexc.i.i388
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !115 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i390 = icmp eq ptr %i.oh, %i.oj
  br i1 %.not12.i.i.i.i.i390, label %.thread574.sink.split, label %.from..lr.ph.i.i.i.i.i391

.from..lr.ph.i.i.i.i.i391:                        ; preds = %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 32
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 48
  %i.om = getelementptr inbounds nuw i8, ptr %i.od, i64 33
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  br label %.from..noexc2.i.i395

.from..noexc2.i.i395:                             ; preds = %.noexc2.i.i395, %.from..lr.ph.i.i.i.i.i391
  %.sroa.09.013.i.i.i.i.i392 = phi ptr [ %i.oh, %.from..lr.ph.i.i.i.i.i391 ], [ %i.oz, %.noexc2.i.i395 ] ; 2 uses
  %i.oo = load ptr, ptr %.sroa.09.013.i.i.i.i.i392, align 8, !tbaa !119 ; 2 uses
  %i.op = load i8, ptr %i.ok, align 8             ; 2 uses
  %i.oq = trunc i8 %i.op to i1                    ; 2 uses
  %i.or = load ptr, ptr %i.ol, align 8
  %i.os = select i1 %i.oq, ptr %i.or, ptr %i.om
  %i.ot = load i64, ptr %i.on, align 8
  %i.ou = lshr i8 %i.op, 1
  %i.ov = zext nneg i8 %i.ou to i64
  %i.ow = select i1 %i.oq, i64 %i.ot, i64 %i.ov
  %i.ox = load ptr, ptr %i.oo, align 8, !tbaa !63
  %i.oy = load ptr, ptr %i.ox, align 8
  invoke void %i.oy(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr %i.os, i64 %i.ow, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i395 unwind label %.from..loopexit.i.i393, !inline_history !0

.noexc2.i.i395:                                   ; preds = %.from..noexc2.i.i395
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i392, i64 16 ; 2 uses
  %.not.i.i.i.i.i396 = icmp eq ptr %i.oz, %i.oj
  br i1 %.not.i.i.i.i.i396, label %.thread574.sink.split, label %.from..noexc2.i.i395

.from..loopexit.i.i393:                           ; preds = %.from..noexc2.i.i395
  %lpad.loopexit.i.i394 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bw

.from..loopexit.split-lp.i.i385:                  ; preds = %bb.bu
  %lpad.loopexit.split-lp.i.i386 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bw

bb.bw:                                            ; preds = %.from..loopexit.split-lp.i.i385, %.from..loopexit.i.i393
  %lpad.phi.i.i387 = phi { ptr, i32 } [ %lpad.loopexit.i.i394, %.from..loopexit.i.i393 ], [ %lpad.loopexit.split-lp.i.i386, %.from..loopexit.split-lp.i.i385 ]
  %i.pa = extractvalue { ptr, i32 } %lpad.phi.i.i387, 0
  tail call void @__clang_call_terminate(ptr %i.pa) #39
  unreachable

AfterCoroSave838:                                 ; preds = %bb.bs
  store i8 2, ptr %index.addr, align 8
  %i.pb = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %0) #34
  br i1 %i.pb, label %CoroEnd, label %AfterCoroSuspend840

.body403.from.:                                   ; preds = %.loopexit.thread, %.noexc369
  %i.pc = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body372.from.:                                   ; preds = %bb.bl
  %i.pd = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body377.from..loopexit602:                       ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body377.from..loopexit.split-lp:                 ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

AfterCoroSuspend840:                              ; preds = %resume.entry, %AfterCoroSave838
  %.pr572 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !179 ; 3 uses
  %.not.i397 = icmp eq ptr %.pr572, null
  br i1 %.not.i397, label %.thread574, label %bb.bx

bb.bx:                                            ; preds = %AfterCoroSuspend840
  %i.pe = getelementptr inbounds nuw i8, ptr %.pr572, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  invoke void %i.pf(ptr nonnull %.pr572)
          to label %.thread574.sink.split unwind label %.body377.from.1002, !inline_history !4

.thread574.sink.split:                            ; preds = %.noexc2.i.i395, %bb.bx, %bb.bv, %.noexc.i.i388, %bb.bt
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !179
  br label %.thread574

.thread574:                                       ; preds = %.thread574.sink.split, %AfterCoroSuspend840
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread unwind label %.body377.from.1002

.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread: ; preds = %.thread574
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %.0.i.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.0.i.reload = load ptr, ptr %.0.i.reload.addr, align 16, !tbaa !121
  %i.ph = getelementptr inbounds i8, ptr %.0.i.reload, i64 -72
  br label %.from..loopexit

.body377.from.1002:                               ; preds = %bb.bx, %.thread574
  %i.pi = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.body403

.from..loopexit:                                  ; preds = %.loopexit, %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread
  %.0192 = phi ptr [ %i.ph, %.from._ZN3tev4TaskIvE12await_resumeEv.exit.thread ], [ %i.lw, %.loopexit ] ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0192, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !154, !noalias !1526 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !162, !noalias !1526
  %.not.i400 = icmp eq i32 %i.pm, 7
  br i1 %.not.i400, label %bb.ca, label %bb.by, !prof !170

bb.by:                                            ; preds = %.from..loopexit
  %i.pn = tail call ptr @__cxa_allocate_exception(i64 16) #34, !noalias !1526 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef nonnull @.str.105)
          to label %bb.bz unwind label %.body403.from.1027, !noalias !1526

bb.bz:                                            ; preds = %bb.by
  invoke void @__cxa_throw(ptr nonnull %i.pn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #37
          to label %.noexc402 unwind label %.body403.from..loopexit.split-lp605

.noexc402:                                        ; preds = %bb.bz
  unreachable

.body403.from.1027:                               ; preds = %bb.by
  %i.po = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.pn) #34, !noalias !1526
  br label %.body403

bb.ca:                                            ; preds = %.from..loopexit
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.pr = load ptr, ptr %i.pk, align 8, !tbaa !171, !noalias !1526
  %i.ps = getelementptr inbounds nuw i8, ptr %.0192, i64 64
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !172, !noalias !1526 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.0192, i64 56
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !173, !noalias !1526
  %i.pw = getelementptr inbounds nuw i8, ptr %.0192, i64 24
  %.sroa.0.0.copyload.i401 = load i64, ptr %i.pw, align 8, !tbaa !81, !noalias !1526 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pv ; 2 uses
  %i.py = load ptr, ptr %i.pq, align 8, !tbaa !184 ; 6 uses
  %i.pz = load ptr, ptr %i.pp, align 16, !tbaa !185 ; 2 uses
  %i.qa = icmp ult ptr %i.py, %i.pz
  br i1 %i.qa, label %.from.1010, label %bb.cb

.from.1010:                                       ; preds = %bb.ca
  store ptr %i.px, ptr %i.py, align 8, !tbaa !186
  %.sroa.6.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store i64 %i.pt, ptr %.sroa.6.0..sroa_idx499, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store i64 %.sroa.0.0.copyload.i401, ptr %.sroa.7.0..sroa_idx501, align 8, !tbaa !81
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  br label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.qc = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187
  %i.qd = ptrtoint ptr %i.py to i64
  %i.qe = ptrtoint ptr %i.qc to i64               ; 2 uses
  %i.qf = sub i64 %i.qd, %i.qe                    ; 2 uses
  %i.qg = sdiv exact i64 %i.qf, 24
  %i.qh = add nsw i64 %i.qg, 1                    ; 2 uses
  %i.qi = icmp ugt i64 %i.qh, 768614336404564650
  br i1 %i.qi, label %bb.cc, label %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1299) #37
          to label %.noexc413 unwind label %.body403.from..loopexit.split-lp605

.noexc413:                                        ; preds = %bb.cc
  unreachable

_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.cb
  %i.qj = ptrtoint ptr %i.pz to i64
  %i.qk = sub i64 %i.qj, %i.qe
  %i.ql = sdiv exact i64 %i.qk, 24                ; 2 uses
  %.not.i.i.i406 = icmp ult i64 %i.ql, 384307168202282325
  %i.qm = shl nuw nsw i64 %i.ql, 1
  %.sroa.speculated.i.i.i407 = tail call i64 @llvm.umax.i64(i64 %i.qm, i64 %i.qh)
  %.0.i.i.i408 = select i1 %.not.i.i.i406, i64 %.sroa.speculated.i.i.i407, i64 768614336404564650 ; 4 uses
  %i.qn = icmp ne i64 %.0.i.i.i408, 0
  tail call void @llvm.assume(i1 %i.qn)
  %i.qo = icmp ugt i64 %.0.i.i.i408, 768614336404564650
  br i1 %i.qo, label %bb.cd, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i

bb.cd:                                            ; preds = %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #37
          to label %.noexc414 unwind label %.body403.from..loopexit.split-lp605

.noexc414:                                        ; preds = %bb.cd
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3tev11ChannelViewIfEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  %i.qp = mul nuw i64 %.0.i.i.i408, 24
  %i.qq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #36
          to label %.noexc415 unwind label %.body403.from..loopexit604 ; 2 uses

.noexc415:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qf ; 6 uses
  %i.qs = getelementptr inbounds nuw [24 x i8], ptr %i.qq, i64 %.0.i.i.i408
  store ptr %i.px, ptr %i.qr, align 8, !tbaa !186
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i64 %i.pt, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.sroa.0.0.copyload.i401, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !81
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 24 ; 3 uses
  %i.qu = load ptr, ptr %i.pq, align 8, !tbaa !184
  %.promoted.fr.i.i.i.i.i.i409 = freeze ptr %i.qu ; 2 uses
  %i.qv = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i409, %i.qv
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i410

.lr.ph.i.i.i.i.i.i.i.i.i410:                      ; preds = %.noexc415, %.lr.ph.i.i.i.i.i.i.i.i.i410
  %i.qw = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %i.qr, %.noexc415 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qx, %.lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %.promoted.fr.i.i.i.i.i.i409, %.noexc415 ]
  %i.qx = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  %i.qy = getelementptr inbounds i8, ptr %i.qw, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, ptr noundef nonnull align 8 dereferenceable(24) %i.qx, i64 24, i1 false), !tbaa.struct !188, !noalias !1527
  %.not.i.i.i.i.i.i.i.i.i411 = icmp eq ptr %i.qx, %i.qv
  br i1 %.not.i.i.i.i.i.i.i.i.i411, label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410, label %.lr.ph.i.i.i.i.i.i.i.i.i410, !llvm.loop !1509

_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i410
  br label %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !1509

_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc415, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.qy, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i410 ], [ %i.qr, %.noexc415 ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %.reload.addr1299, align 16, !tbaa !185
  store ptr %i.qt, ptr %i.pq, align 8, !tbaa !185
  %i.qz = load ptr, ptr %i.pp, align 16, !tbaa !185
  store ptr %i.qs, ptr %i.pp, align 16, !tbaa !185
  %.not.i5.i.i = icmp eq ptr %i.qv, null
  br i1 %.not.i5.i.i, label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.from.1014

.from.1014:                                       ; preds = %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = ptrtoint ptr %i.qv to i64
  %i.rc = sub i64 %i.ra, %i.rb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.rc) #38
  br label %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %.from.1014, %.from.1010
  %.0.i412 = phi ptr [ %i.qb, %.from.1010 ], [ %i.qt, %.from.1014 ], [ %i.qt, %_ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ]
  %.sroa.0506.0653.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %.sroa.0506.0653.reload = load ptr, ptr %.sroa.0506.0653.reload.addr, align 8, !tbaa !121
  %.reload.addr1296 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %.reload1297 = load ptr, ptr %.reload.addr1296, align 16, !tbaa !121
  store ptr %.0.i412, ptr %i.pq, align 8, !tbaa !184
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0506.0653.reload, i64 280 ; 2 uses
  %.not597 = icmp eq ptr %i.rd, %.reload1297
  br i1 %.not597, label %._crit_edge656, label %.lr.ph655

.body403.from..loopexit604:                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev11ChannelViewIfEEEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit606 = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

.body403.from..loopexit.split-lp605:              ; preds = %bb.bz, %bb.cc, %bb.cd
  %lpad.loopexit.split-lp607 = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

._crit_edge656:                                   ; preds = %.from._ZNSt3__114__split_bufferIN3tev11ChannelViewIfEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.bf
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !96
  %i.rg = icmp sgt i32 %i.rf, 0
  %i.rh = zext i1 %i.rg to i8
  store i8 %i.rh, ptr %.reload.addr1334, align 16, !tbaa !189
  %i.ri = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.rj = icmp eq i8 %i.ri, 0
  br i1 %i.rj, label %bb.ce, label %_ZN3tev10ThreadPool6globalEv.exit419, !prof !169

bb.ce:                                            ; preds = %._crit_edge656
  %i.rk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  %.not.i416 = icmp eq i32 %i.rk, 0
  br i1 %.not.i416, label %_ZN3tev10ThreadPool6globalEv.exit419, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.cg unwind label %.body417.from.1020

bb.cg:                                            ; preds = %bb.cf
  %i.rl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #34 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %_ZN3tev10ThreadPool6globalEv.exit419

.body417.from.1020:                               ; preds = %bb.cf
  %i.rm = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #34
  br label %.body403

_ZN3tev10ThreadPool6globalEv.exit419:             ; preds = %bb.cg, %bb.ce, %._crit_edge656
  %.val267.reload.addr1293 = getelementptr inbounds nuw i8, ptr %0, i64 984
  %.val267.reload1294 = load ptr, ptr %.val267.reload.addr1293, align 8, !tbaa !121
  %storemerge215662.reload.addr1271 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %storemerge215662.reload1272 = load i16, ptr %storemerge215662.reload.addr1271, align 16, !tbaa !121
  %.reload.addr1242 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.reload1243 = load i32, ptr %.reload.addr1242, align 8, !tbaa !121
  %i.rn = zext i16 %storemerge215662.reload1272 to i64
  %i.ro = getelementptr inbounds nuw [24 x i8], ptr %.val267.reload1294, i64 %i.rn ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.rv = load i32, ptr %i.rp, align 4, !tbaa !102 ; 2 uses
  %i.rw = load i32, ptr %i.ro, align 4, !tbaa !101
  %i.rx = sext i32 %i.rw to i64
  %i.ry = sext i32 %i.rv to i64
  %i.rz = mul nsw i64 %i.rx, %i.ry
  %i.sa = load ptr, ptr %i.ru, align 8, !tbaa !184
  %i.sb = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = sdiv exact i64 %i.se, 24
  %i.sg = mul i64 %i.rz, %i.sf
  store ptr %.reload.addr1314, ptr %.reload.addr1301, align 8, !tbaa !190
  store ptr %.reload.addr1334, ptr %i.rt, align 16, !tbaa !192
  store ptr %i.ro, ptr %i.rs, align 8, !tbaa !95
  store ptr %.reload.addr1313, ptr %i.rr, align 16, !tbaa !194
  store ptr %.reload.addr1299, ptr %i.rq, align 8, !tbaa !196
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.96") align 8 %.reload.addr1298, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.rv, i64 noundef %i.sg, ptr noundef nonnull byval(%class.anon.120) align 8 %.reload.addr1301, i32 noundef %.reload1243)
          to label %bb.ch unwind label %.body417.from.

bb.ch:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit419
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !73
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load atomic i32, ptr %i.sj acquire, align 4
  %i.sl = icmp slt i32 %i.sk, 2
  br i1 %i.sl, label %bb.ci, label %AfterCoroSave842

bb.ci:                                            ; preds = %bb.ch
  %i.sm = load ptr, ptr %i.sh, align 8, !tbaa !73
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = atomicrmw add ptr %i.sn, i32 -1 acq_rel, align 4
  %i.sp = icmp slt i32 %i.so, 1
  br i1 %i.sp, label %bb.cj, label %.thread585.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.sq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i424 unwind label %.from..loopexit.split-lp.i.i421

.noexc.i.i424:                                    ; preds = %bb.cj
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !92 ; 7 uses
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !114
  %i.st = and i32 %i.ss, 8
  %.not.i.i.i.i425 = icmp eq i32 %i.st, 0
  br i1 %.not.i.i.i.i425, label %bb.ck, label %.thread585.sink.split

bb.ck:                                            ; preds = %.noexc.i.i424
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !115 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i426 = icmp eq ptr %i.sv, %i.sx
  br i1 %.not12.i.i.i.i.i426, label %.thread585.sink.split, label %.from..lr.ph.i.i.i.i.i427

.from..lr.ph.i.i.i.i.i427:                        ; preds = %bb.ck
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sr, i64 32
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 48
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 33
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  br label %.from..noexc2.i.i431

.from..noexc2.i.i431:                             ; preds = %.noexc2.i.i431, %.from..lr.ph.i.i.i.i.i427
  %.sroa.09.013.i.i.i.i.i428 = phi ptr [ %i.sv, %.from..lr.ph.i.i.i.i.i427 ], [ %i.tn, %.noexc2.i.i431 ] ; 2 uses
  %i.tc = load ptr, ptr %.sroa.09.013.i.i.i.i.i428, align 8, !tbaa !119 ; 2 uses
  %i.td = load i8, ptr %i.sy, align 8             ; 2 uses
  %i.te = trunc i8 %i.td to i1                    ; 2 uses
  %i.tf = load ptr, ptr %i.sz, align 8
  %i.tg = select i1 %i.te, ptr %i.tf, ptr %i.ta
  %i.th = load i64, ptr %i.tb, align 8
  %i.ti = lshr i8 %i.td, 1
  %i.tj = zext nneg i8 %i.ti to i64
  %i.tk = select i1 %i.te, i64 %i.th, i64 %i.tj
  %i.tl = load ptr, ptr %i.tc, align 8, !tbaa !63
  %i.tm = load ptr, ptr %i.tl, align 8
  invoke void %i.tm(ptr noundef nonnull align 8 dereferenceable(8) %i.tc, ptr %i.tg, i64 %i.tk, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i431 unwind label %.from..loopexit.i.i429, !inline_history !0

.noexc2.i.i431:                                   ; preds = %.from..noexc2.i.i431
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i428, i64 16 ; 2 uses
  %.not.i.i.i.i.i432 = icmp eq ptr %i.tn, %i.sx
  br i1 %.not.i.i.i.i.i432, label %.thread585.sink.split, label %.from..noexc2.i.i431

.from..loopexit.i.i429:                           ; preds = %.from..noexc2.i.i431
  %lpad.loopexit.i.i430 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cl

.from..loopexit.split-lp.i.i421:                  ; preds = %bb.cj
  %lpad.loopexit.split-lp.i.i422 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cl

bb.cl:                                            ; preds = %.from..loopexit.split-lp.i.i421, %.from..loopexit.i.i429
  %lpad.phi.i.i423 = phi { ptr, i32 } [ %lpad.loopexit.i.i430, %.from..loopexit.i.i429 ], [ %lpad.loopexit.split-lp.i.i422, %.from..loopexit.split-lp.i.i421 ]
  %i.to = extractvalue { ptr, i32 } %lpad.phi.i.i423, 0
  tail call void @__clang_call_terminate(ptr %i.to) #39
  unreachable

AfterCoroSave842:                                 ; preds = %bb.ch
  store i8 3, ptr %index.addr, align 8
  %i.tp = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1298, ptr nonnull %0) #34
  br i1 %i.tp, label %CoroEnd, label %AfterCoroSuspend844

.body417.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit419
  %i.tq = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  br label %.body403

AfterCoroSuspend844:                              ; preds = %resume.entry, %AfterCoroSave842
  %.pr583 = load ptr, ptr %.reload.addr1298, align 8, !tbaa !179 ; 3 uses
  %.not.i434 = icmp eq ptr %.pr583, null
  br i1 %.not.i434, label %.thread585, label %bb.cm

bb.cm:                                            ; preds = %AfterCoroSuspend844
  %i.tr = getelementptr inbounds nuw i8, ptr %.pr583, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  invoke void %i.ts(ptr nonnull %.pr583)
          to label %.thread585.sink.split unwind label %.body417.from.1023, !inline_history !4

.thread585.sink.split:                            ; preds = %.noexc2.i.i431, %bb.cm, %bb.ck, %.noexc.i.i424, %bb.ci
  store ptr null, ptr %.reload.addr1298, align 8, !tbaa !179
  br label %.thread585

.thread585:                                       ; preds = %.thread585.sink.split, %AfterCoroSuspend844
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tt)
          to label %bb.cn unwind label %.body417.from.1023

bb.cn:                                            ; preds = %.thread585
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %i.tu = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187 ; 4 uses
  %.not.i.i438.jt12 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i438.jt12, label %.from.1078, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.tu, ptr %i.tw, align 8, !tbaa !184
  %i.tx = load ptr, ptr %i.tv, align 16, !tbaa !185
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tu to i64
  %i.ua = sub i64 %i.ty, %i.tz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef %i.ua) #38
  br label %.from.1078

.body417.from.1023:                               ; preds = %bb.cm, %.thread585
  %i.ub = landingpad { ptr, i32 }
          catch ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE
          catch ptr @_ZTIN3tev14ImageLoadErrorE
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %.body403

.body403:                                         ; preds = %.body417.from.1023, %.body417.from., %.body417.from.1020, %.body377.from.1002, %.body377.from..loopexit.split-lp, %.body377.from..loopexit602, %.body377.from.999, %.body377.from., %.body372.from., %.body372.from..body.i.i, %.body403.from..loopexit.split-lp605, %.body403.from..loopexit604, %.body403.from.1027, %.body403.from.
  %.pn236.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body377.from..loopexit.split-lp ], [ %i.po, %.body403.from.1027 ], [ %i.pc, %.body403.from. ], [ %lpad.loopexit.split-lp607, %.body403.from..loopexit.split-lp605 ], [ %i.mt, %.body372.from..body.i.i ], [ %lpad.loopexit606, %.body403.from..loopexit604 ], [ %i.pd, %.body372.from. ], [ %i.pi, %.body377.from.1002 ], [ %i.ne, %.body377.from. ], [ %i.nk, %.body377.from.999 ], [ %lpad.loopexit, %.body377.from..loopexit602 ], [ %i.ub, %.body417.from.1023 ], [ %i.tq, %.body417.from. ], [ %i.rm, %.body417.from.1020 ] ; 2 uses
  %i.uc = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187 ; 4 uses
  %.not.i.i439 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i439, label %.from..split5531054, label %bb.cp

bb.cp:                                            ; preds = %.body403
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.uc, ptr %i.ue, align 8, !tbaa !184
  %i.uf = load ptr, ptr %i.ud, align 16, !tbaa !185
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.uc to i64
  %i.ui = sub i64 %i.ug, %i.uh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.ui) #38
  br label %.from..split5531054

.from.1078:                                       ; preds = %bb.aq, %bb.co, %bb.cn
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.pre710 = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  %.pre711 = load ptr, ptr %i.uj, align 16, !tbaa !131
  br label %.from.1080

.from..split5531054:                              ; preds = %bb.cp, %.body403, %.thread22, %.split569, %.from.1039, %.from.1037, %.from.1032, %.thread16, %.split565, %.from..body331, %.from.954, %.from.1050, %.from.1046, %.thread10, %.split553, %.from.1059, %.from.1063
  %.pn247.pn = phi { ptr, i32 } [ %.pn247552, %.from.1059 ], [ %i.er, %.split553 ], [ %i.eo, %.thread10 ], [ %i.ej, %.from.1063 ], [ %.pn244564, %.from.1046 ], [ %i.iq, %.split565 ], [ %i.in, %.thread16 ], [ %i.kl, %.from.1050 ], [ %i.gj, %.from.954 ], [ %eh.lpad-body332, %.from..body331 ], [ %.pn240568, %.from.1037 ], [ %i.ku, %.split569 ], [ %i.kr, %.thread22 ], [ %i.lc, %.from.1039 ], [ %i.km, %.from.1032 ], [ %.pn236.pn, %.body403 ], [ %.pn236.pn, %bb.cp ] ; 2 uses
  %.24 = extractvalue { ptr, i32 } %.pn247.pn, 0  ; 3 uses
  %.18183 = extractvalue { ptr, i32 } %.pn247.pn, 1 ; 2 uses
  %i.uk = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE) #34
  %i.ul = icmp eq i32 %.18183, %i.uk
  br i1 %i.ul, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %.from..split5531054
  %i.um = tail call ptr @__cxa_begin_catch(ptr %.24) #34 ; 0 uses
  invoke void @_ZN4tlog7warningIJRtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_(ptr nonnull @.str.23, i64 29, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.1075

bb.cs:                                            ; preds = %.from..split5531054
  %i.un = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3tev14ImageLoadErrorE) #34
  %i.uo = icmp eq i32 %.18183, %i.un
  br i1 %i.uo, label %bb.ct, label %.from..loopexit611

bb.ct:                                            ; preds = %bb.cs
  %i.up = tail call ptr @__cxa_begin_catch(ptr %.24) #34
  %i.uq = tail call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.up) #34
  store ptr %i.uq, ptr %.reload.addr1298, align 8, !tbaa !90
  %i.ur = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc2 unwind label %bb.cu

.noexc2:                                          ; preds = %bb.ct
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !92
  invoke void @_ZN4tlog6Logger3logIJRtPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.us, i32 noundef 8, ptr nonnull @.str.22, i64 23, ptr noundef nonnull align 2 dereferenceable(2) %.reload.addr1336, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1298)
          to label %_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit unwind label %bb.cu

_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit: ; preds = %.noexc2
  invoke void @__cxa_end_catch()
          to label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt12 unwind label %.from.1069

bb.cu:                                            ; preds = %.noexc2, %bb.ct
  %i.ut = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1122 unwind label %bb.dz

.from.1069:                                       ; preds = %_ZN4tlog7warningIJRtPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1122

.loopexit611.from.1122:                           ; preds = %.from.1069, %bb.cu
  %.pn250 = phi { ptr, i32 } [ %i.uu, %.from.1069 ], [ %i.ut, %bb.cu ]
  %.25 = extractvalue { ptr, i32 } %.pn250, 0
  br label %.from..loopexit611

bb.cv:                                            ; preds = %bb.cq
  %i.uv = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.loopexit611.from.1120 unwind label %bb.dz

.from.1075:                                       ; preds = %bb.cr
  %i.uw = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit611.from.1120

.loopexit611.from.1120:                           ; preds = %.from.1075, %bb.cv
  %.pn251 = phi { ptr, i32 } [ %i.uw, %.from.1075 ], [ %i.uv, %bb.cv ]
  %.26 = extractvalue { ptr, i32 } %.pn251, 0
  br label %.from..loopexit611

.from.1080:                                       ; preds = %bb.t, %.from.1078
  %i.ux = phi ptr [ %.pre711, %.from.1078 ], [ %i.dg, %bb.t ] ; 3 uses
  %i.uy = phi ptr [ %.pre710, %.from.1078 ], [ %i.df, %bb.t ] ; 3 uses
  %.not600657 = icmp eq ptr %i.uy, %i.ux
  br i1 %.not600657, label %._crit_edge661, label %.lr.ph660.preheader

.lr.ph660.preheader:                              ; preds = %.from.1080
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.sroa.2.0..sroa_idx.i17.i1188 = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.sroa.2.0..sroa_idx.i16.i1187 = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 833 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 809
  br label %.lr.ph660

.lr.ph660:                                        ; preds = %.lr.ph660.preheader, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit449
  %.sroa.0494.0658 = phi ptr [ %i.xh, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit449 ], [ %i.uy, %.lr.ph660.preheader ] ; 5 uses
  %i.vl = load i16, ptr %.reload.addr1336, align 4, !tbaa !97, !noalias !1528
  %i.vm = zext i16 %i.vl to i32
  store i32 %i.vm, ptr %.reload.addr1320, align 16, !tbaa !81, !noalias !1528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  store i64 0, ptr %i.ve, align 16, !noalias !1529
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.vf, align 16, !tbaa !198, !noalias !1529
  store ptr %i.vd, ptr %.reload.addr1298, align 8, !tbaa !199, !noalias !1529
  store i64 500, ptr %i.vg, align 8, !tbaa !200, !noalias !1529
  store ptr @.str.24, ptr %.reload.addr1299, align 16, !tbaa !90, !noalias !1529
  store i64 9, ptr %.sroa.2.0..sroa_idx.i16.i1187, align 8, !tbaa !136, !noalias !1529
  store i32 0, ptr %i.vc, align 16, !tbaa !203, !noalias !1529
  store ptr %.reload.addr1298, ptr %i.vb, align 8, !tbaa !205, !noalias !1529
  store i64 2, ptr %i.va, align 16, !tbaa !207, !noalias !1529
  store ptr %.reload.addr1320, ptr %.sroa.2.0..sroa_idx.i17.i1188, align 8, !tbaa !81, !noalias !1529
  store ptr null, ptr %i.uz, align 16, !tbaa !171, !noalias !1529
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.24, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr1299)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %.lr.ph660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.vn = load i64, ptr %i.ve, align 16, !tbaa !208, !noalias !1531 ; 8 uses
  %i.vo = icmp ult i64 %i.vn, -9
  tail call void @llvm.assume(i1 %i.vo)
  %i.vp = load ptr, ptr %.reload.addr1298, align 8, !tbaa !199, !noalias !1531
  %i.vq = icmp ult i64 %i.vn, 23
  br i1 %i.vq, label %bb.cx, label %.thread.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.entry
  %i.zg = icmp ult i16 %i.ze, %i.zf
  br i1 %i.zg, label %bb.a, label %._crit_edge665, !llvm.loop !1517

.loopexit611.from.1118:                           ; preds = %bb.dh
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  br label %.from..loopexit611

.from..loopexit611:                               ; preds = %.loopexit611.from.1126, %.loopexit611.from.1124, %.loopexit611.from.1122, %.loopexit611.from.1120, %.loopexit611.from..body442, %.loopexit611.from.1118, %bb.z, %bb.cs
  %.28 = phi ptr [ %.26, %.loopexit611.from.1120 ], [ %.25, %.loopexit611.from.1122 ], [ %.7, %.loopexit611.from.1126 ], [ %.27, %.loopexit611.from..body442 ], [ %i.zi, %.loopexit611.from.1118 ], [ %.8, %.loopexit611.from.1124 ], [ %.6, %bb.z ], [ %.24, %bb.cs ]
  tail call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1317) #34
  br label %bb.do

._crit_edge665:                                   ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit462.jt12
  %i.zj = load ptr, ptr %.reload.addr1338, align 16, !tbaa !67 ; 2 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %._crit_edge665
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #37
          to label %.noexc.i463 unwind label %bb.dl

.noexc.i463:                                      ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %._crit_edge665
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.zj, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1318)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zl = landingpad { ptr, i32 }
          catch ptr null
  %i.zm = extractvalue { ptr, i32 } %i.zl, 0
  tail call void @__clang_call_terminate(ptr %i.zm) #39
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.dk
  %i.zn = load ptr, ptr %.reload.addr1318, align 16, !tbaa !130 ; 5 uses
  %.not.i.i464 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i464, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, label %bb.dm

bb.dm:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i465 = icmp eq ptr %i.zn, %i.zp
  br i1 %.not6.i.i.i.i465, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %bb.dm, %.lr.ph.i.i.i.i466
  %.07.i.i.i.i467 = phi ptr [ %i.zq, %.lr.ph.i.i.i.i466 ], [ %i.zp, %bb.dm ]
  %i.zq = getelementptr inbounds i8, ptr %.07.i.i.i.i467, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.zq) #34
  %.not.i.i.i.i468 = icmp eq ptr %i.zn, %i.zq
  br i1 %.not.i.i.i.i468, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469, label %.lr.ph.i.i.i.i466

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469: ; preds = %.lr.ph.i.i.i.i466
  %.pre1.i.i470 = load ptr, ptr %.reload.addr1318, align 16, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471: ; preds = %bb.dm, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469
  %i.zr = phi ptr [ %.pre1.i.i470, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469 ], [ %i.zn, %bb.dm ] ; 2 uses
  store ptr %i.zn, ptr %i.zo, align 8, !tbaa !131
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.zt = load ptr, ptr %i.zs, align 16, !tbaa !132
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = ptrtoint ptr %i.zr to i64
  %i.zw = sub i64 %i.zu, %i.zv
  tail call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zw) #38
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i473 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i473, label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.zy, ptr %i.zz, align 16, !tbaa !94
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val1.i.i.i = load ptr, ptr %i.aaa, align 8, !tbaa !95
  %i.aab = ptrtoint ptr %.val1.i.i.i to i64
  %i.aac = ptrtoint ptr %i.zy to i64
  %i.aad = sub i64 %i.aab, %i.aac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aad) #38
  br label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit

bb.do:                                            ; preds = %.from..loopexit611, %.from.1128
  %.29 = phi ptr [ %.28, %.from..loopexit611 ], [ %i.x, %.from.1128 ]
  tail call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr1318) #34
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i474 = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i.i474, label %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.aaf, ptr %i.aag, align 16, !tbaa !94
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val1.i.i.i475 = load ptr, ptr %i.aah, align 8, !tbaa !95
  %i.aai = ptrtoint ptr %.val1.i.i.i475 to i64
  %i.aaj = ptrtoint ptr %i.aaf to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aaf, i64 noundef %i.aak) #38
  br label %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476

.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476: ; preds = %bb.dp, %bb.do
  %i.aal = tail call ptr @__cxa_begin_catch(ptr %.29) #34 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1338)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476
  invoke void @__cxa_end_catch()
          to label %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit unwind label %.from.1173

_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, %bb.dn, %bb.dq
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !73
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = atomicrmw add ptr %i.aao, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aaq = icmp slt i32 %i.aap, 1
  br i1 %i.aaq, label %bb.dr, label %_ZN3tev5Latch9countDownEv.exit.i477

bb.dr:                                            ; preds = %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit
  %i.aar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i482 unwind label %.from..loopexit.split-lp.i.i479

.noexc.i.i482:                                    ; preds = %bb.dr
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !92 ; 7 uses
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !114
  %i.aau = and i32 %i.aat, 8
  %.not.i.i.i.i483 = icmp eq i32 %i.aau, 0
  br i1 %.not.i.i.i.i483, label %bb.ds, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.ds:                                            ; preds = %.noexc.i.i482
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !115 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !116 ; 2 uses
  %.not12.i.i.i.i.i484 = icmp eq ptr %i.aaw, %i.aay
  br i1 %.not12.i.i.i.i.i484, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i485

.from..lr.ph.i.i.i.i.i485:                        ; preds = %bb.ds
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aas, i64 48
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aas, i64 33
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aas, i64 40
  br label %.from..noexc2.i.i489

.from..noexc2.i.i489:                             ; preds = %.noexc2.i.i489, %.from..lr.ph.i.i.i.i.i485
  %.sroa.09.013.i.i.i.i.i486 = phi ptr [ %i.aaw, %.from..lr.ph.i.i.i.i.i485 ], [ %i.abo, %.noexc2.i.i489 ] ; 2 uses
  %i.abd = load ptr, ptr %.sroa.09.013.i.i.i.i.i486, align 8, !tbaa !119 ; 2 uses
  %i.abe = load i8, ptr %i.aaz, align 8           ; 2 uses
  %i.abf = trunc i8 %i.abe to i1                  ; 2 uses
  %i.abg = load ptr, ptr %i.aba, align 8
  %i.abh = select i1 %i.abf, ptr %i.abg, ptr %i.abb
  %i.abi = load i64, ptr %i.abc, align 8
  %i.abj = lshr i8 %i.abe, 1
  %i.abk = zext nneg i8 %i.abj to i64
  %i.abl = select i1 %i.abf, i64 %i.abi, i64 %i.abk
  %i.abm = load ptr, ptr %i.abd, align 8, !tbaa !63
  %i.abn = load ptr, ptr %i.abm, align 8
  invoke void %i.abn(ptr noundef nonnull align 8 dereferenceable(8) %i.abd, ptr %i.abh, i64 %i.abl, i32 noundef 8, ptr nonnull @.str.60, i64 36)
          to label %.noexc2.i.i489 unwind label %.from..loopexit.i.i487, !inline_history !0

.noexc2.i.i489:                                   ; preds = %.from..noexc2.i.i489
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i486, i64 16 ; 2 uses
  %.not.i.i.i.i.i490 = icmp eq ptr %i.abo, %i.aay
  br i1 %.not.i.i.i.i.i490, label %_ZN3tev5Latch9countDownEv.exit.i477, label %.from..noexc2.i.i489

.from..loopexit.i.i487:                           ; preds = %.from..noexc2.i.i489
  %lpad.loopexit.i.i488 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dt

.from..loopexit.split-lp.i.i479:                  ; preds = %bb.dr
  %lpad.loopexit.split-lp.i.i480 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dt

bb.dt:                                            ; preds = %.from..loopexit.split-lp.i.i479, %.from..loopexit.i.i487
  %lpad.phi.i.i481 = phi { ptr, i32 } [ %lpad.loopexit.i.i488, %.from..loopexit.i.i487 ], [ %lpad.loopexit.split-lp.i.i480, %.from..loopexit.split-lp.i.i479 ]
  %i.abp = extractvalue { ptr, i32 } %lpad.phi.i.i481, 0
  tail call void @__clang_call_terminate(ptr %i.abp) #39
  unreachable

_ZN3tev5Latch9countDownEv.exit.i477:              ; preds = %.noexc2.i.i489, %_ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit
  %i.abq = icmp slt i32 %i.aap, 2
  br i1 %i.abq, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i477, %bb.ds, %.noexc.i.i482
  %i.abr = load ptr, ptr %i.aam, align 8, !tbaa !73
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !171 ; 2 uses
  %i.abt = inttoptr i64 %i.abs to ptr             ; 3 uses
  store ptr %i.abt, ptr %.reload.addr1298, align 8
  %.not.i491 = icmp eq i64 %i.abs, 0
  br i1 %.not.i491, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.du

bb.du:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 4, ptr %index.addr, align 8
  %i.abu = load ptr, ptr %i.abt, align 8
  musttail call void %i.abu(ptr nonnull %i.abt)
  ret void

bb.dv:                                            ; preds = %.from._ZZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiEN7IconDirD2Ev.exit476
  %i.abv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dy unwind label %bb.dz

.from.1173:                                       ; preds = %bb.dq
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i477, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aby = load ptr, ptr %i.abx, align 16, !tbaa !74 ; 5 uses
  %.not.i.i492 = icmp eq ptr %i.aby, null
  br i1 %.not.i.i492, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = atomicrmw add ptr %i.abz, i64 -1 acq_rel, align 8
  %i.acb = icmp eq i64 %i.aca, 0
  br i1 %i.acb, label %bb.dx, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.dx:                                            ; preds = %bb.dw
  %i.acc = load ptr, ptr %i.aby, align 8, !tbaa !63
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = load ptr, ptr %i.acd, align 8
  tail call void %i.ace(ptr noundef nonnull align 8 dereferenceable(24) %i.aby) #34, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aby) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.dx, %bb.dw, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr1338) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1056) #34
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSave842, %AfterCoroSave838, %AfterCoroSave834
  ret void

bb.dy:                                            ; preds = %bb.dv, %.from.1173
  %.pn255 = phi { ptr, i32 } [ %i.abw, %.from.1173 ], [ %i.abv, %bb.dv ]
  store ptr null, ptr %0, align 16
  store i8 4, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn255

bb.dz:                                            ; preds = %bb.dv, %bb.cv, %bb.cu, %bb.ad, %bb.ac
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  tail call void @__clang_call_terminate(ptr %i.acg) #39
  unreachable

.loopexit609.unreachable:                         ; preds = %bb.y
  unreachable

.loopexit609.unreachable666:                      ; preds = %bb.bc
  unreachable

.loopexit609.unreachable667:                      ; preds = %bb.at
  unreachable

.loopexit609.unreachable668:                      ; preds = %bb.e
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(1056) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr1298 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.reload.addr1317 = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %.reload.addr1318 = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend836
    i8 2, label %AfterCoroSuspend840
    i8 3, label %AfterCoroSuspend840
    i8 4, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  ], !prof !1532

AfterCoroSuspend:                                 ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2

AfterCoroSuspend836:                              ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  br label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2

AfterCoroSuspend840:                              ; preds = %resume.entry, %resume.entry
  %.reload.addr1299 = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr1298) #34
  %i.a = load ptr, ptr %.reload.addr1299, align 16, !tbaa !187 ; 4 uses
  %.not.i.i438.jt2 = icmp eq ptr %i.a, null
  br i1 %.not.i.i438.jt2, label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend840
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.a, ptr %i.c, align 8, !tbaa !184
  %i.d = load ptr, ptr %i.b, align 16, !tbaa !185
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #38
  br label %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2

_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2: ; preds = %AfterCoroSuspend836, %bb.a, %AfterCoroSuspend840, %AfterCoroSuspend
  %i.h = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130 ; 5 uses
  %.not.i.i454.jt2 = icmp eq ptr %i.h, null
  br i1 %.not.i.i454.jt2, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !131 ; 2 uses
  %.not6.i.i.i.i455.jt2 = icmp eq ptr %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  br i1 %.not6.i.i.i.i455.jt2, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, label %.lr.ph.i.i.i.i456

.lr.ph.i.i.i.i456:                                ; preds = %bb.b, %.lr.ph.i.i.i.i456
  %.07.i.i.i.i457 = phi ptr [ %i.l, %.lr.ph.i.i.i.i456 ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i.i457, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.l) #34
  %.not.i.i.i.i458 = icmp eq ptr %i.h, %i.l
  br i1 %.not.i.i.i.i458, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..loopexit799.loopexit, label %.lr.ph.i.i.i.i456

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..loopexit799.loopexit: ; preds = %.lr.ph.i.i.i.i456
  %.pre1.i.i460 = load ptr, ptr %.reload.addr1317, align 8, !tbaa !130
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split: ; preds = %bb.b, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..loopexit799.loopexit
  %.sink236 = phi ptr [ %.pre1.i.i460, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..loopexit799.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  store ptr %i.h, ptr %i.i, align 16, !tbaa !131
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !132
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %.sink236 to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef %.sink236, i64 noundef %i.p) #38
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.sink.split, %_ZNKSt3__16ranges6__move4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev9ImageDataENS_9allocatorIS6_EEEETkNS_20weakly_incrementableENS_20back_insert_iteratorIS9_EEQ18indirectly_movableIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_EEENS0_13in_out_resultINS_7_IfImplIX14borrowed_rangeISE_EEE7_SelectISG_NS0_8danglingEEESH_EEOSE_SH_.exit.jt2
  %i.q = load ptr, ptr %.reload.addr1318, align 16, !tbaa !130 ; 5 uses
  %.not.i.i464 = icmp eq ptr %i.q, null
  br i1 %.not.i.i464, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, label %bb.c

bb.c:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131  ; 2 uses
  %.not6.i.i.i.i465 = icmp eq ptr %i.q, %i.s
  br i1 %.not6.i.i.i.i465, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %bb.c, %.lr.ph.i.i.i.i466
  %.07.i.i.i.i467 = phi ptr [ %i.t, %.lr.ph.i.i.i.i466 ], [ %i.s, %bb.c ]
  %i.t = getelementptr inbounds i8, ptr %.07.i.i.i.i467, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.t) #34
  %.not.i.i.i.i468 = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i.i468, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469, label %.lr.ph.i.i.i.i466

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469: ; preds = %.lr.ph.i.i.i.i466
  %.pre1.i.i470 = load ptr, ptr %.reload.addr1318, align 16, !tbaa !130
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469
  %i.u = phi ptr [ %.pre1.i.i470, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i469 ], [ %i.q, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !132
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #38
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i471, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93 ; 4 uses
  %.not.i.i.i473 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i473, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 768
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.val1.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !95
  %i.ae = ptrtoint ptr %.val1.i.i.i to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #38
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit472, %bb.d, %resume.entry
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !74 ; 5 uses
  %.not.i.i492 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i492, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.f, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #34, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #34
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr1338 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr1338) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1056) #34
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind }
attributes #35 = { allocsize(0) }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn }
attributes #38 = { builtin nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!50, !51, !52, !53}
!llvm.ident = !{!54}
!llvm.errno.tbaa = !{!59}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!4 = distinct !{null}
!5 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !99}
!10 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!11 = distinct !{!11, !99}
!12 = distinct !{null}
end_hunk_9
begin_hunk_10_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy:resume.entry
!221 = !{!"_ZTSNSt3__16futureIvEE", !220, i64 0}
!222 = !{!221, !220, i64 0}
!223 = !{!215, !64, i64 0}
!224 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !64, i64 0}
!225 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !224, i64 0, !71, i64 8}
!226 = !{!225, !71, i64 8}
!227 = !{!118, !71, i64 8}
!228 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !64, i64 0}
!229 = !{!228, !228, i64 0}
!230 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !228, i64 0}
!231 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !230, i64 0, !133, i64 8}
!232 = !{!231, !133, i64 8}
!233 = !{!105, !105, i64 0}
!234 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !64, i64 0}
!235 = !{!"_ZTSN4tlog7IOutputE"}
!236 = !{!"_ZTSN4tlog13ConsoleOutputE", !235, i64 0, !133, i64 8, !234, i64 16, !216, i64 24}
!237 = !{!236, !133, i64 8}
!238 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !79, i64 0, !234, i64 136, !57, i64 144}
!239 = !{!238, !57, i64 144}
!240 = !{i8 0, i8 2}
!241 = !{}
!242 = !{i64 8}
!243 = !{!"llvm.loop.unroll.disable"}
!244 = !{!"_ZTSSt9type_info", !89, i64 8}
!245 = !{!244, !89, i64 8}
!246 = !{i64 2, i64 4, !96, i64 6, i64 4, !96}
!247 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev13AttributeNodeELi0ELb0EEE", !212, i64 0}
!248 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev13AttributeNodeENS_9allocatorIS2_EEEE", !247, i64 0}
!249 = !{!"_ZTSNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEEE", !212, i64 0, !212, i64 8, !248, i64 16}
!250 = !{!249, !212, i64 0}
!251 = !{!249, !212, i64 8}
!252 = !{!"p1 _ZTSNSt3__19allocatorIN3tev7ChannelEEE", !64, i64 0}
!253 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIN3tev7ChannelEEELi1ELb0EEE", !252, i64 0}
!254 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev7ChannelERNS_9allocatorIS2_EEEE", !147, i64 0, !253, i64 8}
!255 = !{!"_ZTSNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEEE", !146, i64 0, !146, i64 8, !146, i64 16, !254, i64 24}
!256 = !{!255, !146, i64 0}
!257 = !{!255, !146, i64 16}
!258 = !{!255, !146, i64 8}
!259 = !{!"_ZTSN3fmt3v126detail4typeE", !56, i64 0}
!260 = !{!259, !259, i64 0}
!261 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !206, i64 0, !56, i64 8}
!262 = !{!261, !206, i64 0}
!263 = !{!"_ZTSN3fmt3v1211basic_specsE", !57, i64 0, !56, i64 4}
!264 = !{!263, !57, i64 0}
!265 = !{!"_ZTSN3fmt3v1212format_specsE", !263, i64 0, !57, i64 8, !57, i64 12}
!266 = !{!265, !57, i64 12}
!267 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !75, i64 0, !57, i64 8}
!268 = !{!267, !75, i64 0}
!269 = !{!267, !57, i64 8}
!270 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !64, i64 0}
!271 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !270, i64 0, !57, i64 8}
!272 = !{!271, !57, i64 8}
!273 = !{!"llvm.loop.isvectorized", i32 1}
!274 = !{!"llvm.loop.unroll.runtime.disable"}
!275 = !{!"branch_weights", i32 4, i32 28}
!276 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!277 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !133, i64 0, !56, i64 1}
!278 = !{!277, !133, i64 0}
!279 = !{!277, !56, i64 1}
!280 = !{!265, !57, i64 8}
!281 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !64, i64 0}
!282 = !{!281, !281, i64 0}
!283 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !56, i64 0}
!284 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !283, i64 0, !259, i64 16}
!285 = !{!284, !259, i64 16}
!286 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !204, i64 0}
!287 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !286, i64 0, !281, i64 8, !112, i64 16, !112, i64 40, !112, i64 64}
!288 = !{!287, !281, i64 8}
!289 = !{i64 4}
!290 = !{!77, !77, i64 0}
!291 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !64, i64 0}
!292 = !{!291, !291, i64 0}
!293 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !64, i64 0}
!294 = !{!293, !293, i64 0}
!295 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !89, i64 0, !89, i64 8, !57, i64 16}
!296 = !{!295, !89, i64 0}
!297 = !{!295, !89, i64 8}
!298 = !{!295, !57, i64 16}
!299 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !77, i64 0, !75, i64 8, !75, i64 16, !64, i64 24}
!300 = !{!299, !77, i64 0}
!301 = !{!299, !75, i64 16}
!302 = !{!299, !75, i64 8}
!303 = !{!201, !89, i64 0}
!304 = !{!201, !75, i64 8}
!305 = !{!"_ZTSN3fmt3v124signE", !56, i64 0}
!306 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !305, i64 0, !89, i64 8}
!307 = !{!306, !305, i64 0}
!308 = !{!306, !89, i64 8}
!309 = !{!305, !305, i64 0}
!310 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !57, i64 0, !57, i64 4}
!311 = !{!310, !57, i64 4}
!312 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !64, i64 0}
!313 = !{!312, !312, i64 0}
!314 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !64, i64 0}
!315 = !{!314, !314, i64 0}
!316 = !{!310, !57, i64 0}
!317 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !75, i64 0, !57, i64 8}
!318 = !{!317, !57, i64 8}
!319 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !64, i64 0}
!320 = !{!319, !319, i64 0}
!321 = !{!317, !75, i64 0}
!322 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !89, i64 0, !57, i64 8, !57, i64 12}
!323 = !{!322, !89, i64 0}
!324 = !{!322, !57, i64 8}
!325 = !{!322, !57, i64 12}
!326 = !{!"__int128", !56, i64 0}
!327 = !{!326, !326, i64 0}
!328 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !77, i64 0, !75, i64 8, !75, i64 16, !64, i64 24}
!329 = !{!328, !64, i64 24}
!330 = !{!328, !77, i64 0}
!331 = !{!328, !75, i64 16}
!332 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !328, i64 0, !56, i64 32}
!333 = !{!"_ZTSN3fmt3v126detail6bigintE", !332, i64 0, !57, i64 160}
!334 = !{!333, !57, i64 160}
!335 = !{!328, !75, i64 8}
!336 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !305, i64 0, !322, i64 8, !57, i64 24, !56, i64 28, !57, i64 32, !56, i64 36, !57, i64 40}
!337 = !{!336, !305, i64 0}
!338 = !{!336, !57, i64 24}
!339 = !{!336, !56, i64 28}
!340 = !{!336, !57, i64 32}
!341 = !{!336, !56, i64 36}
!342 = !{!336, !57, i64 40}
!343 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !64, i64 0}
!344 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !112, i64 0, !56, i64 24}
!345 = !{!344, !56, i64 24}
!346 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !64, i64 0}
!347 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !346, i64 0, !75, i64 8}
!348 = !{!347, !75, i64 8}
!349 = !{!347, !346, i64 0}
!350 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !89, i64 0, !57, i64 8}
!351 = !{!350, !89, i64 0}
!352 = !{!350, !57, i64 8}
!353 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !56, i64 0}
!354 = !{!353, !353, i64 0}
!355 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !64, i64 0}
!356 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !64, i64 0}
!357 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !305, i64 0, !317, i64 8, !57, i64 24, !56, i64 28, !57, i64 32, !56, i64 36, !57, i64 40}
!358 = !{!357, !305, i64 0}
!359 = !{!357, !57, i64 24}
!360 = !{!357, !56, i64 28}
!361 = !{!357, !57, i64 32}
!362 = !{!357, !56, i64 36}
!363 = !{!357, !57, i64 40}
!364 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !64, i64 0}
!365 = !{!364, !364, i64 0}
!366 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !133, i64 0, !75, i64 8, !201, i64 16}
!367 = !{!366, !133, i64 0}
!368 = !{!366, !75, i64 8}
!369 = !{!"branch_weights", i32 8, i32 24}
!370 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !197, i64 0, !56, i64 32, !75, i64 288}
!371 = !{!370, !75, i64 288}
!372 = !{!"branch_weights", i32 127, i32 255873}
!373 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESQ_S4_S4_mSR_iEUlvE_", !75, i64 0, !75, i64 8, !64, i64 16}
!374 = !{!373, !75, i64 0}
!375 = !{!373, !75, i64 8}
!376 = !{!"p1 _ZTSN3tev4TaskIvEE", !64, i64 0}
!377 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !376, i64 0}
!378 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !377, i64 0}
!379 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !376, i64 0, !376, i64 8, !378, i64 16}
!380 = !{!379, !376, i64 8}
!381 = !{!376, !376, i64 0}
!382 = !{!71, !71, i64 0}
!383 = !{!379, !376, i64 0}
!384 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !55, i64 0}
!385 = !{!384, !384, i64 0}
!386 = !{!"p1 _ZTSSt13exception_ptr", !64, i64 0}
!387 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !386, i64 0}
!388 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !387, i64 0}
!389 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !386, i64 0, !386, i64 8, !388, i64 16}
!390 = !{!389, !386, i64 8}
!391 = !{!389, !386, i64 0}
!392 = !{!386, !386, i64 0}
!393 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !56, i64 0}
!394 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !64, i64 0}
!395 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !393, i64 0, !394, i64 32}
!396 = !{!395, !394, i64 32}
!397 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !64, i64 0}
!398 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !397, i64 0, !71, i64 8}
!399 = !{!398, !397, i64 0}
!400 = !{!398, !71, i64 8}
!401 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !64, i64 0}
!402 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !401, i64 0}
!403 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !402, i64 0}
!404 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !401, i64 0, !401, i64 8, !403, i64 16}
!405 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !64, i64 0}
!406 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !393, i64 0, !405, i64 32}
!407 = !{!406, !405, i64 32}
!408 = !{!"_ZTSNSt3__18functionIFvvEEE", !406, i64 0}
!409 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !408, i64 0, !57, i64 48, !133, i64 52}
!410 = !{!409, !57, i64 48}
!411 = !{!404, !401, i64 8}
!412 = !{!401, !401, i64 0}
!413 = !{!404, !401, i64 0}
!414 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !64, i64 0}
!415 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !414, i64 0}
!416 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !415, i64 0, !133, i64 8}
!417 = !{!416, !133, i64 8}
!418 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS9_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_EESQ_S4_S4_mSR_iEUlvE_", !57, i64 0, !57, i64 4, !64, i64 8}
!419 = !{!418, !57, i64 0}
!420 = !{!418, !57, i64 4}
!421 = !{!"branch_weights", i32 -1546098377, i32 -693363755}
!422 = !{!"branch_weights", i32 -171659984, i32 343608614}
!423 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!424 = !{!"branch_weights", i32 -840054308, i32 -1751137347}
!425 = distinct !{!425, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!426 = distinct !{!426, !425, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!427 = distinct !{!427, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!428 = distinct !{!428, !427, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!429 = distinct !{!429, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!430 = distinct !{!430, !429, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!431 = distinct !{!431, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS7_EERKNS3_19ImageLoaderSettingsEiEN7IconDir5EntryEEESP_SP_EENS_4pairIT0_T2_EESR_T1_SS_"}
!432 = distinct !{!432, !431, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS7_EERKNS3_19ImageLoaderSettingsEiEN7IconDir5EntryEEESP_SP_EENS_4pairIT0_T2_EESR_T1_SS_: argument 0"}
!433 = distinct !{!433, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcSA_EERKNS6_19ImageLoaderSettingsEiEN7IconDir5EntryEEESS_SS_EENS_4pairIT2_T4_EESU_T3_SV_"}
!434 = distinct !{!434, !433, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcSA_EERKNS6_19ImageLoaderSettingsEiEN7IconDir5EntryEEESS_SS_EENS_4pairIT2_T4_EESU_T3_SV_: argument 0"}
!435 = distinct !{!435, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcSC_EERKNS8_19ImageLoaderSettingsEiEN7IconDir5EntryEEESU_SU_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISW_SY_EESW_SX_SY_"}
!436 = distinct !{!436, !435, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcSC_EERKNS8_19ImageLoaderSettingsEiEN7IconDir5EntryEEESU_SU_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISW_SY_EESW_SX_SY_: argument 0"}
!437 = distinct !{!437, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS5_19ImageLoaderSettingsEiEN7IconDir5EntryEEESR_SR_EENS_4pairIT_T1_EEST_T0_SU_"}
!438 = distinct !{!438, !437, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPZNK3tev14IcoImageLoader4loadERNS_19basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_4__fs10filesystem4pathENS_17basic_string_viewIcS9_EERKNS5_19ImageLoaderSettingsEiEN7IconDir5EntryEEESR_SR_EENS_4pairIT_T1_EEST_T0_SU_: argument 0"}
!439 = distinct !{!439, !99}
!440 = distinct !{!440, !99}
!441 = distinct !{null}
!442 = distinct !{!442, !99}
!443 = distinct !{!443, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!444 = distinct !{!444, !443, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!445 = distinct !{!445, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!446 = distinct !{!446, !445, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!447 = distinct !{!447, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!448 = distinct !{!448, !447, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!449 = distinct !{!449, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!450 = distinct !{!450, !449, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!451 = distinct !{!451, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_"}
!452 = distinct !{!452, !451, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!453 = distinct !{!453, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!454 = distinct !{!454, !453, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!455 = distinct !{!455, !99}
!456 = distinct !{!456, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!457 = distinct !{!457, !456, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!458 = distinct !{!458, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!459 = distinct !{!459, !458, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!460 = distinct !{!460, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!461 = distinct !{!461, !460, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!462 = distinct !{!462, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!463 = distinct !{!463, !462, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!464 = distinct !{!464, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!465 = distinct !{!465, !464, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!466 = distinct !{!466, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!467 = distinct !{!467, !466, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!468 = distinct !{!468, !99}
!469 = distinct !{!469, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!470 = distinct !{!470, !469, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!471 = distinct !{!471, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!472 = distinct !{!472, !471, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!473 = distinct !{!473, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!474 = distinct !{!474, !473, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!475 = distinct !{!475, !99}
!476 = distinct !{!476, !99}
!477 = !{!426}
!478 = !{!428}
!479 = !{!428, !426}
!480 = !{!430, !428, !426}
!481 = !{!87, !82, i64 0}
!482 = !{!87, !82, i64 2}
!483 = !{!438, !436, !434, !432}
!484 = !{!100, !56, i64 8}
!485 = !{!100, !56, i64 9}
!486 = !{!100, !82, i64 10}
!487 = !{!100, !82, i64 12}
!488 = !{!100, !57, i64 16}
!489 = !{!444}
!490 = !{!446, !444}
!491 = !{!448}
!492 = !{!450, !448}
!493 = !{!452}
!494 = !{!454}
!495 = !{!457}
!496 = !{!459}
!497 = !{!467, !465, !463, !461}
!498 = !{!470}
!499 = !{!472}
!500 = !{!474}
!501 = !{!474, !472}
!502 = distinct !{!502, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv"}
!503 = distinct !{!503, !502, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!504 = !{!503}
!505 = distinct !{null, null}
!506 = distinct !{!506, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!507 = distinct !{!507, !506, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!508 = distinct !{!508, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!509 = distinct !{!509, !508, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!510 = distinct !{!510, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!511 = distinct !{!511, !510, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!512 = distinct !{!512, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!513 = distinct !{!513, !512, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!514 = !{!507}
!515 = !{!509}
!516 = !{!509, !507}
!517 = !{!511, !509, !507}
!518 = !{!513}
!519 = distinct !{!519, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!520 = distinct !{!520, !519, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!521 = distinct !{!521, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!522 = distinct !{!522, !521, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!523 = distinct !{!523, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!524 = distinct !{!524, !523, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!525 = distinct !{!525, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!526 = distinct !{!526, !525, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!527 = !{i64 0, i64 8, !190, i64 8, i64 8, !192, i64 16, i64 8, !95, i64 24, i64 8, !194, i64 32, i64 8, !196}
!528 = !{!520}
!529 = !{!522}
!530 = !{!522, !520}
!531 = !{!524, !522, !520}
!532 = !{!526}
!533 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!534 = distinct !{!534, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_"}
!535 = distinct !{!535, !534, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_: argument 0"}
!536 = distinct !{null}
!537 = !{!535}
!538 = !{!"p1 _ZTSNSt3__114error_categoryE", !64, i64 0}
!539 = !{!538, !538, i64 0}
!540 = !{i64 0, i64 4, !96, i64 8, i64 8, !539}
!541 = distinct !{null, null}
!542 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN4tlog6LoggerELi0ELb0EEE", !91, i64 0}
!543 = !{!542, !91, i64 0}
!544 = distinct !{!544, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_"}
!545 = distinct !{!545, !544, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_: argument 0"}
!546 = distinct !{!546, !99}
!547 = !{!545}
!548 = distinct !{!548, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_"}
!549 = distinct !{!549, !548, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESB_: argument 0"}
!550 = distinct !{ptr @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!551 = !{!549}
!552 = !{!234, !234, i64 0}
!553 = distinct !{null, null, null}
!554 = !{!225, !224, i64 0}
!555 = distinct !{!555, !"_ZN4tlog11nowToStringERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE"}
!556 = distinct !{!556, !555, !"_ZN4tlog11nowToStringERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: argument 0"}
!557 = distinct !{!557, !"_ZN4tlog16severityToStringENS_9ESeverityE"}
!558 = distinct !{!558, !557, !"_ZN4tlog16severityToStringENS_9ESeverityE: argument 0"}
!559 = distinct !{!559, !"_ZN4tlog12padFromRightENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc"}
!560 = distinct !{!560, !559, !"_ZN4tlog12padFromRightENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc: argument 0"}
!561 = !{!238, !234, i64 136}
!562 = !{!556}
!563 = !{!558}
!564 = !{!560}
!565 = !{!236, !234, i64 16}
!566 = !{!"_ZTS7winsize", !82, i64 0, !82, i64 2, !82, i64 4, !82, i64 6}
!567 = !{!566, !82, i64 2}
!568 = !{ptr @_ZN4tlog13ConsoleOutputD2Ev}
!569 = distinct !{null}
!570 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !133, i64 0, !234, i64 8}
!571 = !{!570, !133, i64 0}
!572 = !{!79, !64, i64 40}
!573 = !{!79, !57, i64 8}
!574 = distinct !{null}
!575 = !{!79, !75, i64 24}
!576 = !{!139, !89, i64 16}
!577 = !{!139, !89, i64 24}
!578 = !{!139, !89, i64 56}
!579 = distinct !{!579, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!580 = distinct !{!580, !579, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!581 = distinct !{!581, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc"}
!582 = distinct !{!582, !581, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc: argument 0"}
!583 = distinct !{!583, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!584 = distinct !{!584, !583, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!585 = distinct !{!585, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!586 = distinct !{!586, !585, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!587 = distinct !{!587, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc"}
!588 = distinct !{!588, !587, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc: argument 0"}
!589 = distinct !{!589, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!590 = distinct !{!590, !589, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!591 = distinct !{!591, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!592 = distinct !{!592, !591, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!593 = distinct !{!593, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc"}
!594 = distinct !{!594, !593, !"_ZN4tlog11padFromLeftENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEmc: argument 0"}
!595 = distinct !{!595, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_"}
!596 = distinct !{!596, !595, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_: argument 0"}
!597 = distinct !{!597, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!598 = distinct !{!598, !597, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!599 = distinct !{!599, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!600 = distinct !{!600, !599, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!601 = distinct !{!601, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!602 = distinct !{!602, !601, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!603 = distinct !{!603, !243}
!604 = distinct !{!604, !99}
!605 = distinct !{!605, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!606 = distinct !{!606, !605, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!607 = distinct !{!607, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_"}
!608 = distinct !{!608, !607, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_: argument 0"}
!609 = distinct !{!609, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_"}
!610 = distinct !{!610, !609, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_: argument 0"}
!611 = !{!580}
!612 = !{!582}
!613 = !{!584}
!614 = !{!586}
!615 = !{!588}
!616 = !{!590}
!617 = !{!592}
!618 = !{!594}
!619 = !{!596}
!620 = !{!598}
!621 = !{!600}
!622 = !{!602}
!623 = !{!606}
!624 = !{!608}
end_hunk_10
begin_hunk_11_@_ZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy:resume.entry
!1283 = distinct !{!1283, !1282, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1284 = distinct !{!1284, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1285 = distinct !{!1285, !1284, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1286 = distinct !{!1286, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1287 = distinct !{!1287, !1286, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1288 = distinct !{!1288, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1289 = distinct !{!1289, !1288, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1290 = !{!1283}
!1291 = !{!1285}
!1292 = !{!1285, !1283}
!1293 = !{!1287, !1285, !1283}
!1294 = !{!1289}
!1295 = distinct !{!1295, !99}
!1296 = !{!220, !220, i64 0}
!1297 = !{!70, !70, i64 0}
!1298 = distinct !{!1298, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1299 = distinct !{!1299, !1298, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1300 = distinct !{!1300, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1301 = distinct !{!1301, !1300, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1302 = distinct !{!1302, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1303 = distinct !{!1303, !1302, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1304 = distinct !{!1304, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1305 = distinct !{!1305, !1304, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1306 = !{!1299}
!1307 = !{!1301}
!1308 = !{!1301, !1299}
!1309 = !{!1303, !1301, !1299}
!1310 = !{!1305}
!1311 = distinct !{!1311, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1312 = distinct !{!1312, !1311, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1313 = distinct !{!1313, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1314 = distinct !{!1314, !1313, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1315 = distinct !{!1315, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1316 = distinct !{!1316, !1315, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1317 = distinct !{!1317, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1318 = distinct !{!1318, !1317, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1319 = !{!1312}
!1320 = !{!1314}
!1321 = !{!1314, !1312}
!1322 = !{!1316, !1314, !1312}
!1323 = !{!1318}
!1324 = !{!373, !64, i64 16}
!1325 = distinct !{!1325, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1326 = distinct !{!1326, !1325, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1327 = distinct !{!1327, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1328 = distinct !{!1328, !1327, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1329 = distinct !{!1329, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1330 = distinct !{!1330, !1329, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1331 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1332 = distinct !{!1332, !99}
!1333 = !{!1326}
!1334 = !{!1328}
!1335 = !{!1328, !1326}
!1336 = !{!1330, !1328, !1326}
!1337 = !{!"p1 _ZTSNSt3__16threadE", !64, i64 0}
!1338 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1337, i64 0}
!1339 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1338, i64 0}
!1340 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1337, i64 0, !1337, i64 8, !1339, i64 16}
!1341 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1342 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !404, i64 0, !1341, i64 24}
!1343 = !{!"_ZTSNSt3__115recursive_mutexE", !56, i64 0}
!1344 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !56, i64 0}
!1345 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1344, i64 0}
!1346 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1345, i64 0}
!1347 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1346, i64 0}
!1348 = !{!"_ZTSNSt3__16atomicIlEE", !1347, i64 0}
!1349 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !56, i64 0}
!1350 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1348, i64 0, !1349, i64 8, !57, i64 40}
!1351 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !56, i64 0}
!1352 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1351, i64 0}
!1353 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1352, i64 0}
!1354 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1353, i64 0}
!1355 = !{!"_ZTSNSt3__16atomicImEE", !1354, i64 0}
!1356 = !{!"_ZTSN3tev10ThreadPoolE", !133, i64 8, !1340, i64 16, !1342, i64 40, !1343, i64 72, !1350, i64 112, !1343, i64 160, !1355, i64 200, !1355, i64 208}
!1357 = !{!1356, !133, i64 8}
!1358 = !{!409, !133, i64 52}
!1359 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1360 = distinct !{null, null, null}
!1361 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !64, i64 0}
!1362 = !{!1361, !64, i64 0}
!1363 = distinct !{!1363, !99}
!1364 = distinct !{null, null, null, null, null, null, null, null, null}
!1365 = distinct !{null, null, null, null}
!1366 = distinct !{null}
!1367 = distinct !{!1367, !99}
!1368 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1369 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1370 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1371 = distinct !{null}
!1372 = !{!"_ZTSNSt3__17promiseIvEE", !220, i64 0}
!1373 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !395, i64 0, !1372, i64 48}
!1374 = !{!1373, !220, i64 48}
!1375 = distinct !{!1375, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1376 = distinct !{!1376, !1375, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1377 = distinct !{!1377, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1378 = distinct !{!1378, !1377, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1379 = distinct !{!1379, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1380 = distinct !{!1380, !1379, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1381 = distinct !{!1381, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1382 = distinct !{!1382, !1381, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1383 = distinct !{!1383, !99, !273, !274}
!1384 = distinct !{!1384, !243}
!1385 = distinct !{!1385, !99, !273}
!1386 = !{!1376}
!1387 = !{!1378}
!1388 = !{!1378, !1376}
!1389 = !{!1380, !1378, !1376}
!1390 = !{!1382}
!1391 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_1EENS_4TaskIvEES4_S4_mT0_iEUlmmE_", !64, i64 0}
!1392 = !{!1391, !64, i64 0}
!1393 = distinct !{!1393, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1394 = distinct !{!1394, !1393, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1395 = distinct !{!1395, !99}
!1396 = !{!414, !414, i64 0}
!1397 = !{!1394}
!1398 = distinct !{!1398, !99}
!1399 = !{!415, !414, i64 0}
!1400 = distinct !{!1400, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1401 = distinct !{!1401, !1400, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1402 = distinct !{!1402, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1403 = distinct !{!1403, !1402, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1404 = distinct !{!1404, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1405 = distinct !{!1405, !1404, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1406 = distinct !{!1406, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1407 = distinct !{!1407, !1406, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1408 = distinct !{!1408, !99}
!1409 = distinct !{!1409, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1410 = distinct !{!1410, !1409, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1411 = !{!1401}
!1412 = !{!1403}
!1413 = !{!1403, !1401}
!1414 = !{!1405, !1403, !1401}
!1415 = !{!1407}
!1416 = !{!"branch_weights", i32 1, i32 127}
!1417 = !{!1410}
!1418 = distinct !{!1418, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1419 = distinct !{!1419, !1418, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1420 = distinct !{!1420, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1421 = distinct !{!1421, !1420, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1422 = distinct !{!1422, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1423 = distinct !{!1423, !1422, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1424 = distinct !{!1424, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1425 = distinct !{!1425, !1424, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1426 = !{!1419}
!1427 = !{!1421}
!1428 = !{!1421, !1419}
!1429 = !{!1423, !1421, !1419}
!1430 = !{!1425}
!1431 = distinct !{!1431, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1432 = distinct !{!1432, !1431, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1433 = distinct !{!1433, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1434 = distinct !{!1434, !1433, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1435 = distinct !{!1435, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1436 = distinct !{!1436, !1435, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1437 = distinct !{!1437, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1438 = distinct !{!1438, !1437, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1439 = !{!1432}
!1440 = !{!1434}
!1441 = !{!1434, !1432}
!1442 = !{!1436, !1434, !1432}
!1443 = !{!1438}
!1444 = distinct !{!1444, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1445 = distinct !{!1445, !1444, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1446 = distinct !{!1446, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1447 = distinct !{!1447, !1446, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1448 = distinct !{!1448, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1449 = distinct !{!1449, !1448, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1450 = distinct !{!1450, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1451 = distinct !{!1451, !1450, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1452 = !{!1445}
!1453 = !{!1447}
!1454 = !{!1447, !1445}
!1455 = !{!1449, !1447, !1445}
!1456 = !{!1451}
!1457 = !{!418, !64, i64 8}
!1458 = distinct !{!1458, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1459 = distinct !{!1459, !1458, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1460 = distinct !{!1460, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1461 = distinct !{!1461, !1460, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1462 = distinct !{!1462, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1463 = distinct !{!1463, !1462, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1464 = distinct !{!1464, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1465 = distinct !{!1465, !1464, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1466 = distinct !{!1466, !99}
!1467 = distinct !{!1467, !99}
!1468 = !{!1459}
!1469 = !{!1461}
!1470 = !{!1461, !1459}
!1471 = !{!1463, !1461, !1459}
!1472 = !{!1465}
!1473 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNKS_14IcoImageLoader4loadERNS2_19basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS8_EERKNS_19ImageLoaderSettingsEiE3$_2EENS_4TaskIvEES4_S4_mT0_iEUliiE_", !64, i64 0}
!1474 = !{!1473, !64, i64 0}
!1475 = !{!"_ZTSZNK3tev14IcoImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiE3$_2", !78, i64 0, !191, i64 8, !83, i64 16, !193, i64 24, !195, i64 32}
!1476 = !{!1475, !78, i64 0}
!1477 = !{!1475, !83, i64 16}
!1478 = !{!1475, !191, i64 8}
!1479 = !{!1475, !193, i64 24}
!1480 = !{!"_ZTSNSt3__14spanIKhLm18446744073709551615EEE", !89, i64 0, !75, i64 8}
!1481 = !{!1480, !89, i64 0}
!1482 = !{!1475, !195, i64 32}
!1483 = !{!"branch_weights", i32 -2004248167, i32 118691432}
!1484 = distinct !{!1484, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1485 = distinct !{!1485, !1484, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1486 = distinct !{!1486, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!1487 = distinct !{!1487, !1486, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1488 = distinct !{!1488, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1489 = distinct !{!1489, !1488, !"_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1490 = distinct !{!1490, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv"}
!1491 = distinct !{!1491, !1490, !"_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1492 = distinct !{!1492, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_"}
!1493 = distinct !{!1493, !1492, !"_ZN3fmt3v126formatIJRN7nanogui5ArrayIiLm2EEERKiS7_EEENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!1494 = distinct !{!1494, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1495 = distinct !{!1495, !1494, !"_ZN3fmt3v126formatIJRKmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1496 = distinct !{!1496, !99}
!1497 = distinct !{!1497, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1498 = distinct !{!1498, !1497, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1499 = distinct !{!1499, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1500 = distinct !{!1500, !1499, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1501 = distinct !{!1501, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!1502 = distinct !{!1502, !1501, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!1503 = distinct !{!1503, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!1504 = distinct !{!1504, !1503, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!1505 = distinct !{!1505, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!1506 = distinct !{!1506, !1505, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPN3tev11ChannelViewIfEEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!1507 = distinct !{!1507, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!1508 = distinct !{!1508, !1507, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPN3tev11ChannelViewIfEEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!1509 = distinct !{!1509, !99}
!1510 = distinct !{!1510, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!1511 = distinct !{!1511, !1510, !"_ZN3fmt3v126formatIJRtEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!1512 = distinct !{!1512, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1513 = distinct !{!1513, !1512, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1514 = distinct !{!1514, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1515 = distinct !{!1515, !1514, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1516 = distinct !{!1516, !99}
!1517 = distinct !{!1517, !99}
!1518 = !{!"branch_weights", i32 0, i32 -1870692793, i32 793657734, i32 -689682259, i32 287453131}
!1519 = !{!1485}
!1520 = !{!1487, !1485}
!1521 = !{!1489}
!1522 = !{!1491, !1489}
!1523 = !{!1493}
!1524 = !{!1495}
!1525 = !{!1498}
!1526 = !{!1500}
!1527 = !{!1508, !1506, !1504, !1502}
!1528 = !{!1511}
!1529 = !{!1513}
!1530 = !{!1515}
!1531 = !{!1515, !1513}
!1532 = !{!"branch_weights", i32 0, i32 -1870692793, i32 793657734, i32 -689682259, i32 287453131, i32 292584607}
end_hunk_11
