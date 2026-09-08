Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/FitsImageLoader?download=true
inline.NumInlined: 6970
inline.NumDeleted: 2790
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.8, i64 17, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr425)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.fg = load i64, ptr %.sroa.2.0..sroa_idx.i16.i, align 16, !tbaa !114, !noalias !523 ; 8 uses
  %i.fh = icmp ult i64 %i.fg, -9
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !523
  %i.fj = icmp ult i64 %i.fg, 23
  br i1 %i.fj, label %bb.ab, label %.thread.i.i.i.i68

.thread.i.i.i.i68:                                ; preds = %bb.aa
  %i.fk = or i64 %i.fg, 7                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 23
  %i.fm = add nuw i64 %i.fk, 1
  %i.fn = select i1 %i.fl, i64 25, i64 %i.fm      ; 2 uses
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #34
          to label %.from..noexc.i69 unwind label %bb.ad, !noalias !521 ; 2 uses

.from..noexc.i69:                                 ; preds = %.thread.i.i.i.i68
  store ptr %i.fo, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !97, !alias.scope !523
  %i.fp = or i64 %i.fn, 1
  store i64 %i.fp, ptr %.reload.addr428, align 16, !alias.scope !523
  store i64 %i.fg, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !97, !alias.scope !523
  br label %.from.324

bb.ab:                                            ; preds = %bb.aa
  %i.fq = trunc nuw nsw i64 %i.fg to i8
  %i.fr = shl nuw nsw i8 %i.fq, 1
  store i8 %i.fr, ptr %.reload.addr428, align 16, !alias.scope !523
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i73, label %.from.326, label %.from.324

.from.324:                                        ; preds = %bb.ab, %.from..noexc.i69
  %.017.i.i.i.i70 = phi ptr [ %i.fo, %.from..noexc.i69 ], [ %i.en, %bb.ab ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i70, ptr align 1 %i.fi, i64 %i.fg, i1 false)
  br label %.from.326

.from.326:                                        ; preds = %bb.ab, %.from.324
  %.018.i.i.i.i71 = phi ptr [ %.017.i.i.i.i70, %.from.324 ], [ %i.en, %bb.ab ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i71, i64 %i.fg
  store i8 0, ptr %i.fs, align 1, !tbaa !97
  %i.ft = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !521 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ft, %i.cv
  br i1 %.not.i.i.i72, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.from.326
  call void @free(ptr noundef %i.ft) #32, !noalias !521
  br label %bb.af

bb.ad:                                            ; preds = %bb.z, %.thread.i.i.i.i68
  %i.fu = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.fv = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !521 ; 2 uses
  %.not.i.i7.i66 = icmp eq ptr %i.fv, %i.cv
  br i1 %.not.i.i7.i66, label %.from.380, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.fv) #32, !noalias !521
  br label %.from.380

bb.af:                                            ; preds = %.from.326, %bb.ac
  %i.fw = load i8, ptr %.reload.addr428, align 16 ; 2 uses
  %i.fx = trunc i8 %i.fw to i1                    ; 2 uses
  %i.fy = load ptr, ptr %.sroa.11.0..sroa_idx, align 16
  %i.fz = select i1 %i.fx, ptr %i.fy, ptr %i.en
  %i.ga = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %i.gb = lshr i8 %i.fw, 1
  %i.gc = zext nneg i8 %i.gb to i64
  %i.gd = select i1 %i.fx, i64 %i.ga, i64 %i.gc
  invoke fastcc void @_ZN3tev12_GLOBAL__N_119throwOnCfitsioErrorEiNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(i32 noundef %i.ff, ptr %i.fz, i64 %i.gd)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ge = load i8, ptr %.reload.addr428, align 16
  %i.gf = trunc i8 %i.ge to i1
  br i1 %i.gf, label %bb.ah, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79

bb.ah:                                            ; preds = %bb.ag
  %i.gg = load ptr, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !97
  %i.gh = load i64, ptr %.reload.addr428, align 16
  %i.gi = and i64 %i.gh, -2
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79: ; preds = %bb.ag, %bb.ah
  %i.gj = load i32, ptr %.reload.addr441, align 16, !tbaa !99
  %.not37 = icmp eq i32 %i.gj, 0
  br i1 %.not37, label %bb.aj, label %.thread175

.thread175:                                       ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79
  %i.gk = load i32, ptr %.reload.addr440, align 4, !tbaa !99
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %.reload.addr440, align 4, !tbaa !99
  br label %.thread177

.from.355:                                        ; preds = %.from..lr.ph
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.380

bb.ai:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.go = load i8, ptr %.reload.addr428, align 16
  %i.gp = trunc i8 %i.go to i1
  br i1 %i.gp, label %.body74.from., label %.from.380

.body74.from.:                                    ; preds = %bb.ai
  %i.gq = load ptr, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !97
  %i.gr = load i64, ptr %.reload.addr428, align 16
  %i.gs = and i64 %i.gr, -2
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gs) #36
  br label %.from.380

bb.aj:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79
  %.reload = load i32, ptr %.spill.addr, align 4, !tbaa !116
  %i.gt = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  invoke fastcc void @_ZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.76") align 8 %.reload.addr425, ptr noundef %i.gt, i32 noundef %storemerge220, i32 noundef %.reload)
          to label %bb.ak unwind label %.from.341

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load ptr, ptr %i.ci, align 16, !tbaa !81
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load atomic i32, ptr %i.gv acquire, align 4
  %i.gx = icmp slt i32 %i.gw, 2
  br i1 %i.gx, label %bb.al, label %AfterCoroSave

bb.al:                                            ; preds = %bb.ak
  %i.gy = load ptr, ptr %i.ci, align 16, !tbaa !81
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = atomicrmw add ptr %i.gz, i32 -1 acq_rel, align 4
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %bb.am, label %.thread.sink.split

bb.am:                                            ; preds = %bb.al
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.am
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !118 ; 7 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !125
  %i.hf = and i32 %i.he, 8
  %.not.i.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i.i, label %bb.an, label %.thread.sink.split

bb.an:                                            ; preds = %.noexc.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !126 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.hh, %i.hj
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.an
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.hh, %.from..lr.ph.i.i.i.i.i ], [ %i.hz, %.noexc2.i.i ] ; 2 uses
  %i.ho = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.hp = load i8, ptr %i.hk, align 8             ; 2 uses
  %i.hq = trunc i8 %i.hp to i1                    ; 2 uses
  %i.hr = load ptr, ptr %i.hl, align 8
  %i.hs = select i1 %i.hq, ptr %i.hr, ptr %i.hm
  %i.ht = load i64, ptr %i.hn, align 8
  %i.hu = lshr i8 %i.hp, 1
  %i.hv = zext nneg i8 %i.hu to i64
  %i.hw = select i1 %i.hq, i64 %i.ht, i64 %i.hv
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !71
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr %i.hs, i64 %i.hw, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hz, %i.hj
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
  %i.ia = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ia) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.ak
  store i1 false, ptr %index.addr443, align 4
  %i.ib = call noundef zeroext i1 @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr425, ptr nonnull %i.c) #32
  br i1 %i.ib, label %AfterCoroEnd, label %bb.ap

.from.341:                                        ; preds = %bb.aj
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.380

bb.ap:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr425, align 16, !tbaa !132, !noalias !524 ; 3 uses
  %.not.i81 = icmp eq ptr %.pr, null
  br i1 %.not.i81, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.id = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body83.from.338, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aq, %bb.an, %.noexc.i.i, %bb.al
  store ptr null, ptr %.reload.addr425, align 16, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ap
  %i.if = load ptr, ptr %.sroa.2.0..sroa_idx.i16.i113420, align 8, !tbaa !135, !noalias !525 ; 7 uses
  store ptr null, ptr %.sroa.2.0..sroa_idx.i16.i113420, align 8, !tbaa !135, !noalias !525
  invoke void @_ZNSt3__113__assoc_stateINS_8optionalIN3tev9ImageDataEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %.reload.addr422, ptr noundef nonnull align 8 dereferenceable(408) %i.if)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.thread
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = atomicrmw add ptr %i.ig, i64 -1 acq_rel, align 8
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ij = load ptr, ptr %i.if, align 8, !tbaa !71
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #32, !inline_history !2
  br label %bb.au

bb.at:                                            ; preds = %.thread
  %i.im = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = atomicrmw add ptr %i.in, i64 -1 acq_rel, align 8
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.body83.from.335, label %.from..body83

.body83.from.335:                                 ; preds = %bb.at
  %i.iq = load ptr, ptr %i.if, align 8, !tbaa !71
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #32, !inline_history !2
  br label %.from..body83

bb.au:                                            ; preds = %bb.ar, %bb.as
  call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr425) #32
  %i.it = load i8, ptr %i.eo, align 16, !tbaa !138, !range !139, !noundef !140
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.av, label %.thread177

bb.av:                                            ; preds = %bb.au
  %i.iv = load ptr, ptr %i.eq, align 16, !tbaa !145 ; 12 uses
  %i.iw = load ptr, ptr %i.ep, align 8, !tbaa !146
  %i.ix = icmp ult ptr %i.iv, %i.iw
  br i1 %i.ix, label %.from.344, label %bb.aw

.from.344:                                        ; preds = %bb.av
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.iv, i8 0, i64 24, i1 false)
  %i.iz = load <2 x ptr>, ptr %.reload.addr422, align 8, !tbaa !148
  store <2 x ptr> %i.iz, ptr %i.iv, align 8, !tbaa !148
  %i.ja = load ptr, ptr %i.ct, align 8, !tbaa !148
  store ptr %i.ja, ptr %i.iy, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr422, i8 0, i64 24, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 24 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, i8 0, i64 24, i1 false)
  %i.jd = load <2 x ptr>, ptr %i.cu, align 16, !tbaa !150
  store <2 x ptr> %i.jd, ptr %i.jb, align 8, !tbaa !150
  %i.je = load ptr, ptr %.sroa.2.0..sroa_idx.i17.i, align 16, !tbaa !150
  store ptr %i.je, ptr %i.jc, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.jf, ptr noundef nonnull align 8 dereferenceable(44) %i.cw, i64 44, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 96 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i8 0, i64 24, i1 false)
  %i.ji = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !152
  store <2 x ptr> %i.ji, ptr %i.jg, align 8, !tbaa !152
  %i.jj = load ptr, ptr %i.et, align 8, !tbaa !152
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i8 0, i64 24, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.jk, ptr noundef nonnull align 16 dereferenceable(136) %i.es, i64 136, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 280
  br label %.from.347

bb.aw:                                            ; preds = %bb.av
  %i.jn = invoke noundef ptr @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr429, ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr422)
          to label %.from.347 unwind label %bb.ax

.body83.from.338:                                 ; preds = %bb.aq
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body83

.from..body83:                                    ; preds = %.body83.from.338, %.body83.from.335, %bb.at
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.jo, %.body83.from.338 ], [ %i.im, %.body83.from.335 ], [ %i.im, %bb.at ]
  call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr425) #32
  br label %.from.380

bb.ax:                                            ; preds = %bb.aw
  %i.jp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.jq = load i8, ptr %i.eo, align 16, !tbaa !138, !range !139, !noundef !140
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from., label %.from.380

_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from.: ; preds = %bb.ax
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %.reload.addr422) #32
  br label %.from.380

.from.347:                                        ; preds = %bb.aw, %.from.344
  %.0.i85 = phi ptr [ %i.jm, %.from.344 ], [ %i.jn, %bb.aw ]
  store ptr %.0.i85, ptr %i.eq, align 16, !tbaa !145
  %.pre226 = load i8, ptr %i.eo, align 16, !tbaa !138, !range !139
  %i.js = trunc nuw i8 %.pre226 to i1
  br i1 %i.js, label %bb.ay, label %.thread177

bb.ay:                                            ; preds = %.from.347
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %.reload.addr422) #32
  br label %.thread177

.thread177:                                       ; preds = %bb.ay, %.from.347, %bb.au, %.thread175
  %storemerge220.reload = load i32, ptr %storemerge220.spill.addr, align 8, !tbaa !116 ; 2 uses
  %i.jt = load i32, ptr %.reload.addr432, align 16, !tbaa !99
  %.not.not.not = icmp slt i32 %storemerge220.reload, %i.jt
  %i.ju = add nuw nsw i32 %storemerge220.reload, 1
  br i1 %.not.not.not, label %.from..lr.ph, label %._crit_edge, !llvm.loop !511

._crit_edge:                                      ; preds = %.thread177
  %.pre227 = load i32, ptr %.reload.addr440, align 4, !tbaa !99 ; 2 uses
  %i.jv = icmp sgt i32 %.pre227, 0
  br i1 %i.jv, label %bb.az, label %._crit_edge.thread

bb.az:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.jw = icmp eq i32 %.pre227, 1
  %i.jx = select i1 %i.jw, ptr @.str.10, ptr @.str.11
  store ptr %i.jx, ptr %i.b, align 8, !tbaa !106
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc88 unwind label %.from.375

.noexc88:                                         ; preds = %bb.az
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.jz, i32 noundef 8, ptr nonnull @.str.9, i64 35, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr440, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit unwind label %.from.375

_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit: ; preds = %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %._crit_edge.thread

.from.375:                                        ; preds = %bb.az, %.noexc88
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.from.380

._crit_edge.thread:                               ; preds = %bb.x, %_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit, %._crit_edge
  %i.kb = load ptr, ptr %.reload.addr429, align 8, !tbaa !154 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 16, !tbaa !145 ; 2 uses
  %i.ke = icmp eq ptr %i.kb, %i.kd
  br i1 %i.ke, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %._crit_edge.thread
  %i.kf = call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.12)
          to label %bb.bb unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.kf, align 8, !tbaa !71
  invoke void @__cxa_throw(ptr nonnull %i.kf, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.by unwind label %.thread451

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91.thread: ; preds = %bb.ba
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.373.sink.split
end_hunk_0
begin_hunk_1_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  %i.ld = load ptr, ptr %.reload.addr442, align 16, !tbaa !75 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i92 unwind label %bb.bk

.noexc.i92:                                       ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ld, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr429)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.bj
  %i.lh = load ptr, ptr %.reload.addr429, align 8, !tbaa !154 ; 5 uses
  %.not.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.li = load ptr, ptr %i.kc, align 16, !tbaa !145 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.lh, %i.li
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bl, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.lj, %.lr.ph.i.i.i.i ], [ %i.li, %bb.bl ]
  %i.lj = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.lj) #32
  %.not.i.i.i.i93 = icmp eq ptr %i.lh, %i.lj
  br i1 %.not.i.i.i.i93, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr429, align 8, !tbaa !154
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.bl, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.lk = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.lh, %bb.bl ] ; 2 uses
  store ptr %i.lh, ptr %i.kc, align 16, !tbaa !145
  %i.ll = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !146
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lp) #36
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %.val.val.i = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 0, ptr %i.a, align 4, !tbaa !99
  %i.lq = invoke i32 @ffclos(ptr noundef %.val.val.i, ptr noundef nonnull %i.a)
          to label %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit" unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #37
  unreachable

"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit": ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.lt = load i8, ptr %.reload.addr427, align 8
  %i.lu = trunc i8 %i.lt to i1
  br i1 %i.lu, label %bb.bo, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94

bb.bo:                                            ; preds = %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit"
  %i.lv = load ptr, ptr %i.ea, align 8, !tbaa !97
  %i.lw = load i64, ptr %.reload.addr427, align 8
  %i.lx = and i64 %i.lw, -2
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lx) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94

.from.380:                                        ; preds = %.from.375, %.from.373, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91370, %.from.355, %.body74.from., %bb.ad, %bb.ae, %bb.ai, %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from., %.from.341, %.from..body83, %bb.ax, %.split183
  %.pn40.pn = phi { ptr, i32 } [ %.pn40182, %.from.373 ], [ %i.kk, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91370 ], [ %i.ka, %.from.375 ], [ %i.jp, %bb.ax ], [ %i.gn, %bb.ai ], [ %i.gm, %.from.355 ], [ %i.fu, %bb.ae ], [ %i.gn, %.body74.from. ], [ %i.fu, %bb.ad ], [ %i.jp, %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from. ], [ %i.ic, %.from.341 ], [ %eh.lpad-body84, %.from..body83 ], [ %i.kn, %.split183 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr429) #32
  br label %.from.385

.from.385:                                        ; preds = %.from.382, %.from.380
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %.from.380 ], [ %i.fc, %.from.382 ]
  call fastcc void @"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev"(ptr nonnull %.reload.addr436, i8 1) #32
  br label %bb.bp

bb.bp:                                            ; preds = %.from.385, %.from.387
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %.from.385 ], [ %i.fb, %.from.387 ] ; 2 uses
  %i.ly = load i8, ptr %.reload.addr427, align 8
  %i.lz = trunc i8 %i.ly to i1
  br i1 %i.lz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from., label %.from..split392

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from.: ; preds = %bb.bp
  %i.ma = load ptr, ptr %i.ea, align 8, !tbaa !97
  %i.mb = load i64, ptr %.reload.addr427, align 8
  %i.mc = and i64 %i.mb, -2
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.mc) #36
  br label %.from..split392

.from..split392:                                  ; preds = %bb.bp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit64, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit65.from., %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit65.from.313, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from., %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit397, %.from.395, %.from.400
  %.pn41.pn = phi { ptr, i32 } [ %.pn41168, %.from.400 ], [ %i.bd, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit397 ], [ %i.bg, %.split ], [ %i.ay, %.from.395 ], [ %.pn40.pn.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from. ], [ %i.do, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit64 ], [ %i.ev, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit65.from.313 ], [ %.pn35171, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit65.from. ], [ %.pn40.pn.pn.pn, %bb.bp ]
  %.13 = extractvalue { ptr, i32 } %.pn41.pn, 0
  %i.md = call ptr @__cxa_begin_catch(ptr %.13) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr442)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %.from..split392
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94 unwind label %.from.410

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94: ; preds = %bb.bo, %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit", %bb.bq
  %i.me = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = atomicrmw add ptr %i.mf, i32 -1 acq_rel, align 4 ; 2 uses
  %i.mh = icmp slt i32 %i.mg, 1
  br i1 %i.mh, label %bb.br, label %_ZN3tev5Latch9countDownEv.exit.i96

bb.br:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94
  %i.mi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i101 unwind label %.from..loopexit.split-lp.i.i98

.noexc.i.i101:                                    ; preds = %bb.br
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !118 ; 7 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !125
  %i.ml = and i32 %i.mk, 8
  %.not.i.i.i.i102 = icmp eq i32 %i.ml, 0
  br i1 %.not.i.i.i.i102, label %bb.bs, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.bs:                                            ; preds = %.noexc.i.i101
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !126 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i103 = icmp eq ptr %i.mn, %i.mp
  br i1 %.not12.i.i.i.i.i103, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i104

.from..lr.ph.i.i.i.i.i104:                        ; preds = %bb.bs
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 33
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  br label %.from..noexc2.i.i108

.from..noexc2.i.i108:                             ; preds = %.noexc2.i.i108, %.from..lr.ph.i.i.i.i.i104
  %.sroa.09.013.i.i.i.i.i105 = phi ptr [ %i.mn, %.from..lr.ph.i.i.i.i.i104 ], [ %i.nf, %.noexc2.i.i108 ] ; 2 uses
  %i.mu = load ptr, ptr %.sroa.09.013.i.i.i.i.i105, align 8, !tbaa !130 ; 2 uses
  %i.mv = load i8, ptr %i.mq, align 8             ; 2 uses
  %i.mw = trunc i8 %i.mv to i1                    ; 2 uses
  %i.mx = load ptr, ptr %i.mr, align 8
  %i.my = select i1 %i.mw, ptr %i.mx, ptr %i.ms
  %i.mz = load i64, ptr %i.mt, align 8
  %i.na = lshr i8 %i.mv, 1
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = select i1 %i.mw, i64 %i.mz, i64 %i.nb
  %i.nd = load ptr, ptr %i.mu, align 8, !tbaa !71
  %i.ne = load ptr, ptr %i.nd, align 8
  invoke void %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, ptr %i.my, i64 %i.nc, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i108 unwind label %.from..loopexit.i.i106, !inline_history !0

.noexc2.i.i108:                                   ; preds = %.from..noexc2.i.i108
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i105, i64 16 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %i.nf, %i.mp
  br i1 %.not.i.i.i.i.i109, label %_ZN3tev5Latch9countDownEv.exit.i96, label %.from..noexc2.i.i108

.from..loopexit.i.i106:                           ; preds = %.from..noexc2.i.i108
  %lpad.loopexit.i.i107 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

.from..loopexit.split-lp.i.i98:                   ; preds = %bb.br
  %lpad.loopexit.split-lp.i.i99 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

bb.bt:                                            ; preds = %.from..loopexit.split-lp.i.i98, %.from..loopexit.i.i106
  %lpad.phi.i.i100 = phi { ptr, i32 } [ %lpad.loopexit.i.i107, %.from..loopexit.i.i106 ], [ %lpad.loopexit.split-lp.i.i99, %.from..loopexit.split-lp.i.i98 ]
  %i.ng = extractvalue { ptr, i32 } %lpad.phi.i.i100, 0
  call void @__clang_call_terminate(ptr %i.ng) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i96:               ; preds = %.noexc2.i.i108, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94
  %i.nh = icmp slt i32 %i.mg, 2
  br i1 %i.nh, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i101, %bb.bs, %_ZN3tev5Latch9countDownEv.exit.i96
  %i.ni = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !98 ; 2 uses
  %i.nk = inttoptr i64 %i.nj to ptr               ; 3 uses
  store ptr %i.nk, ptr %.reload.addr427, align 8
  %.not.i110 = icmp eq i64 %i.nj, 0
  br i1 %.not.i110, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend260

AfterCoroSuspend260:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.c, align 8
  %index.addr444 = getelementptr inbounds nuw i8, ptr %i.c, i64 780
  store i1 true, ptr %index.addr444, align 4
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr nonnull %i.nk)
  br label %AfterCoroEnd

bb.bu:                                            ; preds = %.from..split392
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.417 unwind label %bb.bx

.from.410:                                        ; preds = %bb.bq
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.417

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i96
  %i.no = load ptr, ptr %i.m, align 8, !tbaa !82  ; 5 uses
  %.not.i.i111 = icmp eq ptr %i.no, null
  br i1 %.not.i.i111, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = atomicrmw add ptr %i.np, i64 -1 acq_rel, align 8
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.bw, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.bw:                                            ; preds = %bb.bv
  %i.ns = load ptr, ptr %i.no, align 8, !tbaa !71
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(24) %i.no) #32, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.no) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.bv, %bb.bw
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr442) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 784) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend260
  ret void

.body.from.417:                                   ; preds = %bb.bu, %.from.410
  %.pn42 = phi { ptr, i32 } [ %i.nn, %.from.410 ], [ %i.nm, %bb.bu ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr442) #32
  br label %.body

.body:                                            ; preds = %.body.from.417, %.body.from.414, %.body.from.
  %.merged45 = phi { ptr, i32 } [ %.pn42, %.body.from.417 ], [ %i.h, %.body.from. ], [ %i.g, %.body.from.414 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 784) #32
  resume { ptr, i32 } %.merged45

bb.bx:                                            ; preds = %bb.bu
  %i.nv = landingpad { ptr, i32 }
          catch ptr null
  %i.nw = extractvalue { ptr, i32 } %i.nv, 0
  call void @__clang_call_terminate(ptr %i.nw) #37
  unreachable

bb.by:                                            ; preds = %bb.bc, %bb.f
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !75, !noalias !528 ; 5 uses
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !160, !noalias !528 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #35
          to label %bb.e unwind label %bb.f, !noalias !528

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #32, !noalias !528
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !528 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !160, !noalias !528
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #32, !noalias !528
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !98
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !98
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

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr %i.h, ptr %i.i, align 8, !tbaa !97
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !97
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
end_hunk_1
begin_hunk_2_@_ZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileii:.from.
  %i.acy = fcmp une float %i.acx, 0.000000e+00
  %or.cond11 = select i1 %i.acw, i1 true, i1 %i.acy
  br i1 %or.cond11, label %bb.ew, label %.thread447

bb.ew:                                            ; preds = %bb.ev
  %i.acz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc307 unwind label %.from.843

.noexc307:                                        ; preds = %bb.ew
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRfS3_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ada, i32 noundef 4, ptr nonnull @.str.67, i64 46, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr940, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr900, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr901)
          to label %_ZN4tlog5debugIJRiRfS2_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit unwind label %.from.843

_ZN4tlog5debugIJRiRfS2_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit: ; preds = %.noexc307
  %i.adb = load float, ptr %.reload.addr900, align 16, !tbaa !69
  %.spill.addr891 = getelementptr inbounds nuw i8, ptr %i.c, i64 1360 ; 2 uses
  store float %i.adb, ptr %.spill.addr891, align 16
  %i.adc = load float, ptr %.reload.addr901, align 16, !tbaa !69
  %.spill.addr894 = getelementptr inbounds nuw i8, ptr %i.c, i64 1364 ; 2 uses
  store float %i.adc, ptr %.spill.addr894, align 4
  %i.add = load i64, ptr %.reload.addr932, align 16, !tbaa !101
  %.not = icmp eq i64 %i.add, 0
  br i1 %.not, label %.thread447, label %.from..lr.ph503.preheader

.from..lr.ph503.preheader:                        ; preds = %_ZN4tlog5debugIJRiRfS2_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %.080502.spill.addr = getelementptr inbounds nuw i8, ptr %i.c, i64 1336 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.c, i64 1204
  %i.adf = getelementptr inbounds nuw i8, ptr %i.c, i64 1192
  %i.adg = getelementptr inbounds nuw i8, ptr %i.c, i64 1184
  %i.adh = getelementptr inbounds nuw i8, ptr %i.c, i64 1200
  %i.adi = getelementptr inbounds nuw i8, ptr %i.c, i64 568 ; 2 uses
  %index.addr951 = getelementptr inbounds nuw i8, ptr %i.c, i64 395
  %i.adj = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  br label %.from..lr.ph503

.from.843:                                        ; preds = %bb.ew, %.noexc307
  %i.adk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

.from..lr.ph503:                                  ; preds = %.from.789, %.from..lr.ph503.preheader
  %.080502 = phi i64 [ %i.afu, %.from.789 ], [ 0, %.from..lr.ph503.preheader ] ; 2 uses
  store i64 %.080502, ptr %.080502.spill.addr, align 8
  %i.adl = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.adm = icmp eq i8 %i.adl, 0
  br i1 %i.adm, label %bb.ex, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !234

bb.ex:                                            ; preds = %.from..lr.ph503
  %i.adn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i309 = icmp eq i32 %i.adn, 0
  br i1 %.not.i309, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.ez unwind label %.body310.from.

bb.ez:                                            ; preds = %bb.ey
  %i.ado = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body310.from.:                                   ; preds = %bb.ey
  %i.adp = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %.from.849

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.ez, %bb.ex, %.from..lr.ph503
  %i.adq = load ptr, ptr %.reload.addr897, align 8, !tbaa !235
  %i.adr = getelementptr inbounds nuw [72 x i8], ptr %i.adq, i64 %.080502 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 40
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !214, !noalias !647 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  %i.adv = load i32, ptr %i.adu, align 8, !tbaa !221, !noalias !647
  %.not.i312 = icmp eq i32 %i.adv, 7
  br i1 %.not.i312, label %bb.fc, label %bb.fa, !prof !222

bb.fa:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.adw = call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !647 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.adw, ptr noundef nonnull @.str.105)
          to label %bb.fb unwind label %.body310.from.793, !noalias !647

bb.fb:                                            ; preds = %bb.fa
  invoke void @__cxa_throw(ptr nonnull %i.adw, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.noexc314 unwind label %.body310.from..loopexit.split-lp

.noexc314:                                        ; preds = %bb.fb
  unreachable

.body310.from.793:                                ; preds = %bb.fa
  %i.adx = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.adw) #32, !noalias !647
  br label %.from.849

bb.fc:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload896 = load float, ptr %.spill.addr894, align 4, !tbaa !237
  %.reload893 = load float, ptr %.spill.addr891, align 16, !tbaa !237
  %.reload885 = load i64, ptr %.spill.addr883, align 8, !tbaa !237
  %.reload = load i64, ptr %.spill.addr, align 16, !tbaa !237
  %i.ady = fsub float %.reload893, %.reload896
  %i.adz = fdiv float 1.000000e+00, %i.ady
  %i.aea = mul i64 %.reload, %.reload885          ; 2 uses
  %i.aeb = load ptr, ptr %i.adt, align 8, !tbaa !98, !noalias !647
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adr, i64 64
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !238, !noalias !647
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !224, !noalias !647
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  %.sroa.0.0.copyload.i313 = load i64, ptr %i.aeg, align 8, !tbaa !97, !noalias !647
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %i.aef
  store ptr %i.aeh, ptr %.reload.addr913, align 8, !tbaa !241, !alias.scope !647
  store i64 %i.aed, ptr %i.adg, align 16, !tbaa !242, !alias.scope !647
  store i64 %.sroa.0.0.copyload.i313, ptr %i.adf, align 8, !tbaa !97, !alias.scope !647
  store float %i.adz, ptr %i.adh, align 16, !tbaa !244
  %i.aei = load float, ptr %.reload.addr901, align 16, !tbaa !69
  store float %i.aei, ptr %i.ade, align 4, !tbaa !245
  %i.aej = load i32, ptr %.reload.addr943, align 4, !tbaa !99
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr898, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.aea, i64 noundef %i.aea, ptr noundef nonnull byval(%class.anon.234) align 8 %.reload.addr913, i32 noundef %i.aej)
          to label %bb.fd unwind label %.body310.from..loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.aek = load ptr, ptr %i.adi, align 8, !tbaa !81
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aem = load atomic i32, ptr %i.ael acquire, align 4
  %i.aen = icmp slt i32 %i.aem, 2
  br i1 %i.aen, label %bb.fe, label %AfterCoroSave

bb.fe:                                            ; preds = %bb.fd
  %i.aeo = load ptr, ptr %i.adi, align 8, !tbaa !81
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = atomicrmw add ptr %i.aep, i32 -1 acq_rel, align 4
  %i.aer = icmp slt i32 %i.aeq, 1
  br i1 %i.aer, label %bb.ff, label %.thread.sink.split

bb.ff:                                            ; preds = %bb.fe
  %i.aes = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ff
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !118 ; 7 uses
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !125
  %i.aev = and i32 %i.aeu, 8
  %.not.i.i.i.i = icmp eq i32 %i.aev, 0
  br i1 %.not.i.i.i.i, label %bb.fg, label %.thread.sink.split

bb.fg:                                            ; preds = %.noexc.i.i
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !126 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.aex, %i.aez
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.fg
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aet, i64 32
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aet, i64 48
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aet, i64 33
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aet, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.aex, %.from..lr.ph.i.i.i.i.i ], [ %i.afp, %.noexc2.i.i ] ; 2 uses
  %i.afe = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.aff = load i8, ptr %i.afa, align 8           ; 2 uses
  %i.afg = trunc i8 %i.aff to i1                  ; 2 uses
  %i.afh = load ptr, ptr %i.afb, align 8
  %i.afi = select i1 %i.afg, ptr %i.afh, ptr %i.afc
  %i.afj = load i64, ptr %i.afd, align 8
  %i.afk = lshr i8 %i.aff, 1
  %i.afl = zext nneg i8 %i.afk to i64
  %i.afm = select i1 %i.afg, i64 %i.afj, i64 %i.afl
  %i.afn = load ptr, ptr %i.afe, align 8, !tbaa !71
  %i.afo = load ptr, ptr %i.afn, align 8
  invoke void %i.afo(ptr noundef nonnull align 8 dereferenceable(8) %i.afe, ptr %i.afi, i64 %i.afm, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i318 = icmp eq ptr %i.afp, %i.aez
  br i1 %.not.i.i.i.i.i318, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fh

.from..loopexit.split-lp.i.i:                     ; preds = %bb.ff
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fh

bb.fh:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.afq = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.afq) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.fd
  store i2 0, ptr %index.addr951, align 1
  %i.afr = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr898, ptr nonnull %i.c) #32
  br i1 %i.afr, label %AfterCoroEnd, label %bb.fi

.body310.from..loopexit:                          ; preds = %bb.fc
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

.body310.from..loopexit.split-lp:                 ; preds = %bb.fb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

bb.fi:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr898, align 8, !tbaa !247 ; 3 uses
  %.not.i319 = icmp eq ptr %.pr, null
  br i1 %.not.i319, label %.thread, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.afs = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body310.from.795, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.fj, %bb.fg, %.noexc.i.i, %bb.fe
  store ptr null, ptr %.reload.addr898, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.fi
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adj)
          to label %.from.789 unwind label %.body310.from.795

.from.789:                                        ; preds = %.thread
  %.080502.reload = load i64, ptr %.080502.spill.addr, align 8, !tbaa !237
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr898) #32
  %i.afu = add nuw i64 %.080502.reload, 1         ; 2 uses
  %i.afv = load i64, ptr %.reload.addr932, align 16, !tbaa !101
  %i.afw = icmp ult i64 %i.afu, %i.afv
  br i1 %i.afw, label %.from..lr.ph503, label %.thread447, !llvm.loop !599

.body310.from.795:                                ; preds = %bb.fj, %.thread
  %i.afx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr898) #32
  br label %.from.849

.thread447:                                       ; preds = %.from.789, %_ZN4tlog5debugIJRiRfS2_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  store i8 16, ptr %23, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %23, i64 1
  store i64 5928219604812255058, ptr %i.afy, align 1
  %i.afz = getelementptr inbounds nuw i8, ptr %23, i64 9
  store i8 0, ptr %i.afz, align 1, !tbaa !97
  %i.aga = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr905, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330 unwind label %bb.fn ; 7 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330: ; preds = %.thread447
  %i.agb = load i8, ptr %23, align 8
  %i.agc = trunc i8 %i.agb to i1
  br i1 %i.agc, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330
  %i.agd = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !97
  %i.agf = load i64, ptr %23, align 8
  %i.agg = and i64 %i.agf, -2
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agg) #36
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.agh = icmp eq ptr %i.aga, null
  br i1 %i.agh, label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aga, i64 40 ; 2 uses
  %i.agj = load i8, ptr %i.agi, align 8           ; 2 uses
  %i.agk = trunc i8 %i.agj to i1                  ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  %i.agm = load i64, ptr %i.agl, align 8
  %i.agn = lshr i8 %i.agj, 1
  %i.ago = zext nneg i8 %i.agn to i64
  %i.agp = select i1 %i.agk, i64 %i.agm, i64 %i.ago ; 2 uses
  switch i64 %i.agp, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread [
    i64 9, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
    i64 8, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960
  ]

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.fm
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aga, i64 56
  %i.agr = load ptr, ptr %i.agq, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.aga, i64 41
  %i.agt = select i1 %i.agk, ptr %i.agr, ptr %i.ags ; 2 uses
  %i.agu = load i64, ptr %i.agt, align 1
  %i.agv = xor i64 %i.agu, 6137646870288420674
  %i.agw = getelementptr i8, ptr %i.agt, i64 8
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = zext i8 %i.agx to i64
  %i.agz = xor i64 %i.agy, 80
  %i.aha = or i64 %i.agv, %i.agz
  %i.ahb = icmp ne i64 %i.aha, 0
  %i.ahc = zext i1 %i.ahb to i32
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit967.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960: ; preds = %bb.fm
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aga, i64 56
  %.pre1027 = load ptr, ptr %.phi.trans.insert, align 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aga, i64 41
  %i.ahf = select i1 %i.agk, ptr %.pre1027, ptr %i.ahe
  %bcmp.i.i959 = call i32 @bcmp(ptr %i.ahf, ptr nonnull @.str.70, i64 %i.agp)
  %i.ahg = icmp eq i32 %bcmp.i.i959, 0
  br i1 %i.ahg, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit967.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, %bb.fm, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960
  %i.ahh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc961 unwind label %.from.834

.noexc961:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSG_(ptr noundef nonnull align 8 dereferenceable(56) %i.ahi, i32 noundef 8, ptr nonnull @.str.71, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr940, ptr noundef nonnull align 8 dereferenceable(24) %i.agi)
          to label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit unwind label %.from.834

bb.fn:                                            ; preds = %.thread447
  %i.ahj = landingpad { ptr, i32 }
          catch ptr null
  %i.ahk = load i8, ptr %23, align 8
  %i.ahl = trunc i8 %i.ahk to i1
  br i1 %i.ahl, label %bb.fo, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332

bb.fo:                                            ; preds = %bb.fn
  %i.ahm = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !97
  %i.aho = load i64, ptr %23, align 8
  %i.ahp = and i64 %i.aho, -2
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahp) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332: ; preds = %bb.fn, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %.from.849

.from.834:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960.thread, %.noexc961
  %i.ahq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit967.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960
  %i.ahr = phi i32 [ 4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit960 ], [ 1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit ]
  store i32 %i.ahr, ptr %i.hn, align 16, !tbaa !204
  br label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit

_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit: ; preds = %.noexc961, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit967.thread, %bb.fl
  store ptr %.reload.addr932, ptr %.reload.addr898, align 8, !tbaa !248
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  store ptr %.reload.addr940, ptr %i.ahs, align 16, !tbaa !249
  %i.aht = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  store ptr %.reload.addr905, ptr %i.aht, align 8, !tbaa !251
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store ptr %.reload.addr897, ptr %i.ahu, align 16, !tbaa !146
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store ptr %.reload.addr928, ptr %i.ahv, align 8, !tbaa !253
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store ptr %.reload.addr943, ptr %i.ahw, align 16, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  store i8 16, ptr %24, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %24, i64 1
  store i64 6071222086953156930, ptr %i.ahx, align 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %24, i64 9
  store i8 0, ptr %i.ahy, align 1, !tbaa !97
  %i.ahz = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr905, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341 unwind label %bb.ga ; 4 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341: ; preds = %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.aia = load i8, ptr %24, align 8
  %i.aib = trunc i8 %i.aia to i1
  br i1 %i.aib, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341
  %i.aic = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !97
  %i.aie = load i64, ptr %24, align 8
  %i.aif = and i64 %i.aie, -2
  call void @_ZdlPvm(ptr noundef %i.aid, i64 noundef %i.aif) #36
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.aig = icmp eq ptr %i.ahz, null
  br i1 %i.aig, label %bb.gf, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahz, i64 40 ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 8
  %i.aij = trunc i8 %i.aii to i1
  br i1 %i.aij, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr923, ptr noundef nonnull align 8 dereferenceable(24) %i.aih, i64 24, i1 false), !tbaa.struct !207
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

bb.ft:                                            ; preds = %bb.fr
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahz, i64 56
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !97
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !97
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr923, ptr noundef %i.ail, i64 noundef %i.ain)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit: ; preds = %bb.fs, %bb.ft
  invoke fastcc void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr899, ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr898, ptr nofree noundef nonnull align 8 dereferenceable(24) %.reload.addr923)
          to label %bb.fu unwind label %.from.802

bb.fu:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.aio = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.aip = load ptr, ptr %i.aio, align 16, !tbaa !81
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = load atomic i32, ptr %i.aiq acquire, align 4
  %i.ais = icmp slt i32 %i.air, 2
  br i1 %i.ais, label %bb.fv, label %AfterCoroSave597

bb.fv:                                            ; preds = %bb.fu
  %i.ait = load ptr, ptr %i.aio, align 16, !tbaa !81
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = atomicrmw add ptr %i.aiu, i32 -1 acq_rel, align 4
  %i.aiw = icmp slt i32 %i.aiv, 1
  br i1 %i.aiw, label %bb.fw, label %.thread1004.sink.split

bb.fw:                                            ; preds = %bb.fv
  %i.aix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i971 unwind label %.loopexit.split-lp.i.i968

.noexc.i.i971:                                    ; preds = %bb.fw
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !118 ; 7 uses
  %i.aiz = load i32, ptr %i.aiy, align 8, !tbaa !125
  %i.aja = and i32 %i.aiz, 8
  %.not.i.i.i.i972 = icmp eq i32 %i.aja, 0
  br i1 %.not.i.i.i.i972, label %bb.fx, label %.thread1004.sink.split

bb.fx:                                            ; preds = %.noexc.i.i971
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !126 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i973 = icmp eq ptr %i.ajc, %i.aje
  br i1 %.not12.i.i.i.i.i973, label %.thread1004.sink.split, label %.lr.ph.i.i.i.i.i974

.lr.ph.i.i.i.i.i974:                              ; preds = %bb.fx
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiy, i64 32
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiy, i64 48
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aiy, i64 33
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  br label %bb.fy

bb.fy:                                            ; preds = %.noexc2.i.i978, %.lr.ph.i.i.i.i.i974
  %.sroa.09.013.i.i.i.i.i975 = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i.i974 ], [ %i.aju, %.noexc2.i.i978 ] ; 2 uses
  %i.ajj = load ptr, ptr %.sroa.09.013.i.i.i.i.i975, align 8, !tbaa !130 ; 2 uses
  %i.ajk = load i8, ptr %i.ajf, align 8           ; 2 uses
  %i.ajl = trunc i8 %i.ajk to i1                  ; 2 uses
  %i.ajm = load ptr, ptr %i.ajg, align 8
  %i.ajn = select i1 %i.ajl, ptr %i.ajm, ptr %i.ajh
  %i.ajo = load i64, ptr %i.aji, align 8
  %i.ajp = lshr i8 %i.ajk, 1
  %i.ajq = zext nneg i8 %i.ajp to i64
  %i.ajr = select i1 %i.ajl, i64 %i.ajo, i64 %i.ajq
  %i.ajs = load ptr, ptr %i.ajj, align 8, !tbaa !71
  %i.ajt = load ptr, ptr %i.ajs, align 8
  invoke void %i.ajt(ptr noundef nonnull align 8 dereferenceable(8) %i.ajj, ptr %i.ajn, i64 %i.ajr, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i978 unwind label %.loopexit.i.i976, !inline_history !0

.noexc2.i.i978:                                   ; preds = %bb.fy
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i975, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aju, %i.aje
  br i1 %.not.i.i.i.i.i, label %.thread1004.sink.split, label %bb.fy

.loopexit.i.i976:                                 ; preds = %bb.fy
  %lpad.loopexit.i.i977 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fz

.loopexit.split-lp.i.i968:                        ; preds = %bb.fw
  %lpad.loopexit.split-lp.i.i969 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fz

bb.fz:                                            ; preds = %.loopexit.split-lp.i.i968, %.loopexit.i.i976
  %lpad.phi.i.i970 = phi { ptr, i32 } [ %lpad.loopexit.i.i977, %.loopexit.i.i976 ], [ %lpad.loopexit.split-lp.i.i969, %.loopexit.split-lp.i.i968 ]
  %i.ajv = extractvalue { ptr, i32 } %lpad.phi.i.i970, 0
  call void @__clang_call_terminate(ptr %i.ajv) #37
  unreachable

AfterCoroSave597:                                 ; preds = %bb.fu
  %index.addr952 = getelementptr inbounds nuw i8, ptr %i.c, i64 395
  store i2 1, ptr %index.addr952, align 1
  %i.ajw = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr899, ptr nonnull %i.c) #32
  br i1 %i.ajw, label %AfterCoroEnd, label %bb.gc

bb.ga:                                            ; preds = %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.ajx = landingpad { ptr, i32 }
          catch ptr null
  %i.ajy = load i8, ptr %24, align 8
  %i.ajz = trunc i8 %i.ajy to i1
  br i1 %i.ajz, label %bb.gb, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344

bb.gb:                                            ; preds = %bb.ga
  %i.aka = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !97
  %i.akc = load i64, ptr %24, align 8
  %i.akd = and i64 %i.akc, -2
  call void @_ZdlPvm(ptr noundef %i.akb, i64 noundef %i.akd) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344: ; preds = %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %.from.849

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806: ; preds = %bb.ft
  %i.ake = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

.from.802:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.akf = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ge

bb.gc:                                            ; preds = %AfterCoroSave597
  %.pr1003 = load ptr, ptr %.reload.addr899, align 16, !tbaa !247 ; 3 uses
  %.not.i345 = icmp eq ptr %.pr1003, null
  br i1 %.not.i345, label %.thread1004, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.akg = getelementptr inbounds nuw i8, ptr %.pr1003, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8
  invoke void %i.akh(ptr nonnull %.pr1003)
          to label %.thread1004.sink.split unwind label %.from.800, !inline_history !4

.thread1004.sink.split:                           ; preds = %.noexc2.i.i978, %bb.gd, %bb.fx, %.noexc.i.i971, %bb.fv
  store ptr null, ptr %.reload.addr899, align 16, !tbaa !247
  br label %.thread1004

.thread1004:                                      ; preds = %.thread1004.sink.split, %bb.gc
  %i.aki = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aki)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit348 unwind label %.from.800

_ZN3tev4TaskIvE12await_resumeEv.exit348:          ; preds = %.thread1004
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr899) #32
  %i.akj = load i8, ptr %.reload.addr923, align 16
  %i.akk = trunc i8 %i.akj to i1
  br i1 %i.akk, label %.thread450.sink.split, label %.thread450

.from.800:                                        ; preds = %bb.gd, %.thread1004
  %i.akl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr899) #32
  br label %bb.ge

bb.ge:                                            ; preds = %.from.800, %.from.802
  %.pn104 = phi { ptr, i32 } [ %i.akl, %.from.800 ], [ %i.akf, %.from.802 ] ; 2 uses
  %i.akm = load i8, ptr %.reload.addr923, align 16
  %i.akn = trunc i8 %i.akm to i1
  br i1 %i.akn, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from., label %.from.849

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.: ; preds = %bb.ge
  %i.ako = getelementptr inbounds nuw i8, ptr %i.c, i64 1248
  %i.akp = load ptr, ptr %i.ako, align 16, !tbaa !97
  %i.akq = load i64, ptr %.reload.addr923, align 16
  %i.akr = and i64 %i.akq, -2
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.akr) #36
  br label %.from.849

bb.gf:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  store i8 16, ptr %25, align 8
  %i.aks = getelementptr inbounds nuw i8, ptr %25, i64 1
  store i64 5789751508455935811, ptr %i.aks, align 1
  %i.akt = getelementptr inbounds nuw i8, ptr %25, i64 9
  store i8 0, ptr %i.akt, align 1, !tbaa !97
  %i.aku = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr905, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352 unwind label %bb.gr ; 4 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352: ; preds = %bb.gf
  %i.akv = load i8, ptr %25, align 8
  %i.akw = trunc i8 %i.akv to i1
  br i1 %i.akw, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352
  %i.akx = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !97
  %i.akz = load i64, ptr %25, align 8
  %i.ala = and i64 %i.akz, -2
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.ala) #36
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.alb = icmp eq ptr %i.aku, null
  br i1 %i.alb, label %.thread450, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aku, i64 40 ; 2 uses
  %i.ald = load i8, ptr %i.alc, align 8
  %i.ale = trunc i8 %i.ald to i1
  br i1 %i.ale, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr922, ptr noundef nonnull align 8 dereferenceable(24) %i.alc, i64 24, i1 false), !tbaa.struct !207
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355

bb.gk:                                            ; preds = %bb.gi
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aku, i64 56
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !97
  %i.alh = getelementptr inbounds nuw i8, ptr %i.aku, i64 48
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !97
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr922, ptr noundef %i.alg, i64 noundef %i.ali)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355 unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355: ; preds = %bb.gj, %bb.gk
  invoke fastcc void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr899, ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr898, ptr nofree noundef nonnull align 8 dereferenceable(24) %.reload.addr922)
          to label %bb.gl unwind label %.from.816

bb.gl:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355
  %i.alj = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.alk = load ptr, ptr %i.alj, align 16, !tbaa !81
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.alm = load atomic i32, ptr %i.all acquire, align 4
  %i.aln = icmp slt i32 %i.alm, 2
  br i1 %i.aln, label %bb.gm, label %AfterCoroSave601

bb.gm:                                            ; preds = %bb.gl
  %i.alo = load ptr, ptr %i.alj, align 16, !tbaa !81
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.alq = atomicrmw add ptr %i.alp, i32 -1 acq_rel, align 4
  %i.alr = icmp slt i32 %i.alq, 1
  br i1 %i.alr, label %bb.gn, label %.thread1010.sink.split

bb.gn:                                            ; preds = %bb.gm
  %i.als = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i985 unwind label %.loopexit.split-lp.i.i982

.noexc.i.i985:                                    ; preds = %bb.gn
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !118 ; 7 uses
  %i.alu = load i32, ptr %i.alt, align 8, !tbaa !125
  %i.alv = and i32 %i.alu, 8
  %.not.i.i.i.i986 = icmp eq i32 %i.alv, 0
  br i1 %.not.i.i.i.i986, label %bb.go, label %.thread1010.sink.split

bb.go:                                            ; preds = %.noexc.i.i985
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !126 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i987 = icmp eq ptr %i.alx, %i.alz
  br i1 %.not12.i.i.i.i.i987, label %.thread1010.sink.split, label %.lr.ph.i.i.i.i.i988

.lr.ph.i.i.i.i.i988:                              ; preds = %bb.go
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alt, i64 32
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alt, i64 48
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alt, i64 33
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alt, i64 40
  br label %bb.gp

bb.gp:                                            ; preds = %.noexc2.i.i992, %.lr.ph.i.i.i.i.i988
  %.sroa.09.013.i.i.i.i.i989 = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i988 ], [ %i.amp, %.noexc2.i.i992 ] ; 2 uses
  %i.ame = load ptr, ptr %.sroa.09.013.i.i.i.i.i989, align 8, !tbaa !130 ; 2 uses
  %i.amf = load i8, ptr %i.ama, align 8           ; 2 uses
  %i.amg = trunc i8 %i.amf to i1                  ; 2 uses
  %i.amh = load ptr, ptr %i.amb, align 8
  %i.ami = select i1 %i.amg, ptr %i.amh, ptr %i.amc
  %i.amj = load i64, ptr %i.amd, align 8
  %i.amk = lshr i8 %i.amf, 1
  %i.aml = zext nneg i8 %i.amk to i64
  %i.amm = select i1 %i.amg, i64 %i.amj, i64 %i.aml
  %i.amn = load ptr, ptr %i.ame, align 8, !tbaa !71
  %i.amo = load ptr, ptr %i.amn, align 8
  invoke void %i.amo(ptr noundef nonnull align 8 dereferenceable(8) %i.ame, ptr %i.ami, i64 %i.amm, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i992 unwind label %.loopexit.i.i990, !inline_history !0

.noexc2.i.i992:                                   ; preds = %bb.gp
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i989, i64 16 ; 2 uses
  %.not.i.i.i.i.i993 = icmp eq ptr %i.amp, %i.alz
  br i1 %.not.i.i.i.i.i993, label %.thread1010.sink.split, label %bb.gp

.loopexit.i.i990:                                 ; preds = %bb.gp
  %lpad.loopexit.i.i991 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gq

.loopexit.split-lp.i.i982:                        ; preds = %bb.gn
  %lpad.loopexit.split-lp.i.i983 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit.split-lp.i.i982, %.loopexit.i.i990
  %lpad.phi.i.i984 = phi { ptr, i32 } [ %lpad.loopexit.i.i991, %.loopexit.i.i990 ], [ %lpad.loopexit.split-lp.i.i983, %.loopexit.split-lp.i.i982 ]
  %i.amq = extractvalue { ptr, i32 } %lpad.phi.i.i984, 0
  call void @__clang_call_terminate(ptr %i.amq) #37
  unreachable

AfterCoroSave601:                                 ; preds = %bb.gl
  %index.addr953 = getelementptr inbounds nuw i8, ptr %i.c, i64 395
  store i2 -2, ptr %index.addr953, align 1
  %i.amr = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr899, ptr nonnull %i.c) #32
  br i1 %i.amr, label %AfterCoroEnd, label %bb.gs

bb.gr:                                            ; preds = %bb.gf
  %i.ams = landingpad { ptr, i32 }
          catch ptr null
  %i.amt = load i8, ptr %25, align 8
  %i.amu = trunc i8 %i.amt to i1
  br i1 %i.amu, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from., label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from.: ; preds = %bb.gr
  %i.amv = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !97
  %i.amx = load i64, ptr %25, align 8
  %i.amy = and i64 %i.amx, -2
  call void @_ZdlPvm(ptr noundef %i.amw, i64 noundef %i.amy) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from., %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %.from.849

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820: ; preds = %bb.gk
  %i.amz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.849

.from.816:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355
  %i.ana = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gu

bb.gs:                                            ; preds = %AfterCoroSave601
  %.pr1008 = load ptr, ptr %.reload.addr899, align 16, !tbaa !247 ; 3 uses
  %.not.i357 = icmp eq ptr %.pr1008, null
  br i1 %.not.i357, label %.thread1010, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.anb = getelementptr inbounds nuw i8, ptr %.pr1008, i64 8
  %i.anc = load ptr, ptr %i.anb, align 8
  invoke void %i.anc(ptr nonnull %.pr1008)
          to label %.thread1010.sink.split unwind label %.from.814, !inline_history !4

.thread1010.sink.split:                           ; preds = %.noexc2.i.i992, %bb.gt, %bb.go, %.noexc.i.i985, %bb.gm
  store ptr null, ptr %.reload.addr899, align 16, !tbaa !247
  br label %.thread1010

.thread1010:                                      ; preds = %.thread1010.sink.split, %bb.gs
  %i.and = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.and)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit360 unwind label %.from.814

_ZN3tev4TaskIvE12await_resumeEv.exit360:          ; preds = %.thread1010
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr899) #32
  %i.ane = load i8, ptr %.reload.addr922, align 8
  %i.anf = trunc i8 %i.ane to i1
  br i1 %i.anf, label %.thread450.sink.split, label %.thread450

.from.814:                                        ; preds = %bb.gt, %.thread1010
  %i.ang = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr899) #32
  br label %bb.gu

bb.gu:                                            ; preds = %.from.814, %.from.816
  %.pn103 = phi { ptr, i32 } [ %i.ang, %.from.814 ], [ %i.ana, %.from.816 ] ; 2 uses
  %i.anh = load i8, ptr %.reload.addr922, align 8
  %i.ani = trunc i8 %i.anh to i1
  br i1 %i.ani, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from., label %.from.849

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.: ; preds = %bb.gu
  %i.anj = getelementptr inbounds nuw i8, ptr %i.c, i64 1224
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !97
  %i.anl = load i64, ptr %.reload.addr922, align 8
  %i.anm = and i64 %i.anl, -2
  call void @_ZdlPvm(ptr noundef %i.ank, i64 noundef %i.anm) #36
  br label %.from.849

.thread450.sink.split:                            ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit360, %_ZN3tev4TaskIvE12await_resumeEv.exit348
  %.sink1124 = phi i64 [ 1248, %_ZN3tev4TaskIvE12await_resumeEv.exit348 ], [ 1224, %_ZN3tev4TaskIvE12await_resumeEv.exit360 ]
  %.sink1116.in = phi ptr [ %.reload.addr923, %_ZN3tev4TaskIvE12await_resumeEv.exit348 ], [ %.reload.addr922, %_ZN3tev4TaskIvE12await_resumeEv.exit360 ]
  %i.ann = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink1124
  %.sink = load ptr, ptr %i.ann, align 8, !tbaa !97
  %.sink1116 = load i64, ptr %.sink1116.in, align 8
  %i.ano = and i64 %.sink1116, -2
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ano) #36
  br label %.thread450

.thread450:                                       ; preds = %.thread450.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit360, %_ZN3tev4TaskIvE12await_resumeEv.exit348, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.anp = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.anq = load <2 x ptr>, ptr %.reload.addr897, align 8, !tbaa !148
  store <2 x ptr> %i.anq, ptr %26, align 16, !tbaa !148
  %i.anr = load ptr, ptr %i.u, align 8, !tbaa !148
  store ptr %i.anr, ptr %i.anp, align 16, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr897, i8 0, i64 24, i1 false)
  %i.ans = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ant = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.anu = load <2 x ptr>, ptr %i.v, align 16, !tbaa !150
  store <2 x ptr> %i.anu, ptr %i.ans, align 8, !tbaa !150
  %i.anv = load ptr, ptr %.sroa.2.0..sroa_idx.i17.i, align 16, !tbaa !150
  store ptr %i.anv, ptr %i.ant, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.anw = getelementptr inbounds nuw i8, ptr %26, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.anw, ptr noundef nonnull align 8 dereferenceable(44) %i.x, i64 44, i1 false)
  %i.anx = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.any = getelementptr inbounds nuw i8, ptr %26, i64 112
  %i.anz = load <2 x ptr>, ptr %i.ho, align 8, !tbaa !152
  store <2 x ptr> %i.anz, ptr %i.anx, align 16, !tbaa !152
  %i.aoa = load ptr, ptr %i.rr, align 8, !tbaa !152
  store ptr %i.aoa, ptr %i.any, align 16, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i8 0, i64 24, i1 false)
  %i.aob = getelementptr inbounds nuw i8, ptr %26, i64 120
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.aob, ptr noundef nonnull align 16 dereferenceable(136) %i.aoc, i64 136, i1 false)
  %i.aod = getelementptr inbounds nuw i8, ptr %26, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aod, ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  %i.aoe = getelementptr inbounds nuw i8, ptr %26, i64 280 ; 2 uses
  store i8 1, ptr %i.aoe, align 8, !tbaa !138
  %i.aof = load ptr, ptr %.reload.addr950, align 16, !tbaa !164 ; 2 uses
  %i.aog = icmp eq ptr %i.aof, null
  br i1 %i.aog, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.thread450
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i995 unwind label %bb.gx

.noexc.i995:                                      ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %.thread450
  invoke void @_ZNSt3__113__assoc_stateINS_8optionalIN3tev9ImageDataEEEE9set_valueIS4_EEvOT_(ptr noundef nonnull align 8 dereferenceable(408) %i.aof, ptr noundef nonnull align 8 dereferenceable(281) %26)
          to label %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit996 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit996: ; preds = %bb.gw
  %i.aoj = load i8, ptr %i.aoe, align 8, !tbaa !138, !range !139, !noundef !140
  %i.aok = trunc nuw i8 %i.aoj to i1
  br i1 %i.aok, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit996
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %26) #32
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit996, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.aol = getelementptr inbounds nuw i8, ptr %i.c, i64 888
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !256 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aom, null
  br i1 %.not10.i.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gz, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i
  %.011.i.i.i = phi ptr [ %i.aon, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i ], [ %i.aom, %bb.gz ] ; 6 uses
  %i.aon = load ptr, ptr %.011.i.i.i, align 8, !tbaa !256 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 40 ; 2 uses
  %i.aoq = load i8, ptr %i.aop, align 8
  %i.aor = trunc i8 %i.aoq to i1
  br i1 %i.aor, label %bb.ha, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

bb.ha:                                            ; preds = %.lr.ph.i.i.i
  %i.aos = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !97
  %i.aou = load i64, ptr %i.aop, align 8
  %i.aov = and i64 %i.aou, -2
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aov) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ha, %.lr.ph.i.i.i
  %i.aow = load i8, ptr %i.aoo, align 8
  %i.aox = trunc i8 %i.aow to i1
  br i1 %i.aox, label %bb.hb, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

bb.hb:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  %i.aoy = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 32
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !97
  %i.apa = load i64, ptr %i.aoo, align 8
  %i.apb = and i64 %i.apa, -2
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apb) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i: ; preds = %bb.hb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i, i64 noundef 64) #36
  %.not.i.i.i364 = icmp eq ptr %i.aon, null
  br i1 %.not.i.i.i364, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i, %bb.gz
  %i.apc = load ptr, ptr %.reload.addr905, align 8, !tbaa !258 ; 2 uses
  store ptr null, ptr %.reload.addr905, align 8, !tbaa !258
  %.not.i.i.i.i365 = icmp eq ptr %i.apc, null
  br i1 %.not.i.i.i.i365, label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i
  %i.apd = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %i.ape = load i64, ptr %i.apd, align 16, !tbaa !101
  %i.apf = shl i64 %i.ape, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.apc, i64 noundef %i.apf) #36
  br label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, %bb.hc
  %.reload890 = load ptr, ptr %.spill.addr886, align 16, !tbaa !237
  %i.apg = load i8, ptr %.reload890, align 8, !tbaa !206, !range !139, !noundef !140
  %i.aph = trunc nuw i8 %i.apg to i1
  %i.api = load i8, ptr %.reload.addr907, align 16
  %i.apj = trunc i8 %i.api to i1
  %or.cond.i = select i1 %i.aph, i1 %i.apj, i1 false
  br i1 %or.cond.i, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  %i.apk = load ptr, ptr %i.ce, align 16, !tbaa !97
  %i.apl = load i64, ptr %.reload.addr907, align 16
  %i.apm = and i64 %i.apl, -2
  call void @_ZdlPvm(ptr noundef %i.apk, i64 noundef %i.apm) #36
  br label %bb.he

.from.849:                                        ; preds = %.from.785, %.body253.from.784, %.body253.from.783, %.body253.from., %.body253.from..loopexit.split-lp459, %.body253.from..loopexit458, %bb.ej, %.from.843, %.from.840, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit293, %.from.837, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit306, %.from.834, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332, %.body310.from.795, %.body310.from.793, %.body310.from., %.body310.from..loopexit.split-lp, %.body310.from..loopexit, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from., %bb.ge, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from., %bb.gu
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108, %bb.ej ], [ %i.uj, %.from.785 ], [ %.pn19.i, %.body253.from.783 ], [ %.pn108, %.body253.from. ], [ %.pn.i.i, %.body253.from.784 ], [ %lpad.loopexit.split-lp461, %.body253.from..loopexit.split-lp459 ], [ %lpad.loopexit460, %.body253.from..loopexit458 ], [ %lpad.loopexit.split-lp, %.body310.from..loopexit.split-lp ], [ %i.acn, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit306 ], [ %i.ahq, %.from.834 ], [ %i.adk, %.from.843 ], [ %i.abi, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit293 ], [ %i.abp, %.from.840 ], [ %i.ahj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332 ], [ %i.acu, %.from.837 ], [ %i.afx, %.body310.from.795 ], [ %i.adp, %.body310.from. ], [ %i.adx, %.body310.from.793 ], [ %lpad.loopexit, %.body310.from..loopexit ], [ %i.ams, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356 ], [ %i.ajx, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344 ], [ %.pn104, %bb.ge ], [ %i.ake, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806 ], [ %.pn104, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from. ], [ %i.amz, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820 ], [ %.pn103, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from. ], [ %.pn103, %bb.gu ]
  call void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr905) #32
  br label %.from.856

.from.856:                                        ; preds = %.from.852, %.from..body227, %.from.850, %.from.849, %.from.847
  %.pn108.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ty, %.from.852 ], [ %.pn93, %.from..body227 ], [ %i.uf, %.from.847 ], [ %.pn108.pn.pn.pn, %.from.849 ], [ %i.ug, %.from.850 ]
  %.reload888 = load ptr, ptr %.spill.addr886, align 16, !tbaa !237
  br label %.from..body179

.from..body179:                                   ; preds = %.body201.from..loopexit473, %.body201.from..loopexit.split-lp474, %.body201.from., %.body201.from..body211, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i183, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i172, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit217, %.from.856
  %i.apn = phi ptr [ %i.cf, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i183 ], [ %.reload888, %.from.856 ], [ %i.cf, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit217 ], [ %i.cf, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i172 ], [ %i.cf, %.body201.from..body211 ], [ %i.cf, %.body201.from. ], [ %i.cf, %.body201.from..loopexit.split-lp474 ], [ %i.cf, %.body201.from..loopexit473 ]
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %i.lk, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i183 ], [ %.pn108.pn.pn.pn.pn.pn.pn, %.from.856 ], [ %.pn109, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit217 ], [ %i.ki, %.body179.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i172 ], [ %.pn110, %.body201.from..body211 ], [ %i.nv, %.body201.from. ], [ %lpad.loopexit.split-lp476, %.body201.from..loopexit.split-lp474 ], [ %lpad.loopexit475, %.body201.from..loopexit473 ] ; 2 uses
  %i.apo = load i8, ptr %i.apn, align 8, !tbaa !206, !range !139, !noundef !140
  %i.app = trunc nuw i8 %i.apo to i1
  %i.apq = load i8, ptr %.reload.addr907, align 16
  %i.apr = trunc i8 %i.apq to i1
  %or.cond.i367 = select i1 %i.app, i1 %i.apr, i1 false
  br i1 %or.cond.i367, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from., label %.body165.from._ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from.: ; preds = %.from..body179
  %i.aps = load ptr, ptr %i.ce, align 16, !tbaa !97
  %i.apt = load i64, ptr %.reload.addr907, align 16
  %i.apu = and i64 %i.apt, -2
  call void @_ZdlPvm(ptr noundef %i.aps, i64 noundef %i.apu) #36
  br label %.body165.from._ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369

.body165.from._ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369: ; preds = %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from.861, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from., %.from..body179
  %.pn110.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mn, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from.861 ], [ %.pn110.pn.pn.pn, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from. ], [ %.pn110.pn.pn.pn, %.from..body179 ]
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.reload.addr897) #32
  br label %.from.867

bb.he:                                            ; preds = %bb.hd, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.reload.addr897) #32
  br label %.sink.split

.from.867:                                        ; preds = %.body165.from., %.body165.from._ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369, %.from..body156, %.from.862, %.from..body135, %.from.865, %.from..body123, %.from.868
  %.pn110.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %.from.868 ], [ %.pn, %.from..body123 ], [ %i.ed, %.from.865 ], [ %.pn91, %.from..body135 ], [ %.pn92, %.from..body156 ], [ %i.gz, %.from.862 ], [ %.pn110.pn.pn.pn.pn, %.body165.from._ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369 ], [ %i.hq, %.body165.from. ]
  %.37 = extractvalue { ptr, i32 } %.pn110.pn.pn.pn.pn.pn.pn.pn.pn, 0
  %i.apv = call ptr @__cxa_begin_catch(ptr %.37) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr950)
          to label %bb.hf unwind label %bb.hj

bb.hf:                                            ; preds = %.from.867
  invoke void @__cxa_end_catch()
          to label %.sink.split unwind label %.from.877

.sink.split:                                      ; preds = %.thread454, %.thread453, %.thread452, %bb.he, %bb.hf
  %i.apw = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %i.apy = atomicrmw add ptr %i.apx, i32 -1 acq_rel, align 4 ; 2 uses
  %i.apz = icmp slt i32 %i.apy, 1
  br i1 %i.apz, label %bb.hg, label %_ZN3tev5Latch9countDownEv.exit.i370

bb.hg:                                            ; preds = %.sink.split
  %i.aqa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i374 unwind label %.from..loopexit.split-lp.i.i371

.noexc.i.i374:                                    ; preds = %bb.hg
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !118 ; 7 uses
  %i.aqc = load i32, ptr %i.aqb, align 8, !tbaa !125
  %i.aqd = and i32 %i.aqc, 8
  %.not.i.i.i.i375 = icmp eq i32 %i.aqd, 0
  br i1 %.not.i.i.i.i375, label %bb.hh, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit

bb.hh:                                            ; preds = %.noexc.i.i374
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !126 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i376 = icmp eq ptr %i.aqf, %i.aqh
  br i1 %.not12.i.i.i.i.i376, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i377

.from..lr.ph.i.i.i.i.i377:                        ; preds = %bb.hh
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqb, i64 32
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqb, i64 48
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqb, i64 33
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqb, i64 40
  br label %.from..noexc2.i.i381

.from..noexc2.i.i381:                             ; preds = %.noexc2.i.i381, %.from..lr.ph.i.i.i.i.i377
  %.sroa.09.013.i.i.i.i.i378 = phi ptr [ %i.aqf, %.from..lr.ph.i.i.i.i.i377 ], [ %i.aqx, %.noexc2.i.i381 ] ; 2 uses
  %i.aqm = load ptr, ptr %.sroa.09.013.i.i.i.i.i378, align 8, !tbaa !130 ; 2 uses
  %i.aqn = load i8, ptr %i.aqi, align 8           ; 2 uses
  %i.aqo = trunc i8 %i.aqn to i1                  ; 2 uses
  %i.aqp = load ptr, ptr %i.aqj, align 8
  %i.aqq = select i1 %i.aqo, ptr %i.aqp, ptr %i.aqk
  %i.aqr = load i64, ptr %i.aql, align 8
  %i.aqs = lshr i8 %i.aqn, 1
  %i.aqt = zext nneg i8 %i.aqs to i64
  %i.aqu = select i1 %i.aqo, i64 %i.aqr, i64 %i.aqt
  %i.aqv = load ptr, ptr %i.aqm, align 8, !tbaa !71
  %i.aqw = load ptr, ptr %i.aqv, align 8
  invoke void %i.aqw(ptr noundef nonnull align 8 dereferenceable(8) %i.aqm, ptr %i.aqq, i64 %i.aqu, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i381 unwind label %.from..loopexit.i.i379, !inline_history !0

.noexc2.i.i381:                                   ; preds = %.from..noexc2.i.i381
  %i.aqx = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i378, i64 16 ; 2 uses
  %.not.i.i.i.i.i382 = icmp eq ptr %i.aqx, %i.aqh
  br i1 %.not.i.i.i.i.i382, label %_ZN3tev5Latch9countDownEv.exit.i370, label %.from..noexc2.i.i381

.from..loopexit.i.i379:                           ; preds = %.from..noexc2.i.i381
  %lpad.loopexit.i.i380 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hi

.from..loopexit.split-lp.i.i371:                  ; preds = %bb.hg
  %lpad.loopexit.split-lp.i.i372 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hi

bb.hi:                                            ; preds = %.from..loopexit.split-lp.i.i371, %.from..loopexit.i.i379
  %lpad.phi.i.i373 = phi { ptr, i32 } [ %lpad.loopexit.i.i380, %.from..loopexit.i.i379 ], [ %lpad.loopexit.split-lp.i.i372, %.from..loopexit.split-lp.i.i371 ]
  %i.aqy = extractvalue { ptr, i32 } %lpad.phi.i.i373, 0
  call void @__clang_call_terminate(ptr %i.aqy) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i370:              ; preds = %.noexc2.i.i381, %.sink.split
  %i.aqz = icmp slt i32 %i.apy, 2
  br i1 %i.aqz, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit: ; preds = %.noexc.i.i374, %bb.hh, %_ZN3tev5Latch9countDownEv.exit.i370
  %i.ara = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.arb = load i64, ptr %i.ara, align 8, !tbaa !98 ; 2 uses
  %i.arc = inttoptr i64 %i.arb to ptr             ; 3 uses
  store ptr %i.arc, ptr %.reload.addr932, align 8
  %.not.i383 = icmp eq i64 %i.arb, 0
  br i1 %.not.i383, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread, label %AfterCoroSuspend607

AfterCoroSuspend607:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit
  store ptr null, ptr %i.c, align 8
  %index.addr954 = getelementptr inbounds nuw i8, ptr %i.c, i64 395
  store i2 -1, ptr %index.addr954, align 1
  %i.ard = load ptr, ptr %i.arc, align 8
  call void %i.ard(ptr nonnull %i.arc)
  br label %AfterCoroEnd

bb.hj:                                            ; preds = %.from.867
  %i.are = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.881 unwind label %bb.hm

.from.877:                                        ; preds = %bb.hf
  %i.arf = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.881

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i370
  %i.arg = load ptr, ptr %i.m, align 8, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.arg, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit, label %bb.hk

bb.hk:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.ari = atomicrmw add ptr %i.arh, i64 -1 acq_rel, align 8
  %i.arj = icmp eq i64 %i.ari, 0
  br i1 %i.arj, label %bb.hl, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

bb.hl:                                            ; preds = %bb.hk
  %i.ark = load ptr, ptr %i.arg, align 8, !tbaa !71
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %i.arm = load ptr, ptr %i.arl, align 8
  call void %i.arm(ptr noundef nonnull align 8 dereferenceable(24) %i.arg) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arg) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread, %bb.hk, %bb.hl
  call void @_ZNSt3__17promiseINS_8optionalIN3tev9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr950) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1376) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit, %AfterCoroSuspend607, %AfterCoroSave601, %AfterCoroSave597
  ret void

.body.from.881:                                   ; preds = %bb.hj, %.from.877
  %.pn111 = phi { ptr, i32 } [ %i.arf, %.from.877 ], [ %i.are, %bb.hj ]
  call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr950) #32
  br label %.body

.body:                                            ; preds = %.body.from.881, %.body.from.879, %.body.from.
  %.merged114 = phi { ptr, i32 } [ %.pn111, %.body.from.881 ], [ %i.h, %.body.from. ], [ %i.g, %.body.from.879 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 1376) #32
  resume { ptr, i32 } %.merged114

bb.hm:                                            ; preds = %bb.hj
  %i.arn = landingpad { ptr, i32 }
          catch ptr null
  %i.aro = extractvalue { ptr, i32 } %i.arn, 0
  call void @__clang_call_terminate(ptr %i.aro) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.112, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr %1, ptr %i.c, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !125
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store ptr null, ptr %0, align 8, !tbaa !132
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
define linkonce_odr dso_local void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_2
begin_hunk_3_@_ZN3tev9fromCharsIfEEbNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEERT_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = load i64, ptr %3, align 8
  %i.ac = and i64 %i.ab, -2
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %bb.k ] ; 3 uses
  %.06 = extractvalue { ptr, i32 } %.pn, 0        ; 2 uses
  %.07 = extractvalue { ptr, i32 } %.pn, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #32
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10
  %i.af = call ptr @__cxa_begin_catch(ptr %.06) #32 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #32
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = call ptr @__cxa_begin_catch(ptr %.06) #32 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.0 = phi i1 [ true, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ false, %bb.l ], [ false, %bb.n ]
  ret i1 %.0

bb.p:                                             ; preds = %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly byval(%class.anon.234) align 8 captures(none) %5, i32 noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.209", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 16 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !1076
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1079
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1079
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1079
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1079
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1080
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1081
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1081

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !98, !alias.scope !1081
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !382, !noalias !1081
  store ptr %i.j, ptr %i.i, align 8, !tbaa !382, !alias.scope !1081
  store ptr null, ptr %7, align 8, !tbaa !382, !noalias !1081
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1081 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !98, !noalias !1081
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !98, !alias.scope !1081
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1081 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1081
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1081
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !125
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !126 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i1 false, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 80
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !125
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !126 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !98 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i1 true, ptr %index.addr80, align 8
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !44
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
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
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #32
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !247
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.112, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #37
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  store ptr %1, ptr %i.c, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !125
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store ptr null, ptr %0, align 8, !tbaa !247
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
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !247
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_3
begin_hunk_4_@"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE":.from.
_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.kw, %vec.epilog.middle.block ], [ %i.kn, %middle.block ], [ %.lcssa589.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !1109

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.from._ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i
  %storemerge.i.i = phi ptr [ %.lcssa, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.kc, %.from._ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ]
  store ptr %storemerge.i.i, ptr %.reload.addr505, align 8, !tbaa !106
  store ptr %i.kf, ptr %i.fw, align 8, !tbaa !106
  %i.mi = load ptr, ptr %i.fx, align 8, !tbaa !106
  store ptr %i.kd, ptr %i.fx, align 8, !tbaa !106
  %.not.i5.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i5.i.i, label %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.from.378

.from.378:                                        ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.jz to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ml) #36
  br label %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, %.from.378, %.from.382
  %.0.i141 = phi ptr [ %i.jn, %.from.382 ], [ %i.kf, %.from.378 ], [ %i.kf, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i ] ; 3 uses
  store ptr %.0.i141, ptr %i.fw, align 8, !tbaa !389
  %i.mm = add nuw nsw i32 %.063272, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.mm, %i.fk
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !1110

.from..loopexit:                                  ; preds = %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split443

.from..loopexit.split-lp:                         ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split443

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit151: ; preds = %._crit_edge274.split
  %i.mn = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr @.str.125, ptr %.reload.addr501, align 16, !tbaa !97, !noalias !1134
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i32 286, ptr %i.mo, align 16, !tbaa !97, !noalias !1134
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store i32 83, ptr %i.mp, align 16, !tbaa !97, !noalias !1134
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store ptr @.str.126, ptr %i.mq, align 16, !tbaa !97, !noalias !1134
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %10, ptr nonnull @.str.130, i64 60, i64 49708, ptr nonnull %.reload.addr501)
          to label %bb.aq unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152.thread

bb.aq:                                            ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit151
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.mn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.cm unwind label %.thread530

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit151
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.440.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.ms = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.mt = load i8, ptr %10, align 8
  %i.mu = trunc i8 %i.mt to i1
  br i1 %i.mu, label %.split259, label %.from.440.sink.split

.thread530:                                       ; preds = %bb.ar
  %i.mv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.mw = load i8, ptr %10, align 8
  %i.mx = trunc i8 %i.mw to i1
  br i1 %i.mx, label %.split259, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152437

.split259:                                        ; preds = %.thread530, %bb.as
  %i.my = phi { ptr, i32 } [ %i.mv, %.thread530 ], [ %i.ms, %bb.as ] ; 2 uses
  %.064532 = phi i1 [ false, %.thread530 ], [ true, %bb.as ]
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !97
  %i.nb = load i64, ptr %10, align 8
  %i.nc = and i64 %i.nb, -2
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nc) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %.064532, label %.from.440, label %.from..split443

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152437: ; preds = %.thread530
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.from..split443

.from.440.sink.split:                             ; preds = %bb.as, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152.thread
  %.pn79258.ph = phi { ptr, i32 } [ %i.mr, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152.thread ], [ %i.ms, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.from.440

.from.440:                                        ; preds = %.from.440.sink.split, %.split259
  %.pn79258 = phi { ptr, i32 } [ %i.my, %.split259 ], [ %.pn79258.ph, %.from.440.sink.split ]
  call void @__cxa_free_exception(ptr %i.mn) #32
  br label %.from..split443

bb.at:                                            ; preds = %._crit_edge274.split
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !1135, !nonnull !140, !align !294
  %.sroa.011.0.copyload = load i64, ptr %i.ne, align 4, !tbaa !97
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !384, !nonnull !140, !align !299
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !235
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !390
  store ptr @.str.15, ptr %11, align 8, !tbaa !1137
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.nk, align 8, !tbaa !1138
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !391, !nonnull !140, !align !294
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !99
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.461") align 8 %.reload.addr498, i64 noundef 3, i1 noundef zeroext false, i64 %.sroa.011.0.copyload, i32 noundef 7, i32 noundef %i.nj, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %11, i32 noundef %i.nn)
          to label %bb.au unwind label %.from.402

bb.au:                                            ; preds = %bb.at
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !81
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load atomic i32, ptr %i.nq acquire, align 4
  %i.ns = icmp slt i32 %i.nr, 2
  br i1 %i.ns, label %bb.av, label %AfterCoroSave

bb.av:                                            ; preds = %bb.au
  %i.nt = load ptr, ptr %i.no, align 8, !tbaa !81
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = atomicrmw add ptr %i.nu, i32 -1 acq_rel, align 4
  %i.nw = icmp slt i32 %i.nv, 1
  br i1 %i.nw, label %bb.aw, label %.thread.sink.split

bb.aw:                                            ; preds = %bb.av
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.aw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !118 ; 7 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !125
  %i.oa = and i32 %i.nz, 8
  %.not.i.i.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.i.i.i, label %bb.ax, label %.thread.sink.split

bb.ax:                                            ; preds = %.noexc.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !126 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.oc, %i.oe
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.ax
  %i.of = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 33
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.oc, %.from..lr.ph.i.i.i.i.i ], [ %i.ou, %.noexc2.i.i ] ; 2 uses
  %i.oj = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.ok = load i8, ptr %i.of, align 8             ; 2 uses
  %i.ol = trunc i8 %i.ok to i1                    ; 2 uses
  %i.om = load ptr, ptr %i.og, align 8
  %i.on = select i1 %i.ol, ptr %i.om, ptr %i.oh
  %i.oo = load i64, ptr %i.oi, align 8
  %i.op = lshr i8 %i.ok, 1
  %i.oq = zext nneg i8 %i.op to i64
  %i.or = select i1 %i.ol, i64 %i.oo, i64 %i.oq
  %i.os = load ptr, ptr %i.oj, align 8, !tbaa !71
  %i.ot = load ptr, ptr %i.os, align 8
  invoke void %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr %i.on, i64 %i.or, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %i.ou, %i.oe
  br i1 %.not.i.i.i.i.i153, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ay

.from..loopexit.split-lp.i.i:                     ; preds = %bb.aw
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ay

bb.ay:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ov = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ov) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.au
  %index.addr511 = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  store i2 0, ptr %index.addr511, align 8
  %i.ow = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr498, ptr nonnull %i.b) #32
  br i1 %i.ow, label %AfterCoroEnd, label %bb.az

.from.402:                                        ; preds = %bb.at
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split443

bb.az:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr498, align 8, !tbaa !393, !noalias !1139 ; 3 uses
  %.not.i154 = icmp eq ptr %.pr, null
  br i1 %.not.i154, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oy = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  invoke void %i.oz(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body156.from.399, !inline_history !45

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.ba, %bb.ax, %.noexc.i.i, %bb.av
  store ptr null, ptr %.reload.addr498, align 8, !tbaa !393
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.az
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !396, !noalias !1140 ; 7 uses
  store ptr null, ptr %i.pa, align 8, !tbaa !396, !noalias !1140
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.12") align 8 %.reload.addr501, ptr noundef nonnull align 8 dereferenceable(144) %i.pb)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %.thread
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = atomicrmw add ptr %i.pc, i64 -1 acq_rel, align 8
  %i.pe = icmp eq i64 %i.pd, 0
  br i1 %i.pe, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.pf = load ptr, ptr %i.pb, align 8, !tbaa !71
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #32, !inline_history !46
  br label %bb.be

bb.bd:                                            ; preds = %.thread
  %i.pi = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pk = atomicrmw add ptr %i.pj, i64 -1 acq_rel, align 8
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %.body156.from.396, label %.from..body156

.body156.from.396:                                ; preds = %bb.bd
  %i.pm = load ptr, ptr %i.pb, align 8, !tbaa !71
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #32, !inline_history !46
  br label %.from..body156

bb.be:                                            ; preds = %bb.bb, %bb.bc
  %.reload494 = load ptr, ptr %.spill.addr, align 8, !tbaa !398
  %i.pp = getelementptr inbounds nuw i8, ptr %.reload494, i64 24
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr498) #32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !384, !nonnull !140, !align !299
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !235 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !214, !noalias !1141 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !221, !noalias !1141
  %.not.i158 = icmp eq i32 %i.pv, 7
  br i1 %.not.i158, label %bb.bh, label %bb.bf, !prof !222

bb.bf:                                            ; preds = %bb.be
  %i.pw = call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1141 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pw, ptr noundef nonnull @.str.105)
          to label %bb.bg unwind label %.body160.from.425, !noalias !1141

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.pw, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.noexc159 unwind label %.body160.from.428

.noexc159:                                        ; preds = %bb.bg
  unreachable

.body160.from.425:                                ; preds = %bb.bf
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.pw) #32, !noalias !1141
  br label %.from.434

bb.bh:                                            ; preds = %bb.be
  %i.py = load ptr, ptr %i.pt, align 8, !tbaa !98, !noalias !1141
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 64
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !238, !noalias !1141
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pr, i64 56
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !224, !noalias !1141
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.qd, align 8, !tbaa !97, !noalias !1141
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.qc
  store ptr %i.qe, ptr %12, align 8, !tbaa !400
  %i.qf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.qa, ptr %i.qf, align 8, !tbaa !401
  %i.qg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.qg, align 8, !tbaa !97
  %i.qh = load ptr, ptr %.reload.addr501, align 8, !tbaa !235 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 4 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !210
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = sdiv exact i64 %i.qm, 72
  store ptr %i.qh, ptr %.reload.addr507, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 %i.qn, ptr %i.qo, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr498, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr507)
          to label %.noexc162 unwind label %.body160.from.428

.noexc162:                                        ; preds = %bb.bh
  %i.qp = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.qq = load i64, ptr %i.no, align 8, !tbaa !405
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr499, ptr %i.qp, i64 %i.qq)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %.noexc162
  %i.qr = load i64, ptr %i.pa, align 8, !tbaa !406 ; 2 uses
  %i.qs = icmp ugt i64 %i.qr, 5
  br i1 %i.qs, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.qt = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.qu = mul i64 %i.qr, 24
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qu) #36
  br label %bb.bm

bb.bk:                                            ; preds = %.noexc162
  %i.qv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.qw = load i64, ptr %i.pa, align 8, !tbaa !406 ; 2 uses
  %i.qx = icmp ugt i64 %i.qw, 5
  br i1 %i.qx, label %bb.bl, label %.from.434

bb.bl:                                            ; preds = %bb.bk
  %i.qy = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.qz = mul i64 %i.qw, 24
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.qz) #36
  br label %.from.434

bb.bm:                                            ; preds = %bb.bj, %bb.bi
  %.reload497 = load double, ptr %.spill.addr495, align 8, !tbaa !398
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !398
  %i.ra = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %i.rb = fptosi double %.reload497 to i32
  %i.rc = load ptr, ptr %.reload.addr505, align 8, !tbaa !388 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !389
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  %i.ri = load ptr, ptr %i.ra, align 8, !tbaa !391, !nonnull !140, !align !294
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !99
  %.sroa.2.0.insert.ext = zext i32 %i.rb to i64
  %.sroa.0209.0.insert.insert = mul nuw i64 %.sroa.2.0.insert.ext, 4294967297
  invoke void @_ZN3tev8demosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr500, ptr noundef nonnull byval(%"class.tev::ChannelView.465") align 8 %12, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr499, ptr %i.rc, i64 %i.rh, i64 %.sroa.0209.0.insert.insert, i32 noundef %i.rj)
          to label %bb.bn unwind label %.from.419

bb.bn:                                            ; preds = %bb.bm
  %i.rk = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !81
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load atomic i32, ptr %i.rm acquire, align 4
  %i.ro = icmp slt i32 %i.rn, 2
  br i1 %i.ro, label %bb.bo, label %AfterCoroSave311

bb.bo:                                            ; preds = %bb.bn
  %i.rp = load ptr, ptr %i.rk, align 8, !tbaa !81
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = atomicrmw add ptr %i.rq, i32 -1 acq_rel, align 4
  %i.rs = icmp slt i32 %i.rr, 1
  br i1 %i.rs, label %bb.bp, label %.thread267.sink.split

bb.bp:                                            ; preds = %bb.bo
  %i.rt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i169 unwind label %.from..loopexit.split-lp.i.i166

.noexc.i.i169:                                    ; preds = %bb.bp
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !118 ; 7 uses
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !125
  %i.rw = and i32 %i.rv, 8
  %.not.i.i.i.i170 = icmp eq i32 %i.rw, 0
  br i1 %.not.i.i.i.i170, label %bb.bq, label %.thread267.sink.split

bb.bq:                                            ; preds = %.noexc.i.i169
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !126 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i171 = icmp eq ptr %i.ry, %i.sa
  br i1 %.not12.i.i.i.i.i171, label %.thread267.sink.split, label %.from..lr.ph.i.i.i.i.i172

.from..lr.ph.i.i.i.i.i172:                        ; preds = %bb.bq
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 48
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 33
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  br label %.from..noexc2.i.i176

.from..noexc2.i.i176:                             ; preds = %.noexc2.i.i176, %.from..lr.ph.i.i.i.i.i172
  %.sroa.09.013.i.i.i.i.i173 = phi ptr [ %i.ry, %.from..lr.ph.i.i.i.i.i172 ], [ %i.sq, %.noexc2.i.i176 ] ; 2 uses
  %i.sf = load ptr, ptr %.sroa.09.013.i.i.i.i.i173, align 8, !tbaa !130 ; 2 uses
  %i.sg = load i8, ptr %i.sb, align 8             ; 2 uses
  %i.sh = trunc i8 %i.sg to i1                    ; 2 uses
  %i.si = load ptr, ptr %i.sc, align 8
  %i.sj = select i1 %i.sh, ptr %i.si, ptr %i.sd
  %i.sk = load i64, ptr %i.se, align 8
  %i.sl = lshr i8 %i.sg, 1
  %i.sm = zext nneg i8 %i.sl to i64
  %i.sn = select i1 %i.sh, i64 %i.sk, i64 %i.sm
  %i.so = load ptr, ptr %i.sf, align 8, !tbaa !71
  %i.sp = load ptr, ptr %i.so, align 8
  invoke void %i.sp(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, ptr %i.sj, i64 %i.sn, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i176 unwind label %.from..loopexit.i.i174, !inline_history !0

.noexc2.i.i176:                                   ; preds = %.from..noexc2.i.i176
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i173, i64 16 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.sq, %i.sa
  br i1 %.not.i.i.i.i.i177, label %.thread267.sink.split, label %.from..noexc2.i.i176

.from..loopexit.i.i174:                           ; preds = %.from..noexc2.i.i176
  %lpad.loopexit.i.i175 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.br

.from..loopexit.split-lp.i.i166:                  ; preds = %bb.bp
  %lpad.loopexit.split-lp.i.i167 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.br

bb.br:                                            ; preds = %.from..loopexit.split-lp.i.i166, %.from..loopexit.i.i174
  %lpad.phi.i.i168 = phi { ptr, i32 } [ %lpad.loopexit.i.i175, %.from..loopexit.i.i174 ], [ %lpad.loopexit.split-lp.i.i167, %.from..loopexit.split-lp.i.i166 ]
  %i.sr = extractvalue { ptr, i32 } %lpad.phi.i.i168, 0
  call void @__clang_call_terminate(ptr %i.sr) #37
  unreachable

AfterCoroSave311:                                 ; preds = %bb.bn
  %index.addr512 = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  store i2 1, ptr %index.addr512, align 8
  %i.ss = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr500, ptr nonnull %i.b) #32
  br i1 %i.ss, label %AfterCoroEnd, label %bb.bs

.body156.from.399:                                ; preds = %bb.ba
  %i.st = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body156

.from..body156:                                   ; preds = %.body156.from.399, %.body156.from.396, %bb.bd
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.st, %.body156.from.399 ], [ %i.pi, %.body156.from.396 ], [ %i.pi, %bb.bd ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr498) #32
  br label %.from..split443

.body160.from.428:                                ; preds = %bb.bg, %bb.bh
  %i.su = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.434

.from.419:                                        ; preds = %bb.bm
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cb

bb.bs:                                            ; preds = %AfterCoroSave311
  %.pr265 = load ptr, ptr %.reload.addr500, align 8, !tbaa !247 ; 3 uses
  %.not.i178 = icmp eq ptr %.pr265, null
  br i1 %.not.i178, label %.thread267, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sw = getelementptr inbounds nuw i8, ptr %.pr265, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8
  invoke void %i.sx(ptr nonnull %.pr265)
          to label %.thread267.sink.split unwind label %.from.416, !inline_history !4

.thread267.sink.split:                            ; preds = %.noexc2.i.i176, %bb.bt, %bb.bq, %.noexc.i.i169, %bb.bo
  store ptr null, ptr %.reload.addr500, align 8, !tbaa !247
  br label %.thread267

.thread267:                                       ; preds = %.thread267.sink.split, %bb.bs
  %i.sy = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sy)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.416

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread267
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr500) #32
  %i.sz = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !406 ; 2 uses
  %i.tb = icmp ugt i64 %i.ta, 5
  br i1 %i.tb, label %bb.bu, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.bu:                                            ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.tc = load ptr, ptr %.reload.addr499, align 8, !tbaa !404
  %i.td = mul i64 %i.ta, 24
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.td) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %bb.bu, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.reload492 = load ptr, ptr %.spill.addr, align 8, !tbaa !398 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.reload492, i64 24
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !384, !nonnull !140, !align !299
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !235 ; 5 uses
  %i.th = load i8, ptr %i.tg, align 8
  %i.ti = trunc i8 %i.th to i1
  br i1 %i.ti, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.: ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store i64 5, ptr %i.tj, align 8, !tbaa !97
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !97
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409: ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  store i8 10, ptr %i.tg, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  %.reload490.pre = load ptr, ptr %.spill.addr, align 8, !tbaa !398
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409
  %.reload490 = phi ptr [ %.reload492, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from. ], [ %.reload490.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409 ]
  %i.tn = phi ptr [ %i.tl, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from. ], [ %i.tm, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409 ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.reload490, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.tn, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 5, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 5
  store i8 0, ptr %i.tp, align 1, !tbaa !97
  %i.tq = load ptr, ptr %i.to, align 8, !tbaa !384, !nonnull !140, !align !299 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !235
  %i.ts = load ptr, ptr %.reload.addr501, align 8, !tbaa !235 ; 2 uses
  %i.tt = load ptr, ptr %i.qi, align 8, !tbaa !210 ; 2 uses
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.ts to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = sdiv exact i64 %i.tw, 72
  %i.ty = invoke ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS2_EEEESB_EESA_NS8_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.tq, ptr %i.tr, ptr %i.ts, ptr %i.tt, i64 noundef %i.tx)
          to label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit unwind label %.from.431 ; 0 uses

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.tz = load ptr, ptr %.reload.addr501, align 8, !tbaa !235 ; 5 uses
  %.not.i.i183 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i183, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit
  %i.ua = load ptr, ptr %i.qi, align 8, !tbaa !210 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.tz, %i.ua
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bv, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ub, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i ], [ %i.ua, %bb.bv ] ; 3 uses
  %i.ub = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -72 ; 4 uses
  %i.uc = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !213 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = atomicrmw add ptr %i.ue, i64 -1 acq_rel, align 8
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %bb.bx, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.uh = load ptr, ptr %i.ud, align 8, !tbaa !71
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(24) %i.ud) #32, !inline_history !47
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ud) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw, %.lr.ph.i.i.i.i
  %i.uk = load i8, ptr %i.ub, align 8
  %i.ul = trunc i8 %i.uk to i1
  br i1 %i.ul, label %bb.by, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

bb.by:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %i.um = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !97
  %i.uo = load i64, ptr %i.ub, align 8
  %i.up = and i64 %i.uo, -2
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.up) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.by, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i184 = icmp eq ptr %i.tz, %i.ub
  br i1 %.not.i.i.i.i184, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr501, align 8, !tbaa !235
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.bv
  %i.uq = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.tz, %bb.bv ] ; 2 uses
  store ptr %i.tz, ptr %i.qi, align 8, !tbaa !210
  %i.ur = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !148
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = ptrtoint ptr %i.uq to i64
  %i.uv = sub i64 %i.ut, %i.uu
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uv) #36
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i
  %i.uw = load ptr, ptr %.reload.addr505, align 8, !tbaa !388 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i185, label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  store ptr %i.uw, ptr %i.rd, align 8, !tbaa !389
  %i.ux = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !106
  %i.uz = ptrtoint ptr %i.uy to i64
  %i.va = ptrtoint ptr %i.uw to i64
  %i.vb = sub i64 %i.uz, %i.va
  call void @_ZdlPvm(ptr noundef nonnull %i.uw, i64 noundef %i.vb) #36
  br label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %bb.bz
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr510)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ca

bb.ca:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135
  %i.vc = landingpad { ptr, i32 }
          catch ptr null
  %i.vd = extractvalue { ptr, i32 } %i.vc, 0
  call void @__clang_call_terminate(ptr %i.vd) #37
  unreachable

.from.416:                                        ; preds = %bb.bt, %.thread267
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr500) #32
  br label %bb.cb

bb.cb:                                            ; preds = %.from.416, %.from.419
  %.pn81 = phi { ptr, i32 } [ %i.ve, %.from.416 ], [ %i.sv, %.from.419 ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !406 ; 2 uses
  %i.vh = icmp ugt i64 %i.vg, 5
  br i1 %i.vh, label %.body160.from., label %.from.434

.body160.from.:                                   ; preds = %bb.cb
  %i.vi = load ptr, ptr %.reload.addr499, align 8, !tbaa !404
  %i.vj = mul i64 %i.vg, 24
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vj) #36
  br label %.from.434

.from.431:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.vk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.434

.from.434:                                        ; preds = %.from.431, %.body160.from.428, %.body160.from.425, %.body160.from., %bb.bk, %bb.bl, %bb.cb
  %.pn82 = phi { ptr, i32 } [ %i.vk, %.from.431 ], [ %.pn81, %.body160.from. ], [ %i.px, %.body160.from.425 ], [ %i.su, %.body160.from.428 ], [ %i.qv, %bb.bl ], [ %i.qv, %bb.bk ], [ %.pn81, %bb.cb ]
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr501) #32
  br label %.from..split443

.from..split443:                                  ; preds = %.from..body156, %.from.402, %.from.434, %.split259, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139447, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152437, %.from..loopexit, %.from..loopexit.split-lp, %.from.440, %.from.446
  %.pn84.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ], [ %i.my, %.split259 ], [ %i.jb, %.split ], [ %i.mv, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit152437 ], [ %.pn83254, %.from.446 ], [ %i.iy, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139447 ], [ %.pn79258, %.from.440 ], [ %lpad.loopexit, %.from..loopexit ], [ %.pn82, %.from.434 ], [ %eh.lpad-body157, %.from..body156 ], [ %i.ox, %.from.402 ] ; 2 uses
  %i.vl = load ptr, ptr %.reload.addr505, align 8, !tbaa !388 ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i188, label %.from.466, label %bb.cc

bb.cc:                                            ; preds = %.from..split443
  %i.vm = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store ptr %i.vl, ptr %i.vm, align 8, !tbaa !389
  %i.vn = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !106
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = ptrtoint ptr %i.vl to i64
  %i.vr = sub i64 %i.vp, %i.vq
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vr) #36
  br label %.from.466

.from.466:                                        ; preds = %.from..split443, %bb.cc, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit130, %.from.453, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112, %.from.457, %.from.460, %.from.463, %.from.468
  %.pn86 = phi { ptr, i32 } [ %i.ab, %.from.468 ], [ %i.ew, %.from.453 ], [ %i.cy, %.from.463 ], [ %i.cz, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112 ], [ %i.fr, %.from.460 ], [ %i.dg, %.from.457 ], [ %i.ep, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit130 ], [ %.pn84.pn.pn, %bb.cc ], [ %.pn84.pn.pn, %.from..split443 ]
  %.16 = extractvalue { ptr, i32 } %.pn86, 0
  %i.vs = call ptr @__cxa_begin_catch(ptr %.16) #32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %4) #32
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr510, ptr nofree noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.cd unwind label %.body520

.body520:                                         ; preds = %.from.466
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  invoke void @__cxa_end_catch()
          to label %.body.from.486 unwind label %bb.cl

bb.cd:                                            ; preds = %.from.466
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.479

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZN4tlog7warningIJRimEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135, %_ZN4tlog7warningIJRiRKmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit, %bb.cd
  %i.vu = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = atomicrmw add ptr %i.vv, i32 -1 acq_rel, align 4 ; 2 uses
  %i.vx = icmp slt i32 %i.vw, 1
  br i1 %i.vx, label %bb.ce, label %_ZN3tev5Latch9countDownEv.exit.i190

bb.ce:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.vy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i194 unwind label %.from..loopexit.split-lp.i.i191

.noexc.i.i194:                                    ; preds = %bb.ce
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !118 ; 7 uses
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !125
  %i.wb = and i32 %i.wa, 8
  %.not.i.i.i.i195 = icmp eq i32 %i.wb, 0
  br i1 %.not.i.i.i.i195, label %bb.cf, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.cf:                                            ; preds = %.noexc.i.i194
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !126 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i196 = icmp eq ptr %i.wd, %i.wf
  br i1 %.not12.i.i.i.i.i196, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i197

.from..lr.ph.i.i.i.i.i197:                        ; preds = %bb.cf
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 33
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vz, i64 40
  br label %.from..noexc2.i.i201

.from..noexc2.i.i201:                             ; preds = %.noexc2.i.i201, %.from..lr.ph.i.i.i.i.i197
  %.sroa.09.013.i.i.i.i.i198 = phi ptr [ %i.wd, %.from..lr.ph.i.i.i.i.i197 ], [ %i.wv, %.noexc2.i.i201 ] ; 2 uses
  %i.wk = load ptr, ptr %.sroa.09.013.i.i.i.i.i198, align 8, !tbaa !130 ; 2 uses
  %i.wl = load i8, ptr %i.wg, align 8             ; 2 uses
  %i.wm = trunc i8 %i.wl to i1                    ; 2 uses
  %i.wn = load ptr, ptr %i.wh, align 8
  %i.wo = select i1 %i.wm, ptr %i.wn, ptr %i.wi
  %i.wp = load i64, ptr %i.wj, align 8
  %i.wq = lshr i8 %i.wl, 1
  %i.wr = zext nneg i8 %i.wq to i64
  %i.ws = select i1 %i.wm, i64 %i.wp, i64 %i.wr
  %i.wt = load ptr, ptr %i.wk, align 8, !tbaa !71
  %i.wu = load ptr, ptr %i.wt, align 8
  invoke void %i.wu(ptr noundef nonnull align 8 dereferenceable(8) %i.wk, ptr %i.wo, i64 %i.ws, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i201 unwind label %.from..loopexit.i.i199, !inline_history !0

.noexc2.i.i201:                                   ; preds = %.from..noexc2.i.i201
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i198, i64 16 ; 2 uses
  %.not.i.i.i.i.i202 = icmp eq ptr %i.wv, %i.wf
  br i1 %.not.i.i.i.i.i202, label %_ZN3tev5Latch9countDownEv.exit.i190, label %.from..noexc2.i.i201

.from..loopexit.i.i199:                           ; preds = %.from..noexc2.i.i201
  %lpad.loopexit.i.i200 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cg

.from..loopexit.split-lp.i.i191:                  ; preds = %bb.ce
  %lpad.loopexit.split-lp.i.i192 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cg

bb.cg:                                            ; preds = %.from..loopexit.split-lp.i.i191, %.from..loopexit.i.i199
  %lpad.phi.i.i193 = phi { ptr, i32 } [ %lpad.loopexit.i.i200, %.from..loopexit.i.i199 ], [ %lpad.loopexit.split-lp.i.i192, %.from..loopexit.split-lp.i.i191 ]
  %i.ww = extractvalue { ptr, i32 } %lpad.phi.i.i193, 0
  call void @__clang_call_terminate(ptr %i.ww) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i190:              ; preds = %.noexc2.i.i201, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.wx = icmp slt i32 %i.vw, 2
  br i1 %i.wx, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i194, %bb.cf, %_ZN3tev5Latch9countDownEv.exit.i190
  %i.wy = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !98 ; 2 uses
  %i.xa = inttoptr i64 %i.wz to ptr               ; 3 uses
  store ptr %i.xa, ptr %.reload.addr505, align 8
  %.not.i203 = icmp eq i64 %i.wz, 0
  br i1 %.not.i203, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend317

AfterCoroSuspend317:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.b, align 8
  %index.addr513 = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  store i2 -2, ptr %index.addr513, align 8
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr nonnull %i.xa)
  br label %AfterCoroEnd

.from.479:                                        ; preds = %bb.cd
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.486

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i190
  %i.xd = load ptr, ptr %i.i, align 8, !tbaa !82  ; 5 uses
  %.not.i.i204 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i204, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = atomicrmw add ptr %i.xe, i64 -1 acq_rel, align 8
  %i.xg = icmp eq i64 %i.xf, 0
  br i1 %i.xg, label %bb.ci, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ci:                                            ; preds = %bb.ch
  %i.xh = load ptr, ptr %i.xd, align 8, !tbaa !71
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(24) %i.xd) #32, !inline_history !44
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ch, %bb.ci
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr510) #32
  %i.xk = load i8, ptr %.reload.addr504, align 8
  %i.xl = trunc i8 %i.xk to i1
  br i1 %i.xl, label %bb.cj, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

bb.cj:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.xm = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !97
  %i.xo = load i64, ptr %.reload.addr504, align 8
  %i.xp = and i64 %i.xo, -2
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xp) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205: ; preds = %bb.cj, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 560) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205, %AfterCoroSuspend317, %AfterCoroSave311, %AfterCoroSave
  ret void

.body.from.486:                                   ; preds = %.body520, %.from.479
  %.pn87 = phi { ptr, i32 } [ %i.xc, %.from.479 ], [ %i.vt, %.body520 ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr510) #32
  br label %.body

.body:                                            ; preds = %.body.from., %.body.from.483, %.body.from.486
  %.merged90 = phi { ptr, i32 } [ %.pn87, %.body.from.486 ], [ %i.s, %.body.from. ], [ %i.d, %.body.from.483 ]
  %i.xq = load i8, ptr %.reload.addr504, align 8
  %i.xr = trunc i8 %i.xq to i1
  br i1 %i.xr, label %bb.ck, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit206

bb.ck:                                            ; preds = %.body
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !97
  %i.xu = load i64, ptr %.reload.addr504, align 8
  %i.xv = and i64 %i.xu, -2
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xv) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit206

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit206: ; preds = %bb.ck, %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 560) #32
  resume { ptr, i32 } %.merged90

bb.cl:                                            ; preds = %.body520
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #37
  unreachable

bb.cm:                                            ; preds = %bb.ar, %bb.ak
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i
  %.011.i.i = phi ptr [ %i.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.011.i.i, align 8, !tbaa !256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 40 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.j = load i64, ptr %i.e, align 8
  %i.k = and i64 %i.j, -2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = load i8, ptr %i.d, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = load i64, ptr %i.d, align 8
  %i.q = and i64 %i.p, -2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i: ; preds = %bb.c, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i.i, i64 noundef 64) #36
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !258    ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !258
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !101
  %i.u = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.u) #36
  br label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEED2Ev.exit

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEED2Ev.exit: ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !407  ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !225  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i1.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %.0.i2.i.i, i64 -96 ; 3 uses
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.l) #32, !inline_history !1142
  %.not.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !407
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.i, %bb.c ] ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !225
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #36, !inline_history !1143
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !408  ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit, label %bb.d

end_hunk_4
begin_hunk_5_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_i":.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
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
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %.0187, label %.from.138, label %.from.157

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135: ; preds = %.thread185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.157

.from.138.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.138

.from.138:                                        ; preds = %.from.138.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.ba, %.split ], [ %.pn4284.ph, %.from.138.sink.split ]
  call void @__cxa_free_exception(ptr %i.ap) #32
  br label %.from.157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.bf = phi i64 [ %i.ao, %bb.f ], [ %i.ai, %.lr.ph.preheader ]
  %i.bg = phi i64 [ %i.am, %bb.f ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi i64 [ %i.al, %bb.f ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bf, %2
  %i.bj = add i64 %i.bh, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i64 %i.bj, ptr %10, align 8, !tbaa !440
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !441
  store ptr %.reload.addr180, ptr %i.ad, align 8, !tbaa !98
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.133

bb.j:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !446 ; 6 uses
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !447
  %i.bm = icmp ult ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  %i.bo = load i64, ptr %9, align 8, !tbaa !98
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !98
  %i.bp = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !98
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !448
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !448
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !98
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr179, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.130

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bs, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bt, %bb.k ]
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !446
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1413

.from.133:                                        ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.142

.from.130:                                        ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #32
  br label %.from.142

.from.142:                                        ; preds = %.from.133, %.from.130
  %.pn43 = phi { ptr, i32 } [ %i.bv, %.from.130 ], [ %i.bu, %.from.133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.from.157

.from.157:                                        ; preds = %.from.142, %.from.138, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.142 ], [ %.pn4284, %.from.138 ], [ %i.ax, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit135 ], [ %i.ba, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #32
  br label %.from.159

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %i.ca = icmp slt i32 %i.bz, 2
  br i1 %i.ca, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !81
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !125
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !126 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127 ; 2 uses
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
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  call void @__clang_call_terminate(ptr %i.dd) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr183 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 false, ptr %index.addr183, align 8
  %i.de = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.de, label %AfterCoroEnd, label %bb.q

.from.151:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.159

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !247 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.148, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.148

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  %i.dj = load ptr, ptr %.reload.addr179, align 8, !tbaa !449 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !446 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.s ]
  %i.dm = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dm) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.dj, %i.dm
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !449
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dn = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dj, %bb.s ] ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !446
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !447
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.ds) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

.from.148:                                        ; preds = %bb.r, %.thread
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #32
  br label %.from.159

.from.159:                                        ; preds = %.from.148, %.from.151, %.from.154, %.from.157
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %.from.154 ], [ %.pn43.pn, %.from.157 ], [ %i.dv, %.from.148 ], [ %i.df, %.from.151 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dw = call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.159
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !118 ; 7 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !125
  %i.ee = and i32 %i.ed, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !126 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !127 ; 2 uses
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
  %i.en = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !130 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 8             ; 2 uses
  %i.ep = trunc i8 %i.eo to i1                    ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %i.el
  %i.es = load i64, ptr %i.em, align 8
  %i.et = lshr i8 %i.eo, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = select i1 %i.ep, i64 %i.es, i64 %i.eu
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !71
  %i.ex = load ptr, ptr %i.ew, align 8
  invoke void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr %i.er, i64 %i.ev, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  call void @__clang_call_terminate(ptr %i.ez) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fa = icmp slt i32 %i.dz, 2
  br i1 %i.fa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !98 ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr               ; 3 uses
  store ptr %i.fd, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.fc, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend110

AfterCoroSuspend110:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr184 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i1 true, ptr %index.addr184, align 8
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
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 acq_rel, align 8
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32, !inline_history !44
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend110, %AfterCoroSave
  ret void

.body.from.175:                                   ; preds = %bb.y, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.fg, %.from.168 ], [ %i.ff, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #32
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr182) #32
  br label %.body

.body:                                            ; preds = %.body.from.175, %.body.from.172, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.175 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.172 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #32
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #37
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future.209") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i"(ptr dead_on_unwind writable sret(%"class.tev::Task.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.209", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 15 uses
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1433
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1433
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1433
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1433
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1434
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !1435
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1435

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !98, !alias.scope !1435
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !382, !noalias !1435
  store ptr %i.j, ptr %i.i, align 8, !tbaa !382, !alias.scope !1435
  store ptr null, ptr %4, align 8, !tbaa !382, !noalias !1435
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1435 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !98, !noalias !1435
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !98, !alias.scope !1435
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1435 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1435
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32, !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !1435
  invoke fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr, ptr nonnull align 1 poison, ptr noundef nonnull byval(%class.anon.345) align 8 %2, ptr noundef nonnull %1, i32 noundef %3)
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !125
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !126 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !127 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store i1 false, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !247
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !125
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !126 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !98 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.co, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend49

AfterCoroSuspend49:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr76, align 8
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
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #32, !inline_history !44
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
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.209", align 8 ; 6 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1446
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1446
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1446
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1446
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1447
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1448
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1448

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !98, !alias.scope !1448
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !382, !noalias !1448
  store ptr %i.j, ptr %i.i, align 8, !tbaa !382, !alias.scope !1448
  store ptr null, ptr %2, align 8, !tbaa !382, !noalias !1448
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1448 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !98, !noalias !1448
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !98, !alias.scope !1448
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1448 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1448
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1448
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !449    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !446  ; 2 uses
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !125
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !127 ; 2 uses
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
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !451
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #32
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !451 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !451 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !247
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
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !451
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !451
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !456
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !457
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
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !456
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
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !456 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !457
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !456
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !458
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
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !118 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !125
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !126 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !127 ; 2 uses
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
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !98 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  store ptr %i.ee, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.ed, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend91

AfterCoroSuspend91:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i1 true, ptr %index.addr144, align 8
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
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32, !inline_history !44
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
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !449    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !446  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !449
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !447
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #8

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.d = load ptr, ptr %0, align 8, !tbaa !449
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
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !447
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
  %i.v = load i64, ptr %1, align 8, !tbaa !98
  store i64 %i.v, ptr %i.s, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !98
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !448
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !448
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !446 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !449   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !98
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !98
  store ptr null, ptr %i.ag, align 8, !tbaa !98
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !98
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !98
  store ptr null, ptr %i.aj, align 8, !tbaa !1450
  store ptr null, ptr %i.ak, align 8, !tbaa !1451
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !448
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !448
  store ptr null, ptr %i.an, align 8, !tbaa !448
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1449

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !447
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !447
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !447
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !447
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !447
  store ptr %i.t, ptr %i.a, align 8, !tbaa !447
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
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.102) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task.207") align 8 captures(none) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef readonly byval(%class.anon.345) align 8 captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %5 = alloca %"struct.std::__1::coroutine_handle.2", align 8 ; 4 uses
  %6 = alloca %"class.std::__1::future.209", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.209", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 12 uses
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.spill.addr, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1462
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1462
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1462
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1462
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1463
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1464
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.b unwind label %bb.d, !noalias !1464

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !98, !alias.scope !1464
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !382, !noalias !1464
  store ptr %i.j, ptr %i.i, align 8, !tbaa !382, !alias.scope !1464
  store ptr null, ptr %7, align 8, !tbaa !382, !noalias !1464
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1464 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !98, !noalias !1464
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !98, !alias.scope !1464
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1464 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1464
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #32, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1464
  store ptr %3, ptr %.reload.addr76, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i2 0, ptr %index.addr80, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.a, ptr %5, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %6, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged14 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #32
  resume { ptr, i32 } %.merged14
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv"(ptr dead_on_unwind writable sret(%"class.tev::Task.207") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.209", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #33 ; 15 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1475
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !71, !noalias !1475
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1475
  store i32 2, ptr %i.g, align 8, !tbaa !77, !noalias !1475
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81, !alias.scope !1476
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !82, !alias.scope !1476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1477
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1477

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !98, !alias.scope !1477
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !382, !noalias !1477
  store ptr %i.j, ptr %i.i, align 8, !tbaa !382, !alias.scope !1477
  store ptr null, ptr %2, align 8, !tbaa !382, !noalias !1477
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !82, !noalias !1477 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !98, !noalias !1477
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !98, !alias.scope !1477
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1477 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37, !noalias !1477
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #32, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1477
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1478, !nonnull !140, !align !299
  %i.u = load i64, ptr %1, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !441
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.u, i64 noundef %i.w)
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !125
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !127 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store i1 false, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #32
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !247
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
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !118 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !125
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !126 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !98 ; 2 uses
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  store ptr %i.cu, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.ct, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend45

AfterCoroSuspend45:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i1 true, ptr %index.addr71, align 8
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
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #32, !inline_history !44
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
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.209") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.361", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.209", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.362, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1489 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1489
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !71, !noalias !1489
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !71, !noalias !1489
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !98, !noalias !1489
  store i64 %i.g, ptr %i.f, align 8, !tbaa !98, !noalias !1489
  store ptr %i.d, ptr %i.e, align 16, !tbaa !462, !noalias !1489
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1489

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #32, !noalias !1489
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #32, !noalias !1489
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #36, !noalias !1489
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !465, !alias.scope !1490
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !466, !alias.scope !1490
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1511, !range !139, !noundef !140
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
  store ptr %i.d, ptr %9, align 8, !tbaa !465
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !466
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !465
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !466
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !473
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !476
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1512
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !477  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !478
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !473
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !473 ; 2 uses
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
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !477
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !473 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_5
begin_hunk_6_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
.from..lr.ph:                                     ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !1548, !nonnull !140, !align !299 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !242  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 5 uses
  %i.z = sub nuw i64 %3, %2                       ; 3 uses
  %min.iters.check = icmp ugt i64 %i.z, 7
  %ident.check.not = icmp eq i64 %i.w, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.from.38.preheader

vector.memcheck:                                  ; preds = %.from..lr.ph
  %i.aa = shl i64 %2, 2
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.aa
  %i.ab = shl i64 %3, 2
  %scevgep58 = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep59 = getelementptr i8, ptr %i.t, i64 32
  %bound0 = icmp ult ptr %scevgep, %scevgep59
  %bound1 = icmp ult ptr %i.y, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.from.38.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 3 uses
  %i.ac = add i64 %2, %n.vec
  %i.ad = load float, ptr %i.x, align 4, !tbaa !245, !alias.scope !1549
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ae = load float, ptr %i.y, align 8, !tbaa !244, !alias.scope !1549
  %broadcast.splatinsert61 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat62 = shufflevector <4 x float> %broadcast.splatinsert61, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ag, align 4, !tbaa !69, !alias.scope !1550, !noalias !1549
  %wide.load60 = load <4 x float>, ptr %i.ah, align 4, !tbaa !69, !alias.scope !1550, !noalias !1549
  %i.ai = fsub <4 x float> %wide.load, %broadcast.splat
  %i.aj = fsub <4 x float> %wide.load60, %broadcast.splat
  %i.ak = fmul <4 x float> %i.ai, %broadcast.splat62
  %i.al = fmul <4 x float> %i.aj, %broadcast.splat62
  store <4 x float> %i.ak, ptr %i.ag, align 4, !tbaa !69, !alias.scope !1550, !noalias !1549
  store <4 x float> %i.al, ptr %i.ah, align 4, !tbaa !69, !alias.scope !1550, !noalias !1549
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.from.38.preheader

.from.38.preheader:                               ; preds = %vector.memcheck, %.from..lr.ph, %middle.block
  %.022.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.from..lr.ph ], [ %i.ac, %middle.block ] ; 5 uses
  %i.an = sub i64 %3, %.022.ph
  %.neg = add i64 %.022.ph, 1
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.38.prol.loopexit, label %.from.38.prol

.from.38.prol:                                    ; preds = %.from.38.preheader
  %i.ao = mul i64 %.022.ph, %i.w
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ao ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !69
  %i.ar = load float, ptr %i.x, align 4, !tbaa !245
  %i.as = fsub float %i.aq, %i.ar
  %i.at = load float, ptr %i.y, align 8, !tbaa !244
  %i.au = fmul float %i.as, %i.at
  store float %i.au, ptr %i.ap, align 4, !tbaa !69
  %i.av = add nuw i64 %.022.ph, 1
  br label %.from.38.prol.loopexit

.from.38.prol.loopexit:                           ; preds = %.from.38.prol, %.from.38.preheader
  %.022.unr = phi i64 [ %.022.ph, %.from.38.preheader ], [ %i.av, %.from.38.prol ]
  %i.aw = icmp eq i64 %3, %.neg
  br i1 %i.aw, label %._crit_edge, label %.from.38

._crit_edge:                                      ; preds = %.from.38.prol.loopexit, %.from.38, %middle.block, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr48)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37
  unreachable

.from.38:                                         ; preds = %.from.38.prol.loopexit, %.from.38
  %.022 = phi i64 [ %i.bo, %.from.38 ], [ %.022.unr, %.from.38.prol.loopexit ] ; 3 uses
  %i.az = mul i64 %.022, %i.w
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.az ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !69
  %i.bc = load float, ptr %i.x, align 4, !tbaa !245
  %i.bd = fsub float %i.bb, %i.bc
  %i.be = load float, ptr %i.y, align 8, !tbaa !244
  %i.bf = fmul float %i.bd, %i.be
  store float %i.bf, ptr %i.ba, align 4, !tbaa !69
  %i.bg = add nuw i64 %.022, 1
  %i.bh = mul i64 %i.bg, %i.w
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bh ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !69
  %i.bk = load float, ptr %i.x, align 4, !tbaa !245
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = load float, ptr %i.y, align 8, !tbaa !244
  %i.bn = fmul float %i.bl, %i.bm
  store float %i.bn, ptr %i.bi, align 4, !tbaa !69
  %i.bo = add nuw i64 %.022, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bo, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %.from.38, !llvm.loop !1541

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !118 ; 7 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !125
  %i.bw = and i32 %i.bv, 8
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !126 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.by, %i.ca
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.by, %.from..lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc2.i.i ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.cg = load i8, ptr %i.cb, align 8             ; 2 uses
  %i.ch = trunc i8 %i.cg to i1                    ; 2 uses
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = select i1 %i.ch, ptr %i.ci, ptr %i.cd
  %i.ck = load i64, ptr %i.ce, align 8
  %i.cl = lshr i8 %i.cg, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.ch, i64 %i.ck, i64 %i.cm
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !71
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr %i.cj, i64 %i.cn, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %i.ca
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
  %i.cr = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.cr) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cs = icmp slt i32 %i.br, 2
  br i1 %i.cs, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !98 ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 3 uses
  store ptr %i.cv, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr49 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr49, align 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr nonnull %i.cv)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !82  ; 5 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = atomicrmw add ptr %i.cy, i64 -1 acq_rel, align 8
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(24) %i.cx) #32, !inline_history !44
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cx) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr48) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.42, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.42 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #32
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nounwind
declare void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !458
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
  store ptr %.0, ptr %i.a, align 8, !tbaa !456
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -8
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.443", align 8 ; 6 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
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
  store ptr %i.g, ptr %3, align 8, !tbaa !1554, !alias.scope !1555
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !483, !alias.scope !1555
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx8) #34
          to label %bb.d unwind label %.body      ; 6 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorISt13exception_ptrEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !457
  store ptr %i.l, ptr %i.i, align 8, !tbaa !456
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx8
  store ptr %i.m, ptr %i.j, align 8, !tbaa !458
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.026.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %1, %bb.d ] ; 2 uses
  %.02325.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.02325.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.026.i.i.i.i.i) #32
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02325.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1553

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE18__construct_at_endINS_11__wrap_iterIPKS1_EES9_EEvT_T0_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.i, align 8, !tbaa !456
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
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
define linkonce_odr dso_local void @_ZN3tev17CompoundExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !457  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !456  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #32
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !457
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

end_hunk_6
begin_hunk_7_@_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_:bb.a

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
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !146
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  store ptr %i.l, ptr %i.i, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !160
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #32
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #23

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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !127  ; 2 uses
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
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  store i1 false, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !451
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #32
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !451 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !451 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !247
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
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !451 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !451
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !456
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 2 uses
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
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !456
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
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !456 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !457
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !456
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !458
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
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !125
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !126 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127 ; 2 uses
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
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !98 ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  store ptr %i.dh, ptr %.reload.addr138, align 8
  %.not.i38 = icmp eq i64 %i.dg, 0
  br i1 %.not.i38, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i1 true, ptr %index.addr143, align 8
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
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #32, !inline_history !44
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
  store i1 true, ptr %index.addr143, align 8
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
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1646

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !457 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !456  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #32
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !457
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !458
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
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume"(ptr nofree nonnull readnone align 8 captures(none) %0) #31 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy"(ptr noundef nonnull align 8 dereferenceable(56) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr48) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !247
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !125
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.an = load i64, ptr %i.am, align 8, !tbaa !98 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i28 = icmp eq i64 %i.an, 0
  br i1 %.not.i28, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr71 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr71, align 8
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !44
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
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !488

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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i.resume"(ptr noundef nonnull align 8 dereferenceable(104) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend49, !prof !1647

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iENKUlvE_clEv"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr)
          to label %bb.a unwind label %.from.62

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave47

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread33.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread33.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

AfterCoroSave47:                                  ; preds = %bb.a
  store i2 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %0) #32
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend49

.from.62:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend49:                               ; preds = %resume.entry, %AfterCoroSave47
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread33, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend49
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread33.sink.split unwind label %.from.60, !inline_history !4

.thread33.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !247
  br label %.thread33

.thread33:                                        ; preds = %.thread33.sink.split, %AfterCoroSuspend49
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.60

bb.g:                                             ; preds = %.thread33
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr79)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

.from.60:                                         ; preds = %bb.f, %.thread33
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
  br label %bb.i

bb.i:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.60 ], [ %i.ak, %.from.62 ]
  %.07 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.07) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr79)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i18

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i22 unwind label %.from..loopexit.split-lp.i.i19

.noexc.i.i22:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !125
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i23 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i23, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !126 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !127 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i26, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  tail call void @__clang_call_terminate(ptr %i.bv) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i18:               ; preds = %.noexc2.i.i29, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i18, %bb.l, %.noexc.i.i22
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !98 ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  store ptr %i.bz, ptr %.reload.addr76, align 8
  %.not.i31 = icmp eq i64 %i.by, 0
  br i1 %.not.i31, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
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
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSave47
  ret void

bb.r:                                             ; preds = %bb.o, %.from.70
  %.pn12 = phi { ptr, i32 } [ %i.cc, %.from.70 ], [ %i.cb, %bb.o ]
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %.pn12

bb.s:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSF_PS0_iE_clESF_SK_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !1648

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #32
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
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr79) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume"(ptr noundef nonnull align 8 dereferenceable(80) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !247
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !125
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.an = load i64, ptr %i.am, align 8, !tbaa !98 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i32, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i1 true, ptr %index.addr76, align 8
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !44
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
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEmTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEmTkNS4_IS5_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES5_S5_mT0_iEUlmmE_EESC_S5_S5_mSD_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy"(ptr noundef nonnull align 8 dereferenceable(80) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !488

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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_i.resume"(ptr noundef nonnull align 16 dereferenceable(144) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr178, align 16, !tbaa !247 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr178, align 16, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.d = load ptr, ptr %.reload.addr179, align 8, !tbaa !449 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !446 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !449
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !447
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #36
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr182)
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
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr179) #32
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.168

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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !125
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !98 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  store ptr %i.ay, ptr %.reload.addr179, align 8
  %.not.i71 = icmp eq i64 %i.ax, 0
  br i1 %.not.i71, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr184 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr184, align 8
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
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.168
  %.pn44 = phi { ptr, i32 } [ %i.bb, %.from.168 ], [ %i.ba, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn44

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_i.destroy"(ptr noundef nonnull align 16 dereferenceable(144) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !1649

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr178) #32
  %i.a = load ptr, ptr %.reload.addr179, align 8, !tbaa !449 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !446 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr179, align 8, !tbaa !449
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !447
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
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i.resume"(ptr noundef nonnull align 8 dereferenceable(112) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !247 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !4

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !125
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !130 ; 2 uses
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
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.111, i64 36)
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
  %i.an = load i64, ptr %i.am, align 8, !tbaa !98 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i1 true, ptr %index.addr80, align 8
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
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #32
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(112) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !488

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 72
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE.resume"(ptr noundef nonnull align 16 dereferenceable(560) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.tev::ChannelView.465", align 8 ; 4 uses
  %.reload.addr498 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %.reload.addr499 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %.reload.addr503 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %.reload.addr504 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.reload.addr505 = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %.reload.addr506 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %.reload.addr507 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend313, !prof !1656

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.pr = load ptr, ptr %.reload.addr498, align 8, !tbaa !393, !noalias !1657 ; 3 uses
  %.not.i154 = icmp eq ptr %.pr, null
  br i1 %.not.i154, label %.thread, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body156.from.399, !inline_history !45

.thread.sink.split:                               ; preds = %bb.a
  store ptr null, ptr %.reload.addr498, align 8, !tbaa !393
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !396, !noalias !1658 ; 7 uses
  store ptr null, ptr %i.d, align 16, !tbaa !396, !noalias !1658
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.12") align 8 %.reload.addr506, ptr noundef nonnull align 8 dereferenceable(144) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !46
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.l = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body156.from.396, label %.from.436

.body156.from.396:                                ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !46
  br label %.from.436

bb.e:                                             ; preds = %bb.c, %bb.b
  %.reload.addr493 = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.reload494 = load ptr, ptr %.reload.addr493, align 8, !tbaa !398
  %i.s = getelementptr inbounds nuw i8, ptr %.reload494, i64 24
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr498) #32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !384, !nonnull !140, !align !299
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !235  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !214, !noalias !1659 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !221, !noalias !1659
  %.not.i158 = icmp eq i32 %i.y, 7
  br i1 %.not.i158, label %bb.h, label %bb.f, !prof !222

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1659 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.105)
          to label %bb.g unwind label %.body160.from.425, !noalias !1659

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.noexc159 unwind label %.body160.from.428

.noexc159:                                        ; preds = %bb.g
  unreachable

.body160.from.425:                                ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #32, !noalias !1659
  br label %.from.434

bb.h:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !98, !noalias !1659
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !238, !noalias !1659
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !224, !noalias !1659
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !97, !noalias !1659
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  store ptr %i.ah, ptr %1, align 8, !tbaa !400
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !401
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8, !tbaa !97
  %i.ak = load ptr, ptr %.reload.addr506, align 16, !tbaa !235 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !210
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 72
  store ptr %i.ak, ptr %.reload.addr507, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %i.aq, ptr %i.ar, align 16
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr498, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr507)
          to label %.noexc162 unwind label %.body160.from.428

.noexc162:                                        ; preds = %bb.h
  %i.as = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !405
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr499, ptr %i.as, i64 %i.au)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.noexc162
  %i.av = load i64, ptr %i.d, align 16, !tbaa !406 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 5
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.ay = mul i64 %i.av, 24
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ay) #36
  br label %bb.m

bb.k:                                             ; preds = %.noexc162
  %i.az = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ba = load i64, ptr %i.d, align 16, !tbaa !406 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 5
  br i1 %i.bb, label %bb.l, label %.from.434

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %.reload.addr498, align 8, !tbaa !404
  %i.bd = mul i64 %i.ba, 24
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #36
  br label %.from.434

bb.m:                                             ; preds = %bb.j, %bb.i
  %.reload.addr496 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.reload497 = load double, ptr %.reload.addr496, align 16, !tbaa !398
  %.reload = load ptr, ptr %.reload.addr493, align 8, !tbaa !398
  %i.be = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %i.bf = fptosi double %.reload497 to i32
  %i.bg = load ptr, ptr %.reload.addr505, align 16, !tbaa !388 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !389
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !391, !nonnull !140, !align !294
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !99
  %.sroa.2.0.insert.ext = zext i32 %i.bf to i64
  %.sroa.0209.0.insert.insert = mul nuw i64 %.sroa.2.0.insert.ext, 4294967297
  invoke void @_ZN3tev8demosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr503, ptr noundef nonnull byval(%"class.tev::ChannelView.465") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr499, ptr %i.bg, i64 %i.bl, i64 %.sroa.0209.0.insert.insert, i32 noundef %i.bn)
          to label %bb.n unwind label %.from.419

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load atomic i32, ptr %i.bq acquire, align 4
  %i.bs = icmp slt i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %AfterCoroSave311

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bo, align 16, !tbaa !81
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %bb.p, label %.thread267.sink.split

bb.p:                                             ; preds = %bb.o
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i169 unwind label %.from..loopexit.split-lp.i.i166

.noexc.i.i169:                                    ; preds = %bb.p
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !118 ; 7 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !125
  %i.ca = and i32 %i.bz, 8
  %.not.i.i.i.i170 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i170, label %bb.q, label %.thread267.sink.split

bb.q:                                             ; preds = %.noexc.i.i169
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !126 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i171 = icmp eq ptr %i.cc, %i.ce
  br i1 %.not12.i.i.i.i.i171, label %.thread267.sink.split, label %.from..lr.ph.i.i.i.i.i172

.from..lr.ph.i.i.i.i.i172:                        ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  br label %.from..noexc2.i.i176

.from..noexc2.i.i176:                             ; preds = %.noexc2.i.i176, %.from..lr.ph.i.i.i.i.i172
  %.sroa.09.013.i.i.i.i.i173 = phi ptr [ %i.cc, %.from..lr.ph.i.i.i.i.i172 ], [ %i.cu, %.noexc2.i.i176 ] ; 2 uses
  %i.cj = load ptr, ptr %.sroa.09.013.i.i.i.i.i173, align 8, !tbaa !130 ; 2 uses
  %i.ck = load i8, ptr %i.cf, align 8             ; 2 uses
  %i.cl = trunc i8 %i.ck to i1                    ; 2 uses
  %i.cm = load ptr, ptr %i.cg, align 8
  %i.cn = select i1 %i.cl, ptr %i.cm, ptr %i.ch
  %i.co = load i64, ptr %i.ci, align 8
  %i.cp = lshr i8 %i.ck, 1
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = select i1 %i.cl, i64 %i.co, i64 %i.cq
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !71
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr %i.cn, i64 %i.cr, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i176 unwind label %.from..loopexit.i.i174, !inline_history !0

.noexc2.i.i176:                                   ; preds = %.from..noexc2.i.i176
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i173, i64 16 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.cu, %i.ce
  br i1 %.not.i.i.i.i.i177, label %.thread267.sink.split, label %.from..noexc2.i.i176

.from..loopexit.i.i174:                           ; preds = %.from..noexc2.i.i176
  %lpad.loopexit.i.i175 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.from..loopexit.split-lp.i.i166:                  ; preds = %bb.p
  %lpad.loopexit.split-lp.i.i167 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.from..loopexit.split-lp.i.i166, %.from..loopexit.i.i174
  %lpad.phi.i.i168 = phi { ptr, i32 } [ %lpad.loopexit.i.i175, %.from..loopexit.i.i174 ], [ %lpad.loopexit.split-lp.i.i167, %.from..loopexit.split-lp.i.i166 ]
  %i.cv = extractvalue { ptr, i32 } %lpad.phi.i.i168, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #37
  unreachable

AfterCoroSave311:                                 ; preds = %bb.n
  store i2 1, ptr %index.addr, align 16
  %i.cw = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr503, ptr nonnull %0) #32
  br i1 %i.cw, label %CoroEnd, label %AfterCoroSuspend313

.body156.from.399:                                ; preds = %bb.a
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.436

.from.436:                                        ; preds = %.body156.from.396, %.body156.from.399, %bb.d
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.cx, %.body156.from.399 ], [ %i.l, %.body156.from.396 ], [ %i.l, %bb.d ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr498) #32
  br label %.from.450

.body160.from.428:                                ; preds = %bb.g, %bb.h
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.434

.from.419:                                        ; preds = %bb.m
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

AfterCoroSuspend313:                              ; preds = %resume.entry, %AfterCoroSave311
  %.pr265 = load ptr, ptr %.reload.addr503, align 16, !tbaa !247 ; 3 uses
  %.not.i178 = icmp eq ptr %.pr265, null
  br i1 %.not.i178, label %.thread267, label %bb.s

bb.s:                                             ; preds = %AfterCoroSuspend313
  %i.da = getelementptr inbounds nuw i8, ptr %.pr265, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr nonnull %.pr265)
          to label %.thread267.sink.split unwind label %.from.416, !inline_history !4

.thread267.sink.split:                            ; preds = %.noexc2.i.i176, %bb.s, %bb.q, %.noexc.i.i169, %bb.o
  store ptr null, ptr %.reload.addr503, align 16, !tbaa !247
  br label %.thread267

.thread267:                                       ; preds = %.thread267.sink.split, %AfterCoroSuspend313
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 360
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.416

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread267
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr503) #32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !406 ; 2 uses
  %i.df = icmp ugt i64 %i.de, 5
  br i1 %i.df, label %bb.t, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.t:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dg = load ptr, ptr %.reload.addr499, align 8, !tbaa !404
  %i.dh = mul i64 %i.de, 24
  tail call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dh) #36
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.t
  %.reload.addr491 = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %.reload492 = load ptr, ptr %.reload.addr491, align 8, !tbaa !398 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.reload492, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !384, !nonnull !140, !align !299
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !235 ; 5 uses
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.: ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 5, ptr %i.dn, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !97
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409: ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit
  store i8 10, ptr %i.dk, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %.reload490.pre = load ptr, ptr %.reload.addr491, align 8, !tbaa !398
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.
  %.reload490 = phi ptr [ %.reload492, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from. ], [ %.reload490.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409 ]
  %i.dr = phi ptr [ %i.dp, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from. ], [ %i.dq, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i.from.409 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.reload490, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dr, ptr noundef nonnull align 1 dereferenceable(5) @.str.131, i64 5, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  store i8 0, ptr %i.du, align 1, !tbaa !97
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !384, !nonnull !140, !align !299 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !235
  %i.dx = load ptr, ptr %.reload.addr506, align 16, !tbaa !235 ; 2 uses
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !210 ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 72
  %i.ed = invoke ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS2_EEEESB_EESA_NS8_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr %i.dw, ptr %i.dx, ptr %i.dy, i64 noundef %i.ec)
          to label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit unwind label %.from.431 ; 0 uses

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.ee = load ptr, ptr %.reload.addr506, align 16, !tbaa !235 ; 5 uses
  %.not.i.i183 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i183, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !210 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.eg, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i ], [ %i.ef, %bb.u ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -72 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !213 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.w, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32, !inline_history !47
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i
  %i.ep = load i8, ptr %i.eg, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.x, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

bb.x:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !97
  %i.et = load i64, ptr %i.eg, align 8
  %i.eu = and i64 %i.et, -2
  tail call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.eu) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.x, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i184 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i.i.i.i184, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr506, align 16, !tbaa !235
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.u
  %i.ev = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ee, %bb.u ] ; 2 uses
  store ptr %i.ee, ptr %i.ds, align 8, !tbaa !210
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !148
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.fa) #36
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i
  %i.fb = load ptr, ptr %.reload.addr505, align 16, !tbaa !388 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i185, label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !389
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fe = load ptr, ptr %i.fd, align 16, !tbaa !106
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fb to i64
  %i.fh = sub i64 %i.ff, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fh) #36
  br label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %bb.y
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr510)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  tail call void @__clang_call_terminate(ptr %i.fj) #37
  unreachable

.from.416:                                        ; preds = %bb.s, %.thread267
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr503) #32
  br label %bb.aa

bb.aa:                                            ; preds = %.from.416, %.from.419
  %.pn81 = phi { ptr, i32 } [ %i.fk, %.from.416 ], [ %i.cz, %.from.419 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fm = load i64, ptr %i.fl, align 16, !tbaa !406 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 5
  br i1 %i.fn, label %.body160.from., label %.from.434

.body160.from.:                                   ; preds = %bb.aa
  %i.fo = load ptr, ptr %.reload.addr499, align 8, !tbaa !404
  %i.fp = mul i64 %i.fm, 24
  tail call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fp) #36
  br label %.from.434

.from.431:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.434

.from.434:                                        ; preds = %.from.431, %.body160.from.425, %.body160.from.428, %.body160.from., %bb.k, %bb.l, %bb.aa
  %.pn82 = phi { ptr, i32 } [ %i.fq, %.from.431 ], [ %.pn81, %.body160.from. ], [ %i.aa, %.body160.from.425 ], [ %i.cy, %.body160.from.428 ], [ %i.az, %bb.l ], [ %i.az, %bb.k ], [ %.pn81, %bb.aa ]
  tail call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr506) #32
  br label %.from.450

.from.450:                                        ; preds = %.from.434, %.from.436
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %.from.434 ], [ %eh.lpad-body157, %.from.436 ]
  %i.fr = load ptr, ptr %.reload.addr505, align 16, !tbaa !388 ; 4 uses
  %.not.i.i188 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i188, label %.from.466, label %bb.ab

bb.ab:                                            ; preds = %.from.450
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !389
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !106
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = sub i64 %i.fv, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fx) #36
  br label %.from.466

.from.466:                                        ; preds = %bb.ab, %.from.450
  %.16 = extractvalue { ptr, i32 } %.pn82.pn, 0
  %i.fy = tail call ptr @__cxa_begin_catch(ptr %.16) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr510)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %.from.466
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.479

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.ac, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit135
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !81
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = atomicrmw add ptr %i.gb, i32 -1 acq_rel, align 4 ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ad, label %_ZN3tev5Latch9countDownEv.exit.i190

bb.ad:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i194 unwind label %.from..loopexit.split-lp.i.i191

.noexc.i.i194:                                    ; preds = %bb.ad
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !118 ; 7 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !125
  %i.gh = and i32 %i.gg, 8
  %.not.i.i.i.i195 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i.i195, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.ae:                                            ; preds = %.noexc.i.i194
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !126 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i196 = icmp eq ptr %i.gj, %i.gl
  br i1 %.not12.i.i.i.i.i196, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i197

.from..lr.ph.i.i.i.i.i197:                        ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 33
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  br label %.from..noexc2.i.i201

.from..noexc2.i.i201:                             ; preds = %.noexc2.i.i201, %.from..lr.ph.i.i.i.i.i197
  %.sroa.09.013.i.i.i.i.i198 = phi ptr [ %i.gj, %.from..lr.ph.i.i.i.i.i197 ], [ %i.hb, %.noexc2.i.i201 ] ; 2 uses
  %i.gq = load ptr, ptr %.sroa.09.013.i.i.i.i.i198, align 8, !tbaa !130 ; 2 uses
  %i.gr = load i8, ptr %i.gm, align 8             ; 2 uses
  %i.gs = trunc i8 %i.gr to i1                    ; 2 uses
  %i.gt = load ptr, ptr %i.gn, align 8
  %i.gu = select i1 %i.gs, ptr %i.gt, ptr %i.go
  %i.gv = load i64, ptr %i.gp, align 8
  %i.gw = lshr i8 %i.gr, 1
  %i.gx = zext nneg i8 %i.gw to i64
  %i.gy = select i1 %i.gs, i64 %i.gv, i64 %i.gx
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !71
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr %i.gu, i64 %i.gy, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i201 unwind label %.from..loopexit.i.i199, !inline_history !0

.noexc2.i.i201:                                   ; preds = %.from..noexc2.i.i201
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i198, i64 16 ; 2 uses
  %.not.i.i.i.i.i202 = icmp eq ptr %i.hb, %i.gl
  br i1 %.not.i.i.i.i.i202, label %_ZN3tev5Latch9countDownEv.exit.i190, label %.from..noexc2.i.i201

.from..loopexit.i.i199:                           ; preds = %.from..noexc2.i.i201
  %lpad.loopexit.i.i200 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.af

.from..loopexit.split-lp.i.i191:                  ; preds = %bb.ad
  %lpad.loopexit.split-lp.i.i192 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.af

bb.af:                                            ; preds = %.from..loopexit.split-lp.i.i191, %.from..loopexit.i.i199
  %lpad.phi.i.i193 = phi { ptr, i32 } [ %lpad.loopexit.i.i200, %.from..loopexit.i.i199 ], [ %lpad.loopexit.split-lp.i.i192, %.from..loopexit.split-lp.i.i191 ]
  %i.hc = extractvalue { ptr, i32 } %lpad.phi.i.i193, 0
  tail call void @__clang_call_terminate(ptr %i.hc) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i190:              ; preds = %.noexc2.i.i201, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.hd = icmp slt i32 %i.gc, 2
  br i1 %i.hd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i190, %bb.ae, %.noexc.i.i194
  %i.he = load ptr, ptr %i.fz, align 8, !tbaa !81
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !98 ; 2 uses
  %i.hg = inttoptr i64 %i.hf to ptr               ; 3 uses
  store ptr %i.hg, ptr %.reload.addr505, align 16
  %.not.i203 = icmp eq i64 %i.hf, 0
  br i1 %.not.i203, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  %i.hh = load ptr, ptr %i.hg, align 8
  musttail call void %i.hh(ptr nonnull %i.hg)
  ret void

bb.ah:                                            ; preds = %.from.466
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

.from.479:                                        ; preds = %bb.ac
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i190, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hl = load ptr, ptr %i.hk, align 16, !tbaa !82 ; 5 uses
  %.not.i.i204 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i204, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = atomicrmw add ptr %i.hm, i64 -1 acq_rel, align 8
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(24) %i.hl) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hl) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aj, %bb.ai, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr510) #32
  %i.hs = load i8, ptr %.reload.addr504, align 8
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %bb.ak, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !97
  %i.hw = load i64, ptr %.reload.addr504, align 8
  %i.hx = and i64 %i.hw, -2
  tail call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hx) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 560) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205, %AfterCoroSave311
  ret void

bb.al:                                            ; preds = %bb.ah, %.from.479
  %.pn87 = phi { ptr, i32 } [ %i.hj, %.from.479 ], [ %i.hi, %bb.ah ]
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  resume { ptr, i32 } %.pn87

bb.am:                                            ; preds = %bb.ah
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  tail call void @__clang_call_terminate(ptr %i.hz) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE.destroy"(ptr noundef nonnull align 16 dereferenceable(560) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr499 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload.addr504 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.reload.addr505 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.reload.addr506 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %index = load i2, ptr %index.addr, align 16
  switch i2 %index, label %unreachable [
    i2 0, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
    i2 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit
    i2 -2, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  ], !prof !1660

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr498 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr498) #32
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr503 = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr503) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 16, !tbaa !406 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %bb.a, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.d = load ptr, ptr %.reload.addr499, align 8, !tbaa !404
  %i.e = mul i64 %i.b, 24
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.e) #36
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.a
  %i.f = load ptr, ptr %.reload.addr506, align 16, !tbaa !235 ; 5 uses
  %.not.i.i183 = icmp eq ptr %i.f, null
  br i1 %.not.i.i183, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -72 ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213  ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #32, !inline_history !47
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #32
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i
  %i.r = load i8, ptr %i.i, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = load i64, ptr %i.i, align 8
  %i.w = and i64 %i.v, -2
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i184 = icmp eq ptr %i.f, %i.i
  br i1 %.not.i.i.i.i184, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr506, align 16, !tbaa !235
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.b
  %i.x = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !210
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !148
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ac) #36
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE6insertINS_13move_iteratorINS_11__wrap_iterIPS2_EEEETnNS_9enable_ifIXaasr31__has_forward_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISD_E9referenceEEE5valueEiE4typeELi0EEESA_NS8_IPKS2_EESD_SD_.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit.from._ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.ad = load ptr, ptr %.reload.addr505, align 16, !tbaa !388 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i185, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !389
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !106
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aj) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev.exit, %bb.f, %resume.entry
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !82 ; 5 uses
  %.not.i.i204 = icmp eq ptr %i.al, null
  br i1 %.not.i.i204, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw add ptr %i.am, i64 -1 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #32, !inline_history !44
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.h, %bb.g, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr510) #32
  %i.as = load i8, ptr %.reload.addr504, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

bb.i:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = load i64, ptr %.reload.addr504, align 8
  %i.ax = and i64 %i.aw, -2
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ax) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit205: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 560) #32
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileii.resume(ptr noundef nonnull align 16 dereferenceable(1376) %0) #3 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::__1::optional", align 16 ; 14 uses
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %.reload.addr897 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.reload.addr910 = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 9 uses
  %.reload.addr911 = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 7 uses
  %.reload.addr912 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 12 uses
  %.reload.addr913 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %.reload.addr917 = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 4 uses
  %.reload.addr922 = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 7 uses
  %.reload.addr923 = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 7 uses
  %.reload.addr932 = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 3 uses
  %.reload.addr933 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.reload.addr940 = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %.reload.addr942 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.reload.addr943 = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %.reload.addr950 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 395 ; 6 uses
  %index = load i2, ptr %index.addr, align 1
  switch i2 %index, label %unreachable [
    i2 0, label %AfterCoroSuspend.preheader
    i2 1, label %AfterCoroSuspend599
    i2 -2, label %AfterCoroSuspend603
  ], !prof !1665

AfterCoroSuspend.preheader:                       ; preds = %resume.entry
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %.080502.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %.reload.addr895 = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %.reload.addr892 = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %.reload.addr884 = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  br label %bb.m

bb.a:                                             ; preds = %bb.o
  store i64 %i.bp, ptr %.080502.reload.addr, align 8
  %i.g = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !234

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  %.not.i309 = icmp eq i32 %i.i, 0
  br i1 %.not.i309, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.d unwind label %.body310.from.

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body310.from.:                                   ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #32
  br label %bb.bg

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.d, %bb.b, %bb.a
  %i.l = load ptr, ptr %.reload.addr897, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %i.bp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !214, !noalias !1666 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !221, !noalias !1666
  %.not.i312 = icmp eq i32 %i.q, 7
  br i1 %.not.i312, label %bb.g, label %bb.e, !prof !222

bb.e:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #32, !noalias !1666 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.105)
          to label %bb.f unwind label %.body310.from.793, !noalias !1666

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %.noexc314 unwind label %.body310.from..loopexit.split-lp

.noexc314:                                        ; preds = %bb.f
  unreachable

.body310.from.793:                                ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #32, !noalias !1666
  br label %bb.bg

bb.g:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %.reload896 = load float, ptr %.reload.addr895, align 4, !tbaa !237
  %.reload893 = load float, ptr %.reload.addr892, align 16, !tbaa !237
  %.reload885 = load i64, ptr %.reload.addr884, align 8, !tbaa !237
  %.reload = load i64, ptr %.reload.addr, align 16, !tbaa !237
  %i.t = fsub float %.reload893, %.reload896
  %i.u = fdiv float 1.000000e+00, %i.t
  %i.v = mul i64 %.reload, %.reload885            ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !98, !noalias !1666
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !238, !noalias !1666
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !224, !noalias !1666
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i313 = load i64, ptr %i.ab, align 8, !tbaa !97, !noalias !1666
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aa
  store ptr %i.ac, ptr %.reload.addr913, align 8, !tbaa !241, !alias.scope !1666
  store i64 %i.y, ptr %i.d, align 16, !tbaa !242, !alias.scope !1666
  store i64 %.sroa.0.0.copyload.i313, ptr %i.c, align 8, !tbaa !97, !alias.scope !1666
  store float %i.u, ptr %i.e, align 16, !tbaa !244
  %i.ad = load float, ptr %.reload.addr942, align 16, !tbaa !69
  store float %i.ad, ptr %i.b, align 4, !tbaa !245
  %i.ae = load i32, ptr %.reload.addr943, align 4, !tbaa !99
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr910, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.v, i64 noundef %i.v, ptr noundef nonnull byval(%class.anon.234) align 8 %.reload.addr913, i32 noundef %i.ae)
          to label %bb.h unwind label %.body310.from..loopexit

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load atomic i32, ptr %i.ag acquire, align 4
  %i.ai = icmp slt i32 %i.ah, 2
  br i1 %i.ai, label %bb.i, label %AfterCoroSave

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw add ptr %i.ak, i32 -1 acq_rel, align 4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118 ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !125
  %i.aq = and i32 %i.ap, 8
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %.thread.sink.split

bb.k:                                             ; preds = %.noexc.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !126 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.as, %.from..lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc2.i.i ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.ba = load i8, ptr %i.av, align 8             ; 2 uses
  %i.bb = trunc i8 %i.ba to i1                    ; 2 uses
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = select i1 %i.bb, ptr %i.bc, ptr %i.ax
  %i.be = load i64, ptr %i.ay, align 8
  %i.bf = lshr i8 %i.ba, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = select i1 %i.bb, i64 %i.be, i64 %i.bg
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !71
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr %i.bd, i64 %i.bh, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i318 = icmp eq ptr %i.bk, %i.au
  br i1 %.not.i.i.i.i.i318, label %.thread.sink.split, label %.from..noexc2.i.i

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
  %i.bl = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.h
  store i2 0, ptr %index.addr, align 1
  %i.bm = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr910, ptr nonnull %0) #32
  br i1 %i.bm, label %CoroEnd, label %bb.m

.body310.from..loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

.body310.from..loopexit.split-lp:                 ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

bb.m:                                             ; preds = %AfterCoroSuspend.preheader, %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr910, align 8, !tbaa !247 ; 3 uses
  %.not.i319 = icmp eq ptr %.pr, null
  br i1 %.not.i319, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body310.from.795, !inline_history !4

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.n, %bb.k, %.noexc.i.i, %bb.i
  store ptr null, ptr %.reload.addr910, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.o unwind label %.body310.from.795

bb.o:                                             ; preds = %.thread
  %.080502.reload = load i64, ptr %.080502.reload.addr, align 8, !tbaa !237
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr910) #32
  %i.bp = add nuw i64 %.080502.reload, 1          ; 3 uses
  %i.bq = load i64, ptr %.reload.addr932, align 16, !tbaa !101
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.a, label %.thread447, !llvm.loop !1663

.body310.from.795:                                ; preds = %bb.n, %.thread
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr910) #32
  br label %bb.bg

.thread447:                                       ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 16, ptr %4, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i64 5928219604812255058, ptr %i.bt, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.bu, align 1, !tbaa !97
  %i.bv = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr911, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330 unwind label %bb.s ; 7 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330: ; preds = %.thread447
  %i.bw = load i8, ptr %4, align 8
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.ca = load i64, ptr %4, align 8
  %i.cb = and i64 %i.ca, -2
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cb) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit330
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cc = icmp eq ptr %i.bv, null
  br i1 %i.cc, label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8             ; 2 uses
  %i.cf = trunc i8 %i.ce to i1                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = lshr i8 %i.ce, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = select i1 %i.cf, i64 %i.ch, i64 %i.cj   ; 2 uses
  switch i64 %i.ck, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread [
    i64 9, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
    i64 8, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7
  ]

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 41
  %i.co = select i1 %i.cf, ptr %i.cm, ptr %i.cn   ; 2 uses
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = xor i64 %i.cp, 6137646870288420674
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.ct, 80
  %i.cv = or i64 %i.cq, %i.cu
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit13.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7: ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 41
  %i.da = select i1 %i.cf, ptr %.pre, ptr %i.cz
  %bcmp.i.i6 = call i32 @bcmp(ptr %i.da, ptr nonnull @.str.70, i64 %i.ck)
  %i.db = icmp eq i32 %bcmp.i.i6, 0
  br i1 %i.db, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit13.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, %bb.r, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.from.834

.noexc:                                           ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSG_(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, i32 noundef 8, ptr nonnull @.str.71, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr940, ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit unwind label %.from.834

bb.s:                                             ; preds = %.thread447
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = load i8, ptr %4, align 8
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.t, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !97
  %i.dj = load i64, ptr %4, align 8
  %i.dk = and i64 %i.dj, -2
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dk) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.bg

.from.834:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7.thread, %.noexc
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit13.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %i.dm = phi i32 [ 1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit ], [ 4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit7 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.dm, ptr %i.dn, align 16, !tbaa !204
  br label %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit

_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit: ; preds = %.noexc, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit13.thread, %bb.q
  store ptr %.reload.addr932, ptr %.reload.addr910, align 8, !tbaa !248
  store ptr %.reload.addr940, ptr %i.a, align 16, !tbaa !249
  store ptr %.reload.addr911, ptr %i.f, align 8, !tbaa !251
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %.reload.addr897, ptr %i.do, align 16, !tbaa !146
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %.reload.addr933, ptr %i.dp, align 8, !tbaa !253
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %.reload.addr943, ptr %i.dq, align 16, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 16, ptr %3, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i64 6071222086953156930, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.ds, align 1, !tbaa !97
  %i.dt = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr911, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341 unwind label %bb.af ; 4 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341: ; preds = %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.du = load i8, ptr %3, align 8
  %i.dv = trunc i8 %i.du to i1
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !97
  %i.dy = load i64, ptr %3, align 8
  %i.dz = and i64 %i.dy, -2
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.dz) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit341
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ea = icmp eq ptr %i.dt, null
  br i1 %i.ea, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 8
  %i.ed = trunc i8 %i.ec to i1
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr923, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !tbaa.struct !207
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit

bb.y:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !97
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !97
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr923, ptr noundef %i.ef, i64 noundef %i.eh)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit: ; preds = %bb.y, %bb.x
  invoke fastcc void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr912, ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr910, ptr nofree noundef nonnull align 8 dereferenceable(24) %.reload.addr923)
          to label %bb.z unwind label %.from.802

bb.z:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 16, !tbaa !81
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load atomic i32, ptr %i.ek acquire, align 4
  %i.em = icmp slt i32 %i.el, 2
  br i1 %i.em, label %bb.aa, label %AfterCoroSave597

bb.aa:                                            ; preds = %bb.z
  %i.en = load ptr, ptr %i.ei, align 16, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp slt i32 %i.ep, 1
  br i1 %i.eq, label %bb.ab, label %AfterCoroSuspend599.thread48.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i17 unwind label %.loopexit.split-lp.i.i14

.noexc.i.i17:                                     ; preds = %bb.ab
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !118 ; 7 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !125
  %i.eu = and i32 %i.et, 8
  %.not.i.i.i.i18 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i.i18, label %bb.ac, label %AfterCoroSuspend599.thread48.sink.split

bb.ac:                                            ; preds = %.noexc.i.i17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !126 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i19 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not12.i.i.i.i.i19, label %AfterCoroSuspend599.thread48.sink.split, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 33
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc2.i.i24, %.lr.ph.i.i.i.i.i20
  %.sroa.09.013.i.i.i.i.i21 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i20 ], [ %i.fo, %.noexc2.i.i24 ] ; 2 uses
  %i.fd = load ptr, ptr %.sroa.09.013.i.i.i.i.i21, align 8, !tbaa !130 ; 2 uses
  %i.fe = load i8, ptr %i.ez, align 8             ; 2 uses
  %i.ff = trunc i8 %i.fe to i1                    ; 2 uses
  %i.fg = load ptr, ptr %i.fa, align 8
  %i.fh = select i1 %i.ff, ptr %i.fg, ptr %i.fb
  %i.fi = load i64, ptr %i.fc, align 8
  %i.fj = lshr i8 %i.fe, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = select i1 %i.ff, i64 %i.fi, i64 %i.fk
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !71
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr %i.fh, i64 %i.fl, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i24 unwind label %.loopexit.i.i22, !inline_history !0

.noexc2.i.i24:                                    ; preds = %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, %i.ey
  br i1 %.not.i.i.i.i.i, label %AfterCoroSuspend599.thread48.sink.split, label %bb.ad

.loopexit.i.i22:                                  ; preds = %bb.ad
  %lpad.loopexit.i.i23 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

.loopexit.split-lp.i.i14:                         ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i15 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp.i.i14, %.loopexit.i.i22
  %lpad.phi.i.i16 = phi { ptr, i32 } [ %lpad.loopexit.i.i23, %.loopexit.i.i22 ], [ %lpad.loopexit.split-lp.i.i15, %.loopexit.split-lp.i.i14 ]
  %i.fp = extractvalue { ptr, i32 } %lpad.phi.i.i16, 0
  call void @__clang_call_terminate(ptr %i.fp) #37
  unreachable

AfterCoroSave597:                                 ; preds = %bb.z
  store i2 1, ptr %index.addr, align 1
  %i.fq = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr912, ptr nonnull %0) #32
  br i1 %i.fq, label %CoroEnd, label %AfterCoroSuspend599

bb.af:                                            ; preds = %_ZN4tlog7warningIJRiRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSE_.exit
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = load i8, ptr %3, align 8
  %i.ft = trunc i8 %i.fs to i1
  br i1 %i.ft, label %bb.ag, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97
  %i.fw = load i64, ptr %3, align 8
  %i.fx = and i64 %i.fw, -2
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fx) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.bg

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806: ; preds = %bb.y
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

.from.802:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ai

AfterCoroSuspend599:                              ; preds = %resume.entry, %AfterCoroSave597
  %.pr47 = load ptr, ptr %.reload.addr912, align 16, !tbaa !247 ; 3 uses
  %.not.i345 = icmp eq ptr %.pr47, null
  br i1 %.not.i345, label %AfterCoroSuspend599.thread48, label %bb.ah

bb.ah:                                            ; preds = %AfterCoroSuspend599
  %i.ga = getelementptr inbounds nuw i8, ptr %.pr47, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr nonnull %.pr47)
          to label %AfterCoroSuspend599.thread48.sink.split unwind label %.from.800, !inline_history !4

AfterCoroSuspend599.thread48.sink.split:          ; preds = %.noexc2.i.i24, %bb.ah, %bb.ac, %.noexc.i.i17, %bb.aa
  store ptr null, ptr %.reload.addr912, align 16, !tbaa !247
  br label %AfterCoroSuspend599.thread48

AfterCoroSuspend599.thread48:                     ; preds = %AfterCoroSuspend599.thread48.sink.split, %AfterCoroSuspend599
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit348 unwind label %.from.800

_ZN3tev4TaskIvE12await_resumeEv.exit348:          ; preds = %AfterCoroSuspend599.thread48
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  %i.gd = load i8, ptr %.reload.addr923, align 16
  %i.ge = trunc i8 %i.gd to i1
  br i1 %i.ge, label %.thread450.sink.split, label %.thread450

.from.800:                                        ; preds = %bb.ah, %AfterCoroSuspend599.thread48
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  br label %bb.ai

bb.ai:                                            ; preds = %.from.800, %.from.802
  %.pn104 = phi { ptr, i32 } [ %i.gf, %.from.800 ], [ %i.fz, %.from.802 ] ; 2 uses
  %i.gg = load i8, ptr %.reload.addr923, align 16
  %i.gh = trunc i8 %i.gg to i1
  br i1 %i.gh, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from., label %bb.bg

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.: ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !97
  %i.gk = load i64, ptr %.reload.addr923, align 16
  %i.gl = and i64 %i.gk, -2
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gl) #36
  br label %bb.bg

bb.aj:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i8 16, ptr %2, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i64 5789751508455935811, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 0, ptr %i.gn, align 1, !tbaa !97
  %i.go = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr911, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352 unwind label %bb.av ; 4 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352: ; preds = %bb.aj
  %i.gp = load i8, ptr %2, align 8
  %i.gq = trunc i8 %i.gp to i1
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !97
  %i.gt = load i64, ptr %2, align 8
  %i.gu = and i64 %i.gt, -2
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gu) #36
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit352
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.gv = icmp eq ptr %i.go, null
  br i1 %i.gv, label %.thread450, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 40 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 8
  %i.gy = trunc i8 %i.gx to i1
  br i1 %i.gy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr922, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false), !tbaa.struct !207
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355

bb.ao:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !97
  %i.hb = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !97
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr922, ptr noundef %i.ha, i64 noundef %i.hc)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355 unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355: ; preds = %bb.ao, %bb.an
  invoke fastcc void @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.207") align 8 %.reload.addr912, ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr910, ptr nofree noundef nonnull align 8 dereferenceable(24) %.reload.addr922)
          to label %bb.ap unwind label %.from.816

bb.ap:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 16, !tbaa !81
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load atomic i32, ptr %i.hf acquire, align 4
  %i.hh = icmp slt i32 %i.hg, 2
  br i1 %i.hh, label %bb.aq, label %AfterCoroSave601

bb.aq:                                            ; preds = %bb.ap
  %i.hi = load ptr, ptr %i.hd, align 16, !tbaa !81
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = atomicrmw add ptr %i.hj, i32 -1 acq_rel, align 4
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ar, label %AfterCoroSuspend603.thread52.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i31 unwind label %.loopexit.split-lp.i.i28

.noexc.i.i31:                                     ; preds = %bb.ar
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !118 ; 7 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !125
  %i.hp = and i32 %i.ho, 8
  %.not.i.i.i.i32 = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i.i.i32, label %bb.as, label %AfterCoroSuspend603.thread52.sink.split

bb.as:                                            ; preds = %.noexc.i.i31
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !126 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i33 = icmp eq ptr %i.hr, %i.ht
  br i1 %.not12.i.i.i.i.i33, label %AfterCoroSuspend603.thread52.sink.split, label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %bb.as
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 33
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  br label %bb.at

bb.at:                                            ; preds = %.noexc2.i.i38, %.lr.ph.i.i.i.i.i34
  %.sroa.09.013.i.i.i.i.i35 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i34 ], [ %i.ij, %.noexc2.i.i38 ] ; 2 uses
  %i.hy = load ptr, ptr %.sroa.09.013.i.i.i.i.i35, align 8, !tbaa !130 ; 2 uses
  %i.hz = load i8, ptr %i.hu, align 8             ; 2 uses
  %i.ia = trunc i8 %i.hz to i1                    ; 2 uses
  %i.ib = load ptr, ptr %i.hv, align 8
  %i.ic = select i1 %i.ia, ptr %i.ib, ptr %i.hw
  %i.id = load i64, ptr %i.hx, align 8
  %i.ie = lshr i8 %i.hz, 1
  %i.if = zext nneg i8 %i.ie to i64
  %i.ig = select i1 %i.ia, i64 %i.id, i64 %i.if
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !71
  %i.ii = load ptr, ptr %i.ih, align 8
  invoke void %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr %i.ic, i64 %i.ig, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i38 unwind label %.loopexit.i.i36, !inline_history !0

.noexc2.i.i38:                                    ; preds = %bb.at
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i35, i64 16 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.ij, %i.ht
  br i1 %.not.i.i.i.i.i39, label %AfterCoroSuspend603.thread52.sink.split, label %bb.at

.loopexit.i.i36:                                  ; preds = %bb.at
  %lpad.loopexit.i.i37 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

.loopexit.split-lp.i.i28:                         ; preds = %bb.ar
  %lpad.loopexit.split-lp.i.i29 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp.i.i28, %.loopexit.i.i36
  %lpad.phi.i.i30 = phi { ptr, i32 } [ %lpad.loopexit.i.i37, %.loopexit.i.i36 ], [ %lpad.loopexit.split-lp.i.i29, %.loopexit.split-lp.i.i28 ]
  %i.ik = extractvalue { ptr, i32 } %lpad.phi.i.i30, 0
  call void @__clang_call_terminate(ptr %i.ik) #37
  unreachable

AfterCoroSave601:                                 ; preds = %bb.ap
  store i2 -2, ptr %index.addr, align 1
  %i.il = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr912, ptr nonnull %0) #32
  br i1 %i.il, label %CoroEnd, label %AfterCoroSuspend603

bb.av:                                            ; preds = %bb.aj
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = load i8, ptr %2, align 8
  %i.io = trunc i8 %i.in to i1
  br i1 %i.io, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from., label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from.: ; preds = %bb.av
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !97
  %i.ir = load i64, ptr %2, align 8
  %i.is = and i64 %i.ir, -2
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.is) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356.from., %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.bg

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820: ; preds = %bb.ao
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

.from.816:                                        ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit355
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

AfterCoroSuspend603:                              ; preds = %resume.entry, %AfterCoroSave601
  %.pr51 = load ptr, ptr %.reload.addr912, align 16, !tbaa !247 ; 3 uses
  %.not.i357 = icmp eq ptr %.pr51, null
  br i1 %.not.i357, label %AfterCoroSuspend603.thread52, label %bb.aw

bb.aw:                                            ; preds = %AfterCoroSuspend603
  %i.iv = getelementptr inbounds nuw i8, ptr %.pr51, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr nonnull %.pr51)
          to label %AfterCoroSuspend603.thread52.sink.split unwind label %.from.814, !inline_history !4

AfterCoroSuspend603.thread52.sink.split:          ; preds = %.noexc2.i.i38, %bb.aw, %bb.as, %.noexc.i.i31, %bb.aq
  store ptr null, ptr %.reload.addr912, align 16, !tbaa !247
  br label %AfterCoroSuspend603.thread52

AfterCoroSuspend603.thread52:                     ; preds = %AfterCoroSuspend603.thread52.sink.split, %AfterCoroSuspend603
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 328
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit360 unwind label %.from.814

_ZN3tev4TaskIvE12await_resumeEv.exit360:          ; preds = %AfterCoroSuspend603.thread52
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  %i.iy = load i8, ptr %.reload.addr922, align 8
  %i.iz = trunc i8 %i.iy to i1
  br i1 %i.iz, label %.thread450.sink.split, label %.thread450

.from.814:                                        ; preds = %bb.aw, %AfterCoroSuspend603.thread52
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  br label %bb.ax

bb.ax:                                            ; preds = %.from.814, %.from.816
  %.pn103 = phi { ptr, i32 } [ %i.ja, %.from.814 ], [ %i.iu, %.from.816 ] ; 2 uses
  %i.jb = load i8, ptr %.reload.addr922, align 8
  %i.jc = trunc i8 %i.jb to i1
  br i1 %i.jc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from., label %bb.bg

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.: ; preds = %bb.ax
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !97
  %i.jf = load i64, ptr %.reload.addr922, align 8
  %i.jg = and i64 %i.jf, -2
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jg) #36
  br label %bb.bg

.thread450.sink.split:                            ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit360, %_ZN3tev4TaskIvE12await_resumeEv.exit348
  %.sink83 = phi i64 [ 1248, %_ZN3tev4TaskIvE12await_resumeEv.exit348 ], [ 1224, %_ZN3tev4TaskIvE12await_resumeEv.exit360 ]
  %.sink82.in = phi ptr [ %.reload.addr923, %_ZN3tev4TaskIvE12await_resumeEv.exit348 ], [ %.reload.addr922, %_ZN3tev4TaskIvE12await_resumeEv.exit360 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink83
  %.sink = load ptr, ptr %i.jh, align 8, !tbaa !97
  %.sink82 = load i64, ptr %.sink82.in, align 8
  %i.ji = and i64 %.sink82, -2
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ji) #36
  br label %.thread450

.thread450:                                       ; preds = %.thread450.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit360, %_ZN3tev4TaskIvE12await_resumeEv.exit348, %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jo = load <2 x ptr>, ptr %.reload.addr897, align 8, !tbaa !148
  store <2 x ptr> %i.jo, ptr %1, align 16, !tbaa !148
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !148
  store ptr %i.jq, ptr %i.jn, align 16, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr897, i8 0, i64 24, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ju = load <2 x ptr>, ptr %i.js, align 16, !tbaa !150
  store <2 x ptr> %i.ju, ptr %i.jr, align 8, !tbaa !150
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jw = load ptr, ptr %i.jv, align 16, !tbaa !150
  store ptr %i.jw, ptr %i.jt, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.js, i8 0, i64 24, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.jx, ptr noundef nonnull align 8 dereferenceable(44) %i.jm, i64 44, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ka = load <2 x ptr>, ptr %i.jl, align 8, !tbaa !152
  store <2 x ptr> %i.ka, ptr %i.jy, align 16, !tbaa !152
  %i.kb = load ptr, ptr %i.jj, align 8, !tbaa !152
  store ptr %i.kb, ptr %i.jz, align 16, !tbaa !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i8 0, i64 24, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.kc, ptr noundef nonnull align 16 dereferenceable(136) %i.kd, i64 136, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ke, ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i8 0, i64 24, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store i8 1, ptr %i.kf, align 8, !tbaa !138
  %i.kg = load ptr, ptr %.reload.addr950, align 16, !tbaa !164 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread450
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i unwind label %bb.ba

.noexc.i:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.thread450
  invoke void @_ZNSt3__113__assoc_stateINS_8optionalIN3tev9ImageDataEEEE9set_valueIS4_EEvOT_(ptr noundef nonnull align 8 dereferenceable(408) %i.kg, ptr noundef nonnull align 8 dereferenceable(281) %1)
          to label %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit: ; preds = %bb.az
  %i.kk = load i8, ptr %i.kf, align 8, !tbaa !138, !range !139, !noundef !140
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bb, label %.from.830

bb.bb:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %1) #32
  br label %.from.830

.from.830:                                        ; preds = %_ZN3tev15TaskPromiseBaseINSt3__18optionalINS_9ImageDataEEEE12return_valueEOS4_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !256 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not10.i.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.from.830, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i
  %.011.i.i.i = phi ptr [ %i.ko, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i ], [ %i.kn, %.from.830 ] ; 6 uses
  %i.ko = load ptr, ptr %.011.i.i.i, align 8, !tbaa !256 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 40 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 8
  %i.ks = trunc i8 %i.kr to i1
  br i1 %i.ks, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !97
  %i.kv = load i64, ptr %i.kq, align 8
  %i.kw = and i64 %i.kv, -2
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kw) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i
  %i.kx = load i8, ptr %i.kp, align 8
  %i.ky = trunc i8 %i.kx to i1
  br i1 %i.ky, label %bb.bd, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

bb.bd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !97
  %i.lb = load i64, ptr %i.kp, align 8
  %i.lc = and i64 %i.lb, -2
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.lc) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i: ; preds = %bb.bd, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i, i64 noundef 64) #36
  %.not.i.i.i364 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i364, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1664

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i, %.from.830
  %i.ld = load ptr, ptr %.reload.addr911, align 8, !tbaa !258 ; 2 uses
  store ptr null, ptr %.reload.addr911, align 8, !tbaa !258
  %.not.i.i.i.i365 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i365, label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.lf = load i64, ptr %i.le, align 16, !tbaa !101
  %i.lg = shl i64 %i.lf, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lg) #36
  br label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit: ; preds = %bb.be, %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i
  %.reload.addr889 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %.reload890 = load ptr, ptr %.reload.addr889, align 16, !tbaa !237
  %i.lh = load i8, ptr %.reload890, align 8, !tbaa !206, !range !139, !noundef !140
  %i.li = trunc nuw i8 %i.lh to i1
  %i.lj = load i8, ptr %.reload.addr917, align 16
  %i.lk = trunc i8 %i.lj to i1
  %or.cond.i = select i1 %i.li, i1 %i.lk, i1 false
  br i1 %or.cond.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.lm = load ptr, ptr %i.ll, align 16, !tbaa !97
  %i.ln = load i64, ptr %.reload.addr917, align 16
  %i.lo = and i64 %i.ln, -2
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lo) #36
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ax, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820, %bb.ai, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344, %.body310.from.795, %.body310.from..loopexit.split-lp, %.body310.from..loopexit, %.body310.from.793, %.body310.from., %.from.834, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332
  %.pn105.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body310.from..loopexit.split-lp ], [ %i.de, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit332 ], [ %i.dl, %.from.834 ], [ %i.bs, %.body310.from.795 ], [ %i.k, %.body310.from. ], [ %i.s, %.body310.from.793 ], [ %lpad.loopexit, %.body310.from..loopexit ], [ %i.im, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit356 ], [ %i.fr, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit344 ], [ %.pn104, %bb.ai ], [ %i.fy, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from.806 ], [ %.pn104, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit350.from. ], [ %i.it, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from.820 ], [ %.pn103, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit362.from. ], [ %.pn103, %bb.ax ]
  call void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr911) #32
  %.reload.addr887 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %.reload888 = load ptr, ptr %.reload.addr887, align 16, !tbaa !237
  %i.lp = load i8, ptr %.reload888, align 8, !tbaa !206, !range !139, !noundef !140
  %i.lq = trunc nuw i8 %i.lp to i1
  %i.lr = load i8, ptr %.reload.addr917, align 16
  %i.ls = trunc i8 %i.lr to i1
  %or.cond.i367 = select i1 %i.lq, i1 %i.ls, i1 false
  br i1 %or.cond.i367, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from., label %bb.bi

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from.: ; preds = %bb.bg
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.lu = load ptr, ptr %i.lt, align 16, !tbaa !97
  %i.lv = load i64, ptr %.reload.addr917, align 16
  %i.lw = and i64 %i.lv, -2
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lw) #36
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.reload.addr897) #32
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2B8ne180100Ev.exit369.from.
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.reload.addr897) #32
  %.37 = extractvalue { ptr, i32 } %.pn105.pn, 0
  %i.lx = call ptr @__cxa_begin_catch(ptr %.37) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr950)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %.from.877

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !81
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = atomicrmw add ptr %i.ma, i32 -1 acq_rel, align 4 ; 2 uses
  %i.mc = icmp slt i32 %i.mb, 1
  br i1 %i.mc, label %bb.bl, label %_ZN3tev5Latch9countDownEv.exit.i370

bb.bl:                                            ; preds = %bb.bk
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i374 unwind label %.from..loopexit.split-lp.i.i371

.noexc.i.i374:                                    ; preds = %bb.bl
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !118 ; 7 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !125
  %i.mg = and i32 %i.mf, 8
  %.not.i.i.i.i375 = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i.i375, label %bb.bm, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit

bb.bm:                                            ; preds = %.noexc.i.i374
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !126 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i376 = icmp eq ptr %i.mi, %i.mk
  br i1 %.not12.i.i.i.i.i376, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i377

.from..lr.ph.i.i.i.i.i377:                        ; preds = %bb.bm
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 33
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  br label %.from..noexc2.i.i381

.from..noexc2.i.i381:                             ; preds = %.noexc2.i.i381, %.from..lr.ph.i.i.i.i.i377
  %.sroa.09.013.i.i.i.i.i378 = phi ptr [ %i.mi, %.from..lr.ph.i.i.i.i.i377 ], [ %i.na, %.noexc2.i.i381 ] ; 2 uses
  %i.mp = load ptr, ptr %.sroa.09.013.i.i.i.i.i378, align 8, !tbaa !130 ; 2 uses
  %i.mq = load i8, ptr %i.ml, align 8             ; 2 uses
  %i.mr = trunc i8 %i.mq to i1                    ; 2 uses
  %i.ms = load ptr, ptr %i.mm, align 8
  %i.mt = select i1 %i.mr, ptr %i.ms, ptr %i.mn
  %i.mu = load i64, ptr %i.mo, align 8
  %i.mv = lshr i8 %i.mq, 1
  %i.mw = zext nneg i8 %i.mv to i64
  %i.mx = select i1 %i.mr, i64 %i.mu, i64 %i.mw
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !71
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr %i.mt, i64 %i.mx, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i381 unwind label %.from..loopexit.i.i379, !inline_history !0

.noexc2.i.i381:                                   ; preds = %.from..noexc2.i.i381
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i378, i64 16 ; 2 uses
  %.not.i.i.i.i.i382 = icmp eq ptr %i.na, %i.mk
  br i1 %.not.i.i.i.i.i382, label %_ZN3tev5Latch9countDownEv.exit.i370, label %.from..noexc2.i.i381

.from..loopexit.i.i379:                           ; preds = %.from..noexc2.i.i381
  %lpad.loopexit.i.i380 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

.from..loopexit.split-lp.i.i371:                  ; preds = %bb.bl
  %lpad.loopexit.split-lp.i.i372 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

bb.bn:                                            ; preds = %.from..loopexit.split-lp.i.i371, %.from..loopexit.i.i379
  %lpad.phi.i.i373 = phi { ptr, i32 } [ %lpad.loopexit.i.i380, %.from..loopexit.i.i379 ], [ %lpad.loopexit.split-lp.i.i372, %.from..loopexit.split-lp.i.i371 ]
  %i.nb = extractvalue { ptr, i32 } %lpad.phi.i.i373, 0
  call void @__clang_call_terminate(ptr %i.nb) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i370:              ; preds = %.noexc2.i.i381, %bb.bk
  %i.nc = icmp slt i32 %i.mb, 2
  br i1 %i.nc, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i370, %bb.bm, %.noexc.i.i374
  %i.nd = load ptr, ptr %i.ly, align 8, !tbaa !81
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !98 ; 2 uses
  %i.nf = inttoptr i64 %i.ne to ptr               ; 3 uses
  store ptr %i.nf, ptr %.reload.addr932, align 16
  %.not.i383 = icmp eq i64 %i.ne, 0
  br i1 %.not.i383, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 1
  %i.ng = load ptr, ptr %i.nf, align 8
  musttail call void %i.ng(ptr nonnull %i.nf)
  ret void

bb.bp:                                            ; preds = %bb.bi
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bt

.from.877:                                        ; preds = %bb.bj
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i370, %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nk = load ptr, ptr %i.nj, align 16, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = atomicrmw add ptr %i.nl, i64 -1 acq_rel, align 8
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %bb.br, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  %i.no = load ptr, ptr %i.nk, align 8, !tbaa !71
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(24) %i.nk) #32, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nk) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit: ; preds = %bb.br, %bb.bq, %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseINS_8optionalIN3tev9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr950) #32
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1376) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit, %AfterCoroSave601, %AfterCoroSave597
  ret void

bb.bs:                                            ; preds = %bb.bp, %.from.877
  %.pn111 = phi { ptr, i32 } [ %i.ni, %.from.877 ], [ %i.nh, %bb.bp ]
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 1
  resume { ptr, i32 } %.pn111

bb.bt:                                            ; preds = %bb.bp
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #37
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileii.destroy(ptr noundef nonnull align 16 dereferenceable(1376) %0) #5 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr897 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr911 = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %.reload.addr912 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.reload.addr917 = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %.reload.addr922 = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %.reload.addr923 = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 395
  %index = load i2, ptr %index.addr, align 1
  switch i2 %index, label %unreachable [
    i2 0, label %.from.828
    i2 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit348
    i2 -2, label %_ZN3tev4TaskIvE12await_resumeEv.exit360
    i2 -1, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  ], !prof !1668

.from.828:                                        ; preds = %resume.entry
  %.reload.addr910 = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr910) #32
  br label %.from.830

_ZN3tev4TaskIvE12await_resumeEv.exit348:          ; preds = %resume.entry
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  %i.a = load i8, ptr %.reload.addr923, align 16
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %.from.830

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit348
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !97
  %i.e = load i64, ptr %.reload.addr923, align 16
  %i.f = and i64 %i.e, -2
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.f) #36
  br label %.from.830

_ZN3tev4TaskIvE12await_resumeEv.exit360:          ; preds = %resume.entry
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr912) #32
  %i.g = load i8, ptr %.reload.addr922, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %.from.830

bb.b:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit360
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = load i64, ptr %.reload.addr922, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #36
  br label %.from.830

.from.830:                                        ; preds = %bb.a, %_ZN3tev4TaskIvE12await_resumeEv.exit348, %bb.b, %_ZN3tev4TaskIvE12await_resumeEv.exit360, %.from.828
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !256  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.from.830, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i
  %.011.i.i.i = phi ptr [ %i.o, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i ], [ %i.n, %.from.830 ] ; 6 uses
  %i.o = load ptr, ptr %.011.i.i.i, align 8, !tbaa !256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 40 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = load i64, ptr %i.q, align 8
  %i.w = and i64 %i.v, -2
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.x = load i8, ptr %i.p, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = load i64, ptr %i.p, align 8
  %i.ac = and i64 %i.ab, -2
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #36
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i: ; preds = %bb.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i, i64 noundef 64) #36
  %.not.i.i.i364 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i364, label %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1667

_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB8ne180100INS_4pairIKS8_S8_EEvvEEvRSC_PT_.exit.i.i.i, %.from.830
  %i.ad = load ptr, ptr %.reload.addr911, align 8, !tbaa !258 ; 2 uses
  store ptr null, ptr %.reload.addr911, align 8, !tbaa !258
  %.not.i.i.i.i365 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i365, label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.af = load i64, ptr %i.ae, align 16, !tbaa !101
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #36
  br label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit: ; preds = %bb.e, %_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS8_PvEEEE.exit.i.i
  %.reload.addr889 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %.reload890 = load ptr, ptr %.reload.addr889, align 16, !tbaa !237
  %i.ah = load i8, ptr %.reload890, align 8, !tbaa !206, !range !139, !noundef !140
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i8, ptr %.reload.addr917, align 16
  %i.ak = trunc i8 %i.aj to i1
  %or.cond.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !97
  %i.an = load i64, ptr %.reload.addr917, align 16
  %i.ao = and i64 %i.an, -2
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B8ne180100Ev.exit
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.reload.addr897) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread: ; preds = %bb.g, %resume.entry
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !82 ; 5 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 -1 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #32, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev.exit: ; preds = %bb.i, %bb.h, %_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_E13final_suspendEv.exit.thread
  %.reload.addr950 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_8optionalIN3tev9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr950) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1376) #32
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(784) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
resume.0:
  %1 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.reload.addr422 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %.reload.addr425 = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 8 uses
  %.reload.addr427 = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %.reload.addr428 = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 7 uses
  %.reload.addr429 = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 6 uses
  %.reload.addr433 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %.reload.addr436 = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  %.reload.addr438 = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %.reload.addr439 = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %.reload.addr440 = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 4 uses
  %.reload.addr441 = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %.reload.addr442 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %storemerge220.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.sroa.2.0..sroa_idx.i17.i114421 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 689 ; 3 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 772
  %index.addr443 = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 3 uses
  br label %bb.r

bb.a:                                             ; preds = %.lr.ph, %.thread175
  %.in = phi i32 [ %storemerge220.reload38, %.lr.ph ], [ %storemerge220.reload, %.thread175 ]
  %i.x = add nuw nsw i32 %.in, 1                  ; 4 uses
  store i32 %i.x, ptr %storemerge220.reload.addr, align 8
  store i32 0, ptr %.reload.addr441, align 16, !tbaa !99
  %i.y = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  %i.z = invoke i32 @ffmahd(ptr noundef %i.y, i32 noundef %i.x, ptr noundef nonnull %.reload.addr441, ptr noundef nonnull %.reload.addr438)
          to label %bb.b unwind label %.from.355  ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %.reload.addr438, align 8, !tbaa !99
  store i32 %i.x, ptr %.reload.addr433, align 16, !tbaa !97, !noalias !1680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  store i64 0, ptr %i.p, align 16, !noalias !1681
end_hunk_7
begin_hunk_8_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.0
bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.ab = load i64, ptr %i.p, align 16, !tbaa !114, !noalias !1683 ; 8 uses
  %i.ac = icmp ult i64 %i.ab, -9
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !1683
  %i.ae = icmp ult i64 %i.ab, 23
  br i1 %i.ae, label %bb.d, label %.thread.i.i.i.i68

.thread.i.i.i.i68:                                ; preds = %bb.c
  %i.af = or i64 %i.ab, 7                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 23
  %i.ah = add nuw i64 %i.af, 1
  %i.ai = select i1 %i.ag, i64 25, i64 %i.ah      ; 2 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #34
          to label %.from..noexc.i69 unwind label %bb.f, !noalias !1681 ; 2 uses

.from..noexc.i69:                                 ; preds = %.thread.i.i.i.i68
  store ptr %i.aj, ptr %i.v, align 16, !tbaa !97, !alias.scope !1683
  %i.ak = or i64 %i.ai, 1
  store i64 %i.ak, ptr %.reload.addr428, align 16, !alias.scope !1683
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !97, !alias.scope !1683
  br label %.from.324

bb.d:                                             ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %i.ab to i8
  %i.am = shl nuw nsw i8 %i.al, 1
  store i8 %i.am, ptr %.reload.addr428, align 16, !alias.scope !1683
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i73 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i73, label %.from.326, label %.from.324

.from.324:                                        ; preds = %bb.d, %.from..noexc.i69
  %.017.i.i.i.i70 = phi ptr [ %i.aj, %.from..noexc.i69 ], [ %i.w, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i70, ptr align 1 %i.ad, i64 %i.ab, i1 false)
  br label %.from.326

.from.326:                                        ; preds = %bb.d, %.from.324
  %.018.i.i.i.i71 = phi ptr [ %.017.i.i.i.i70, %.from.324 ], [ %i.w, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i71, i64 %i.ab
  store i8 0, ptr %i.an, align 1, !tbaa !97
  %i.ao = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !1681 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ao, %i.m
  br i1 %.not.i.i.i72, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.from.326
  tail call void @free(ptr noundef %i.ao) #32, !noalias !1681
  br label %bb.h

bb.f:                                             ; preds = %.thread.i.i.i.i68, %bb.b
  %i.ap = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aq = load ptr, ptr %.reload.addr422, align 8, !tbaa !104, !noalias !1681 ; 2 uses
  %.not.i.i7.i66 = icmp eq ptr %i.aq, %i.m
  br i1 %.not.i.i7.i66, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.aq) #32, !noalias !1681
  br label %bb.ar

bb.h:                                             ; preds = %bb.e, %.from.326
  %i.ar = load i8, ptr %.reload.addr428, align 16 ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.v, align 16
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.w
  %i.av = load i64, ptr %i.u, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  invoke fastcc void @_ZN3tev12_GLOBAL__N_119throwOnCfitsioErrorEiNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(i32 noundef %i.aa, ptr %i.au, i64 %i.ay)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %.reload.addr428, align 16
  %i.ba = trunc i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.v, align 16, !tbaa !97
  %i.bc = load i64, ptr %.reload.addr428, align 16
  %i.bd = and i64 %i.bc, -2
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bd) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79: ; preds = %bb.j, %bb.i
  %i.be = load i32, ptr %.reload.addr441, align 16, !tbaa !99
  %.not37 = icmp eq i32 %i.be, 0
  br i1 %.not37, label %bb.l, label %.thread175

.thread175:                                       ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79
  %i.bf = load i32, ptr %.reload.addr440, align 4, !tbaa !99
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bg, ptr %.reload.addr440, align 4, !tbaa !99
  %storemerge220.reload = load i32, ptr %storemerge220.reload.addr, align 8, !tbaa !116 ; 2 uses
  %i.bh = load i32, ptr %.reload.addr439, align 16, !tbaa !99
  %.not.not.not = icmp slt i32 %storemerge220.reload, %i.bh
  br i1 %.not.not.not, label %bb.a, label %.._crit_edge_crit_edge, !llvm.loop !1675

.from.355:                                        ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.k:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bk = load i8, ptr %.reload.addr428, align 16
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %.body74.from., label %bb.ar

.body74.from.:                                    ; preds = %bb.k
  %i.bm = load ptr, ptr %i.v, align 16, !tbaa !97
  %i.bn = load i64, ptr %.reload.addr428, align 16
  %i.bo = and i64 %i.bn, -2
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #36
  br label %bb.ar

bb.l:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit79
  %.reload = load i32, ptr %.reload.addr, align 4, !tbaa !116
  %i.bp = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  invoke fastcc void @_ZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.76") align 8 %.reload.addr425, ptr noundef %i.bp, i32 noundef %i.x, i32 noundef %.reload)
          to label %bb.m unwind label %.from.341

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.t, align 16, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %i.bt = icmp slt i32 %i.bs, 2
  br i1 %i.bt, label %bb.n, label %AfterCoroSave

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.t, align 16, !tbaa !81
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.o
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !118 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !125
  %i.cb = and i32 %i.ca, 8
  %.not.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %.thread.sink.split

bb.p:                                             ; preds = %.noexc.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !126 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cd, %.from..lr.ph.i.i.i.i.i ], [ %i.cv, %.noexc2.i.i ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.cl = load i8, ptr %i.cg, align 8             ; 2 uses
  %i.cm = trunc i8 %i.cl to i1                    ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8
  %i.co = select i1 %i.cm, ptr %i.cn, ptr %i.ci
  %i.cp = load i64, ptr %i.cj, align 8
  %i.cq = lshr i8 %i.cl, 1
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = select i1 %i.cm, i64 %i.cp, i64 %i.cr
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !71
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr %i.co, i64 %i.cs, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

.from..loopexit.split-lp.i.i:                     ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.cw = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #37
  unreachable

AfterCoroSave:                                    ; preds = %bb.m
  store i1 false, ptr %index.addr443, align 4
  %i.cx = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr425, ptr nonnull %0) #32
  br i1 %i.cx, label %CoroEnd, label %bb.r

.from.341:                                        ; preds = %bb.l
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

bb.r:                                             ; preds = %resume.0, %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr425, align 16, !tbaa !132, !noalias !1684 ; 3 uses
  %.not.i81 = icmp eq ptr %.pr, null
  br i1 %.not.i81, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body83.from.338, !inline_history !1

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.s, %bb.p, %.noexc.i.i, %bb.n
  store ptr null, ptr %.reload.addr425, align 16, !tbaa !132
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !135, !noalias !1685 ; 7 uses
  store ptr null, ptr %i.c, align 8, !tbaa !135, !noalias !1685
  invoke void @_ZNSt3__113__assoc_stateINS_8optionalIN3tev9ImageDataEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %.reload.addr422, ptr noundef nonnull align 8 dereferenceable(408) %i.db)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = atomicrmw add ptr %i.dc, i64 -1 acq_rel, align 8
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #32, !inline_history !2
  br label %bb.w

bb.v:                                             ; preds = %.thread
  %i.di = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 acq_rel, align 8
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.body83.from.335, label %.from..body83

.body83.from.335:                                 ; preds = %bb.v
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !71
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #32, !inline_history !2
  br label %.from..body83

bb.w:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr425) #32
  %i.dp = load i8, ptr %i.d, align 16, !tbaa !138, !range !139, !noundef !140
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.x, label %.thread177

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.f, align 16, !tbaa !145 ; 12 uses
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.dt = icmp ult ptr %i.dr, %i.ds
  br i1 %i.dt, label %.from.344, label %bb.y

.from.344:                                        ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.dr, i8 0, i64 24, i1 false)
  %i.dv = load <2 x ptr>, ptr %.reload.addr422, align 8, !tbaa !148
  store <2 x ptr> %i.dv, ptr %i.dr, align 8, !tbaa !148
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !148
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr422, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.dz = load <2 x ptr>, ptr %i.n, align 16, !tbaa !150
  store <2 x ptr> %i.dz, ptr %i.dx, align 8, !tbaa !150
  %i.ea = load ptr, ptr %i.l, align 16, !tbaa !150
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.eb, ptr noundef nonnull align 8 dereferenceable(44) %i.k, i64 44, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 96 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  %i.ee = load <2 x ptr>, ptr %i.j, align 8, !tbaa !152
  store <2 x ptr> %i.ee, ptr %i.ec, align 8, !tbaa !152
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !152
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.eg, ptr noundef nonnull align 16 dereferenceable(136) %i.h, i64 136, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 280
  br label %.from.347

bb.y:                                             ; preds = %bb.x
  %i.ej = invoke noundef ptr @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr429, ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr422)
          to label %.from.347 unwind label %bb.z

.body83.from.338:                                 ; preds = %bb.s
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body83

.from..body83:                                    ; preds = %.body83.from.335, %.body83.from.338, %bb.v
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.ek, %.body83.from.338 ], [ %i.di, %.body83.from.335 ], [ %i.di, %bb.v ]
  tail call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr425) #32
  br label %bb.ar

bb.z:                                             ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.em = load i8, ptr %i.d, align 16, !tbaa !138, !range !139, !noundef !140
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from., label %bb.ar

_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from.: ; preds = %bb.z
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %.reload.addr422) #32
  br label %bb.ar

.from.347:                                        ; preds = %bb.y, %.from.344
  %.0.i85 = phi ptr [ %i.ei, %.from.344 ], [ %i.ej, %bb.y ]
  store ptr %.0.i85, ptr %i.f, align 16, !tbaa !145
  %.pre226 = load i8, ptr %i.d, align 16, !tbaa !138, !range !139
  %i.eo = trunc nuw i8 %.pre226 to i1
  br i1 %i.eo, label %bb.aa, label %.thread177

bb.aa:                                            ; preds = %.from.347
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(281) %.reload.addr422) #32
  br label %.thread177

.thread177:                                       ; preds = %bb.aa, %.from.347, %bb.w
  %storemerge220.reload38 = load i32, ptr %storemerge220.reload.addr, align 8, !tbaa !116 ; 2 uses
  %i.ep = load i32, ptr %.reload.addr439, align 16, !tbaa !99
  %.not.not.not39 = icmp slt i32 %storemerge220.reload38, %i.ep
  br i1 %.not.not.not39, label %.lr.ph, label %.thread177.._crit_edge_crit_edge, !llvm.loop !1675

.lr.ph:                                           ; preds = %.thread177
  br label %bb.a, !llvm.loop !1675

.thread177.._crit_edge_crit_edge:                 ; preds = %.thread177
  %.pre227.pre = load i32, ptr %.reload.addr440, align 4, !tbaa !99
  br label %._crit_edge, !llvm.loop !1675

.._crit_edge_crit_edge:                           ; preds = %.thread175
  br label %._crit_edge, !llvm.loop !1675

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %.thread177.._crit_edge_crit_edge
  %.pre227 = phi i32 [ %i.bg, %.._crit_edge_crit_edge ], [ %.pre227.pre, %.thread177.._crit_edge_crit_edge ] ; 2 uses
  %i.eq = icmp sgt i32 %.pre227, 0
  br i1 %i.eq, label %bb.ab, label %._crit_edge.thread

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.er = icmp eq i32 %.pre227, 1
  %i.es = select i1 %i.er, ptr @.str.10, ptr @.str.11
  store ptr %i.es, ptr %i.a, align 8, !tbaa !106
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc88 unwind label %.from.375

.noexc88:                                         ; preds = %bb.ab
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, i32 noundef 8, ptr nonnull @.str.9, i64 35, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr440, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit unwind label %.from.375

_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit: ; preds = %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %._crit_edge.thread

.from.375:                                        ; preds = %bb.ab, %.noexc88
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ar

._crit_edge.thread:                               ; preds = %_ZN4tlog7warningIJRiPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit, %._crit_edge
  %i.ew = load ptr, ptr %.reload.addr429, align 8, !tbaa !154 ; 6 uses
  %i.ex = load ptr, ptr %i.f, align 16, !tbaa !145 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %._crit_edge.thread
  %i.ez = call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.12)
          to label %bb.ad unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
end_hunk_8
begin_hunk_9_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:resume.0

bb.aj:                                            ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ew, i64 257
  store i8 0, ptr %i.fw, align 1, !tbaa !97
  store i8 0, ptr %i.fq, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.fx = load ptr, ptr %.reload.addr442, align 16, !tbaa !75 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #35
          to label %.noexc.i92 unwind label %bb.am

.noexc.i92:                                       ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne180100Ev.exit
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr429)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #37
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.al
  %i.gb = load ptr, ptr %.reload.addr429, align 8, !tbaa !154 ; 5 uses
  %.not.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.gc = load ptr, ptr %i.f, align 16, !tbaa !145 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i ], [ %i.gc, %bb.an ]
  %i.gd = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.gd) #32
  %.not.i.i.i.i93 = icmp eq ptr %i.gb, %i.gd
  br i1 %.not.i.i.i.i93, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr429, align 8, !tbaa !154
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.an, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.ge = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.gb, %bb.an ] ; 2 uses
  store ptr %i.gb, ptr %i.f, align 16, !tbaa !145
  %i.gf = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #36
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %.val.val.i = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i32 0, ptr %i.b, align 4, !tbaa !99
  %i.gj = invoke i32 @ffclos(ptr noundef %.val.val.i, ptr noundef nonnull %i.b)
          to label %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit" unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #37
  unreachable

"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit": ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.gm = load i8, ptr %.reload.addr427, align 8
  %i.gn = trunc i8 %i.gm to i1
  br i1 %i.gn, label %bb.aq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94

bb.aq:                                            ; preds = %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit"
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !97
  %i.gq = load i64, ptr %.reload.addr427, align 8
  %i.gr = and i64 %i.gq, -2
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gr) #36
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94

bb.ar:                                            ; preds = %.split183, %bb.z, %.from..body83, %.from.341, %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from., %bb.k, %bb.g, %bb.f, %.body74.from., %.from.355, %.from.373, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91370, %.from.375
  %.pn40.pn = phi { ptr, i32 } [ %.pn40182, %.from.373 ], [ %i.fe, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91370 ], [ %i.ev, %.from.375 ], [ %i.el, %bb.z ], [ %i.bj, %bb.k ], [ %i.bi, %.from.355 ], [ %i.ap, %bb.g ], [ %i.bj, %.body74.from. ], [ %i.ap, %bb.f ], [ %i.el, %_ZNSt3__124__optional_destruct_baseIN3tev9ImageDataELb0EED2B8ne180100Ev.exit.from. ], [ %i.cy, %.from.341 ], [ %eh.lpad-body84, %.from..body83 ], [ %i.fh, %.split183 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr429) #32
  call fastcc void @"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev"(ptr nonnull %.reload.addr436, i8 1) #32
  %i.gs = load i8, ptr %.reload.addr427, align 8
  %i.gt = trunc i8 %i.gs to i1
  br i1 %i.gt, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from., label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from.: ; preds = %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !97
  %i.gw = load i64, ptr %.reload.addr427, align 8
  %i.gx = and i64 %i.gw, -2
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gx) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95: ; preds = %bb.ar, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95.from.
  %.13 = extractvalue { ptr, i32 } %.pn40.pn, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %.13) #32 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr442)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94 unwind label %.from.410

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94: ; preds = %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit", %bb.aq, %bb.as
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !81
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = atomicrmw add ptr %i.hb, i32 -1 acq_rel, align 4 ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %bb.at, label %_ZN3tev5Latch9countDownEv.exit.i96

bb.at:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i101 unwind label %.from..loopexit.split-lp.i.i98

.noexc.i.i101:                                    ; preds = %bb.at
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !118 ; 7 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !125
  %i.hh = and i32 %i.hg, 8
  %.not.i.i.i.i102 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i102, label %bb.au, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.au:                                            ; preds = %.noexc.i.i101
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !126 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !127 ; 2 uses
  %.not12.i.i.i.i.i103 = icmp eq ptr %i.hj, %i.hl
  br i1 %.not12.i.i.i.i.i103, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i104

.from..lr.ph.i.i.i.i.i104:                        ; preds = %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 33
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  br label %.from..noexc2.i.i108

.from..noexc2.i.i108:                             ; preds = %.noexc2.i.i108, %.from..lr.ph.i.i.i.i.i104
  %.sroa.09.013.i.i.i.i.i105 = phi ptr [ %i.hj, %.from..lr.ph.i.i.i.i.i104 ], [ %i.ib, %.noexc2.i.i108 ] ; 2 uses
  %i.hq = load ptr, ptr %.sroa.09.013.i.i.i.i.i105, align 8, !tbaa !130 ; 2 uses
  %i.hr = load i8, ptr %i.hm, align 8             ; 2 uses
  %i.hs = trunc i8 %i.hr to i1                    ; 2 uses
  %i.ht = load ptr, ptr %i.hn, align 8
  %i.hu = select i1 %i.hs, ptr %i.ht, ptr %i.ho
  %i.hv = load i64, ptr %i.hp, align 8
  %i.hw = lshr i8 %i.hr, 1
  %i.hx = zext nneg i8 %i.hw to i64
  %i.hy = select i1 %i.hs, i64 %i.hv, i64 %i.hx
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !71
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr %i.hu, i64 %i.hy, i32 noundef 8, ptr nonnull @.str.111, i64 36)
          to label %.noexc2.i.i108 unwind label %.from..loopexit.i.i106, !inline_history !0

.noexc2.i.i108:                                   ; preds = %.from..noexc2.i.i108
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i105, i64 16 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %i.ib, %i.hl
  br i1 %.not.i.i.i.i.i109, label %_ZN3tev5Latch9countDownEv.exit.i96, label %.from..noexc2.i.i108

.from..loopexit.i.i106:                           ; preds = %.from..noexc2.i.i108
  %lpad.loopexit.i.i107 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.av

.from..loopexit.split-lp.i.i98:                   ; preds = %bb.at
  %lpad.loopexit.split-lp.i.i99 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.av

bb.av:                                            ; preds = %.from..loopexit.split-lp.i.i98, %.from..loopexit.i.i106
  %lpad.phi.i.i100 = phi { ptr, i32 } [ %lpad.loopexit.i.i107, %.from..loopexit.i.i106 ], [ %lpad.loopexit.split-lp.i.i99, %.from..loopexit.split-lp.i.i98 ]
  %i.ic = extractvalue { ptr, i32 } %lpad.phi.i.i100, 0
  call void @__clang_call_terminate(ptr %i.ic) #37
  unreachable

_ZN3tev5Latch9countDownEv.exit.i96:               ; preds = %.noexc2.i.i108, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit94
  %i.id = icmp slt i32 %i.hc, 2
  br i1 %i.id, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i96, %bb.au, %.noexc.i.i101
  %i.ie = load ptr, ptr %i.gz, align 8, !tbaa !81
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !98 ; 2 uses
  %i.ig = inttoptr i64 %i.if to ptr               ; 3 uses
  store ptr %i.ig, ptr %.reload.addr427, align 8
  %.not.i110 = icmp eq i64 %i.if, 0
  br i1 %.not.i110, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i1 true, ptr %index.addr443, align 4
  %i.ih = load ptr, ptr %i.ig, align 8
  musttail call void %i.ih(ptr nonnull %i.ig)
  ret void

bb.ax:                                            ; preds = %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit95
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ba unwind label %bb.bb

.from.410:                                        ; preds = %bb.as
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i96, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.il = load ptr, ptr %i.ik, align 16, !tbaa !82 ; 5 uses
  %.not.i.i111 = icmp eq ptr %i.il, null
  br i1 %.not.i.i111, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = atomicrmw add ptr %i.im, i64 -1 acq_rel, align 8
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.az, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.ip = load ptr, ptr %i.il, align 8, !tbaa !71
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(24) %i.il) #32, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.il) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.az, %bb.ay, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr442) #32
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 784) #32
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit
  ret void

bb.ba:                                            ; preds = %bb.ax, %.from.410
  %.pn42 = phi { ptr, i32 } [ %i.ij, %.from.410 ], [ %i.ii, %bb.ax ]
  store ptr null, ptr %0, align 16
  store i1 true, ptr %index.addr443, align 4
  resume { ptr, i32 } %.pn42

bb.bb:                                            ; preds = %bb.ax
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #37
  unreachable

bb.bc:                                            ; preds = %bb.ae
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(784) %0) #5 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.reload.addr427 = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %.reload.addr429 = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %.reload.addr436 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 780
  %index = load i1, ptr %index.addr, align 4
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from.365, !prof !1686

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from.365: ; preds = %resume.entry
  %.reload.addr425 = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr425) #32
  %i.b = load ptr, ptr %.reload.addr429, align 8, !tbaa !154 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from.365
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !145 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.e) #32
  %.not.i.i.i.i93 = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i93, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr429, align 8, !tbaa !154
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.f = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 16, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #36
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from.365
  %.val.val.i = load ptr, ptr %.reload.addr436, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 0, ptr %i.a, align 4, !tbaa !99
  %i.l = invoke i32 @ffclos(ptr noundef %.val.val.i, ptr noundef nonnull %i.a)
          to label %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit" unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #37
  unreachable

"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit": ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = load i8, ptr %.reload.addr427, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

bb.d:                                             ; preds = %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.s = load i64, ptr %.reload.addr427, align 8
  %i.t = and i64 %i.s, -2
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.t) #36
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %"_ZN3tev10ScopeGuardIZNKS_15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcS5_EERKNS_19ImageLoaderSettingsEiE3$_0ED2Ev.exit", %bb.d, %resume.entry
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !82  ; 5 uses
  %.not.i.i111 = icmp eq ptr %i.v, null
  br i1 %.not.i.i111, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 -1 acq_rel, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #32
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.f, %bb.e, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr442 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr442) #32
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 784) #32
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!58, !59, !60, !61}
!llvm.ident = !{!62}
!llvm.errno.tbaa = !{!67}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !153}
!6 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__18optionalINS_9ImageDataEEEEES5_ED2Ev, null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !153}
!11 = distinct !{!11, !153}
!12 = distinct !{!12, !153}
!13 = distinct !{null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !153}
!17 = distinct !{!17, !153}
!18 = distinct !{!18, !153}
!19 = distinct !{!19, !153}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !153}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{!25, !153}
!26 = distinct !{!26, !153}
!27 = distinct !{!27, !153}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !153}
!30 = distinct !{null, null}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = distinct !{!33, !153}
!34 = distinct !{!34, !153}
!35 = distinct !{!35, !153}
!36 = distinct !{null}
!37 = distinct !{null, null, null, null}
!38 = distinct !{null, null, null}
!39 = distinct !{null}
!40 = distinct !{!40, !153}
!41 = distinct !{!41, !153}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null, null}
!44 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!45 = distinct !{null}
!46 = distinct !{null, null, null, null, null, null}
!47 = distinct !{ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!48 = distinct !{null, null}
!49 = distinct !{!49, !153}
!50 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!51 = distinct !{null}
!52 = distinct !{!52, !153}
!53 = distinct !{ptr @_ZNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEED2Ev, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!54 = distinct !{!54, !153}
!55 = distinct !{null, null, null}
!56 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!57 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!58 = !{i32 1, !"long-double-type", !"x86_fp80"}
!59 = !{i32 8, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!63 = !{!"Simple C++ TBAA"}
end_hunk_9
begin_hunk_10_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy:resume.entry
!288 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !64, i64 0}
!289 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !288, i64 0, !263, i64 16}
!290 = !{!289, !263, i64 16}
!291 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !110, i64 0}
!292 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !291, i64 0, !286, i64 8, !90, i64 16, !90, i64 40, !90, i64 64}
!293 = !{!292, !286, i64 8}
!294 = !{i64 4}
!295 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !72, i64 0}
!296 = !{!295, !295, i64 0}
!297 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !72, i64 0}
!298 = !{!297, !297, i64 0}
!299 = !{i64 8}
!300 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !85, i64 0, !85, i64 8, !65, i64 16}
!301 = !{!300, !85, i64 0}
!302 = !{!300, !85, i64 8}
!303 = !{!300, !65, i64 16}
!304 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !227, i64 0, !100, i64 8, !100, i64 16, !72, i64 24}
!305 = !{!304, !227, i64 0}
!306 = !{!304, !100, i64 16}
!307 = !{!304, !100, i64 8}
!308 = !{!107, !85, i64 0}
!309 = !{!107, !100, i64 8}
!310 = !{!"_ZTSN3fmt3v124signE", !64, i64 0}
!311 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !310, i64 0, !85, i64 8}
!312 = !{!311, !310, i64 0}
!313 = !{!311, !85, i64 8}
!314 = !{!310, !310, i64 0}
!315 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !65, i64 0, !65, i64 4}
!316 = !{!315, !65, i64 4}
!317 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !72, i64 0}
!318 = !{!317, !317, i64 0}
!319 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !72, i64 0}
!320 = !{!319, !319, i64 0}
!321 = !{!136, !136, i64 0}
!322 = !{!"p1 bool", !72, i64 0}
!323 = !{!322, !322, i64 0}
!324 = !{!315, !65, i64 0}
!325 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !100, i64 0, !65, i64 8}
!326 = !{!325, !65, i64 8}
!327 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !72, i64 0}
!328 = !{!327, !327, i64 0}
!329 = !{!325, !100, i64 0}
!330 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !85, i64 0, !65, i64 8, !65, i64 12}
!331 = !{!330, !85, i64 0}
!332 = !{!330, !65, i64 8}
!333 = !{!330, !65, i64 12}
!334 = !{!"__int128", !64, i64 0}
!335 = !{!334, !334, i64 0}
!336 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !227, i64 0, !100, i64 8, !100, i64 16, !72, i64 24}
!337 = !{!336, !72, i64 24}
!338 = !{!336, !227, i64 0}
!339 = !{!336, !100, i64 16}
!340 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !336, i64 0, !64, i64 32}
!341 = !{!"_ZTSN3fmt3v126detail6bigintE", !340, i64 0, !65, i64 160}
!342 = !{!341, !65, i64 160}
!343 = !{!336, !100, i64 8}
!344 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !310, i64 0, !330, i64 8, !65, i64 24, !64, i64 28, !65, i64 32, !64, i64 36, !65, i64 40}
!345 = !{!344, !310, i64 0}
!346 = !{!344, !65, i64 24}
!347 = !{!344, !64, i64 28}
!348 = !{!344, !65, i64 32}
!349 = !{!344, !64, i64 36}
!350 = !{!344, !65, i64 40}
!351 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !72, i64 0}
!352 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !90, i64 0, !64, i64 24}
!353 = !{!352, !64, i64 24}
!354 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !72, i64 0}
!355 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !354, i64 0, !100, i64 8}
!356 = !{!355, !100, i64 8}
!357 = !{!355, !354, i64 0}
!358 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !85, i64 0, !65, i64 8}
!359 = !{!358, !85, i64 0}
!360 = !{!358, !65, i64 8}
!361 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !64, i64 0}
!362 = !{!361, !361, i64 0}
!363 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !72, i64 0}
!364 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !72, i64 0}
!365 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !310, i64 0, !325, i64 8, !65, i64 24, !64, i64 28, !65, i64 32, !64, i64 36, !65, i64 40}
!366 = !{!365, !310, i64 0}
!367 = !{!365, !65, i64 24}
!368 = !{!365, !64, i64 28}
!369 = !{!365, !65, i64 32}
!370 = !{!365, !64, i64 36}
!371 = !{!365, !65, i64 40}
!372 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !72, i64 0}
!373 = !{!372, !372, i64 0}
!374 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !136, i64 0, !100, i64 8, !107, i64 16}
!375 = !{!374, !136, i64 0}
!376 = !{!374, !100, i64 8}
!377 = !{!"branch_weights", i32 8, i32 24}
!378 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !102, i64 0, !64, i64 32, !100, i64 288}
!379 = !{!378, !100, i64 288}
!380 = !{!"p1 _ZTSNSt3__117__assoc_sub_stateE", !72, i64 0}
!381 = !{!"_ZTSNSt3__16futureIvEE", !380, i64 0}
!382 = !{!381, !380, i64 0}
!383 = !{!"_ZTSZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_2", !228, i64 0, !227, i64 8, !250, i64 16, !141, i64 24, !252, i64 32, !227, i64 40}
!384 = !{!383, !141, i64 24}
!385 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !85, i64 0}
!386 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !385, i64 0}
!387 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !85, i64 0, !85, i64 8, !386, i64 16}
!388 = !{!387, !85, i64 0}
!389 = !{!387, !85, i64 8}
!390 = !{!223, !208, i64 32}
!391 = !{!383, !227, i64 40}
!392 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_7ChannelENS_9allocatorIS5_EEEEEES8_EEEE", !72, i64 0}
!393 = !{!392, !72, i64 0}
!394 = !{!"p1 _ZTSNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEEE", !72, i64 0}
!395 = !{!"_ZTSNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEEE", !394, i64 0}
!396 = !{!395, !394, i64 0}
!397 = !{!"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE.Frame Slot", !63, i64 0}
!398 = !{!397, !397, i64 0}
!399 = !{!"_ZTSN3tev11ChannelViewIKfEE", !239, i64 0, !100, i64 8, !201, i64 16}
!400 = !{!399, !239, i64 0}
!401 = !{!399, !100, i64 8}
!402 = !{!"p1 _ZTSN3tev11ChannelViewIfEE", !72, i64 0}
!403 = !{!"_ZTSN3gch6detail22small_vector_data_baseIPN3tev11ChannelViewIfEEmEE", !402, i64 0, !100, i64 8, !100, i64 16}
!404 = !{!403, !402, i64 0}
!405 = !{!403, !100, i64 16}
!406 = !{!403, !100, i64 8}
!407 = !{!175, !151, i64 0}
!408 = !{!170, !149, i64 0}
!409 = !{!170, !149, i64 8}
!410 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !72, i64 0}
!411 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !410, i64 0, !79, i64 8}
!412 = !{!411, !79, i64 8}
!413 = !{!129, !79, i64 8}
!414 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !72, i64 0}
!415 = !{!414, !414, i64 0}
!416 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !414, i64 0}
!417 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !416, i64 0, !136, i64 8}
!418 = !{!417, !136, i64 8}
!419 = !{!120, !120, i64 0}
!420 = !{!"_ZTSN4tlog7IOutputE"}
!421 = !{!"_ZTSN4tlog13ConsoleOutputE", !420, i64 0, !136, i64 8, !230, i64 16, !157, i64 24}
!422 = !{!421, !136, i64 8}
!423 = !{!"_ZTSSt9type_info", !85, i64 8}
!424 = !{!423, !85, i64 8}
!425 = !{!"p1 _ZTSNSt3__19allocatorIN3tev7ChannelEEE", !72, i64 0}
!426 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIN3tev7ChannelEEELi1ELb0EEE", !425, i64 0}
!427 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev7ChannelERNS_9allocatorIS2_EEEE", !165, i64 0, !426, i64 8}
!428 = !{!"_ZTSNSt3__114__split_bufferIN3tev7ChannelERNS_9allocatorIS2_EEEE", !147, i64 0, !147, i64 8, !147, i64 16, !427, i64 24}
!429 = !{!428, !147, i64 0}
!430 = !{!428, !147, i64 16}
!431 = !{!428, !147, i64 8}
!432 = !{!254, !254, i64 0}
!433 = !{!"_ZTSNSt3__111__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPvEE", !255, i64 0, !100, i64 8, !64, i64 16}
!434 = !{!433, !100, i64 8}
!435 = !{!"p1 _ZTSNSt3__111__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPvEE", !72, i64 0}
!436 = !{!"p1 _ZTSNSt3__19allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEEE", !72, i64 0}
!437 = !{!"_ZTSNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEE", !436, i64 0, !136, i64 8}
!438 = !{!437, !136, i64 8}
!439 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESB_S4_S4_mSC_iEUlvE_", !100, i64 0, !100, i64 8, !72, i64 16}
!440 = !{!439, !100, i64 0}
!441 = !{!439, !100, i64 8}
!442 = !{!"p1 _ZTSN3tev4TaskIvEE", !72, i64 0}
!443 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !442, i64 0}
!444 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !443, i64 0}
!445 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !442, i64 0, !442, i64 8, !444, i64 16}
!446 = !{!445, !442, i64 8}
!447 = !{!442, !442, i64 0}
!448 = !{!79, !79, i64 0}
!449 = !{!445, !442, i64 0}
!450 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !63, i64 0}
!451 = !{!450, !450, i64 0}
!452 = !{!"p1 _ZTSSt13exception_ptr", !72, i64 0}
!453 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !452, i64 0}
!454 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !453, i64 0}
!455 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !452, i64 0, !452, i64 8, !454, i64 16}
!456 = !{!455, !452, i64 8}
!457 = !{!455, !452, i64 0}
!458 = !{!452, !452, i64 0}
!459 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !64, i64 0}
!460 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !72, i64 0}
!461 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !459, i64 0, !460, i64 32}
!462 = !{!461, !460, i64 32}
!463 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !72, i64 0}
!464 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !463, i64 0, !79, i64 8}
!465 = !{!464, !463, i64 0}
!466 = !{!464, !79, i64 8}
!467 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !72, i64 0}
!468 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !467, i64 0}
!469 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !468, i64 0}
!470 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !467, i64 0, !467, i64 8, !469, i64 16}
!471 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !72, i64 0}
!472 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !459, i64 0, !471, i64 32}
!473 = !{!472, !471, i64 32}
!474 = !{!"_ZTSNSt3__18functionIFvvEEE", !472, i64 0}
!475 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !474, i64 0, !65, i64 48, !136, i64 52}
!476 = !{!475, !65, i64 48}
!477 = !{!470, !467, i64 8}
!478 = !{!467, !467, i64 0}
!479 = !{!470, !467, i64 0}
!480 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !72, i64 0}
!481 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !480, i64 0}
!482 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !481, i64 0, !136, i64 8}
!483 = !{!482, !136, i64 8}
!484 = !{!"p1 _ZTSNSt3__15mutexE", !72, i64 0}
!485 = !{!"_ZTSNSt3__111unique_lockINS_5mutexEEE", !484, i64 0, !136, i64 8}
!486 = !{!485, !484, i64 0}
!487 = !{!485, !136, i64 8}
!488 = !{!"branch_weights", i32 -693363755, i32 -1546098377}
!489 = distinct !{!489, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!490 = distinct !{!490, !489, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!491 = distinct !{!491, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!492 = distinct !{!492, !491, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!493 = distinct !{!493, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!494 = distinct !{!494, !493, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!495 = distinct !{!495, !"_ZNKSt3__14__fs10filesystem4path8filenameB8ne180100Ev"}
!496 = distinct !{!496, !495, !"_ZNKSt3__14__fs10filesystem4path8filenameB8ne180100Ev: argument 0"}
!497 = distinct !{!497, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!498 = distinct !{!498, !497, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!499 = distinct !{!499, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!500 = distinct !{!500, !499, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!501 = distinct !{!501, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!502 = distinct !{!502, !501, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!503 = distinct !{!503, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!504 = distinct !{!504, !503, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!505 = distinct !{!505, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!506 = distinct !{!506, !505, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!507 = distinct !{!507, !"_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE12await_resumeEv"}
!508 = distinct !{!508, !507, !"_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE12await_resumeEv: argument 0"}
!509 = distinct !{!509, !"_ZNSt3__16futureINS_8optionalIN3tev9ImageDataEEEE3getEv"}
!510 = distinct !{!510, !509, !"_ZNSt3__16futureINS_8optionalIN3tev9ImageDataEEEE3getEv: argument 0"}
!511 = distinct !{!511, !153}
!512 = !{!490}
!513 = !{!492}
!514 = !{!492, !490}
!515 = !{!494, !492, !490}
!516 = !{!496}
!517 = !{!498}
!518 = !{!500}
!519 = !{!500, !498}
!520 = !{!502}
!521 = !{!504}
!522 = !{!506}
!523 = !{!506, !504}
!524 = !{!508}
!525 = !{!510, !508}
!526 = distinct !{!526, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv"}
!527 = distinct !{!527, !526, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!528 = !{!527}
!529 = distinct !{!529, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEERiRA81_cEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_"}
!530 = distinct !{!530, !529, !"_ZN3fmt3v126formatIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEERiRA81_cEEENS2_12basic_stringIcS5_NS2_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSG_: argument 0"}
!531 = !{!530}
!532 = distinct !{!532, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!533 = distinct !{!533, !532, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!534 = distinct !{!534, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!535 = distinct !{!535, !534, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!536 = distinct !{!536, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!537 = distinct !{!537, !536, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!538 = distinct !{!538, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!539 = distinct !{!539, !538, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!540 = distinct !{!540, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!541 = distinct !{!541, !540, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!542 = distinct !{!542, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!543 = distinct !{!543, !542, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!544 = distinct !{!544, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!545 = distinct !{!545, !544, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!546 = distinct !{!546, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!547 = distinct !{!547, !546, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!548 = distinct !{!548, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!549 = distinct !{!549, !548, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!550 = distinct !{!550, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!551 = distinct !{!551, !550, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!552 = distinct !{!552, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!553 = distinct !{!553, !552, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!554 = distinct !{!554, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!555 = distinct !{!555, !554, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!556 = distinct !{!556, !"_ZN3tev12_GLOBAL__N_111readExtnameEP8fitsfile"}
!557 = distinct !{!557, !556, !"_ZN3tev12_GLOBAL__N_111readExtnameEP8fitsfile: argument 0"}
!558 = distinct !{!558, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!559 = distinct !{!559, !558, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!560 = distinct !{!560, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!561 = distinct !{!561, !560, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!562 = distinct !{!562, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!563 = distinct !{!563, !562, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!564 = distinct !{!564, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!565 = distinct !{!565, !564, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!566 = distinct !{!566, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!567 = distinct !{!567, !566, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!568 = distinct !{!568, !"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_1clEm"}
!569 = distinct !{!569, !568, !"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_1clEm: argument 0"}
!570 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!571 = distinct !{!571, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!572 = distinct !{!572, !571, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!573 = distinct !{!573, !"_ZN3fmt3v126formatIJRiRmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!574 = distinct !{!574, !573, !"_ZN3fmt3v126formatIJRiRmEEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!575 = distinct !{!575, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!576 = distinct !{!576, !575, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!577 = distinct !{!577, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!578 = distinct !{!578, !577, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!579 = distinct !{!579, !153}
!580 = distinct !{!580, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!581 = distinct !{!581, !580, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!582 = distinct !{!582, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!583 = distinct !{!583, !582, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!584 = distinct !{!584, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!585 = distinct !{!585, !584, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!586 = distinct !{!586, !"_ZN3tev12_GLOBAL__N_116stripValueQuotesEPKc"}
!587 = distinct !{!587, !586, !"_ZN3tev12_GLOBAL__N_116stripValueQuotesEPKc: argument 0"}
!588 = distinct !{!588, !153}
!589 = distinct !{!589, !"_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!590 = distinct !{!590, !589, !"_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!591 = distinct !{!591, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev"}
!592 = distinct !{!592, !591, !"_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: argument 0"}
!593 = distinct !{!593, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_"}
!594 = distinct !{!594, !593, !"_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_Qsr14__is_allocatorITL0__EE5valueEENS_12basic_stringIcS2_T_EERKS9_: argument 0"}
!595 = distinct !{!595, !153}
!596 = distinct !{!596, !153}
!597 = distinct !{!597, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!598 = distinct !{!598, !597, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!599 = distinct !{!599, !153}
!600 = !{!533}
!601 = !{!535}
!602 = !{!535, !533}
!603 = !{!537, !535, !533}
!604 = !{!539}
!605 = !{!541}
!606 = !{!543}
!607 = !{!543, !541}
!608 = !{!545}
!609 = !{!547}
!610 = !{!549}
!611 = !{!549, !547}
!612 = !{!551}
!613 = !{!553}
!614 = !{!555}
!615 = !{!555, !553}
!616 = !{!203, !136, i64 84}
!617 = !{!177, !68, i64 48}
!618 = !{!178, !136, i64 32}
!619 = !{!185, !136, i64 1}
!620 = !{!192, !136, i64 4}
!621 = !{!203, !200, i64 220}
!622 = !{!557}
!623 = !{!559}
!624 = !{!561}
!625 = !{!561, !559}
!626 = !{!563}
!627 = !{!565}
!628 = !{!567}
!629 = !{!567, !565}
!630 = !{!569}
!631 = !{!572}
!632 = !{!574}
!633 = !{!576}
!634 = !{!578}
!635 = !{!578, !576}
!636 = !{!581}
!637 = !{!583}
!638 = !{!585}
!639 = !{!585, !583}
!640 = !{!"_ZTSNSt3__122__compressed_pair_elemIfLi0ELb0EEE", !68, i64 0}
!641 = !{!640, !68, i64 0}
!642 = !{!587}
!643 = !{!594, !592, !590, !587}
!644 = !{!590}
!645 = !{!592}
!646 = !{!594}
!647 = !{!598}
!648 = distinct !{null, null}
!649 = distinct !{null, null}
!650 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_9ImageDataENS_9allocatorIS5_EEEEEES8_EEEE", !72, i64 0}
!651 = !{!650, !72, i64 0}
!652 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev}
!653 = distinct !{!653, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_"}
!654 = distinct !{!654, !653, !"_ZSt18make_exception_ptrB8ne180100INSt3__112future_errorEESt13exception_ptrT_: argument 0"}
!655 = !{!654}
!656 = distinct !{null, null}
!657 = distinct !{!657, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!658 = distinct !{!658, !657, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!659 = !{!658}
!660 = distinct !{!660, !"_ZNK3fmt3v127context3argEi"}
!661 = distinct !{!661, !660, !"_ZNK3fmt3v127context3argEi: argument 0"}
!662 = distinct !{!662, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!663 = distinct !{!663, !662, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!664 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!665 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!666 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null}
!667 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt3__19enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS7_, null, null, null, null}
!668 = distinct !{!668, !"_ZNK3fmt3v127context3argEi"}
!669 = distinct !{!669, !668, !"_ZNK3fmt3v127context3argEi: argument 0"}
!670 = distinct !{!670, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!671 = distinct !{!671, !670, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!672 = !{!663, !661}
!673 = !{!274, !274, i64 0}
!674 = !{!671, !669}
!675 = distinct !{null, null, null}
!676 = distinct !{null, null, null}
!677 = distinct !{null, null, null}
!678 = distinct !{null, null, null, null}
!679 = distinct !{!679, !153, !277, !278}
!680 = distinct !{!680, !153, !277, !278}
!681 = distinct !{!681, !280}
!682 = distinct !{!682, !153, !277}
!683 = distinct !{!683, !153}
!684 = distinct !{null, null, null, null}
!685 = distinct !{null, null, null, null, null}
!686 = distinct !{null, null, null}
!687 = distinct !{null, null, null, null}
!688 = distinct !{!688, !153}
end_hunk_10
begin_hunk_11_@_ZNK3tev15FitsImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy:resume.entry
!1446 = !{!1439, !1437}
!1447 = !{!1441, !1439, !1437}
!1448 = !{!1443}
!1449 = distinct !{!1449, !153}
!1450 = !{!380, !380, i64 0}
!1451 = !{!78, !78, i64 0}
!1452 = distinct !{!1452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1453 = distinct !{!1453, !1452, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1454 = distinct !{!1454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1455 = distinct !{!1455, !1454, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1456 = distinct !{!1456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1457 = distinct !{!1457, !1456, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1458 = distinct !{!1458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1459 = distinct !{!1459, !1458, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1460 = !{!1453}
!1461 = !{!1455}
!1462 = !{!1455, !1453}
!1463 = !{!1457, !1455, !1453}
!1464 = !{!1459}
!1465 = distinct !{!1465, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1466 = distinct !{!1466, !1465, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1467 = distinct !{!1467, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1468 = distinct !{!1468, !1467, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1469 = distinct !{!1469, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1470 = distinct !{!1470, !1469, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1471 = distinct !{!1471, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1472 = distinct !{!1472, !1471, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1473 = !{!1466}
!1474 = !{!1468}
!1475 = !{!1468, !1466}
!1476 = !{!1470, !1468, !1466}
!1477 = !{!1472}
!1478 = !{!439, !72, i64 16}
!1479 = distinct !{!1479, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1480 = distinct !{!1480, !1479, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1481 = distinct !{!1481, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1482 = distinct !{!1482, !1481, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1483 = distinct !{!1483, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1484 = distinct !{!1484, !1483, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1485 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1486 = distinct !{!1486, !153}
!1487 = !{!1480}
!1488 = !{!1482}
!1489 = !{!1482, !1480}
!1490 = !{!1484, !1482, !1480}
!1491 = !{!"p1 _ZTSNSt3__16threadE", !72, i64 0}
!1492 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1491, i64 0}
!1493 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1492, i64 0}
!1494 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1491, i64 0, !1491, i64 8, !1493, i64 16}
!1495 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1496 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !470, i64 0, !1495, i64 24}
!1497 = !{!"_ZTSNSt3__115recursive_mutexE", !64, i64 0}
!1498 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !64, i64 0}
!1499 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1498, i64 0}
!1500 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1499, i64 0}
!1501 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1500, i64 0}
!1502 = !{!"_ZTSNSt3__16atomicIlEE", !1501, i64 0}
!1503 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !64, i64 0}
!1504 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1502, i64 0, !1503, i64 8, !65, i64 40}
!1505 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !64, i64 0}
!1506 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1505, i64 0}
!1507 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1506, i64 0}
!1508 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1507, i64 0}
!1509 = !{!"_ZTSNSt3__16atomicImEE", !1508, i64 0}
!1510 = !{!"_ZTSN3tev10ThreadPoolE", !136, i64 8, !1494, i64 16, !1496, i64 40, !1497, i64 72, !1504, i64 112, !1497, i64 160, !1509, i64 200, !1509, i64 208}
!1511 = !{!1510, !136, i64 8}
!1512 = !{!475, !136, i64 52}
!1513 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1514 = distinct !{null, null, null}
!1515 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !72, i64 0}
!1516 = !{!1515, !72, i64 0}
!1517 = distinct !{!1517, !153}
!1518 = distinct !{null, null, null, null, null, null, null, null, null}
!1519 = distinct !{null, null, null, null}
!1520 = distinct !{null}
!1521 = distinct !{!1521, !153}
!1522 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1523 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1524 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1525 = distinct !{null}
!1526 = !{!"_ZTSNSt3__17promiseIvEE", !380, i64 0}
!1527 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !461, i64 0, !1526, i64 48}
!1528 = !{!1527, !380, i64 48}
!1529 = distinct !{!1529, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1530 = distinct !{!1530, !1529, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1531 = distinct !{!1531, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1532 = distinct !{!1532, !1531, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1533 = distinct !{!1533, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1534 = distinct !{!1534, !1533, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1535 = distinct !{!1535, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1536 = distinct !{!1536, !1535, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1537 = distinct !{!1537, !"LVerDomain"}
!1538 = distinct !{!1538, !1537}
!1539 = distinct !{!1539, !1537}
!1540 = distinct !{!1540, !153, !277, !278}
!1541 = distinct !{!1541, !153, !277}
!1542 = !{!1530}
!1543 = !{!1532}
!1544 = !{!1532, !1530}
!1545 = !{!1534, !1532, !1530}
!1546 = !{!1536}
!1547 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_12_GLOBAL__N_114decodeImageHduEP8fitsfileiiE3$_0EENS_4TaskIvEES4_S4_mT0_iEUlmmE_", !72, i64 0}
!1548 = !{!1547, !72, i64 0}
!1549 = !{!1538}
!1550 = !{!1539}
!1551 = distinct !{!1551, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1552 = distinct !{!1552, !1551, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1553 = distinct !{!1553, !153}
!1554 = !{!480, !480, i64 0}
!1555 = !{!1552}
!1556 = distinct !{!1556, !153}
!1557 = !{!481, !480, i64 0}
!1558 = distinct !{null, null}
!1559 = distinct !{!1559, !"_ZN3fmt3v126formatIJRiRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!1560 = distinct !{!1560, !1559, !"_ZN3fmt3v126formatIJRiRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!1561 = distinct !{!1561, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1562 = distinct !{!1562, !1561, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1563 = distinct !{!1563, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1564 = distinct !{!1564, !1563, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1565 = !{!1560}
!1566 = !{!1562}
!1567 = !{!1564}
!1568 = !{!1564, !1562}
!1569 = distinct !{null, null}
!1570 = distinct !{!1570, !"_ZN3fmt3v126formatIJRiRKmEEENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!1571 = distinct !{!1571, !1570, !"_ZN3fmt3v126formatIJRiRKmEEENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!1572 = distinct !{!1572, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1573 = distinct !{!1573, !1572, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1574 = distinct !{!1574, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1575 = distinct !{!1575, !1574, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1576 = !{!1571}
!1577 = !{!1573}
!1578 = !{!1575}
!1579 = !{!1575, !1573}
!1580 = distinct !{!1580, !"_ZN3fmt3v126formatIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!1581 = distinct !{!1581, !1580, !"_ZN3fmt3v126formatIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1582 = distinct !{!1582, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1583 = distinct !{!1583, !1582, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1584 = distinct !{!1584, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1585 = distinct !{!1585, !1584, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1586 = !{!1581}
!1587 = !{!1583}
!1588 = !{!1585}
!1589 = !{!1585, !1583}
!1590 = distinct !{!1590, !153}
!1591 = distinct !{!1591, !153}
!1592 = distinct !{!1592, !153}
!1593 = distinct !{!1593, !"_ZN3fmt3v126formatIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES2_S2_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!1594 = distinct !{!1594, !1593, !"_ZN3fmt3v126formatIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES2_S2_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1595 = distinct !{!1595, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1596 = distinct !{!1596, !1595, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1597 = distinct !{!1597, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1598 = distinct !{!1598, !1597, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1599 = !{!1594}
!1600 = !{!1596}
!1601 = !{!1598}
!1602 = !{!1598, !1596}
!1603 = distinct !{!1603, !"_ZN3fmt3v126formatIJRimEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!1604 = distinct !{!1604, !1603, !"_ZN3fmt3v126formatIJRimEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!1605 = distinct !{!1605, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1606 = distinct !{!1606, !1605, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1607 = distinct !{!1607, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1608 = distinct !{!1608, !1607, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1609 = !{!1604}
!1610 = !{!1606}
!1611 = !{!1608}
!1612 = !{!1608, !1606}
!1613 = distinct !{!1613, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_16MultiChannelViewIfEC1ES5_Qntsr3stdE10is_const_vIT_EEUlRS4_E_E10__iteratorILb0EEdeB8ne180100Ev"}
!1614 = distinct !{!1614, !1613, !"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS_4spanIN3tev7ChannelELm18446744073709551615EEEZNS3_16MultiChannelViewIfEC1ES5_Qntsr3stdE10is_const_vIT_EEUlRS4_E_E10__iteratorILb0EEdeB8ne180100Ev: argument 0"}
!1615 = distinct !{!1615, !"_ZNSt3__16invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEENS_13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_"}
!1616 = distinct !{!1616, !1615, !"_ZNSt3__16invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEENS_13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSC_: argument 0"}
!1617 = distinct !{!1617, !"_ZNSt3__18__invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEEDTclclsr3stdE7declvalIS7_EEspclsr3stdE7declvalIT0_EEEEOS7_DpOSB_"}
!1618 = distinct !{!1618, !1617, !"_ZNSt3__18__invokeB8ne180100IRZN3tev16MultiChannelViewIfEC1ENS_4spanINS1_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EEUlRS5_E_JS8_EEEDTclclsr3stdE7declvalIS7_EEspclsr3stdE7declvalIT0_EEEEOS7_DpOSB_: argument 0"}
!1619 = distinct !{!1619, !"_ZZN3tev16MultiChannelViewIfEC1ENSt3__14spanINS_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EENKUlRS4_E_clES7_"}
!1620 = distinct !{!1620, !1619, !"_ZZN3tev16MultiChannelViewIfEC1ENSt3__14spanINS_7ChannelELm18446744073709551615EEEQntsr3stdE10is_const_vIT_EENKUlRS4_E_clES7_: argument 0"}
!1621 = distinct !{!1621, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1622 = distinct !{!1622, !1621, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1623 = !{!"_ZTSNSt3__14spanIN3tev7ChannelELm18446744073709551615EEE", !147, i64 0, !100, i64 8}
!1624 = !{!1623, !100, i64 8}
!1625 = !{!1623, !147, i64 0}
!1626 = !{!1622, !1620, !1618, !1616, !1614}
!1627 = distinct !{!1627, !153}
!1628 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!1629 = distinct !{!1629, !153}
!1630 = distinct !{!1630, !153}
!1631 = distinct !{!1631, !153}
!1632 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!1633 = distinct !{!1633, !153}
!1634 = distinct !{!1634, !153}
!1635 = distinct !{!1635, !153}
!1636 = distinct !{!1636, !"_ZN3fmt3v126formatIJRiPKcEEENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_"}
!1637 = distinct !{!1637, !1636, !"_ZN3fmt3v126formatIJRiPKcEEENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!1638 = distinct !{!1638, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1639 = distinct !{!1639, !1638, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1640 = distinct !{!1640, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1641 = distinct !{!1641, !1640, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1642 = !{!1637}
!1643 = !{!1639}
!1644 = !{!1641}
!1645 = !{!1641, !1639}
!1646 = !{!"branch_weights", i32 118691432, i32 -2004248167}
!1647 = !{!"branch_weights", i32 -171659984, i32 343608614}
!1648 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!1649 = !{!"branch_weights", i32 -1751137347, i32 -840054308}
!1650 = distinct !{!1650, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!1651 = distinct !{!1651, !1650, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!1652 = distinct !{!1652, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!1653 = distinct !{!1653, !1652, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!1654 = distinct !{!1654, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1655 = distinct !{!1655, !1654, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1656 = !{!"branch_weights", i32 376504927, i32 313595296}
!1657 = !{!1651}
!1658 = !{!1653, !1651}
!1659 = !{!1655}
!1660 = !{!"branch_weights", i32 0, i32 376504927, i32 313595296, i32 -1982739620}
!1661 = distinct !{!1661, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv"}
!1662 = distinct !{!1662, !1661, !"_ZNR3tev7Channel4viewIfEENS_11ChannelViewIT_EEv: argument 0"}
!1663 = distinct !{!1663, !153}
!1664 = distinct !{!1664, !153}
!1665 = !{!"branch_weights", i32 0, i32 -1685864623, i32 216762079, i32 81285624}
!1666 = !{!1662}
!1667 = distinct !{!1667, !153}
!1668 = !{!"branch_weights", i32 0, i32 -1685864623, i32 216762079, i32 81285624, i32 -693363755}
!1669 = distinct !{!1669, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!1670 = distinct !{!1670, !1669, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!1671 = distinct !{!1671, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1672 = distinct !{!1672, !1671, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1673 = distinct !{!1673, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1674 = distinct !{!1674, !1673, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1675 = distinct !{!1675, !153}
!1676 = distinct !{!1676, !"_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE12await_resumeEv"}
!1677 = distinct !{!1677, !1676, !"_ZN3tev4TaskINSt3__18optionalINS_9ImageDataEEEE12await_resumeEv: argument 0"}
!1678 = distinct !{!1678, !"_ZNSt3__16futureINS_8optionalIN3tev9ImageDataEEEE3getEv"}
!1679 = distinct !{!1679, !1678, !"_ZNSt3__16futureINS_8optionalIN3tev9ImageDataEEEE3getEv: argument 0"}
!1680 = !{!1670}
!1681 = !{!1672}
!1682 = !{!1674}
!1683 = !{!1674, !1672}
!1684 = !{!1677}
!1685 = !{!1679, !1677}
!1686 = !{!"branch_weights", i32 378010530, i32 -1073755648}
end_hunk_11
