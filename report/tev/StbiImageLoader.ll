Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.eg, align 16, !tbaa !156, !noalias !628
  store ptr %i.ee, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628
  store i64 500, ptr %i.eh, align 8, !tbaa !158, !noalias !628
  store ptr @.str.7, ptr %.reload.addr687, align 16, !tbaa !71, !noalias !628
  store i64 9, ptr %.sroa.2.0..sroa_idx.i16.i605, align 8, !tbaa !159, !noalias !628
  store i32 0, ptr %i.ed, align 16, !tbaa !162, !noalias !628
  store ptr %.reload.addr679, ptr %i.ec, align 8, !tbaa !164, !noalias !628
  store i64 1, ptr %i.eb, align 16, !tbaa !166, !noalias !628
  store ptr %.reload.addr695, ptr %.sroa.2.0..sroa_idx.i17.i606, align 8, !tbaa !84, !noalias !628
  store ptr null, ptr %i.ea, align 16, !tbaa !73, !noalias !628
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.7, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr687)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.fg = load i64, ptr %i.ef, align 16, !tbaa !167, !noalias !630 ; 8 uses
  %i.fh = icmp ult i64 %i.fg, -9
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !630
  %i.fj = icmp ult i64 %i.fg, 23
  br i1 %i.fj, label %bb.ab, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.fk = or i64 %i.fg, 7                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 23
  %i.fm = add nuw i64 %i.fk, 1
  %i.fn = select i1 %i.fl, i64 25, i64 %i.fm      ; 2 uses
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #57
          to label %.from..noexc.i unwind label %bb.ad, !noalias !628 ; 2 uses

.from..noexc.i:                                   ; preds = %.thread.i.i.i.i
  store ptr %i.fo, ptr %i.ej, align 8, !tbaa !84, !alias.scope !630
  %i.fp = or i64 %i.fn, 1
  store i64 %i.fp, ptr %12, align 8, !alias.scope !630
  store i64 %i.fg, ptr %i.ei, align 8, !tbaa !84, !alias.scope !630
  br label %.from.481

bb.ab:                                            ; preds = %bb.aa
  %i.fq = trunc nuw nsw i64 %i.fg to i8
  %i.fr = shl nuw nsw i8 %i.fq, 1
  store i8 %i.fr, ptr %12, align 8, !alias.scope !630
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.from.483, label %.from.481

.from.481:                                        ; preds = %bb.ab, %.from..noexc.i
  %.017.i.i.i.i = phi ptr [ %i.fo, %.from..noexc.i ], [ %i.ek, %bb.ab ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.fi, i64 %i.fg, i1 false)
  br label %.from.483

.from.483:                                        ; preds = %bb.ab, %.from.481
  %.018.i.i.i.i = phi ptr [ %.017.i.i.i.i, %.from.481 ], [ %i.ek, %bb.ab ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.fg
  store i8 0, ptr %i.fs, align 1, !tbaa !84
  %i.ft = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ft, %i.ee
  br i1 %.not.i.i.i102, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.from.483
  call void @free(ptr noundef %i.ft) #53, !noalias !628
  br label %bb.af

bb.ad:                                            ; preds = %bb.z, %.thread.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.fv, %i.ee
  br i1 %.not.i.i7.i, label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.fv) #53, !noalias !628
  br label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  br label %.thread273.from.

bb.af:                                            ; preds = %.from.483, %bb.ac
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 256 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 8
  %i.fy = trunc i8 %i.fx to i1
  br i1 %i.fy, label %bb.ag, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !84
  %i.gb = load i64, ptr %i.fw, align 8
  %i.gc = and i64 %i.gb, -2
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gc) #59
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %bb.ag, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from..lr.ph
  %.reload631 = load i32, ptr %.spill.addr623, align 4, !tbaa !170
  %.reload614 = load i32, ptr %.spill.addr612, align 8, !tbaa !170
  %.reload610 = load i32, ptr %.spill.addr, align 4, !tbaa !170
  %i.gd = icmp eq i32 %.reload631, 4
  %.not604 = icmp eq i32 %.reload614, 0
  %i.ge = select i1 %.not604, i32 6, i32 7
  %i.gf = load i32, ptr %.reload.addr700, align 8, !tbaa !72
  %i.gg = sext i32 %i.gf to i64
  %.sroa.013.0.copyload = load i64, ptr %.reload.addr697, align 8, !tbaa !84
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fd, i64 256
  %i.gi = load i8, ptr %i.gh, align 8             ; 2 uses
  %i.gj = trunc i8 %i.gi to i1                    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fd, i64 257
  %i.gn = select i1 %i.gj, ptr %i.gl, ptr %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.fd, i64 264
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = lshr i8 %i.gi, 1
  %i.gr = zext nneg i8 %i.gq to i64
  %i.gs = select i1 %i.gj, i64 %i.gp, i64 %i.gr
  store ptr %i.gn, ptr %.reload.addr694, align 8
  store i64 %i.gs, ptr %i.el, align 8
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.61") align 8 %.reload.addr679, i64 noundef %i.gg, i1 noundef zeroext %i.gd, i64 %.sroa.013.0.copyload, i32 noundef 7, i32 noundef %i.ge, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %.reload.addr694, i32 noundef %.reload610)
          to label %bb.ai unwind label %.from.504

bb.ai:                                            ; preds = %bb.ah
  %i.gt = load ptr, ptr %i.eh, align 8, !tbaa !134
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load atomic i32, ptr %i.gu acquire, align 4
  %i.gw = icmp slt i32 %i.gv, 2
  br i1 %i.gw, label %bb.aj, label %AfterCoroSave

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load ptr, ptr %i.eh, align 8, !tbaa !134
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = atomicrmw add ptr %i.gy, i32 -1 acq_rel, align 4
  %i.ha = icmp slt i32 %i.gz, 1
  br i1 %i.ha, label %bb.ak, label %.thread.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ak
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !172 ; 7 uses
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !179
  %i.he = and i32 %i.hd, 8
  %.not.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i.i.i, label %bb.al, label %.thread.sink.split

bb.al:                                            ; preds = %.noexc.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !180 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.hg, %i.hi
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.al
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 33
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.hg, %.from..lr.ph.i.i.i.i.i ], [ %i.hy, %.noexc2.i.i ] ; 2 uses
  %i.hn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ho = load i8, ptr %i.hj, align 8             ; 2 uses
  %i.hp = trunc i8 %i.ho to i1                    ; 2 uses
  %i.hq = load ptr, ptr %i.hk, align 8
  %i.hr = select i1 %i.hp, ptr %i.hq, ptr %i.hl
  %i.hs = load i64, ptr %i.hm, align 8
  %i.ht = lshr i8 %i.ho, 1
  %i.hu = zext nneg i8 %i.ht to i64
  %i.hv = select i1 %i.hp, i64 %i.hs, i64 %i.hu
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !125
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr %i.hr, i64 %i.hv, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hy, %i.hi
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

.from..loopexit.split-lp.i.i:                     ; preds = %bb.ak
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.am:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.hz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.hz) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.ai
  store i8 0, ptr %index.addr702, align 8
  %i.ia = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, ptr nonnull %i.b) #53
  br i1 %i.ia, label %AfterCoroEnd, label %bb.an

.from.504:                                        ; preds = %bb.ah
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread273.from.

bb.an:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr679, align 8, !tbaa !186, !noalias !631 ; 3 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ic = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body110.from.501, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.ao, %bb.al, %.noexc.i.i, %bb.aj
  store ptr null, ptr %.reload.addr679, align 8, !tbaa !186
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.an
  %i.ie = load ptr, ptr %i.ef, align 8, !tbaa !189, !noalias !632 ; 7 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !189, !noalias !632
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.14") align 8 %.reload.addr681, ptr noundef nonnull align 8 dereferenceable(144) %i.ie)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %.thread
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = atomicrmw add ptr %i.if, i64 -1 acq_rel, align 8
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.aq, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ii = load ptr, ptr %i.ie, align 8, !tbaa !125
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #53, !inline_history !6
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.ar:                                            ; preds = %.thread
  %i.il = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.in = atomicrmw add ptr %i.im, i64 -1 acq_rel, align 8
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.body110.from.498, label %.from..body110

.body110.from.498:                                ; preds = %bb.ar
  %i.ip = load ptr, ptr %i.ie, align 8, !tbaa !125
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #53, !inline_history !6
  br label %.from..body110

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.aq, %bb.ap
  %.reload668 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170 ; 3 uses
  %indvars.iv.reload641 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 3 uses
  %i.is = getelementptr inbounds nuw [280 x i8], ptr %.reload668, i64 %indvars.iv.reload641 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !194 ; 5 uses
  %.not.i.i196 = icmp eq ptr %i.it, null
  br i1 %.not.i.i196, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !195 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.it, %i.iv
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i197

.lr.ph.i.i.i.i.i197:                              ; preds = %bb.as, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.iw, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.iv, %bb.as ] ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !198 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i197
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = atomicrmw add ptr %i.iz, i64 -1 acq_rel, align 8
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.au, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !125
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(24) %i.iy) #53, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iy) #53
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %.lr.ph.i.i.i.i.i197
  %i.jf = load i8, ptr %i.iw, align 8
  %i.jg = trunc i8 %i.jf to i1
  br i1 %i.jg, label %bb.av, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.av:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.jh = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !84
  %i.jj = load i64, ptr %i.iw, align 8
  %i.jk = and i64 %i.jj, -2
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jk) #59
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.av, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i198 = icmp eq ptr %i.it, %i.iw
  br i1 %.not.i.i.i.i.i198, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i197

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload672 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170 ; 2 uses
  %indvars.iv.reload645 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 2 uses
  %i.jl = getelementptr inbounds nuw [280 x i8], ptr %.reload672, i64 %indvars.iv.reload645
  %.pre.i.i = load ptr, ptr %i.jl, align 8, !tbaa !194
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.as, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %indvars.iv.reload647 = phi i64 [ %indvars.iv.reload645, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %indvars.iv.reload641, %bb.as ]
  %.reload674 = phi ptr [ %.reload672, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload668, %bb.as ]
  %i.jm = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.it, %bb.as ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [280 x i8], ptr %.reload674, i64 %indvars.iv.reload647 ; 2 uses
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !195
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !199
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jm to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.js) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i8 0, i64 24, i1 false)
  %.reload676.pre = load ptr, ptr %.spill.addr656, align 8, !tbaa !170
  %indvars.iv.reload649.pre = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i
  %indvars.iv.reload649 = phi i64 [ %indvars.iv.reload641, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ], [ %indvars.iv.reload649.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ]
  %.reload676 = phi ptr [ %.reload668, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ], [ %.reload676.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ]
  %.reload625 = load i32, ptr %.spill.addr623, align 4, !tbaa !170
  %i.jt = getelementptr inbounds nuw [280 x i8], ptr %.reload676, i64 %indvars.iv.reload649 ; 4 uses
  %i.ju = icmp ne i32 %.reload625, 4
  %i.jv = zext i1 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jx = load <2 x ptr>, ptr %.reload.addr681, align 8, !tbaa !199
  store <2 x ptr> %i.jx, ptr %i.jt, align 8, !tbaa !199
  %i.jy = load ptr, ptr %i.em, align 8, !tbaa !199
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr681, i8 0, i64 24, i1 false)
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr679) #53
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 84
  store i8 %i.jv, ptr %i.ka, align 4, !tbaa !239
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %.reload.addr679)
          to label %bb.ax unwind label %.from.576

bb.ax:                                            ; preds = %bb.aw
  %.reload678 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170
  %indvars.iv.reload651 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170
  %i.kb = getelementptr inbounds nuw [280 x i8], ptr %.reload678, i64 %indvars.iv.reload651 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 172
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 204 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 4, !tbaa !240, !range !241, !noundef !242
  %i.kf = trunc nuw i8 %i.ke to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, i64 32, i1 false)
  br i1 %i.kf, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i8 1, ptr %i.kd, align 4, !tbaa !240
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %bb.ay, %bb.ax
  %.reload666 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170
  %indvars.iv.reload639 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170
  %i.kg = getelementptr inbounds nuw [280 x i8], ptr %.reload666, i64 %indvars.iv.reload639
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !194 ; 2 uses
  %i.ki = load ptr, ptr %i.jw, align 8, !tbaa !195
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = sdiv exact i64 %i.kl, 72
  store ptr %i.kh, ptr %.reload.addr696, align 8
  store i64 %i.km, ptr %i.eo, align 8
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr683, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr696)
          to label %.noexc113 unwind label %.body114.from.549

.noexc113:                                        ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.kn = load ptr, ptr %.reload.addr683, align 8, !tbaa !245
  %i.ko = load i64, ptr %i.ep, align 8, !tbaa !246
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr679, ptr %i.kn, i64 %i.ko)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.noexc113
  %i.kp = load i64, ptr %i.eq, align 8, !tbaa !247 ; 2 uses
  %i.kq = icmp ugt i64 %i.kp, 5
  br i1 %i.kq, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.kr = load ptr, ptr %.reload.addr683, align 8, !tbaa !245
  %i.ks = mul i64 %i.kp, 24
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ks) #59
  br label %bb.bd

bb.bb:                                            ; preds = %.noexc113
  %i.kt = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ku = load i64, ptr %i.eq, align 8, !tbaa !247 ; 2 uses
  %i.kv = icmp ugt i64 %i.ku, 5
  br i1 %i.kv, label %bb.bc, label %.thread273.from.

bb.bc:                                            ; preds = %bb.bb
  %i.kw = load ptr, ptr %.reload.addr683, align 8, !tbaa !245
  %i.kx = mul i64 %i.ku, 24
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kx) #59
  br label %.thread273.from.

bb.bd:                                            ; preds = %bb.ba, %bb.az
  %i.ky = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr697)
          to label %bb.be unwind label %.from.543

bb.be:                                            ; preds = %bb.bd
  %.reload660 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170
  %indvars.iv.reload653 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 2 uses
  %.reload616 = load i32, ptr %.spill.addr612, align 8, !tbaa !170
  %i.kz = getelementptr inbounds nuw [280 x i8], ptr %.reload660, i64 %indvars.iv.reload653 ; 2 uses
  %.not603 = icmp eq i32 %.reload616, 0
  %i.la = load i32, ptr %.reload.addr700, align 8, !tbaa !72
  %i.lb = sext i32 %i.la to i64                   ; 3 uses
  %i.lc = mul i64 %i.ky, %i.lb                    ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 220 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 208 ; 2 uses
  %i.lf = mul i64 %i.lc, %indvars.iv.reload653    ; 2 uses
  %.sroa.0211.1.reload618 = load ptr, ptr %.sroa.0211.1.spill.addr, align 8, !tbaa !170 ; 2 uses
  br i1 %.not603, label %bb.br, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 3, ptr %i.ld, align 4, !tbaa !248
  store i16 264, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0211.1.reload618, i64 %i.lf
  %i.lh = load i64, ptr %i.eh, align 8, !tbaa !246 ; 5 uses
  %i.li = icmp ugt i64 %i.lh, 5
  br i1 %i.li, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.lj = icmp ugt i64 %i.lh, 768614336404564650
  br i1 %i.lj, label %bb.bh, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #58
          to label %.noexc117 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp

.noexc117:                                        ; preds = %bb.bh
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.bg
  %i.lk = mul nuw i64 %i.lh, 24
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #57
          to label %.noexc118 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294 ; 2 uses

.noexc118:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  store ptr %i.ll, ptr %.reload.addr685, align 8, !tbaa !245
  %i.lm = load i64, ptr %i.eh, align 8, !tbaa !246 ; 3 uses
  store i64 %i.lm, ptr %i.es, align 8, !tbaa !247
  %.not.i.i.i.i.i116 = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i.i.i.i116, label %.from..noexc118, label %.from..sink.split

bb.bi:                                            ; preds = %bb.bf
  store i64 5, ptr %i.es, align 8, !tbaa !247
  store ptr %i.er, ptr %.reload.addr685, align 8, !tbaa !245
  %.not.i11.i.i.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc118, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc118, %bb.bi
  %.sink403 = phi i64 [ %i.lm, %.noexc118 ], [ %i.lh, %bb.bi ] ; 2 uses
  %.sink = phi ptr [ %i.ll, %.noexc118 ], [ %i.er, %bb.bi ]
  %.idx.i.i.i.i = mul nsw i64 %.sink403, 24
  %i.ln = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.ln, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc118

.from..noexc118:                                  ; preds = %bb.bi, %.noexc118, %.from..sink.split
  %i.lo = phi i64 [ %.sink403, %.from..sink.split ], [ 0, %.noexc118 ], [ 0, %bb.bi ]
  %.reload627 = load i32, ptr %.spill.addr623, align 4, !tbaa !170
  %.reload608 = load i32, ptr %.spill.addr, align 4, !tbaa !170
  %i.lp = icmp eq i32 %.reload627, 4
  %i.lq = select i1 %i.lp, i32 2, i32 3
  store i64 %i.lo, ptr %i.et, align 8, !tbaa !246
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr681, ptr nonnull %i.lg, i64 %i.lc, i64 noundef %i.lb, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr685, i32 noundef %i.lq, i32 noundef %.reload608, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.bj unwind label %.from.513

bb.bj:                                            ; preds = %.from..noexc118
  %i.lr = load ptr, ptr %i.em, align 8, !tbaa !134
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load atomic i32, ptr %i.ls acquire, align 4
  %i.lu = icmp slt i32 %i.lt, 2
  br i1 %i.lu, label %bb.bk, label %AfterCoroSave412

bb.bk:                                            ; preds = %bb.bj
  %i.lv = load ptr, ptr %i.em, align 8, !tbaa !134
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = atomicrmw add ptr %i.lw, i32 -1 acq_rel, align 4
  %i.ly = icmp slt i32 %i.lx, 1
  br i1 %i.ly, label %bb.bl, label %.thread255.sink.split

bb.bl:                                            ; preds = %bb.bk
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i123 unwind label %.from..loopexit.split-lp.i.i120

.noexc.i.i123:                                    ; preds = %bb.bl
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !172 ; 7 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !179
  %i.mc = and i32 %i.mb, 8
  %.not.i.i.i.i124 = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i.i.i124, label %bb.bm, label %.thread255.sink.split

bb.bm:                                            ; preds = %.noexc.i.i123
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !180 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i125 = icmp eq ptr %i.me, %i.mg
  br i1 %.not12.i.i.i.i.i125, label %.thread255.sink.split, label %.from..lr.ph.i.i.i.i.i126

.from..lr.ph.i.i.i.i.i126:                        ; preds = %bb.bm
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 33
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  br label %.from..noexc2.i.i130

.from..noexc2.i.i130:                             ; preds = %.noexc2.i.i130, %.from..lr.ph.i.i.i.i.i126
  %.sroa.09.013.i.i.i.i.i127 = phi ptr [ %i.me, %.from..lr.ph.i.i.i.i.i126 ], [ %i.mw, %.noexc2.i.i130 ] ; 2 uses
  %i.ml = load ptr, ptr %.sroa.09.013.i.i.i.i.i127, align 8, !tbaa !184 ; 2 uses
  %i.mm = load i8, ptr %i.mh, align 8             ; 2 uses
  %i.mn = trunc i8 %i.mm to i1                    ; 2 uses
  %i.mo = load ptr, ptr %i.mi, align 8
  %i.mp = select i1 %i.mn, ptr %i.mo, ptr %i.mj
  %i.mq = load i64, ptr %i.mk, align 8
  %i.mr = lshr i8 %i.mm, 1
  %i.ms = zext nneg i8 %i.mr to i64
  %i.mt = select i1 %i.mn, i64 %i.mq, i64 %i.ms
  %i.mu = load ptr, ptr %i.ml, align 8, !tbaa !125
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr %i.mp, i64 %i.mt, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i130 unwind label %.from..loopexit.i.i128, !inline_history !4

.noexc2.i.i130:                                   ; preds = %.from..noexc2.i.i130
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i127, i64 16 ; 2 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.mw, %i.mg
  br i1 %.not.i.i.i.i.i131, label %.thread255.sink.split, label %.from..noexc2.i.i130

.from..loopexit.i.i128:                           ; preds = %.from..noexc2.i.i130
  %lpad.loopexit.i.i129 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

.from..loopexit.split-lp.i.i120:                  ; preds = %bb.bl
  %lpad.loopexit.split-lp.i.i121 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

bb.bn:                                            ; preds = %.from..loopexit.split-lp.i.i120, %.from..loopexit.i.i128
  %lpad.phi.i.i122 = phi { ptr, i32 } [ %lpad.loopexit.i.i129, %.from..loopexit.i.i128 ], [ %lpad.loopexit.split-lp.i.i121, %.from..loopexit.split-lp.i.i120 ]
  %i.mx = extractvalue { ptr, i32 } %lpad.phi.i.i122, 0
  call void @__clang_call_terminate(ptr %i.mx) #60
  unreachable

AfterCoroSave412:                                 ; preds = %bb.bj
  store i8 1, ptr %index.addr702, align 8
  %i.my = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr681, ptr nonnull %i.b) #53
  br i1 %i.my, label %AfterCoroEnd, label %bb.bo

.body110.from.501:                                ; preds = %bb.ao
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body110

.from..body110:                                   ; preds = %.body110.from.501, %.body110.from.498, %bb.ar
  %eh.lpad-body111 = phi { ptr, i32 } [ %i.mz, %.body110.from.501 ], [ %i.il, %.body110.from.498 ], [ %i.il, %bb.ar ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr679) #53
  br label %.thread273.from.

.from.576:                                        ; preds = %bb.aw
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread273.from.

.body114.from.549:                                ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread273.from.

.from.543:                                        ; preds = %bb.bd
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp: ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.from.513:                                        ; preds = %.from..noexc118
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bq

bb.bo:                                            ; preds = %AfterCoroSave412
  %.pr253 = load ptr, ptr %.reload.addr681, align 8, !tbaa !250 ; 3 uses
  %.not.i132 = icmp eq ptr %.pr253, null
  br i1 %.not.i132, label %.thread255, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ne = getelementptr inbounds nuw i8, ptr %.pr253, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr nonnull %.pr253)
          to label %.thread255.sink.split unwind label %.from.510, !inline_history !8

.thread255.sink.split:                            ; preds = %.noexc2.i.i130, %bb.bp, %bb.bm, %.noexc.i.i123, %bb.bk
  store ptr null, ptr %.reload.addr681, align 8, !tbaa !250
  br label %.thread255

.thread255:                                       ; preds = %.thread255.sink.split, %bb.bo
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.510

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread255
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr681) #53
  %i.ng = load i64, ptr %i.es, align 8, !tbaa !247 ; 2 uses
  %i.nh = icmp ugt i64 %i.ng, 5
  br i1 %i.nh, label %.sink.split, label %bb.cd

.from.510:                                        ; preds = %bb.bp, %.thread255
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr681) #53
  br label %bb.bq

bb.bq:                                            ; preds = %.from.510, %.from.513
  %.pn79 = phi { ptr, i32 } [ %i.ni, %.from.510 ], [ %i.nd, %.from.513 ] ; 2 uses
  %i.nj = load i64, ptr %i.es, align 8, !tbaa !247 ; 2 uses
  %i.nk = icmp ugt i64 %i.nj, 5
  br i1 %i.nk, label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from.:   ; preds = %bb.bq
  %i.nl = load ptr, ptr %.reload.addr685, align 8, !tbaa !245
  %i.nm = mul i64 %i.nj, 24
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.nm) #59
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

bb.br:                                            ; preds = %bb.be
  store i32 1, ptr %i.ld, align 4, !tbaa !248
  store i16 269, ptr %i.le, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0211.1.reload618, i64 %i.lf
  %i.no = load i64, ptr %i.eh, align 8, !tbaa !246 ; 5 uses
  %i.np = icmp ugt i64 %i.no, 5
  br i1 %i.np, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.nq = icmp ugt i64 %i.no, 768614336404564650
  br i1 %i.nq, label %bb.bt, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #58
          to label %.noexc144 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296

.noexc144:                                        ; preds = %bb.bt
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140: ; preds = %bb.bs
  %i.nr = mul nuw i64 %i.no, 24
  %i.ns = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nr) #57
          to label %.noexc145 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295 ; 2 uses

.noexc145:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140
  store ptr %i.ns, ptr %.reload.addr684, align 8, !tbaa !245
  %i.nt = load i64, ptr %i.eh, align 8, !tbaa !246 ; 3 uses
  store i64 %i.nt, ptr %i.ev, align 8, !tbaa !247
  %.not.i.i.i.i.i141 = icmp eq i64 %i.nt, 0
  br i1 %.not.i.i.i.i.i141, label %.from..noexc145, label %.from..sink.split404

bb.bu:                                            ; preds = %bb.br
  store i64 5, ptr %i.ev, align 8, !tbaa !247
  store ptr %i.eu, ptr %.reload.addr684, align 8, !tbaa !245
  %.not.i11.i.i.i.i136 = icmp eq i64 %i.no, 0
  br i1 %.not.i11.i.i.i.i136, label %.from..noexc145, label %.from..sink.split404

.from..sink.split404:                             ; preds = %.noexc145, %bb.bu
  %.sink408 = phi i64 [ %i.nt, %.noexc145 ], [ %i.no, %bb.bu ] ; 2 uses
  %.sink406 = phi ptr [ %i.ns, %.noexc145 ], [ %i.eu, %bb.bu ]
  %.idx.i.i.i.i138 = mul nsw i64 %.sink408, 24
  %i.nu = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink406, ptr noundef nonnull align 8 dereferenceable(1) %i.nu, i64 %.idx.i.i.i.i138, i1 false)
  br label %.from..noexc145

.from..noexc145:                                  ; preds = %bb.bu, %.noexc145, %.from..sink.split404
  %i.nv = phi i64 [ %.sink408, %.from..sink.split404 ], [ 0, %.noexc145 ], [ 0, %bb.bu ]
  %.reload629 = load i32, ptr %.spill.addr623, align 4, !tbaa !170
  %.reload = load i32, ptr %.spill.addr, align 4, !tbaa !170
  %i.nw = icmp eq i32 %.reload629, 4
  %i.nx = select i1 %i.nw, i32 2, i32 3
  store i64 %i.nv, ptr %i.ew, align 8, !tbaa !246
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr681, ptr nonnull %i.nn, i64 %i.lc, i64 noundef %i.lb, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr684, i32 noundef %i.nx, i32 noundef %.reload, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.bv unwind label %.from.534

bb.bv:                                            ; preds = %.from..noexc145
  %i.ny = load ptr, ptr %i.em, align 8, !tbaa !134
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load atomic i32, ptr %i.nz acquire, align 4
  %i.ob = icmp slt i32 %i.oa, 2
  br i1 %i.ob, label %bb.bw, label %AfterCoroSave416

bb.bw:                                            ; preds = %bb.bv
  %i.oc = load ptr, ptr %i.em, align 8, !tbaa !134
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = atomicrmw add ptr %i.od, i32 -1 acq_rel, align 4
  %i.of = icmp slt i32 %i.oe, 1
  br i1 %i.of, label %bb.bx, label %.thread263.sink.split

bb.bx:                                            ; preds = %bb.bw
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i151 unwind label %.from..loopexit.split-lp.i.i148

.noexc.i.i151:                                    ; preds = %bb.bx
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !172 ; 7 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !179
  %i.oj = and i32 %i.oi, 8
  %.not.i.i.i.i152 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i.i.i152, label %bb.by, label %.thread263.sink.split

bb.by:                                            ; preds = %.noexc.i.i151
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !180 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i153 = icmp eq ptr %i.ol, %i.on
  br i1 %.not12.i.i.i.i.i153, label %.thread263.sink.split, label %.from..lr.ph.i.i.i.i.i154

.from..lr.ph.i.i.i.i.i154:                        ; preds = %bb.by
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 33
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  br label %.from..noexc2.i.i158

.from..noexc2.i.i158:                             ; preds = %.noexc2.i.i158, %.from..lr.ph.i.i.i.i.i154
  %.sroa.09.013.i.i.i.i.i155 = phi ptr [ %i.ol, %.from..lr.ph.i.i.i.i.i154 ], [ %i.pd, %.noexc2.i.i158 ] ; 2 uses
  %i.os = load ptr, ptr %.sroa.09.013.i.i.i.i.i155, align 8, !tbaa !184 ; 2 uses
  %i.ot = load i8, ptr %i.oo, align 8             ; 2 uses
  %i.ou = trunc i8 %i.ot to i1                    ; 2 uses
  %i.ov = load ptr, ptr %i.op, align 8
  %i.ow = select i1 %i.ou, ptr %i.ov, ptr %i.oq
  %i.ox = load i64, ptr %i.or, align 8
  %i.oy = lshr i8 %i.ot, 1
  %i.oz = zext nneg i8 %i.oy to i64
  %i.pa = select i1 %i.ou, i64 %i.ox, i64 %i.oz
  %i.pb = load ptr, ptr %i.os, align 8, !tbaa !125
  %i.pc = load ptr, ptr %i.pb, align 8
  invoke void %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.os, ptr %i.ow, i64 %i.pa, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i158 unwind label %.from..loopexit.i.i156, !inline_history !4

.noexc2.i.i158:                                   ; preds = %.from..noexc2.i.i158
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i155, i64 16 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.pd, %i.on
  br i1 %.not.i.i.i.i.i159, label %.thread263.sink.split, label %.from..noexc2.i.i158

.from..loopexit.i.i156:                           ; preds = %.from..noexc2.i.i158
  %lpad.loopexit.i.i157 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bz

.from..loopexit.split-lp.i.i148:                  ; preds = %bb.bx
  %lpad.loopexit.split-lp.i.i149 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bz

bb.bz:                                            ; preds = %.from..loopexit.split-lp.i.i148, %.from..loopexit.i.i156
  %lpad.phi.i.i150 = phi { ptr, i32 } [ %lpad.loopexit.i.i157, %.from..loopexit.i.i156 ], [ %lpad.loopexit.split-lp.i.i149, %.from..loopexit.split-lp.i.i148 ]
  %i.pe = extractvalue { ptr, i32 } %lpad.phi.i.i150, 0
  call void @__clang_call_terminate(ptr %i.pe) #60
  unreachable

AfterCoroSave416:                                 ; preds = %bb.bv
  store i8 2, ptr %index.addr702, align 8
  %i.pf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr681, ptr nonnull %i.b) #53
  br i1 %i.pf, label %AfterCoroEnd, label %bb.ca

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140
  %lpad.loopexit297 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296: ; preds = %bb.bt
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.from.534:                                        ; preds = %.from..noexc145
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cc

bb.ca:                                            ; preds = %AfterCoroSave416
  %.pr261 = load ptr, ptr %.reload.addr681, align 8, !tbaa !250 ; 3 uses
  %.not.i161 = icmp eq ptr %.pr261, null
  br i1 %.not.i161, label %.thread263, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ph = getelementptr inbounds nuw i8, ptr %.pr261, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  invoke void %i.pi(ptr nonnull %.pr261)
          to label %.thread263.sink.split unwind label %.from.531, !inline_history !8

.thread263.sink.split:                            ; preds = %.noexc2.i.i158, %bb.cb, %bb.by, %.noexc.i.i151, %bb.bw
  store ptr null, ptr %.reload.addr681, align 8, !tbaa !250
  br label %.thread263

.thread263:                                       ; preds = %.thread263.sink.split, %bb.ca
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit164 unwind label %.from.531

_ZN3tev4TaskIvE12await_resumeEv.exit164:          ; preds = %.thread263
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr681) #53
  %i.pj = load i64, ptr %i.ev, align 8, !tbaa !247 ; 2 uses
  %i.pk = icmp ugt i64 %i.pj, 5
  br i1 %i.pk, label %.sink.split, label %bb.cd

.from.531:                                        ; preds = %bb.cb, %.thread263
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr681) #53
  br label %bb.cc

bb.cc:                                            ; preds = %.from.531, %.from.534
  %.pn78 = phi { ptr, i32 } [ %i.pl, %.from.531 ], [ %i.pg, %.from.534 ] ; 2 uses
  %i.pm = load i64, ptr %i.ev, align 8, !tbaa !247 ; 2 uses
  %i.pn = icmp ugt i64 %i.pm, 5
  br i1 %i.pn, label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from.:   ; preds = %bb.cc
  %i.po = load ptr, ptr %.reload.addr684, align 8, !tbaa !245
  %i.pp = mul i64 %i.pm, 24
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pp) #59
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.sink.split:                                      ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink841 = phi i64 [ %i.ng, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.pj, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink839.in = phi ptr [ %.reload.addr685, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr684, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink839 = load ptr, ptr %.sink839.in, align 8, !tbaa !245
  %i.pq = mul i64 %.sink841, 24
  call void @_ZdlPvm(ptr noundef %.sink839, i64 noundef %i.pq) #59
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.reload658 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170
  %indvars.iv.reload = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 2 uses
  %i.pr = getelementptr inbounds nuw [280 x i8], ptr %.reload658, i64 %indvars.iv.reload
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 84
  store i8 1, ptr %i.ps, align 4, !tbaa !239
  %i.pt = load i64, ptr %i.ef, align 8, !tbaa !247 ; 2 uses
  %i.pu = icmp ugt i64 %i.pt, 5
  br i1 %i.pu, label %bb.ce, label %.from.474

bb.ce:                                            ; preds = %bb.cd
  %i.pv = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  %i.pw = mul i64 %i.pt, 24
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pw) #59
  %indvars.iv.reload655.pre = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170
  br label %.from.474

.from._ZN3tev16MultiChannelViewIfED2Ev.exit135:   ; preds = %bb.cc, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from., %bb.bq, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from., %.from.543
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.nc, %.from.543 ], [ %.pn79, %bb.bq ], [ %.pn79, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from. ], [ %lpad.loopexit.split-lp, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp ], [ %lpad.loopexit, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294 ], [ %.pn78, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from. ], [ %lpad.loopexit.split-lp298, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296 ], [ %lpad.loopexit297, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295 ], [ %.pn78, %bb.cc ] ; 2 uses
  %i.px = load i64, ptr %i.ef, align 8, !tbaa !247 ; 2 uses
  %i.py = icmp ugt i64 %i.px, 5
  br i1 %i.py, label %.body114.from., label %.thread273.from.

.body114.from.:                                   ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135
  %i.pz = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  %i.qa = mul i64 %i.px, 24
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qa) #59
  br label %.thread273.from.

._crit_edge:                                      ; preds = %.from.474, %.preheader
  %i.qb = load ptr, ptr %.reload.addr701, align 8, !tbaa !128 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #58
          to label %.noexc.i169 unwind label %bb.ch

.noexc.i169:                                      ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %._crit_edge
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.qb, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr682)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.qd = landingpad { ptr, i32 }
          catch ptr null
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  call void @__clang_call_terminate(ptr %i.qe) #60
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.cg
  %i.qf = load ptr, ptr %.reload.addr682, align 8, !tbaa !153 ; 5 uses
  %.not.i.i170 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i170, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 824 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !251 ; 2 uses
  %.not6.i.i.i.i171 = icmp eq ptr %i.qf, %i.qh
  br i1 %.not6.i.i.i.i171, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i172

.lr.ph.i.i.i.i172:                                ; preds = %bb.ci, %.lr.ph.i.i.i.i172
  %.07.i.i.i.i173 = phi ptr [ %i.qi, %.lr.ph.i.i.i.i172 ], [ %i.qh, %bb.ci ]
  %i.qi = getelementptr inbounds i8, ptr %.07.i.i.i.i173, i64 -280 ; 3 uses
  call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.qi) #53
  %.not.i.i.i.i174 = icmp eq ptr %i.qf, %i.qi
  br i1 %.not.i.i.i.i174, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i172

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i172
  %.pre1.i.i175 = load ptr, ptr %.reload.addr682, align 8, !tbaa !153
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.ci, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.qj = phi ptr [ %.pre1.i.i175, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.qf, %bb.ci ] ; 2 uses
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !251
  %i.qk = load ptr, ptr %i.al, align 8, !tbaa !252
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qn) #59
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %.sroa.0211.1.reload622 = load ptr, ptr %.sroa.0211.1.spill.addr, align 8, !tbaa !170
  call void @free(ptr noundef nonnull %.sroa.0211.1.reload622) #53
  br label %bb.ck

.thread273.from..thread273.sink.split:            ; preds = %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98.thread, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101.thread, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98, %.split242, %.split246
  %.sink410 = phi ptr [ %i.cs, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98 ], [ %i.dk, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101 ], [ %i.cs, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98.thread ], [ %i.cs, %.split242 ], [ %i.dk, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101.thread ], [ %i.dk, %.split246 ]
  %.pn81.pn.ph.ph = phi { ptr, i32 } [ %i.cu, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98 ], [ %i.dm, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101 ], [ %i.ct, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98.thread ], [ %i.da, %.split242 ], [ %i.dl, %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101.thread ], [ %i.ds, %.split246 ]
  call void @__cxa_free_exception(ptr %.sink410) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273

.thread273.from.:                                 ; preds = %.from.576, %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, %.from.504, %.from..body110, %.body114.from.549, %.body114.from., %bb.bb, %bb.bc, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %.from.504 ], [ %i.na, %.from.576 ], [ %i.fu, %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %eh.lpad-body111, %.from..body110 ], [ %.pn79.pn.pn.pn, %.body114.from. ], [ %i.nb, %.body114.from.549 ], [ %i.kt, %bb.bc ], [ %i.kt, %bb.bb ], [ %.pn79.pn.pn.pn, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135 ]
  call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr682) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273: ; preds = %.thread273.from..thread286, %.thread273.from., %.thread273.from..thread273.sink.split, %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101, %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98, %.split242, %.split246
  %.pn81.pn278 = phi { ptr, i32 } [ %i.fa, %.thread273.from..thread286 ], [ %.pn79.pn.pn.pn.pn.pn, %.thread273.from. ], [ %i.da, %.split242 ], [ %.pn81.pn.ph.ph, %.thread273.from..thread273.sink.split ], [ %i.dp, %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101 ], [ %i.cx, %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98 ], [ %i.ds, %.split246 ]
  %.sroa.0211.1.reload = load ptr, ptr %.sroa.0211.1.spill.addr, align 8, !tbaa !170
  call void @free(ptr noundef nonnull %.sroa.0211.1.reload) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178: ; preds = %.split, %.thread282.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %.thread282.from., %.thread282.from.567, %.thread282.from.571, %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273, %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from.
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn278, %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273 ], [ %i.be, %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from. ], [ %.pn76238, %.thread282.from.571 ], [ %i.ci, %.thread282.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %.pn75, %.thread282.from. ], [ %i.bf, %.thread282.from.567 ], [ %i.cl, %.split ]
  %.16 = extractvalue { ptr, i32 } %.pn81.pn.pn, 0
  %i.qo = call ptr @__cxa_begin_catch(ptr %.16) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr701)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178
  invoke void @__cxa_end_catch()
          to label %bb.ck unwind label %.from.593

bb.ck:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, %bb.cj
  %i.qp = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = atomicrmw add ptr %i.qq, i32 -1 acq_rel, align 4 ; 2 uses
  %i.qs = icmp slt i32 %i.qr, 1
  br i1 %i.qs, label %bb.cl, label %_ZN3tev5Latch9countDownEv.exit.i179

bb.cl:                                            ; preds = %bb.ck
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i184 unwind label %.from..loopexit.split-lp.i.i181

.noexc.i.i184:                                    ; preds = %bb.cl
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !172 ; 7 uses
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !179
  %i.qw = and i32 %i.qv, 8
  %.not.i.i.i.i185 = icmp eq i32 %i.qw, 0
  br i1 %.not.i.i.i.i185, label %bb.cm, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.cm:                                            ; preds = %.noexc.i.i184
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !180 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i186 = icmp eq ptr %i.qy, %i.ra
  br i1 %.not12.i.i.i.i.i186, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i187

.from..lr.ph.i.i.i.i.i187:                        ; preds = %bb.cm
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qu, i64 48
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qu, i64 33
  %i.re = getelementptr inbounds nuw i8, ptr %i.qu, i64 40
  br label %.from..noexc2.i.i191

.from..noexc2.i.i191:                             ; preds = %.noexc2.i.i191, %.from..lr.ph.i.i.i.i.i187
  %.sroa.09.013.i.i.i.i.i188 = phi ptr [ %i.qy, %.from..lr.ph.i.i.i.i.i187 ], [ %i.rq, %.noexc2.i.i191 ] ; 2 uses
  %i.rf = load ptr, ptr %.sroa.09.013.i.i.i.i.i188, align 8, !tbaa !184 ; 2 uses
  %i.rg = load i8, ptr %i.rb, align 8             ; 2 uses
  %i.rh = trunc i8 %i.rg to i1                    ; 2 uses
  %i.ri = load ptr, ptr %i.rc, align 8
  %i.rj = select i1 %i.rh, ptr %i.ri, ptr %i.rd
  %i.rk = load i64, ptr %i.re, align 8
  %i.rl = lshr i8 %i.rg, 1
  %i.rm = zext nneg i8 %i.rl to i64
  %i.rn = select i1 %i.rh, i64 %i.rk, i64 %i.rm
  %i.ro = load ptr, ptr %i.rf, align 8, !tbaa !125
  %i.rp = load ptr, ptr %i.ro, align 8
  invoke void %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr %i.rj, i64 %i.rn, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i191 unwind label %.from..loopexit.i.i189, !inline_history !4

.noexc2.i.i191:                                   ; preds = %.from..noexc2.i.i191
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i188, i64 16 ; 2 uses
  %.not.i.i.i.i.i192 = icmp eq ptr %i.rq, %i.ra
  br i1 %.not.i.i.i.i.i192, label %_ZN3tev5Latch9countDownEv.exit.i179, label %.from..noexc2.i.i191

.from..loopexit.i.i189:                           ; preds = %.from..noexc2.i.i191
  %lpad.loopexit.i.i190 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cn

.from..loopexit.split-lp.i.i181:                  ; preds = %bb.cl
  %lpad.loopexit.split-lp.i.i182 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cn

bb.cn:                                            ; preds = %.from..loopexit.split-lp.i.i181, %.from..loopexit.i.i189
  %lpad.phi.i.i183 = phi { ptr, i32 } [ %lpad.loopexit.i.i190, %.from..loopexit.i.i189 ], [ %lpad.loopexit.split-lp.i.i182, %.from..loopexit.split-lp.i.i181 ]
  %i.rr = extractvalue { ptr, i32 } %lpad.phi.i.i183, 0
  call void @__clang_call_terminate(ptr %i.rr) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i179:              ; preds = %.noexc2.i.i191, %bb.ck
  %i.rs = icmp slt i32 %i.qr, 2
  br i1 %i.rs, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %.noexc.i.i184, %bb.cm, %_ZN3tev5Latch9countDownEv.exit.i179
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !73 ; 2 uses
  %i.rv = inttoptr i64 %i.ru to ptr               ; 3 uses
  store ptr %i.rv, ptr %.reload.addr698, align 8
  %.not.i193 = icmp eq i64 %i.ru, 0
  br i1 %.not.i193, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %AfterCoroSuspend422

AfterCoroSuspend422:                              ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %i.b, align 8
  %index.addr705 = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i8 3, ptr %index.addr705, align 8
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr nonnull %i.rv)
  br label %AfterCoroEnd

bb.co:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178
  %i.rx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.600 unwind label %bb.cr

.from.593:                                        ; preds = %bb.cj
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.600

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i179
  %i.rz = load ptr, ptr %i.l, align 8, !tbaa !135 ; 5 uses
  %.not.i.i194 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i194, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = atomicrmw add ptr %i.sa, i64 -1 acq_rel, align 8
  %i.sc = icmp eq i64 %i.sb, 0
  br i1 %i.sc, label %bb.cq, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.cq:                                            ; preds = %bb.cp
  %i.sd = load ptr, ptr %i.rz, align 8, !tbaa !125
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(24) %i.rz) #53, !inline_history !9
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rz) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, %bb.cp, %bb.cq
  call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr701) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1632) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave416, %AfterCoroSave412, %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSuspend422
  ret void

.body.from.600:                                   ; preds = %bb.co, %.from.593
  %.pn82 = phi { ptr, i32 } [ %i.ry, %.from.593 ], [ %i.rx, %bb.co ]
  call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr701) #53
  br label %.body

.body:                                            ; preds = %.body.from.600, %.body.from.597, %.body.from.
  %.merged85 = phi { ptr, i32 } [ %.pn82, %.body.from.600 ], [ %i.g, %.body.from. ], [ %i.f, %.body.from.597 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1632) #53
  resume { ptr, i32 } %.merged85

bb.cr:                                            ; preds = %bb.co
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #60
  unreachable

bb.cs:                                            ; preds = %bb.w, %bb.r, %bb.m
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !128, !noalias !635 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #58
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !258, !noalias !635 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #58
          to label %bb.e unwind label %bb.f, !noalias !635

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #53, !noalias !635
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !635 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !258, !noalias !635
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #53, !noalias !635
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !260
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135  ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !73
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !73
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
  tail call void @__clang_call_terminate(ptr %i.u) #60
  unreachable
}

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__gif_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 20 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !82
  %i.g = load i8, ptr %i.b, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZL18stbi__gif_test_rawP13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !636 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !80
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
end_hunk_0
begin_hunk_1_@_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm:.from.
  %i.ba = load i64, ptr %.reload.addr133, align 8
  %i.bb = sub i64 %.sroa.speculated, %i.ba
  %i.bc = select i1 %i.az, i64 %i.bb, i64 0
  %.055 = add i64 %i.bc, %i.ax                    ; 2 uses
  %i.bd = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !667
  %i.be = icmp ult i64 %i.bd, %.055
  br i1 %i.be, label %bb.m, label %bb.q

.from.110:                                        ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  %i.bh = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !667
  store i64 %.055, ptr %.reload.addr130, align 16, !tbaa !84, !noalias !668
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !84, !noalias !668
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.202, i64 68, i64 68, ptr nonnull %.reload.addr130)
          to label %bb.n unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #58
          to label %bb.an unwind label %.thread145

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.104.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bl = load i8, ptr %11, align 8
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %.split, label %.from.104.sink.split

.thread145:                                       ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bo = load i8, ptr %11, align 8
  %i.bp = trunc i8 %i.bo to i1
  br i1 %i.bp, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

.split:                                           ; preds = %.thread145, %bb.p
  %i.bq = phi { ptr, i32 } [ %i.bn, %.thread145 ], [ %i.bk, %bb.p ] ; 2 uses
  %.0147 = phi i1 [ false, %.thread145 ], [ true, %bb.p ]
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.bt = load i64, ptr %11, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br i1 %.0147, label %.from.104, label %.from..split107

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %.thread145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %.from..split107

.from.104.sink.split:                             ; preds = %bb.p, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn2558.ph = phi { ptr, i32 } [ %i.bj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %.from.104

.from.104:                                        ; preds = %.from.104.sink.split, %.split
  %.pn2558 = phi { ptr, i32 } [ %i.bq, %.split ], [ %.pn2558.ph, %.from.104.sink.split ]
  call void @__cxa_free_exception(ptr %i.bg) #53
  br label %.from..split107

bb.q:                                             ; preds = %bb.l
  %i.bv = icmp eq i64 %.sroa.speculated, 0
  %.not = icmp ne i32 %i.ay, 3                    ; 2 uses
  %.neg = sext i1 %.not to i64
  %i.bw = add i64 %.sroa.speculated, %.neg
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  store i64 %i.bx, ptr %.reload.addr136, align 8, !tbaa !159
  %i.by = zext i1 %.not to i8
  store i8 %i.by, ptr %.reload.addr141, align 1, !tbaa !272
  %i.bz = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !273

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.t unwind label %.body31.from.98

bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body31.from.98:                                  ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  br label %.from..split107

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.t, %bb.r, %bb.q
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !72
  %i.cf = load i64, ptr %.reload.addr136, align 8, !tbaa !159
  %i.cg = mul i64 %i.cf, %i.as
  store <8 x ptr> %i.b, ptr %12, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.reload.addr138, ptr %i.ch, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %.reload.addr136, ptr %i.ci, align 8, !tbaa !275
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr130, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.ce, i64 noundef %i.cg, ptr noundef nonnull byval(%class.anon.272) align 8 %12, i32 noundef %6)
          to label %bb.u unwind label %.body31.from.

bb.u:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load atomic i32, ptr %i.cl acquire, align 4
  %i.cn = icmp slt i32 %i.cm, 2
  br i1 %i.cn, label %bb.v, label %AfterCoroSave

bb.v:                                             ; preds = %bb.u
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = atomicrmw add ptr %i.cp, i32 -1 acq_rel, align 4
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.w
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !172 ; 7 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !179
  %i.cv = and i32 %i.cu, 8
  %.not.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %.thread.sink.split

bb.x:                                             ; preds = %.noexc.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !180 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cx, %i.cz
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cx, %.from..lr.ph.i.i.i.i.i ], [ %i.dp, %.noexc2.i.i ] ; 2 uses
  %i.de = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.df = load i8, ptr %i.da, align 8             ; 2 uses
  %i.dg = trunc i8 %i.df to i1                    ; 2 uses
  %i.dh = load ptr, ptr %i.db, align 8
  %i.di = select i1 %i.dg, ptr %i.dh, ptr %i.dc
  %i.dj = load i64, ptr %i.dd, align 8
  %i.dk = lshr i8 %i.df, 1
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = select i1 %i.dg, i64 %i.dj, i64 %i.dl
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !125
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr %i.di, i64 %i.dm, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, %i.cz
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.from..loopexit.split-lp.i.i:                     ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dq = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dq) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.u
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %index.addr143, align 4
  %i.dr = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr130, ptr nonnull %i.a) #53
  br i1 %i.dr, label %AfterCoroEnd, label %bb.z

.body31.from.:                                    ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.z:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr130, align 8, !tbaa !250 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body31.from.101, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aa, %bb.x, %.noexc.i.i, %bb.v
  store ptr null, ptr %.reload.addr130, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.ab unwind label %.body31.from.101

bb.ab:                                            ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #60
  unreachable

.body31.from.101:                                 ; preds = %bb.aa, %.thread
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #53
  br label %.from..split107

.from..split107:                                  ; preds = %.body31.from., %.body31.from.98, %.body31.from.101, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from.104, %.from.110
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105 ], [ %i.bq, %.split ], [ %i.bf, %.from.110 ], [ %.pn2558, %.from.104 ], [ %i.dy, %.body31.from.101 ], [ %i.ds, %.body31.from. ], [ %i.cd, %.body31.from.98 ]
  %.5 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn.pn, 0
  %i.dz = call ptr @__cxa_begin_catch(ptr %.5) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %.from..split107
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.ab, %bb.ad
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 1
  br i1 %i.ed, label %bb.ae, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.ae:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !172 ; 7 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !179
  %i.eh = and i32 %i.eg, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i.i41, label %bb.af, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.af:                                            ; preds = %.noexc.i.i40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !180 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.ej, %i.el
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  br label %.from..noexc2.i.i47

.from..noexc2.i.i47:                              ; preds = %.noexc2.i.i47, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.ej, %.from..lr.ph.i.i.i.i.i43 ], [ %i.fb, %.noexc2.i.i47 ] ; 2 uses
  %i.eq = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !184 ; 2 uses
  %i.er = load i8, ptr %i.em, align 8             ; 2 uses
  %i.es = trunc i8 %i.er to i1                    ; 2 uses
  %i.et = load ptr, ptr %i.en, align 8
  %i.eu = select i1 %i.es, ptr %i.et, ptr %i.eo
  %i.ev = load i64, ptr %i.ep, align 8
  %i.ew = lshr i8 %i.er, 1
  %i.ex = zext nneg i8 %i.ew to i64
  %i.ey = select i1 %i.es, i64 %i.ev, i64 %i.ex
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !125
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr %i.eu, i64 %i.ey, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !4

.noexc2.i.i47:                                    ; preds = %.from..noexc2.i.i47
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.fb, %i.el
  br i1 %.not.i.i.i.i.i48, label %_ZN3tev5Latch9countDownEv.exit.i36, label %.from..noexc2.i.i47

.from..loopexit.i.i45:                            ; preds = %.from..noexc2.i.i47
  %lpad.loopexit.i.i46 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

.from..loopexit.split-lp.i.i37:                   ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i38 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %.from..loopexit.split-lp.i.i37, %.from..loopexit.i.i45
  %lpad.phi.i.i39 = phi { ptr, i32 } [ %lpad.loopexit.i.i46, %.from..loopexit.i.i45 ], [ %lpad.loopexit.split-lp.i.i38, %.from..loopexit.split-lp.i.i37 ]
  %i.fc = extractvalue { ptr, i32 } %lpad.phi.i.i39, 0
  call void @__clang_call_terminate(ptr %i.fc) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fd = icmp slt i32 %i.ec, 2
  br i1 %i.fd, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.af, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !73 ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr               ; 3 uses
  store ptr %i.fg, ptr %.reload.addr136, align 8
  %.not.i49 = icmp eq i64 %i.ff, 0
  br i1 %.not.i49, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend81

AfterCoroSuspend81:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 1, ptr %index.addr144, align 4
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr nonnull %i.fg)
  br label %AfterCoroEnd

bb.ah:                                            ; preds = %.from..split107
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.127 unwind label %bb.am

.from.120:                                        ; preds = %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.127

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.fk = load ptr, ptr %i.x, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = atomicrmw add ptr %i.fl, i64 -1 acq_rel, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !125
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ai, %bb.aj
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !247 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 5
  br i1 %i.ft, label %bb.ak, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.fu = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.fv = mul i64 %i.fs, 24
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fv) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %bb.ak, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit, %AfterCoroSuspend81, %AfterCoroSave
  ret void

.body.from.127:                                   ; preds = %bb.ah, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.fj, %.from.120 ], [ %i.fi, %bb.ah ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #53
  br label %.body

.body:                                            ; preds = %.body.from., %.body.from.124, %.body.from.127
  %.merged29 = phi { ptr, i32 } [ %.pn26, %.body.from.127 ], [ %i.ah, %.body.from. ], [ %i.s, %.body.from.124 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !247 ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 5
  br i1 %i.fy, label %bb.al, label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

bb.al:                                            ; preds = %.body
  %i.fz = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.ga = mul i64 %i.fx, 24
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.ga) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

_ZN3tev16MultiChannelViewIfED2Ev.exit50:          ; preds = %bb.al, %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #53
  resume { ptr, i32 } %.merged29

bb.am:                                            ; preds = %bb.ah
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #60
  unreachable

bb.an:                                            ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr nonnull @.str.196, i64 44)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #60
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  store ptr %1, ptr %i.c, align 8, !tbaa !73
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN3tev5Latch9countDownEv.exit

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172  ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !179
  %i.k = and i32 %i.j, 8
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !180  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181  ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !125
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.af) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !250
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250
end_hunk_1
begin_hunk_2_@_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm:.from.
  %i.bb = sub i64 %.sroa.speculated, %i.ba
  %i.bc = select i1 %i.az, i64 %i.bb, i64 0
  %.055 = add i64 %i.bc, %i.ax                    ; 2 uses
  %i.bd = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !685
  %i.be = icmp ult i64 %i.bd, %.055
  br i1 %i.be, label %bb.m, label %bb.q

.from.110:                                        ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  %i.bh = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !685
  store i64 %.055, ptr %.reload.addr130, align 16, !tbaa !84, !noalias !686
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !84, !noalias !686
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.202, i64 68, i64 68, ptr nonnull %.reload.addr130)
          to label %bb.n unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #58
          to label %bb.an unwind label %.thread145

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.104.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bl = load i8, ptr %11, align 8
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %.split, label %.from.104.sink.split

.thread145:                                       ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bo = load i8, ptr %11, align 8
  %i.bp = trunc i8 %i.bo to i1
  br i1 %i.bp, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

.split:                                           ; preds = %.thread145, %bb.p
  %i.bq = phi { ptr, i32 } [ %i.bn, %.thread145 ], [ %i.bk, %bb.p ] ; 2 uses
  %.0147 = phi i1 [ false, %.thread145 ], [ true, %bb.p ]
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.bt = load i64, ptr %11, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br i1 %.0147, label %.from.104, label %.from..split107

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %.thread145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %.from..split107

.from.104.sink.split:                             ; preds = %bb.p, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn2558.ph = phi { ptr, i32 } [ %i.bj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %.from.104

.from.104:                                        ; preds = %.from.104.sink.split, %.split
  %.pn2558 = phi { ptr, i32 } [ %i.bq, %.split ], [ %.pn2558.ph, %.from.104.sink.split ]
  call void @__cxa_free_exception(ptr %i.bg) #53
  br label %.from..split107

bb.q:                                             ; preds = %bb.l
  %i.bv = icmp eq i64 %.sroa.speculated, 0
  %.not = icmp ne i32 %i.ay, 3                    ; 2 uses
  %.neg = sext i1 %.not to i64
  %i.bw = add i64 %.sroa.speculated, %.neg
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  store i64 %i.bx, ptr %.reload.addr136, align 8, !tbaa !159
  %i.by = zext i1 %.not to i8
  store i8 %i.by, ptr %.reload.addr141, align 1, !tbaa !272
  %i.bz = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !273

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.t unwind label %.body31.from.98

bb.t:                                             ; preds = %bb.s
  %i.cc = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #53 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body31.from.98:                                  ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #53
  br label %.from..split107

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.t, %bb.r, %bb.q
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !72
  %i.cf = load i64, ptr %.reload.addr136, align 8, !tbaa !159
  %i.cg = shl i64 %i.as, 5
  %i.ch = mul i64 %i.cg, %i.cf
  store <8 x ptr> %i.b, ptr %12, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.reload.addr138, ptr %i.ci, align 8, !tbaa !73
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %.reload.addr136, ptr %i.cj, align 8, !tbaa !275
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr130, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i32 noundef 0, i32 noundef %i.ce, i64 noundef %i.ch, ptr noundef nonnull byval(%class.anon.392) align 8 %12, i32 noundef %6)
          to label %bb.u unwind label %.body31.from.

bb.u:                                             ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load atomic i32, ptr %i.cm acquire, align 4
  %i.co = icmp slt i32 %i.cn, 2
  br i1 %i.co, label %bb.v, label %AfterCoroSave

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !134
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 acq_rel, align 4
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.w
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !172 ; 7 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !179
  %i.cw = and i32 %i.cv, 8
  %.not.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %.thread.sink.split

bb.x:                                             ; preds = %.noexc.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !180 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 33
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.cy, %.from..lr.ph.i.i.i.i.i ], [ %i.dq, %.noexc2.i.i ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.dg = load i8, ptr %i.db, align 8             ; 2 uses
  %i.dh = trunc i8 %i.dg to i1                    ; 2 uses
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = select i1 %i.dh, ptr %i.di, ptr %i.dd
  %i.dk = load i64, ptr %i.de, align 8
  %i.dl = lshr i8 %i.dg, 1
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = select i1 %i.dh, i64 %i.dk, i64 %i.dm
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !125
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr %i.dj, i64 %i.dn, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dq, %i.da
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

.from..loopexit.split-lp.i.i:                     ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.y:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.dr = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.dr) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.u
  %index.addr143 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 0, ptr %index.addr143, align 4
  %i.ds = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr130, ptr nonnull %i.a) #53
  br i1 %i.ds, label %AfterCoroEnd, label %bb.z

.body31.from.:                                    ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..split107

bb.z:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr130, align 8, !tbaa !250 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body31.from.101, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.aa, %bb.x, %.noexc.i.i, %bb.v
  store ptr null, ptr %.reload.addr130, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.ab unwind label %.body31.from.101

bb.ab:                                            ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #60
  unreachable

.body31.from.101:                                 ; preds = %bb.aa, %.thread
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr130) #53
  br label %.from..split107

.from..split107:                                  ; preds = %.body31.from., %.body31.from.98, %.body31.from.101, %.split, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from.104, %.from.110
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105 ], [ %i.bq, %.split ], [ %i.bf, %.from.110 ], [ %.pn2558, %.from.104 ], [ %i.dz, %.body31.from.101 ], [ %i.dt, %.body31.from. ], [ %i.cd, %.body31.from.98 ]
  %.5 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn.pn, 0
  %i.ea = call ptr @__cxa_begin_catch(ptr %.5) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %.from..split107
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.ab, %bb.ad
  %i.eb = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = atomicrmw add ptr %i.ec, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %bb.ae, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.ae:                                            ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.ae
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !172 ; 7 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !179
  %i.ei = and i32 %i.eh, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i41, label %bb.af, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.af:                                            ; preds = %.noexc.i.i40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !180 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.ek, %i.em
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 33
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  br label %.from..noexc2.i.i47

.from..noexc2.i.i47:                              ; preds = %.noexc2.i.i47, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.ek, %.from..lr.ph.i.i.i.i.i43 ], [ %i.fc, %.noexc2.i.i47 ] ; 2 uses
  %i.er = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !184 ; 2 uses
  %i.es = load i8, ptr %i.en, align 8             ; 2 uses
  %i.et = trunc i8 %i.es to i1                    ; 2 uses
  %i.eu = load ptr, ptr %i.eo, align 8
  %i.ev = select i1 %i.et, ptr %i.eu, ptr %i.ep
  %i.ew = load i64, ptr %i.eq, align 8
  %i.ex = lshr i8 %i.es, 1
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = select i1 %i.et, i64 %i.ew, i64 %i.ey
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !125
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr %i.ev, i64 %i.ez, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !4

.noexc2.i.i47:                                    ; preds = %.from..noexc2.i.i47
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.fc, %i.em
  br i1 %.not.i.i.i.i.i48, label %_ZN3tev5Latch9countDownEv.exit.i36, label %.from..noexc2.i.i47

.from..loopexit.i.i45:                            ; preds = %.from..noexc2.i.i47
  %lpad.loopexit.i.i46 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

.from..loopexit.split-lp.i.i37:                   ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i38 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ag

bb.ag:                                            ; preds = %.from..loopexit.split-lp.i.i37, %.from..loopexit.i.i45
  %lpad.phi.i.i39 = phi { ptr, i32 } [ %lpad.loopexit.i.i46, %.from..loopexit.i.i45 ], [ %lpad.loopexit.split-lp.i.i38, %.from..loopexit.split-lp.i.i37 ]
  %i.fd = extractvalue { ptr, i32 } %lpad.phi.i.i39, 0
  call void @__clang_call_terminate(ptr %i.fd) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fe = icmp slt i32 %i.ed, 2
  br i1 %i.fe, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i40, %bb.af, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !73 ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr               ; 3 uses
  store ptr %i.fh, ptr %.reload.addr136, align 8
  %.not.i49 = icmp eq i64 %i.fg, 0
  br i1 %.not.i49, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend81

AfterCoroSuspend81:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr144 = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i8 1, ptr %index.addr144, align 4
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr nonnull %i.fh)
  br label %AfterCoroEnd

bb.ah:                                            ; preds = %.from..split107
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.127 unwind label %bb.am

.from.120:                                        ; preds = %bb.ad
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.127

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i36
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = atomicrmw add ptr %i.fm, i64 -1 acq_rel, align 8
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.aj, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !125
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ai, %bb.aj
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !247 ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 5
  br i1 %i.fu, label %bb.ak, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.ak:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.fv = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.fw = mul i64 %i.ft, 24
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fw) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %bb.ak, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev16MultiChannelViewIfED2Ev.exit, %AfterCoroSuspend81, %AfterCoroSave
  ret void

.body.from.127:                                   ; preds = %bb.ah, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.fk, %.from.120 ], [ %i.fj, %bb.ah ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #53
  br label %.body

.body:                                            ; preds = %.body.from., %.body.from.124, %.body.from.127
  %.merged29 = phi { ptr, i32 } [ %.pn26, %.body.from.127 ], [ %i.ah, %.body.from. ], [ %i.s, %.body.from.124 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !247 ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 5
  br i1 %i.fz, label %bb.al, label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

bb.al:                                            ; preds = %.body
  %i.ga = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.gb = mul i64 %i.fy, 24
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gb) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit50

_ZN3tev16MultiChannelViewIfED2Ev.exit50:          ; preds = %bb.al, %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #53
  resume { ptr, i32 } %.merged29

bb.am:                                            ; preds = %bb.ah
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #60
  unreachable

bb.an:                                            ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.d) #53
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !251
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #59
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 6 uses
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #58
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #53
  invoke void @_ZNSt3__117__assoc_sub_state13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(116) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #53
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #53
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.d ]
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #53
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #53 ; 0 uses
  tail call void @_ZSt9terminatev() #60
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !689
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.i, %bb.g ], [ %i.r, %bb.l ], [ %i.s, %bb.m ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !247  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 5
  br i1 %i.v, label %bb.o, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.w = load ptr, ptr %0, align 8, !tbaa !245
  %i.x = mul i64 %i.u, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.x) #59
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EED2Ev.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn11

bb.p:                                             ; preds = %bb.k, %bb.f
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() local_unnamed_addr #41 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #53 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.197)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.272) align 8 %5, i32 noundef %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #56 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !1735
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1738
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1738
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1738
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1738
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1739
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1740
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1740

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1740
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !271, !noalias !1740
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1740
  store ptr null, ptr %7, align 8, !tbaa !271, !noalias !1740
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1740 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1740
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1740
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1740 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1740
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53, !noalias !1740
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53, !noalias !1740
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !179
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.az) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #53
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !179
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !180 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !181 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !184 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !125
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cl) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #53
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #53
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #60
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %1) #53
  invoke void @_ZNSt3__17promiseIvE13set_exceptionESt13exception_ptr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #53
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !10
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #53
  ret void
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #35

declare void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind writable sret(%"class.std::__1::future.72") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

declare void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN3tev10ThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #35

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task.70", align 8      ; 11 uses
  %10 = alloca %class.anon.286, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #56 ; 24 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr179, align 8, !tbaa !73
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.171 ; 5 uses

.body.from.171:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1754
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1754
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1754
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1754
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1755
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1756
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.b unwind label %bb.d, !noalias !1756

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1756
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !271, !noalias !1756
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1756
  store ptr null, ptr %7, align 8, !tbaa !271, !noalias !1756
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1756 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1756
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1756
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1756 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1756
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53, !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53, !noalias !1756
end_hunk_3
begin_hunk_4_@_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i:.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #58
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #53
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  store i32 %i.bl, ptr %10, align 8, !tbaa !489
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !490
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !73
  invoke void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !495 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !496
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !73
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !73
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !73
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !497
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !497
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !495
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1749

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #53
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #53
  br label %.from.158

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !134
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !172 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !179
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !180 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 2 uses
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
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 8             ; 2 uses
  %i.cv = trunc i8 %i.cu to i1                    ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cr
  %i.cy = load i64, ptr %i.cs, align 8
  %i.cz = lshr i8 %i.cu, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cv, i64 %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.df) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !495
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !496
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #60
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #53
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.158
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !172 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !179
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !180 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !181 ; 2 uses
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
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !184 ; 2 uses
  %i.eq = load i8, ptr %i.el, align 8             ; 2 uses
  %i.er = trunc i8 %i.eq to i1                    ; 2 uses
  %i.es = load ptr, ptr %i.em, align 8
  %i.et = select i1 %i.er, ptr %i.es, ptr %i.en
  %i.eu = load i64, ptr %i.eo, align 8
  %i.ev = lshr i8 %i.eq, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = select i1 %i.er, i64 %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !125
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.fb) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !73 ; 2 uses
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
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !125
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #53
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #53
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #60
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #56 ; 16 uses
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1768
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1768
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1768
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1768
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1769
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53, !noalias !1770
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1770

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1770
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !271, !noalias !1770
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1770
  store ptr null, ptr %4, align 8, !tbaa !271, !noalias !1770
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1770 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1770
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1770
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1770 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1770
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #53, !noalias !1770
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53, !noalias !1770
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr73, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !179
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.az) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !179
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !180 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !181 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !184 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !125
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cl) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #53
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #60
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #56 ; 20 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.126 ; 5 uses

.body.from.126:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1781
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1781
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1781
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1781
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1782
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1782
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53, !noalias !1783
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.b unwind label %bb.d, !noalias !1783

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1783
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !271, !noalias !1783
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1783
  store ptr null, ptr %2, align 8, !tbaa !271, !noalias !1783
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1783 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1783
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1783
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1783 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1783
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #53, !noalias !1783
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53, !noalias !1783
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %1, align 8, !tbaa !498    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !495  ; 2 uses
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load atomic i32, ptr %i.x acquire, align 4
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %AfterCoroSave

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !172 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !179
  %i.ah = and i32 %i.ag, 8
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.noexc.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !180 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181 ; 2 uses
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
  %i.aq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ar = load i8, ptr %i.am, align 8             ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8
  %i.au = select i1 %i.as, ptr %i.at, ptr %i.ao
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = lshr i8 %i.ar, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = select i1 %i.as, i64 %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.au, i64 %i.ay, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.bc) #60
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !500
  %i.bd = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %i.a) #53
  br i1 %i.bd, label %AfterCoroEnd, label %bb.j

bb.j:                                             ; preds = %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !500 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.l, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.k, %bb.h, %.noexc.i.i, %bb.f
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !500 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !250
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
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %.loopexit52

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #53 ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #53
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #53
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %.from.104

bb.o:                                             ; preds = %bb.n, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.spill.addr, align 8, !tbaa !500
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !500
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.bo, %.reload
  br i1 %.not51.not, label %._crit_edge.from.._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #53
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !505
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !506
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
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #53
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #58
          to label %bb.r unwind label %.loopexit52.from.115

bb.r:                                             ; preds = %bb.q
  unreachable

.loopexit52.from.115:                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #53
  br label %.loopexit52

bb.s:                                             ; preds = %._crit_edge
  %i.ca = icmp ugt i64 %i.bw, 8
  br i1 %i.ca, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @__cxa_allocate_exception(i64 40) #53 ; 3 uses
  %i.cc = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 2 uses
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !505
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr %i.cc, i64 %i.ch)
          to label %bb.u unwind label %.loopexit52.from.113

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #58
          to label %bb.ag unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__cxa_free_exception(ptr nonnull %i.cb) #53
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
  call void @__clang_call_terminate(ptr %i.cn) #60
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.v
  %i.co = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 5 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !505 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cp, %bb.x ]
  %i.cq = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #53
  %.not.i.i.i.i24 = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !506
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.x, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.cr = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.co, %bb.x ] ; 2 uses
  store ptr %i.co, ptr %i.bu, align 8, !tbaa !505
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !507
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cw) #59
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.l, %.loopexit52.from.110, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115
  %.213 = phi ptr [ %i.bz, %.loopexit52.from.115 ], [ %i.cl, %.loopexit52.from.111 ], [ %i.cj, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.bi, %bb.l ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #53
  %i.cx = call ptr @__cxa_begin_catch(ptr %.213) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit, %bb.y
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4 ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.z, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.z:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.z
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !172 ; 7 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !179
  %i.df = and i32 %i.de, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.aa:                                            ; preds = %.noexc.i.i29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !180 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !181 ; 2 uses
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
  %i.do = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !184 ; 2 uses
  %i.dp = load i8, ptr %i.dk, align 8             ; 2 uses
  %i.dq = trunc i8 %i.dp to i1                    ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8
  %i.ds = select i1 %i.dq, ptr %i.dr, ptr %i.dm
  %i.dt = load i64, ptr %i.dn, align 8
  %i.du = lshr i8 %i.dp, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = select i1 %i.dq, i64 %i.dt, i64 %i.dv
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !125
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr %i.ds, i64 %i.dw, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.ea) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.eb = icmp slt i32 %i.da, 2
  br i1 %i.eb, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i29, %bb.aa, %_ZN3tev5Latch9countDownEv.exit.i25
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !73 ; 2 uses
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
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !125
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.ad, %bb.ae
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend91
  ret void

.body.from.128:                                   ; preds = %bb.ac, %.from.124
  %.pn18 = phi { ptr, i32 } [ %i.eh, %.from.124 ], [ %i.eg, %bb.ac ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr142) #53
  br label %.body

.body:                                            ; preds = %.body.from.128, %.body.from.126, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.128 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.126 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #53
  resume { ptr, i32 } %.merged20

bb.af:                                            ; preds = %bb.ac, %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #60
  unreachable

bb.ag:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !498    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !495  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #53
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !495
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !496
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() local_unnamed_addr #35

declare void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !495
  %i.d = load ptr, ptr %0, align 8, !tbaa !498
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #58
  unreachable

_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !496
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
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #58
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #57 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %1, align 8, !tbaa !73
  store i64 %i.v, ptr %i.s, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !73
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !497
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !497
  store <4 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !495 ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !498   ; 3 uses
  %.not27.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not27.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 4 uses
  %i.ae = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -32 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !73
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !73
  store ptr null, ptr %i.ag, align 8, !tbaa !73
  %i.aj = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -24 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !73
  store <2 x ptr> %i.al, ptr %i.ah, align 8, !tbaa !73
  store ptr null, ptr %i.aj, align 8, !tbaa !1785
  store ptr null, ptr %i.ak, align 8, !tbaa !1786
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.an = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !497
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !497
  store ptr null, ptr %i.an, align 8, !tbaa !497
  %.not.i.i = icmp eq ptr %i.ag, %i.ad
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1784

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !496
  %.pre9 = load ptr, ptr %i.b, align 8, !tbaa !496
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i
  %i.ap = phi ptr [ %i.ac, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre9, %.loopexit.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.lcssa.i.i = phi ptr [ %i.s, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev4TaskIvEEEEEEDaRT_m.exit.i ], [ %i.af, %.loopexit.loopexit ]
  store ptr %.lcssa.i.i, ptr %0, align 8, !tbaa !496
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !496
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !496
  store ptr %i.t, ptr %i.a, align 8, !tbaa !496
  %.not2.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ap, %.loopexit ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #53
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.aw) #59
  br label %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3tev4TaskIvEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.d
  ret ptr %i.ab
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #41 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.120) #58
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.2", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #56 ; 13 uses
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1797
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1797
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1797
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1797
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1798
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53, !noalias !1799
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1799

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1799
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !271, !noalias !1799
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1799
  store ptr null, ptr %8, align 8, !tbaa !271, !noalias !1799
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1799 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1799
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1799
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1799 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1799
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #53, !noalias !1799
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1799
  store ptr %4, ptr %.reload.addr, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %index.addr82, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %5, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #60
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #53
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #56 ; 15 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1810
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1810
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1810
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1810
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1811
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53, !noalias !1812
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1812

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1812
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !271, !noalias !1812
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1812
  store ptr null, ptr %2, align 8, !tbaa !271, !noalias !1812
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1812 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1812
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1812
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1812 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1812
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #53, !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53, !noalias !1812
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1813, !nonnull !242, !align !344
  %i.u = load i32, ptr %1, align 8, !tbaa !489
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !490
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !172 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !179
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !180 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !181 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.be) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #60
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !172 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !179
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !180 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !181 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !184 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cq) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !73 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !125
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #53
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #60
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind noalias writable sret(%"class.std::__1::future.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.tev::ThreadPool::QueuedTask::Comparator", align 1 ; 3 uses
  %6 = alloca %"class.std::__1::shared_ptr.301", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 8 uses
  %8 = alloca %"struct.tev::ThreadPool::QueuedTask", align 16 ; 13 uses
  %9 = alloca %class.anon.302, align 8            ; 3 uses
  %i.a = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #57, !noalias !1824 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !1824
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, i64 16), ptr %i.b, align 16, !tbaa !125, !noalias !1824
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, i64 16), ptr %i.d, align 16, !tbaa !125, !noalias !1824
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load i64, ptr %2, align 8, !tbaa !73, !noalias !1824
  store i64 %i.g, ptr %i.f, align 8, !tbaa !73, !noalias !1824
  store ptr %i.d, ptr %i.e, align 16, !tbaa !511, !noalias !1824
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit unwind label %.body.i.i.i, !noalias !1824

common.resume:                                    ; preds = %bb.r, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i.i.i ], [ %.pn11.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__124__packaged_task_functionIFvvEED2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(56) %i.d) #53, !noalias !1824
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 16 dead_on_return(24) dereferenceable(96) %i.b) #53, !noalias !1824
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #59, !noalias !1824
  br label %common.resume

_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %6, align 8, !tbaa !514, !alias.scope !1825
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !515, !alias.scope !1825
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit unwind label %bb.b

_ZNSt3__113packaged_taskIFvvEE10get_futureB8ne180100Ev.exit: ; preds = %_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1846, !range !241, !noundef !242
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  store ptr %i.d, ptr %9, align 8, !tbaa !514
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !515
  %i.q = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, i64 16), ptr %8, align 16, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.s, align 8, !tbaa !514
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.t, align 16, !tbaa !515
  %i.u = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  store ptr %8, ptr %i.r, align 16, !tbaa !522
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 %3, ptr %i.w, align 16, !tbaa !525
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i8 %i.a, ptr %i.x, align 4, !tbaa !1847
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !526  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !527
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !522
  %i.ae = load ptr, ptr %i.r, align 16, !tbaa !522 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 16 dereferenceable(53) %i.z)
          to label %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJS3_EEEvDpOT_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #60
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
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !526
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !528 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  invoke void @_ZNSt3__19__sift_upB8ne180100INS_17_ClassicAlgPolicyERN3tev10ThreadPool10QueuedTask10ComparatorENS_11__wrap_iterIPS4_EEEEvT1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE(ptr %i.an, ptr %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %i.ar)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !522 ; 4 uses
  %i.at = icmp eq ptr %i.as, %8
  br i1 %i.at, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN3tev10ThreadPool10QueuedTaskD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.i, %bb.h
end_hunk_4
begin_hunk_5_@_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii:.from.

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #53, !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53, !noalias !1879
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit25, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr68)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #60
  unreachable

bb.g:                                             ; preds = %.loopexit25, %.from..lr.ph
  %.027 = phi i32 [ %2, %.from..lr.ph ], [ %i.au, %.loopexit25 ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1881, !nonnull !242, !align !344 ; 7 uses
  store i32 %.027, ptr %.reload.addr67, align 8, !tbaa !72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1883, !nonnull !242, !align !378
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !72 ; 4 uses
  store ptr %.reload.addr67, ptr %.reload.addr, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !73
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1884, !nonnull !242, !align !378
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !266
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !73
  store <2 x ptr> %i.aj, ptr %i.v, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !73
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1885, !nonnull !242, !align !378
  store ptr %i.an, ptr %i.x, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1886, !nonnull !242, !align !344
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !275
  %.not11.i.i = icmp slt i32 %i.ad, 4
  br i1 %.not11.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.from..noexc20
  %.0.lcssa.i.i = phi i32 [ %i.ar, %.preheader.i.i.from..noexc20 ], [ 0, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.0.lcssa.i.i, %i.ad
  br i1 %i.aq, label %.lr.ph14.i.i, label %.loopexit25

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc20
  %i.ar = phi i32 [ %i.as, %.noexc20 ], [ 4, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ %i.ar, %.noexc20 ], [ 0, %bb.g ]
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.012.i.i)
          to label %.noexc20 unwind label %.from..loopexit.split-lp

.noexc20:                                         ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i32 %i.ar, 4                ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, %i.ad
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1872

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1872

.lr.ph14.i.i:                                     ; preds = %.preheader.i.i, %.noexc21
  %.113.i.i = phi i32 [ %i.at, %.noexc21 ], [ %.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.113.i.i)
          to label %.noexc21 unwind label %.from..loopexit

.noexc21:                                         ; preds = %.lr.ph14.i.i
  %i.at = add i32 %.113.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i.i, label %.loopexit25, label %.lr.ph14.i.i, !llvm.loop !1873

.loopexit25:                                      ; preds = %.noexc21, %.preheader.i.i
  %i.au = add i32 %.027, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1874

.from..loopexit:                                  ; preds = %.lr.ph14.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.from..loopexit.split-lp:                         ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.from..loopexit.split-lp, %.from..loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  %i.av = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.60

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN3tev5Latch9countDownEv.exit.i

bb.j:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !179
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !180 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bg, %.from..lr.ph.i.i.i.i.i ], [ %i.by, %.noexc2.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !125
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bi
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

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
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bz) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73 ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  store ptr %i.cd, ptr %.reload.addr66, align 8
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i8 0, ptr %index.addr69, align 4
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr nonnull %i.cd)
  br label %AfterCoroEnd

bb.m:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.64 unwind label %bb.p

.from.60:                                         ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.64

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 acq_rel, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !125
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.64:                                    ; preds = %bb.m, %.from.60
  %.pn = phi { ptr, i32 } [ %i.cg, %.from.60 ], [ %i.cf, %bb.m ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr68) #53
  br label %.body

.body:                                            ; preds = %.body.from.64, %.body.from.62, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.64 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.62 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #53
  resume { ptr, i32 } %.merged18

bb.p:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #45 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %3 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !530, !nonnull !242, !align !378
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %i.c = sext i32 %i.b to i64                     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !531, !nonnull !242, !align !344
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !532, !nonnull !242, !align !344
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !533, !nonnull !242, !align !378
  %i.m = load float, ptr %i.l, align 4, !tbaa !68
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !534, !nonnull !242, !align !378
  %i.r = load float, ptr %i.q, align 4, !tbaa !68
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !535, !nonnull !242
  %i.w = load i8, ptr %i.v, align 1, !tbaa !272, !range !241, !noundef !242
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !536, !nonnull !242, !align !344
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !159 ; 5 uses
  %i.ab = sext i32 %1 to i64                      ; 6 uses
  %i.ac = getelementptr [4 x i8], ptr %.sroa.0.0.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 4 uses
  %i.ae = mul i64 %i.aa, %i.ab
  %i.af = getelementptr [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !68
  %.sroa.0.0.vec.insert.i = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.ah = add nsw i64 %i.ab, 1
  %i.ai = mul i64 %i.aa, %i.ah
  %i.aj = getelementptr [4 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !68
  %.sroa.0.4.vec.insert.i = insertelement <4 x float> %.sroa.0.0.vec.insert.i, float %i.ak, i64 1
  %i.al = add nsw i64 %i.ab, 2
  %i.am = mul i64 %i.aa, %i.al
  %i.an = getelementptr [4 x i8], ptr %i.ad, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !68
  %.sroa.0.8.vec.insert.i = insertelement <4 x float> %.sroa.0.4.vec.insert.i, float %i.ao, i64 2
  %i.ap = add nsw i64 %i.ab, 3
  %i.aq = mul i64 %i.aa, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.ad, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !68
  %.sroa.0.12.vec.insert.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i, float %i.as, i64 3
  %i.at = fmul <4 x float> %i.o, %.sroa.0.12.vec.insert.i
  %i.au = fadd <4 x float> %i.t, %i.at            ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !537, !nonnull !242, !align !344 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !245 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.au, i64 0
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr [24 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %sext8.i = shl nsw i64 %i.ab, 32                ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !72
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, %i.c
  %i.bg = add nsw i64 %i.bf, %i.ab
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !539
  %i.bi = getelementptr i8, ptr %i.ba, i64 -16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !540
  %i.bk = mul i64 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bk
  store float %.sroa.0.0.vec.extract.i, ptr %i.bl, align 4, !tbaa !68
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.au, i64 1
  %i.bm = load i64, ptr %i.ay, align 8
  %i.bn = getelementptr [24 x i8], ptr %i.ax, i64 %i.bm ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %sext8.1.i = add i64 %sext8.i, 4294967296
  %i.bp = ashr exact i64 %sext8.1.i, 32
  %i.bq = getelementptr i8, ptr %i.bn, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, %i.c
  %i.bu = add nsw i64 %i.bt, %i.bp
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !539
  %i.bw = getelementptr i8, ptr %i.bn, i64 -16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !540
  %i.by = mul i64 %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.by
  store float %.sroa.0.4.vec.extract.i, ptr %i.bz, align 4, !tbaa !68
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.au, i64 2
  %i.ca = load i64, ptr %i.ay, align 8
  %i.cb = getelementptr [24 x i8], ptr %i.ax, i64 %i.ca ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %sext8.2.i = add i64 %sext8.i, 8589934592
  %i.cd = ashr exact i64 %sext8.2.i, 32
  %i.ce = getelementptr i8, ptr %i.cb, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !72
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cg, %i.c
  %i.ci = add nsw i64 %i.ch, %i.cd
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !539
  %i.ck = getelementptr i8, ptr %i.cb, i64 -16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !540
  %i.cm = mul i64 %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cm
  store float %.sroa.0.8.vec.extract.i, ptr %i.cn, align 4, !tbaa !68
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.au, i64 3
  %i.co = load i64, ptr %i.ay, align 8
  %i.cp = getelementptr [24 x i8], ptr %i.ax, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %sext8.3.i = add i64 %sext8.i, 12884901888
  %i.cr = ashr exact i64 %sext8.3.i, 32
  %i.cs = getelementptr i8, ptr %i.cp, i64 -8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !72
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.c
  %i.cw = add nsw i64 %i.cv, %i.cr
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !539
  %i.cy = getelementptr i8, ptr %i.cp, i64 -16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !540
  %i.da = mul i64 %i.cw, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.da
  store float %.sroa.0.12.vec.extract.i, ptr %i.db, align 4, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !541, !nonnull !242, !align !378
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !268
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d
end_hunk_5
begin_hunk_6_@_ZNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEED2B8ne180100Ev:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !506  ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !505  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #53
  %.not.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1899 ; 2 uses
  %.pre1.i = load ptr, ptr %.pre.i, align 8, !tbaa !506
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.c
  %i.i = phi ptr [ %.pre1.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.d, %bb.c ]
  store ptr %i.e, ptr %i.f, align 8, !tbaa !505
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.o) #59
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i, %bb.b, %bb.a
  ret void
}

declare void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef byval(%class.anon.392) align 8 %5, i32 noundef %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #56 ; 16 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 7 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !1909
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.72 ; 5 uses

.body.from.72:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1912
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1912
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1912
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1912
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1913
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1914
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.b unwind label %bb.d, !noalias !1914

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1914
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !271, !noalias !1914
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1914
  store ptr null, ptr %7, align 8, !tbaa !271, !noalias !1914
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1914 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1914
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1914
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1914 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1914
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53, !noalias !1914
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53, !noalias !1914
  invoke void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr nonnull %.reload.addr, i32 noundef %6)
          to label %bb.f unwind label %.from.62

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !179
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.az) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %index.addr79, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr76, ptr nonnull %i.a) #53
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.62:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.60, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.60

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable

.from.60:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.60, %.from.62
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.60 ], [ %i.bb, %.from.62 ]
  %.012 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.012) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !179
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !180 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !181 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !184 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !125
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cl) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #53
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #53
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #60
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task.70", align 8      ; 11 uses
  %10 = alloca %class.anon.394, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #56 ; 24 uses
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr179, align 8, !tbaa !73
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.171 ; 5 uses

.body.from.171:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1928
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1928
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1928
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1928
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1929
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1930
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.b unwind label %bb.d, !noalias !1930

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1930
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !271, !noalias !1930
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1930
  store ptr null, ptr %7, align 8, !tbaa !271, !noalias !1930
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1930 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1930
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1930
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1930 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1930
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53, !noalias !1930
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53, !noalias !1930
  %i.s = sub i32 %3, %2                           ; 4 uses
  %i.t = add i64 %4, 65535
  %i.u = lshr i64 %i.t, 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load atomic i64, ptr %i.v seq_cst, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = call noundef i32 @_ZNSt3__16thread20hardware_concurrencyEv() #53
  %i.z = trunc i64 %i.u to i32
  %i.aa = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.x)
  %i.ab = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.aa)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.ab) ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_ZNSt3__115recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.preheader unwind label %.from.153

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.preheader: ; preds = %bb.e
  %i.ad = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.ad, label %.from..lr.ph, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge

.from..lr.ph:                                     ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ak = sdiv i32 %i.s, %.sroa.speculated.i      ; 2 uses
  %.not190 = icmp eq i32 %i.ak, 0
  br i1 %.not190, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %.lr.ph, !prof !486

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge: ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.preheader
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #53
  invoke void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178)
          to label %bb.l unwind label %.from.150

.from.153:                                        ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.f:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit
  %i.am = mul nsw i32 %i.bi, %i.s
  %i.an = sdiv i32 %i.am, %.sroa.speculated.i     ; 2 uses
  %i.ao = add nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.s
  %i.aq = sdiv i32 %i.ap, %.sroa.speculated.i     ; 2 uses
  %.not = icmp eq i32 %i.an, %i.aq
  br i1 %.not, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %.lr.ph, !prof !487, !llvm.loop !1923

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.f, %.from..lr.ph
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  store ptr @.str.203, ptr %.reload.addr, align 16, !tbaa !84, !noalias !1931
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 172, ptr %i.as, align 16, !tbaa !84, !noalias !1931
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 94, ptr %i.at, align 16, !tbaa !84, !noalias !1931
end_hunk_6
begin_hunk_7_@_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i:.from.
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #58
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = load i64, ptr %8, align 8
  %i.bg = and i64 %i.bf, -2
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br i1 %.0186, label %.from.137, label %.from.156

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134: ; preds = %.thread184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.from.156

.from.137.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn4284.ph = phi { ptr, i32 } [ %i.av, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.from.137

.from.137:                                        ; preds = %.from.137.sink.split, %.split
  %.pn4284 = phi { ptr, i32 } [ %i.bc, %.split ], [ %.pn4284.ph, %.from.137.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #53
  br label %.from.156

.lr.ph:                                           ; preds = %.from..lr.ph, %bb.f
  %i.bh = phi i32 [ %i.aq, %bb.f ], [ %i.ak, %.from..lr.ph ]
  %i.bi = phi i32 [ %i.ao, %bb.f ], [ 1, %.from..lr.ph ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %bb.f ], [ 0, %.from..lr.ph ]
  %i.bk = add nsw i32 %i.bh, %2
  %i.bl = add nsw i32 %i.bj, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  store i32 %i.bl, ptr %10, align 8, !tbaa !549
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !550
  store ptr %.reload.addr179, ptr %i.af, align 8, !tbaa !73
  invoke void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %6)
          to label %bb.j unwind label %.from.132

bb.j:                                             ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !495 ; 6 uses
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !496
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from., label %bb.k

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bq = load i64, ptr %9, align 8, !tbaa !73
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !73
  %i.br = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !73
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !497
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !497
  store <4 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  br label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit unwind label %.from.129

_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit: ; preds = %bb.k, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from.
  %.0.i = phi ptr [ %i.bu, %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit.from. ], [ %i.bv, %bb.k ]
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !495
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  %exitcond.not = icmp eq i32 %i.bi, %.sroa.speculated.i
  br i1 %exitcond.not, label %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge, label %bb.f, !llvm.loop !1923

.from.132:                                        ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.141

.from.129:                                        ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #53
  br label %.from.141

.from.141:                                        ; preds = %.from.132, %.from.129
  %.pn43 = phi { ptr, i32 } [ %i.bx, %.from.129 ], [ %i.bw, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %.from.156

.from.156:                                        ; preds = %.from.141, %.from.137, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134, %.split
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.from.141 ], [ %.pn4284, %.from.137 ], [ %i.az, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit134 ], [ %i.bc, %.split ]
  call void @_ZNSt3__115recursive_mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #53
  br label %.from.158

bb.l:                                             ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !134
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4
  %i.cc = icmp slt i32 %i.cb, 2
  br i1 %i.cc, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !134
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !172 ; 7 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !179
  %i.ck = and i32 %i.cj, 8
  %.not.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !180 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 2 uses
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
  %i.ct = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.cu = load i8, ptr %i.cp, align 8             ; 2 uses
  %i.cv = trunc i8 %i.cu to i1                    ; 2 uses
  %i.cw = load ptr, ptr %i.cq, align 8
  %i.cx = select i1 %i.cv, ptr %i.cw, ptr %i.cr
  %i.cy = load i64, ptr %i.cs, align 8
  %i.cz = lshr i8 %i.cu, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = select i1 %i.cv, i64 %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr %i.cx, i64 %i.db, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.df) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  %index.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %index.addr182, align 8
  %i.dg = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.dg, label %AfterCoroEnd, label %bb.q

.from.150:                                        ; preds = %_ZNSt3__111scoped_lockIJNS_15recursive_mutexEEEC2ERS1_.exit._crit_edge
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.158

bb.q:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.147, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.r, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.147

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %i.dl = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %i.dn, %bb.s ]
  %i.do = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.do) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.dl, %i.do
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.dp = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dl, %bb.s ] ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !495
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !496
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.du) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskIvE12await_resumeEv.exit
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #60
  unreachable

.from.147:                                        ; preds = %bb.r, %.thread
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %.from.158

.from.158:                                        ; preds = %.from.147, %.from.150, %.from.153, %.from.156
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.al, %.from.153 ], [ %.pn43.pn, %.from.156 ], [ %i.dx, %.from.147 ], [ %i.dh, %.from.150 ]
  call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #53
  %.6 = extractvalue { ptr, i32 } %.pn43.pn.pn.pn, 0
  %i.dy = call ptr @__cxa_begin_catch(ptr %.6) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %.from.158
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.u
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.v:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.v
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !172 ; 7 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !179
  %i.eg = and i32 %i.ef, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.w:                                             ; preds = %.noexc.i.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !180 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !181 ; 2 uses
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
  %i.ep = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !184 ; 2 uses
  %i.eq = load i8, ptr %i.el, align 8             ; 2 uses
  %i.er = trunc i8 %i.eq to i1                    ; 2 uses
  %i.es = load ptr, ptr %i.em, align 8
  %i.et = select i1 %i.er, ptr %i.es, ptr %i.en
  %i.eu = load i64, ptr %i.eo, align 8
  %i.ev = lshr i8 %i.eq, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = select i1 %i.er, i64 %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !125
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr %i.et, i64 %i.ex, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.fb) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.fc = icmp slt i32 %i.eb, 2
  br i1 %i.fc, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i62, %bb.w, %_ZN3tev5Latch9countDownEv.exit.i58
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !73 ; 2 uses
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
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = atomicrmw add ptr %i.fk, i64 -1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !125
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.z, %bb.aa
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend109, %AfterCoroSave
  ret void

.body.from.174:                                   ; preds = %bb.y, %.from.167
  %.pn44 = phi { ptr, i32 } [ %i.fi, %.from.167 ], [ %i.fh, %bb.y ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr181) #53
  br label %.body

.body:                                            ; preds = %.body.from.174, %.body.from.171, %.body.from.
  %.merged47 = phi { ptr, i32 } [ %.pn44, %.body.from.174 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.171 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #53
  resume { ptr, i32 } %.merged47

bb.ab:                                            ; preds = %bb.y
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #60
  unreachable

bb.ac:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #56 ; 16 uses
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.68 ; 5 uses

.body.from.68:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1942
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1942
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1942
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1942
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1943
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53, !noalias !1944
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.b unwind label %bb.d, !noalias !1944

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1944
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !271, !noalias !1944
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1944
  store ptr null, ptr %4, align 8, !tbaa !271, !noalias !1944
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1944 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1944
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1944
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1944 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1944
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #53, !noalias !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53, !noalias !1944
  %.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr73, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %1, i32 noundef %3)
          to label %bb.f unwind label %.from.58

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172 ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !179
  %i.ae = and i32 %i.ad, 8
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181 ; 2 uses
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
  %i.an = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 8             ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr %i.al
  %i.as = load i64, ptr %i.am, align 8
  %i.at = lshr i8 %i.ao, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = select i1 %i.ap, i64 %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr %i.ar, i64 %i.av, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.az) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr75, align 8
  %i.ba = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.ba, label %AfterCoroEnd, label %bb.k

.from.58:                                         ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.56, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.m unwind label %.from.56

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable

.from.56:                                         ; preds = %bb.l, %.thread
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.56, %.from.58
  %.pn = phi { ptr, i32 } [ %i.bh, %.from.56 ], [ %i.bb, %.from.58 ]
  %.08 = extractvalue { ptr, i32 } %.pn, 0
  %i.bi = call ptr @__cxa_begin_catch(ptr %.08) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !179
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !180 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !181 ; 2 uses
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
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !184 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !125
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cl) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i23, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i19
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
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
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend49, %AfterCoroSave
  ret void

.body.from.70:                                    ; preds = %bb.t, %.from.66
  %.pn13 = phi { ptr, i32 } [ %i.cs, %.from.66 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr74) #53
  br label %.body

.body:                                            ; preds = %.body.from.70, %.body.from.68, %.body.from.
  %.merged15 = phi { ptr, i32 } [ %.pn13, %.body.from.70 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.68 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  resume { ptr, i32 } %.merged15

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, ptr %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %6 = alloca %"struct.std::__1::coroutine_handle.2", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::future.72", align 8 ; 4 uses
  %8 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #56 ; 13 uses
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %2, ptr %.reload.addr78, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !73
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.74 ; 5 uses

.body.from.74:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1955
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1955
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1955
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1955
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1956
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53, !noalias !1957
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.b unwind label %bb.d, !noalias !1957

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1957
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %8, align 8, !tbaa !271, !noalias !1957
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1957
  store ptr null, ptr %8, align 8, !tbaa !271, !noalias !1957
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1957 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1957
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1957
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %AfterCoroSave, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1957 ; 0 uses
  br label %AfterCoroSave

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1957
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

AfterCoroSave:                                    ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #53, !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1957
  store ptr %4, ptr %.reload.addr, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %index.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %index.addr82, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %6, align 8
  invoke void @_ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ib(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %5, i1 noundef zeroext false)
          to label %AfterCoroSuspend unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSave
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #60
  unreachable

AfterCoroSuspend:                                 ; preds = %AfterCoroSave
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void

.body:                                            ; preds = %.body.from.74, %.body.from.
  %.merged16 = phi { ptr, i32 } [ %i.c, %.body.from.74 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #53
  resume { ptr, i32 } %.merged16
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #56 ; 15 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.64 ; 5 uses

.body.from.64:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1968
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1968
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1968
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1968
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1969
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53, !noalias !1970
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.b unwind label %bb.d, !noalias !1970

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1970
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %2, align 8, !tbaa !271, !noalias !1970
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1970
  store ptr null, ptr %2, align 8, !tbaa !271, !noalias !1970
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1970 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1970
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1970
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1970 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1970
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #53, !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53, !noalias !1970
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1971, !nonnull !242, !align !344
  %i.u = load i32, ptr %1, align 8, !tbaa !549
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !550
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %.from.54

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp slt i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %AfterCoroSave

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !172 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !179
  %i.aj = and i32 %i.ai, 8
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %.noexc.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !180 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !181 ; 2 uses
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
  %i.as = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.at = load i8, ptr %i.ao, align 8             ; 2 uses
  %i.au = trunc i8 %i.at to i1                    ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = select i1 %i.au, ptr %i.av, ptr %i.aq
  %i.ax = load i64, ptr %i.ar, align 8
  %i.ay = lshr i8 %i.at, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = select i1 %i.au, i64 %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr %i.aw, i64 %i.ba, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.be) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.f
  %index.addr70 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %index.addr70, align 8
  %i.bf = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %i.a) #53
  br i1 %i.bf, label %AfterCoroEnd, label %bb.k

.from.54:                                         ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.k:                                             ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.52, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.l, %bb.i, %.noexc.i.i, %bb.g
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.m unwind label %.from.52

bb.m:                                             ; preds = %.thread
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #60
  unreachable

.from.52:                                         ; preds = %bb.l, %.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.o

bb.o:                                             ; preds = %.from.52, %.from.54
  %.pn = phi { ptr, i32 } [ %i.bm, %.from.52 ], [ %i.bg, %.from.54 ]
  %.04 = extractvalue { ptr, i32 } %.pn, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %.04) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i32 -1 acq_rel, align 4 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !172 ; 7 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !179
  %i.bv = and i32 %i.bu, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !180 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !181 ; 2 uses
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
  %i.ce = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !184 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cg = trunc i8 %i.cf to i1                    ; 2 uses
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = select i1 %i.cg, ptr %i.ch, ptr %i.cc
  %i.cj = load i64, ptr %i.cd, align 8
  %i.ck = lshr i8 %i.cf, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cg, i64 %i.cj, i64 %i.cl
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr %i.ci, i64 %i.cm, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !4

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
  call void @__clang_call_terminate(ptr %i.cq) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cr = icmp slt i32 %i.bq, 2
  br i1 %i.cr, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i19, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i15
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !73 ; 2 uses
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
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !125
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend45, %AfterCoroSave
  ret void

.body.from.66:                                    ; preds = %bb.t, %.from.62
  %.pn9 = phi { ptr, i32 } [ %i.cx, %.from.62 ], [ %i.cw, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr69) #53
  br label %.body

.body:                                            ; preds = %.body.from.66, %.body.from.64, %.body.from.
  %.merged11 = phi { ptr, i32 } [ %.pn9, %.body.from.66 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.64 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #53
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii(ptr dead_on_unwind writable sret(%"class.tev::Task.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future.72", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #56 ; 19 uses
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %.reload.addr66 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.reload.addr67 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.62 ; 5 uses

.body.from.62:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #53
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1985
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !125, !noalias !1985
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1985
  store i32 2, ptr %i.g, align 8, !tbaa !130, !noalias !1985
  store ptr %i.f, ptr %i.d, align 8, !tbaa !134, !alias.scope !1986
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !135, !alias.scope !1986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53, !noalias !1987
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.72") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.b unwind label %bb.d, !noalias !1987

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !73, !alias.scope !1987
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !271, !noalias !1987
  store ptr %i.j, ptr %i.i, align 8, !tbaa !271, !alias.scope !1987
  store ptr null, ptr %4, align 8, !tbaa !271, !noalias !1987
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !135, !noalias !1987 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !73, !noalias !1987
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !73, !alias.scope !1987
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1987 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #60, !noalias !1987
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #53, !noalias !1987
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53, !noalias !1987
  %i.s = icmp slt i32 %2, %3
  br i1 %i.s, label %.from..lr.ph, label %._crit_edge

.from..lr.ph:                                     ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit25, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr68)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #60
  unreachable

bb.g:                                             ; preds = %.loopexit25, %.from..lr.ph
  %.027 = phi i32 [ %2, %.from..lr.ph ], [ %i.au, %.loopexit25 ] ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1989, !nonnull !242, !align !344 ; 7 uses
  store i32 %.027, ptr %.reload.addr67, align 8, !tbaa !72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1991, !nonnull !242, !align !378
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !72 ; 4 uses
  store ptr %.reload.addr67, ptr %.reload.addr, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !73
  store <2 x ptr> %i.af, ptr %i.t, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1992, !nonnull !242, !align !378
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !266
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !73
  store <2 x ptr> %i.aj, ptr %i.v, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !73
  store <2 x ptr> %i.al, ptr %i.w, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1993, !nonnull !242, !align !378
  store ptr %i.an, ptr %i.x, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1994, !nonnull !242, !align !344
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !275
  %.not11.i.i = icmp slt i32 %i.ad, 4
  br i1 %.not11.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.from..noexc20
  %.0.lcssa.i.i = phi i32 [ %i.ar, %.preheader.i.i.from..noexc20 ], [ 0, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.0.lcssa.i.i, %i.ad
  br i1 %i.aq, label %.lr.ph14.i.i, label %.loopexit25

.lr.ph.i.i:                                       ; preds = %bb.g, %.noexc20
  %i.ar = phi i32 [ %i.as, %.noexc20 ], [ 4, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ %i.ar, %.noexc20 ], [ 0, %bb.g ]
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.012.i.i)
          to label %.noexc20 unwind label %.from..loopexit.split-lp

.noexc20:                                         ; preds = %.lr.ph.i.i
  %i.as = add nuw nsw i32 %i.ar, 4                ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, %i.ad
  br i1 %.not.i.i, label %.preheader.i.i.from..noexc20, label %.lr.ph.i.i, !llvm.loop !1980

.preheader.i.i.from..noexc20:                     ; preds = %.noexc20
  br label %.preheader.i.i, !llvm.loop !1980

.lr.ph14.i.i:                                     ; preds = %.preheader.i.i, %.noexc21
  %.113.i.i = phi i32 [ %i.at, %.noexc21 ], [ %.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  invoke void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIfEEDai(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr, i32 noundef %.113.i.i)
          to label %.noexc21 unwind label %.from..loopexit

.noexc21:                                         ; preds = %.lr.ph14.i.i
  %i.at = add i32 %.113.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, %i.ad
  br i1 %exitcond.not.i.i, label %.loopexit25, label %.lr.ph14.i.i, !llvm.loop !1981

.loopexit25:                                      ; preds = %.noexc21, %.preheader.i.i
  %i.au = add i32 %.027, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1982

.from..loopexit:                                  ; preds = %.lr.ph14.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.from..loopexit.split-lp:                         ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.from..loopexit.split-lp, %.from..loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.from..loopexit ], [ %lpad.loopexit.split-lp, %.from..loopexit.split-lp ]
  %i.av = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr68)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.60

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge, %bb.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN3tev5Latch9countDownEv.exit.i

bb.j:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !179
  %i.be = and i32 %i.bd, 8
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.k:                                             ; preds = %.noexc.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !180 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bg, %.from..lr.ph.i.i.i.i.i ], [ %i.by, %.noexc2.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.bo = load i8, ptr %i.bj, align 8             ; 2 uses
  %i.bp = trunc i8 %i.bo to i1                    ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = select i1 %i.bp, ptr %i.bq, ptr %i.bl
  %i.bs = load i64, ptr %i.bm, align 8
  %i.bt = lshr i8 %i.bo, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = select i1 %i.bp, i64 %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !125
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr %i.br, i64 %i.bv, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.bi
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

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
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.bz) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ca = icmp slt i32 %i.az, 2
  br i1 %i.ca, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN3tev5Latch9countDownEv.exit.i
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73 ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 3 uses
  store ptr %i.cd, ptr %.reload.addr66, align 8
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr69 = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i8 0, ptr %index.addr69, align 4
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr nonnull %i.cd)
  br label %AfterCoroEnd

bb.m:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.64 unwind label %bb.p

.from.60:                                         ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.64

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = atomicrmw add ptr %i.ci, i64 -1 acq_rel, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !125
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #53, !inline_history !11
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.n, %bb.o
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #53
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body.from.64:                                    ; preds = %bb.m, %.from.60
  %.pn = phi { ptr, i32 } [ %i.cg, %.from.60 ], [ %i.cf, %bb.m ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #53
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr68) #53
  br label %.body

.body:                                            ; preds = %.body.from.64, %.body.from.62, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %.pn, %.body.from.64 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.62 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #53
  resume { ptr, i32 } %.merged18

bb.p:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNSG_4sse2EEEEEDai(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #45 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.nanogui::Array.364", align 16 ; 9 uses
  %3 = alloca %"struct.nanogui::Array.364", align 16 ; 4 uses
  %4 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %5 = alloca %"class.xsimd::batch", align 16     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !552, !nonnull !242, !align !378
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !553, !nonnull !242, !align !344
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = mul i64 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !554, !nonnull !242, !align !344
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !555, !nonnull !242, !align !378
  %i.m = load float, ptr %i.l, align 4, !tbaa !68
  %i.n = insertelement <4 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !556, !nonnull !242, !align !378
  %i.r = load float, ptr %i.q, align 4, !tbaa !68
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !557, !nonnull !242
  %i.w = load i8, ptr %i.v, align 1, !tbaa !272, !range !241, !noundef !242
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !558, !nonnull !242, !align !344
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !159 ; 5 uses
  %i.ab = sext i32 %1 to i64                      ; 6 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.0.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 4 uses
  %i.ae = mul i64 %i.aa, %i.ab
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !84
  %i.ah = add nsw i64 %i.ab, 1
  %i.ai = mul i64 %i.aa, %i.ah
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !84
  %i.al = add nsw i64 %i.ab, 2
  %i.am = mul i64 %i.aa, %i.al
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !84
  %i.ap = add nsw i64 %i.ab, 3
  %i.aq = mul i64 %i.aa, %i.ap
  %i.ar = getelementptr i8, ptr %i.ad, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !84
  %i.at = insertelement <4 x i8> poison, i8 %i.ag, i64 0
  %i.au = insertelement <4 x i8> %i.at, i8 %i.ak, i64 1
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ao, i64 2
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 3
  %i.ax = uitofp <4 x i8> %i.aw to <4 x float>
  %i.ay = fmul <4 x float> %i.o, %i.ax
  %i.az = fadd <4 x float> %i.t, %i.ay            ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !559, !nonnull !242, !align !344 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !245 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.az, i64 0
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr [24 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %sext8.i = shl nsw i64 %i.ab, 32                ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !72
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.c
  %i.bl = add nsw i64 %i.bk, %i.ab
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !539
  %i.bn = getelementptr i8, ptr %i.bf, i64 -16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !540
  %i.bp = mul i64 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  store float %.sroa.0.0.vec.extract.i, ptr %i.bq, align 4, !tbaa !68
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %i.az, i64 1
  %i.br = load i64, ptr %i.bd, align 8
  %i.bs = getelementptr [24 x i8], ptr %i.bc, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %sext8.1.i = add i64 %sext8.i, 4294967296
  %i.bu = ashr exact i64 %sext8.1.i, 32
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !72
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, %i.c
  %i.bz = add nsw i64 %i.by, %i.bu
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !539
  %i.cb = getelementptr i8, ptr %i.bs, i64 -16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !540
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cd
  store float %.sroa.0.4.vec.extract.i, ptr %i.ce, align 4, !tbaa !68
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.az, i64 2
  %i.cf = load i64, ptr %i.bd, align 8
  %i.cg = getelementptr [24 x i8], ptr %i.bc, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %sext8.2.i = add i64 %sext8.i, 8589934592
  %i.ci = ashr exact i64 %sext8.2.i, 32
  %i.cj = getelementptr i8, ptr %i.cg, i64 -8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !72
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.c
  %i.cn = add nsw i64 %i.cm, %i.ci
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !539
  %i.cp = getelementptr i8, ptr %i.cg, i64 -16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !540
  %i.cr = mul i64 %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cr
  store float %.sroa.0.8.vec.extract.i, ptr %i.cs, align 4, !tbaa !68
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.az, i64 3
  %i.ct = load i64, ptr %i.bd, align 8
  %i.cu = getelementptr [24 x i8], ptr %i.bc, i64 %i.ct ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %sext8.3.i = add i64 %sext8.i, 12884901888
  %i.cw = ashr exact i64 %sext8.3.i, 32
  %i.cx = getelementptr i8, ptr %i.cu, i64 -8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !72
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.cz, %i.c
  %i.db = add nsw i64 %i.da, %i.cw
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !539
  %i.dd = getelementptr i8, ptr %i.cu, i64 -16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !540
  %i.df = mul i64 %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.df
  store float %.sroa.0.12.vec.extract.i, ptr %i.dg, align 4, !tbaa !68
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !560, !nonnull !242, !align !378
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268
  switch i32 %i.dj, label %bb.d [
    i32 0, label %.thread
end_hunk_7
begin_hunk_8_@_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_:bb.a

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #58
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #53
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !252
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !252
  store ptr %i.l, ptr %i.i, align 8, !tbaa !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !258
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !258
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #53
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #53
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #50

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #51

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #9 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !179
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !181  ; 2 uses
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
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ah) #60
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !500
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #53
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !500 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !8

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !500 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !250
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
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #53 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #53
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #53
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !500 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !500
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #53
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
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !505
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #53
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #58
          to label %bb.m unwind label %.loopexit52.from.115

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit52.from.115:                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr140) #53
  br label %.loopexit52

bb.n:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.ay, 8
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 40) #53 ; 3 uses
  %i.be = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 2 uses
  %i.bf = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !505
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  invoke void @_ZN3tev17CompoundExceptionC2ENSt3__14spanIKSt13exception_ptrLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr %i.be, i64 %i.bj)
          to label %bb.p unwind label %.loopexit52.from.113

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN3tev17CompoundExceptionE, ptr nonnull @_ZN3tev17CompoundExceptionD2Ev) #58
          to label %bb.ad unwind label %.loopexit52.from.111

.loopexit52.from.113:                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__cxa_free_exception(ptr nonnull %i.bd) #53
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
  tail call void @__clang_call_terminate(ptr %i.bp) #60
  unreachable

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %bb.q
  %i.bq = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.br = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !505 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.br, %bb.s ]
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #53
  %.not.i.i.i.i24 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !506
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.s, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.bt = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  store ptr %i.bq, ptr %.phi.trans.insert, align 8, !tbaa !505
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !507
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.by) #59
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

.loopexit52:                                      ; preds = %bb.g, %.loopexit52.from.111, %.loopexit52.from.113, %.loopexit52.from.115, %.loopexit52.from.110
  %.213 = phi ptr [ %i.bb, %.loopexit52.from.115 ], [ %i.bn, %.loopexit52.from.111 ], [ %i.bl, %.loopexit52.from.113 ], [ %.011, %.loopexit52.from.110 ], [ %i.an, %bb.g ]
  tail call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr138) #53
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.213) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit52
  invoke void @__cxa_end_catch()
          to label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit unwind label %.from.124

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !134
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_ZN3tev5Latch9countDownEv.exit.i25

bb.u:                                             ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i29 unwind label %.from..loopexit.split-lp.i.i26

.noexc.i.i29:                                     ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !172 ; 7 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !179
  %i.ci = and i32 %i.ch, 8
  %.not.i.i.i.i30 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i30, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.v:                                             ; preds = %.noexc.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !180 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !181 ; 2 uses
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
  %i.cr = load ptr, ptr %.sroa.09.013.i.i.i.i.i33, align 8, !tbaa !184 ; 2 uses
  %i.cs = load i8, ptr %i.cn, align 8             ; 2 uses
  %i.ct = trunc i8 %i.cs to i1                    ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = select i1 %i.ct, ptr %i.cu, ptr %i.cp
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = lshr i8 %i.cs, 1
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = select i1 %i.ct, i64 %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !125
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr %i.cv, i64 %i.cz, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i36 unwind label %.from..loopexit.i.i34, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.dd) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i25:               ; preds = %.noexc2.i.i36, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit
  %i.de = icmp slt i32 %i.cd, 2
  br i1 %i.de, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i25, %bb.v, %.noexc.i.i29
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !134
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !73 ; 2 uses
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
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !135 ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !125
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.aa, %bb.z, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #53
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
  tail call void @__clang_call_terminate(ptr %i.du) #60
  unreachable

bb.ad:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.destroy(ptr noundef nonnull align 8 dereferenceable(104) %0) #13 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !2002

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr138, align 8, !tbaa !506 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #53
  %.not.i.i.i.i24 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i24, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr138, align 8, !tbaa !506
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !505
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !507
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #59
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135  ; 5 uses
  %.not.i.i39 = icmp eq ptr %i.l, null
  br i1 %.not.i.i39, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #53
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume(ptr nofree nonnull readnone align 8 captures(none) %0) #52 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy(ptr noundef nonnull align 8 dereferenceable(136) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.b, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #53
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
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
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume(ptr noundef nonnull align 8 dereferenceable(96) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !563

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
          to label %bb.a unwind label %.from.64

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave49

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread35.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !179
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !180  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !125
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ai) #60
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #53
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !8

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #60
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.72

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i20

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i24 unwind label %.from..loopexit.split-lp.i.i21

.noexc.i.i24:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !172 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !179
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !180 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !181 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !184 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i31 unwind label %.from..loopexit.i.i29, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.bv) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !73 ; 2 uses
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #53
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
  tail call void @__clang_call_terminate(ptr %i.cm) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !564

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
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
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume(ptr noundef nonnull align 16 dereferenceable(144) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !250 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !496
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #53
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !172  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !179
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !181 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !184 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.au) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !73 ; 2 uses
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
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #53
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
  tail call void @__clang_call_terminate(ptr %i.bl) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy(ptr noundef nonnull align 16 dereferenceable(144) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !565

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !495
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !496
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume(ptr noundef nonnull align 8 dereferenceable(160) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 152
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #53
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.resume(ptr noundef nonnull align 16 dereferenceable(288) %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr131, align 16, !tbaa !250 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr131, align 16, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  %.5 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.5) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i41, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i47

.from..noexc2.i.i47:                              ; preds = %.noexc2.i.i47, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i43 ], [ %i.aj, %.noexc2.i.i47 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !4

.noexc2.i.i47:                                    ; preds = %.from..noexc2.i.i47
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i48, label %_ZN3tev5Latch9countDownEv.exit.i36, label %.from..noexc2.i.i47

.from..loopexit.i.i45:                            ; preds = %.from..noexc2.i.i47
  %lpad.loopexit.i.i46 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i37:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i38 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i37, %.from..loopexit.i.i45
  %lpad.phi.i.i39 = phi { ptr, i32 } [ %lpad.loopexit.i.i46, %.from..loopexit.i.i45 ], [ %lpad.loopexit.split-lp.i.i38, %.from..loopexit.split-lp.i.i37 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i39, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %bb.h, %.noexc.i.i40
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr137, align 8
  %.not.i49 = icmp eq i64 %i.an, 0
  br i1 %.not.i49, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr144 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %index.addr144, align 4
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.from.120:                                        ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !247 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 5
  br i1 %i.bc, label %bb.n, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.bd = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.be = mul i64 %i.bb, 24
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.be) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #53
  ret void

bb.o:                                             ; preds = %bb.k, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.ar, %.from.120 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %index.addr1, align 4
  resume { ptr, i32 } %.pn26

bb.p:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.destroy(ptr noundef nonnull align 16 dereferenceable(288) %0) #13 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 276
  %index = load i8, ptr %index.addr, align 4
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !566

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 16, !tbaa !247 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.l = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.m = mul i64 %i.j, 24
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.m) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #53
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.resume(ptr nofree nonnull readnone align 8 captures(none) %0) #52 align 2 personality ptr @__gxx_personality_v0 {
unreachable:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iENKUliiE_clEii.destroy(ptr noundef nonnull align 8 dereferenceable(136) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.b, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr68) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #53
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr69)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %.04 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.04) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr69)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.62

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i15

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i19 unwind label %.from..loopexit.split-lp.i.i16

.noexc.i.i19:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i19
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i23, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i26 unwind label %.from..loopexit.i.i24, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i15:               ; preds = %.noexc2.i.i26, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i15, %bb.h, %.noexc.i.i19
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
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
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr69) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.resume(ptr noundef nonnull align 8 dereferenceable(96) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend51, !prof !563

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr78)
          to label %bb.a unwind label %.from.64

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %AfterCoroSave49

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread35.sink.split

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172  ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !179
  %i.n = and i32 %i.m, 8
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread35.sink.split

bb.d:                                             ; preds = %.noexc.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !180  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 2 uses
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
  %i.w = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.x = load i8, ptr %i.s, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = select i1 %i.y, ptr %i.z, ptr %i.u
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = lshr i8 %i.x, 1
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = select i1 %i.y, i64 %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !125
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr %i.aa, i64 %i.ae, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ai) #60
  unreachable

AfterCoroSave49:                                  ; preds = %bb.a
  store i8 1, ptr %index.addr, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr, ptr nonnull %0) #53
  br i1 %i.aj, label %CoroEnd, label %AfterCoroSuspend51

.from.64:                                         ; preds = %AfterCoroSuspend
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread35, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend51
  %i.al = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %.pr)
          to label %.thread35.sink.split unwind label %.from.62, !inline_history !8

.thread35.sink.split:                             ; preds = %.noexc2.i.i, %bb.f, %bb.d, %.noexc.i.i, %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread35

.thread35:                                        ; preds = %.thread35.sink.split, %AfterCoroSuspend51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.g unwind label %.from.62

bb.g:                                             ; preds = %.thread35
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr81)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #60
  unreachable

.from.62:                                         ; preds = %bb.f, %.thread35
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %bb.i

bb.i:                                             ; preds = %.from.62, %.from.64
  %.pn = phi { ptr, i32 } [ %i.aq, %.from.62 ], [ %i.ak, %.from.64 ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %.09) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr81)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.72

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN3tev5Latch9countDownEv.exit.i20

bb.k:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i24 unwind label %.from..loopexit.split-lp.i.i21

.noexc.i.i24:                                     ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !172 ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !179
  %i.ba = and i32 %i.az, 8
  %.not.i.i.i.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.l:                                             ; preds = %.noexc.i.i24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !180 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !181 ; 2 uses
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
  %i.bj = load ptr, ptr %.sroa.09.013.i.i.i.i.i28, align 8, !tbaa !184 ; 2 uses
  %i.bk = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bl = trunc i8 %i.bk to i1                    ; 2 uses
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = select i1 %i.bl, ptr %i.bm, ptr %i.bh
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = lshr i8 %i.bk, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = select i1 %i.bl, i64 %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr %i.bn, i64 %i.br, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i31 unwind label %.from..loopexit.i.i29, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.bv) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i20:               ; preds = %.noexc2.i.i31, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bw = icmp slt i32 %i.av, 2
  br i1 %i.bw, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i20, %bb.l, %.noexc.i.i24
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !73 ; 2 uses
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = atomicrmw add ptr %i.cf, i64 -1 acq_rel, align 8
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.q, %bb.p, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #53
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
  tail call void @__clang_call_terminate(ptr %i.cm) #60
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_iENKUlSM_PS0_iE_clESM_SR_i.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #18 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !564

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr81) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.resume(ptr noundef nonnull align 8 dereferenceable(80) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  %.08 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.08) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr74)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.66

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i19

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i23 unwind label %.from..loopexit.split-lp.i.i20

.noexc.i.i23:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i24 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i24, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i27, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i30 unwind label %.from..loopexit.i.i28, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i19:               ; preds = %.noexc2.i.i30, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i19, %bb.h, %.noexc.i.i23
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
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
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS0_11parallelForITkNSt3__18integralEiTkNS3_9invocableIT_S5_EEZNS0_11parallelForITkNS3_8integralEiTkNS4_IS5_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS3_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESC_S5_S5_mT0_iEUliiE_EESC_S5_S5_mSK_iEUlvE_EENS3_13invoke_resultIS5_JEE4typeEOS5_i.destroy(ptr noundef nonnull align 8 dereferenceable(80) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr74) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.resume(ptr noundef nonnull align 16 dereferenceable(144) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr177, align 16, !tbaa !250 ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr177, align 16, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.e

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  %i.d = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.c, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.d, ptr %i.e, align 16, !tbaa !495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !496
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  tail call void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr178) #53
  %.6 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.6) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr181)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.167

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i58

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i62 unwind label %.from..loopexit.split-lp.i.i59

.noexc.i.i62:                                     ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !172  ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !179
  %i.z = and i32 %i.y, 8
  %.not.i.i.i.i63 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i63, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !181 ; 2 uses
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
  %i.ai = load ptr, ptr %.sroa.09.013.i.i.i.i.i66, align 8, !tbaa !184 ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8             ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8
  %i.am = select i1 %i.ak, ptr %i.al, ptr %i.ag
  %i.an = load i64, ptr %i.ah, align 8
  %i.ao = lshr i8 %i.aj, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.ak, i64 %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !125
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr %i.am, i64 %i.aq, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i69 unwind label %.from..loopexit.i.i67, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.au) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i58:               ; preds = %.noexc2.i.i69, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.av = icmp slt i32 %i.u, 2
  br i1 %i.av, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i58, %bb.h, %.noexc.i.i62
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !73 ; 2 uses
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
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #53
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
  tail call void @__clang_call_terminate(ptr %i.bl) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_i.destroy(ptr noundef nonnull align 16 dereferenceable(144) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, !prof !565

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr177) #53
  %i.a = load ptr, ptr %.reload.addr178, align 8, !tbaa !498 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !495 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #53
  %.not.i.i.i.i57 = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i.i57, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %.reload.addr178, align 8, !tbaa !498
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.e = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 16, !tbaa !495
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !496
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #59
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !135 ; 5 uses
  %.not.i.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i.i72, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.c, %bb.b, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr181) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.resume(ptr noundef nonnull align 8 dereferenceable(160) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr76, align 8, !tbaa !250 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr76, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr78)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  %.012 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.012) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr78)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
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
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !4

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
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr76, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 152
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
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #53
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_i.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !562

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr76) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.resume(ptr noundef nonnull align 16 dereferenceable(288) %0) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.reload.addr137 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pr = load ptr, ptr %.reload.addr131, align 16, !tbaa !250 ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.e, !inline_history !8

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr131, align 16, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr142)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #60
  unreachable

bb.e:                                             ; preds = %.thread, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  %.5 = extractvalue { ptr, i32 } %i.f, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.5) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr142)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.120

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.f, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i36

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i40 unwind label %.from..loopexit.split-lp.i.i37

.noexc.i.i40:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !179
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i41 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i41, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i40
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
  %.not12.i.i.i.i.i42 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i42, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i43

.from..lr.ph.i.i.i.i.i43:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i47

.from..noexc2.i.i47:                              ; preds = %.noexc2.i.i47, %.from..lr.ph.i.i.i.i.i43
  %.sroa.09.013.i.i.i.i.i44 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i43 ], [ %i.aj, %.noexc2.i.i47 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i44, align 8, !tbaa !184 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i47 unwind label %.from..loopexit.i.i45, !inline_history !4

.noexc2.i.i47:                                    ; preds = %.from..noexc2.i.i47
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i48, label %_ZN3tev5Latch9countDownEv.exit.i36, label %.from..noexc2.i.i47

.from..loopexit.i.i45:                            ; preds = %.from..noexc2.i.i47
  %lpad.loopexit.i.i46 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i37:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i38 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i37, %.from..loopexit.i.i45
  %lpad.phi.i.i39 = phi { ptr, i32 } [ %lpad.loopexit.i.i46, %.from..loopexit.i.i45 ], [ %lpad.loopexit.split-lp.i.i38, %.from..loopexit.split-lp.i.i37 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i39, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i36:               ; preds = %.noexc2.i.i47, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %bb.h, %.noexc.i.i40
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr137, align 8
  %.not.i49 = icmp eq i64 %i.an, 0
  br i1 %.not.i49, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr144 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %index.addr144, align 4
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

.from.120:                                        ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i36, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !247 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 5
  br i1 %i.bc, label %bb.n, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.n:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.bd = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.be = mul i64 %i.bb, 24
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.be) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #53
  ret void

bb.o:                                             ; preds = %bb.k, %.from.120
  %.pn26 = phi { ptr, i32 } [ %i.ar, %.from.120 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 1, ptr %index.addr1, align 4
  resume { ptr, i32 } %.pn26

bb.p:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #60
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.destroy(ptr noundef nonnull align 16 dereferenceable(288) %0) #13 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 276
  %index = load i8, ptr %index.addr, align 4
  %1 = icmp eq i8 %index, 0
  br i1 %1, label %_ZN3tev4TaskIvE12await_resumeEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, !prof !566

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr131) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 16, !tbaa !247 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 5
  br i1 %i.k, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.l = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.m = mul i64 %i.j, 24
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.m) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(1632) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %.reload.addr679 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %.reload.addr683 = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %.reload.addr684 = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 5 uses
  %.reload.addr685 = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 5 uses
  %.reload.addr687 = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %.reload.addr688 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 15 uses
  %.reload.addr692 = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 5 uses
  %.reload.addr694 = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %.reload.addr695 = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %.reload.addr696 = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %.reload.addr697 = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %.reload.addr698 = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %.reload.addr700 = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %.reload.addr701 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 6 uses
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend414
    i8 2, label %AfterCoroSuspend418
  ], !prof !2014

bb.a:                                             ; preds = %bb.bd, %bb.be
  %indvars.iv.reload655 = phi i64 [ %indvars.iv.reload, %bb.bd ], [ %indvars.iv.reload655.pre, %bb.be ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload655, 1 ; 4 uses
  %i.a = load i32, ptr %.reload.addr698, align 8, !tbaa !72 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i64 %indvars.iv.next, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge, !llvm.loop !2003

bb.b:                                             ; preds = %bb.a
  store i64 %indvars.iv.next, ptr %indvars.iv.reload.addr, align 8
  %i.d = load ptr, ptr %.reload.addr692, align 16, !tbaa !153 ; 2 uses
  store ptr %i.d, ptr %.reload.addr657, align 16
  %i.e = getelementptr inbounds nuw [280 x i8], ptr %i.d, i64 %indvars.iv.next ; 6 uses
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.sroa.2.0..sroa_idx.i17.i606 = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %.sroa.2.0..sroa_idx.i16.i605 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %.reload.addr695, align 16, !tbaa !84, !noalias !2015
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  store i64 0, ptr %i.lb, align 16, !noalias !2016
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 16, !tbaa !156, !noalias !2016
  store ptr %i.k, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016
  store i64 500, ptr %i.m, align 8, !tbaa !158, !noalias !2016
  store ptr @.str.7, ptr %.reload.addr687, align 16, !tbaa !71, !noalias !2016
  store i64 9, ptr %.sroa.2.0..sroa_idx.i16.i605, align 8, !tbaa !159, !noalias !2016
  store i32 0, ptr %i.j, align 16, !tbaa !162, !noalias !2016
  store ptr %.reload.addr679, ptr %i.i, align 8, !tbaa !164, !noalias !2016
  store i64 1, ptr %i.h, align 16, !tbaa !166, !noalias !2016
  store ptr %.reload.addr695, ptr %.sroa.2.0..sroa_idx.i17.i606, align 8, !tbaa !84, !noalias !2016
  store ptr null, ptr %i.g, align 16, !tbaa !73, !noalias !2016
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.7, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr687)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  %i.o = load i64, ptr %i.lb, align 16, !tbaa !167, !noalias !2018 ; 8 uses
  %i.p = icmp ult i64 %i.o, -9
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2018
  %i.r = icmp ult i64 %i.o, 23
  br i1 %i.r, label %bb.e, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.d
  %i.s = or i64 %i.o, 7                           ; 2 uses
  %i.t = icmp eq i64 %i.s, 23
  %i.u = add nuw i64 %i.s, 1
  %i.v = select i1 %i.t, i64 25, i64 %i.u         ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #57
          to label %.from..noexc.i unwind label %bb.g, !noalias !2016 ; 2 uses

.from..noexc.i:                                   ; preds = %.thread.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !84, !alias.scope !2018
  %i.z = or i64 %i.v, 1
  store i64 %i.z, ptr %1, align 8, !alias.scope !2018
  store i64 %i.o, ptr %i.x, align 8, !tbaa !84, !alias.scope !2018
  br label %.from.481

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i64 %i.o to i8
  %i.ab = shl nuw nsw i8 %i.aa, 1
  store i8 %i.ab, ptr %1, align 8, !alias.scope !2018
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.from.483, label %.from.481

.from.481:                                        ; preds = %bb.e, %.from..noexc.i
  %.017.i.i.i.i = phi ptr [ %i.w, %.from..noexc.i ], [ %i.ac, %bb.e ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.q, i64 %i.o, i1 false)
  br label %.from.483

.from.483:                                        ; preds = %bb.e, %.from.481
  %.018.i.i.i.i = phi ptr [ %.017.i.i.i.i, %.from.481 ], [ %i.ac, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.o
  store i8 0, ptr %i.ad, align 1, !tbaa !84
  %i.ae = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i102, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.from.483
  tail call void @free(ptr noundef %i.ae) #53, !noalias !2016
  br label %bb.i

bb.g:                                             ; preds = %.thread.i.i.i.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ag, %i.k
  br i1 %.not.i.i7.i, label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.ag) #53, !noalias !2016
  br label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.i:                                             ; preds = %bb.f, %.from.483
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !84
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = and i64 %i.am, -2
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #59
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %bb.b
  %.reload.addr630 = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %.reload631 = load i32, ptr %.reload.addr630, align 4, !tbaa !170
  %.reload.addr613 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %.reload614 = load i32, ptr %.reload.addr613, align 8, !tbaa !170
  %.reload.addr609 = getelementptr inbounds nuw i8, ptr %0, i64 1604
  %.reload610 = load i32, ptr %.reload.addr609, align 4, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.ap = icmp eq i32 %.reload631, 4
  %.not604 = icmp eq i32 %.reload614, 0
  %i.aq = select i1 %.not604, i32 6, i32 7
  %i.ar = load i32, ptr %.reload.addr700, align 16, !tbaa !72
  %i.as = sext i32 %i.ar to i64
  %.sroa.013.0.copyload = load i64, ptr %.reload.addr697, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.au = load i8, ptr %i.at, align 8             ; 2 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 257
  %i.az = select i1 %i.av, ptr %i.ax, ptr %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i8 %i.au, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.av, i64 %i.bb, i64 %i.bd
  store ptr %i.az, ptr %.reload.addr694, align 8
  store i64 %i.be, ptr %i.ao, align 16
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.61") align 8 %.reload.addr679, i64 noundef %i.as, i1 noundef zeroext %i.ap, i64 %.sroa.013.0.copyload, i32 noundef 7, i32 noundef %i.aq, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %.reload.addr694, i32 noundef %.reload610)
          to label %bb.l unwind label %.from.504

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load atomic i32, ptr %i.bh acquire, align 4
  %i.bj = icmp slt i32 %i.bi, 2
  br i1 %i.bj, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw add ptr %i.bl, i32 -1 acq_rel, align 4
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !172 ; 7 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !179
  %i.br = and i32 %i.bq, 8
  %.not.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !180 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.bt, %.from..lr.ph.i.i.i.i.i ], [ %i.cl, %.noexc2.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.cb = load i8, ptr %i.bw, align 8             ; 2 uses
  %i.cc = trunc i8 %i.cb to i1                    ; 2 uses
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = select i1 %i.cc, ptr %i.cd, ptr %i.by
  %i.cf = load i64, ptr %i.bz, align 8
  %i.cg = lshr i8 %i.cb, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = select i1 %i.cc, i64 %i.cf, i64 %i.ch
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !125
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr %i.ce, i64 %i.ci, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.bv
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
  %i.cm = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  store i8 0, ptr %index.addr, align 16
  %i.cn = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, ptr nonnull %0) #53
  br i1 %i.cn, label %CoroEnd, label %AfterCoroSuspend

.from.504:                                        ; preds = %bb.k
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

AfterCoroSuspend:                                 ; preds = %resume.entry, %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr679, align 8, !tbaa !186, !noalias !2019 ; 3 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %.thread, label %bb.q

bb.q:                                             ; preds = %AfterCoroSuspend
  %i.cp = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body110.from.501, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.q, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr679, align 8, !tbaa !186
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 16, !tbaa !189, !noalias !2020 ; 7 uses
  store ptr null, ptr %i.cr, align 16, !tbaa !189, !noalias !2020
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.14") align 8 %.reload.addr688, ptr noundef nonnull align 8 dereferenceable(144) %i.cs)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = atomicrmw add ptr %i.ct, i64 -1 acq_rel, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !125
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #53, !inline_history !6
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.t:                                             ; preds = %.thread
  %i.cz = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.db = atomicrmw add ptr %i.da, i64 -1 acq_rel, align 8
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.body110.from.498, label %.from..body110

.body110.from.498:                                ; preds = %bb.t
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !125
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #53, !inline_history !6
  br label %.from..body110

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.s, %bb.r
  %.reload.addr667 = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 6 uses
  %.reload668 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170 ; 3 uses
  %indvars.iv.reload.addr640 = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 6 uses
  %indvars.iv.reload641 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170 ; 3 uses
  %i.dg = getelementptr inbounds nuw [280 x i8], ptr %.reload668, i64 %indvars.iv.reload641 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !194 ; 5 uses
  %.not.i.i196 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i196, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !195 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.dh, %i.dj
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i197

.lr.ph.i.i.i.i.i197:                              ; preds = %bb.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.dk, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !198 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i197
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = atomicrmw add ptr %i.dn, i64 -1 acq_rel, align 8
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.w, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !125
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #53, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #53
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i.i197
  %i.dt = load i8, ptr %i.dk, align 8
  %i.du = trunc i8 %i.dt to i1
  br i1 %i.du, label %bb.x, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.x:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !84
  %i.dx = load i64, ptr %i.dk, align 8
  %i.dy = and i64 %i.dx, -2
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dy) #59
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.x, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i198 = icmp eq ptr %i.dh, %i.dk
  br i1 %.not.i.i.i.i.i198, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i197

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload672 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170 ; 2 uses
  %indvars.iv.reload645 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170 ; 2 uses
  %i.dz = getelementptr inbounds nuw [280 x i8], ptr %.reload672, i64 %indvars.iv.reload645
  %.pre.i.i = load ptr, ptr %i.dz, align 8, !tbaa !194
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.u, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %indvars.iv.reload647 = phi i64 [ %indvars.iv.reload645, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %indvars.iv.reload641, %bb.u ]
  %.reload674 = phi ptr [ %.reload672, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %.reload668, %bb.u ]
  %i.ea = phi ptr [ %.pre.i.i, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.dh, %bb.u ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [280 x i8], ptr %.reload674, i64 %indvars.iv.reload647 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !195
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !199
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.eg) #59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  %.reload676.pre = load ptr, ptr %.reload.addr667, align 16, !tbaa !170
  %indvars.iv.reload649.pre = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %indvars.iv.reload649 = phi i64 [ %indvars.iv.reload649.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ], [ %indvars.iv.reload641, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ]
  %.reload676 = phi ptr [ %.reload676.pre, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i ], [ %.reload668, %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit ]
  %.reload.addr624 = getelementptr inbounds nuw i8, ptr %0, i64 1612 ; 3 uses
  %.reload625 = load i32, ptr %.reload.addr624, align 4, !tbaa !170
  %i.eh = getelementptr inbounds nuw [280 x i8], ptr %.reload676, i64 %indvars.iv.reload649 ; 4 uses
  %i.ei = icmp ne i32 %.reload625, 4
  %i.ej = zext i1 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load <2 x ptr>, ptr %.reload.addr688, align 16, !tbaa !199
  store <2 x ptr> %i.em, ptr %i.eh, align 8, !tbaa !199
  %i.en = load ptr, ptr %i.ek, align 16, !tbaa !199
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr688, i8 0, i64 24, i1 false)
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr679) #53
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 84
  store i8 %i.ej, ptr %i.ep, align 4, !tbaa !239
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %.reload.addr679)
          to label %bb.z unwind label %.from.576

bb.z:                                             ; preds = %bb.y
  %.reload678 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170
  %indvars.iv.reload651 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170
  %i.eq = getelementptr inbounds nuw [280 x i8], ptr %.reload678, i64 %indvars.iv.reload651 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 172
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 204 ; 2 uses
  %i.et = load i8, ptr %i.es, align 4, !tbaa !240, !range !241, !noundef !242
  %i.eu = trunc nuw i8 %i.et to i1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, i64 32, i1 false)
  br i1 %i.eu, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.es, align 4, !tbaa !240
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %bb.aa, %bb.z
  %.reload666 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170
  %indvars.iv.reload639 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170
  %i.ev = getelementptr inbounds nuw [280 x i8], ptr %.reload666, i64 %indvars.iv.reload639
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !194 ; 2 uses
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !195
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = sdiv exact i64 %i.fb, 72
  store ptr %i.ex, ptr %.reload.addr696, align 8
  store i64 %i.fc, ptr %i.ew, align 16
  invoke void @_ZN3tev6detailorITkNSt3__16ranges5rangeENS3_14transform_viewB10llvm18_nuaINS2_4spanINS_7ChannelELm18446744073709551615EEEZNS_16MultiChannelViewIfEC1ES7_Qntsr3stdE10is_const_vIT_EEUlRS6_E_EEEEDaOSA_NS0_12to_vector_fnINS_15SmallRgbaVectorEEE(ptr dead_on_unwind nonnull writable sret(%"class.gch::small_vector") align 8 %.reload.addr683, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr696)
          to label %.noexc113 unwind label %.body114.from.549

.noexc113:                                        ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fe = load ptr, ptr %.reload.addr683, align 16, !tbaa !245
  %i.ff = load i64, ptr %i.fd, align 16, !tbaa !246
  invoke void @_ZN3tev16MultiChannelViewIfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %.reload.addr679, ptr %i.fe, i64 %i.ff)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.noexc113
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !247 ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, 5
  br i1 %i.fi, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fj = load ptr, ptr %.reload.addr683, align 16, !tbaa !245
  %i.fk = mul i64 %i.fh, 24
  tail call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fk) #59
  br label %bb.af

bb.ad:                                            ; preds = %.noexc113
  %i.fl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !247 ; 2 uses
  %i.fo = icmp ugt i64 %i.fn, 5
  br i1 %i.fo, label %bb.ae, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.ae:                                            ; preds = %bb.ad
  %i.fp = load ptr, ptr %.reload.addr683, align 16, !tbaa !245
  %i.fq = mul i64 %i.fn, 24
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fq) #59
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.fr = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr697)
          to label %bb.ag unwind label %.from.543

bb.ag:                                            ; preds = %bb.af
  %.reload660 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170
  %indvars.iv.reload653 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170 ; 2 uses
  %.reload.addr615 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %.reload616 = load i32, ptr %.reload.addr615, align 8, !tbaa !170
  %i.fs = getelementptr inbounds nuw [280 x i8], ptr %.reload660, i64 %indvars.iv.reload653 ; 2 uses
  %.not603 = icmp eq i32 %.reload616, 0
  %i.ft = load i32, ptr %.reload.addr700, align 16, !tbaa !72
  %i.fu = sext i32 %i.ft to i64                   ; 3 uses
  %i.fv = mul i64 %i.fr, %i.fu                    ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 220 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 208 ; 2 uses
  %i.fy = mul i64 %i.fv, %indvars.iv.reload653    ; 2 uses
  %.sroa.0211.1.reload.addr617 = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.sroa.0211.1.reload618 = load ptr, ptr %.sroa.0211.1.reload.addr617, align 16, !tbaa !170 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %.not603, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 3, ptr %i.fw, align 4, !tbaa !248
  store i16 264, ptr %i.fx, align 8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0211.1.reload618, i64 %i.fy
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !246 ; 5 uses
  %i.gc = icmp ugt i64 %i.gb, 5
  br i1 %i.gc, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gd = icmp ugt i64 %i.gb, 768614336404564650
  br i1 %i.gd, label %bb.aj, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #58
          to label %.noexc117 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp

.noexc117:                                        ; preds = %bb.aj
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.ai
  %i.ge = mul nuw i64 %i.gb, 24
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #57
          to label %.noexc118 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294 ; 2 uses

.noexc118:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store ptr %i.gf, ptr %.reload.addr685, align 16, !tbaa !245
  %i.gh = load i64, ptr %i.fz, align 8, !tbaa !246 ; 3 uses
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !247
  %.not.i.i.i.i.i116 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i.i.i.i116, label %.from..noexc118, label %.from..sink.split

bb.ak:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i64 5, ptr %i.gj, align 8, !tbaa !247
  store ptr %i.gi, ptr %.reload.addr685, align 16, !tbaa !245
  %.not.i11.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc118, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc118, %bb.ak
  %.sink403 = phi i64 [ %i.gh, %.noexc118 ], [ %i.gb, %bb.ak ] ; 2 uses
  %.sink = phi ptr [ %i.gf, %.noexc118 ], [ %i.gi, %bb.ak ]
  %.idx.i.i.i.i = mul nsw i64 %.sink403, 24
  %i.gk = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc118

.from..noexc118:                                  ; preds = %bb.ak, %.noexc118, %.from..sink.split
  %i.gl = phi i64 [ %.sink403, %.from..sink.split ], [ 0, %.noexc118 ], [ 0, %bb.ak ]
  %.reload627 = load i32, ptr %.reload.addr624, align 4, !tbaa !170
  %.reload.addr607 = getelementptr inbounds nuw i8, ptr %0, i64 1604
  %.reload608 = load i32, ptr %.reload.addr607, align 4, !tbaa !170
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.gn = icmp eq i32 %.reload627, 4
  %i.go = select i1 %i.gn, i32 2, i32 3
  store i64 %i.gl, ptr %i.gm, align 16, !tbaa !246
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr688, ptr nonnull %i.ga, i64 %i.fv, i64 noundef %i.fu, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr685, i32 noundef %i.go, i32 noundef %.reload608, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.al unwind label %.from.513

bb.al:                                            ; preds = %.from..noexc118
  %i.gp = load ptr, ptr %i.ek, align 16, !tbaa !134
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load atomic i32, ptr %i.gq acquire, align 4
  %i.gs = icmp slt i32 %i.gr, 2
  br i1 %i.gs, label %bb.am, label %AfterCoroSave412

bb.am:                                            ; preds = %bb.al
  %i.gt = load ptr, ptr %i.ek, align 16, !tbaa !134
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = atomicrmw add ptr %i.gu, i32 -1 acq_rel, align 4
  %i.gw = icmp slt i32 %i.gv, 1
  br i1 %i.gw, label %bb.an, label %.thread255.sink.split

bb.an:                                            ; preds = %bb.am
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i123 unwind label %.from..loopexit.split-lp.i.i120

.noexc.i.i123:                                    ; preds = %bb.an
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !172 ; 7 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !179
  %i.ha = and i32 %i.gz, 8
  %.not.i.i.i.i124 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i.i124, label %bb.ao, label %.thread255.sink.split

bb.ao:                                            ; preds = %.noexc.i.i123
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !180 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i125 = icmp eq ptr %i.hc, %i.he
  br i1 %.not12.i.i.i.i.i125, label %.thread255.sink.split, label %.from..lr.ph.i.i.i.i.i126

.from..lr.ph.i.i.i.i.i126:                        ; preds = %bb.ao
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 33
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  br label %.from..noexc2.i.i130

.from..noexc2.i.i130:                             ; preds = %.noexc2.i.i130, %.from..lr.ph.i.i.i.i.i126
  %.sroa.09.013.i.i.i.i.i127 = phi ptr [ %i.hc, %.from..lr.ph.i.i.i.i.i126 ], [ %i.hu, %.noexc2.i.i130 ] ; 2 uses
  %i.hj = load ptr, ptr %.sroa.09.013.i.i.i.i.i127, align 8, !tbaa !184 ; 2 uses
  %i.hk = load i8, ptr %i.hf, align 8             ; 2 uses
  %i.hl = trunc i8 %i.hk to i1                    ; 2 uses
  %i.hm = load ptr, ptr %i.hg, align 8
  %i.hn = select i1 %i.hl, ptr %i.hm, ptr %i.hh
  %i.ho = load i64, ptr %i.hi, align 8
  %i.hp = lshr i8 %i.hk, 1
  %i.hq = zext nneg i8 %i.hp to i64
  %i.hr = select i1 %i.hl, i64 %i.ho, i64 %i.hq
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !125
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr %i.hn, i64 %i.hr, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i130 unwind label %.from..loopexit.i.i128, !inline_history !4

.noexc2.i.i130:                                   ; preds = %.from..noexc2.i.i130
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i127, i64 16 ; 2 uses
  %.not.i.i.i.i.i131 = icmp eq ptr %i.hu, %i.he
  br i1 %.not.i.i.i.i.i131, label %.thread255.sink.split, label %.from..noexc2.i.i130

.from..loopexit.i.i128:                           ; preds = %.from..noexc2.i.i130
  %lpad.loopexit.i.i129 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

.from..loopexit.split-lp.i.i120:                  ; preds = %bb.an
  %lpad.loopexit.split-lp.i.i121 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.ap:                                            ; preds = %.from..loopexit.split-lp.i.i120, %.from..loopexit.i.i128
  %lpad.phi.i.i122 = phi { ptr, i32 } [ %lpad.loopexit.i.i129, %.from..loopexit.i.i128 ], [ %lpad.loopexit.split-lp.i.i121, %.from..loopexit.split-lp.i.i120 ]
  %i.hv = extractvalue { ptr, i32 } %lpad.phi.i.i122, 0
  tail call void @__clang_call_terminate(ptr %i.hv) #60
  unreachable

AfterCoroSave412:                                 ; preds = %bb.al
  store i8 1, ptr %index.addr, align 16
  %i.hw = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr688, ptr nonnull %0) #53
  br i1 %i.hw, label %CoroEnd, label %AfterCoroSuspend414

.body110.from.501:                                ; preds = %bb.q
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body110

.from..body110:                                   ; preds = %.body110.from.498, %.body110.from.501, %bb.t
  %eh.lpad-body111 = phi { ptr, i32 } [ %i.hx, %.body110.from.501 ], [ %i.cz, %.body110.from.498 ], [ %i.cz, %bb.t ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr679) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.from.576:                                        ; preds = %bb.y
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.body114.from.549:                                ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.from.543:                                        ; preds = %bb.af
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp: ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.from.513:                                        ; preds = %.from..noexc118
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

AfterCoroSuspend414:                              ; preds = %resume.entry, %AfterCoroSave412
  %.pr253 = load ptr, ptr %.reload.addr688, align 16, !tbaa !250 ; 3 uses
  %.not.i132 = icmp eq ptr %.pr253, null
  br i1 %.not.i132, label %.thread255, label %bb.aq

bb.aq:                                            ; preds = %AfterCoroSuspend414
  %i.ic = getelementptr inbounds nuw i8, ptr %.pr253, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr nonnull %.pr253)
          to label %.thread255.sink.split unwind label %.from.510, !inline_history !8

.thread255.sink.split:                            ; preds = %.noexc2.i.i130, %bb.aq, %bb.ao, %.noexc.i.i123, %bb.am
  store ptr null, ptr %.reload.addr688, align 16, !tbaa !250
  br label %.thread255

.thread255:                                       ; preds = %.thread255.sink.split, %AfterCoroSuspend414
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 600
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %.from.510

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread255
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !247 ; 2 uses
  %i.ih = icmp ugt i64 %i.ig, 5
  br i1 %i.ih, label %.sink.split, label %bb.bd

.from.510:                                        ; preds = %bb.aq, %.thread255
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  br label %bb.ar

bb.ar:                                            ; preds = %.from.510, %.from.513
  %.pn79 = phi { ptr, i32 } [ %i.ii, %.from.510 ], [ %i.ib, %.from.513 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !247 ; 2 uses
  %i.il = icmp ugt i64 %i.ik, 5
  br i1 %i.il, label %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit135.from.:   ; preds = %bb.ar
  %i.im = load ptr, ptr %.reload.addr685, align 16, !tbaa !245
  %i.in = mul i64 %i.ik, 24
  tail call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.in) #59
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

bb.as:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fw, align 4, !tbaa !248
  store i16 269, ptr %i.fx, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0211.1.reload618, i64 %i.fy
  %i.ip = load i64, ptr %i.fz, align 8, !tbaa !246 ; 5 uses
  %i.iq = icmp ugt i64 %i.ip, 5
  br i1 %i.iq, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ir = icmp ugt i64 %i.ip, 768614336404564650
  br i1 %i.ir, label %bb.au, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #58
          to label %.noexc144 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296

.noexc144:                                        ; preds = %bb.au
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140: ; preds = %bb.at
  %i.is = mul nuw i64 %i.ip, 24
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #57
          to label %.noexc145 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295 ; 2 uses

.noexc145:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store ptr %i.it, ptr %.reload.addr684, align 16, !tbaa !245
  %i.iv = load i64, ptr %i.fz, align 8, !tbaa !246 ; 3 uses
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !247
  %.not.i.i.i.i.i141 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.i.i141, label %.from..noexc145, label %.from..sink.split404

bb.av:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 5, ptr %i.ix, align 8, !tbaa !247
  store ptr %i.iw, ptr %.reload.addr684, align 16, !tbaa !245
  %.not.i11.i.i.i.i136 = icmp eq i64 %i.ip, 0
  br i1 %.not.i11.i.i.i.i136, label %.from..noexc145, label %.from..sink.split404

.from..sink.split404:                             ; preds = %.noexc145, %bb.av
  %.sink408 = phi i64 [ %i.iv, %.noexc145 ], [ %i.ip, %bb.av ] ; 2 uses
  %.sink406 = phi ptr [ %i.it, %.noexc145 ], [ %i.iw, %bb.av ]
  %.idx.i.i.i.i138 = mul nsw i64 %.sink408, 24
  %i.iy = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink406, ptr noundef nonnull align 8 dereferenceable(1) %i.iy, i64 %.idx.i.i.i.i138, i1 false)
  br label %.from..noexc145

.from..noexc145:                                  ; preds = %bb.av, %.noexc145, %.from..sink.split404
  %i.iz = phi i64 [ %.sink408, %.from..sink.split404 ], [ 0, %.noexc145 ], [ 0, %bb.av ]
  %.reload629 = load i32, ptr %.reload.addr624, align 4, !tbaa !170
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1604
  %.reload = load i32, ptr %.reload.addr, align 4, !tbaa !170
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.jb = icmp eq i32 %.reload629, 4
  %i.jc = select i1 %i.jb, i32 2, i32 3
  store i64 %i.iz, ptr %i.ja, align 16, !tbaa !246
  invoke void @_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.70") align 8 %.reload.addr688, ptr nonnull %i.io, i64 %i.fv, i64 noundef %i.fu, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr684, i32 noundef %i.jc, i32 noundef %.reload, float noundef 0.000000e+00, float noundef 0.000000e+00, i64 noundef 0)
          to label %bb.aw unwind label %.from.534

bb.aw:                                            ; preds = %.from..noexc145
  %i.jd = load ptr, ptr %i.ek, align 16, !tbaa !134
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load atomic i32, ptr %i.je acquire, align 4
  %i.jg = icmp slt i32 %i.jf, 2
  br i1 %i.jg, label %bb.ax, label %AfterCoroSave416

bb.ax:                                            ; preds = %bb.aw
  %i.jh = load ptr, ptr %i.ek, align 16, !tbaa !134
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %i.jk = icmp slt i32 %i.jj, 1
  br i1 %i.jk, label %bb.ay, label %.thread263.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i151 unwind label %.from..loopexit.split-lp.i.i148

.noexc.i.i151:                                    ; preds = %bb.ay
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !172 ; 7 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !179
  %i.jo = and i32 %i.jn, 8
  %.not.i.i.i.i152 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i.i.i152, label %bb.az, label %.thread263.sink.split

bb.az:                                            ; preds = %.noexc.i.i151
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !180 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i153 = icmp eq ptr %i.jq, %i.js
  br i1 %.not12.i.i.i.i.i153, label %.thread263.sink.split, label %.from..lr.ph.i.i.i.i.i154

.from..lr.ph.i.i.i.i.i154:                        ; preds = %bb.az
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 33
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  br label %.from..noexc2.i.i158

.from..noexc2.i.i158:                             ; preds = %.noexc2.i.i158, %.from..lr.ph.i.i.i.i.i154
  %.sroa.09.013.i.i.i.i.i155 = phi ptr [ %i.jq, %.from..lr.ph.i.i.i.i.i154 ], [ %i.ki, %.noexc2.i.i158 ] ; 2 uses
  %i.jx = load ptr, ptr %.sroa.09.013.i.i.i.i.i155, align 8, !tbaa !184 ; 2 uses
  %i.jy = load i8, ptr %i.jt, align 8             ; 2 uses
  %i.jz = trunc i8 %i.jy to i1                    ; 2 uses
  %i.ka = load ptr, ptr %i.ju, align 8
  %i.kb = select i1 %i.jz, ptr %i.ka, ptr %i.jv
  %i.kc = load i64, ptr %i.jw, align 8
  %i.kd = lshr i8 %i.jy, 1
  %i.ke = zext nneg i8 %i.kd to i64
  %i.kf = select i1 %i.jz, i64 %i.kc, i64 %i.ke
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !125
  %i.kh = load ptr, ptr %i.kg, align 8
  invoke void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr %i.kb, i64 %i.kf, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i158 unwind label %.from..loopexit.i.i156, !inline_history !4

.noexc2.i.i158:                                   ; preds = %.from..noexc2.i.i158
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i155, i64 16 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.ki, %i.js
  br i1 %.not.i.i.i.i.i159, label %.thread263.sink.split, label %.from..noexc2.i.i158

.from..loopexit.i.i156:                           ; preds = %.from..noexc2.i.i158
  %lpad.loopexit.i.i157 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

.from..loopexit.split-lp.i.i148:                  ; preds = %bb.ay
  %lpad.loopexit.split-lp.i.i149 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

bb.ba:                                            ; preds = %.from..loopexit.split-lp.i.i148, %.from..loopexit.i.i156
  %lpad.phi.i.i150 = phi { ptr, i32 } [ %lpad.loopexit.i.i157, %.from..loopexit.i.i156 ], [ %lpad.loopexit.split-lp.i.i149, %.from..loopexit.split-lp.i.i148 ]
  %i.kj = extractvalue { ptr, i32 } %lpad.phi.i.i150, 0
  tail call void @__clang_call_terminate(ptr %i.kj) #60
  unreachable

AfterCoroSave416:                                 ; preds = %bb.aw
  store i8 2, ptr %index.addr, align 16
  %i.kk = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr688, ptr nonnull %0) #53
  br i1 %i.kk, label %CoroEnd, label %AfterCoroSuspend418

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i140
  %lpad.loopexit297 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296: ; preds = %bb.au
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.from.534:                                        ; preds = %.from..noexc145
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

AfterCoroSuspend418:                              ; preds = %resume.entry, %AfterCoroSave416
  %.pr261 = load ptr, ptr %.reload.addr688, align 16, !tbaa !250 ; 3 uses
  %.not.i161 = icmp eq ptr %.pr261, null
  br i1 %.not.i161, label %.thread263, label %bb.bb

bb.bb:                                            ; preds = %AfterCoroSuspend418
  %i.km = getelementptr inbounds nuw i8, ptr %.pr261, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  invoke void %i.kn(ptr nonnull %.pr261)
          to label %.thread263.sink.split unwind label %.from.531, !inline_history !8

.thread263.sink.split:                            ; preds = %.noexc2.i.i158, %bb.bb, %bb.az, %.noexc.i.i151, %bb.ax
  store ptr null, ptr %.reload.addr688, align 16, !tbaa !250
  br label %.thread263

.thread263:                                       ; preds = %.thread263.sink.split, %AfterCoroSuspend418
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 600
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit164 unwind label %.from.531

_ZN3tev4TaskIvE12await_resumeEv.exit164:          ; preds = %.thread263
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1192
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !247 ; 2 uses
  %i.kr = icmp ugt i64 %i.kq, 5
  br i1 %i.kr, label %.sink.split, label %bb.bd

.from.531:                                        ; preds = %bb.bb, %.thread263
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  br label %bb.bc

bb.bc:                                            ; preds = %.from.531, %.from.534
  %.pn78 = phi { ptr, i32 } [ %i.ks, %.from.531 ], [ %i.kl, %.from.534 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !247 ; 2 uses
  %i.kv = icmp ugt i64 %i.ku, 5
  br i1 %i.kv, label %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from., label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

_ZN3tev16MultiChannelViewIfED2Ev.exit166.from.:   ; preds = %bb.bc
  %i.kw = load ptr, ptr %.reload.addr684, align 16, !tbaa !245
  %i.kx = mul i64 %i.ku, 24
  tail call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kx) #59
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135

.sink.split:                                      ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink45 = phi i64 [ %i.ig, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.kq, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink43.in = phi ptr [ %.reload.addr685, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr684, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink43 = load ptr, ptr %.sink43.in, align 8, !tbaa !245
  %i.ky = mul i64 %.sink45, 24
  tail call void @_ZdlPvm(ptr noundef %.sink43, i64 noundef %i.ky) #59
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.reload.addr657 = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %.reload658 = load ptr, ptr %.reload.addr657, align 16, !tbaa !170
  %indvars.iv.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 3 uses
  %indvars.iv.reload = load i64, ptr %indvars.iv.reload.addr, align 8, !tbaa !170 ; 2 uses
  %i.kz = getelementptr inbounds nuw [280 x i8], ptr %.reload658, i64 %indvars.iv.reload
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 84
  store i8 1, ptr %i.la, align 4, !tbaa !239
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 16, !tbaa !247 ; 2 uses
  %i.ld = icmp ugt i64 %i.lc, 5
  br i1 %i.ld, label %bb.be, label %bb.a

bb.be:                                            ; preds = %bb.bd
  %i.le = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  %i.lf = mul i64 %i.lc, 24
  tail call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lf) #59
  %indvars.iv.reload655.pre = load i64, ptr %indvars.iv.reload.addr, align 8, !tbaa !170
  br label %bb.a

.from._ZN3tev16MultiChannelViewIfED2Ev.exit135:   ; preds = %bb.bc, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295, %bb.ar, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from., %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294, %.from.543
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %.from.543 ], [ %.pn79, %bb.ar ], [ %.pn79, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from. ], [ %lpad.loopexit.split-lp, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit.split-lp ], [ %lpad.loopexit, %_ZN3tev16MultiChannelViewIfED2Ev.exit135.from..loopexit294 ], [ %.pn78, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from. ], [ %lpad.loopexit.split-lp298, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit.split-lp296 ], [ %lpad.loopexit297, %_ZN3tev16MultiChannelViewIfED2Ev.exit166.from..loopexit295 ], [ %.pn78, %bb.bc ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lh = load i64, ptr %i.lg, align 16, !tbaa !247 ; 2 uses
  %i.li = icmp ugt i64 %i.lh, 5
  br i1 %i.li, label %.body114.from., label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.body114.from.:                                   ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135
  %i.lj = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  %i.lk = mul i64 %i.lh, 24
  tail call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lk) #59
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

._crit_edge:                                      ; preds = %bb.a
  %i.ll = load ptr, ptr %.reload.addr701, align 16, !tbaa !128 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #58
          to label %.noexc.i169 unwind label %bb.bh

.noexc.i169:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %._crit_edge
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %i.ll, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr692)
          to label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  tail call void @__clang_call_terminate(ptr %i.lo) #60
  unreachable

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.bg
  %i.lp = load ptr, ptr %.reload.addr692, align 16, !tbaa !153 ; 5 uses
  %.not.i.i170 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i170, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !251 ; 2 uses
  %.not6.i.i.i.i171 = icmp eq ptr %i.lp, %i.lr
  br i1 %.not6.i.i.i.i171, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i172

.lr.ph.i.i.i.i172:                                ; preds = %bb.bi, %.lr.ph.i.i.i.i172
  %.07.i.i.i.i173 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i172 ], [ %i.lr, %bb.bi ]
  %i.ls = getelementptr inbounds i8, ptr %.07.i.i.i.i173, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.ls) #53
  %.not.i.i.i.i174 = icmp eq ptr %i.lp, %i.ls
  br i1 %.not.i.i.i.i174, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i172

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i172
  %.pre1.i.i175 = load ptr, ptr %.reload.addr692, align 16, !tbaa !153
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.bi, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.lt = phi ptr [ %.pre1.i.i175, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.lp, %bb.bi ] ; 2 uses
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !251
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !252
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  tail call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.ly) #59
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %.sroa.0211.1.reload.addr621 = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.sroa.0211.1.reload622 = load ptr, ptr %.sroa.0211.1.reload.addr621, align 16, !tbaa !170
  tail call void @free(ptr noundef nonnull %.sroa.0211.1.reload622) #53
  br label %bb.bk

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178: ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135, %bb.ae, %bb.ad, %.body114.from., %.body114.from.549, %.from..body110, %.from.504, %.from.576, %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %.from.504 ], [ %i.hy, %.from.576 ], [ %i.af, %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %eh.lpad-body111, %.from..body110 ], [ %.pn79.pn.pn.pn, %.body114.from. ], [ %i.hz, %.body114.from.549 ], [ %i.fl, %bb.ae ], [ %i.fl, %bb.ad ], [ %.pn79.pn.pn.pn, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit135 ]
  tail call void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr692) #53
  %.sroa.0211.1.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.sroa.0211.1.reload = load ptr, ptr %.sroa.0211.1.reload.addr, align 16, !tbaa !170
  tail call void @free(ptr noundef nonnull %.sroa.0211.1.reload) #53
  %.16 = extractvalue { ptr, i32 } %.pn79.pn.pn.pn.pn.pn, 0
  %i.lz = tail call ptr @__cxa_begin_catch(ptr %.16) #53 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr701)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %.from.593

bb.bk:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, %bb.bj
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !134
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = atomicrmw add ptr %i.mc, i32 -1 acq_rel, align 4 ; 2 uses
  %i.me = icmp slt i32 %i.md, 1
  br i1 %i.me, label %bb.bl, label %_ZN3tev5Latch9countDownEv.exit.i179

bb.bl:                                            ; preds = %bb.bk
  %i.mf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i184 unwind label %.from..loopexit.split-lp.i.i181

.noexc.i.i184:                                    ; preds = %bb.bl
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !172 ; 7 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !179
  %i.mi = and i32 %i.mh, 8
  %.not.i.i.i.i185 = icmp eq i32 %i.mi, 0
  br i1 %.not.i.i.i.i185, label %bb.bm, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.bm:                                            ; preds = %.noexc.i.i184
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !180 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i186 = icmp eq ptr %i.mk, %i.mm
  br i1 %.not12.i.i.i.i.i186, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i187

.from..lr.ph.i.i.i.i.i187:                        ; preds = %bb.bm
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 33
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  br label %.from..noexc2.i.i191

.from..noexc2.i.i191:                             ; preds = %.noexc2.i.i191, %.from..lr.ph.i.i.i.i.i187
  %.sroa.09.013.i.i.i.i.i188 = phi ptr [ %i.mk, %.from..lr.ph.i.i.i.i.i187 ], [ %i.nc, %.noexc2.i.i191 ] ; 2 uses
  %i.mr = load ptr, ptr %.sroa.09.013.i.i.i.i.i188, align 8, !tbaa !184 ; 2 uses
  %i.ms = load i8, ptr %i.mn, align 8             ; 2 uses
  %i.mt = trunc i8 %i.ms to i1                    ; 2 uses
  %i.mu = load ptr, ptr %i.mo, align 8
  %i.mv = select i1 %i.mt, ptr %i.mu, ptr %i.mp
  %i.mw = load i64, ptr %i.mq, align 8
  %i.mx = lshr i8 %i.ms, 1
  %i.my = zext nneg i8 %i.mx to i64
  %i.mz = select i1 %i.mt, i64 %i.mw, i64 %i.my
  %i.na = load ptr, ptr %i.mr, align 8, !tbaa !125
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr %i.mv, i64 %i.mz, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i191 unwind label %.from..loopexit.i.i189, !inline_history !4

.noexc2.i.i191:                                   ; preds = %.from..noexc2.i.i191
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i188, i64 16 ; 2 uses
  %.not.i.i.i.i.i192 = icmp eq ptr %i.nc, %i.mm
  br i1 %.not.i.i.i.i.i192, label %_ZN3tev5Latch9countDownEv.exit.i179, label %.from..noexc2.i.i191

.from..loopexit.i.i189:                           ; preds = %.from..noexc2.i.i191
  %lpad.loopexit.i.i190 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

.from..loopexit.split-lp.i.i181:                  ; preds = %bb.bl
  %lpad.loopexit.split-lp.i.i182 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bn

bb.bn:                                            ; preds = %.from..loopexit.split-lp.i.i181, %.from..loopexit.i.i189
  %lpad.phi.i.i183 = phi { ptr, i32 } [ %lpad.loopexit.i.i190, %.from..loopexit.i.i189 ], [ %lpad.loopexit.split-lp.i.i182, %.from..loopexit.split-lp.i.i181 ]
  %i.nd = extractvalue { ptr, i32 } %lpad.phi.i.i183, 0
  tail call void @__clang_call_terminate(ptr %i.nd) #60
  unreachable

_ZN3tev5Latch9countDownEv.exit.i179:              ; preds = %.noexc2.i.i191, %bb.bk
  %i.ne = icmp slt i32 %i.md, 2
  br i1 %i.ne, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i179, %bb.bm, %.noexc.i.i184
  %i.nf = load ptr, ptr %i.ma, align 8, !tbaa !134
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !73 ; 2 uses
  %i.nh = inttoptr i64 %i.ng to ptr               ; 3 uses
  store ptr %i.nh, ptr %.reload.addr698, align 8
  %.not.i193 = icmp eq i64 %i.ng, 0
  br i1 %.not.i193, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  %i.ni = load ptr, ptr %i.nh, align 8
  musttail call void %i.ni(ptr nonnull %i.nh)
  ret void

bb.bp:                                            ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bt

.from.593:                                        ; preds = %bb.bj
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i179, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nm = load ptr, ptr %i.nl, align 16, !tbaa !135 ; 5 uses
  %.not.i.i194 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i194, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = atomicrmw add ptr %i.nn, i64 -1 acq_rel, align 8
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %bb.br, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  %i.nq = load ptr, ptr %i.nm, align 8, !tbaa !125
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  tail call void %i.ns(ptr noundef nonnull align 8 dereferenceable(24) %i.nm) #53, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nm) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.br, %bb.bq, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr701) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1632) #53
  br label %CoroEnd

CoroEnd:                                          ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, %AfterCoroSave416, %AfterCoroSave412
  ret void

bb.bs:                                            ; preds = %bb.bp, %.from.593
  %.pn82 = phi { ptr, i32 } [ %i.nk, %.from.593 ], [ %i.nj, %bb.bp ]
  store ptr null, ptr %0, align 16
  store i8 3, ptr %index.addr, align 16
  resume { ptr, i32 } %.pn82

bb.bt:                                            ; preds = %bb.bp
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  tail call void @__clang_call_terminate(ptr %i.nu) #60
  unreachable

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(1632) %0) #13 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr679 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.reload.addr688 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %.reload.addr692 = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..thread267
    i8 1, label %_ZN3tev4TaskIvE12await_resumeEv.exit
    i8 2, label %_ZN3tev4TaskIvE12await_resumeEv.exit164
    i8 3, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  ], !prof !2021

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..thread267: ; preds = %resume.entry
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr679) #53
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr685 = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  %i.b = load i64, ptr %i.a, align 8, !tbaa !247  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  br i1 %i.c, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev4TaskIvE12await_resumeEv.exit164:          ; preds = %resume.entry
  %.reload.addr684 = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1192
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr688) #53
  %i.e = load i64, ptr %i.d, align 8, !tbaa !247  ; 2 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split: ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %.sink44 = phi i64 [ %i.b, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %i.e, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink.in = phi ptr [ %.reload.addr685, %_ZN3tev4TaskIvE12await_resumeEv.exit ], [ %.reload.addr684, %_ZN3tev4TaskIvE12await_resumeEv.exit164 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !245
  %i.g = mul i64 %.sink44, 24
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.g) #59
  br label %.from._ZN3tev16MultiChannelViewIfED2Ev.exit

.from._ZN3tev16MultiChannelViewIfED2Ev.exit:      ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit.sink.split, %_ZN3tev4TaskIvE12await_resumeEv.exit164, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 16, !tbaa !247 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 5
  br i1 %i.j, label %bb.a, label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

bb.a:                                             ; preds = %.from._ZN3tev16MultiChannelViewIfED2Ev.exit
  %i.k = load ptr, ptr %.reload.addr679, align 8, !tbaa !245
  %i.l = mul i64 %i.i, 24
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.l) #59
  br label %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit

_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit: ; preds = %bb.a, %.from._ZN3tev16MultiChannelViewIfED2Ev.exit, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit.from..thread267
  %i.m = load ptr, ptr %.reload.addr692, align 16, !tbaa !153 ; 5 uses
  %.not.i.i170 = icmp eq ptr %i.m, null
  br i1 %.not.i.i170, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251  ; 2 uses
  %.not6.i.i.i.i171 = icmp eq ptr %i.m, %i.o
  br i1 %.not6.i.i.i.i171, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i172

.lr.ph.i.i.i.i172:                                ; preds = %bb.b, %.lr.ph.i.i.i.i172
  %.07.i.i.i.i173 = phi ptr [ %i.p, %.lr.ph.i.i.i.i172 ], [ %i.o, %bb.b ]
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i.i173, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.p) #53
  %.not.i.i.i.i174 = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i.i174, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i172

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i172
  %.pre1.i.i175 = load ptr, ptr %.reload.addr692, align 16, !tbaa !153
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %bb.b, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i
  %i.q = phi ptr [ %.pre1.i.i175, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.m, %bb.b ] ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !251
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !252
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #59
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %_ZN3tev15TaskPromiseBaseINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEE12return_valueEOS6_.exit
  %.sroa.0211.1.reload.addr621 = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.sroa.0211.1.reload622 = load ptr, ptr %.sroa.0211.1.reload.addr621, align 16, !tbaa !170
  tail call void @free(ptr noundef nonnull %.sroa.0211.1.reload622) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit, %resume.entry
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !135 ; 5 uses
  %.not.i.i194 = icmp eq ptr %i.x, null
  br i1 %.not.i.i194, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #53, !inline_history !9
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr701 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr701) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1632) #53
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #41 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nounwind memory(none) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #51 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #52 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nounwind }
attributes #54 = { nounwind allocsize(0) }
attributes #55 = { nounwind allocsize(1) }
attributes #56 = { allocsize(0) }
attributes #57 = { builtin allocsize(0) }
attributes #58 = { noreturn }
attributes #59 = { builtin nounwind }
attributes #60 = { noreturn nounwind }

end_hunk_8
begin_hunk_9_@llvm.copysign.v2f32
!362 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !69, i64 0}
!363 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !362, i64 0, !64, i64 8}
!364 = !{!363, !64, i64 8}
!365 = !{ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev}
!366 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !205, i64 0, !63, i64 1}
!367 = !{!366, !205, i64 0}
!368 = !{!366, !63, i64 1}
!369 = !{!357, !64, i64 8}
!370 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !69, i64 0}
!371 = !{!370, !370, i64 0}
!372 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !63, i64 0}
!373 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !372, i64 0, !351, i64 16}
!374 = !{!373, !351, i64 16}
!375 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !163, i64 0}
!376 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !375, i64 0, !370, i64 8, !142, i64 16, !142, i64 40, !142, i64 64}
!377 = !{!376, !370, i64 8}
!378 = !{i64 4}
!379 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !69, i64 0}
!380 = !{!379, !379, i64 0}
!381 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !69, i64 0}
!382 = !{!381, !381, i64 0}
!383 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !70, i64 0, !70, i64 8, !64, i64 16}
!384 = !{!383, !70, i64 0}
!385 = !{!383, !70, i64 8}
!386 = !{!383, !64, i64 16}
!387 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !95, i64 0, !154, i64 8, !154, i64 16, !69, i64 24}
!388 = !{!387, !95, i64 0}
!389 = !{!387, !154, i64 16}
!390 = !{!387, !154, i64 8}
!391 = !{!160, !70, i64 0}
!392 = !{!160, !154, i64 8}
!393 = !{!"_ZTSN3fmt3v124signE", !63, i64 0}
!394 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !393, i64 0, !70, i64 8}
!395 = !{!394, !393, i64 0}
!396 = !{!394, !70, i64 8}
!397 = !{!393, !393, i64 0}
!398 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !64, i64 0, !64, i64 4}
!399 = !{!398, !64, i64 4}
!400 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !69, i64 0}
!401 = !{!400, !400, i64 0}
!402 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !69, i64 0}
!403 = !{!402, !402, i64 0}
!404 = !{!"p1 bool", !69, i64 0}
!405 = !{!404, !404, i64 0}
!406 = !{!398, !64, i64 0}
!407 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !154, i64 0, !64, i64 8}
!408 = !{!407, !64, i64 8}
!409 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !69, i64 0}
!410 = !{!409, !409, i64 0}
!411 = !{!407, !154, i64 0}
!412 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !70, i64 0, !64, i64 8, !64, i64 12}
!413 = !{!412, !70, i64 0}
!414 = !{!412, !64, i64 8}
!415 = !{!412, !64, i64 12}
!416 = !{!"__int128", !63, i64 0}
!417 = !{!416, !416, i64 0}
!418 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !95, i64 0, !154, i64 8, !154, i64 16, !69, i64 24}
!419 = !{!418, !69, i64 24}
!420 = !{!418, !95, i64 0}
!421 = !{!418, !154, i64 16}
!422 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !418, i64 0, !63, i64 32}
!423 = !{!"_ZTSN3fmt3v126detail6bigintE", !422, i64 0, !64, i64 160}
!424 = !{!423, !64, i64 160}
!425 = !{!418, !154, i64 8}
!426 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !393, i64 0, !412, i64 8, !64, i64 24, !63, i64 28, !64, i64 32, !63, i64 36, !64, i64 40}
!427 = !{!426, !393, i64 0}
!428 = !{!426, !64, i64 24}
!429 = !{!426, !63, i64 28}
!430 = !{!426, !64, i64 32}
!431 = !{!426, !63, i64 36}
!432 = !{!426, !64, i64 40}
!433 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !69, i64 0}
!434 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !142, i64 0, !63, i64 24}
!435 = !{!434, !63, i64 24}
!436 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !69, i64 0}
!437 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !436, i64 0, !154, i64 8}
!438 = !{!437, !154, i64 8}
!439 = !{!437, !436, i64 0}
!440 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !70, i64 0, !64, i64 8}
!441 = !{!440, !70, i64 0}
!442 = !{!440, !64, i64 8}
!443 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !63, i64 0}
!444 = !{!443, !443, i64 0}
!445 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !69, i64 0}
!446 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !69, i64 0}
!447 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !393, i64 0, !407, i64 8, !64, i64 24, !63, i64 28, !64, i64 32, !63, i64 36, !64, i64 40}
!448 = !{!447, !393, i64 0}
!449 = !{!447, !64, i64 24}
!450 = !{!447, !63, i64 28}
!451 = !{!447, !64, i64 32}
!452 = !{!447, !63, i64 36}
!453 = !{!447, !64, i64 40}
!454 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !69, i64 0}
!455 = !{!454, !454, i64 0}
!456 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !205, i64 0, !154, i64 8, !160, i64 16}
!457 = !{!456, !205, i64 0}
!458 = !{!456, !154, i64 8}
!459 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !155, i64 0, !63, i64 32, !154, i64 288}
!460 = !{!459, !154, i64 288}
!461 = !{!"p1 _ZTSN4tlog13ConsoleOutputE", !69, i64 0}
!462 = !{!"_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEEE", !461, i64 0, !132, i64 8}
!463 = !{!462, !132, i64 8}
!464 = !{!183, !132, i64 8}
!465 = !{!"p1 _ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !69, i64 0}
!466 = !{!465, !465, i64 0}
!467 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorE", !465, i64 0}
!468 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEEE", !467, i64 0, !205, i64 8}
!469 = !{!468, !205, i64 8}
!470 = !{!174, !174, i64 0}
!471 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !69, i64 0}
!472 = !{!"_ZTSN4tlog7IOutputE"}
!473 = !{!"_ZTSN4tlog13ConsoleOutputE", !472, i64 0, !205, i64 8, !471, i64 16, !255, i64 24}
!474 = !{!473, !205, i64 8}
!475 = !{!"any p2 pointer", !69, i64 0}
!476 = !{!"_ZTSNSt3__18ios_baseE", !64, i64 8, !154, i64 16, !154, i64 24, !64, i64 32, !64, i64 36, !69, i64 40, !69, i64 48, !475, i64 56, !95, i64 64, !154, i64 72, !154, i64 80, !274, i64 88, !154, i64 96, !154, i64 104, !475, i64 112, !154, i64 120, !154, i64 128}
!477 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !476, i64 0, !471, i64 136, !64, i64 144}
!478 = !{!477, !64, i64 144}
!479 = !{!"_ZTSSt9type_info", !70, i64 8}
!480 = !{!479, !70, i64 8}
!481 = !{!"p1 _ZTSN7nanogui5ArrayIiLm2EEE", !69, i64 0}
!482 = !{!481, !481, i64 0}
!483 = !{!"p1 _ZTSNSt3__14spanIKfLm18446744073709551615EEE", !69, i64 0}
!484 = !{!"p1 _ZTSN3tev16MultiChannelViewIfEE", !69, i64 0}
!485 = !{!484, !484, i64 0}
!486 = !{!"branch_weights", i32 1, i32 127}
!487 = !{!"branch_weights", i32 127, i32 255873}
!488 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iEUlvE_", !64, i64 0, !64, i64 4, !69, i64 8}
!489 = !{!488, !64, i64 0}
!490 = !{!488, !64, i64 4}
!491 = !{!"p1 _ZTSN3tev4TaskIvEE", !69, i64 0}
!492 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev4TaskIvEELi0ELb0EEE", !491, i64 0}
!493 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev4TaskIvEENS_9allocatorIS3_EEEE", !492, i64 0}
!494 = !{!"_ZTSNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEEE", !491, i64 0, !491, i64 8, !493, i64 16}
!495 = !{!494, !491, i64 8}
!496 = !{!491, !491, i64 0}
!497 = !{!132, !132, i64 0}
!498 = !{!494, !491, i64 0}
!499 = !{!"_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.Frame Slot", !62, i64 0}
!500 = !{!499, !499, i64 0}
!501 = !{!"p1 _ZTSSt13exception_ptr", !69, i64 0}
!502 = !{!"_ZTSNSt3__122__compressed_pair_elemIPSt13exception_ptrLi0ELb0EEE", !501, i64 0}
!503 = !{!"_ZTSNSt3__117__compressed_pairIPSt13exception_ptrNS_9allocatorIS1_EEEE", !502, i64 0}
!504 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !501, i64 0, !501, i64 8, !503, i64 16}
!505 = !{!504, !501, i64 8}
!506 = !{!504, !501, i64 0}
!507 = !{!501, !501, i64 0}
!508 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !63, i64 0}
!509 = !{!"p1 _ZTSNSt3__120__packaged_task_baseIFvvEEE", !69, i64 0}
!510 = !{!"_ZTSNSt3__124__packaged_task_functionIFvvEEE", !508, i64 0, !509, i64 32}
!511 = !{!510, !509, i64 32}
!512 = !{!"p1 _ZTSNSt3__113packaged_taskIFvvEEE", !69, i64 0}
!513 = !{!"_ZTSNSt3__110shared_ptrINS_13packaged_taskIFvvEEEEE", !512, i64 0, !132, i64 8}
!514 = !{!513, !512, i64 0}
!515 = !{!513, !132, i64 8}
!516 = !{!"p1 _ZTSN3tev10ThreadPool10QueuedTaskE", !69, i64 0}
!517 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10ThreadPool10QueuedTaskELi0ELb0EEE", !516, i64 0}
!518 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !517, i64 0}
!519 = !{!"_ZTSNSt3__16vectorIN3tev10ThreadPool10QueuedTaskENS_9allocatorIS3_EEEE", !516, i64 0, !516, i64 8, !518, i64 16}
!520 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !69, i64 0}
!521 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !508, i64 0, !520, i64 32}
!522 = !{!521, !520, i64 32}
!523 = !{!"_ZTSNSt3__18functionIFvvEEE", !521, i64 0}
!524 = !{!"_ZTSN3tev10ThreadPool10QueuedTaskE", !523, i64 0, !64, i64 48, !205, i64 52}
!525 = !{!524, !64, i64 48}
!526 = !{!519, !516, i64 8}
!527 = !{!516, !516, i64 0}
!528 = !{!519, !516, i64 0}
!529 = !{!"_ZTSZZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiEUlTyiE_", !95, i64 0, !274, i64 8, !483, i64 16, !265, i64 24, !265, i64 32, !404, i64 40, !274, i64 48, !484, i64 56, !69, i64 64, !274, i64 72}
!530 = !{!529, !95, i64 0}
!531 = !{!529, !274, i64 8}
!532 = !{!529, !483, i64 16}
!533 = !{!529, !265, i64 24}
!534 = !{!529, !265, i64 32}
!535 = !{!529, !404, i64 40}
!536 = !{!529, !274, i64 48}
!537 = !{!529, !484, i64 56}
!538 = !{!"_ZTSN3tev11ChannelViewIfEE", !265, i64 0, !154, i64 8, !236, i64 16}
!539 = !{!538, !265, i64 0}
!540 = !{!538, !154, i64 8}
!541 = !{!529, !69, i64 64}
!542 = !{!529, !274, i64 72}
!543 = !{!"p1 _ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEEE", !69, i64 0}
!544 = !{!"_ZTSNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE16__destroy_vectorE", !543, i64 0}
!545 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEE", !544, i64 0, !205, i64 8}
!546 = !{!545, !205, i64 8}
!547 = !{!"p1 _ZTSNSt3__14spanIKhLm18446744073709551615EEE", !69, i64 0}
!548 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEiTkNS3_IS4_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESB_S4_S4_mT0_iEUliiE_EESB_S4_S4_mSJ_iEUlvE_", !64, i64 0, !64, i64 4, !69, i64 8}
!549 = !{!548, !64, i64 0}
!550 = !{!548, !64, i64 4}
!551 = !{!"_ZTSZZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmENKUliE_clEiEUlTyiE_", !95, i64 0, !274, i64 8, !547, i64 16, !265, i64 24, !265, i64 32, !404, i64 40, !274, i64 48, !484, i64 56, !69, i64 64, !274, i64 72}
!552 = !{!551, !95, i64 0}
!553 = !{!551, !274, i64 8}
!554 = !{!551, !547, i64 16}
!555 = !{!551, !265, i64 24}
!556 = !{!551, !265, i64 32}
!557 = !{!551, !404, i64 40}
!558 = !{!551, !274, i64 48}
!559 = !{!551, !484, i64 56}
!560 = !{!551, !69, i64 64}
!561 = !{!551, !274, i64 72}
!562 = !{!"branch_weights", i32 -1546098377, i32 -693363755}
!563 = !{!"branch_weights", i32 -171659984, i32 343608614}
!564 = !{!"branch_weights", i32 171804307, i32 -2008213419}
!565 = !{!"branch_weights", i32 -840054308, i32 -1751137347}
!566 = !{!"branch_weights", i32 -1546104669, i32 -693363755}
!567 = distinct !{ptr @stbi_load_from_file, null, null, null}
!568 = distinct !{!568, !91, !92, !93}
!569 = distinct !{!569, !91, !92, !93}
!570 = distinct !{!570, !91, !93, !92}
!571 = distinct !{!571, !91, !92, !93}
!572 = distinct !{!572, !91, !92, !93}
!573 = distinct !{!573, !91, !93, !92}
!574 = distinct !{ptr @stbi_load_from_file_16, null, null, null}
!575 = distinct !{!575, !91}
!576 = distinct !{!576, !104}
!577 = distinct !{!577, !91}
!578 = distinct !{!578, !91}
!579 = distinct !{!579, !91, !92}
!580 = distinct !{ptr @stbi_loadf_from_file, null, null, null}
!581 = distinct !{!581, !91}
!582 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!583 = distinct !{ptr @stbi_is_hdr_from_file, null, null, null}
!584 = distinct !{!584, !91}
!585 = distinct !{!585, !91}
!586 = distinct !{!586, !111}
!587 = distinct !{!587, !91}
!588 = distinct !{!588, !91}
!589 = distinct !{!589, !91}
!590 = distinct !{!590, !91}
!591 = distinct !{!591, !91}
!592 = distinct !{!592, !91, !92, !93}
!593 = distinct !{!593, !91, !92, !93}
!594 = distinct !{!594, !111}
!595 = distinct !{!595, !91, !92}
!596 = distinct !{!596, !91}
!597 = distinct !{!597, !91}
!598 = !{!106, !70, i64 48}
!599 = !{!106, !64, i64 56}
!600 = !{!106, !64, i64 16}
!601 = !{!106, !64, i64 24}
!602 = !{!106, !64, i64 20}
!603 = distinct !{ptr @stbi_info_from_file, null, null, null}
!604 = distinct !{ptr @stbi_is_16_bit_from_file, null, null, null}
!605 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!606 = distinct !{!606, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!607 = distinct !{!607, !606, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!608 = distinct !{!608, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!609 = distinct !{!609, !608, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!610 = distinct !{!610, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!611 = distinct !{!611, !610, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!612 = distinct !{!612, !91}
!613 = distinct !{!613, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!614 = distinct !{!614, !613, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!615 = distinct !{!615, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!616 = distinct !{!616, !615, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!617 = distinct !{!617, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!618 = distinct !{!618, !617, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!619 = distinct !{!619, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!620 = distinct !{!620, !619, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!621 = distinct !{!621, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!622 = distinct !{!622, !621, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!623 = !{!607}
!624 = !{!609}
!625 = !{!609, !607}
!626 = !{!611, !609, !607}
!627 = !{!614}
!628 = !{!616}
!629 = !{!618}
!630 = !{!618, !616}
!631 = !{!620}
!632 = !{!622, !620}
!633 = distinct !{!633, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv"}
!634 = distinct !{!634, !633, !"_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE10get_futureEv: argument 0"}
!635 = !{!634}
!636 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!637 = distinct !{!637, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_"}
!638 = distinct !{!638, !637, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES9_: argument 0"}
!639 = distinct !{!639, !91}
!640 = !{!261, !261, i64 0}
!641 = !{!638}
!642 = !{!212, !67, i64 48}
!643 = !{!220, !205, i64 1}
!644 = !{!227, !205, i64 4}
!645 = distinct !{null, null, null, null, null, null, null, null, null}
!646 = distinct !{null, null}
!647 = distinct !{!647, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!648 = distinct !{!648, !647, !"_ZN3fmt3v126formatIJRKN7nanogui5ArrayIiLm2EEEEEENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!649 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!650 = !{!648}
!651 = distinct !{!651, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!652 = distinct !{!652, !651, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!653 = distinct !{!653, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!654 = distinct !{!654, !653, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!655 = distinct !{!655, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!656 = distinct !{!656, !655, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!657 = distinct !{!657, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!658 = distinct !{!658, !657, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!659 = distinct !{!659, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!660 = distinct !{!660, !659, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!661 = !{!652}
!662 = !{!654}
!663 = !{!654, !652}
!664 = !{!656, !654, !652}
!665 = !{!658}
!666 = !{!"_ZTSNSt3__14spanIKfLm18446744073709551615EEE", !265, i64 0, !154, i64 8}
!667 = !{!666, !154, i64 8}
!668 = !{!660}
!669 = distinct !{!669, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!670 = distinct !{!670, !669, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!671 = distinct !{!671, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!672 = distinct !{!672, !671, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!673 = distinct !{!673, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!674 = distinct !{!674, !673, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!675 = distinct !{!675, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!676 = distinct !{!676, !675, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!677 = distinct !{!677, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!678 = distinct !{!678, !677, !"_ZN3fmt3v126formatIJRmmEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!679 = !{!670}
!680 = !{!672}
!681 = !{!672, !670}
!682 = !{!674, !672, !670}
!683 = !{!676}
!684 = !{!"_ZTSNSt3__14spanIKhLm18446744073709551615EEE", !70, i64 0, !154, i64 8}
!685 = !{!684, !154, i64 8}
!686 = !{!678}
!687 = distinct !{null, null}
!688 = !{!"_ZTSNSt3__116coroutine_handleIN3tev11TaskPromiseINS1_4TaskINS_6vectorINS1_9ImageDataENS_9allocatorIS5_EEEEEES8_EEEE", !69, i64 0}
!689 = !{!688, !69, i64 0}
!690 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!691 = distinct !{null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!692 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!693 = distinct !{!693, !91}
!694 = distinct !{!694, !91}
!695 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!696 = distinct !{!696, !91}
!697 = distinct !{!697, !91}
!698 = distinct !{!698, !91}
!699 = distinct !{!699, !91}
!700 = distinct !{!700, !91}
!701 = distinct !{!701, !91}
!702 = distinct !{!702, !111}
!703 = distinct !{!703, !91}
!704 = distinct !{!704, !"LVerDomain"}
!705 = distinct !{!705, !704}
!706 = distinct !{!706, !704}
!707 = distinct !{!707, !91, !92, !93}
!708 = distinct !{!708, !91, !92, !93}
!709 = distinct !{!709, !91, !92}
!710 = distinct !{!710, !91}
!711 = distinct !{null, ptr @_ZL10stbi__skipP13stbi__contexti}
!712 = distinct !{!712, !91}
!713 = distinct !{!713, !111}
!714 = distinct !{!714, !111}
!715 = distinct !{!715, !111}
!716 = distinct !{!716, !91}
!717 = distinct !{!717, !91}
!718 = distinct !{!718, !91}
!719 = distinct !{!719, !91}
!720 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!721 = distinct !{!721, !91}
!722 = distinct !{!722, !111}
!723 = distinct !{!723, !111}
!724 = distinct !{!724, !91}
!725 = distinct !{!725, !91}
!726 = distinct !{!726, !91}
!727 = distinct !{!727, !111}
!728 = !{!87, !64, i64 8}
!729 = !{!87, !64, i64 4}
!730 = !{!705}
!731 = !{!706}
!732 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!733 = distinct !{!733, !91}
!734 = distinct !{!734, !91}
!735 = distinct !{!735, !91}
!736 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!737 = distinct !{null, null}
!738 = distinct !{!738, !91}
!739 = distinct !{!739, !91}
!740 = distinct !{!740, !91}
!741 = distinct !{null, ptr @_ZL13stbi__get16beP13stbi__context, ptr @_ZL10stbi__get8P13stbi__context, null}
!742 = distinct !{!742, !91}
!743 = distinct !{!743, !91}
!744 = distinct !{!744, !91}
!745 = distinct !{!745, !91}
!746 = distinct !{!746, !91}
!747 = !{!"_ZTS16stbi__pic_packet", !63, i64 0, !63, i64 1, !63, i64 2}
!748 = !{!747, !63, i64 0}
!749 = !{!747, !63, i64 1}
!750 = !{!747, !63, i64 2}
!751 = distinct !{null, null, null, ptr @_ZL10stbi__get8P13stbi__context, null}
!752 = distinct !{!752, !91}
!753 = distinct !{!753, !91}
!754 = distinct !{null, null, null}
!755 = distinct !{!755, !91}
!756 = distinct !{!756, !91}
!757 = distinct !{!757, !91}
!758 = distinct !{!758, !91, !315}
!759 = distinct !{!759, !91}
!760 = distinct !{!760, !91}
!761 = distinct !{!761, !91, !315}
!762 = distinct !{!762, !91}
!763 = distinct !{!763, !91}
!764 = distinct !{!764, !91}
!765 = distinct !{!765, !91}
!766 = distinct !{!766, !91}
end_hunk_9
begin_hunk_10_@llvm.copysign.v2f32
!1802 = distinct !{!1802, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1803 = distinct !{!1803, !1802, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1804 = distinct !{!1804, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1805 = distinct !{!1805, !1804, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1806 = distinct !{!1806, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1807 = distinct !{!1807, !1806, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1808 = !{!1801}
!1809 = !{!1803}
!1810 = !{!1803, !1801}
!1811 = !{!1805, !1803, !1801}
!1812 = !{!1807}
!1813 = !{!488, !69, i64 8}
!1814 = distinct !{!1814, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_"}
!1815 = distinct !{!1815, !1814, !"_ZNSt3__111make_sharedB8ne180100INS_13packaged_taskIFvvEEEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1816 = distinct !{!1816, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1817 = distinct !{!1817, !1816, !"_ZNSt3__115allocate_sharedB8ne180100INS_13packaged_taskIFvvEEENS_9allocatorIS3_EEJRNS_16coroutine_handleIvEEEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1818 = distinct !{!1818, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!1819 = distinct !{!1819, !1818, !"_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!1820 = distinct !{ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1821 = distinct !{!1821, !91}
!1822 = !{!1815}
!1823 = !{!1817}
!1824 = !{!1817, !1815}
!1825 = !{!1819, !1817, !1815}
!1826 = !{!"p1 _ZTSNSt3__16threadE", !69, i64 0}
!1827 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !1826, i64 0}
!1828 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !1827, i64 0}
!1829 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !1826, i64 0, !1826, i64 8, !1828, i64 16}
!1830 = !{!"_ZTSN3tev10ThreadPool10QueuedTask10ComparatorE"}
!1831 = !{!"_ZTSN3tev13PriorityQueueINS_10ThreadPool10QueuedTaskENS2_10ComparatorEEE", !519, i64 0, !1830, i64 24}
!1832 = !{!"_ZTSNSt3__115recursive_mutexE", !63, i64 0}
!1833 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIlEE", !63, i64 0}
!1834 = !{!"_ZTSNSt3__117__cxx_atomic_implIlNS_22__cxx_atomic_base_implIlEEEE", !1833, i64 0}
!1835 = !{!"_ZTSNSt3__113__atomic_baseIlLb0EEE", !1834, i64 0}
!1836 = !{!"_ZTSNSt3__113__atomic_baseIlLb1EEE", !1835, i64 0}
!1837 = !{!"_ZTSNSt3__16atomicIlEE", !1836, i64 0}
!1838 = !{!"_ZTSN10moodycamel7details9SemaphoreE", !63, i64 0}
!1839 = !{!"_ZTSN10moodycamel20LightweightSemaphoreE", !1837, i64 0, !1838, i64 8, !64, i64 40}
!1840 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !63, i64 0}
!1841 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !1840, i64 0}
!1842 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !1841, i64 0}
!1843 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !1842, i64 0}
!1844 = !{!"_ZTSNSt3__16atomicImEE", !1843, i64 0}
!1845 = !{!"_ZTSN3tev10ThreadPoolE", !205, i64 8, !1829, i64 16, !1831, i64 40, !1832, i64 72, !1839, i64 112, !1832, i64 160, !1844, i64 200, !1844, i64 208}
!1846 = !{!1845, !205, i64 8}
!1847 = !{!524, !205, i64 52}
!1848 = !{ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev}
!1849 = distinct !{null, null, null}
!1850 = !{!"_ZTSNSt3__116coroutine_handleIvEE", !69, i64 0}
!1851 = !{!1850, !69, i64 0}
!1852 = distinct !{!1852, !91}
!1853 = distinct !{null, null, null, null, null, null, null, null, null}
!1854 = distinct !{null, null, null, null}
!1855 = distinct !{null}
!1856 = distinct !{!1856, !91}
!1857 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1858 = distinct !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!1859 = !{ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev}
!1860 = distinct !{null}
!1861 = !{!"_ZTSNSt3__17promiseIvEE", !269, i64 0}
!1862 = !{!"_ZTSNSt3__113packaged_taskIFvvEEE", !510, i64 0, !1861, i64 48}
!1863 = !{!1862, !269, i64 48}
!1864 = distinct !{!1864, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1865 = distinct !{!1865, !1864, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1866 = distinct !{!1866, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1867 = distinct !{!1867, !1866, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1868 = distinct !{!1868, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1869 = distinct !{!1869, !1868, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1870 = distinct !{!1870, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1871 = distinct !{!1871, !1870, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1872 = distinct !{!1872, !91}
!1873 = distinct !{!1873, !91}
!1874 = distinct !{!1874, !91}
!1875 = !{!1865}
!1876 = !{!1867}
!1877 = !{!1867, !1865}
!1878 = !{!1869, !1867, !1865}
!1879 = !{!1871}
!1880 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iEUliiE_", !69, i64 0}
!1881 = !{!1880, !69, i64 0}
!1882 = !{!"_ZTSZN3tev9toFloat32ILNS_8ituth2739ETransferE8ELb1EKfEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_", !481, i64 0, !274, i64 8, !483, i64 16, !265, i64 24, !265, i64 32, !404, i64 40, !274, i64 48, !484, i64 56, !69, i64 64, !274, i64 72}
!1883 = !{!1882, !481, i64 0}
!1884 = !{!1882, !265, i64 24}
!1885 = !{!1882, !69, i64 64}
!1886 = !{!1882, !274, i64 72}
!1887 = distinct !{!1887, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKfEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm"}
!1888 = distinct !{!1888, !1887, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKfEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm: argument 0"}
!1889 = distinct !{!1889, !91}
!1890 = distinct !{!1890, !91}
!1891 = !{!1888}
!1892 = distinct !{!1892, !91}
!1893 = distinct !{!1893, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_"}
!1894 = distinct !{!1894, !1893, !"_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorISt13exception_ptrNS_9allocatorIS2_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES8_: argument 0"}
!1895 = distinct !{!1895, !91}
!1896 = !{!543, !543, i64 0}
!1897 = !{!1894}
!1898 = distinct !{!1898, !91}
!1899 = !{!544, !543, i64 0}
!1900 = distinct !{!1900, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1901 = distinct !{!1901, !1900, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1902 = distinct !{!1902, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1903 = distinct !{!1903, !1902, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1904 = distinct !{!1904, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1905 = distinct !{!1905, !1904, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1906 = distinct !{!1906, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1907 = distinct !{!1907, !1906, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1908 = !{!547, !547, i64 0}
!1909 = !{i64 0, i64 8, !482, i64 8, i64 8, !275, i64 16, i64 8, !1908, i64 24, i64 8, !266, i64 32, i64 8, !266, i64 40, i64 8, !405, i64 48, i64 8, !275, i64 56, i64 8, !485, i64 64, i64 8, !73, i64 72, i64 8, !275}
!1910 = !{!1901}
!1911 = !{!1903}
!1912 = !{!1903, !1901}
!1913 = !{!1905, !1903, !1901}
!1914 = !{!1907}
!1915 = distinct !{!1915, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1916 = distinct !{!1916, !1915, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1917 = distinct !{!1917, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1918 = distinct !{!1918, !1917, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1919 = distinct !{!1919, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1920 = distinct !{!1920, !1919, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1921 = distinct !{!1921, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1922 = distinct !{!1922, !1921, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1923 = distinct !{!1923, !91}
!1924 = distinct !{!1924, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_"}
!1925 = distinct !{!1925, !1924, !"_ZN3fmt3v126formatIJPKcjjS3_EEENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!1926 = !{!1916}
!1927 = !{!1918}
!1928 = !{!1918, !1916}
!1929 = !{!1920, !1918, !1916}
!1930 = !{!1922}
!1931 = !{!1925}
!1932 = distinct !{!1932, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1933 = distinct !{!1933, !1932, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1934 = distinct !{!1934, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1935 = distinct !{!1935, !1934, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1936 = distinct !{!1936, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1937 = distinct !{!1937, !1936, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1938 = distinct !{!1938, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1939 = distinct !{!1939, !1938, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1940 = !{!1933}
!1941 = !{!1935}
!1942 = !{!1935, !1933}
!1943 = !{!1937, !1935, !1933}
!1944 = !{!1939}
!1945 = distinct !{!1945, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1946 = distinct !{!1946, !1945, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1947 = distinct !{!1947, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1948 = distinct !{!1948, !1947, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1949 = distinct !{!1949, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1950 = distinct !{!1950, !1949, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1951 = distinct !{!1951, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1952 = distinct !{!1952, !1951, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1953 = !{!1946}
!1954 = !{!1948}
!1955 = !{!1948, !1946}
!1956 = !{!1950, !1948, !1946}
!1957 = !{!1952}
!1958 = distinct !{!1958, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1959 = distinct !{!1959, !1958, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1960 = distinct !{!1960, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1961 = distinct !{!1961, !1960, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1962 = distinct !{!1962, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1963 = distinct !{!1963, !1962, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1964 = distinct !{!1964, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1965 = distinct !{!1965, !1964, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1966 = !{!1959}
!1967 = !{!1961}
!1968 = !{!1961, !1959}
!1969 = !{!1963, !1961, !1959}
!1970 = !{!1965}
!1971 = !{!548, !69, i64 8}
!1972 = distinct !{!1972, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!1973 = distinct !{!1973, !1972, !"_ZNSt3__111make_sharedB8ne180100IN3tev15TaskSharedStateEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!1974 = distinct !{!1974, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!1975 = distinct !{!1975, !1974, !"_ZNSt3__115allocate_sharedB8ne180100IN3tev15TaskSharedStateENS_9allocatorIS2_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!1976 = distinct !{!1976, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_"}
!1977 = distinct !{!1977, !1976, !"_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEE27__create_with_control_blockB8ne180100IS2_NS_20__shared_ptr_emplaceIS2_NS_9allocatorIS2_EEEEEES3_PT_PT0_: argument 0"}
!1978 = distinct !{!1978, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv"}
!1979 = distinct !{!1979, !1978, !"_ZN3tev11TaskPromiseINS_4TaskIvEEvE17get_return_objectEv: argument 0"}
!1980 = distinct !{!1980, !91}
!1981 = distinct !{!1981, !91}
!1982 = distinct !{!1982, !91}
!1983 = !{!1973}
!1984 = !{!1975}
!1985 = !{!1975, !1973}
!1986 = !{!1977, !1975, !1973}
!1987 = !{!1979}
!1988 = !{!"_ZTSZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZNS_9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENS2_4spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_EESA_S4_S4_mT0_iEUliiE_", !69, i64 0}
!1989 = !{!1988, !69, i64 0}
!1990 = !{!"_ZTSZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffmEUliE_", !481, i64 0, !274, i64 8, !547, i64 16, !265, i64 24, !265, i64 32, !404, i64 40, !274, i64 48, !484, i64 56, !69, i64 64, !274, i64 72}
!1991 = !{!1990, !481, i64 0}
!1992 = !{!1990, !265, i64 24}
!1993 = !{!1990, !69, i64 64}
!1994 = !{!1990, !274, i64 72}
!1995 = distinct !{!1995, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm"}
!1996 = distinct !{!1996, !1995, !"_ZN3tev12loadChannelsIN5xsimd5batchIfNS1_4sse2EEELm3EKhEEN7nanogui5ArrayIT_XT0_EEERKNSt3__14spanIT1_Lm18446744073709551615EEEmm: argument 0"}
!1997 = distinct !{!1997, !91}
!1998 = distinct !{!1998, !91}
!1999 = !{!1996}
!2000 = !{i64 0, i64 48, !84}
!2001 = distinct !{!2001, !91}
!2002 = !{!"branch_weights", i32 -2004248167, i32 118691432}
!2003 = distinct !{!2003, !91}
!2004 = distinct !{!2004, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_"}
!2005 = distinct !{!2005, !2004, !"_ZN3fmt3v126formatIJRiEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!2006 = distinct !{!2006, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!2007 = distinct !{!2007, !2006, !"_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!2008 = distinct !{!2008, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!2009 = distinct !{!2009, !2008, !"_ZN3fmt3v129to_stringILm500EEENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!2010 = distinct !{!2010, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv"}
!2011 = distinct !{!2011, !2010, !"_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv: argument 0"}
!2012 = distinct !{!2012, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv"}
!2013 = distinct !{!2013, !2012, !"_ZNSt3__16futureINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE3getEv: argument 0"}
!2014 = !{!"branch_weights", i32 0, i32 -1503890263, i32 1717977088, i32 1030786252}
!2015 = !{!2005}
!2016 = !{!2007}
!2017 = !{!2009}
!2018 = !{!2009, !2007}
!2019 = !{!2011}
!2020 = !{!2013, !2011}
!2021 = !{!"branch_weights", i32 0, i32 -1503890263, i32 1717977088, i32 1030786252, i32 253644695}
end_hunk_10
